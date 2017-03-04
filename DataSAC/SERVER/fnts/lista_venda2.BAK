unit lista_venda2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, RxMemDS, Grids, DBGrids, AdvGlowButton, MemDS,
  DBAccess, IBC, RzButton, RzRadChk;

type
  Tfrmlista_venda2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    lcliente: TLabel;
    combo_cliente: TComboBox;
    lvendedor: TLabel;
    combo_vendedor: TComboBox;
    LPRODUTO: TLabel;
    combo_produto: TComboBox;
    Label9: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label10: TLabel;
    Label11: TLabel;
    Bevel2: TBevel;
    lcaixa: TLabel;
    combo_caixa: TComboBox;
    qrvenda: TZQuery;
    fxvenda: TfrxReport;
    fsvenda: TfrxDBDataset;
    frxDesigner1: TfrxDesigner;
    lforma: TLabel;
    combo_forma: TComboBox;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    qrvendaCODIGO: TStringField;
    qrvendaDATA: TDateTimeField;
    qrvendacliente: TStringField;
    qrvendaTOTAL: TFloatField;
    qrvendavendedor: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaCODCLIENTE: TStringField;
    qrvendaOBS: TStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvenda_produto: TZQuery;
    qrvenda_produtoproduto: TStringField;
    qrvenda_produtoun: TStringField;
    qrvenda_produtopreco_venda: TFloatField;
    qrvenda_produtopreco_custo: TFloatField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoMEDIA_VENDA: TFloatField;
    qrvenda_produtoTOTAL_QTDE: TFloatField;
    qrvenda_produtoTOTAL_GERAL: TFloatField;
    qrproduto: TZQuery;
    fsvenda_produto: TfrxDBDataset;
    qrvenda_produto2: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    qrvenda_produto2CODIGO: TStringField;
    qrvenda_produto2CODNOTA: TStringField;
    qrvenda_produto2CODPRODUTO: TStringField;
    qrvenda_produto2UNITARIO: TFloatField;
    qrvenda_produto2TOTAL: TFloatField;
    qrvenda_produto2ICMS: TFloatField;
    qrvenda_produto2IPI: TFloatField;
    qrvenda_produto2CFOP: TStringField;
    qrvenda_produto2DATA: TDateTimeField;
    qrvenda_produto2NUMERONOTA: TStringField;
    qrvenda_produto2CODCLIENTE: TStringField;
    qrvenda_produto2DESCONTO: TFloatField;
    qrvenda_produto2ACRESCIMO: TFloatField;
    qrvenda_produto2MOVIMENTO: TIntegerField;
    qrvenda_produto2CODVENDEDOR: TStringField;
    qrvenda_produto2CODGRADE: TStringField;
    qrvenda_produto2SERIAL: TStringField;
    qrvenda_produto2UNIDADE: TStringField;
    qrvenda_produto2QTDE: TFloatField;
    qrvenda_produto2VALOR_ICMS: TFloatField;
    qrvenda_produto2ICMS_REDUZIDO: TFloatField;
    qrvenda_produto2BASE_CALCULO: TFloatField;
    qrvenda_produto2VALOR_IPI: TFloatField;
    fsvenda_produto2: TfrxDBDataset;
    qrvenda_produto2CLIENTE: TStringField;
    qrvenda_produto2VENDEDOR: TStringField;
    qrvenda_produto2SUBTOTAL: TFloatField;
    qrvenda_produto2DESC: TFloatField;
    qrvenda_produto2ACRES: TFloatField;
    qrvenda_produto2TOT: TFloatField;
    QRVENDA2: TZQuery;
    QRVENDA2TOTAL_GERAL: TFloatField;
    QRVENDA2CODVENDEDOR: TStringField;
    QRVENDA2VENDEDOR: TStringField;
    fsvenda2: TfrxDBDataset;
    qrvenda_produto3: TZQuery;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField1: TFloatField;
    QRVENDA_PRODUTO3TOTAL: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    StringField8: TStringField;
    DateTimeField1: TDateTimeField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    IntegerField1: TIntegerField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    fsvenda_produto3: TfrxDBDataset;
    qrvenda_produto3comissao: TFloatField;
    qrabc: TZQuery;
    qrabcVALOR2: TFloatField;
    qrabcCODIGO: TStringField;
    qrabcCAMPO1: TStringField;
    qrabcVALOR1: TFloatField;
    qrabcPERCENTUAL: TFloatField;
    qrabcABC: TStringField;
    qrabcCAMPO2: TStringField;
    qrabcCAMPO3: TStringField;
    qrabcCAMPO4: TStringField;
    qrabcVALOR3: TFloatField;
    fsabc: TfrxDBDataset;
    qrvenda_produto4: TZQuery;
    qrvenda_produto4CODPRODUTO: TStringField;
    qrvenda_produto4TOTAL_QTDE: TFloatField;
    qrvenda_produto4TOTAL_VALOR: TFloatField;
    qrvenda_produto4preco_custo: TFloatField;
    qrvenda_produto4PRODUTO: TStringField;
    QUERY: TZQuery;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    lgrupo: TLabel;
    combo_grupo: TComboBox;
    qrvenda_produto10: TZQuery;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField2: TFloatField;
    FloatField12: TFloatField;
    StringField19: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    fsvenda_produto10: TfrxDBDataset;
    qrvenda_produto2CUPOM_NUMERO: TStringField;
    fsvenda_cupom: TfrxDBDataset;
    fscontas_receber: TfrxDBDataset;
    qrcontasreceber: TZQuery;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasreceberCODCEDENTE: TStringField;
    qrcontasreceberCLIENTE: TStringField;
    qrcontasreceberCEDENTE: TStringField;
    qrvendedor: TZQuery;
    fscomissao: TfrxDBDataset;
    qrvenda1: TZQuery;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    QRCOMISSAO: TZQuery;
    QRCOMISSAOCODVENDEDOR: TStringField;
    QRCOMISSAOVENDEDOR: TStringField;
    QRCOMISSAOVALOR_5: TFloatField;
    QRCOMISSAOVALOR_3: TFloatField;
    QRCOMISSAOCOMISSAO_5: TIntegerField;
    QRCOMISSAOCOMISSAO_3: TIntegerField;
    QRCOMISSAOTIPO: TStringField;
    QRCOMISSAOTOTAL_COMISSAO: TFloatField;
    QRCOMISSAONOME_VENDEDOR: TStringField;
    Bevel3: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrvenda_cupom: TZQuery;
    qrvenda_cupomCODVENDEDOR: TStringField;
    qrvenda_cupomTOTAL: TFloatField;
    qrvenda_cupomDESCONTO: TFloatField;
    qrvenda_cupomvendedor: TStringField;
    qrvenda_cupomcomissao_vendedor: TStringField;
    query_venda_recebimento: TZQuery;
    fsvenda_recebimento: TfrxDBDataset;
    lfornecedor: TLabel;
    combo_fornecedor: TComboBox;
    lmarca: TLabel;
    combo_marca: TComboBox;
    qrvenda_produtocodfornecedor: TStringField;
    qrvenda_produtocodmarca: TStringField;
    query_venda_recebimentoCODIGO: TStringField;
    query_venda_recebimentoNOME: TStringField;
    query_venda_recebimentoColumn: TFloatField;
    query_venda_recebimentoColumn_1: TFloatField;
    query_venda_recebimentoColumn_2: TFloatField;
    query_venda_recebimentoCOMISSAO: TFloatField;
    qrcondicional: TZQuery;
    fscondicional: TfrxDBDataset;
    query1: TZQuery;
    qrvenda_produto10TOTAL_GERAL: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvendavalor_selecionado: TFloatField;
    qrmeta: TzQuery;
    fsmeta: TfrxDBDataset;
    qrmetaCODVENDEDOR: TStringField;
    qrmetaTOTAL_AVISTA: TFloatField;
    qrmetaTOTAL_APRAZO: TFloatField;
    qrmetaCLIENTES_TODOS: TIntegerField;
    qrmetaCLIENTES_NOVOS: TIntegerField;
    qrmetavendedor: TStringField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    lsituacao: TLabel;
    COMBO_SITUACAO: TComboBox;
    qrvenda_produto2ALIQUOTA: TFloatField;
    qrvenda_produtoalq: TFloatField;
    qrvenda_produto10alq: TFloatField;
    rserial: TRzCheckBox;
    qrvenda_produto2CODSUBGRUPO: TStringField;
    bTodos_Produtos: TRzCheckBox;
    procedure combo_clienteChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_vendedorChange(Sender: TObject);
    procedure combo_caixaChange(Sender: TObject);
    procedure combo_produtoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_fornecedorChange(Sender: TObject);
    procedure combo_marcaChange(Sender: TObject);
    procedure qrvendaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_venda2: Tfrmlista_venda2;
  data_caixa : tdatetime;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, xloc_cliente,
  xloc_funcionario, loc_caixa, xloc_produto, principal,
  xloc_subgrupo, xloc_fornecedor, xloc_marca;

{$R *.dfm}

procedure Tfrmlista_venda2.combo_clienteChange(Sender: TObject);
begin
  IF combo_cliente.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_cliente := tfrmxloc_cliente.create(self);
    frmxloc_cliente.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_cliente.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_cliente.ItemIndex := combo_cliente.Items.Count - 1;
    END
    ELSE
      COMBO_CLIENTE.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_venda2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_venda2.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  QRPRODUTO.CLOSE;
  QRPRODUTO.SQL.CLEAR;
  QRPRODUTO.SQL.ADD('SELECT * FROM C000025');
  QRPRODUTO.OPEN;

  combo_relatorio.ItemIndex := 0;
  combo_cliente.ItemIndex := 0;
  combo_VENDEDOR.ItemIndex := 0;
  combo_fornecedor.ItemIndex := 0;
  combo_marca.ItemIndex := 0;
  combo_caixa.ItemIndex := 0;
  combo_produto.itemindex := 0;
  combo_forma.itemindex := 0;
  combo_GRUPO.itemindex := 0;

  dateedit1.Date := data_caixa;
  dateedit2.date := data_caixa;

end;

procedure Tfrmlista_venda2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_venda2.combo_vendedorChange(Sender: TObject);
begin
  IF combo_vendedor.Text = 'SELECIONAR' THEN
  BEGIN

    frmxloc_funcionario := tfrmxloc_funcionario.create(self);
    frmxloc_funcionario.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_vendedor.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_vendedor.ItemIndex := combo_vendedor.Items.Count - 1;
    END
    ELSE
      combo_vendedor.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_venda2.combo_caixaChange(Sender: TObject);
begin
  IF combo_caixa.Text = 'SELECIONAR' THEN
  BEGIN
    FRMMODULO.qrcaixa_operador.OPEN;

    frmloc_caixa := tfrmloc_caixa.create(self);
    frmloc_caixa.showmodal;


    combo_caixa.Items.Add(frmmodulo.qrcaixa_operador.fieldbyname('CODIGO').asstring+' '+frmmodulo.qrcaixa_operador.fieldbyname('nome').asstring);
    combo_caixa.ItemIndex := combo_caixa.Items.Count - 1;
  END;
end;

procedure Tfrmlista_venda2.combo_produtoChange(Sender: TObject);
begin
  IF combo_produto.Text = 'SELECIONAR' THEN
  BEGIN
    frmxloc_produto := tfrmxloc_produto.create(self);
    frmxloc_produto.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_produto.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_produto.ItemIndex := combo_produto.Items.Count - 1;
    END
    ELSE
      COMBO_produto.ItemIndex := 0;
  END;
end;

procedure Tfrmlista_venda2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_venda2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_venda2.bimprimirClick(Sender: TObject);
var
cliente, cliente1, VENDEDOR, VENDEDOR1, caixa, PRODUTO,GRUPO, FORMA, periodo, periodo1, SITUACAO, ordem: string;
FORNECEDOR, MARCA : string;
TOTAL_VENDA, VALOR_5, VALOR_3 : REAL;
TOTAL_VISTA_3, TOTAL_COMISSAO_3, TOTAL_VISTA_5, TOTAL_COMISSAO_5 : REAL;
TOTAL_PRAZO_3, TOTAL_COMISSAO_PRAZO_3, TOTAL_PRAZO_5, TOTAL_COMISSAO_PRAZO_5 : REAL;
begin

  QRCOMISSAO.CLOSE;
  QRCOMISSAO.SQL.CLEAR;
  QRCOMISSAO.SQL.ADD('DELETE FROM COMISSAO');
  QRCOMISSAO.EXECSQL;

  QRCOMISSAO.SQL.CLEAR;
  QRCOMISSAO.SQL.ADD('SELECT * FROM COMISSAO');
  QRCOMISSAO.OPEN;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';


  if combo_situacao.itemindex = 0 then situacao := '';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := ' and situacao = 2';


  if combo_produto.Text = 'TODOS'  then PRODUTO     := '' else begin  PRODUTO := ' and CODPRODUTO = '''+copy(combo_PRODUTO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT; end ;

  if combo_cliente.Text = 'TODOS'  then cliente  := '' else begin  cliente  := ' and codcliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;
  if combo_vendedor.Text = 'TODOS' then VENDEDOR := '' else begin  VENDEDOR := ' and CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
  if combo_fornecedor.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and CODFORNECEDOR = '''+copy(combo_fornecedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'FORNECEDOR: '+combo_fornecedor.TEXT; end;
  if combo_marca.Text = 'TODOS' then MARCA := '' else begin  MARCA := ' and CODMARCA = '''+copy(combo_marca.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: '+combo_marca.TEXT; end;
  if combo_caixa.Text = 'TODOS'    then caixa    := '' else begin  caixa    := ' and codcaixa = '''+copy(combo_caixa.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'CAIXA '+COMBO_caixa.TEXT+'   '; end;


  if combo_forma.Text = 'TODAS'                then FORMA := '';
  if combo_forma.Text = 'DINHEIRO'             then BEGIN FORMA := ' AND MEIO_DINHEIRO   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: DINHEIRO';END;
  if combo_forma.Text = 'CHEQUE A VISTA'       then BEGIN FORMA := ' AND MEIO_CHEQUEAV   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CHEQUE A VISTA';END;
  if combo_forma.Text = 'CHEQUE A PRAZO'       then BEGIN FORMA := ' AND MEIO_CHEQUEAP   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CHEQUE A PRAZO';END;
  if combo_forma.Text = 'CARTAO DE CREDITO'    then BEGIN FORMA := ' AND MEIO_CARTAOCRED <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CARTAO DE CREDITO';END;
  if combo_forma.Text = 'CARTAO DE DEBITO'     then BEGIN FORMA := ' AND MEIO_CARTAODEB  <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CARTAO DE DEBITO';END;
  if combo_forma.Text = 'CREDIARIO'            then BEGIN FORMA := ' AND MEIO_CREDIARIO  <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CREDIARIO';END;
  if combo_forma.Text = 'CONVENIO'             then BEGIN FORMA := ' AND MEIO_CONVENIO   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CREDIARIO';END;
  if combo_forma.Text = 'FINANCEIRA'           then BEGIN FORMA := ' AND MEIO_FINANCEIRA <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: FINANCEIRA';END;

  if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and CODsubgrpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;

  periodo := ' data >= :datai and data <= :dataf ';
  ordem := 'data, codigo';
  frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'PERÍODO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;




  if combo_relatorio.Text = 'COMISSÃO POR VENDA A VISTA/RECEBIMENTOS' then
  begin
    if combo_vendedor.Text = 'TODOS' then
    begin
      qrvendedor.close;
      qrvendedor.sql.clear;
      qrvendedor.sql.add('select * from c000008 order by codigo');
      qrvendedor.open;
    end
    else
    begin
      qrvendedor.close;
      qrvendedor.sql.clear;
      qrvendedor.sql.add('select * from c000008 where CODigo = '''+copy(combo_vendedor.text,1,6)+'''');
      qrvendedor.open;
    end;





  qrvendedor.first;
  while not qrvendedor.Eof do
  begin

    qrvenda.close;
    qrvenda.sql.clear;
    qrvenda.sql.add('select * from c000048 where '+periodo+'and codvendedor = '''+qrvendedor.fieldbyname('codigo').asstring+''' and (meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_financeira) > 0');
    qrvenda.Params.ParamByName('datai').asdatetime := dateedit1.date;
    qrvenda.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrvenda.open;
    qrvenda.first;


    TOTAL_VISTA_3 := 0;
    TOTAL_VISTA_5 := 0;
    TOTAL_COMISSAO_3 := 0;
    TOTAL_COMISSAO_5 := 0;

    TOTAL_PRAZO_3 := 0;
    TOTAL_PRAZO_5 := 0;
    TOTAL_COMISSAO_PRAZO_3 := 0;
    TOTAL_COMISSAO_PRAZO_5 := 0;

    while not qrvenda.eof do
    begin
      if qrvenda.FIELDBYNAME('MEIO_crediario').ASFLOAT > 0 then
      begin
        TOTAL_VENDA := qrvenda.FIELDBYNAME('MEIO_DINHEIRO').ASFLOAT +
                       qrvenda.FIELDBYNAME('MEIO_CHEQUEAV').ASFLOAT +
                       qrvenda.FIELDBYNAME('MEIO_CHEQUEAP').ASFLOAT +
                       qrvenda.FIELDBYNAME('MEIO_CARTAODEB').ASFLOAT +
                       qrvenda.FIELDBYNAME('MEIO_CARTAOCRED').ASFLOAT +
                       qrvenda.fieldbyname('meio_financeira').asfloat ;
      end
      else
      begin
        total_venda := qrvenda.fieldbyname('subtotal').asfloat;
      end;


      if total_venda  > 0 then
      begin
      if qrvenda.fieldbyname('p3').asfloat > 0 then
      begin
        total_vista_3 := total_vista_3 + (total_venda * (qrvenda.fieldbyname('p3').asfloat/100));
      end;
      if qrvenda.fieldbyname('p5').asfloat > 0 then
      begin
        total_vista_5 := total_vista_5 + (total_venda * (qrvenda.fieldbyname('p5').asfloat/100));
      end;
      end;

      qrvenda.next;
    end;
    total_comissao_5 := total_vista_5 * 0.05;
    total_comissao_3 := total_vista_3 * 0.03;



    query.close;
    query.sql.clear;
    query.sql.add('select * from c000049 where codvendedor = '''+qrvendedor.fieldbyname('codigo').asstring+''' and situacao = 2 and DATA_PAGAMENTO >= :DATAII AND DATA_PAGAMENTO <= :DATAFF');
    QUERY.Params.ParamByName('DATAII').ASDATETIME := DATEEDIT1.DATE;
    QUERY.Params.ParamByName('DATAFF').ASDATETIME := DATEEDIT2.DATE;
    query.open;

    query.first;
    while not query.eof do
    begin
      if query.fieldbyname('p3').asfloat > 0 then
      begin
        total_prazo_3 := total_prazo_3 + (query.fieldbyname('valor_pago').asfloat * (query.fieldbyname('p3').asfloat/100));
      end;
      if query.fieldbyname('p5').asfloat > 0 then
      begin
        total_prazo_5 := total_prazo_5 + (query.fieldbyname('valor_pago').asfloat * (query.fieldbyname('p5').asfloat/100));
      end;
      query.next;
    end;

    total_comissao_prazo_5 := total_prazo_5 * 0.05;
    total_comissao_prazo_3 := total_prazo_3 * 0.03;


    IF (TOTAL_VISTA_5 + TOTAL_VISTA_3) > 0 THEN
    BEGIN
    QRCOMISSAO.INSERT;
    QRCOMISSAO.FIELDBYNAME('CODVENDEDOR').ASSTRING := qrvendedor.FIELDBYNAME('CODIGO').ASSTRING;
    QRCOMISSAO.FieldByName('TIPO').ASSTRING := 'VENDA A VISTA';
    QRCOMISSAO.FIELDBYNAME('VALOR_5').ASFLOAT := TOTAL_VISTA_5;
    QRCOMISSAO.FIELDBYNAME('COMISSAO_5').ASFLOAT := TOTAL_COMISSAO_5;
    QRCOMISSAO.FIELDBYNAME('VALOR_3').ASFLOAT := TOTAL_VISTA_3;
    QRCOMISSAO.FIELDBYNAME('COMISSAO_3').ASFLOAT := TOTAL_COMISSAO_3;
    QRCOMISSAO.FIELDBYNAME('TOTAL_COMISSAO').ASFLOAT := TOTAL_COMISSAO_3 +  TOTAL_COMISSAO_5;

    QRCOMISSAO.POST;
    END;

    IF (TOTAL_PRAZO_5 + TOTAL_PRAZO_3) > 0 THEN
    BEGIN
      QRCOMISSAO.INSERT;
      QRCOMISSAO.FIELDBYNAME('CODVENDEDOR').ASSTRING := qrvENDEDOR.FIELDBYNAME('CODIGO').ASSTRING;
      QRCOMISSAO.FieldByName('TIPO').ASSTRING := 'RECEBIMENTOS';
      QRCOMISSAO.FIELDBYNAME('VALOR_5').ASFLOAT := TOTAL_PRAZO_5;
      QRCOMISSAO.FIELDBYNAME('COMISSAO_5').ASFLOAT := TOTAL_COMISSAO_PRAZO_5;
      QRCOMISSAO.FIELDBYNAME('VALOR_3').ASFLOAT := TOTAL_PRAZO_3;
      QRCOMISSAO.FIELDBYNAME('COMISSAO_3').ASFLOAT := TOTAL_COMISSAO_PRAZO_3;
      QRCOMISSAO.FIELDBYNAME('TOTAL_COMISSAO').ASFLOAT := TOTAL_COMISSAO_PRAZO_3 +  TOTAL_COMISSAO_PRAZO_5;
      QRCOMISSAO.POST;
    END;
    qrvendedor.Next;
  end;

      FRMMODULO.ConexaoLocal.Commit;


      FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE COMISSÕES';
      fXVENDA.LoadFromFile('\DATASAC\server\REL\F000120.fr3');
      fXVENDA.ShowReport;






  end;


  IF COMBO_RELATORIO.TEXT = 'PRODUTOS VENDIDOS EM CONDICIONAL' THEN
  BEGIN

     if combo_vendedor.Text = 'TODOS' then
        VENDEDOR := ''
     else
       VENDEDOR := ' and mov.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+'''';
      qrcondicional.open;
      qrcondicional.sql.clear;
      qrcondicional.sql.add('select');
      qrcondicional.sql.add('mov.*,');
      qrcondicional.sql.add('pro.produto,');
      qrcondicional.sql.add('cli.nome');
      qrcondicional.sql.add('from');
      qrcondicional.sql.add('c000032 mov,');
      qrcondicional.sql.add('c000025 pro,');
      qrcondicional.sql.add('c000007 cli');
      qrcondicional.sql.add('where');
      qrcondicional.sql.add('mov.codproduto = pro.codigo and');
      qrcondicional.sql.add('mov.codcliente = cli.codigo and');
      qrcondicional.sql.add('movimento in (50,51,52)');
      qrcondicional.sql.add('and mov.vencimento >= :datai and mov.vencimento <= :dataf');
      qrcondicional.sql.add(cliente+vendedor);
      qrcondicional.sql.add('order by cli.nome, mov.codnota');
      qrcondicional.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrcondicional.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrcondicional.Open;
      FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS VENDIDOS EM CONDICIONAL';
      fXVENDA.LoadFromFile('\DATASAC\server\REL\F000158.fr3');
      fXVENDA.ShowReport;
  END;




  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring +'  SITUAÇÃO: '+COMBO_SITUACAO.TEXT;

    qrVENDA.clOSE;
    qrVENDA.sql.clear;
    qrVENDA.sql.add('select * from c000048 where '+periodo+situacao+cliente+VENDEDOR+caixa+FORMA+' order by '+ordem);
    QRVENDA.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRVENDA.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrVENDA.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE VENDAS';
    if combo_forma.ItemIndex = 0 then
      fXVENDA.LoadFromFile('\DATASAC\server\rel\f000033.fr3')
    else
      fXVENDA.LoadFromFile('\DATASAC\server\rel\f000033_2.fr3');

    fXVENDA.ShowReport;
  end;




   IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS DE PRODUTOS'  THEN
   begin
    IF application.MESSAGEBOX('Deseja agrupar os produtos por preço vendido?','Agrupar...',mb_yesno+mb_iconquestion) = idyes then
    begin

      qrvenda_produto.close;
      qrvenda_produto.sql.clear;
      qrvenda_produto.sql.add('select codproduto, unitario, avg(unitario) media_venda, sum(qtde) total_qtde,');
      qrvenda_produto.sql.add('(unitario * sum(qtde)) - sum(desconto) total_geral from c000032');

      if bTodos_Produtos.Checked  = false then
        qrvenda_produto.sql.add('where  movimento in (2,9) and movimento_estoque < 0 and '+periodo+cliente+vendedor+produto+' group by codproduto, unitario order by codproduto')
      else
        begin
          qrvenda_produto.sql.add('where  movimento in (2,9,99) and '+periodo+cliente+vendedor+produto+' group by codproduto, unitario order by codproduto');
        end;

      //qrvenda_produto.sql.add('where  movimento in (2,9) and movimento_estoque < 0 and '+periodo+cliente+vendedor+produto+' group by codproduto, unitario order by codproduto');
      qrvenda_produto.Params.ParamByName('datai').asdatetime := dateedit1.date;
      qrvenda_produto.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      qrvenda_produto.open;
      Application.ProcessMessages;
      
      FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE VENDAS DE PRODUTOS/LUCRO';
      fXVENDA.LoadFromFile('\DATASAC\server\REL\F000032.fr3');
      fXVENDA.ShowReport;
    end
    else
    begin
     qrvenda_produto10.close;
     qrvenda_produto10.sql.clear;

     if bTodos_Produtos.Checked  = false then
        qrvenda_produto10.sql.add('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde,  ( avg(unitario) * sum(qtde)) - sum(desconto) total_geral from c000032 where  movimento in (2,9) and movimento_estoque < 0 and '+periodo+cliente+vendedor+produto+' group by codproduto order by codproduto')
      else
        qrvenda_produto10.sql.add('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde,  ( avg(unitario) * sum(qtde)) - sum(desconto) total_geral from c000032 where  movimento in (2,9,99) and '+periodo+cliente+vendedor+produto+' group by codproduto order by codproduto');

     //qrvenda_produto10.sql.add('select codproduto, avg(unitario) media_venda, sum(qtde) total_qtde,  ( avg(unitario) * sum(qtde)) - sum(desconto) total_geral from c000032 where  movimento in (2,9) and movimento_estoque < 0 and '+periodo+cliente+vendedor+produto+' group by codproduto order by codproduto');
     qrvenda_produto10.Params.ParamByName('datai').asdatetime := dateedit1.date;
     qrvenda_produto10.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrvenda_produto10.open;
     FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE VENDAS DE PRODUTOS/LUCRO';
     fXVENDA.LoadFromFile('\DATASAC\server\REL\F000032b.fr3');
     fXVENDA.ShowReport;
    end;
   end;

   IF COMBO_RELATORIO.TEXT = 'RELAÇÃO ANALÍTICA'  THEN
   begin

    qrVENDA.clOSE;
    qrVENDA.sql.clear;
    qrVENDA.sql.add('select * from c000048 where '+periodo+cliente+VENDEDOR+' order by '+ordem);
    QRVENDA.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRVENDA.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrVENDA.open;

     QRVENDA_PRODUTO2.close;
     QRVENDA_PRODUTO2.sql.clear;
     QRVENDA_PRODUTO2.sql.add('select * from c000032 where movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+' order by data, codnota');
     QRVENDA_PRODUTO2.Params.ParamByName('datai').asdatetime := dateedit1.date;
     QRVENDA_PRODUTO2.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     QRVENDA_PRODUTO2.open;

     FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE VENDAS ANALÍTICA';
     fXVENDA.LoadFromFile('\DATASAC\server\REL\F000034.fr3');
     fXVENDA.ShowReport;
   end;

   IF COMBO_RELATORIO.TEXT = 'VENDAS DE PRODUTOS'  THEN
   begin
     QRVENDA_PRODUTO2.close;
     QRVENDA_PRODUTO2.sql.clear;

     if ( combo_GRUPO.Text = 'TODOS') and (combo_fornecedor.Text = 'TODOS') and (combo_marca.Text = 'TODOS') then
      BEGIN
        if bTodos_Produtos.Checked  = false then
          QRVENDA_PRODUTO2.sql.add('select * from c000032 where movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+' order by data, codIGO')
        else
          QRVENDA_PRODUTO2.sql.add('select * from c000032 where movimento in (2,7,9,99) and '+periodo+cliente+vendedor+produto+' order by data, codIGO')

      END
     ELSE
     BEGIN
       if combo_vendedor.Text = 'TODOS' then VENDEDOR := '' else begin  VENDEDOR := ' and VEN.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
       if combo_fornecedor.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and PRO.CODFORNECEDOR = '''+copy(combo_fornecedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'FORNECEDOR: '+combo_fornecedor.TEXT; end;
       if combo_marca.Text = 'TODOS' then MARCA := '' else begin  MARCA := ' and PRO.CODMARCA = '''+copy(combo_marca.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: '+combo_marca.TEXT; end;

       if rserial.Checked = False then
        if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end
       else
        if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and ven.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;

       if combo_produto.Text = 'TODOS'  then PRODUTO     := '' else begin  PRODUTO := ' and VEN.CODPRODUTO = '''+copy(combo_PRODUTO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT; end ;

       if bTodos_Produtos.Checked  = false then
        QRVENDA_PRODUTO2.sql.add('select VEN.*, PRO.CODSUBGRUPO, PRO.CODFORNECEDOR, PRO.CODMARCA from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9) and '+periodo+cliente+vendedor+fornecedor+marca+produto+GRUPO+' order by data, codIGO')
       else
        QRVENDA_PRODUTO2.sql.add('select VEN.*, PRO.CODSUBGRUPO, PRO.CODFORNECEDOR, PRO.CODMARCA from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9,99) and '+periodo+cliente+vendedor+fornecedor+marca+produto+GRUPO+' order by data, codIGO');


     END;
     QRVENDA_PRODUTO2.Params.ParamByName('datai').asdatetime := dateedit1.date;
     QRVENDA_PRODUTO2.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     QRVENDA_PRODUTO2.open;

     FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'VENDA DE PRODUTOS';
     fXVENDA.LoadFromFile('\DATASAC\server\REL\F000036.fr3');
     fXVENDA.ShowReport;
   end;
   IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS POR VENDEDOR'  THEN
   BEGIN
      QRVENDA2.clOSE;
      QRVENDA2.sql.clear;
      QRVENDA2.sql.add('select CODVENDEDOR, SUM(TOTAL) TOTAL_GERAL from c000048 where '+periodo+cliente+VENDEDOR+caixa+FORMA+' GROUP BY CODVENDEDOR');
      QRVENDA2.Params.ParamByName('datai').asdatetime := dateedit1.date;
      QRVENDA2.Params.ParamByName('dataf').asdatetime := dateedit2.date;
      QRVENDA2.open;

      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE VENDAS POR VENDEDOR';
      fXVENDA.LoadFromFile('\DATASAC\server\rel\f000037.fr3');
    fXVENDA.ShowReport;
   END;


   IF COMBO_RELATORIO.TEXT = 'VENDAS / COMISSÃO'  THEN
   BEGIN
     periodo := ' mov.data >= :datai and mov.data <= :dataf ';
     QRVENDA_PRODUTO3.close;
     QRVENDA_PRODUTO3.sql.clear;
     IF COMBO_FORMA.Text = 'TODAS' THEN
     BEGIN
       if combo_GRUPO.Text = 'TODOS' then
       BEGIN
         periodo := ' data >= :datai and data <= :dataf ';
         QRVENDA_PRODUTO3.sql.add('select * from c000032 WHERE movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+GRUPO+' order by data, codIGO');
       END
       ELSE
       BEGIN
         periodo := ' data >= :datai and data <= :dataf ';
         if combo_vendedor.Text  = 'TODOS' then VENDEDOR    := '' else begin  VENDEDOR := ' and VEN.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
         if rserial.Checked = False then
          if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end
         else
          if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and ven.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;

         if combo_produto.Text   = 'TODOS' then PRODUTO     := '' else begin  PRODUTO  := ' and VEN.CODPRODUTO  = '''+copy(combo_PRODUTO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT; end ;
         QRVENDA_PRODUTO3.sql.add('select VEN.*, PRO.CODSUBGRUPO from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+GRUPO+' order by data, codIGO');
       END;
     END
     ELSE
     BEGIN
       if combo_GRUPO.Text = 'TODOS' then
       BEGIN
         if combo_vendedor.Text  = 'TODOS'                then VENDEDOR    := '' else begin  VENDEDOR := ' and MOV.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
         if combo_produto.Text   = 'TODOS'                then PRODUTO     := '' else begin  PRODUTO  := ' and MOV.CODPRODUTO  = '''+copy(combo_PRODUTO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT; end ;

         if combo_forma.Text     = 'DINHEIRO'             then BEGIN FORMA := ' AND VEN.MEIO_DINHEIRO   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: DINHEIRO';END;
         if combo_forma.Text     = 'CHEQUE A VISTA'       then BEGIN FORMA := ' AND VEN.MEIO_CHEQUEAV   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CHEQUE A VISTA';END;
         if combo_forma.Text     = 'CHEQUE A PRAZO'       then BEGIN FORMA := ' AND VEN.MEIO_CHEQUEAP   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CHEQUE A PRAZO';END;
         if combo_forma.Text     = 'CARTAO DE CREDITO'    then BEGIN FORMA := ' AND VEN.MEIO_CARTAOCRED <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CARTAO DE CREDITO';END;
         if combo_forma.Text     = 'CARTAO DE DEBITO'     then BEGIN FORMA := ' AND VEN.MEIO_CARTAODEB  <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CARTAO DE DEBITO';END;
         if combo_forma.Text     = 'CREDIARIO'            then BEGIN FORMA := ' AND VEN.MEIO_CREDIARIO  <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CREDIARIO';END;
         if combo_forma.Text     = 'CONVENIO'             then BEGIN FORMA := ' AND VEN.MEIO_CONVENIO   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CONVENIO';END;
         if combo_forma.Text     = 'FINANCEIRA'           then BEGIN FORMA := ' AND VEN.MEIO_FINANCEIRA <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: FINANCEIRA';END;


         QRVENDA_PRODUTO3.sql.add('select MOV.* from c000032 MOV, c000048 VEN WHERE MOV.CODNOTA = VEN.CODIGO and ');
         QRVENDA_PRODUTO3.sql.add('MOV.movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+forma+' order by data, codIGO');
       END
       ELSE
       BEGIN
         if combo_vendedor.Text  = 'TODOS'                then VENDEDOR    := '' else begin  VENDEDOR := ' and MOV.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
         //if combo_GRUPO.Text     = 'TODOS'                then GRUPO       := '' else begin  GRUPO    := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;
         if rserial.Checked = False then
          if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end
         else
          if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and ven.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;

         if combo_produto.Text   = 'TODOS'                then PRODUTO     := '' else begin  PRODUTO  := ' and MOV.CODPRODUTO  = '''+copy(combo_PRODUTO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT; end ;
         if combo_forma.Text     = 'DINHEIRO'             then BEGIN FORMA := ' AND VEN.MEIO_DINHEIRO   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: DINHEIRO';END;
         if combo_forma.Text     = 'CHEQUE A VISTA'       then BEGIN FORMA := ' AND VEN.MEIO_CHEQUEAV   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CHEQUE A VISTA';END;
         if combo_forma.Text     = 'CHEQUE A PRAZO'       then BEGIN FORMA := ' AND VEN.MEIO_CHEQUEAP   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CHEQUE A PRAZO';END;
         if combo_forma.Text     = 'CARTAO DE CREDITO'    then BEGIN FORMA := ' AND VEN.MEIO_CARTAOCRED <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CARTAO DE CREDITO';END;
         if combo_forma.Text     = 'CARTAO DE DEBITO'     then BEGIN FORMA := ' AND VEN.MEIO_CARTAODEB  <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CARTAO DE DEBITO';END;
         if combo_forma.Text     = 'CREDIARIO'            then BEGIN FORMA := ' AND VEN.MEIO_CREDIARIO  <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CREDIARIO';END;
         if combo_forma.Text     = 'CONVENIO'             then BEGIN FORMA := ' AND VEN.MEIO_CONVENIO   <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: CREDIARIO';END;
         if combo_forma.Text     = 'FINANCEIRA'           then BEGIN FORMA := ' AND VEN.MEIO_FINANCEIRA <> 0 '; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'FORMA DE PAGAMENTO: FINANCEIRA';END;         

         QRVENDA_PRODUTO3.sql.add('select MOV.*, PRO.CODSUBGRUPO from c000032 MOV, c000025 PRO, C000048 VEN where MOV.CODPRODUTO = PRO.CODIGO');
         QRVENDA_PRODUTO3.SQL.ADD('AND MOV.CODNOTA = VEN.CODIGO AND MOV.movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+GRUPO+' order by data, codIGO');
       END;
     END;
     QRVENDA_PRODUTO3.Params.ParamByName('datai').asdatetime := dateedit1.date;
     QRVENDA_PRODUTO3.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     QRVENDA_PRODUTO3.open;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'VENDAS/COMISSÃO';
     fXVENDA.LoadFromFile('\DATASAC\server\rel\f000038.fr3');
     fXVENDA.ShowReport;
   END;


   IF COMBO_RELATORIO.TEXT = 'VENDAS / RECEBIMENTO'  THEN
   BEGIN



     periodo1 := ' v.data >= :datai and v.data <= :dataf ';

     QRVENDA_CUPOM.close;
     QRVENDA_CUPOM.sql.clear;
     if combo_vendedor.Text = 'TODOS' then
     BEGIN

       QRVENDA_CUPOM.sql.add('select v.codvendedor, f.comissao, ');
       QRVENDA_CUPOM.sql.add('sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_financeira) total,sum(desconto) desconto');
       QRVENDA_CUPOM.sql.add('from c000048 v, c000008 f ');
       QRVENDA_CUPOM.sql.add('where v.codvendedor = f.codigo and '+periodo1+cliente+VENDEDOR+' ');
       QRVENDA_CUPOM.sql.add('GROUP BY v.codvendedor,f.comissao');
       QRVENDA_CUPOM.sql.add('ORDER BY v.codvendedor,f.comissao');
     END
     ELSE
     BEGIN

       if combo_vendedor.Text = 'TODOS' then VENDEDOR := '' else begin  VENDEDOR := ' and v.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
       if combo_cliente.Text = 'TODOS'  then cliente  := '' else begin  cliente  := ' and v.codcliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;

       QRVENDA_CUPOM.sql.add('select v.codvendedor, f.comissao, ');
       QRVENDA_CUPOM.sql.add('sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_financeira) total,sum(desconto) desconto');
       QRVENDA_CUPOM.sql.add('from c000048 v, c000008 f ');
       QRVENDA_CUPOM.sql.add('where v.codvendedor = f.codigo and '+periodo1+cliente+VENDEDOR+' ');
       QRVENDA_CUPOM.sql.add('GROUP BY v.codvendedor,f.comissao');
       QRVENDA_CUPOM.sql.add('ORDER BY v.codvendedor,f.comissao');

     END;


     QRVENDA_CUPOM.Params.ParamByName('datai').asdatetime := dateedit1.date;
     QRVENDA_CUPOM.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     QRVENDA_CUPOM.open;

     qrvenda_cupom.first;
     while not qrvenda_cupom.eof do
     begin
       try
         if qrvenda_cupom.fieldbyname('comissao_vendedor').asfloat = 0 then
         begin
           showmessage('O vendedor com o código: '+qrvenda_cupom.fieldbyname('codvendedor').asstring+' está sem comissão!'+#13+
                       'Favor verificar!');
           break;
           exit;
         end;
       except
           showmessage('O vendedor com o código: '+qrvenda_cupom.fieldbyname('codvendedor').asstring+' está sem comissão!'+#13+
                       'Favor verificar!');
           break;
           exit;
       end;
       qrvenda_cupom.Next;
     end;



     if combo_vendedor.Text = 'TODOS' then VENDEDOR1 := '' else begin  VENDEDOR1 := ' and cr.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
     if combo_cliente.Text = 'TODOS'  then cliente1  := '' else begin  cliente1  := ' and cr.codcliente = '''+copy(combo_cliente.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'CLIENTE: '+COMBO_CLIENTE.TEXT; END;

     periodo1 := ' CR.data_PAGAMENTO >= :datai and CR.data_PAGAMENTO <= :dataf ';
     ordem := 'CR.data_PAGAMENTO,CR.codigo';

    QRCONTASRECEBER.close;
    QRCONTASRECEBER.sql.clear;
    QRCONTASRECEBER.sql.add('select CR.*, CLIENTE.NOME CLIENTE from c000049 CR, C000007 CLIENTE where CR.CODCLIENTE = CLIENTE.CODIGO AND '+periodo1+cliente1+vendedor1+' order by '+ordem);
    QRCONTASRECEBER.Params.ParamByName('datai').asdatetime := dateedit1.date;
    QRCONTASRECEBER.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    QRCONTASRECEBER.open;
    QRCONTASRECEBER.REFRESH;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'VENDAS/RECEBIMENTO';
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000099.fr3');
    fXVENDA.ShowReport;

   END;

  IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS / RECEBIMENTO'  THEN
   BEGIN

    query_venda_recebimento.close;
    query_venda_recebimento.sql.clear;
    query_venda_recebimento.sql.add('select v.codigo, v.nome,v.comissao,');
    query_venda_recebimento.sql.add('(select sum(meio_dinheiro+meio_chequeav+meio_chequeap+meio_cartaocred+meio_cartaodeb+meio_Financeira) vendas from c000048 where  codvendedor = v.codigo and data >= :datai and data <= :dataf),');
    query_venda_recebimento.sql.add('(select sum(valor_original) original from c000049 where codvendedor = v.codigo and data_pagamento >= :datai and data_pagamento <= :dataf),');

    query_venda_recebimento.sql.add('(select sum(p.valor_pago) pago from c000050 p , c000049 vd where vd.codvendedor = v.codigo and p.codconta = vd.codigo and p.data >= :datai and p.data <= :dataf)');

    query_venda_recebimento.sql.add('from  c000008 v');
    query_venda_recebimento.sql.add('GROUP BY v.codigo,v.nome,v.comissao');
    query_venda_recebimento.sql.add('ORDER BY v.codigo');
    query_venda_recebimento.Params.ParamByName('datai').asdatetime := dateedit1.date;
    query_venda_recebimento.Params.ParamByName('dataf').asdatetime := dateedit2.date;
    query_venda_recebimento.Open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE VENDAS/RECEBIMENTO';
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000099_1.fr3');
    fXVENDA.ShowReport;

   END;

   IF COMBO_RELATORIO.TEXT = 'CURVA ABC DE PRODUTOS'  THEN
   BEGIN



     QRABC.CLOSE;
     QRABC.SQL.CLEAR;
     QRABC.SQL.ADD('DELETE FROM CL00006');
     QRABC.EXECSQL;
     QRABC.SQL.CLEAR;
     QRABC.SQL.ADD('SELECT * FROM CL00006 ORDER BY valor3 DESC');
     QRABC.OPEN;

     if combo_marca.Text = 'TODOS' then
     begin
       QRVENDA_PRODUTO4.close;
       QRVENDA_PRODUTO4.sql.clear;
       QRVENDA_PRODUTO4.sql.add('select codproduto, sum(qtde) total_qtde, sum(total) total_valor ');
       qrvenda_produto4.sql.add('from c000032 where movimento in (2,7,9)');
       qrvenda_produto4.sql.add('and '+periodo+cliente+vendedor+produto+' group by codproduto');
       QRVENDA_PRODUTO4.Params.ParamByName('datai').asdatetime := dateedit1.date;
       QRVENDA_PRODUTO4.Params.ParamByName('dataf').asdatetime := dateedit2.date;
       QRVENDA_PRODUTO4.open;
     end
     else
     begin
       MARCA := ' and pro.CODMARCA = '''+copy(combo_marca.text,1,6)+'''';
       
       QRVENDA_PRODUTO4.close;
       QRVENDA_PRODUTO4.sql.clear;
       QRVENDA_PRODUTO4.sql.add('select mov.codproduto, sum(mov.qtde) total_qtde, sum(mov.total) total_valor ');
       qrvenda_produto4.sql.add('from c000032 mov, c000025 pro where');
       qrvenda_produto4.sql.add(' mov.codproduto = pro.codigo '+marca+' and movimento in (2,7,9)');
       qrvenda_produto4.sql.add('and '+periodo+cliente+vendedor+produto+' group by codproduto');
       QRVENDA_PRODUTO4.Params.ParamByName('datai').asdatetime := dateedit1.date;
       QRVENDA_PRODUTO4.Params.ParamByName('dataf').asdatetime := dateedit2.date;
       QRVENDA_PRODUTO4.open;
     end;
     QRVENDA_PRODUTO4.First;
     WHILE NOT QRVENDA_PRODUTO4.Eof DO
     BEGIN
      QRABC.INSERT;
      QRABC.FIELDBYNAME('CODIGO').ASSTRING := QRVENDA_PRODUTO4.FIELDBYNAME('CODPRODUTO').ASSTRING;
      QRABC.FIELDBYNAME('CAMPO1').ASSTRING := QRVENDA_PRODUTO4.FIELDBYNAME('PRODUTO').ASSTRING;
      QRABC.FIELDBYNAME('VALOR1').ASFLOAT  := QRVENDA_PRODUTO4.FIELDBYNAME('TOTAL_QTDE').ASFLOAT;
      QRABC.FIELDBYNAME('VALOR2').ASFLOAT  := QRVENDA_PRODUTO4.FIELDBYNAME('TOTAL_VALOR').ASFLOAT -
                                              (QRVENDA_PRODUTO4.FIELDBYNAME('TOTAL_QTDE').ASFLOAT *
                                              QRVENDA_PRODUTO4.FIELDBYNAME('PRECO_CUSTO').ASFLOAT);
      QRABC.POST;
      QRVENDA_PRODUTO4.NEXT;
     END;
     FRMMODULO.CONEXAOLOCAL.Commit;
     QRABC.Refresh;

     QUERY.CLOSE;
     QUERY.SQL.CLEAR;
     QUERY.SQL.ADD('SELECT SUM(VALOR2) TOTAL_LUCRO FROM CL00006');
     QUERY.OPEN;

     IF QUERY.FIELDBYNAME('total_lucro').asfloat <> 0 then
     begin
       QRABC.First;
       WHILE NOT QRABC.EOF DO
       BEGIN
         if qrabc.fieldbyname('valor2').asfloat <> 0 then
         begin
           QRABC.EDIT;
           QRABC.FieldByName('VALOR3').ASFLOAT := (qrabc.fieldbyname('valor2').asfloat * 100) /  QUERY.FIELDBYNAMe('TOTAL_LUCRO').ASFLOAT;


           IF QRABC.FieldByName('VALOR3').ASFLOAT >= 70 THEN qrabc.fieldbyname('campo3').asstring := 'A';
           IF (QRABC.FieldByName('VALOR3').ASFLOAT < 70) AND (QRABC.FieldByName('VALOR3').ASFLOAT >= 20) THEN qrabc.fieldbyname('campo3').asstring := 'B';
           IF QRABC.FieldByName('VALOR3').ASFLOAT < 20 THEN qrabc.fieldbyname('campo3').asstring := 'C';



           QRABC.POST;
         end;
         QRABC.NEXT;
       END;
       QRABC.REFRESH;
     end;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'CURVA ABC DE PRODUTOS';
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000039.fr3');
    fXVENDA.ShowReport;


   end;








   IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS / META POR VENDEDOR' THEN
   BEGIN
     if combo_vendedor.Text = 'TODOS' then VENDEDOR := '' else begin  VENDEDOR := ' and c000048.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;


     qrvendedor.close;
     qrvendedor.sql.clear;
     qrvendedor.sql.add('select * from c000008');
     qrvendedor.open;

     qrmeta.close;
     qrmeta.sql.clear;
     qrmeta.sql.add('select');
     qrmeta.sql.add('   codvendedor,');
     qrmeta.sql.add('   sum(meio_dinheiro+meio_chequeav+meio_cartaodeb+meio_financeira) total_avista,');
     qrmeta.sql.add('   sum(meio_cartaocred+meio_crediario+meio_convenio+meio_chequeap) total_aprazo,');
     qrmeta.sql.add('   count (codigo) as clientes_todos,');
     qrmeta.sql.add('   sum(iif(exists(select first 1 codigo from');
     qrmeta.sql.add('           c000007 where codigo = c000048.codcliente and data_cadastro between :datai and :dataf ),1,0)) as clientes_novos');
     qrmeta.sql.add('from c000048');
//     qrmeta.sql.add('where c000048.codcliente = c000007.codigo');
     qrmeta.sql.add('where c000048.data between :datai and :dataf');
     qrmeta.sql.add(vendedor);
     qrmeta.sql.add('group by codvendedor');
     qrmeta.params.parambyname('datai').asdatetime := dateedit1.date;
     qrmeta.params.parambyname('dataf').asdatetime := dateedit2.date;
     qrmeta.open;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE VENDAS/METAS';
     fXVENDA.LoadFromFile('\DATASAC\server\rel\f000181.fr3');
     fXVENDA.ShowReport;
   END;
                     
   IF COMBO_RELATORIO.TEXT = 'VENDAS DE PRODUTOS AGRUPADOS POR DIA'  THEN
   begin
     QRVENDA_PRODUTO2.close;
     QRVENDA_PRODUTO2.sql.clear;

     if ( combo_GRUPO.Text = 'TODOS') and (combo_fornecedor.Text = 'TODOS') and (combo_marca.Text = 'TODOS') then
      BEGIN
        QRVENDA_PRODUTO2.sql.add('select * from c000032 where movimento in (2,7,9) and '+periodo+cliente+vendedor+produto+' order by data, codIGO')
      END
     ELSE
     BEGIN
       if combo_vendedor.Text = 'TODOS' then VENDEDOR := '' else begin  VENDEDOR := ' and VEN.CODVENDEDOR = '''+copy(combo_vendedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'VENDEDOR: '+combo_vendedor.TEXT; end;
       if combo_fornecedor.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and PRO.CODFORNECEDOR = '''+copy(combo_fornecedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'FORNECEDOR: '+combo_fornecedor.TEXT; end;
       if combo_marca.Text = 'TODOS' then MARCA := '' else begin  MARCA := ' and PRO.CODMARCA = '''+copy(combo_marca.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'MARCA: '+combo_marca.TEXT; end;
       //if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;
       if rserial.Checked = False then
        if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and PRO.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end
       else
        if combo_GRUPO.Text = 'TODOS' then GRUPO := '' else begin  GRUPO := ' and ven.CODsubgrUpo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA7').asstring := 'SUBGRUPO: '+combo_GRUPO.TEXT; end;

       if combo_produto.Text = 'TODOS'  then PRODUTO     := '' else begin  PRODUTO := ' and VEN.CODPRODUTO = '''+copy(combo_PRODUTO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring+'PRODUTO: '+COMBO_PRODUTO.TEXT; end ;
       QRVENDA_PRODUTO2.sql.add('select VEN.*, PRO.CODSUBGRUPO, PRO.CODFORNECEDOR, PRO.CODMARCA from c000032 VEN, c000025 PRO where VEN.CODPRODUTO = PRO.CODIGO AND movimento in (2,7,9) and '+periodo+cliente+vendedor+fornecedor+marca+produto+GRUPO+' order by data, codproduto')
     END;
     QRVENDA_PRODUTO2.Params.ParamByName('datai').asdatetime := dateedit1.date;
     QRVENDA_PRODUTO2.Params.ParamByName('dataf').asdatetime := dateedit2.date;
     QRVENDA_PRODUTO2.open;

     FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+dateedit1.text+' a '+dateedit2.text;
     frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'VENDA DE PRODUTOS POR DIA';
     fXVENDA.LoadFromFile('\DATASAC\server\rel\F000183.fr3');
     fXVENDA.ShowReport;
   end;











end;

procedure Tfrmlista_venda2.combo_relatorioChange(Sender: TObject);
begin


{RELAÇÃO SINTÉTICA
RELAÇÃO ANALÍTICA
VENDAS DE PRODUTOS
RESUMO DE VENDAS DE PRODUTOS
VENDAS / COMISSÃO
CURVA ABC DE PRODUTOS
RESUMO DE VENDAS POR VENDEDOR}

  combo_situacao.visible := false;
  lsituacao.visible := false;


  IF COMBO_RELATORIO.TEXT = 'COMISSÃO POR VENDA A VISTA/RECEBIMENTOS' THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := TRUE;
        lcaixa.visible := true;
    COMBO_FORMA.Visible := TRUE;
    lforma.visible := true;

    COMBO_produto.Visible := TRUE;
    LPRODUTO.Visible := TRUE;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;


    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;
  END;


  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO SINTÉTICA'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := TRUE;
        lcaixa.visible := true;
    COMBO_FORMA.Visible := TRUE;
    lforma.visible := true;

    COMBO_produto.Visible := FALSE;
    LPRODUTO.Visible := FALSE;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
  combo_situacao.visible := false;
  lsituacao.visible := false;
    bTodos_Produtos.Visible := False;

  END;

  IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS POR VENDEDOR'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := TRUE;
        lcaixa.visible := true;
    COMBO_FORMA.Visible := TRUE;
    lforma.visible := true;

    COMBO_produto.Visible := FALSE;
    LPRODUTO.Visible := FALSE;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;
  END;



  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO ANALÍTICA'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := false;
        lcaixa.visible := false;
    COMBO_FORMA.Visible := false;
    lforma.visible := false;

    COMBO_produto.Visible := true;
    LPRODUTO.Visible := true;
    lgrupo.visible := false;
    combo_grupo.visible := false;


    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;
  END;

  IF COMBO_RELATORIO.TEXT = 'VENDAS DE PRODUTOS'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := false;
        lcaixa.visible := false;
    COMBO_FORMA.Visible := false;
    lforma.visible := false;

    COMBO_produto.Visible := true;
    LPRODUTO.Visible := true;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := True;
  END;
  {
  else
  begin
    bTodos_Produtos.Visible := False;
  end;
  }

  IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS DE PRODUTOS'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;

    COMBO_caixa.Visible := false;
    lcaixa.visible := false;
    COMBO_FORMA.Visible := false;
    lforma.Visible := false;

    COMBO_produto.Visible := true;
    LPRODUTO.Visible := true;
    lgrupo.visible := FALSE;
    combo_grupo.visible := FALSE;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;

    bTodos_Produtos.Visible := True;
  END;
  {else
  begin
    bTodos_Produtos.Visible := False;
  END;
   }

  IF COMBO_RELATORIO.TEXT = 'VENDAS / COMISSÃO'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;

    COMBO_caixa.Visible := false;
    lcaixa.visible := false;
    COMBO_FORMA.Visible := false;
    lforma.Visible := false;

    COMBO_produto.Visible := true;
    LPRODUTO.Visible := true;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;

  END;

  IF COMBO_RELATORIO.TEXT = 'VENDAS / RECEBIMENTO'  THEN
  BEGIN

    COMBO_CLIENTE.Visible := true;
    lcliente.Visible := true;

    combo_vendedor.Visible := true;
    lvendedor.Visible := true;

    COMBO_caixa.Visible := false;
    lcaixa.visible := false;

    COMBO_FORMA.Visible := false;
    lforma.Visible := false;

    COMBO_produto.Visible := false;
    LPRODUTO.Visible := false;

    lgrupo.visible := false;
    combo_grupo.visible := false;

        lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;

  END;

    IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS / RECEBIMENTO'  THEN
  BEGIN

    COMBO_CLIENTE.Visible := false;
    lcliente.Visible := false;

    combo_vendedor.Visible := true;
    lvendedor.Visible := true;

    //combo_marca.Visible := false;
    //lmarca.visible := false;

    COMBO_caixa.Visible := false;
    lcaixa.visible := false;

    COMBO_FORMA.Visible := false;
    lforma.Visible := false;

    COMBO_produto.Visible := false;
    LPRODUTO.Visible := false;

    lgrupo.visible := false;
    combo_grupo.visible := false;


    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;

  END;

  IF COMBO_RELATORIO.TEXT = 'CURVA ABC DE PRODUTOS'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    lcliente.Visible := true;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := TRUE;
        lcaixa.visible := true;
    COMBO_FORMA.Visible := false;
    lforma.visible := false;

    COMBO_produto.Visible := FALSE;
    LPRODUTO.Visible := FALSE;
    lgrupo.visible := false;
    combo_grupo.visible := false;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;
  END;

  IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS / META POR VENDEDOR' THEN
  BEGIN
    COMBO_CLIENTE.Visible  := false;
    lcliente.Visible       := false;
    combo_vendedor.Visible := TRUe;
    lvendedor.Visible      := true;
    COMBO_caixa.Visible    := false;
    lcaixa.visible         := false;
    COMBO_FORMA.Visible    := false;
    lforma.visible         := false;
    COMBO_produto.Visible  := false;
    LPRODUTO.Visible       := false;
    lgrupo.visible         := false;
    combo_grupo.visible    := false;

    lfornecedor.visible    := false;
    combo_fornecedor.visible:= false;
    lmarca.visible         := false;
    combo_marca.visible    := false;

    bTodos_Produtos.Visible := False;

  END;


  IF COMBO_RELATORIO.TEXT = 'VENDAS DE PRODUTOS AGRUPADOS POR DIA'  THEN
  BEGIN
    COMBO_CLIENTE.Visible := TRUE;
    combo_vendedor.Visible := TRUE;
    COMBO_caixa.Visible := false;
        lcaixa.visible := false;
    COMBO_FORMA.Visible := false;
    lforma.visible := false;

    COMBO_produto.Visible := true;
    LPRODUTO.Visible := true;
    lgrupo.visible := TRUE;
    combo_grupo.visible := TRUE;

    lfornecedor.visible    := true;
    combo_fornecedor.visible:= true;
    lmarca.visible         := true;
    combo_marca.visible    := true;
    bTodos_Produtos.Visible := False;

  END;

end;

procedure Tfrmlista_venda2.Fechar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_venda2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;




  if combo_relatorio.Text = 'PRODUTOS VENDIDOS EM CONDICIONAL' then
  begin
    fXVENDA.LoadFromFile('\DATASAC\server\REL\F000158.fr3');
    fXVENDA.designreport;
  end;


  if combo_relatorio.Text = 'RELAÇÃO SINTÉTICA' then
  begin
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000033.fr3');
    fXVENDA.designreport;
  end;
   IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS DE PRODUTOS'  THEN
   begin
     fXVENDA.LoadFromFile('\DATASAC\server\REL\F000032.fr3');
     fXVENDA.designreport;
   end;

   IF COMBO_RELATORIO.TEXT = 'RELAÇÃO ANALÍTICA'  THEN
   begin

     fXVENDA.LoadFromFile('\DATASAC\server\REL\F000034.fr3');
     fXVENDA.designreport;
   end;
   IF COMBO_RELATORIO.TEXT = 'VENDAS DE PRODUTOS'  THEN
   begin
     fXVENDA.LoadFromFile('\DATASAC\server\REL\F000036.fr3');
     fXVENDA.designreport;
   end;
   IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS POR VENDEDOR'  THEN
   BEGIN
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000037.fr3');
    fXVENDA.designreport;
   END;

   IF COMBO_RELATORIO.TEXT = 'VENDAS / COMISSÃO'  THEN
   BEGIN
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000038.fr3');
    fXVENDA.designreport;
   END;

   IF COMBO_RELATORIO.TEXT = 'VENDAS / RECEBIMENTO'  THEN
   BEGIN
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000099.fr3');
    fXVENDA.designreport;
   END;

   IF COMBO_RELATORIO.TEXT = 'CURVA ABC DE PRODUTOS'  THEN
   BEGIN
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000039.fr3');
    fXVENDA.designreport;


   end;
   IF COMBO_RELATORIO.TEXT = 'COMISSÃO POR VENDA A VISTA/RECEBIMENTOS'  THEN
   BEGIN
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000120.fr3');
    fXVENDA.designreport;
   end;

   IF COMBO_RELATORIO.TEXT = 'RESUMO DE VENDAS / META POR VENDEDOR'  THEN
   BEGIN
    fXVENDA.LoadFromFile('\DATASAC\server\rel\f000181.fr3');
    fXVENDA.designreport;
   end;
end;

procedure Tfrmlista_venda2.combo_grupoChange(Sender: TObject);
begin
  IF combo_grupo.Text = 'SELECIONAR' THEN
  BEGIN
    frmXloc_SUBGRUPO := tfrmXloc_SUBGRUPO.create(self);
    frmXloc_SUBGRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_GRUPO.Items.Add(RESULTADO_PESQUISA1+' '+RESULTADO_PESQUISA2);
      combo_GRUPO.ItemIndex := combo_GRUPO.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  END;
end;

procedure Tfrmlista_venda2.combo_fornecedorChange(Sender: TObject);
begin
  IF combo_fornecedor.Text = 'SELECIONAR' THEN
  BEGIN

    frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
    frmxloc_fornecedor.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_fornecedor.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_fornecedor.ItemIndex := combo_fornecedor.Items.Count - 1;
    END
    ELSE
      combo_fornecedor.ItemIndex := 0;

  END;

end;

procedure Tfrmlista_venda2.combo_marcaChange(Sender: TObject);
begin
  IF combo_marca.Text = 'SELECIONAR' THEN
  BEGIN

    frmxloc_marca := tfrmxloc_marca.create(self);
    frmxloc_marca.showmodal;


    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_marca.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_marca.ItemIndex := combo_marca.Items.Count - 1;
    END
    ELSE
      combo_marca.ItemIndex := 0;

  END;

end;

procedure Tfrmlista_venda2.qrvendaCalcFields(DataSet: TDataSet);
begin
  if combo_forma.visible then
  begin
    case combo_forma.ItemIndex of
    0:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('total').asfloat;
    1:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_dinheiro').asfloat;
    2:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_chequeav').asfloat;
    3:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_chequeap').asfloat;
    4:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_cartaocred').asfloat;
    5:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_cartaodeb').asfloat;
    6:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_crediario').asfloat;
    7:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_convenio').asfloat;
    8:qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('meio_financeira').asfloat;
    end;
  end
  else
  begin
    qrvenda.fieldbyname('valor_selecionado').asfloat := qrvenda.fieldbyname('total').asfloat;
  end;
end;

end.
