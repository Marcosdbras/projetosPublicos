unit prevenda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids,
  Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, StdCtrls, Buttons,
  TFlatPanelUnit, Menus, DBGrids, DBCtrls, RxMemDS, AdvGlowButton,
  PageView, AdvShapeButton, MemDS, DBAccess, IBC;

type
  TfrmPrevenda = class(TForm)
    dsorcamento: TDataSource;
    qrproduto: TZQuery;
    qrorcamento_receber: TZQuery;
    Timer1: TTimer;
    FlatPanel1: TFlatPanel;
    LCODCAIXA: TLabel;
    LCAIXA: TLabel;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    PopupMenu1: TPopupMenu;
    Fechamento1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    etipo: TLabel;
    dsorcamento_produtos: TDataSource;
    Query1: TZQuery;
    eretirado: TLabel;
    lvenda_data: TLabel;
    Visualizar1: TMenuItem;
    rocarCliente1: TMenuItem;
    Imprimir1: TMenuItem;
    Bevel1: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Bevel2: TBevel;
    Label11: TLabel;
    Label12: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label1: TLabel;
    Bevel6: TBevel;
    Label6: TLabel;
    Bevel7: TBevel;
    lvenda: TLabel;
    Label13: TLabel;
    Bevel8: TBevel;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Bevel9: TBevel;
    GroupBox1: TGroupBox;
    Edit1: TEdit;
    Bevel10: TBevel;
    bitbtn1: TAdvGlowButton;
    bvisualizar: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    btroca_cliente: TAdvGlowButton;
    bitbtn2: TAdvGlowButton;
    wwDBGrid2: TwwDBGrid;
    Panel2: TPanel;
    Bevel11: TBevel;
    Label2: TLabel;
    ltotal_cupom: TLabel;
    Bevel12: TBevel;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TStringField;
    qrapoioPRODUTO: TStringField;
    qrapoioCF: TStringField;
    qrapoioSTR: TStringField;
    qrapoioUN: TStringField;
    qrapoioQTDE: TStringField;
    qrapoioUNITARIO: TStringField;
    qrapoioTOTAL: TStringField;
    qrapoioICMS: TStringField;
    qrapoioIPI: TStringField;
    qrapoioIPI_ALIQUOTA: TStringField;
    qrapoioTEXTO1: TStringField;
    qrapoioTEXTO2: TStringField;
    qrapoioTEXTO3: TStringField;
    qrapoioTEXTO4: TStringField;
    qrapoioTEXTO6: TStringField;
    qrapoioTEXTO7: TStringField;
    qrapoioTEXTO8: TStringField;
    qrapoioTEXTO9: TStringField;
    qrapoioTEXTO10: TStringField;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    Relaodeatendimentos1: TMenuItem;
    qrvenda_contasreceberTERMINAL: TStringField;
    AbrirGaveta1: TMenuItem;
    PTEF: TFlatPanel;
    qrOrcamento: TIBCQuery;
    qrorcamento_produto: TIBCQuery;
    qrorcamento_produtoDATA: TDateTimeField;
    qrorcamento_produtoCODPRODUTO: TStringField;
    qrorcamento_produtoPRODUTO: TStringField;
    qrorcamento_produtoUNIDADE: TStringField;
    qrorcamento_produtoCST: TStringField;
    qrorcamento_produtoSERIAL: TStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoALIQUOTA: TFloatField;
    qrorcamento_produtoCODBARRA: TStringField;
    qrorcamento_produtoCODIGO: TStringField;
    qrorcamento_produtoCODNOTA: TStringField;
    qrorcamento_produtoICMS: TFloatField;
    qrorcamento_produtoIPI: TFloatField;
    qrorcamento_produtoCFOP: TStringField;
    qrorcamento_produtoNUMERONOTA: TStringField;
    qrorcamento_produtoCODCLIENTE: TStringField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoMOVIMENTO: TIntegerField;
    qrorcamento_produtoCODVENDEDOR: TStringField;
    qrorcamento_produtoCODGRADE: TStringField;
    qrorcamento_produtoVALOR_ICMS: TFloatField;
    qrorcamento_produtoICMS_REDUZIDO: TFloatField;
    qrorcamento_produtoBASE_CALCULO: TFloatField;
    qrorcamento_produtoVALOR_IPI: TFloatField;
    qrorcamento_produtoSITUACAO: TIntegerField;
    qrorcamento_produtoCOMISSAO: TFloatField;
    qrOrcamentoCODIGO: TStringField;
    qrOrcamentoCODCAIXA: TStringField;
    qrOrcamentoCODVENDEDOR: TStringField;
    qrOrcamentoDATA: TDateTimeField;
    qrOrcamentoCODCLIENTE: TStringField;
    qrOrcamentoOBS: TStringField;
    qrOrcamentoMEIO_DINHEIRO: TFloatField;
    qrOrcamentoMEIO_CHEQUEAV: TFloatField;
    qrOrcamentoMEIO_CHEQUEAP: TFloatField;
    qrOrcamentoMEIO_CARTAOCRED: TFloatField;
    qrOrcamentoMEIO_CARTAODEB: TFloatField;
    qrOrcamentoMEIO_CREDIARIO: TFloatField;
    qrOrcamentoSUBTOTAL: TFloatField;
    qrOrcamentoDESCONTO: TFloatField;
    qrOrcamentoACRESCIMO: TFloatField;
    qrOrcamentoTOTAL: TFloatField;
    qrOrcamentoCUPOM_FISCAL: TIntegerField;
    qrOrcamentoNUMERO_CUPOM_FISCAL: TStringField;
    qrOrcamentoRETIRADO: TStringField;
    qrOrcamentoTIPO: TIntegerField;
    qrOrcamentoMEIO_CONVENIO: TFloatField;
    qrOrcamentoDAV: TStringField;
    qrOrcamentoCLIENTE: TStringField;
    qrOrcamentoVENDEDOR: TStringField;
    qrCliente: TIBCQuery;
    qrcontasreceber: TIBCQuery;
    qrConfig: TIBCQuery;
    procedure Timer1Timer(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure dsorcamentoDataChange(Sender: TObject; Field: TField);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure bvisualizarClick(Sender: TObject);
    procedure Visualizar1Click(Sender: TObject);
    procedure btroca_clienteClick(Sender: TObject);
    procedure rocarCliente1Click(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure Relaodeatendimentos1Click(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure qrvenda_contasreceberBeforePost(DataSet: TDataSet);
    procedure AbrirGaveta1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrevenda: TfrmPrevenda;
  limite_disponivel : real;
  cupom_fiscal : boolean;
  cod_apoio : integer;
  continuar : boolean;
  numero_terminal : string;

implementation

uses modulo, unTEF, principal, funcoes, unECF, prevenda_fechamento;

{uses modulo, prevenda_fechamento, principal, loc_cliente, dados_cliente,
  prevenda_fechamento_loja, ecf, xloc_cliente, unFuncoesTEF;}

{$R *.dfm}

procedure TfrmPrevenda.Timer1Timer(Sender: TObject);
var
  vrecno : integer;
begin
  vrecno := qrorcamento.RecNo;
  qrorcamento.Refresh;
  qrorcamento.RecNo := vrecno;
end;

procedure TfrmPrevenda.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPrevenda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmPrevenda.FormShow(Sender: TObject);
var  slinha : string;
f : textfile;
begin
   if bTEF then
   begin
    ptef.Enabled := true;
    ptef.Color := $0000F900;
   END
   ELSE
   BEGIN
     ptef.Enabled := false;
   end;

   numero_terminal := sECF_Caixa;

  QRORCAMENTO.CLOSE;
  QRORCAMENTO.SQL.CLEAR;
  QRORCAMENTO.SQL.ADD('select');
  QRORCAMENTO.SQL.ADD('  c000074.*,');
  QRORCAMENTO.SQL.ADD('  c000007.Nome Cliente,');
  QRORCAMENTO.SQL.ADD('  c000008.Nome Vendedor');
  QRORCAMENTO.SQL.ADD('from');
  QRORCAMENTO.SQL.ADD('  c000074, c000007, c000008');
  QRORCAMENTO.SQL.ADD('where');
  QRORCAMENTO.SQL.ADD('  c000074.codcliente = c000007.codigo and');
  QRORCAMENTO.SQL.ADD('  c000074.codvendedor = c000008.codigo and');
  QRORCAMENTO.SQL.ADD('  c000074.tipo <> 9');
  qrorcamento.sql.add('ORDER BY c000074.CODIGO');
  QRORCAMENTO.OPEN;
  WWDBGRID1.SetFocus;
  Timer1.Enabled := TRUE;
end;

procedure TfrmPrevenda.wwDBGrid1DblClick(Sender: TObject);
begin
  BitBtn1Click(frmprevenda);
end;

procedure TfrmPrevenda.BitBtn1Click(Sender: TObject);
begin

  JA_ABERTO := FALSE;

  TIMER1.Enabled := FALSE;


    qrorcamento_produto.Close;
    qrorcamento_produto.SQL.Clear;
    qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota from c000075 orc,');
    qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_produto.SQL.Add('and data = :vdat');
    qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
    qrorcamento_produto.Open;
    if QRORCAMENTO_PRODUTO.RecordCount = 0 then
    begin
      Application.messagebox('Não Há Informação Para Fechamento!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      exit;
    end;

    qrcliente.CLOSE;
    QRCLIENTE.SQL.CLEAR;
    QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codcliente').asstring+'''');
    QRCLIENTE.OPEN;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+qrcliente.fieldbyname('codigo').asstring+''' and situacao = 1');
  qrcontasreceber.Open;
  limite_disponivel := qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - QRCONTASRECEBER.FIELDBYNAME('TOTAL_CLIENTE').ASFLOAT;


  frmprevenda_fechamento := tfrmprevenda_fechamento.create(self);
  frmprevenda_fechamento.rsubtotal.value := qrorcamento.fieldbyname('subtotal').asfloat;
  frmprevenda_fechamento.rdesconto2.value := qrorcamento.fieldbyname('desconto').asfloat;
  frmprevenda_fechamento.racrescimo2.value := qrorcamento.fieldbyname('acrescimo').asfloat;
  frmprevenda_fechamento.rtotal.value := qrorcamento.fieldbyname('total').asfloat;

  frmprevenda_fechamento.rdinheiro.value := qrorcamento.fieldbyname('meio_dinheiro').asfloat;
  frmprevenda_fechamento.rchequeav.value := qrorcamento.fieldbyname('meio_chequeav').asfloat;
  frmprevenda_fechamento.rchequeap.value := qrorcamento.fieldbyname('meio_chequeap').asfloat;
  frmprevenda_fechamento.rcartaocred.value := qrorcamento.fieldbyname('meio_cartaocred').asfloat;
  frmprevenda_fechamento.rcartaodeb.value := qrorcamento.fieldbyname('meio_cartaodeb').asfloat;
  frmprevenda_fechamento.rcrediario.value := qrorcamento.fieldbyname('meio_crediario').asfloat;
  frmprevenda_fechamento.rconvenio.value := qrorcamento.fieldbyname('meio_convenio').asfloat;
  frmprevenda_fechamento.showmodal;
  

  QRORCAMENTO.CLOSE;
  QRORCAMENTO.SQL.CLEAR;
  QRORCAMENTO.SQL.ADD('select');
  QRORCAMENTO.SQL.ADD('  c000074.*,');
  QRORCAMENTO.SQL.ADD('  c000007.Nome Cliente,');
  QRORCAMENTO.SQL.ADD('  c000008.Nome Vendedor');
  QRORCAMENTO.SQL.ADD('from');
  QRORCAMENTO.SQL.ADD('  c000074, c000007, c000008');
  QRORCAMENTO.SQL.ADD('where');
  QRORCAMENTO.SQL.ADD('  c000074.codcliente = c000007.codigo and');
  QRORCAMENTO.SQL.ADD('  c000074.codvendedor = c000008.codigo and');
  QRORCAMENTO.SQL.ADD('  c000074.tipo <> 9');
  qrorcamento.sql.add('ORDER BY c000074.CODIGO');
  QRORCAMENTO.OPEN;
  TIMER1.ENABLED := TRUE;
  WWDBGRID1.SetFocus;
end;

procedure TfrmPrevenda.BitBtn2Click(Sender: TObject);
begin
{
  TIMER1.Enabled := FALSE;


  if frmprincipal.autentica('Excluir PRE-VENDA',4) then
  begin
    QRORCAMENTO_PRODUTO.Close;
    QRORCAMENTO_PRODUTO.SQL.Clear;
    QRORCAMENTO_PRODUTO.SQL.ADD('DELETE FROM C000075 WHERE CODNOTA = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    QRORCAMENTO_PRODUTO.EXECSQL;
    QRORCAMENTO.DELETE;
    FRMMODULO.Conexao.Commit;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
  TIMER1.Enabled := true;
}
end;

procedure TfrmPrevenda.Edit1KeyPress(Sender: TObject; var Key: Char);
var cod : string;
begin
  if key = #13 then
  begin
     cod := zerar(edit1.text,6);
     qrorcamento.locate('codigo',cod,[loPartialKey]);
  end;

end;

procedure TfrmPrevenda.dsorcamentoDataChange(Sender: TObject;
  Field: TField);
begin
  if qrorcamento.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
    etipo.Caption := 'CONVÊNIO'
  else if qrorcamento.FieldByName('MEIO_CREDIARIO').AsFloat > 0 then
    etipo.Caption := 'CREDIÁRIO'
  else if qrorcamento.FieldByName('MEIO_DINHEIRO').AsFloat > 0 then
    etipo.Caption := 'DINHEIRO'
  else if qrorcamento.FieldByName('MEIO_CHEQUEAV').AsFloat > 0 then
    etipo.Caption := 'CH.VISTA'
  else if qrorcamento.FieldByName('MEIO_CHEQUEAP').AsFloat > 0 then
    etipo.Caption := 'CH.PRAZO'
  else if qrorcamento.FieldByName('MEIO_CARTAOCRED').AsFloat > 0 then
    etipo.Caption := 'CARTÃO CRÉDITO'
  else if qrorcamento.FieldByName('MEIO_CARTAODEB').AsFloat > 0 then
    etipo.Caption := 'CARTÃO DÉBITO'
  else
    etipo.Caption := '';

  eretirado.Caption := qrorcamento.FieldByName('RETIRADO').AsString;
  lvenda_data.Caption := qrorcamento.FieldByName('DATA').AsString;
  lvenda.caption := qrorcamento.fieldbyname('codigo').asstring;
end;

procedure TfrmPrevenda.wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  bvisualizarClick(frmprevenda);
end;

procedure TfrmPrevenda.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin

  end;

end;

procedure TfrmPrevenda.bvisualizarClick(Sender: TObject);
begin
     pageview2.ActivePageIndex := 1;
end;

procedure TfrmPrevenda.Visualizar1Click(Sender: TObject);
begin
  bvisualizarClick(frmPrevenda);
end;

procedure TfrmPrevenda.btroca_clienteClick(Sender: TObject);
begin
{  if Application.messagebox(pchar('CLINTE ATUAL : ' + qrorcamento.fieldbyname('cliente').asstring + #13 +
  '      Deseja Realmente Fazer a Troca Desse Cliente?'),'Pré-Venda',mb_yesno+mb_iconquestion) = idYes then
    begin


      RESULTADO_PESQUISA1 := '';



      frmXloc_cliente := TfrmXloc_cliente.create(self);
      frmXloc_cliente.showmodal;




      IF RESULTADO_PESQUISA1 <> '' THEN
      BEGIN
        qrorcamento.Edit;
        qrorcamentoCODCLIENTE.AsString := RESULTADO_PESQUISA1;
        qrorcamento.Post;
        QUERY1.CLOSE;
        QUERY1.SQL.CLEAR;
        QUERY1.SQL.ADD('UPDATE C000075 SET CODCLIENTE = '''+RESULTADO_PESQUISA1+'''');
        QUERY1.SQL.ADD('WHERE numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
        QUERY1.SQL.Add('and data = :vdat');
        QUERY1.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
        QUERY1.EXECSQL;
        frmmodulo.Conexao.Commit;
      END;
    end;

    wwDBGrid1.SetFocus;

}
end;

procedure TfrmPrevenda.rocarCliente1Click(Sender: TObject);
begin
  btroca_clienteClick(frmPrevenda);
end;

procedure TfrmPrevenda.bimprimirClick(Sender: TObject);
begin
{  qrcliente.Open;
  if qrcliente.RecordCount = 0 then
    begin
      FRMMODULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTE.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+qrorcamento.fieldbyname('codcliente').asstring+'''');
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
}
end;

procedure TfrmPrevenda.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmPrevenda);
end;

procedure TfrmPrevenda.Relaodeatendimentos1Click(Sender: TObject);
begin
  PageView2.ActivePageIndex := 0;
end;

procedure TfrmPrevenda.PageView2Change(Sender: TObject);
begin

  if pageview2.ActivePageIndex = 1 then
  begin

    qrorcamento_produto.Close;
    qrorcamento_produto.SQL.Clear;
    qrorcamento_produto.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota from c000075 orc,');
    qrorcamento_produto.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_produto.SQL.Add('and data = :vdat');
    qrorcamento_produto.params.ParamByName('vdat').AsDateTime := qrorcamento.fieldbyname('data').AsDateTime;
    qrorcamento_produto.Open;

    if qrorcamento_produto.RecordCount = 0 then
      begin
        Application.messagebox('Não Há Informação Para Visualizar!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
        exit;
      end;
    if qrorcamento.RecordCount > 0 then
      begin
      if qrorcamento.FieldByName('MEIO_CONVENIO').AsFloat > 0 then
          etipo.Caption := 'CONVÊNIO'
      else if qrorcamento.FieldByName('MEIO_CREDIARIO').AsFloat > 0 then
          etipo.Caption := 'CREDIÁRIO'
      else if qrorcamento.FieldByName('MEIO_DINHEIRO').AsFloat > 0 then
          etipo.Caption := 'DINHEIRO'
      else if qrorcamento.FieldByName('MEIO_CHEQUEAV').AsFloat > 0 then
          etipo.Caption := 'CH.VISTA'
      else if qrorcamento.FieldByName('MEIO_CHEQUEAP').AsFloat > 0 then
          etipo.Caption := 'CH.PRAZO'
      else if qrorcamento.FieldByName('MEIO_CARTAOCRED').AsFloat > 0 then
          etipo.Caption := 'CARTÃO CRÉDITO'
      else if qrorcamento.FieldByName('MEIO_CARTAODEB').AsFloat > 0 then
          etipo.Caption := 'CARTÃO DÉBITO'
      else
          etipo.Caption := '';

     eretirado.Caption := qrorcamento.FieldByName('RETIRADO').AsString;
             Ltotal_cupom.Caption := FORMATFLOAT('###,###,##0.00',qrorcamento.FIELDBYNAME('TOTAL').ASFLOAT);
      end;
  end;

end;

procedure TfrmPrevenda.qrvenda_contasreceberBeforePost(DataSet: TDataSet);
begin
  qrvenda_contasreceber.fieldbyname('terminal').asstring := numero_terminal;
end;

procedure TfrmPrevenda.AbrirGaveta1Click(Sender: TObject);
begin
  cECF_Abre_Gaveta(iECF_Modelo);
end;

end.

