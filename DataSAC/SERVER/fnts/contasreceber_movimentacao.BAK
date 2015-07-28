unit contasreceber_movimentacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Grids, Wwdbigrd,
  Wwdbgrid, DB, Buttons, Menus, RxMemDS, frxDesgn, frxClass, frxDBSet,
  Mask, ToolEdit, CurrEdit, AdvGlowButton;

type
  Tfrmcontasreceber_movimentacao = class(TForm)
    dsvenda_produtos: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrvenda_produtos: TRxMemoryData;
    qrvenda_produtosFILTRO: TIntegerField;
    qrvenda_produtosCODIGO: TStringField;
    qrvenda_produtosCODNOTA: TStringField;
    qrvenda_produtosNUMERONOTA: TStringField;
    qrvenda_produtosCODPRODUTO: TStringField;
    qrvenda_produtosQTDE: TFloatField;
    qrvenda_produtosUNITARIO: TFloatField;
    qrvenda_produtosTOTAL: TFloatField;
    qrvenda_produtosDESCONTO: TFloatField;
    qrvenda_produtosACRESCIMO: TFloatField;
    qrvenda_produtosUNIDADE: TStringField;
    qrvenda_produtosCODCLIENTE: TStringField;
    qrvenda_produtosCODVENDEDOR: TStringField;
    qrvenda_produtosMOVIMENTO: TIntegerField;
    qrvenda_produtosDATA: TDateField;
    Prevenda1: TMenuItem;
    Imprime1: TMenuItem;
    fxvenda_produto: TfrxReport;
    fsvenda_produto: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    QUERY: TRxMemoryData;
    IntegerField1: TIntegerField;
    DateField1: TDateField;
    StringField1: TStringField;
    StringField2: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    StringField4: TStringField;
    StringField5: TStringField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField2: TIntegerField;
    QUERYCLIENTE: TStringField;
    qrvenda_produtosproduto: TStringField;
    QUERYproduto: TStringField;
    fsvenda_cliente: TfrxDBDataset;
    qrcliente: TRxMemoryData;
    qrclienteNOME: TStringField;
    qrclienteCODIGO: TStringField;
    qrclienteCPF: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteTELEFONE1: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteRG: TStringField;
    qrclienteORCAMENTO: TStringField;
    qrclienteDATA_ORCAMENTO: TDateField;
    Panel1: TPanel;
    Label3: TLabel;
    lcliente: TLabel;
    GRID: TwwDBGrid;
    FlatPanel3: TFlatPanel;
    pselecao: TFlatPanel;
    Label15: TLabel;
    rselecao: TRxCalcEdit;
    Bevel1: TBevel;
    Panel2: TPanel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    bitbtn1: TAdvGlowButton;
    bimprime: TAdvGlowButton;
    benvia_prevenda: TAdvGlowButton;
    bdados_cliente: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure benvia_prevendaClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimeClick(Sender: TObject);
    procedure Prevenda1Click(Sender: TObject);
    procedure Imprime1Click(Sender: TObject);
    procedure bdados_clienteClick(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_movimentacao: Tfrmcontasreceber_movimentacao;

implementation

uses contasreceber, modulo, principal, venda, dados_cliente;

{$R *.dfm}

procedure Tfrmcontasreceber_movimentacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmcontasreceber.qrproduto_mov.close;
  action := cafree;
end;

procedure Tfrmcontasreceber_movimentacao.benvia_prevendaClick(Sender: TObject);
var codigo_venda : string;
 x, prest : integer;
 prestacao : real;
 vcod_produto : string;
 vqde_produto : double;

  vcodigo, vcodnota, vcodconta, vnumeronota , vproduto , vcliente ,  vunidade, vcodcliente , vcodvendedor : string;
  vunitario, vtotal, vdesconto , vacrescimo : double;
  vfiltro,vmovimento : integer;
  vdata : TDateTime;

begin

//////////////////////////////


  QUERY.Close;
  QUERY.Open;

  qrvenda_produtos.Open;

  // ordena por codigo de produto
  qrvenda_produtos.SortOnFields('codproduto');

  qrvenda_produtos.First;

  while not qrvenda_produtos.Eof do

    begin

      IF qrvenda_produtos.fieldbyname('filtro').AsInteger = 1 then

        begin

          vcod_produto := qrvenda_produtos.fieldbyname('codproduto').asstring;
          vtotal := 0;
          vqde_produto := 0;
          while true do
          begin
            if qrvenda_produtos.fieldbyname('codproduto').asstring = vcod_produto then
            begin
              IF qrvenda_produtos.fieldbyname('filtro').AsInteger = 1 then
              begin

                vqde_produto := vqde_produto + qrvenda_produtos.fieldbyname('qtde').asfloat;
                vtotal       := vtotal + ( qrvenda_produtos.fieldbyname('unitario').asfloat * qrvenda_produtos.fieldbyname('qtde').asfloat);
                vcodigo        := '';
                vfiltro        := qrvenda_produtos.FieldByName('FILTRO').AsInteger;
                vcodconta      := qrvenda_produtos.fieldbyname('codnota').asstring;
                vnumeronota    := qrvenda_produtos.fieldbyname('numeronota').asstring;
                vproduto       := qrvenda_produtos.fieldbyname('produto').asstring;
                vcliente       := frmmodulo.qrcliente.fieldbyname('NOME').asstring;
                vunidade       := qrvenda_produtos.fieldbyname('unidade').AsString;
                vcodcliente    := qrvenda_produtos.fieldbyname('codcliente').asstring;
                vcodvendedor   := qrvenda_produtos.fieldbyname('codvendedor').asstring;
                vunitario      := qrvenda_produtos.fieldbyname('unitario').asfloat;
                vdesconto      := qrvenda_produtos.fieldbyname('desconto').asfloat;
                vacrescimo     := qrvenda_produtos.fieldbyname('acrescimo').asfloat;
                vmovimento     := qrvenda_produtos.fieldbyname('movimento').AsInteger;
                vdata          := qrvenda_produtos.fieldbyname('data').AsDateTime;
              end;
            end;
              qrvenda_produtos.Next;

              if (qrvenda_produtos.Eof) or (qrvenda_produtos.fieldbyname('codproduto').asstring <> vcod_produto) then
                Break;
          end;

          QUERY.Insert;
          QUERY.FieldByName('codigo').AsString := vcodigo;
          QUERY.fieldbyname('codnota').AsString := vcodnota;
          QUERY.fieldbyname('numeronota').AsString := vnumeronota;
          QUERY.fieldbyname('codproduto').asstring := vcod_produto;
          QUERY.fieldbyname('produto').asstring := vproduto;
          QUERY.fieldbyname('qtde').asfloat := vqde_produto;
          QUERY.fieldbyname('unitario').asfloat := vunitario;
          QUERY.fieldbyname('total').asfloat := vtotal;
          QUERY.fieldbyname('desconto').asfloat := vdesconto;
          QUERY.fieldbyname('acrescimo').asfloat := vacrescimo;
          QUERY.fieldbyname('unidade').asstring := vunidade;
          QUERY.fieldbyname('codcliente').AsString := vcodcliente;
          QUERY.fieldbyname('codvendedor').AsString := vcodvendedor;
          QUERY.fieldbyname('MOVIMENTO').AsINTEGER := vmovimento;
          QUERY.FieldByName('data').AsDateTime := vdata;
          QUERY.fieldbyname('CLIENTE').AsString := vcliente;
          QUERY.Post;

          if qrvenda_produtos.fieldbyname('produto').asstring = '' then
            Break;
        end
     else
       qrvenda_produtos.Next;

    end;


  QUERY.First;


//////////////////////////////




    codigo_venda := frmprincipal.adic_codifica('000048');

    frmmodulo.qradic_orcamento.open;
    frmmodulo.qradic_orcamento.insert;
    frmmodulo.qradic_orcamento.fieldbyname('codigo').asstring         := codigo_venda;
    frmmodulo.qradic_orcamento.fieldbyname('data').AsDateTime         := date;
    frmmodulo.qradic_orcamento.fieldbyname('codcliente').asstring     := QUERY.fieldbyname('codcliente').asstring;
    frmmodulo.qradic_orcamento.fieldbyname('codvendedor').asstring    := QUERY.fieldbyname('codvendedor').asstring;
    frmmodulo.qradic_orcamento.fieldbyname('codcaixa').asstring       := '000099';
    frmmodulo.qradic_orcamento.fieldbyname('TOTAL').asfloat           := rselecao.Value;
    frmmodulo.qradic_orcamento.fieldbyname('SUBTOTAL').asfloat        := rselecao.Value;

    frmmodulo.qradic_orcamento.FieldByName('meio_crediario').asfloat := rselecao.Value;

    FRMMODULO.qradic_orcamento.FIELDBYNAME('desconto').asfloat        := 0;
    FRMMODULO.qradic_orcamento.FIELDBYNAME('acrescimo').asfloat       := 0;
    frmmodulo.qradic_orcamento.fieldbyname('OBS').asstring            := '';
    frmmodulo.qradic_orcamento.fieldbyname('RETIRADO').asstring       := '';
    frmmodulo.qradic_orcamento.fieldbyname('cupom_fiscal').asinteger := 0;
    frmmodulo.qradic_orcamento.fieldbyname('tipo').asinteger := 9;
    frmmodulo.qradic_orcamento.post;



    // lancamento dos produtos
      frmmodulo.qradic_orcamento_produto.OPEN;
      QUERY.First;
      while not QUERY.Eof do
      begin
          frmmodulo.qradic_orcamento_produto.Insert;
          frmmodulo.qradic_orcamento_produto.FieldByName('codigo').AsString := frmprincipal.adic_codifica('000032');
          frmmodulo.qradic_orcamento_produto.fieldbyname('codnota').AsString := codigo_venda;
          frmmodulo.qradic_orcamento_produto.fieldbyname('numeronota').AsString := codigo_venda;
          frmmodulo.qradic_orcamento_produto.fieldbyname('codproduto').asstring := QUERY.fieldbyname('codproduto').asstring;
          frmmodulo.qradic_orcamento_produto.fieldbyname('qtde').asfloat := QUERY.fieldbyname('qtde').asfloat;
          frmmodulo.qradic_orcamento_produto.fieldbyname('unitario').asfloat := QUERY.fieldbyname('unitario').asfloat;
          frmmodulo.qradic_orcamento_produto.fieldbyname('total').asfloat := QUERY.fieldbyname('total').asfloat;
          frmmodulo.qradic_orcamento_produto.fieldbyname('desconto').asfloat := QUERY.fieldbyname('desconto').asfloat;
          frmmodulo.qradic_orcamento_produto.fieldbyname('acrescimo').asfloat := QUERY.fieldbyname('acrescimo').asfloat;
          frmmodulo.qradic_orcamento_produto.fieldbyname('unidade').asstring := QUERY.fieldbyname('unidade').AsString;
          frmmodulo.qradic_orcamento_produto.fieldbyname('codcliente').AsString := QUERY.fieldbyname('codcliente').asstring;
          frmmodulo.qradic_orcamento_produto.fieldbyname('codvendedor').AsString := QUERY.fieldbyname('codvendedor').asstring;
          frmmodulo.qradic_orcamento_produto.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
          frmmodulo.qradic_orcamento_produto.FieldByName('data').AsDateTime := date;
          frmmodulo.qradic_orcamento_produto.Post;
        QUERY.next;
      end;


      frmmodulo.conexao_adic.Commit;

  showmessage('Cupom Gerado com sucesso!');

  qrvenda_produtos.First;

end;

procedure Tfrmcontasreceber_movimentacao.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_movimentacao.FormShow(Sender: TObject);
begin

  rselecao.Value   := 0;

  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
  begin
//    pproduto.Height := 320;
  end;

  qrvenda_produtos.First;
  GRID.SetFocus;

  // ordena por item
  //frmvenda.qrvenda_produto.SortOnFields('item');

end;

procedure Tfrmcontasreceber_movimentacao.GRIDDblClick(
  Sender: TObject);
begin
TRY

  if qrvenda_produtos.FieldByName('filtro').AsInteger = 1 then
    begin
      qrvenda_produtos.Edit;
      qrvenda_produtos.fieldbyname('filtro').AsInteger := 0;
      qrvenda_produtos.Post;
      frmmodulo.Conexao.Commit;
      rselecao.value := rselecao.value - qrvenda_produtos.fieldbyname('total').asfloat;
    end
  else
    IF qrvenda_produtos.FieldByName('filtro').AsInteger = 0 then
      begin
        qrvenda_produtos.Edit;
        qrvenda_produtos.fieldbyname('filtro').AsInteger := 1;
        qrvenda_produtos.Post;
        frmmodulo.Conexao.Commit;
        rselecao.value := rselecao.value + qrvenda_produtos.fieldbyname('total').asfloat;
      end;

EXCEPT

END;



  frmmodulo.Conexao.Commit;

end;

procedure Tfrmcontasreceber_movimentacao.GRIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #32 then
  begin
    GRIDDblClick(frmcontasreceber_movimentacao);
  end;

end;

procedure Tfrmcontasreceber_movimentacao.bimprimeClick(Sender: TObject);
var
  vcod_produto : string;
  vqde_produto : double;

  vcodigo, vcodnota, vcodconta, vnumeronota , vproduto , vcliente ,  vunidade, vcodcliente , vcodvendedor : string;
  vunitario, vtotal, vdesconto , vacrescimo : double;

  vtot_geral,vtot_desconto,vtot_unitario,vtot_acrescimo,vtot_total: double;

  vfiltro,vmovimento : integer;
  vdata : TDateTime;


  CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;
  CLIENTE_ORCAMENTO,CLIENTE_DATA_ORCAMENTO : STRING;

begin

  QUERY.Close;
  QUERY.Open;

  qrvenda_produtos.Open;

  // ordena por codigo de produto
  qrvenda_produtos.SortOnFields('codproduto');

  qrvenda_produtos.First;

  while not qrvenda_produtos.Eof do

    begin

      IF qrvenda_produtos.fieldbyname('filtro').AsInteger = 1 then

        begin

          vcod_produto := qrvenda_produtos.fieldbyname('codproduto').asstring;
          vtotal := 0;
          vqde_produto := 0;
          while true do
            begin
              if qrvenda_produtos.fieldbyname('codproduto').asstring = vcod_produto then
                begin
                IF qrvenda_produtos.fieldbyname('filtro').AsInteger = 1 then
                begin
                  vqde_produto   := vqde_produto + qrvenda_produtos.fieldbyname('qtde').asfloat;
                  vtotal         := vtotal + ( (qrvenda_produtos.fieldbyname('unitario').asfloat * qrvenda_produtos.fieldbyname('qtde').asfloat)-qrvenda_produtos.fieldbyname('desconto').asfloat);

                  vtot_unitario  := vtot_unitario + ( qrvenda_produtos.fieldbyname('unitario').asfloat * qrvenda_produtos.fieldbyname('qtde').asfloat);
                  vtot_desconto  := vtot_desconto + ( qrvenda_produtos.fieldbyname('desconto').asfloat);
                  vtot_acrescimo := vtot_acrescimo+ ( qrvenda_produtos.fieldbyname('acrescimo').asfloat);
                  vtot_geral     := vtot_geral + ( (vtot_unitario+vtot_acrescimo)-vtot_desconto);
                  vcodigo        := '';
                  vfiltro        := qrvenda_produtos.FieldByName('FILTRO').AsInteger;
                  vcodconta      := qrvenda_produtos.fieldbyname('codnota').asstring;
                  vnumeronota    := qrvenda_produtos.fieldbyname('numeronota').asstring;
                  vproduto       := qrvenda_produtos.fieldbyname('produto').asstring;
                  vcliente       := frmmodulo.qrcliente.fieldbyname('NOME').asstring;
                  vunidade       := qrvenda_produtos.fieldbyname('unidade').AsString;
                  vcodcliente    := qrvenda_produtos.fieldbyname('codcliente').asstring;
                  vcodvendedor   := qrvenda_produtos.fieldbyname('codvendedor').asstring;
                  vunitario      := qrvenda_produtos.fieldbyname('unitario').asfloat;
                  vdesconto      := qrvenda_produtos.fieldbyname('desconto').asfloat;
                  vacrescimo     := qrvenda_produtos.fieldbyname('acrescimo').asfloat;
                  vmovimento     := qrvenda_produtos.fieldbyname('movimento').AsInteger;
                  vdata          := qrvenda_produtos.fieldbyname('data').AsDateTime;
                end;
                end;
                qrvenda_produtos.Next;

                if (qrvenda_produtos.Eof) or (qrvenda_produtos.fieldbyname('codproduto').asstring <> vcod_produto) then
                  Break;
            end;

          QUERY.Insert;
          QUERY.FieldByName('codigo').AsString := vcodigo;
          QUERY.fieldbyname('codnota').AsString := vcodnota;
          QUERY.fieldbyname('numeronota').AsString := vnumeronota;
          QUERY.fieldbyname('codproduto').asstring := vcod_produto;
          QUERY.fieldbyname('produto').asstring := vproduto;
          QUERY.fieldbyname('qtde').asfloat := vqde_produto;
          QUERY.fieldbyname('unitario').asfloat := vunitario;
          QUERY.fieldbyname('total').asfloat := vtotal;
          QUERY.fieldbyname('desconto').asfloat := vdesconto;
          QUERY.fieldbyname('acrescimo').asfloat := vacrescimo;
          QUERY.fieldbyname('unidade').asstring := vunidade;
          QUERY.fieldbyname('codcliente').AsString := vcodcliente;
          QUERY.fieldbyname('codvendedor').AsString := vcodvendedor;
          QUERY.fieldbyname('MOVIMENTO').AsINTEGER := vmovimento;
          QUERY.FieldByName('data').AsDateTime := vdata;
          QUERY.fieldbyname('CLIENTE').AsString := vcliente;
          QUERY.Post;

          if qrvenda_produtos.fieldbyname('produto').asstring = '' then
            Break;
        end
     else
       qrvenda_produtos.Next;

    end;


  QUERY.First;

  bdados_clienteClick(frmcontasreceber_movimentacao);

  if frmcontasreceber_movimentacao.qrcliente.RecordCount = 0 then
      begin

        CLIENTE_NOME := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        CLIENTE_ENDERECO := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
        CLIENTE_BAIRRO := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
        CLIENTE_CIDADE := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
        CLIENTE_UF := frmmodulo.qrcliente.fieldbyname('uf').asstring;
        CLIENTE_CEP := frmmodulo.qrcliente.fieldbyname('cep').asstring;
        CLIENTE_TELEFONE := frmmodulo.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
        CLIENTE_CPF := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
        CLIENTE_RG := frmmodulo.qrcliente.fieldbyname('rg').asstring;
        CLIENTE_CODIGO := frmmodulo.qrcliente.fieldbyname('CODIGO').asstring;
        CLIENTE_ORCAMENTO := qrcliente.fieldbyname('ORCAMENTO').asstring;
        CLIENTE_DATA_ORCAMENTO := datetostr(qrcliente.fieldbyname('DATA_ORCAMENTO').AsDateTime);
     end
    else
      begin
        CLIENTE_NOME := frmcontasreceber_movimentacao.qrcliente.fieldbyname('nome').asstring;
        CLIENTE_ENDERECO := frmcontasreceber_movimentacao.qrcliente.fieldbyname('endereco').asstring;
        CLIENTE_BAIRRO := frmcontasreceber_movimentacao.qrcliente.fieldbyname('bairro').asstring;
        CLIENTE_CIDADE := frmcontasreceber_movimentacao.qrcliente.fieldbyname('cidade').asstring;
        CLIENTE_UF := frmcontasreceber_movimentacao.qrcliente.fieldbyname('uf').asstring;
        CLIENTE_CEP := frmcontasreceber_movimentacao.qrcliente.fieldbyname('cep').asstring;
        CLIENTE_TELEFONE := frmcontasreceber_movimentacao.qrcliente.fieldbyname('telefone1').asstring+'/'+frmmodulo.qrcliente.fieldbyname('celular').asstring+'/'+frmmodulo.qrcliente.fieldbyname('telefone2').asstring;
        CLIENTE_CPF := frmcontasreceber_movimentacao.qrcliente.fieldbyname('cpf').asstring;
        CLIENTE_RG := frmcontasreceber_movimentacao.qrcliente.fieldbyname('rg').asstring;
        CLIENTE_CODIGO := frmcontasreceber_movimentacao.qrcliente.fieldbyname('CODIGO').asstring;
        CLIENTE_ORCAMENTO := qrcliente.fieldbyname('ORCAMENTO').asstring;
        CLIENTE_DATA_ORCAMENTO := datetostr(qrcliente.fieldbyname('DATA_ORCAMENTO').AsDateTime);
     end;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FieldByName('valor1').AsFloat := vtot_unitario; //-vtot_desconto;
  FRMMODULO.QRRELATORIO.FieldByName('valor2').AsFloat := vtot_desconto;
  FRMMODULO.QRRELATORIO.FieldByName('valor3').AsFloat := vtot_acrescimo;
  FRMMODULO.QRRELATORIO.FieldByName('valor4').AsFloat := vtot_unitario-vtot_desconto;

  FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := '';   // 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
  FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := '';   // 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
  FRMMODULO.QRRELATORIO.FieldByName('linha4').AsString := '';   // 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
  FRMMODULO.QRRELATORIO.FieldByName('linha5').AsString := '';   // 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
  FRMMODULO.QRRELATORIO.FieldByName('linha6').AsString := '';   // 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
  FRMMODULO.QRRELATORIO.FieldByName('linha7').AsString := '';   // 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'EXTRATO SINTÉTICO DE DÉBITO DO CLIENTE';

  fxvenda_produto.LoadFromFile('C:\DataSAC\SERVER\REL\F000131.fr3');
  fxvenda_produto.ShowReport;

  // ordena por codigo de produto
  qrvenda_produtos.SortOnFields('codnota');

end;

procedure Tfrmcontasreceber_movimentacao.Prevenda1Click(Sender: TObject);
begin
  benvia_prevendaClick(frmcontasreceber_movimentacao);
end;

procedure Tfrmcontasreceber_movimentacao.Imprime1Click(Sender: TObject);
begin
  bimprimeClick(frmcontasreceber_movimentacao);
end;

procedure Tfrmcontasreceber_movimentacao.bdados_clienteClick(Sender: TObject);
begin
  qrcliente.Open;
  if qrcliente.RecordCount = 0 then
    begin
      FRMMODULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrvenda_produtos.fieldbyname('codcliente').asstring+'''');
      FRMMODULO.QRCLIENTE.OPEN;
      if FRMMODULO.QRCLIENTE.RecordCount > 0 then
        begin
          qrcliente.Insert;
          qrcliente.fieldbyname('codigo').asstring := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
          qrcliente.fieldbyname('nome').asstring := frmmodulo.qrcliente.fieldbyname('nome').asstring;
          qrcliente.fieldbyname('endereco').asstring := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
          qrcliente.fieldbyname('complemento').asstring := frmmodulo.qrcliente.fieldbyname('complemento').asstring;
          qrcliente.fieldbyname('bairro').asstring := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
          qrcliente.fieldbyname('cidade').asstring := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
          qrcliente.fieldbyname('uf').asstring := frmmodulo.qrcliente.fieldbyname('uf').asstring;
          qrcliente.fieldbyname('cpf').asstring := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
          qrcliente.fieldbyname('rg').asstring := frmmodulo.qrcliente.fieldbyname('rg').asstring;
          qrcliente.fieldbyname('data_orcamento').AsDateTime := date;
          qrcliente.Post;
        end;
      qrcliente.Open;
    end;

  if qrcliente.RecordCount > 0 then
    begin
      qrcliente.Edit;
      frmdados_cliente := tfrmdados_cliente.create(self);
      frmdados_cliente.showmodal;
    end
  else
    Application.messagebox('Não Há Informação Para Imprimir!','Atenção!',mb_ok+MB_ICONEXCLAMATION);

end;

procedure Tfrmcontasreceber_movimentacao.BitBtn2Click(Sender: TObject);
begin
  qrcliente.Open;
  if qrcliente.RecordCount = 0 then
    begin
      FRMMODULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrvenda_produtos.fieldbyname('codcliente').asstring+'''');
      FRMMODULO.QRCLIENTE.OPEN;
      if FRMMODULO.QRCLIENTE.RecordCount > 0 then
        begin
          qrcliente.Insert;
          qrcliente.fieldbyname('codigo').asstring := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
          qrcliente.fieldbyname('nome').asstring := frmmodulo.qrcliente.fieldbyname('nome').asstring;
          qrcliente.fieldbyname('endereco').asstring := frmmodulo.qrcliente.fieldbyname('endereco').asstring;
          qrcliente.fieldbyname('complemento').asstring := frmmodulo.qrcliente.fieldbyname('complemento').asstring;
          qrcliente.fieldbyname('bairro').asstring := frmmodulo.qrcliente.fieldbyname('bairro').asstring;
          qrcliente.fieldbyname('cidade').asstring := frmmodulo.qrcliente.fieldbyname('cidade').asstring;
          qrcliente.fieldbyname('uf').asstring := frmmodulo.qrcliente.fieldbyname('uf').asstring;
          qrcliente.fieldbyname('cpf').asstring := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
          qrcliente.fieldbyname('rg').asstring := frmmodulo.qrcliente.fieldbyname('rg').asstring;
          qrcliente.fieldbyname('data_orcamento').AsDateTime := date;
          qrcliente.Post;
        end;
      qrcliente.Open;
    end;

  if qrcliente.RecordCount > 0 then
    begin
      qrcliente.Edit;
      frmdados_cliente := tfrmdados_cliente.create(self);
      frmdados_cliente.showmodal;
    end
  else
    Application.messagebox('Não Há Informação Para Imprimir!','Atenção!',mb_ok+MB_ICONEXCLAMATION);

end;

end.
