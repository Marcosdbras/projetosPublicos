unit lista_produto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Grids, DBGrids, frxCross, Menus, ComCtrls,
  AdvGlowButton, RzPrgres, MemDS, DBAccess, IBC, RzEdit, RxMemDS;

type
  Tfrmlista_produto2 = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    Label2: TLabel;
    combo_grupo: TComboBox;
    Label3: TLabel;
    combo_subgrupo: TComboBox;
    Label4: TLabel;
    combo_marca: TComboBox;
    Label5: TLabel;
    combo_estoque: TComboBox;
    Label6: TLabel;
    combo_inventario: TComboBox;
    Label7: TLabel;
    combo_fornecedor: TComboBox;
    qrproduto: TZQuery;
    fsproduto: TfrxDBDataset;
    Label8: TLabel;
    COMBO_ORDEM: TComboBox;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoFORNECEDOR: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoMARCA: TStringField;
    qrprodutoGRUPO: TStringField;
    qrprodutoSUBGRUPO: TStringField;
    qrprodutoPRECO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrproduto_grade: TZQuery;
    fsproduto_grade: TfrxDBDataset;
    qrgrupo: TZQuery;
    qrsubgrupo: TZQuery;
    dsgrupo: TDataSource;
    dssubgrupo: TDataSource;
    fsgrupo: TfrxDBDataset;
    fssubgrupo: TfrxDBDataset;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    frxCrossObject1: TfrxCrossObject;
    qrproduto_serial: TZQuery;
    fsproduto_serial: TfrxDBDataset;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    qrfornecedor: TZQuery;
    qrproduto_serialfornecedor: TStringField;
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    QRMOVIMENTO: TZQuery;
    QRMOVIMENTOCODIGO: TStringField;
    QRMOVIMENTOCODNOTA: TStringField;
    QRMOVIMENTOCODPRODUTO: TStringField;
    QRMOVIMENTOUNITARIO: TFloatField;
    QRMOVIMENTOTOTAL: TFloatField;
    QRMOVIMENTOICMS: TFloatField;
    QRMOVIMENTOIPI: TFloatField;
    QRMOVIMENTOCFOP: TStringField;
    QRMOVIMENTODATA: TDateTimeField;
    QRMOVIMENTONUMERONOTA: TStringField;
    QRMOVIMENTOCODCLIENTE: TStringField;
    QRMOVIMENTODESCONTO: TFloatField;
    QRMOVIMENTOACRESCIMO: TFloatField;
    QRMOVIMENTOMOVIMENTO: TIntegerField;
    QRMOVIMENTOCODVENDEDOR: TStringField;
    QRMOVIMENTOCODGRADE: TStringField;
    QRMOVIMENTOSERIAL: TStringField;
    QRMOVIMENTOUNIDADE: TStringField;
    QRMOVIMENTOQTDE: TFloatField;
    QRMOVIMENTOVALOR_ICMS: TFloatField;
    QRMOVIMENTOICMS_REDUZIDO: TFloatField;
    QRMOVIMENTOBASE_CALCULO: TFloatField;
    QRMOVIMENTOVALOR_IPI: TFloatField;
    QRMOVIMENTOPRODUTO: TStringField;
    fsmovimento: TfrxDBDataset;
    QRMOVIMENTOMOV: TStringField;
    QRMOVIMENTOCLIENTE: TStringField;
    qrprodutoCODALIQUOTA: TStringField;
    Label9: TLabel;
    combo_tipo: TComboBox;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoREPOSICAO: TFloatField;
    qrprodutoALIQUOTA: TFloatField;
    lcst: TLabel;
    combo_cst: TComboBox;
    qrprodutoCST: TStringField;
    qrprodutosituacaotributaria: TStringField;
    qrprodutoNOME_ALIQUOTA: TStringField;
    qrsugestao_compra: TZQuery;
    qrsugestao_compraCODIGO: TStringField;
    qrsugestao_compraPRODUTO: TStringField;
    qrsugestao_compraCODMARCA: TStringField;
    qrsugestao_compraESTOQUE: TFloatField;
    qrsugestao_compraPRECOCUSTO: TFloatField;
    qrsugestao_compraDATA_ULTIMACOMPRA: TDateTimeField;
    qrsugestao_compraDATA_ULTIMAVENDA: TDateTimeField;
    qrsugestao_compraVENDAS: TFloatField;
    qrsugestao_compraSUGESTAO: TFloatField;
    fssugestao_compra: TfrxDBDataset;
    qrsugestao_compraCODFORNECEDOR: TStringField;
    qrsugestao_compramarca: TStringField;
    qrsugestao_comprafornecedor: TStringField;
    qrprodutosugestao: TFloatField;
    qrprodutovendas: TFloatField;
    Panel1: TPanel;
    bar: TRzProgressBar;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    grem: TGroupBox;
    ldataini_remarcado: TDateEdit;
    ldatafim_remarcado: TDateEdit;
    lfim_remarcado: TLabel;
    qrprodutoESTOQUE_INICIAL: TFloatField;
    qrprodutoENTRADAS: TFloatField;
    qrprodutoSAIDAS: TFloatField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutoULTIMA_ENTRADA: TDateTimeField;
    qrprodutoULTIMA_SAIDA: TDateTimeField;
    qrprodutoNOTA_FISCAL: TStringField;
    Label10: TLabel;
    combo_situacao: TComboBox;
    qrprodutoSITUACAO: TIntegerField;
    QUERY: TZQuery;
    QUERY_TIPO: TZQuery;
    fstotal_TIPO: TfrxDBDataset;
    fstotal: TfrxDBDataset;
    qrprodutoTIPO: TStringField;
    dsproduto2: TDataSource;
    qrposicao: TzQuery;
    fsposicao: TfrxDBDataset;
    qrposicaoCODIGO: TStringField;
    qrposicaoPRODUTO: TStringField;
    qrposicaoUNIDADE: TStringField;
    qrposicaoSALDO_ANTERIOR: TFloatField;
    qrposicaoMOVIMENTO: TFloatField;
    qrposicaoESTOQUE_INICIAL: TFloatField;
    query_pis_entrada: TZQuery;
    query_pis_entradaQTDE: TFloatField;
    query_pis_entradaMOVIMENTO: TIntegerField;
    query_pis_entradaCODPRODUTO: TStringField;
    query_pis_entradaCODIGO: TStringField;
    query_pis_entradaPRODUTO: TStringField;
    query_pis_entradaCODSUBGRUPO: TStringField;
    query_pis_entradaPRECOCUSTO: TFloatField;
    query_pis_entradaPISCOFINS: TStringField;
    query_pis_entradasubgrupo: TStringField;
    query_pis_entradaCST: TStringField;
    query_pis_entradaALIQUOTA: TFloatField;
    query_pis_entradapis: TFloatField;
    query_pis_entradacofins: TFloatField;
    query_pis_saida: TZQuery;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField3: TFloatField;
    StringField5: TStringField;
    query_pis_saidasubgrupo: TStringField;
    query_pis_saidaCST: TStringField;
    query_pis_saidaALIQUOTA: TFloatField;
    query_pis_saidapis: TFloatField;
    query_pis_saidacofins: TFloatField;
    fspis_saida: TfrxDBDataset;
    fspis_entrada: TfrxDBDataset;
    query_pis_saidaUNITARIO: TFloatField;
    qrproduto_preco: TZQuery;
    fs_produto_preco: TfrxDBDataset;
    qrprecos: TZQuery;
    fxprecos: TfrxDBDataset;
    qrproduto_precoCODIGO: TStringField;
    qrproduto_precoCODBARRA: TStringField;
    qrproduto_precoPRODUTO: TStringField;
    qrproduto_precoCODPRODUTO: TStringField;
    qrproduto_precoLUCRO: TFloatField;
    qrproduto_precoSUGERIDO: TFloatField;
    qrproduto_precoUNIDADE: TStringField;
    qrproduto_precoPRECOVENDA: TFloatField;
    pdesconto: THeaderView;
    HeaderView5: THeaderView;
    Label11: TLabel;
    bdesconto: TAdvGlowButton;
    edesconto: TRzNumericEdit;
    qrnota_entrada: TZQuery;
    qrnota_entradaCODIGO: TStringField;
    qrnota_entradaCODEMPRESA: TStringField;
    qrnota_entradaCODFORNECEDOR: TStringField;
    qrnota_entradaNUMERO: TStringField;
    qrnota_entradaTOTAL_NOTA: TFloatField;
    qrnota_entradaCREDITO_ICMS: TFloatField;
    qrnota_entradaPIS: TFloatField;
    qrnota_entradaCOFINS: TFloatField;
    qrnota_entradaDATA_LANCAMENTO: TDateTimeField;
    qrnota_entradaDATA_EMISSAO: TDateTimeField;
    qrnota_entradafornecedor: TStringField;
    qrnota_entradacnpj: TStringField;
    qrnota_entradaColumn: TFloatField;
    fscredito_icms: TfrxDBDataset;
    qricms1: TZQuery;
    qricms1ID: TIntegerField;
    qricms1MOVIMENTO: TStringField;
    qricms1CODIGO_EMPRESA: TIntegerField;
    qricms1OBS1: TStringField;
    qricms1CNPJ: TStringField;
    qricms1IE: TStringField;
    qricms1UF: TStringField;
    qricms1CODIGO_CLIENTE: TIntegerField;
    qricms1CNPJ_CLIENTE: TStringField;
    qricms1IE_CLIENTE: TStringField;
    qricms1UF_CLIENTE: TStringField;
    qricms1CFOP: TStringField;
    qricms1COD_SINTEGRA_R60: TStringField;
    qricms1DATA_EMISSAO: TDateTimeField;
    qricms1NRO_SERIE_EQP: TStringField;
    qricms1NRO_ORDEM_EQP: TIntegerField;
    qricms1MODELO_DOC: TStringField;
    qricms1NRO_CONTADOR_INICIO: TIntegerField;
    qricms1NRO_CONTADOR_FIM: TIntegerField;
    qricms1NRO_CONTADOR_Z: TIntegerField;
    qricms1NRO_DOC_FISCAL: TIntegerField;
    qricms1NRO_ITENS: TIntegerField;
    qricms1CONTADOR_REINICIO: TIntegerField;
    qricms1VALOR_VENDA_BRUTA: TFloatField;
    qricms1VALOR_TOTAL_GERAL: TFloatField;
    qricms1BRANCOS: TStringField;
    qricms1DATAHORA_RECEBIMENTO: TDateTimeField;
    qricms1MODELO_NF: TStringField;
    qricms1DATAHORA_INI: TDateTimeField;
    qricms1DATAHORA_FIM: TDateTimeField;
    qricms1CANCELAMENTO: TFloatField;
    qricms1DESCONTO: TFloatField;
    qricms1ISSQN: TFloatField;
    qricms1SUBSTITUICAO_TRIBUTARIA: TFloatField;
    qricms1ISENTO: TFloatField;
    qricms1NAO_INCIDENCIA: TFloatField;
    qricms1ACRESCIMO_IOF: TFloatField;
    qricms1ALIQUOTA01: TFloatField;
    qricms1ALIQUOTA02: TFloatField;
    qricms1ALIQUOTA03: TFloatField;
    qricms1ALIQUOTA04: TFloatField;
    qricms1ALIQUOTA05: TFloatField;
    qricms1BASE01: TFloatField;
    qricms1BASE02: TFloatField;
    qricms1BASE03: TFloatField;
    qricms1BASE04: TFloatField;
    qricms1BASE05: TFloatField;
    qricms1VALOR_TPARCIAL01: TFloatField;
    qricms1VALOR_TPARCIAL02: TFloatField;
    qricms1VALOR_TPARCIAL03: TFloatField;
    qricms1VALOR_TPARCIAL04: TFloatField;
    qricms1VALOR_TPARCIAL05: TFloatField;
    qricms1BRANCOS_60A01: TStringField;
    qricms1BRANCOS_60A02: TStringField;
    qricms1BRANCOS_60A03: TStringField;
    qricms1BRANCOS_60A04: TStringField;
    qricms1BRANCOS_60A05: TStringField;
    qricms1TOTAL_INICIO_DIA: TFloatField;
    qricms1TOTAL_FINAL_DIA: TFloatField;
    qricms1TOTAL_DIA: TFloatField;
    qricms1OBSERVACAO: TStringField;
    qricms1VALOR_VENDA_LIQUIDA: TFloatField;
    qricms1NRO_CONTADOR_CANCELAMENTO: TIntegerField;
    fsicms: TfrxDBDataset;
    FSimposto_vendas: TfrxDBDataset;
    qrimposto_vendas: TZQuery;
    qrimposto_vendasTOTAL: TFloatField;
    qrimposto_vendasCREDITO_ICMS: TFloatField;
    qrimposto_vendasPIS: TFloatField;
    qrimposto_vendasCOFINS: TFloatField;
    qricms: TRxMemoryData;
    qricmsaliquota: TFloatField;
    qricmstotal: TFloatField;
    qricmsimposto: TFloatField;
    ltext_remarcado: TLabel;
    query_pis_entradaUNITARIO: TFloatField;
    query_pis_saidaTOTAL: TFloatField;
    query_pis_saidaDESCONTO: TFloatField;
    query_pis_entrada_resumo: TZQuery;
    query_pis_entrada_resumoTOTAL: TFloatField;
    query_pis_entrada_resumoMOVIMENTO: TIntegerField;
    query_pis_entrada_resumoDATA: TDateTimeField;
    query_pis_entrada_resumopis: TFloatField;
    query_pis_entrada_resumocofins: TFloatField;
    query_pis_saida_resumo: TZQuery;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    DateTimeField1: TDateTimeField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    fspis_saida_resumo: TfrxDBDataset;
    fspis_entrada_resumo: TfrxDBDataset;
    qrnota_entradaBASE_ICMS: TFloatField;
    qrnota_entradaVALOR_ICMS: TFloatField;
    combo_produto: TComboBox;
    Label12: TLabel;
    qrproducao: TZQuery;
    fsproducao: TfrxDBDataset;
    qrproducaoCODIGO: TStringField;
    qrproducaoPRODUTO: TStringField;
    qrproducaoUNIDADE: TStringField;
    qrproducaoCLASSIFICACAO_FISCAL: TStringField;
    qrproducaoCODNOTA: TStringField;
    qrproducaoCODPRODUTO: TStringField;
    qrproducaoQTDE: TFloatField;
    qrproducaoUNITARIO: TFloatField;
    qrproducaoTOTAL: TFloatField;
    qrproducaoIPI: TFloatField;
    qrproducaoCODIGO_1: TStringField;
    qrproducaoNUMERO: TStringField;
    qrproducaoDATA_EMISSAO: TDateTimeField;
    qrproducaoDATA_LANCAMENTO: TDateTimeField;
    qrproducaoCODIGO_2: TStringField;
    qrproducaoNUMERO_1: TStringField;
    qrproducaoDATA: TDateTimeField;
    qrproducaoCODNOTA_1: TStringField;
    qrproducaoCODPRODUTO_1: TStringField;
    qrproducaoQTDE_1: TFloatField;
    qrproducaoUNITARIO_1: TFloatField;
    qrproducaoTOTAL_1: TFloatField;
    qrproducaoIPI_1: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure combo_subgrupoChange(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure combo_grupoChange(Sender: TObject);
    procedure combo_fornecedorChange(Sender: TObject);
    procedure combo_marcaChange(Sender: TObject);
    procedure combo_relatorioChange(Sender: TObject);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure BitBtn1Click(Sender: TObject);
    procedure QRMOVIMENTOCalcFields(DataSet: TDataSet);
    procedure ldataini_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure ldatafim_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure ldatafim_remarcadoExit(Sender: TObject);
    procedure combo_cstChange(Sender: TObject);
    procedure query_pis_entradaCalcFields(DataSet: TDataSet);
    procedure query_pis_saidaCalcFields(DataSet: TDataSet);
    procedure bdescontoClick(Sender: TObject);
    procedure query_pis_entrada_resumoCalcFields(DataSet: TDataSet);
    procedure query_pis_saida_resumoCalcFields(DataSet: TDataSet);
    procedure qricmsCalcFields(DataSet: TDataSet);
    procedure qricms1CalcFields(DataSet: TDataSet);
    procedure combo_produtoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_produto2: Tfrmlista_produto2;
  vpis,vcofins : double;
  vvista,vprazo,vdesconto,vjuros : double;
  data_caixa : tdatetime;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, xloc_subgrupo,
  xloc_grupo, xloc_fornecedor, xloc_marca, principal, xloc_cst,
  dados_inventario, xloc_produto;

{$R *.dfm}

procedure Tfrmlista_produto2.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  action := cafree;
end;

procedure Tfrmlista_produto2.FormShow(Sender: TObject);
begin

  FRMMODULO.QRCAIXA_OPERADOR.OPEN;
  FRMMODULO.QRCAIXA_OPERADOR.LOCATE('CODIGO','000099',[LOCASEINSENSITIVE]);
  data_caixa := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;

  FRMMODULO.QRFORNECEDOR.CLOSE;
  FRMMODULO.QRFORNECEDOR.SQL.CLEAR;
  FRMMODULO.QRFORNECEDOR.SQL.ADD('SELECT * FROM C000009');
  FRMMODULO.QRFORNECEDOR.OPEN;


  combo_relatorio.ItemIndex := 0;
  combo_produto.ItemIndex := 0;
  combo_grupo.ItemIndex := 0;
  combo_SUBGRUPO.ItemIndex := 0;
  combo_fornecedor.ItemIndex := 0;
  combo_marca.itemindex := 0;
  combo_estoque.ItemIndex := 0;
  combo_inventario.ItemIndex := 0;

  ldataini_remarcado.Date := data_caixa;
  ldatafim_remarcado.Date := data_caixa;


end;

procedure Tfrmlista_produto2.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_produto2.combo_subgrupoChange(Sender: TObject);
begin
  IF combo_subgrupo.Text = 'SELECIONAR' THEN
  BEGIN
    frmXloc_SUBGRUPO := tfrmXloc_SUBGRUPO.create(self);
    IF combo_grupo.text = 'TODOS' then
    begin
      parametro_pesquisa := '';
      frmxloc_subgrupo.PGRUPO.Caption :='TODOS OS GRUPOS';
    end
    else
    begin
      frmxloc_subgrupo.PGRUPO.Caption := 'GRUPO: '+combo_grupo.text;
      parametro_pesquisa := ' and codgrupo = '''+copy(combo_grupo.Text,1,6)+'''';
    end;

    frmXloc_SUBGRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_SUBGRUPO.Items.Add(RESULTADO_PESQUISA1+' '+RESULTADO_PESQUISA2);
      combo_SUBGRUPO.ItemIndex := combo_SUBGRUPO.Items.Count - 1;
    end
    else
      combo_subgrupo.ItemIndex := 0;
  END;
end;

procedure Tfrmlista_produto2.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmlista_produto2.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bimprimir.SetFocus;
end;

procedure Tfrmlista_produto2.bimprimirClick(Sender: TObject);
var
  situacao, PRODUTO,GRUPO, SUBGRUPO, FORNECEDOR, MARCA, ESTOQUE, ESTOQUE1, INVENTARIO, CST, tipo,  ordem: string;
  v01,v07,v12,v17,v25,v27 : double;

begin

//  qrproduto.LinkedFields := '';


  frmmodulo.qrFilial.Open;
  vpis := frmmodulo.qrFilial.FieldByName('pis').AsFloat;
  vcofins := frmmodulo.qrFilial.FieldByName('cofins').AsFloat;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';

  if combo_produto.Text = 'TODOS' then produto := '' else begin  produto := ' and codproduto = '''+copy(combo_produto.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'PRODUTO: '+COMBO_produto.TEXT; END;
  if combo_grupo.Text = 'TODOS' then grupo := '' else begin  grupo := ' and codgrupo = '''+copy(combo_grupo.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'GRUPO: '+COMBO_grupo.TEXT; END;
  if combo_SUBGRUPO.Text = 'TODOS' then SUBGRUPO := '' else begin SUBGRUPO := ' and CODSUBGRUPO = '''+copy(combo_SUBGRUPO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'SUBGRUPO: '+COMBO_SUBGRUPO.TEXT; end;
  if combo_fornecedor.Text = 'TODOS' then fornecedor := '' else begin fornecedor := ' and codfornecedor = '''+copy(combo_fornecedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'FORNECEDOR: '+COMBO_fornecedor.TEXT+'   '; end;
  if combo_MARCA.Text = 'TODOS' then MARCA := '' else begin MARCA := ' and codMARCA = '''+copy(combo_MARCA.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'MARCA: '+COMBO_MARCA.TEXT+'   '; end;
  if combo_cst.Text = 'TODOS' then CST := '' else begin CST := ' and CST = '''+copy(combo_cst.text,1,3)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'CST: '+combo_cst.TEXT+'   '; end;

  IF combo_ESTOQUE.Text = 'TODOS' THEN
  begin
    ESTOQUE := '';
    ESTOQUE1 := '';
  end;
  IF combo_ESTOQUE.Text = 'COM ESTOQUE' THEN
  begin
    ESTOQUE := ' AND ESTQ.ESTOQUE_ATUAL > 0 ';
    ESTOQUE1 := ' AND ESTOQUE_INVENTARIO > 0 ';
  end;
  IF combo_ESTOQUE.Text = 'ESTOQUE NEGATIVO' THEN
  begin
    ESTOQUE := ' AND ESTQ.ESTOQUE_ATUAL < 0 ';
    ESTOQUE1 := ' AND ESTOQUE_INVENTARIO < 0 ';
  end;
  IF combo_ESTOQUE.Text = 'SEM ESTOQUE' THEN
  begin
    ESTOQUE := ' AND ESTQ.ESTOQUE_ATUAL < 1 ';
    ESTOQUE1 := ' AND ESTOQUE_INVENTARIO < 1 ';
  end;

  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';

  IF combo_tipo.Text = 'TODOS' THEN tipo := '' ELSE tipo := ' and tipo = '''+combo_tipo.text+'''';


  IF COMBO_ORDEM.TEXT = 'PRODUTO' THEN ORDEM := ' PRODUTO';
  IF COMBO_ORDEM.TEXT = 'CÓDIGO' THEN ORDEM := ' CODIGO';
  IF COMBO_ORDEM.TEXT = 'CÓDIGO DE BARRAS' THEN ORDEM := ' CODBARRA';



//  qrproduto.LinkedFields := '';
  qrproduto.MasterFields := '';
  qrproduto.SortedFields := '';
  qrproduto.MasterSource := nil;

  if combo_relatorio.Text = 'POSIÇÃO DE ESTOQUE' then
  begin

    FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

    qrposicao.close;
    qrposicao.sql.clear;
    qrposicao.sql.add('select');
    qrposicao.sql.add('c000025.codigo,');
    qrposicao.sql.add('c000025.produto,');
    qrposicao.sql.add('c000025.UNIDADE,');
    qrposicao.sql.add('c000100.ESTOQUE_INiCIAL,');
    qrposicao.sql.add('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data < :datai) saldo_anterior,');
    qrposicao.sql.add('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data >= :datai and data <= :dataf) movimento');
    qrposicao.sql.add('from c000025, c000100 where c000025.codigo = c000100.codproduto');
    qrposicao.sql.add(grupo+SUBGRUPO+fornecedor+marca+tipo+situacao);
    qrposicao.sql.add('and c000025.data_cadastro <= :dataf');
//    qrposicao.sql.add('group by c000025.codigo,');
//    qrposicao.sql.add('c000025.produto,');
//    qrposicao.sql.add('c000025.UNIDADE,');
//    qrposicao.sql.add('c000100.ESTOQUE_INiCIAL');
//    qrposicao.sql.add('having');
//    qrposicao.sql.add('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data < :datai) <> 0 or');
//    qrposicao.sql.add('(select sum(c000032.movimento_estoque) from c000032 where c000032.codproduto = c000025.codigo and data >= :datai and data <= :dataf) <> 0');
//    qrposicao.SQL.add('or (c000100.estoque_inicial > 0 )');
    qrposicao.sql.add('order by c000025.produto');
    qrposicao.params.parambyname('datai').asdatetime := ldataini_remarcado.date;
    qrposicao.params.parambyname('dataf').asdatetime := ldatafim_remarcado.date;
    qrposicao.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'POSIÇÃO DE ESTOQUE';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000184.fr3');
    fxproduto.ShowReport;


  end;





  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - SINTÉTICA' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+cst+' order by '+ordem);
    qrPRODUTO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE PRODUTOS - SINTÉTICA';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000025.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;
    
    {
    if qrproduto.FIELDBYNAME('precovenda').ASFLOAT > 0 then
      begin
        vvista := qrproduto.FIELDBYNAME('precovenda').ASFLOAT-(qrproduto.FIELDBYNAME('precovenda').ASFLOAT*vdesconto);
        vprazo := qrproduto.FIELDBYNAME('precovenda').ASFLOAT;
        vjuros := (((vprazo/vvista)-1)*100);
      end
    else
      vjuros := 11.11;
    }

    vvista := 10-(10*vdesconto);
    vprazo := 10;
    vjuros := (((vprazo/vvista)-1)*100);

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE PRODUTOS - ETIQUETAS';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'Taxa de Juros '+FORMATFLOAT('###,###,##0.00',vjuros)+'% a.m.';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000076.fr3');
    fxproduto.ShowReport;
  end;



  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ATUAL' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'INVENTÁRIO DE ESTOQUE ATUAL';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000026.fr3');
    fxproduto.ShowReport;
  end;


  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS DE BALANÇA' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrPRODUTO.sql.add('and USA_BALANCA = 1 '+grupo+SUBGRUPO+fornecedor+marca+estoque+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELATÓRIO DE PRODUTOS PESADOS';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000075.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM GRADE' then
  begin
    if combo_grupo.Text      = 'TODOS' then grupo      := '' else begin grupo      := ' and PROD.codgrupo = '''     +copy(combo_grupo.text,1,6)+'''';      frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'GRUPO: '+COMBO_grupo.TEXT; END;
    if combo_SUBGRUPO.Text   = 'TODOS' then SUBGRUPO   := '' else begin SUBGRUPO   := ' and PROD.CODSUBGRUPO = '''  +copy(combo_SUBGRUPO.text,1,6)+'''';   frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'SUBGRUPO: '+COMBO_SUBGRUPO.TEXT; end;
    if combo_fornecedor.Text = 'TODOS' then fornecedor := '' else begin fornecedor := ' and PROD.codfornecedor = '''+copy(combo_fornecedor.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA5').asstring := 'FORNECEDOR: '+COMBO_fornecedor.TEXT+'   '; end;
    if combo_MARCA.Text      = 'TODOS' then MARCA      := '' else begin MARCA      := ' and PROD.codMARCA = '''     +copy(combo_MARCA.text,1,6)+'''';      frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'MARCA: '+COMBO_MARCA.TEXT+'   '; end;

    IF COMBO_ORDEM.TEXT = 'PRODUTO' THEN ORDEM := ' PROD.PRODUTO';
    IF COMBO_ORDEM.TEXT = 'CÓDIGO' THEN ORDEM := ' PROD.CODIGO';
    IF COMBO_ORDEM.TEXT = 'CÓDIGO DE BARRAS' THEN ORDEM := ' PROD.CODBARRA';

    QRPRODUTO_GRADE.close;
    QRPRODUTO_GRADE.sql.clear;
    QRPRODUTO_GRADE.sql.add('select PROD.*, GRADE.*, estq.* from c000025 PROD, C000021 GRADE, c000100 estq where prod.codigo = estq.codproduto');
    qrproduto_grade.sql.add('and PROD.CODIGO = GRADE.CODPRODUTO '+grupo+SUBGRUPO+fornecedor+marca+estoque+tipo+situacao+' and prod.usa_grade = 1 order by '+ordem);
    QRPRODUTO_GRADE.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - ESTOQUE COM GRADE';

    fXPRODUTO.LoadFromFile('\DATASAC\server\rel\f000027.fr3');
    fxPRODUTO.ShowReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM SERIAIS' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;



    IF combo_ESTOQUE.Text = 'TODOS' THEN
      ESTOQUE := ''
    else
    begin
      IF combo_ESTOQUE.Text = 'COM ESTOQUE' THEN
        ESTOQUE := ' and situacao = 1 '
      else
        estoque := ' and situacao = 2 '
    end;

    qrproduto_serial.close;
    qrproduto_serial.sql.clear;
    qrproduto_serial.sql.add('select * from c000022 where codigo is not null '+estoque+' order by serial');
    qrproduto_serial.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - ESTOQUE COM SERIAIS';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000028.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR FORNECEDOR' then
  begin

    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by codfornecedor, produto');
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - ESTOQUE POR FORNECEDOR';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000029.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR FORNECEDOR' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by codfornecedor, produto');
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - PREÇOS POR FORNECEDOR';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000030.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR MARCA' then
  begin

    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by codmarca, produto');
    qrPRODUTO.open;



    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - ESTOQUE POR FABRICANTE';
    fXproduto.LoadFromFile('\DataSAC\server\rel\f000017.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR MARCA' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by codmarca, produto');
    qrPRODUTO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - PREÇOS POR FABRICANTE';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000016.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - SINTÉTICA' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - TABELA DE PREÇOS';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000031.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - A PRAZO' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'TABELA DE PREÇOS - A PRAZO';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000128.fr3');
    fxproduto.ShowReport;
  end;

  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE PRODUTOS COM MOVIMENTAÇÃO' THEN
  BEGIN
    QRMOVIMENTO.close;
    qrmovimento.sql.clear;
    qrmovimento.sql.add('select * from c000032');
    qrmovimento.sql.add('where');
    qrmovimento.sql.add('DATA >= :data_ini and');
    qrmovimento.sql.add('DATA <= :data_fim');
    qrmovimento.sql.add('order by data');
    qrmovimento.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    qrmovimento.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    qrmovimento.open;

 



    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE PRODUTOS / MOVIMENTO';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000020.fr3');
    fxproduto.ShowReport;
  END;

  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE COMPRAS' THEN
  BEGIN
    QRMOVIMENTO.close;
    qrmovimento.sql.clear;
    qrmovimento.sql.add('select * from c000032');
    qrmovimento.sql.add('where MOVIMENTO = ''1'' AND ');
    qrmovimento.sql.add('DATA >= :data_ini and');
    qrmovimento.sql.add('DATA <= :data_fim');
    qrmovimento.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    qrmovimento.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    qrmovimento.open;

    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS';
    FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000020.fr3');
    fxproduto.ShowReport;
  END;

  IF COMBO_RELATORIO.TEXT = 'SUGESTÃO DE COMPRAS' THEN
  BEGIN


    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' ORDER by codfornecedor,produto');
    qrPRODUTO.open;

    bar.PartsComplete := 0;
    bar.TotalParts := qrproduto.RecordCount;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'SUGESTÃO DE COMPRAS';
    FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;
    FRMMODULO.QRRELATORIO.FieldByName('linha4').AsString := 'REFERENTE AS VENDAS DOS ULTIMOS '+inttostr(TRUNC(ldatafim_remarcado.Date-ldataini_remarcado.Date))+' DIAS';

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000130.fr3');
    fxproduto.ShowReport;
  END;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR GRUPO/SUBGRUPO' then
  begin
    qrproduto.MasterSource := dssubgrupo;
    qrproduto.MasterFields := 'codigo';
    qrproduto.IndexFieldNames := 'codsubgrupo';
//    qrproduto.LinkedFields := 'codsubgrupo';


    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by prod.codgrupo, prod.codsubgrupo, prod.produto');
    qrPRODUTO.open;

    qrproduto.SortedFields := 'produto';

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ESTOQUE - GRUPO/SUBGRUPO';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000018.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and estoqueminimo > 0 and ((estoqueminimo-estq.estoque_atual) > 0)');
    qrproduto.sql.add(grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ORDEM);
    qrPRODUTO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000101.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;


  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS POR ALÍQUOTA' then
  begin

    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by aliquota,produto');
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE PRODUTOS POR ALÍQUOTA';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000102.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;


  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR GRUPO/SUBGRUPO' then
  begin

    qrproduto.MasterSource := dssubgrupo;
    qrproduto.MasterFields := 'codigo';
    qrproduto.IndexFieldNames := 'codsubgrupo';
//    qrproduto.LinkedFields := 'codsubgrupo';

    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by prod.codgrupo, prod.codsubgrupo, prod.produto');
    qrPRODUTO.open;

    qrproduto.SortedFields := 'produto';

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'TABELA DE PREÇOS - GRUPO/SUBGRUPO';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000019.fr3');
    fxproduto.ShowReport;
    qrproduto.MasterSource := nil;
    qrproduto.MasterFields := '';
    qrproduto.IndexFieldNames := '';
  end;

  if combo_relatorio.Text = 'PRODUTOS REMARCADOS' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and ');
    qrPRODUTO.sql.add('DATA_REMARCACAO_VENDA >= :data_ini and');
    qrPRODUTO.sql.add('DATA_REMARCACAO_VENDA <= :data_fim');
    qrproduto.sql.add('order by '+ordem);
    qrPRODUTO.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    qrPRODUTO.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    qrPRODUTO.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS REMARCADOS';
    FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000025.fr3');
    fxproduto.ShowReport;
  end;


  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE PRODUTOS SEM PIS/COFINS' THEN
  BEGIN

    if combo_SUBGRUPO.Text = 'TODOS' then SUBGRUPO := '' else begin SUBGRUPO := ' and p.codsubgrupo = '''+copy(combo_SUBGRUPO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'SUBGRUPO: '+COMBO_SUBGRUPO.TEXT; end;
    if combo_cst.Text = 'TODOS' then CST := '' else begin CST := ' and p.cst = '''+copy(combo_cst.text,1,3)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'CST: '+combo_cst.TEXT+'   '; end;

    query_pis_entrada.close;
    query_pis_entrada.sql.clear;
    query_pis_entrada.sql.add('select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.sql.add('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada.sql.add('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim '+subgrupo+cst);
    query_pis_entrada.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_entrada.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_entrada.sql.add('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.sql.add('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_entrada.open;
{
    query_pis_saida.close;
    query_pis_saida.sql.clear;
    query_pis_saida.sql.add('select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.sql.add('from c000032 m, c000025 p where m.movimento in (2) and p.codigo = m.codproduto');
    query_pis_saida.sql.add('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_saida.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_saida.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_saida.sql.add('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.sql.add('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_saida.open;
}

    query_pis_saida.close;
    query_pis_saida.sql.clear;
    query_pis_saida.sql.add('select sum(m.total-m.desconto) total,sum(m.desconto) desconto,sum(m.qtde) qtde,m.movimento, m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.sql.add('from c000032 m, c000025 p where m.movimento = 2 and p.codigo = m.codproduto');
    query_pis_saida.sql.add('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim '+subgrupo+cst);
    query_pis_saida.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_saida.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_saida.sql.add('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.sql.add('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_saida.open;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida.RecordCount;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS/VENDAS DE MERCADORIAS SEM PIS/COFINS';
    FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000142_1.fr3');
    fxproduto.ShowReport;

  END;

  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE PRODUTOS COM PIS/COFINS' THEN
  BEGIN

    if combo_SUBGRUPO.Text = 'TODOS' then SUBGRUPO := '' else begin SUBGRUPO := ' and p.codsubgrupo = '''+copy(combo_SUBGRUPO.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA4').asstring := 'SUBGRUPO: '+COMBO_SUBGRUPO.TEXT; end;
    if combo_cst.Text = 'TODOS' then CST := '' else begin CST := ' and p.cst = '''+copy(combo_cst.text,1,3)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA6').asstring := 'CST: '+combo_cst.TEXT+'   '; end;

    query_pis_entrada.close;
    query_pis_entrada.sql.clear;
    query_pis_entrada.sql.add('select sum(m.qtde) qtde,m.movimento,  m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.sql.add('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada.sql.add('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim '+subgrupo+cst);
    query_pis_entrada.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_entrada.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_entrada.sql.add('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_entrada.sql.add('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_entrada.open;

    query_pis_saida.close;
    query_pis_saida.sql.clear;
    query_pis_saida.sql.add('select sum(m.total-m.desconto) total,sum(m.desconto) desconto,sum(m.qtde) qtde,m.movimento, m.codproduto,m.unitario,');
    query_pis_saida.sql.add('p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.sql.add('from c000032 m, c000025 p where m.movimento = 2 and p.codigo = m.codproduto');
    query_pis_saida.sql.add('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim '+subgrupo+cst);
    query_pis_saida.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_saida.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_saida.sql.add('group by m.movimento,m.codproduto,m.unitario,p.codigo,p.produto, p.codsubgrupo,p.precocusto, p.piscofins,p.cst,p.aliquota');
    query_pis_saida.sql.add('order by m.movimento, p.codsubgrupo,p.produto');
    query_pis_saida.open;


    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida.RecordCount;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS/VENDAS DE MERCADORIAS COM PIS/COFINS';
    FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000142.fr3');
    fxproduto.ShowReport;

  END;

  IF COMBO_RELATORIO.TEXT = 'RESUMO DE PRODUTOS SEM PIS/COFINS' THEN
  BEGIN

    query_pis_entrada_resumo.close;
    query_pis_entrada_resumo.sql.clear;
    query_pis_entrada_resumo.sql.add('select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA');
    query_pis_entrada_resumo.sql.add('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada_resumo.sql.add('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_entrada_resumo.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_entrada_resumo.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_entrada_resumo.sql.add('group by m.movimento,M.DATA');
    query_pis_entrada_resumo.sql.add('order by m.movimento,M.DATA');
    query_pis_entrada_resumo.open;

    query_pis_saida_resumo.close;
    query_pis_saida_resumo.sql.clear;
    query_pis_saida_resumo.sql.add('select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA');
    query_pis_saida_resumo.sql.add('from c000032 m, c000025 p where m.movimento in (2) and p.codigo = m.codproduto');
    query_pis_saida_resumo.sql.add('and p.piscofins = ''N'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_saida_resumo.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_saida_resumo.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_saida_resumo.sql.add('group by m.movimento,M.DATA');
    query_pis_saida_resumo.sql.add('order by m.movimento,M.DATA');
    query_pis_saida_resumo.open;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida_resumo.RecordCount;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DE COMPRAS/VENDAS DE MERCADORIAS SEM PIS/COFINS';
    FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000142_3.fr3');
    fxproduto.ShowReport;

  END;

  IF COMBO_RELATORIO.TEXT = 'RESUMO DE PRODUTOS COM PIS/COFINS' THEN
  BEGIN

    query_pis_entrada_resumo.close;
    query_pis_entrada_resumo.sql.clear;
    query_pis_entrada_resumo.sql.add('select sum(m.total-m.desconto) TOTAL,m.movimento,  m.DATA');
    query_pis_entrada_resumo.sql.add('from c000032 m, c000025 p where m.movimento in (1) and p.codigo = m.codproduto');
    query_pis_entrada_resumo.sql.add('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_entrada_resumo.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_entrada_resumo.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_entrada_resumo.sql.add('group by m.movimento,M.DATA');
    query_pis_entrada_resumo.sql.add('order by m.movimento,M.DATA');
    query_pis_entrada_resumo.open;

    query_pis_saida_resumo.close;
    query_pis_saida_resumo.sql.clear;
    //query_pis_saida_resumo.sql.add('select sum(m.qtde*p.precocusto) TOTAL,m.movimento,  m.DATA');
    query_pis_saida_resumo.sql.add('select sum(m.total-m.desconto) TOTAL,m.movimento,  m.DATA');
    query_pis_saida_resumo.sql.add('from c000032 m, c000025 p where m.movimento in (2) and p.codigo = m.codproduto');
    query_pis_saida_resumo.sql.add('and p.piscofins = ''S'' and m.DATA >= :data_ini and m.DATA <= :data_fim');
    query_pis_saida_resumo.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
    query_pis_saida_resumo.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
    query_pis_saida_resumo.sql.add('group by m.movimento,M.DATA');
    query_pis_saida_resumo.sql.add('order by m.movimento,M.DATA');
    query_pis_saida_resumo.open;

    bar.PartsComplete := 0;
    bar.TotalParts := query_pis_saida_resumo.RecordCount;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS/VENDAS DE MERCADORIAS COM PIS/COFINS';
    FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

    fXproduto.LoadFromFile('\DATASAC\server\rel\f000142_2.fr3');
    fxproduto.ShowReport;

  END;


  (* INVENTARIO *)

  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR' then
  begin
    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque1+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao+' order by '+ordem);
    qrPRODUTO.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'INVENTÁRIO DE ESTOQUE ANTERIOR';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000098.fr3');
    fxproduto.ShowReport;
  end;

  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST' then
  begin

    qrPRODUTO.close;
    qrPRODUTO.sql.clear;
    qrPRODUTO.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto ');
    qrproduto.sql.add(estoque1+grupo+SUBGRUPO+cst+fornecedor+marca+tipo+situacao+' order by CST, produto');
    qrPRODUTO.open;



    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST';
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000103.fr3');
    fxproduto.ShowReport;
  end;



  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO COM PREÇOS (VENDA/SUGERIDO/LUCRO 0)' THEN
  BEGIN
    qrproduto_preco.close;
    qrproduto_preco.sql.clear;
    qrproduto_preco.sql.add('select prod.codigo,prod.codbarra,prod.produto, prod.precovenda, prod.unidade, nf.codproduto, prec.LUCRO, PREC.PRECO_VENDA SUGERIDO from');
    qrproduto_preco.sql.add('c000025 prod,');
    qrproduto_preco.sql.add('c000026 prec,');
    qrproduto_preco.sql.add('c000088 nf');
    qrproduto_preco.sql.add('where');
    qrproduto_preco.sql.add('prod.codigo = prec.codproduto');
    qrproduto_preco.sql.add('and prod.codigo = nf.codproduto');
    qrproduto_preco.sql.add('and nf.data between :datai and :dataf');
    qrproduto_preco.sql.add('and prec.data_alteracao between :datai and :dataf');
    qrproduto_preco.sql.add(estoque+grupo+SUBGRUPO+fornecedor+marca+tipo+situacao);
    qrproduto_preco.sql.add('group by prod.codigo,prod.codbarra,prod.produto, prod.precovenda, prod.unidade, nf.codproduto, prec.LUCRO , sugerido');
    qrproduto_preco.sql.add('order by '+ordem);
    qrproduto_preco.parambyname('datai').asdatetime := ldataini_remarcado.date;
    qrproduto_preco.ParamByName('dataf').asdatetime := ldatafim_remarcado.date;
    qrproduto_preco.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'PRODUTOS - TABELA DE PREÇOS';
    FRMMODULO.QRRELATORIO.FieldByName('linha3').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000190.fr3');
    fxproduto.ShowReport;
  END;

  if combo_relatorio.Text = 'RESUMO FISCAL' then

    begin

      {
      qrnota_entrada.close;
      qrnota_entrada.sql.clear;
      qrnota_entrada.SQL.add('select codigo,codempresa,codfornecedor,numero,total_nota,credito_icms,');
      qrnota_entrada.SQL.add('pis,cofins,data_lancamento,data_emissao,');
      qrnota_entrada.SQL.add('( select sum(subtotal) subtotal from c000088 where codnota = n.codigo and (pis+cofins) > 0 )');
      qrnota_entrada.SQL.add('from c000087 n');
      qrnota_entrada.SQL.add('where data_lancamento BETWEEN :datai and :dataf order by DATA_LANCAMENTO');
      qrnota_entrada.params.ParamByName('datai').asdatetime := ldataini_remarcado.date;
      qrnota_entrada.params.ParamByName('dataf').asdatetime := ldatafim_remarcado.date;
      qrnota_entrada.open;
      }

      qrnota_entrada.close;
      qrnota_entrada.sql.clear;
      qrnota_entrada.SQL.add('select codigo,codempresa,codfornecedor,numero,total_nota,base_icms,valor_icms,');
      qrnota_entrada.SQL.add('credito_icms,pis,cofins,data_lancamento,data_emissao,');
      qrnota_entrada.SQL.add('( select sum(total) subtotal from c000088 where codnota = n.codigo and (pis+cofins) > 0 )');
      qrnota_entrada.SQL.add('from c000087 n');
      qrnota_entrada.SQL.add('where data_lancamento BETWEEN :datai and :dataf order by DATA_LANCAMENTO');
      qrnota_entrada.params.ParamByName('datai').asdatetime := ldataini_remarcado.date;
      qrnota_entrada.params.ParamByName('dataf').asdatetime := ldatafim_remarcado.date;
      qrnota_entrada.open;


      /////////////////////////////////////////////////// calcula imposto


      qricms1.Close;
      qricms1.SQL.Clear;
      qricms1.SQL.Add('SELECT * FROM sintegra_rEG60');
      qricms1.SQL.Add('where (data_emissao BETWEEN :datahora_ini AND :datahora_fim)');
      qricms1.SQL.Add('ORDER BY data_emissao,nro_serie_eqp ');
      qricms1.ParamByName('datahora_ini').asdatetime := ldataini_remarcado.DATE;
      qricms1.ParamByName('datahora_fim').asdatetime := ldatafim_remarcado.DATE;
      qricms1.Open;

      If qricms1.RecordCount > 0 then
        begin
          bar.Visible := Enabled;
          bar.PartsComplete := 0;
          bar.TotalParts := qricms1.RecordCount;

      v01 := 0;
      v07 := 0;
      v12 := 0;
      v17 := 0;
      v25 := 0;
      v27 := 0;

      while not qricms1.Eof do begin

        // base01
        if      qricms1ALIQUOTA01.AsFloat = 7 then
          begin
            v07 := v07 + qricms1BASE01.AsFloat
          end
        else if qricms1ALIQUOTA01.AsFloat = 12 then
          begin
            v12 := v12 + qricms1BASE01.AsFloat
          end
        else if qricms1ALIQUOTA01.AsFloat = 17 then
          begin
            v17 := v17 + qricms1BASE01.AsFloat
          end
        else if qricms1ALIQUOTA01.AsFloat = 25 then
          begin
            v25 := v25 + qricms1BASE01.AsFloat
          end
        else if qricms1ALIQUOTA01.AsFloat = 27 then
          begin
            v27 := v27 + qricms1BASE01.AsFloat
          end;
        // base02
        if      qricms1ALIQUOTA02.AsFloat = 7 then
          begin
            v07 := v07 + qricms1BASE02.AsFloat
          end
        else if qricms1ALIQUOTA02.AsFloat = 12 then
          begin
            v12 := v12 + qricms1BASE02.AsFloat
          end
        else if qricms1ALIQUOTA02.AsFloat = 17 then
          begin
            v17 := v17 + qricms1BASE02.AsFloat
          end
        else if qricms1ALIQUOTA02.AsFloat = 25 then
          begin
            v25 := v25 + qricms1BASE02.AsFloat
          end
        else if qricms1ALIQUOTA02.AsFloat = 27 then
          begin
            v27 := v27 + qricms1BASE02.AsFloat
          end;
        // base03
        if      qricms1ALIQUOTA03.AsFloat = 7 then
          begin
            v07 := v07 + qricms1BASE03.AsFloat
          end
        else if qricms1ALIQUOTA03.AsFloat = 12 then
          begin
            v12 := v12 + qricms1BASE03.AsFloat
          end
        else if qricms1ALIQUOTA03.AsFloat = 17 then
          begin
            v17 := v17 + qricms1BASE03.AsFloat
          end
        else if qricms1ALIQUOTA03.AsFloat = 25 then
          begin
            v25 := v25 + qricms1BASE03.AsFloat
          end
        else if qricms1ALIQUOTA03.AsFloat = 27 then
          begin
            v27 := v27 + qricms1BASE03.AsFloat
          end;
        // base04
        if      qricms1ALIQUOTA04.AsFloat = 7 then
          begin
            v07 := v07 + qricms1BASE04.AsFloat
          end
        else if qricms1ALIQUOTA04.AsFloat = 12 then
          begin
            v12 := v12 + qricms1BASE04.AsFloat
          end
        else if qricms1ALIQUOTA04.AsFloat = 17 then
          begin
            v17 := v17 + qricms1BASE04.AsFloat
          end
        else if qricms1ALIQUOTA04.AsFloat = 25 then
          begin
            v25 := v25 + qricms1BASE04.AsFloat
          end
        else if qricms1ALIQUOTA04.AsFloat = 27 then
          begin
            v27 := v27 + qricms1BASE04.AsFloat
          end;
        // base05
        if      qricms1ALIQUOTA05.AsFloat = 7 then
          begin
            v07 := v07 + qricms1BASE05.AsFloat
          end
        else if qricms1ALIQUOTA05.AsFloat = 12 then
          begin
            v12 := v12 + qricms1BASE05.AsFloat
          end
        else if qricms1ALIQUOTA05.AsFloat = 17 then
          begin
            v17 := v17 + qricms1BASE05.AsFloat
          end
        else if qricms1ALIQUOTA05.AsFloat = 25 then
          begin
            v25 := v25 + qricms1BASE05.AsFloat
          end
        else if qricms1ALIQUOTA05.AsFloat = 27 then
          begin
            v27 := v27 + qricms1BASE05.AsFloat
          end;
        qricms1.Next;
        bar.PartsComplete := bar.PartsComplete + 1;
      end;
      Application.ProcessMessages;

      bar.PartsComplete := 0;
      bar.Visible := False;

      if v07 > 0 then
        begin
          qricms.Open;
          qricms.Append;
          qricmsaliquota.AsFloat := 7;
          qricmstotal.AsFloat := v07;
          //qricmsimposto.AsFloat := v07 * 7 / 100;
          qricms.Post;
        end;
      if v12 > 0 then
        begin
          qricms.Open;
          qricms.Append;
          qricmsaliquota.AsFloat := 12;
          qricmstotal.AsFloat := v12;
          //qricmsimposto.AsFloat := v12 * 12 / 100;
          qricms.Post;
        end;
      if v17 > 0 then
        begin
          qricms.Open;
          qricms.Append;
          qricmsaliquota.AsFloat := 17;
          qricmstotal.AsFloat := v17;
          //qricmsimposto.AsFloat := v17 * 17 / 100;
          qricms.Post;
        end;
      if v25 > 0 then
        begin
          qricms.Open;
          qricms.Append;
          qricmsaliquota.AsFloat := 25;
          qricmstotal.AsFloat := v25;
          //qricmsimposto.AsFloat := v25 * 25 / 100;
          qricms.Post;
        end;
      if v27 > 0 then
        begin
          qricms.Open;
          qricms.Append;
          qricmsaliquota.AsFloat := 27;
          qricmstotal.AsFloat := v27;
          //qricmsimposto.AsFloat := v27 * 27 / 100;
          qricms.Post;
        end;
    end;

  ///////////////////////////////////////////////////

      qrimposto_vendas.close;
      qrimposto_vendas.sql.clear;
      qrimposto_vendas.SQL.add('SELECT SUM(TOTAL) TOTAL, SUM(CREDITO_ICMS) CREDITO_ICMS, SUM(PIS) PIS , SUM(COFINS) COFINS');
      qrimposto_vendas.SQL.add('from c000032 where data BETWEEN :datai and :dataf AND MOVIMENTO = 2');
      //qrimposto_vendas.SQL.add('and cupom_modelo = ''2D''');
      qrimposto_vendas.params.ParamByName('datai').asdatetime := ldataini_remarcado.date;
      qrimposto_vendas.params.ParamByName('dataf').asdatetime := ldatafim_remarcado.date;
      qrimposto_vendas.open;

      QUERY.Close;
      QUERY.SQL.Clear;
      QUERY.SQL.Add('select sum(credito_icms) credito_icms,sum(pis) pis,sum(cofins) cofins from c000087');
      QUERY.SQL.add('where data_lancamento BETWEEN :datai and :dataf');
      QUERY.params.ParamByName('datai').asdatetime := ldataini_remarcado.date;
      QUERY.params.ParamByName('dataf').asdatetime := ldatafim_remarcado.date;
      QUERY.Open;

      FRMMODULO.qrrelatorio.FieldByName('VALOR1').AsFloat := QUERY.FieldByName('credito_icms').AsFloat;
      FRMMODULO.qrrelatorio.FieldByName('VALOR2').AsFloat := QUERY.FieldByName('pis').AsFloat;
      FRMMODULO.qrrelatorio.FieldByName('VALOR3').AsFloat := QUERY.FieldByName('cofins').AsFloat;

      qricms.First;
      while not qricms.Eof do begin
        FRMMODULO.qrrelatorio.FieldByName('VALOR4').AsFloat :=
        FRMMODULO.qrrelatorio.FieldByName('VALOR4').AsFloat+qricmsimposto.AsFloat;
        qricms.Next;
      end;
      qricms.First;

      FRMMODULO.qrrelatorio.FieldByName('VALOR5').AsFloat := qrimposto_vendasPIS.AsFloat;
      FRMMODULO.qrrelatorio.FieldByName('VALOR6').AsFloat := qrimposto_vendasCOFINS.AsFloat;

      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO FISCAL';
      FRMMODULO.QRRELATORIO.FieldByName('linha2').AsString := 'PERÍODO: '+ldataini_remarcado.text+' a '+ldatafim_remarcado.text;

      fXproduto.LoadFromFile('\DATASAC\server\rel\f000143.fr3');
      fxproduto.ShowReport;

      {
      vcredito_icms := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
      vpis := frmmodulo.qrpreco.fieldbyname('PIS').asfloat;
      vcofins := frmmodulo.qrpreco.fieldbyname('COFINS').asfloat;
      }
      qricms.First;
      while not qricms.Eof do begin
        qricms.Delete;
      end;
    end;

  if combo_relatorio.Text = 'REGISTRO DE CONTROLE DA PRODUÇÃO E DO ESTOQUE' then
    begin

      qrproducao.Close;
      qrproducao.SQL.Clear;
      qrproducao.SQL.Add('select p.codigo,p.produto,p.unidade,p.classificacao_fiscal,');
      qrproducao.SQL.Add('m.codnota,m.codproduto, m.qtde, m.unitario,m.total,m.ipi_valor as ipi,');
      qrproducao.SQL.Add('n.codigo,n.numero,n.data_emissao,n.data_lancamento,');
      qrproducao.SQL.Add('s.codigo, s.numero, s.data,');
      qrproducao.SQL.Add('i.codnota, i.codproduto, i.qtde, i.unitario, i.total, i.ipi as ipi');
      qrproducao.SQL.Add('from c000025 p , c000088 m, c000087 n, c000061 s, c000062 i');
      qrproducao.SQL.Add('where m.codproduto = p.codigo');
      qrproducao.SQL.Add('and i.codproduto = p.codigo');
      qrproducao.SQL.Add('and m.codnota = n.codigo');
      qrproducao.SQL.Add('and s.codigo = i.codnota');
      qrproducao.SQL.Add('order by m.codproduto, n.data_lancamento');
      qrproducao.Open;

      fXproduto.LoadFromFile('\DATASAC\server\rel\f000196.fr3');
      fxproduto.ShowReport;
    end;


end;

procedure Tfrmlista_produto2.combo_grupoChange(Sender: TObject);
begin
  IF combo_grupo.Text = 'SELECIONAR' THEN
  BEGIN

    frmXloc_GRUPO := tfrmXloc_GRUPO.create(self);
    frmXloc_GRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_GRUPO.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_GRUPO.ItemIndex := combo_GRUPO.Items.Count - 1;
    end
    else
      combo_grupo.ItemIndex := 0;
  END;
end;

procedure Tfrmlista_produto2.combo_fornecedorChange(Sender: TObject);
begin
  IF combo_Fornecedor.Text = 'SELECIONAR' THEN
  BEGIN
    parametro_pesquisa := '';
    frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
    frmxloc_Fornecedor.showmodal;

    IF RESULTADO_PESQUISA1 <> '' THEN
    BEGIN
      combo_Fornecedor.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_Fornecedor.ItemIndex := combo_Fornecedor.Items.Count - 1;
    END
    ELSE
      COMBO_Fornecedor.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_produto2.combo_marcaChange(Sender: TObject);
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
      COMBO_marca.ItemIndex := 0;

  END;
end;

procedure Tfrmlista_produto2.combo_relatorioChange(Sender: TObject);
begin

 if combo_relatorio.ItemIndex = 16 then
  begin
    pdesconto.Visible := true;
    pdesconto.Top := 29;
    pdesconto.Left := 132;

  end
  else
    pdesconto.Visible := FALSE;

  IF ( COMBO_RELATORIO.ItemIndex = 1 ) OR ( COMBO_RELATORIO.ItemIndex = 3 )  OR ( COMBO_RELATORIO.ItemIndex = 4 ) THEN
  BEGIN
    COMBO_INVENTARIO.enabled := TRUE;
  END
  ELSE
  BEGIN
    COMBO_INVENTARIO.enabled := FALSE;
  END;

  IF ( COMBO_RELATORIO.ItemIndex = 2 ) or ( COMBO_RELATORIO.ItemIndex = 0 ) THEN
  BEGIN
    combo_cst.enabled := TRUE;
  END
  ELSE
  BEGIN
    combo_cst.enabled := FALSE;
  END;

  IF ( COMBO_RELATORIO.ItemIndex = 20 ) or ( COMBO_RELATORIO.ItemIndex = 21 )  or ( COMBO_RELATORIO.ItemIndex = 22 ) or ( COMBO_RELATORIO.ItemIndex = 11 ) or ( COMBO_RELATORIO.ItemIndex = 17 )THEN
  BEGIN
    grem.visible  := TRUE;
    grem.Enabled := true;
    IF ( COMBO_RELATORIO.ItemIndex = 21 )  or ( COMBO_RELATORIO.ItemIndex = 22 ) THEN
      begin
        combo_cst.enabled := True;
        combo_grupo.Enabled := False;
        combo_fornecedor.Enabled := False;
        combo_marca.Enabled := False;
      end
    else
      begin
        combo_cst.enabled := False;
        combo_grupo.Enabled := True;
        combo_fornecedor.Enabled := True;
        combo_marca.Enabled := True;
      end;
  END
  ELSE
  BEGIN
    grem.visible := false;
    combo_grupo.Enabled := True;
    combo_fornecedor.Enabled := True;
    combo_marca.Enabled := True;
  END;

  IF (COMBO_RELATORIO.Text = 'POSIÇÃO DE ESTOQUE') or
     (combo_relatorio.text = 'RELAÇÃO COM PREÇOS (VENDA/SUGERIDO/LUCRO 0)') or
     (combo_relatorio.text = 'SUGESTÃO DE COMPRAS')
  then
  begin
    grem.visible  := TRUE;
    grem.Enabled := true;
  end;

  IF ( COMBO_RELATORIO.Text = 'RESUMO FISCAL') THEN
  BEGIN
    grem.visible  := TRUE;
    grem.Enabled := true;

    ltext_remarcado.Visible := TRUE;
    ltext_remarcado.Top := 293;
    ltext_remarcado.Caption := 'Resumo Fiscal:';
  END
  else
    begin
    ltext_remarcado.Visible := false;
    end;

  IF ( COMBO_RELATORIO.Text = 'REGISTRO DE CONTROLE DA PRODUÇÃO E DO ESTOQUE') THEN
    combo_produto.enabled := true
  ELSE
    combo_produto.enabled := false;

end;

procedure Tfrmlista_produto2.qrprodutoCalcFields(DataSet: TDataSet);
begin
 IF COMBO_RELATORIO.Text ='INVENTÁRIO DE ESTOQUE ATUAL' THEN
 BEGIN
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE CUSTO' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE VENDA' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precovenda').asfloat;

  QRPRODUTO.FIELDBYNAME('TOTAL').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUE_atual').ASFLOAT *
  QRPRODUTO.FIELDBYNAME('PREco').ASFLOAT ;

 END
 ELSE IF COMBO_RELATORIO.Text ='INVENTÁRIO DE ESTOQUE ANTERIOR' THEN
 BEGIN
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE CUSTO' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('CUSTO_INVENTARIO').asfloat;
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE VENDA' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precovenda').asfloat;

  QRPRODUTO.FIELDBYNAME('TOTAL').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUE_INVENTARIO').ASFLOAT *
  QRPRODUTO.FIELDBYNAME('PREco').ASFLOAT ;

 END
 ELSE IF COMBO_RELATORIO.Text ='LIVRO REGISTRO DE INVENTARIO - CONTABIL' THEN
 BEGIN
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE CUSTO' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('CUSTO_INVENTARIO').asfloat;
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE VENDA' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precovenda').asfloat;

  QRPRODUTO.FIELDBYNAME('TOTAL').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUE_INVENTARIO').ASFLOAT *
  QRPRODUTO.FIELDBYNAME('PREco').ASFLOAT ;

 END
 ELSE IF COMBO_RELATORIO.Text ='INVENTÁRIO DE ESTOQUE ANTERIOR POR CST' THEN
 BEGIN
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE CUSTO' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('CUSTO_INVENTARIO').asfloat;
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE VENDA' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precovenda').asfloat;

  QRPRODUTO.FIELDBYNAME('TOTAL').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUE_INVENTARIO').ASFLOAT *
  QRPRODUTO.FIELDBYNAME('PREco').ASFLOAT ;

 END
 ELSE IF COMBO_RELATORIO.Text ='RELAÇÃO DE PRODUTOS POR ALÍQUOTA' THEN
 BEGIN
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE CUSTO' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('CUSTO_INVENTARIO').asfloat;
  IF COMBO_INVENTARIO.TEXT = 'PREÇO DE VENDA' THEN qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('precovenda').asfloat;

  QRPRODUTO.FIELDBYNAME('TOTAL').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUE_atual').ASFLOAT *
  QRPRODUTO.FIELDBYNAME('PREco').ASFLOAT ;

 END
 ELSE IF COMBO_RELATORIO.Text ='SUGESTÃO DE COMPRAS' THEN
 BEGIN

  QUERY.close;
  QUERY.sql.clear;
  QUERY.sql.add('select sum(qtde) vendas from c000032');
  QUERY.sql.add('where codproduto = '''+ qrprodutoCODIGO.AsString+'''');
  QUERY.sql.add('and movimento = ''2''');
  QUERY.sql.add('and data >= :data_ini and data <= :data_fim');
  QUERY.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
  QUERY.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
  QUERY.open;
  if QUERY.RecordCount > 0 then
    QRPRODUTO.FIELDBYNAME('vendas').AsFloat := QUERY.FieldByName('vendas').AsFloat
  else
    QRPRODUTO.FIELDBYNAME('vendas').AsFloat := 0;

  QRPRODUTO.FIELDBYNAME('SUGESTAO').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('VENDAS').ASFLOAT -
  QRPRODUTO.FIELDBYNAME('ESTOQUE_atual').ASFLOAT;

  bar.IncPartsByOne;

 END

 ELSE IF COMBO_RELATORIO.Text ='TABELA DE PREÇOS - A PRAZO' THEN
 BEGIN

  FRMMODULO.qrconfig.OPEN;

  qrproduto.fieldbyname('preco').asfloat := qrproduto.fieldbyname('PRECOVENDA').asfloat-
                                            (qrproduto.fieldbyname('PRECOVENDA').asfloat*frmmodulo.qrconfigDESCONTO_AVISTA.AsFloat/100);

 END
 ELSE IF COMBO_RELATORIO.Text ='RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO' THEN
 BEGIN

  QRPRODUTO.FIELDBYNAME('REPOSICAO').ASFLOAT :=
  QRPRODUTO.FIELDBYNAME('ESTOQUEMINIMO').ASFLOAT -
  QRPRODUTO.FIELDBYNAME('ESTOQUE_atual').ASFLOAT ;

 END;

  QRPRODUTO.FIELDBYNAME('NOME_ALIQUOTA').ASSTRING := QRPRODUTO.FIELDBYNAME('CST').ASSTRING+FORMATFLOAT('##0.00%',QRPRODUTO.FIELDBYNAME('ALIQUOTA').ASFLOAT);


end;

procedure Tfrmlista_produto2.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - SINTÉTICA' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000025.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = '  TABELA DE PREÇOS - A PRAZO' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000128.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ATUAL' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000026.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000098.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'INVENTÁRIO DE ESTOQUE ANTERIOR POR CST' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000103.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM GRADE' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000027.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - COM SERIAIS' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000028.fr3');
    fxproduto.designreport;
  end;
  if combo_relatorio.Text = 'ETIQUETAS' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000076.fr3');
    fxproduto.DESIGNREPORT;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS DE BALANÇA' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000075.fr3');
    fxproduto.DESIGNREPORT;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR FORNECEDOR' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000029.fr3');
    fxproduto.DESIGNREPORT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - ESTOQUE MINIMO' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000101.fr3');
    fxproduto.DESIGNREPORT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE PRODUTOS POR ALÍQUOTA' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000102.fr3');
    fxproduto.DESIGNREPORT;
  end;


  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR FORNECEDOR' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000030.fr3');
    fxproduto.DESIGNREPORT;
  end;

  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR MARCA' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000017.fr3');
    fxproduto.DESIGNREPORT;
  end;

  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR MARCA' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000016.fr3');
    fxproduto.DESIGNREPORT;
  end;
  if combo_relatorio.Text = 'TABELA DE PREÇOS - SINTÉTICA' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000031.fr3');
    fxproduto.DESIGNREPORT;
  end;

  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE PRODUTOS COM MOVIMENTAÇÃO' THEN
  BEGIN
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000020.fr3');
    fxproduto.DESIGNREPORT;
  END;
  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO DE COMPRAS' THEN
  BEGIN
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000020.fr3');
    fxproduto.DESIGNREPORT;
  END;
  if combo_relatorio.Text = 'RELAÇÃO DE ESTOQUE - POR GRUPO/SUBGRUPO' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000018.fr3');
    fxproduto.DESIGNREPORT;
  end;
  if combo_relatorio.Text = 'TABELA DE PREÇOS - POR GRUPO/SUBGRUPO' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000019.fr3');
    fxproduto.DESIGNREPORT;
  end;

    if combo_relatorio.Text = 'PRODUTOS REMARCADOS' then
  begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000025.fr3');
    fxproduto.designreport;
  end;
  IF COMBO_RELATORIO.TEXT = 'RELAÇÃO COM PREÇOS (VENDA/SUGERIDO/LUCRO 0)' THEN
  BEGIN
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000190.fr3');
    fxproduto.designreport;
  END;

  IF COMBO_RELATORIO.TEXT = 'RESUMO FISCAL' THEN
  BEGIN
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000143.fr3');
    fxproduto.designreport;
  END;

  if combo_relatorio.Text = 'REGISTRO DE CONTROLE DE PRODUÇÃO E DO ESTOQUE' then
    begin
      fXproduto.LoadFromFile('\DATASAC\server\rel\f000196.fr3');
      fxproduto.designreport;
    end;

end;

procedure Tfrmlista_produto2.QRMOVIMENTOCalcFields(DataSet: TDataSet);
begin
  CASE QRMOVIMENTO.FieldByName('MOVIMENTO').ASINTEGER OF
  0:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';
  1:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'VENDA';
  3:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';
  4:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';
  5:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';
  8:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';
 10:QRMOVIMENTO.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';
  END;
end;

procedure Tfrmlista_produto2.ldataini_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmlista_produto2.ldatafim_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bimprimir.setfocus;

end;

procedure Tfrmlista_produto2.ldatafim_remarcadoExit(Sender: TObject);
begin
  bimprimir.SetFocus;
end;

procedure Tfrmlista_produto2.combo_cstChange(Sender: TObject);
begin
  IF combo_cst.Text = 'SELECIONAR' THEN
  BEGIN

    frmXloc_cst := tfrmXloc_cst.create(self);
    frmXloc_cst.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_cst.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_cst.ItemIndex := combo_cst.Items.Count - 1;
    end
    else
      combo_cst.ItemIndex := 0;
  END;

end;

procedure Tfrmlista_produto2.query_pis_entradaCalcFields(
  DataSet: TDataSet);
begin
  query_pis_entrada.FieldByName('pis').AsFloat :=
    ( query_pis_entrada.FieldByName('unitario').AsFloat*query_pis_entrada.FieldByName('qtde').AsFloat)*vpis/100;
    //( query_pis_entrada.FieldByName('precocusto').AsFloat*query_pis_entrada.FieldByName('qtde').AsFloat)*vpis/100;
  query_pis_entrada.FieldByName('cofins').AsFloat :=
    ( query_pis_entrada.FieldByName('unitario').AsFloat*query_pis_entrada.FieldByName('qtde').AsFloat)*vcofins/100;
    //( query_pis_entrada.FieldByName('precocusto').AsFloat*query_pis_entrada.FieldByName('qtde').AsFloat)*vcofins/100;

end;

procedure Tfrmlista_produto2.query_pis_saidaCalcFields(DataSet: TDataSet);
begin
  query_pis_saida.FieldByName('pis').AsFloat :=
    query_pis_saida.FieldByName('total').AsFloat*vpis/100;
  query_pis_saida.FieldByName('cofins').AsFloat :=
    query_pis_saida.FieldByName('total').AsFloat*vcofins/100;
end;

procedure Tfrmlista_produto2.bdescontoClick(Sender: TObject);
begin
  vdesconto := edesconto.Value/100;
  pdesconto.Visible := false;
  bimprimir.SetFocus;
end;

procedure Tfrmlista_produto2.query_pis_entrada_resumoCalcFields(
  DataSet: TDataSet);
begin
  query_pis_entrada_resumo.FieldByName('pis').AsFloat := query_pis_entrada_resumo.FieldByName('TOTAL').AsFloat*vpis/100;
  query_pis_entrada_resumo.FieldByName('cofins').AsFloat := query_pis_entrada_resumo.FieldByName('TOTAL').AsFloat*vcofins/100;

end;

procedure Tfrmlista_produto2.query_pis_saida_resumoCalcFields(
  DataSet: TDataSet);
begin
  query_pis_saida_resumo.FieldByName('pis').AsFloat := query_pis_saida_resumo.FieldByName('TOTAL').AsFloat*vpis/100;
  query_pis_saida_resumo.FieldByName('cofins').AsFloat := query_pis_saida_resumo.FieldByName('TOTAL').AsFloat*vcofins/100;

end;

procedure Tfrmlista_produto2.qricmsCalcFields(DataSet: TDataSet);
begin
  qricmsimposto.AsFloat := qricmstotal.AsFloat * qricmsaliquota.AsFloat / 100;
end;

procedure Tfrmlista_produto2.qricms1CalcFields(DataSet: TDataSet);
begin
  qricms.FieldByName('imposto').AsFloat := qricms.FieldByName('total').AsFloat*
                                           qricms.FieldByName('aliquota').AsFloat/100;

end;

procedure Tfrmlista_produto2.combo_produtoChange(Sender: TObject);
begin
  IF combo_produto .Text = 'SELECIONAR' THEN
  BEGIN

    frmXloc_produto := tfrmXloc_produto.create(self);
    frmXloc_produto.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_produto.Items.Add(resultado_pesquisa1+' '+resultado_pesquisa2);
      combo_produto.ItemIndex := combo_produto.Items.Count - 1;
    end
    else
      combo_produto.ItemIndex := 0;
  END;

end;

end.
