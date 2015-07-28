unit venda_farma_impressao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, jpeg, TFlatPanelUnit, Spin,
  Buttons, Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  frxDesgn, frxClass, frxDBSet, AdvGlowButton, AdvShapeButton;

type
  Tfrmvenda_farma_impressao = class(TForm)
    PopupMenu1: TPopupMenu;
    TPCupom_Fiscal: TMenuItem;
    fxvenda: TfrxReport;
    fscontasreceber: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    qrcontasreceber: TZQuery;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasrecebercliente: TStringField;
    frxDBDataset1: TfrxDBDataset;
    fsvenda: TfrxDBDataset;
    FSCLIENTE: TfrxDBDataset;
    qrproduto: TZQuery;
    CupomFiscalCNFV1: TMenuItem;
    combo_modelo: TComboBox;
    Label2: TLabel;
    Label3: TLabel;
    Bevel2: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label1: TLabel;
    Bevel1: TBevel;
    evias: TSpinEdit;
    bgravar: TAdvGlowButton;
    MainMenu1: TMainMenu;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure combo_modeloKeyPress(Sender: TObject; var Key: Char);
    procedure eviasKeyPress(Sender: TObject; var Key: Char);
    procedure TPCupom_FiscalClick(Sender: TObject);
    procedure CupomFiscalCNFV1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_farma_impressao: Tfrmvenda_farma_impressao;
  porta_impressora : string;
   CLIENTE_RG, CLIENTE_TELEFONE, CLIENTE_NOME, cliente_retirado, cliente_convenio, CLIENTE_ENDERECO, CLIENTE_BAIRRO, CLIENTE_CIDADE, CLIENTE_UF, CLIENTE_CEP, CLIENTE_CPF, CLIENTE_CODIGO : STRING;

implementation

uses modulo_nfe, principal, ecf, extenso1, venda_farma, venda_farma_final, venda_farma_fechamento;

{$R *.dfm}

procedure Tfrmvenda_farma_impressao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_farma_impressao.bgravarClick(Sender: TObject);
begin



  case combo_modelo.ItemIndex of
  0 : TPCupom_FiscalClick(frmvenda_farma_impressao);
  1 : CupomFiscalCNFV1click(frmvenda_farma_impressao);
  END;






  close;
end;

procedure Tfrmvenda_farma_impressao.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.open;
  combo_modelo.ItemIndex :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  evias.Value := frmmodulo.qrconfig.FieldByName('VENDA_QTDE_VIAS_NOTA').asinteger;
  porta_impressora := frmmodulo.qrconfig.FieldByName('VENDA_PORTA_IMPRESSORA').asstring;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  if frmvenda_farma_final.pdinheiro.Visible then frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMVENDA_FARMA_FINAL.edinheiro_codigo.text+'''');
  if frmvenda_farma_final.pconvenio.Visible then frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMVENDA_FARMA_FINAL.econvenio_codcliente.text+'''');
  if frmvenda_farma_final.pcrediario.Visible then frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+FRMVENDA_FARMA_FINAL.ecrediario_codcliente.text+'''');

  frmmodulo.qrcliente.open;
  if frmmodulo.qrcliente.RecNo = 1 then
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

     if frmvenda_farma_final.pconvenio.Visible then
     BEGIN
       cliente_convenio := frmvenda_farma_final.econvenio_codconvenio.text+' - '+frmvenda_farma_final.econvenio_convenio.text;
       cliente_retirado := frmvenda_farma_final.convenio_combo.text;
     END;
     if frmvenda_farma_final.pcrediario.Visible then
     BEGIN
       cliente_convenio :='PARTICULAR';
       cliente_retirado := frmvenda_farma_final.combor_retirado.Text;
     END;

  end
  else
  begin
     if frmvenda_farma_final.pdinheiro.Visible then
     BEGIN
       CLIENTE_NOME := frmvenda_farma_final.edinheiro_cliente.TEXT;
       CLIENTE_ENDERECO := frmvenda_farma_final.edinheiro_ENDERECO.TEXT;
       CLIENTE_BAIRRO :='';
       CLIENTE_CIDADE := frmvenda_farma_final.edinheiro_cIDADE.TEXT;
       CLIENTE_UF := frmvenda_farma_final.edinheiro_uf.TEXT;
       CLIENTE_CEP := '';
       CLIENTE_TELEFONE := '';
       CLIENTE_CPF := frmvenda_farma_final.edinheiro_cpf.TEXT;
       CLIENTE_CODIGO := 'S/CLIE';
       cliente_convenio := 'PARTICULAR';
       CLIENTE_RETIRADO := 'O MESMO';
     END;
  end;






end;

procedure Tfrmvenda_farma_impressao.combo_modeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.SetFocus;
end;

procedure Tfrmvenda_farma_impressao.eviasKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_farma_impressao.TPCupom_FiscalClick(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo, numero_cupom : string;
forma_pgto,aliquota,produto:string;
CODIGO_CONFIG : STRING;
begin

     frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin

     {
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072') ;
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;

       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := cliente_nome;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := cliente_endereco;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := cliente_cidade+'/'+CLIENTE_UF;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := cliente_cpf;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom
       FRMVENDA_FARMA.qrvenda_produto.First;
        while not FRMVENDA_FARMA.qrvenda_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+FRMVENDA_FARMA.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if FRMVENDA_FARMA.qrvenda_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+FRMVENDA_FARMA.qrvenda_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          FRMVENDA_FARMA.qrvenda_produto.Next;
       end;

       }

    // lancamento da venda

    {
    frmmodulo.qrvenda.open;
    frmmodulo.qrvenda.insert;
    frmmodulo.qrvenda.fieldbyname('codigo').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
    frmmodulo.qrvenda.fieldbyname('data').asstring := frmmodulo.qrvenda.fieldbyname('data').d.asfloat;
    frmmodulo.qrvenda.fieldbyname('codcliente').asstring := frmmodulo.qrvenda.fieldbyname('codcliente').AsString;
    frmmodulo.qrvenda.fieldbyname('codvendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').AsString;
    frmmodulo.qrvenda.fieldbyname('codcaixa').asstring := frmmodulo.qrvenda.fieldbyname('ecf_caixa').asfloat;
    frmmodulo.qrvenda.fieldbyname('TOTAL').asfloat := frmmodulo.qrvenda.fieldbyname('total').AsFloat;
    frmmodulo.qrvenda.fieldbyname('SUBTOTAL').asfloat := frmmodulo.qrvenda.fieldbyname('subtotal').AsFloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('meio_crediario').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
    FRMMODULO.QRVENDA.FIELDBYNAME('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
    frmmodulo.qrvenda.fieldbyname('OBS').asstring := '';


    FRMMODULO.QRVENDA.FIELDBYNAME('NUMERO_CUPOM_FISCAL').ASSTRING := numero_cupomx;
    frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;



      if ecf_impressao = 2 then
      begin
        frmvenda_impressao := tfrmvenda_impressao.create(self);
        if rcrediario.value > 0 then frmvenda_impressao.combo_modelo.ItemIndex := 1 else    frmvenda_impressao.combo_modelo.ItemIndex := 0;
        frmvenda_impressao.ShowModal;
      end;
    frmmodulo.qrvenda.post;




    // lancamento dos produtos
      FRMMODULO.QRPRODUTO_MOV.OPEN;
      frmvenda.qrvenda_produto.First;
      while not frmvenda.qrvenda_produto.Eof do
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmvenda.lvenda_codigo.Caption;
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmvenda.lvenda_codigo.Caption;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := frmvenda.qrvenda_produto.fieldbyname('codproduto').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := frmvenda.qrvenda_produto.fieldbyname('qtde').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := frmvenda.qrvenda_produto.fieldbyname('unitario').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := frmvenda.qrvenda_produto.fieldbyname('total').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := frmvenda.qrvenda_produto.fieldbyname('desconto').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('acrescimo').asfloat := frmvenda.qrvenda_produto.fieldbyname('acrescimo').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := frmvenda.qrvenda_produto.fieldbyname('numeracao').AsString;





            frmmodulo.qrproduto_mov.fieldbyname('ALIQUOTA').asFLOAT := FRMVENDA.QRVENDA_PRODUTO.fieldbyname('aliquota').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('CST').asSTRING := FRMVENDA.QRVENDA_PRODUTO.fieldbyname('CST').asSTRING ;



            frmmodulo.qrproduto_mov.fieldbyname('cupom_item').asstring := FRMPRINCIPAL.zerarcodigo(FRMVENDA.QRVENDA_PRODUTO.fieldbyname('item').asstring,3);
            frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := numero_cupomx;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '2D';
            if ecf_modelo <> '' then
            begin
              frmmodulo.qrproduto_mov.fieldbyname('ecf_serie').asstring := frmprincipal.lecf_serie.caption;
              frmmodulo.qrproduto_mov.fieldbyname('ecf_caixa').asstring := frmprincipal.lecf_caixa.caption;
            end;

        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmvenda.lcliente_codigo.Caption;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmvenda.lvendedor_codigo.Caption;

        CASE FRMVENDA.qrvenda_produto.FieldByName('tipo').asinteger of
        0 : frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        1 : BEGIN
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
              frmmodulo.qrproduto_mov.fieldbyname('SERIAL').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('serial').asstring;
            END;
        2 : begin
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA grade
              frmmodulo.qrproduto_mov.fieldbyname('codgrade').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('codgrade').asstring;
            end;


        10 : frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 7;// VENDA
        11 : BEGIN
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 7;// VENDA SERIAL
              frmmodulo.qrproduto_mov.fieldbyname('SERIAL').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('serial').asstring;
            END;
        12 : begin
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 7;// VENDA grade
              frmmodulo.qrproduto_mov.fieldbyname('codgrade').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('codgrade').asstring;
            end;

        20 : frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        21 : BEGIN
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA SERIAL
              frmmodulo.qrproduto_mov.fieldbyname('SERIAL').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('serial').asstring;
            END;
        22 : begin
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA grade
              frmmodulo.qrproduto_mov.fieldbyname('codgrade').Asstring    := FRMVENDA.qrvenda_produto.fieldbyname('codgrade').asstring;
            end;
        end;


        frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmvenda.lvenda_data.Caption;
        frmmodulo.qrproduto_mov.Post;
        frmvenda.qrvenda_produto.next;
      end;






     }


       frmmodulo.Conexao.Commit;
       frmmodulo.conexao_ecfserver.Commit;
     end
     else
     begin
      frmvenda_farma.qrvenda_produto.First;

        if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;
      numero_cupom := ecf_numero_cupom(ECF_MODELO);
      while not frmvenda_farma.qrvenda_produto.Eof do
      begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where codigo = '''+frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
        qrproduto.open;


        if qrproduto.RecNo = 1 then
        begin
          CODIGO_CONFIG := frmvenda_farma.qrvenda_produto.fieldbyname('codPRODUTO').asstring;


          produto := frmprincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('produto').asstring,29,' ','D');

          desconto_acrescimo := frmvenda_farma.qrvenda_produto.fieldbyname('desconto').asfloat - frmvenda_farma.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

          if (qrproduto.fieldbyname('cst').asstring = '060') then aliquota := 'FF' else
          if (qrproduto.fieldbyname('cst').asstring = '040') then aliquota := 'II' else
          if (qrproduto.fieldbyname('cst').asstring = '041') then aliquota := 'NN' else
          begin
            aliquota := formatfloat('00.00',qrproduto.fieldbyname('aliquota').asfloat);
          end;


          ecf_vende_item_completo(ecf_modelo,CODIGO_CONFIG,
                                  frmprincipal.RemoveAcentos(produto),
                                  aliquota,
                                  frmvenda_farma.qrvenda_produto.fieldbyname('unitario').AsFloat,
                                  frmvenda_farma.qrvenda_produto.fieldbyname('qtde').AsFloat,
                                  frmvenda_farma.qrvenda_produto.fieldbyname('desconto').AsFloat,
                                  frmvenda_farma.qrvenda_produto.fieldbyname('acrescimo').AsFloat,
                                  frmvenda_farma.qrvenda_produto.fieldbyname('numeracao').AsString,
                                  0);


        end;
        frmvenda_farma.qrvenda_produto.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)

      if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_convenio').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Convenio',frmmodulo.qrvenda.fieldbyname('meio_convenio').asfloat) = 'ERRO' then exit;
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+cliente_codigo+'-'+cliente_nome,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+cliente_endereco+' '+
                                                                         cliente_bairro+' '+
                                                                         cliente_cidade+'/'+CLIENTE_UF),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+cliente_cpf,42,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CONVENIO: '+cliente_convenio,42,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('RETI.POR: '+cliente_retirado,42,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('VENDEDOR: '+frmvenda_farma_fechamento.lvendedor.Caption,42,' ','D')+#10+
                                          #10+
                                          #10+

                                            '--------------Assinatura do Cliente-------------') = 'ERRO' THEN EXIT;


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)

        if frmvenda_farma_final.rdinheiro.down then
          forma_pgto := FDINHEIRO;
        if frmvenda_farma_final.rchequeav.down then
          forma_pgto := Fchequeav;
        if frmvenda_farma_final.rchequeap.down then
          forma_pgto := Fchequeap;
        if frmvenda_farma_final.rcartaoc.down then
          forma_pgto := Fcartaocr;
        if frmvenda_farma_final.rcartaod.down then
          forma_pgto := Fcartaodb;
        if frmvenda_farma_final.rcrediario.down then
          forma_pgto := Fpromisso;
        if frmvenda_farma_final.rconvenio.down then
          forma_pgto := Fconvenio;

      (*---------------------------------------------------------------------*)



      // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE A PRAZO--------------------------\\


      if ecf_cupom_vinculado = '1' then // segunda via
        begin
         if application.messagebox('Deseja imprimir segunda via (Comprovante Não Fiscal Vinculado)?','Aviso',mb_yesno+mb_iconquestion) = idyes then
           begin


           // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE VENDA --------------------------\\

           application.ProcessMessages;

           if ecf_abre_CNFV(ecf_modelo,forma_pgto,'','') <> 'ERRO' then
             BEGIN
               if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOM) = 'ERRO' then exit;
               if ecf_cupom_vinculado_produtos = '1' then
                 begin
                   if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
                   if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   frmvenda_farma.qrvenda_produto.First;
                   while not frmvenda_farma.qrvenda_produto.Eof do
                     begin
                       if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                            frmPrincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('produto').asstring,19,' ','D')+
                            frmPrincipal.texto_justifica(formatfloat('######0',frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                            frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                            frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
                       frmvenda_farma.qrvenda_produto.Next;
                     end;
                 end;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvendaSUBTOTAL.AsFloat),9,' ','E')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvendaDESCONTO.AsFloat),9,' ','E')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvendaTOTAL.AsFloat),9,' ','E')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+cliente_codigo+'-'+cliente_nome,48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO: '+cliente_endereco+' '+cliente_cidade+'/'+cliente_uf),48,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ: '+cliente_cpf,42,' ','D')) = 'ERRO' then exit;
               if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR: '+frmvenda_farma_fechamento.lvendedor.Caption,42,' ','D')) = 'ERRO' then exit;

               if frmvenda_farma_final.rconvenio.down then
                 begin
                   if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO: '+cliente_convenio,42,' ','D')) = 'ERRO' then exit;
                   if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if ecf_usa_CNFV(ecf_modelo,'Autorizo descontar em folha o valor da compra.' ) = 'ERRO' then exit;
                 end
               else
                 begin
                   if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                   if ecf_usa_CNFV(ecf_modelo,'Reconheço e pagarei a divida aqui apresentada.  ' ) = 'ERRO' then exit;
                 end;


               if ecf_cupom_vinculado_carne = '1' then // carne
                 begin
                   frmvenda_farma.qrvenda_contasreceber.First;
                   while not frmvenda_farma.qrvenda_contasreceber.Eof do
                     begin
                       if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'            COMPROVANTE DE DÉBITO               ' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CUPOM.....: '+NUMERO_CUPOM,48,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('DOCUMENTO.: '+frmvenda_farma.qrvenda_contasreceber.FieldByName('documento').asstring,48,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENDEDOR..: '+frmvenda_farma_fechamento.lvendedor.Caption,48,' ','D')) = 'ERRO' then exit;
                       if frmvenda_farma_final.rconvenio.down then
                         if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CONVENIO..: '+cliente_convenio,42,' ','D')) = 'ERRO' then exit;

                       if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE...: '+cliente_codigo+'-'+cliente_nome,48,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica(('ENDERECO..: '+cliente_endereco+' '+cliente_cidade+'/'+cliente_uf),48,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('CPF/CNPJ..: '+cliente_cpf,42,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('IE/RG.....: '+cliente_rg,42,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'   Este comprovante não é um documento fiscal   ' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('PARCELA...: '+frmPrincipal.zerarcodigo(frmvenda_farma.qrvenda_contasreceber.fieldbyname('prestacao').asstring,6),42,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VENCIMENTO: '+frmvenda_farma.qrvenda_contasreceber.FieldByName('vencimento').AsString,42,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,frmprincipal.Texto_Justifica('VALOR.....: '+formatfloat('#,###,##0.00',frmvenda_farma.qrvenda_contasreceber.FieldByName('valor').AsFloat),38,' ','D')) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
                       if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;

                       frmvenda_farma.qrvenda_contasreceber.Next;
                     end;
                 end;
            end;


            if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;

        end;
      end;
    //end;

      cupom_fiscal := true;



    frmmodulo.qrvenda.edit;
    frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;
    frmmodulo.qrvenda.fieldbyname('NUMERO_cupom_fiscal').asstring := numero_cupom;
    frmmodulo.qrvenda.post;

    END;



end;

procedure Tfrmvenda_farma_impressao.CupomFiscalCNFV1Click(Sender: TObject);
var desconto_acrescimo : real;
tp_desconto_acrescimo : string;
forma_pgto : string;
NUMERO_CUPOM : STRING;
produto:string;
begin
  cupom_fiscal := false;
  TRY



      frmmodulo.qrconfig.open;
     if frmmodulo.qrconfig.FieldByName('ECF_TIPO').asstring = 'ECF-Remoto' then
     begin
       // lançamento do cupom
       frmmodulo.qrecf_comando.Open;
       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'VENDA';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
       frmmodulo.qrecf_comando.FieldByName('desconto').asfloat := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
       frmmodulo.qrecf_comando.FieldByName('acrescimo').asfloat := frmmodulo.qrvenda.fieldbyname('acrescimo').asfloat;
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeav').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat;
       frmmodulo.qrecf_comando.FieldByName('chequeap').asfloat := frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaocred').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cartaodeb').asfloat := frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat;
       frmmodulo.qrecf_comando.FieldByName('promissoria').asfloat := frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat;

       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := cliente_nome;
       frmmodulo.qrecf_comando.FieldByName('endereco').asstring := cliente_endereco;
       frmmodulo.qrecf_comando.FieldByName('cidade').asstring := cliente_cidade+'/'+CLIENTE_UF;
       frmmodulo.qrecf_comando.FieldByName('cpf').asstring := cliente_cpf;
       frmmodulo.qrecf_comando.FieldByName('convenio').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('vendedor').asstring := frmmodulo.qrvenda.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;
       // lancamento dos itens do cupom
       FRMVENDA_FARMA.qrvenda_produto.First;
        while not FRMVENDA_FARMA.qrvenda_produto.Eof do
        begin
          FRMMODULO.QRPRODUTO.Close;
          FRMMODULO.QRPRODUTO.SQL.CLEAR;
          FRMMODULO.QRPRODUTO.SQL.ADD('SELECT * FROM C000025 WHERE CODIGO = '''+FRMVENDA_FARMA.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
          FRMMODULO.QRPRODUTO.OPEN;
          if frmmodulo.qrproduto.RECno =  1 THEN
          begin
            if FRMVENDA_FARMA.qrvenda_produto.fieldbyname('serial').asstring <> '' then
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring+' ['+FRMVENDA_FARMA.qrvenda_produto.fieldbyname('serial').asstring+']'
            else
               produto := frmmodulo.qrproduto.fieldbyname('produto').asstring;

          frmmodulo.qrecf_item.Open;
          frmmodulo.qrecf_item.Insert;
          frmmodulo.qrecf_item.FieldByName('numero').AsString := frmmodulo.qrvenda.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('codproduto').AsString := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
          frmmodulo.qrecf_item.FieldByName('produto').AsString := frmmodulo.qrproduto.fieldbyname('produto').asstring;
          frmmodulo.qrecf_item.FieldByName('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').asstring;
          if frmmodulo.qrproduto.fieldbyname('codaliquota').asstring = '' then
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := 'FF'
          else
            frmmodulo.qrecf_item.FieldByName('aliquota').AsString := frmmodulo.qrproduto.fieldbyname('codaliquota').asstring;
          frmmodulo.qrecf_item.FieldByName('qtde').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('qtde').asfloat;
          frmmodulo.qrecf_item.FieldByName('valor').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('unitario').asfloat;
          frmmodulo.qrecf_item.FieldByName('desconto').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('desconto').asfloat;
          frmmodulo.qrecf_item.FieldByName('acrescimo').Asfloat := FRMVENDA_FARMA.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          frmmodulo.qrecf_item.post;
          end;

          FRMVENDA_FARMA.qrvenda_produto.Next;
       end;



      // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE A PRAZO--------------------------\\





      if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat > 0 then
      begin
        forma_pgto := 'Dinheiro';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat > 0 then
      begin
        forma_pgto := 'Cheque';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat > 0 then
      begin
        forma_pgto := 'Cheque-pre';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat > 0 then
      begin
        forma_pgto := 'Cartao';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat > 0 then
      begin
        forma_pgto := 'Cartao';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat > 0 then
      begin
        forma_pgto := 'Promissoria';
      end;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'ABRE_CNFV';
       frmmodulo.qrecf_comando.FieldByName('numero').asstring := '';
       frmmodulo.qrecf_comando.FieldByName('dinheiro').asfloat := frmmodulo.qrvenda.fieldbyname('total').asfloat;
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := FORMA_PGTO;
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: ';
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'PRODUTO                    QTDE   VALOR    TOTAL';
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;


           frmvenda_farma.qrvenda_produto.First;
           while not frmvenda_farma.qrvenda_produto.Eof do
           begin

             frmmodulo.qrecf_comando.insert;
             FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
             frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
             frmmodulo.qrecf_comando.FieldByName('cliente').asstring := frmPrincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                          frmPrincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('produto').asstring,19,' ','D')+
                          frmPrincipal.texto_justifica(formatfloat('######0',frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat),9,' ','E');
             frmmodulo.qrecf_comando.Post;
             frmvenda_farma.qrvenda_produto.Next;
           end;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvenda.fieldbyname('subtotal').asfloat),9,' ','E');
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvenda.fieldbyname('desconto').asfloat),9,' ','E');
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvenda.fieldbyname('total').asfloat),9,' ','E');
       frmmodulo.qrecf_comando.Post;


       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'Cliente.: '+CLIENTE_CODIGO+' '+CLIENTE_NOME;
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'Convenio: '+cliente_convenio;
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := 'Vendedor: '+frmmodulo.qrusuario.fieldbyname('codvendedor').asstring;
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');
       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'USA_CNFV';
       frmmodulo.qrecf_comando.FieldByName('cliente').asstring := '------------------------------------------------';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.qrecf_comando.insert;
       FRMMODULO.qrecf_comando.FieldByName('sequencia').AsString := frmPrincipal.codifica('000072');

       frmmodulo.qrecf_comando.FieldByName('comando').asstring := 'FECHA_CNFV';
       frmmodulo.qrecf_comando.Post;

       frmmodulo.Conexao.Commit;
       FRMMODULO.QRECF_COMANDO.POST
     end
     else
     begin
















































      frmvenda_farma.qrvenda_produto.First;

      if ecf_abre_cupom(ecf_modelo,'') = 'ERRO' then exit;

      NUMERO_CUPOM := ecf_numero_cupom(ecf_modelo);


      while not frmvenda_farma.qrvenda_produto.Eof do
      begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where codigo = '''+frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring+'''');
        qrproduto.open;


        if qrproduto.RecNo = 1 then
        begin
          produto := frmvenda_farma.qrvenda_produto.fieldbyname('produto').asstring;
          desconto_acrescimo := frmvenda_farma.qrvenda_produto.fieldbyname('desconto').asfloat - frmvenda_farma.qrvenda_produto.fieldbyname('acrescimo').asfloat;
          if desconto_acrescimo < 0 then tp_desconto_acrescimo := 'A' else tp_desconto_acrescimo := 'D';

          ecf_vende_item(ecf_modelo,qrproduto.fieldbyname('codigo').asstring,
                                  frmprincipal.RemoveAcentos(produto),
                                  qrproduto.fieldbyname('CODALIQUOTA').asstring,
                                  'F',
                                  frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat,
                                  2,
                                  frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat,
                                  '$',
                                  desconto_acrescimo,
                                  tp_desconto_acrescimo,0);

        end;
        frmvenda_farma.qrvenda_produto.Next;
      end;


      (*-----------------INICIAR FECHAMENTO DO CUPOM-------------------------*)

      desconto_acrescimo := frmmodulo.qrvenda.fieldbyname('desconto').asfloat;
      if desconto_acrescimo < 0 then
      begin
        tp_desconto_acrescimo := 'A';
        DESCONTO_ACRESCIMO := DESCONTO_ACRESCIMO * (-1);
      end
      else
        tp_desconto_acrescimo := 'D';

      if ecf_inicia_fechamento_cupom(ecf_modelo,TP_DESCONTO_ACRESCIMO,'$',DESCONTO_ACRESCIMO,0) = 'ERRO' then exit;
      (*---------------------------------------------------------------------*)


      (*---------------- LANÇAR AS FORMAS DE PAGAMENTO ----------------------*)

      if frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Dinheiro',frmmodulo.qrvenda.fieldbyname('meio_dinheiro').asfloat) = 'ERRO' then exit;
        forma_pgto := 'Dinheiro';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque',frmmodulo.qrvenda.fieldbyname('meio_chequeav').asfloat) = 'ERRO' then exit;
        forma_pgto := 'Cheque';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cheque-pre',frmmodulo.qrvenda.fieldbyname('meio_chequeap').asfloat) = 'ERRO' then exit;
        forma_pgto := 'Cheque-pre';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaocred').asfloat) = 'ERRO' then exit;
        forma_pgto := 'Cartao';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Cartao',frmmodulo.qrvenda.fieldbyname('meio_cartaodeb').asfloat) = 'ERRO' then exit;
        forma_pgto := 'Cartao';
      end;
      if frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat > 0 then
      begin
        if ecf_efetua_forma_pgto(ecf_modelo,'Promissoria',frmmodulo.qrvenda.fieldbyname('meio_crediario').asfloat) = 'ERRO' then exit;
        forma_pgto := 'Promissoria';
      end;
      (*---------------------------------------------------------------------*)



      (*---------------- IDENTIFICACAO DO CONSUMIDOR-------------------------*)

      if ecf_termina_fechamento(ecf_modelo,frmprincipal.Texto_Justifica('CLIENTE.: '+cliente_nome,48,' ','D')+#10+
                                         frmprincipal.Texto_Justifica(('ENDERECO: '+cliente_endereco+' '+
                                                                         cliente_bairro+' '+
                                                                         cliente_cidade+'/'+CLIENTE_UF),48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('CPF/CNPJ: '+cliente_cpf,42,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('Convenio: '+cliente_convenio,48,' ','D')+#10+
                                          frmprincipal.Texto_Justifica('Reti.por: '+cliente_retirado,35,' ','D')+' '+frmprincipal.Texto_Justifica('VD: '+frmmodulo.qrusuario.fieldbyname('codvendedor').asstring,10,' ','D')+#10+
                                          #10+
                                          #10+

                                            '--------------Assinatura do Cliente-------------') = 'ERRO' THEN EXIT;

      // --------------------- EMISSAO DO COMPROVANTE NAO FISCAL VINCULADO COMO NOTA DE A PRAZO--------------------------\\

           application.ProcessMessages;
           if ecf_abre_CNFV(ecf_modelo,forma_pgto,FloatToStr(frmmodulo.qrvenda.fieldbyname('total').asfloat),NUMERO_CUPOM) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'COMPROVANTE DE DÉBITO   CUPOM FISCAL No: '+NUMERO_CUPOM) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'PRODUTO                    QTDE   VALOR    TOTAL' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           frmvenda_farma.qrvenda_produto.First;
           while not frmvenda_farma.qrvenda_produto.Eof do
           begin
             if ecf_usa_CNFV(ecf_modelo,frmPrincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('codproduto').asstring,6,'0','E')+' '+
                          frmPrincipal.texto_justifica(frmvenda_farma.qrvenda_produto.fieldbyname('produto').asstring,19,' ','D')+
                          frmPrincipal.texto_justifica(formatfloat('######0',frmvenda_farma.qrvenda_produto.fieldbyname('qtde').asfloat),4,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda_farma.qrvenda_produto.fieldbyname('unitario').asfloat),9,' ','E')+
                          frmPrincipal.texto_justifica(formatfloat('######0.00',frmvenda_farma.qrvenda_produto.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
             frmvenda_farma.qrvenda_produto.Next;
           end;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'TOTAL DOS PRODUTOS .................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvenda.fieldbyname('subtotal').asfloat),9,' ','E')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'DESCONTO ...........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvenda.fieldbyname('desconto').asfloat),9,' ','E')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'T O T A L ..........................R$ '+frmPrincipal.texto_justifica(formatfloat('######0.00',frmmodulo.qrvenda.fieldbyname('total').asfloat),9,' ','E')) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,' ' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'Cliente.: '+CLIENTE_CODIGO+' '+CLIENTE_NOME) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'Convenio: '+cliente_convenio) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'Vendedor: '+frmmodulo.qrusuario.fieldbyname('codvendedor').asstring) = 'ERRO' then exit;
           if ecf_usa_CNFV(ecf_modelo,'------------------------------------------------' ) = 'ERRO' then exit;
           if ecf_fecha_CNFV(ecf_modelo) = 'ERRO' then exit;
                                                                     //PAREI AQUI ---- COLOCAR O NOME DO VENDEDOR NOS DOIS CUPOMS



      cupom_fiscal := true;
    frmmodulo.qrvenda.edit;
    frmmodulo.qrvenda.fieldbyname('cupom_fiscal').asinteger := 1;
    frmmodulo.qrvenda.fieldbyname('NUMERO_cupom_fiscal').asstring := ecf_numero_cupom(ECF_MODELO);
    frmmodulo.qrvenda.post;

    END;

  EXCEPT
    showmessage('Esta função gerou erro! O procedimento foi abortado!');
  END;

end;

end.




