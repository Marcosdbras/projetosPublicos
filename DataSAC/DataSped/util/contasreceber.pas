unit contasreceber;

interface                                                                                                                            

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, ExtCtrls, Collection, TFlatPanelUnit,
  StdCtrls, Mask, ToolEdit, CurrEdit, wwdblook, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, Buttons, ImgList, Menus, DBCtrls, RxMemDS,
  RzEdit, RzBtnEdt, PageView, AdvGlowButton, frxClass, frxDBSet, frxDesgn,
  CRBatchMove, MemDS, VirtualTable, DBGrids, Wwdatsrc, DBAccess, IBC,
  frxRich;

type
  Tfrmcontasreceber = class(TForm)
    dscontasreceber: TDataSource;
    ImageList1: TImageList;
    PopupMenu1: TPopupMenu;
    Receber1: TMenuItem;
    Liquidar1: TMenuItem;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Extornar1: TMenuItem;
    Recebimentos1: TMenuItem;
    Relatrios1: TMenuItem;
    Produtos1: TMenuItem;
    Filtro1: TMenuItem;
    Renegociar1: TMenuItem;
    Funes1: TMenuItem;
    Fechar1: TMenuItem;
    Panel1: TPanel;
    Label4: TLabel;
    Label17: TLabel;
    bfiltrar: TButton;
    Edit3: TEdit;
    edit1: TRzButtonEdit;
    edit2: TRzEdit;
    Label18: TLabel;
    Label23: TLabel;
    combo_situacao: TComboBox;
    Bevel1: TBevel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    DBEdit1: TDBEdit;
    FlatPanel3: TFlatPanel;
    Label13: TLabel;
    DBText1: TDBText;
    pselecao: TFlatPanel;
    Label15: TLabel;
    rselecao: TRxCalcEdit;
    FlatPanel5: TFlatPanel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    FlatPanel2: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    rvalor: TRxCalcEdit;
    rjuro: TRxCalcEdit;
    rtotal: TRxCalcEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Panel2: TPanel;
    Bevel6: TBevel;
    button1: TAdvGlowButton;
    breceber: TAdvGlowButton;
    bliquidar: TAdvGlowButton;
    bextornar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    brelatorios: TAdvGlowButton;
    dscontasreceber_pgto: TDataSource;
    Panel3: TPanel;
    Bevel11: TBevel;
    Label29: TLabel;
    DBText11: TDBText;
    Label30: TLabel;
    DBText12: TDBText;
    Label31: TLabel;
    DBText13: TDBText;
    Label32: TLabel;
    DBText15: TDBText;
    Label33: TLabel;
    DBText16: TDBText;
    Panel4: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel5: TPanel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    DBText6: TDBText;
    DBText7: TDBText;
    DBText8: TDBText;
    DBText9: TDBText;
    DBText10: TDBText;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox2: TDBCheckBox;
    Label34: TLabel;
    Bevel12: TBevel;
    ptampa_recebimento: TFlatPanel;
    Panel6: TPanel;
    Label35: TLabel;
    DBText14: TDBText;
    Label36: TLabel;
    DBText17: TDBText;
    Label37: TLabel;
    DBText18: TDBText;
    Label38: TLabel;
    DBText19: TDBText;
    Label39: TLabel;
    DBText20: TDBText;
    Bevel13: TBevel;
    Panel7: TPanel;
    Bevel14: TBevel;
    wwDBGrid3: TwwDBGrid;
    dsproduto_mov: TDataSource;
    dsservico_mov: TDataSource;
    wwDBGrid4: TwwDBGrid;
    Panel8: TPanel;
    Bevel15: TBevel;
    Bevel16: TBevel;
    plegenda: THeaderView;
    HeaderView3: THeaderView;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label5: TLabel;
    ltaxa: TLabel;
    lmulta: TLabel;
    lcarencia: TLabel;
    Label16: TLabel;
    Image2: TImage;
    Label7: TLabel;
    Label6: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    bfechar_legenda: TAdvGlowButton;
    ptampa_produto: TFlatPanel;
    Label40: TLabel;
    RelaodeContas1: TMenuItem;
    Label41: TLabel;
    rpago: TRxCalcEdit;
    Label42: TLabel;
    roriginal: TRxCalcEdit;
    Bevel17: TBevel;
    fxduplicata: TfrxReport;
    fxdesenhar: TfrxDesigner;
    fsduplicata: TfrxDBDataset;
    qrduplicata: TRxMemoryData;
    qrduplicataemitente_fantasia: TStringField;
    qrduplicataemitente_razao: TStringField;
    qrduplicataemitente_slogan: TStringField;
    qrduplicataemitente_telefone: TStringField;
    qrduplicataemitente_endereco: TStringField;
    qrduplicataemitente_cnpj: TStringField;
    qrduplicataemitente_ie: TStringField;
    qrduplicatadata_emissao: TStringField;
    qrduplicatafatura_numero: TStringField;
    qrduplicatafatura_valor: TStringField;
    qrduplicataduplicata_numero: TStringField;
    qrduplicataduplicata_valor: TStringField;
    qrduplicatadata_vencimento: TStringField;
    qrduplicatadesconto: TStringField;
    qrduplicatadesconto_ate: TStringField;
    qrduplicatacondicoes_especiais: TStringField;
    qrduplicatasacado_nome: TStringField;
    qrduplicatasacado_endereco: TStringField;
    qrduplicatasacado_municipio: TStringField;
    qrduplicatasacado_uf: TStringField;
    qrduplicatasacado_cep: TStringField;
    qrduplicatasacado_praca: TStringField;
    qrduplicatasacado_cnpj: TStringField;
    qrduplicatasacado_ie: TStringField;
    qrduplicatanotas_ficais: TStringField;
    qrduplicataextenso: TStringField;
    qrcr_recibo1: TRxMemoryData;
    qrcr_recibo1FILTRO: TIntegerField;
    qrcr_recibo1situacao2: TIntegerField;
    qrcr_recibo1DATA_EMISSAO: TDateTimeField;
    qrcr_recibo1CODIGO: TStringField;
    qrcr_recibo1DATA_VENCIMENTO: TDateTimeField;
    qrcr_recibo1DOCUMENTO: TStringField;
    qrcr_recibo1VALOR_ORIGINAL: TFloatField;
    qrcr_recibo1VALOR_PAGO: TFloatField;
    qrcr_recibo1VALOR_ATUAL: TFloatField;
    qrcr_recibo1juros: TFloatField;
    qrcr_recibo1DIAS: TIntegerField;
    qrcr_recibo1RESTANTE: TFloatField;
    qrcr_recibo1CODCEDENTE: TStringField;
    qrcr_recibo1TIPO: TStringField;
    qrcr_recibo1VALOR_JUROS: TFloatField;
    qrcr_recibo1DATA_PAGAMENTO: TDateTimeField;
    qrcr_recibo1CODVENDEDOR: TStringField;
    qrcr_recibo1CODCAIXA: TStringField;
    qrcr_recibo1CODCLIENTE: TStringField;
    qrcr_recibo1VALOR_DESCONTO: TFloatField;
    qrcr_recibo1SITUACAO: TIntegerField;
    qrcr_recibo1CODVENDA: TStringField;
    qrcr_recibo1NOSSONUMERO: TStringField;
    qrcr_recibo1CODREGIAO: TStringField;
    qrcr_recibo1banco: TStringField;
    qrcr_recibo1agencia: TStringField;
    qrcr_recibo1conta: TStringField;
    Panel9: TPanel;
    Bevel18: TBevel;
    Label43: TLabel;
    Label44: TLabel;
    lendereco: TLabel;
    Label45: TLabel;
    lcpf: TLabel;
    Label47: TLabel;
    llimite: TLabel;
    CRBatchMove1: TCRBatchMove;
    QRCr: TVirtualTable;
    DataSource1: TDataSource;
    Label46: TLabel;
    DBText21: TDBText;
    rcredito: TRxCalcEdit;
    Label48: TLabel;
    ImprimirCheque1: TMenuItem;
    Label49: TLabel;
    rconta: TRxCalcEdit;
    qrcontasreceber: TIBCQuery;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberCODCEDENTE: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasreceberbanco: TStringField;
    qrcontasreceberagencia: TStringField;
    qrcontasreceberconta: TStringField;
    qrcontasrecebervalor_anterior: TFloatField;
    qrcontasreceberVALOR_ATUAL_ANTERIOR: TFloatField;
    qrconfig_cobrebem: TIBCQuery;
    qrcontacorrente: TIBCQuery;
    qrbanco: TIBCQuery;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrentebanco: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrconfig_cobrebemDESCRICAO: TStringField;
    qrconfig_cobrebembanco: TStringField;
    qrconfig_cobrebemagencia: TStringField;
    qrconfig_cobrebemCODCONTA: TStringField;
    qrconfig_cobrebemCODIGO: TStringField;
    qrconfig_cobrebemCODIGO_CEDENTE: TStringField;
    qrconfig_cobrebemARQUIVO_CONFIGURACAO: TStringField;
    qrconfig_cobrebemARQUIVO_LOGOMARCA: TStringField;
    qrconfig_cobrebemTIPO_BOLETO: TStringField;
    qrconfig_cobrebemNOSSONUMERO_INICIO: TStringField;
    qrconfig_cobrebemNOSSONUMERO_FIM: TStringField;
    qrconfig_cobrebemNOSSONUMERO_PROXIMO: TStringField;
    qrconfig_cobrebemVARIACAO_MODALIDADE: TStringField;
    qrconfig_cobrebemMARGEM_SUPERIOR: TStringField;
    qrconfig_cobrebemREMESSA_UTILIZA: TIntegerField;
    qrconfig_cobrebemRETORNO_UTILIZA: TIntegerField;
    qrconfig_cobrebemREMESSA_LOCAL: TStringField;
    qrconfig_cobrebemRETORNO_LOCAL: TStringField;
    qrconfig_cobrebemINSTRUCOES_1: TStringField;
    qrconfig_cobrebemINSTRUCOES_2: TStringField;
    qrconfig_cobrebemINSTRUCOES_3: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_1: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_2: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_3: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_4: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_5: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_6: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_7: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_8: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_TIPO: TIntegerField;
    qrconfig_cobrebemcodigo_banco: TStringField;
    qrconfig_cobrebemtitular: TStringField;
    qrconfig_cobrebemLIN_VENCIMENTO: TIntegerField;
    qrconfig_cobrebemCOL_VENCIMENTO: TIntegerField;
    qrconfig_cobrebemLIN_DATADOC: TIntegerField;
    qrconfig_cobrebemCOL_DATADOC: TIntegerField;
    qrconfig_cobrebemLIN_NUMERO: TIntegerField;
    qrconfig_cobrebemCOL_NUMERO: TIntegerField;
    qrconfig_cobrebemLIN_ESPDOC: TIntegerField;
    qrconfig_cobrebemCOL_ESPDOC: TIntegerField;
    qrconfig_cobrebemLIN_ACEITE: TIntegerField;
    qrconfig_cobrebemCOL_ACEITE: TIntegerField;
    qrconfig_cobrebemLIN_ESP: TIntegerField;
    qrconfig_cobrebemCOL_ESP: TIntegerField;
    qrconfig_cobrebemLIN_QTDE: TIntegerField;
    qrconfig_cobrebemCOL_QTDE: TIntegerField;
    qrconfig_cobrebemLIN_VALOR: TIntegerField;
    qrconfig_cobrebemCOL_VALOR: TIntegerField;
    qrconfig_cobrebemLIN_VALORDOC: TIntegerField;
    qrconfig_cobrebemCOL_VALORDOC: TIntegerField;
    qrconfig_cobrebemLIN_DESCONTO: TIntegerField;
    qrconfig_cobrebemCOL_DESCONTO: TIntegerField;
    qrconfig_cobrebemLIN_OUTRAS: TIntegerField;
    qrconfig_cobrebemCOL_OUTRAS: TIntegerField;
    qrconfig_cobrebemLIN_MORA: TIntegerField;
    qrconfig_cobrebemCOL_MORA: TIntegerField;
    qrconfig_cobrebemLIN_OUTROS: TIntegerField;
    qrconfig_cobrebemCOL_OUTROS: TIntegerField;
    qrconfig_cobrebemLIN_COBRADO: TIntegerField;
    qrconfig_cobrebemCOL_COBRADO: TIntegerField;
    qrconfig_cobrebemLIN_CEDENTE: TIntegerField;
    qrconfig_cobrebemCOL_CEDENTE: TIntegerField;
    qrconfig_cobrebemLIN_CEDENTEENDER: TIntegerField;
    qrconfig_cobrebemCOL_CEDENTEENDER: TIntegerField;
    qrconfig_cobrebemCOL_INSTRUCOES: TIntegerField;
    qrconfig_cobrebemLIN_INST1: TIntegerField;
    qrconfig_cobrebemLIN_INST2: TIntegerField;
    qrconfig_cobrebemLIN_INST3: TIntegerField;
    qrconfig_cobrebemLIN_INST4: TIntegerField;
    qrconfig_cobrebemLIN_INST5: TIntegerField;
    qrconfig_cobrebemLIN_INST6: TIntegerField;
    qrconfig_cobrebemTIPO: TStringField;
    qrconfig_cobrebemREMESSA_SEQUENCIA: TIntegerField;
    qrconfig_cobrebemREMESSA_LAYOUT: TStringField;
    qrconfig_cobrebemRETORNO_LAYOUT: TStringField;
    qrconfig_cobrebemENTRE_LINHAS: TIntegerField;
    qrconfig_cobrebemACERTO_ENTRE_LINHAS: TIntegerField;
    qrconfig_cobrebemCODIGO_CARTEIRA: TStringField;
    qrconfig_cobrebemFORMA_CADASTRAMENTO: TStringField;
    zQuery1: TIBCQuery;
    query: TIBCQuery;
    qrvenda: TIBCQuery;
    qrvendaCODIGO: TStringField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaTOTAL: TFloatField;
    qrcliente: TIBCQuery;
    qrservico: TIBCQuery;
    qrservicoCODSERVICO: TStringField;
    qrservicoSERVICO: TStringField;
    qrservicoVALOR: TFloatField;
    qrservicoTECNICO: TStringField;
    qrservicoCOMPLEMENTO: TStringField;
    qrservicoCODTECNICO: TStringField;
    qrservicoDATA: TDateTimeField;
    qrservicoCODOS: TStringField;
    qrservicoCODCLIENTE: TStringField;
    qrfunci: TIBCQuery;
    qrcontasreceber_pgto: TIBCQuery;
    qrcontasreceber_pgtoDATA: TDateTimeField;
    qrcontasreceber_pgtoVALOR_PAGO: TFloatField;
    qrcontasreceber_pgtoCODCONTA: TStringField;
    qrcontasreceber_pgtoVALOR_PARCELA: TFloatField;
    qrcontasreceber_pgtoVALOR_JUROS: TFloatField;
    qrcontasreceber_pgtoVALOR_DESCONTO: TFloatField;
    qrcontasreceber_pgtoDINHEIRO: TFloatField;
    qrcontasreceber_pgtoCHEQUEAV: TFloatField;
    qrcontasreceber_pgtoCHEQUEAP: TFloatField;
    qrcontasreceber_pgtoCARTAO: TFloatField;
    qrcontasreceber_pgtoBOLETO: TFloatField;
    qrcontasreceber_pgtoTROCO: TFloatField;
    qrcontasreceber_pgtoCREDITO: TFloatField;
    qrcontasreceber_pgtoCODCLIENTE: TStringField;
    qrcontasreceber_pgtoCAIXA_BANCO: TIntegerField;
    qrproduto_mov: TIBCQuery;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movPRODUTO: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movCST: TStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    frxRichObject1: TfrxRichObject;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure bfechar_legendaClick(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure bfecharClick(Sender: TObject);
    procedure breceberClick(Sender: TObject);
    procedure bliquidarClick(Sender: TObject);
    procedure bextornarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure rselecaoChange(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure Edit1Enter(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBText2Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure brelatoriosClick(Sender: TObject);
    procedure edit1ButtonClick(Sender: TObject);
    procedure button1Click(Sender: TObject);
    procedure Recebimentos1Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure combo_situacaoChange(Sender: TObject);
    procedure RelaodeContas1Click(Sender: TObject);
    procedure Filtro1Click(Sender: TObject);
    procedure edit2Enter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber: Tfrmcontasreceber;
  juro_carencia : integer;
  juro_taxa, juro_multa, total_original, total_juros, total_credito : real;
  numero_venda, codigo_vendedor : string;
  tipo_boleto : integer;
  nossonumero_ok : boolean;
  marcados : boolean;

  PRESTACOES : STRING;
  numero_terminal : string;


  


implementation

uses modulo, funcoes, principal, contasreceber_boleto_achado, xloc_cliente,
  contasreceber_pgto, senha_supervisor;

{$R *.dfm}

procedure Tfrmcontasreceber.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  qrcontasreceber.onCalcFields := nil;

  qrcontasreceber.close;


  qrcr.close;
  qrduplicata.close;


  qrcr := nil;
  qrduplicata := nil;

  frmmodulo.qrcontasreceber.close;

  FRMMODULO.QRCLIENTE.CLOSE;
  FRMMOdULO.QRCLIENTE.SQL.CLEAR;
  FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 ORDER BY NOME');

end;

procedure Tfrmcontasreceber.FormShow(Sender: TObject);
begin

  frmmodulo.qrconfig.open;
  numero_terminal := sECF_Caixa;
  if numero_terminal = '' then
    begin
      application.messagebox('Não foi configurado o número do terminal! Esta venda será finalizada!','Erro',mb_ok+mb_iconerror);
      close;
      exit;
    end;

  ptampa_recebimento.top := 0;
  ptampa_recebimento.Left := 0;

  ptampa_PRODUTO.top := 0;
  ptampa_PRODUTO.Left := 0;

  nossonumero_ok   := false;
  pselecao.visible := false;
  rselecao.Value   := 0;
  rconta.value     := 0;
  total_juros      := 0;
  total_original   := 0;
  total_credito    := 0;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;

  if frmmodulo.qrconfig.FieldByName('CONTASRECEBER_JUROS_DINHEIRO').AsInteger = 1 then
    juro_taxa := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_VALORJUROS').asfloat
  else
    juro_taxa := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;

  juro_multa    := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select * from c000049 where codcliente = ''nenhum''');
  qrcontasreceber.Open;

  QRCr.IndexFieldNames := 'data_vencimento,codigo';
  qrcr.open;
  while qrcr.RecordCount > 0 do qrcr.delete;
  qrcr.refresh;

  edit1.setfocus;
end;

procedure Tfrmcontasreceber.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin


  valor := QRCONTASRECEBER.fieldbyname('valor_ATUAL').asfloat;


  if QRCONTASRECEBER.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 2;
  if QRCONTASRECEBER.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if QRCONTASRECEBER.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 4;
    if QRCONTASRECEBER.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 3;
    if QRCONTASRECEBER.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASRECEBER.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
  QRCONTASRECEBER.FieldByName('restante').asfloat := 0;

  if QRCONTASRECEBER.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if QRCONTASRECEBER.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if QRCONTASRECEBER.FieldByName('data_pagamento').asfloat > QRCONTASRECEBER.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - QRCONTASRECEBER.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - QRCONTASRECEBER.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - QRCONTASRECEBER.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        if qrcontasreceber.fieldbyname('valor_pago').asfloat = 0 then
        begin
          IF (DIAS - JURO_CARENCIA) > 0 THEN
          BEGIN
            if frmmodulo.qrconfig.FieldByName('CONTASRECEBER_JUROS_DINHEIRO').AsInteger = 1 then
              juro := ( juro_taxa * DIAS )
            else
              juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
            valor := valor + juro + multa;
          END;
        end
        else
        begin
          IF DIAS > 0 THEN
          BEGIN
            if frmmodulo.qrconfig.FieldByName('CONTASRECEBER_JUROS_DINHEIRO').AsInteger = 1 then
              juro := ( juro_taxa * DIAS )
            else
              juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
            valor := valor + juro + multa;
          END;

        end;
      end;
      QRCONTASRECEBER.FieldByName('dias').AsInteger := dias;

      if qrcontasreceber.fieldbyname('valor_pago').asfloat = 0 then
      begin

        if (dias - juro_carencia) > 0 then
        begin
          QRCONTASRECEBER.FieldByName('dias').AsInteger := dias;
          QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
          QRCONTASRECEBER.fieldbyname('juros').asfloat := juro + multa;
        end
        else
        begin
          QRCONTASRECEBER.fieldbyname('restante').asfloat := QRCONTASRECEBER.fieldbyname('valor_atual').asfloat;
        end;
      end
      else
      begin
        if dias > 0 then
        begin
          QRCONTASRECEBER.FieldByName('dias').AsInteger := dias;
          QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
          QRCONTASRECEBER.fieldbyname('juros').asfloat := juro + multa;
        end
        else
        begin
          QRCONTASRECEBER.fieldbyname('restante').asfloat := QRCONTASRECEBER.fieldbyname('valor_atual').asfloat;
        end;

      end;

    end
    else
    begin
      QRCONTASRECEBER.FieldByName('dias').AsInteger := 0;
      QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
      QRCONTASRECEBER.fieldbyname('juros').asfloat := 0;
      QRCONTASRECEBER.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    QRCONTASRECEBER.FieldByName('dias').AsInteger := 0;
    QRCONTASRECEBER.fieldbyname('restante').asfloat := valor;
    QRCONTASRECEBER.fieldbyname('juros').asfloat := 0;
  end;


end;

procedure Tfrmcontasreceber.bfechar_legendaClick(Sender: TObject);
begin
  plegenda.visible := false;
end;

procedure Tfrmcontasreceber.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if afieldname = 'situacao2' then
  begin
    button1click(Frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.bfecharClick(Sender: TObject);
begin
  if bfechar.caption = 'ESC | Fechar' then close;
  if bfechar.Caption  = 'ESC | Retornar' then
  begin
    bfechar.caption := 'ESC | Fechar';
    edit1.setfocus;
  end;
end;

procedure Tfrmcontasreceber.breceberClick(Sender: TObject);
begin




  if rselecao.value = 0 then wwDBGrid1.OnDblClick(frmcontasreceber);


  frmmodulo.qrcaixa_operador.open;
  frmmodulo.qrcaixa_operador.Locate('codigo',Zerar(inttostr(icodigo_Usuario),6),[loCaseInsensitive]);

      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        frmcontasreceber_pgto := tfrmcontasreceber_pgto.create(self);
        with frmcontasreceber_pgto do
        begin
          rliquido.Value := total_original;
          rjuros.value   := total_juros;
          rcredito.value := total_credito;
          rtotal.value   := rselecao.Value;
        end;
        frmcontasreceber_pgto.showmodal;
        bfiltrarclick(frmcontasreceber);
        qrcontasreceber.IndexFieldNames := 'data_vencimento,CODIGO';
        frmcontasreceber.qrcontasreceber.First;
      END
      ELSE
      BEGIN
      APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
    END;
end;

procedure Tfrmcontasreceber.bliquidarClick(Sender: TObject);
begin
  frmmodulo.qrcliente.Open;
  qrcr.First;
  rselecao.Value := 0;
  rconta.value   := 0;
  total_original := 0;
  total_credito  := 0;
  total_juros    := 0;
  while not qrcr.Eof do
  begin
    qrcr.edit;
    qrcr.FieldByName('filtro').asinteger := 1;
    qrcr.post;
    rselecao.value := rselecao.value + qrcr.fieldbyname('restante').asfloat;
    rconta.value := rconta.value + 1;
    total_original := total_original + qrcr.fieldbyname('valor_atual').asfloat;

    if qrcr.fieldbyname('valor_atual').asfloat < 0 then
      total_credito  := total_credito  + qrcr.fieldbyname('juros').asfloat;
      
    total_juros    := total_juros    + qrcr.fieldbyname('juros').asfloat;
    if qrcr.fieldbyname('valor_atual').asfloat < 0 then
      total_credito  := total_credito  + qrcr.fieldbyname('valor_atual').asfloat*(-1);
    qrcr.next;
  end;

  breceber.OnClick(frmcontasreceber);  
end;

procedure Tfrmcontasreceber.bextornarClick(Sender: TObject);
var
  rec : integer;
begin
{
  if qrcr.RecordCount = 0 then
    begin
      application.messagebox('Não tem nenhuma conta selecionada!','Aviso',mb_ok+MB_ICONWARNING);
      exit;
    end;

  frmmodulo.qrcaixa_operador.Open;
  frmmodulo.qrcaixa_operador.Locate('codigo','000099',[loCaseInsensitive]);
  qrcontasreceber_pgto.close;
  qrcontasreceber_pgto.SQL.Clear;
  qrcontasreceber_pgto.SQL.Add('select * from c000050 where CODCONTA = '''+copy(qrcr.fieldbyname('codigo').asstring,1,9)+
                               ''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+
                               ''' and data = :datai');
  qrcontasreceber_pgto.Params.ParamByName('datai').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  qrcontasreceber_pgto.open;
  qrcontasreceber_pgto.first;

  QUERY.Close;
  QUERY.SQL.CLEAR;
  QUERY.SQL.ADD('SELECT sum(valor_pago) valor from c000050 where CODCONTA = '''+copy(qrcr.fieldbyname('codigo').asstring,1,9)+
                               ''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+
                               ''' and data = :datai');
  QUERY.Params.ParamByName('datai').asdatetime := frmmodulo.qrcaixa_operador.fieldbyname('data').asdatetime;
  QUERY.open;

  rec := qrcontasreceber_pgto.RecordCount;

  if  rec = 0 then
    begin
     application.messagebox('Esta conta não possue recebimentos nesta data!','Aviso',mb_ok+MB_ICONWARNING);
     exit;
    end;

  if frmPrincipal.autentica_caixa('Recebimento',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin


                 while qrcontasreceber_pgto.RecordCount <> 0 do
                 begin


                   if qrcontasreceber_pgto.FIELDBYNAME('CAIXA_BANCO').ASINTEGER = 1 then // caixa
                   begin
                     if qrcontasreceber_pgto.FieldByName('dinheiro').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('dinheiro').asfloat)*(-1);
                       frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat      := qrcontasreceber_pgto.FieldByName('dinheiro').asfloat;
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 9;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('chequeav').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('chequeav').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 10;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('chequeap').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('chequeap').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 11;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('cartao').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('cartao').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 12;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('boleto').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('boleto').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 15;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Desc.Recebto. Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('valor_juros').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_juros').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Juros Recebido Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                   end
                   else
                   begin
                     frmmodulo.qrcaixa_mov.open;
                     frmmodulo.qrcaixa_mov.Insert;
                     frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring     := frmprincipal.codifica('000044');
                     frmmodulo.qrcaixa_mov.fieldbyname('codcaixa').asstring   := frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
                     frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring:= frmmodulo.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
                     frmmodulo.qrcaixa_mov.fieldbyname('data').asstring       := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                     frmmodulo.qrcaixa_mov.fieldbyname('saida').asfloat       := 0;
                     frmmodulo.qrcaixa_mov.FieldByName('valor').asfloat       := (qrcontasreceber_pgto.fieldbyname('valor_pago').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                     frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER := 15; // BOLETO
                     frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring  := 'Extorno Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                     frmmodulo.qrcaixa_mov.post;




                     if qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_desconto').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 14;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Desc.Recebto. Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                     if qrcontasreceber_pgto.FieldByName('valor_juros').asfloat <> 0 then
                     begin
                       frmmodulo.qrcaixa_mov.OPEN;
                       frmmodulo.qrcaixa_mov.insert;
                       frmmodulo.qrcaixa_mov.FieldByName('codigo').asstring      := frmprincipal.codifica('000044');
                       frmmodulo.qrcaixa_mov.fieldbyname('codoperador').asstring := frmmodulo.qrcaixa_operador.fieldbyname('codigo').asstring;
                       frmmodulo.qrcaixa_mov.fieldbyname('data').asstring        := frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').ASSTRING;
                       frmmodulo.qrcaixa_mov.fieldbyname('valor').asfloat        := (qrcontasreceber_pgto.FieldByName('valor_juros').asfloat)*(-1);
                       frmmodulo.qrconfig.open;
                       frmmodulo.qrcaixa_mov.fieldbyname('codconta').asstring := frmmodulo.qrconfig.fieldbyname('PLANO_RECEBTO_CREDIARIO').asstring;

                       frmmodulo.qrcaixa_mov.fieldbyname('movimento').asINTEGER  := 13;
                       frmmodulo.qrcaixa_mov.fieldbyname('historico').asstring   := 'Extorno Juros Recebido Docto: '+frmcontasreceber.qrcr.fieldbyname('documento').asstring;
                       frmmodulo.qrcaixa_mov.post;
                     end;
                   end; // banco


                   qrcontasreceber.close;
                   qrcontasreceber.sql.clear;
                   qrcontasreceber.sql.add('select * from c000049 where codigo = '''+qrcr.fieldbyname('codigo').asstring+'''');
                   qrcontasreceber.open;

                   //showmessage(floattostr(qrcontasreceberVALOR_ATUAL_ANTERIOR.AsFloat));

                   qrcontasreceber.edit;
                   qrcontasreceber.FieldByName('valor_pago').asfloat :=
                   qrcontasreceber.FieldByName('valor_pago').asfloat - qrcontasreceber_pgto.FieldByName('valor_pago').asfloat; // QUERY.fieldbyname('valor').AsFloat;
                   qrcontasreceber.FieldByName('valor_atual').asfloat := qrcontasreceber.FieldByName('VALOR_ATUAL_ANTERIOR').asfloat;
                   //qrcontasreceber.FieldByName('valor_atual').asfloat - qrcontasreceber_pgto.FieldByName('valor_pago').asfloat; // QUERY.fieldbyname('valor').AsFloat;
                   qrcontasreceber.FieldByName('situacao').asinteger := 1;
                   qrcontasreceber.FieldByName('data_pagamento').asstring := '';
                   qrcontasreceber.post;
                   qrcontasreceber_pgto.Delete;
                 end;
                 qrcontasreceber.Refresh;

                 showmessage('Extorno feito com sucesso!');

                 bfiltrarClick(frmcontasreceber);
      END
      ELSE
      BEGIN
      APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
    END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
    end;


   }

end;

procedure Tfrmcontasreceber.wwDBGrid1Enter(Sender: TObject);
begin
  bfechar.Caption := 'ESC | Retornar';
end;

procedure Tfrmcontasreceber.wwDBGrid1Exit(Sender: TObject);
begin
    bfechar.Caption := 'ESC | Fechar';
end;

procedure Tfrmcontasreceber.wwDBGrid1DblClick(Sender: TObject);
begin
TRY
  if qrcr.FieldByName('situacao').asinteger = 1 then
  begin
    if qrcr.FieldByName('filtro').asstring = '1' then
    begin
      qrcr.Edit;
      qrcr.fieldbyname('filtro').AsString := '0';
      qrcr.Post;
      rselecao.value := rselecao.value - qrcr.fieldbyname('restante').asfloat;
      rconta.value := rconta.value - 1;
      total_original := total_original - qrcr.fieldbyname('valor_atual').asfloat;
      total_juros    := total_juros    - qrcr.fieldbyname('juros').asfloat;
      if qrcr.fieldbyname('valor_atual').asfloat < 0 then
        total_credito  := total_credito  + qrcr.fieldbyname('valor_atual').asfloat*(-1);

    end
    else
    begin
      IF qrcr.FieldByName('filtro').asstring = '0' then
      BEGIN
        qrcr.Edit;
        qrcr.fieldbyname('filtro').AsString := '1';
        qrcr.Post;
        rselecao.value := rselecao.value + qrcr.fieldbyname('restante').asfloat;
        rconta.value := rconta.value + 1;
        total_original := total_original + qrcr.fieldbyname('valor_atual').asfloat;
        total_juros    := total_juros    + qrcr.fieldbyname('juros').asfloat;
        if qrcr.fieldbyname('valor_atual').asfloat < 0 then
          total_credito  := total_credito  + qrcr.fieldbyname('valor_atual').asfloat*(-1);
      END;
    end;
  end
  else
  begin
    if qrcr.FieldByName('filtro').asstring = '1' then
    begin
      qrcr.Edit;
      qrcr.fieldbyname('filtro').AsString := '0';
      qrcr.Post;
    end
    else
    begin
      IF qrcr.FieldByName('filtro').asstring = '0' then
      BEGIN
        qrcr.Edit;
        qrcr.fieldbyname('filtro').AsString := '1';
        qrcr.Post;
      END;
    end;
  end;
EXCEPT

END;
end;

procedure Tfrmcontasreceber.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #32 then
  begin
    wwDBGrid1DblClick(frmcontasreceber);
  end;
  if key = #13 then breceberclick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.rselecaoChange(Sender: TObject);
begin
  IF RSELECAO.Value <> 0 THEN PSELECAO.VISIBLE := TRUE ELSE
  PSELECAO.VISIBLE := FALSE;
end;


procedure Tfrmcontasreceber.bfiltrarClick(Sender: TObject);
VAR SITUACAO : STRING;

          rvalorx,
          rJUROx,
          rcreditox,
          rTOTALx,
          roriginalx,
          rpagox : real;
          i,x : integer;
          texto : string;

begin

  lendereco.caption := frmmodulo.qrcliente.fieldbyname('endereco').asstring+' '+
                       frmmodulo.qrcliente.fieldbyname('bairro').asstring+' - '+
                       frmmodulo.qrcliente.fieldbyname('cidade').asstring+'/'+
                       frmmodulo.qrcliente.fieldbyname('uf').asstring;


  lcpf.caption := frmmodulo.qrcliente.fieldbyname('cpf').asstring;
  llimite.caption := formatfloat('###,###,##0.00',frmmodulo.qrcliente.fieldbyname('limite').asfloat);


  IF COMBO_SITUACAO.ItemIndex = 0 THEN situacao := ' AND SITUACAO = 1 ';
  IF COMBO_SITUACAO.ItemIndex = 1 THEN situacao := ' AND SITUACAO = 1 AND DATA_VENCIMENTO <= :DATAX ';
  IF COMBO_SITUACAO.ItemIndex = 2 THEN situacao := ' AND SITUACAO = 2 ';
  IF COMBO_SITUACAO.ItemIndex = 3 then situacao := '';
  wwdbgrid1.datasource := nil;

    if (edit1.text <> '') then
    begin

        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        qrcontasreceber.sql.add('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''''+situacao+' order by data_vencimento,CODIGO');

        IF COMBO_SITUACAO.ItemIndex = 1 THEN qrcontasreceber.Params.ParamByName('datax').asdatetime := date;
        qrcontasreceber.Open;

        qrcr.refresh;
        CRBatchMove1.Execute;
        QRCr.IndexFieldNames := 'data_vencimento,codigo';
        qrcr.open;

        qrcontasreceber.first;
        if qrcontasreceber.RecordCount = 0 then
          begin


                FRMMODULO.QRCLIENTE.CLOSE;
                FRMMOdULO.QRCLIENTE.SQL.CLEAR;
                FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+edit3.Text+'''');
                FRMMODULO.qrcliente.OPEN;
                if FRMMODULO.qrcliente.RecordCount = 1 then
                  begin
                    if FRMMODULO.qrcliente.FieldByName('SITUACAO').AsInteger = 3 then
                      begin
                        FRMMODULO.qrcliente.Edit;
                        FRMMODULO.qrcliente.FieldByName('SITUACAO').AsInteger := 1;
                        FRMMODULO.qrcliente.Post;
                      end;
                  end;

          end;

       

 //       QRCR.Open;

        roriginalx := 0;
        rpagox := 0;
        rcreditox := 0;
        RVALORx := 0;
        RJUROx := 0;
        RTOTALx := 0;
        while not qrcontasreceber.eof do
        begin
    {     qrcr.Insert;
          qrcr.fieldbyname('FILTRO').AsINTEGER         := 0;
          qrcr.fieldbyname('DATA_EMISSAO').AsString    := qrcontasreceber.fieldbyname('DATA_EMISSAO').AsString;
          qrcr.fieldbyname('CODIGO').AsString          := qrcontasreceber.fieldbyname('CODIGO').ASSTRING;
          qrcr.fieldbyname('DATA_VENCIMENTO').AsString := qrcontasreceber.fieldbyname('DATA_VENCIMENTO').ASSTRING;
          qrcr.fieldbyname('DOCUMENTO').AsString       := qrcontasreceber.fieldbyname('DOCUMENTO').ASSTRING;
          qrcr.fieldbyname('VALOR_ORIGINAL').AsString  := qrcontasreceber.fieldbyname('VALOR_ORIGINAL').ASSTRING;
          qrcr.fieldbyname('VALOR_PAGO').AsString      := qrcontasreceber.fieldbyname('VALOR_PAGO').ASSTRING;
          qrcr.fieldbyname('VALOR_ATUAL').AsString     := qrcontasreceber.fieldbyname('VALOR_ATUAL').ASSTRING;
          qrcr.fieldbyname('CODCEDENTE').AsString      := qrcontasreceber.fieldbyname('CODCEDENTE').ASSTRING;
          qrcr.fieldbyname('TIPO').AsString            := qrcontasreceber.fieldbyname('TIPO').ASSTRING;
          qrcr.fieldbyname('VALOR_JUROS').AsString     := qrcontasreceber.fieldbyname('VALOR_JUROS').ASSTRING;
          qrcr.fieldbyname('DATA_PAGAMENTO').AsString  := qrcontasreceber.fieldbyname('DATA_PAGAMENTO').ASSTRING;
          qrcr.fieldbyname('CODVENDEDOR').AsString     := qrcontasreceber.fieldbyname('CODVENDEDOR').ASSTRING;
          qrcr.fieldbyname('CODCAIXA').AsString        := qrcontasreceber.fieldbyname('CODCAIXA').ASSTRING;
          qrcr.fieldbyname('CODCLIENTE').AsString      := qrcontasreceber.fieldbyname('CODCLIENTE').ASSTRING;
          qrcr.fieldbyname('VALOR_DESCONTO').AsString  := qrcontasreceber.fieldbyname('VALOR_DESCONTO').ASSTRING;
          qrcr.fieldbyname('SITUACAO').AsString        := qrcontasreceber.fieldbyname('SITUACAO').ASSTRING;
          qrcr.fieldbyname('CODVENDA').AsString        := qrcontasreceber.fieldbyname('CODVENDA').ASSTRING;
          qrcr.fieldbyname('NOSSONUMERO').AsString     := qrcontasreceber.fieldbyname('NOSSONUMERO').ASSTRING;
          qrcr.fieldbyname('CODREGIAO').AsString       := qrcontasreceber.fieldbyname('CODREGIAO').ASSTRING;
          qrcr.post;



     }




          rvalorx    := RVALORx    + qrcontasreceber.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          if qrcontasreceber.FIELDBYNAME('VALOR_ATUAL').AsFloat < 0 then
            rcreditox  := rcreditox  + qrcontasreceber.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJUROx     := RJUROx     + qrcontasreceber.FIELDBYNAME('JUROS').AsFloat;
          rTOTALx    := RTOTALx    + qrcontasreceber.FIELDBYNAME('RESTANTE').AsFloat;
          roriginalx := Roriginalx + qrcontasreceber.FIELDBYNAME('valor_original').AsFloat;
          rpagox     := Rpagox     + qrcontasreceber.FIELDBYNAME('valor_pago').AsFloat;

           qrcontasreceber.next;
        end;

          rJURO.value     := RJUROx;
          rcredito.value  := rcreditox;
          rTOTAL.value    := RTOTALx;
          roriginal.value := Roriginalx;
        //  roriginal.value := RTOTALx+(rcreditox*(-1))-RJUROx;
          rpago.value     := Rpagox;
          //rvalor.value    := RVALORx;
          rvalor.value    := roriginal.value-Rpagox;



      //  qrcR.Refresh;

      //qrcr.indexfieldnames := 'data_vencimento,codvenda';




        rselecao.value := 0;
        rconta.value := 0;
        total_juros    := 0;
        total_original  := 0;
        total_credito   := 0;
        pselecao.visible := false;
        PAGEVIEW1.ActivePageIndex := 0;

    end
    else
    begin
    if (edit2.text <> '')  then
    begin
        QRCr.IndexFieldNames := 'data_vencimento,codigo';
        qrcr.open;
        while qrcr.RecordCount <> 0 do qrcr.delete;
        qrcontasreceber.close;
        qrcontasreceber.sql.clear;
        i := pos(';',edit2.text);
        x := pos('/',edit2.text);
        if  (i+x) > 0 then
        begin
          if i > 0 then
          begin
            texto := edit2.text;
            delete(texto,i,1);
            insert('/',texto,i);
            edit2.text := texto;
          end;
          qrcontasreceber.sql.add('select * from c000049 where codigo = '''+edit2.text+''''+situacao+' order by data_vencimento,CODIGO');
        end
        else
          qrcontasreceber.sql.add('select * from c000049 where nossonumero like ''%'+edit2.text+'%'''+situacao+' order by data_vencimento,CODIGO');
        IF COMBO_SITUACAO.ItemIndex = 1 THEN qrcontasreceber.Params.ParamByName('datax').asdatetime := date;
        qrcontasreceber.Open;
        if qrcontasreceber.RecordCount > 0 then
        begin
          if qrcontasreceber.recordcount = 1 then
          begin
            FRMMODULO.QRCLIENTE.CLOSE;
            FRMMOdULO.QRCLIENTE.SQL.CLEAR;
            FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
            FRMMODULO.qrcliente.OPEN;
            edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
            edit3.text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
            qrcontasreceber.first;
            qrcr.refresh;
            CRBatchMove1.Execute;
            QRCr.IndexFieldNames := 'data_vencimento,codigo';
            qrcr.open;
            roriginalx := 0;
            rpagox := 0;
            rcreditox := 0;
            RVALORx := 0;
            RJUROx := 0;
            RTOTALx := 0;
            while not qrcontasreceber.eof do
            begin
              rvalorx := RVALORx + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
              if QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat < 0 then
                rcreditox := rcreditox + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
              rJUROx := RJUROx + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
              rTOTALx := RTOTALx + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
              roriginalx := Roriginalx + QRCONTASRECEBER.FIELDBYNAME('valor_original').AsFloat;
              rpagox := Rpagox + QRCONTASRECEBER.FIELDBYNAME('valor_pago').AsFloat;
              qrcontasreceber.next;
            end;
            rJURO.value := RJUROx;
            rcredito.value := rcreditox;
            rTOTAL.value := RTOTALx;
            roriginal.value := RTOTALx+(rcreditox*(-1))-RJUROx;

            rpago.value := Rpagox;
            rvalor.value    := roriginal.value-Rpagox;
            rselecao.value := 0;
            rconta.value := 0;
            total_juros    := 0;
            total_original  := 0;
            total_credito   := 0;
            pselecao.visible := false;
            PAGEVIEW1.ActivePageIndex := 0;
          end
          else
          begin
            resultado_pesquisa1 := '';
            frmcontasreceber_boleto_achado := tfrmcontasreceber_boleto_achado.create(self);
            frmcontasreceber_boleto_achado.showmodal;

            if resultado_pesquisa1 <> '' then
            begin
              edit2.text := resultado_pesquisa1;

              qrcontasreceber.Close;
              qrcontasreceber.sql.clear;
              qrcontasreceber.sql.add('select * from c000049 where nossonumero like ''%'+edit2.text+'%'''+situacao+' order by data_vencimento,CODIGO');
              qrcontasreceber.open;

              FRMMODULO.QRCLIENTE.CLOSE;
              FRMMOdULO.QRCLIENTE.SQL.CLEAR;
              FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+qrcontasreceber.fieldbyname('codcliente').asstring+'''');
              FRMMODULO.qrcliente.OPEN;

              edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
              edit3.text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
              qrcontasreceber.first;
              qrcr.refresh;
              CRBatchMove1.Execute;
              QRCr.IndexFieldNames := 'data_vencimento,codigo';
              qrcr.open;
              roriginalx := 0;
              rpagox := 0;
              rcreditox := 0;
              RVALORx := 0;
              RJUROx := 0;
              RTOTALx := 0;
              while not qrcontasreceber.eof do
              begin
                rvalorx := RVALORx + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
                if QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat < 0 then
                  rcreditox := rcreditox + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
                rJUROx := RJUROx + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
                rTOTALx := RTOTALx + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
                roriginalx := Roriginalx + QRCONTASRECEBER.FIELDBYNAME('valor_original').AsFloat;
                rpagox := Rpagox + QRCONTASRECEBER.FIELDBYNAME('valor_pago').AsFloat;
                qrcontasreceber.next;
              end;
              rJURO.value := RJUROx;
              rcredito.value := rcreditox;
              rTOTAL.value := RTOTALx;
              roriginal.value := RTOTALx+(rcreditox*(-1))-RJUROx;

              rpago.value := Rpagox;
              rvalor.value    := roriginal.value-Rpagox;
              rselecao.value := 0;
              rconta.value := 0;
              total_juros    := 0;
              total_original  := 0;
              total_credito   := 0;
              pselecao.visible := false;
              PAGEVIEW1.ActivePageIndex := 0;

            end
            else
             exit;
          end;
        end
        else
        begin
          Application.messagebox('Boleto não encontrado!','Aviso',mb_ok+MB_ICONWARNING);
          edit2.setfocus;
        end;



    end;

    end;


  wwdbgrid1.datasource := dscontasreceber;
  wwdbgrid1.SetFocus;

end;

procedure Tfrmcontasreceber.Edit1Enter(Sender: TObject);
begin
  edit1.SelectAll;
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmcontasreceber.Edit1Exit(Sender: TObject);
begin
 tedit(sender).color := clwindow;
end;

procedure Tfrmcontasreceber.Edit1KeyPress(Sender: TObject; var Key: Char);
var cli : string;
begin
  if key = #13 then
  begin
    cli := zerar(eDIT1.text,6);
    if cli <> '000000' then
    begin
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+cli+''' order by nome');
      FRMMODULO.qrcliente.OPEN;
      IF FRMMODULO.qrcliente.RecNo = 1 THEN
      BEGIN
        edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;

        resultado_pesquisa1 := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        edit3.text := resultado_pesquisa1;
        bfiltrarClick(frmcontasreceber);
        exit;
      END;
    end;

    FRMMODULO.QRCLIENTE.CLOSE;
    FRMMOdULO.QRCLIENTE.SQL.CLEAR;
    FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where upper(nome) like '''+ANSIUPPERCASE(edit1.text)+'%'' order by nome');
    FRMMODULO.qrcliente.OPEN;
    if frmmodulo.qrcliente.recordcount > 0 then
    begin
      if frmmodulo.qrcliente.RecordCount = 1 then
      begin
        edit1.text := frmmodulo.qrcliente.fieldbyname('nome').asstring;
        edit3.Text := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
        bfiltrarClick(frmcontasreceber);
        exit;
      end
      else
      begin
        parametro_pesquisa := frmmodulo.qrcliente.sql.text;
        frmXloc_cliente := tfrmXloc_cliente.create(self);
        frmXloc_cliente.showmodal;

        if resultado_pesquisa1 <> '' then
        begin
          edit1.text := RESULTADO_PESQUISA2;
          edit3.text := resultado_pesquisa1;

          FRMMODULO.QRCLIENTE.CLOSE;
          FRMMOdULO.QRCLIENTE.SQL.CLEAR;
          FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
          FRMMODULO.qrcliente.OPEN;

          bfiltrarClick(frmcontasreceber);
          exit;
        end;
      end;
   end
   else
   begin
      application.messagebox('Cliente não encontrado!','Atenção!', MB_OK+MB_ICONERROR);
      edit1.setfocus;
      exit;
    end;
  end;

end;

procedure Tfrmcontasreceber.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if (edit2.Text = '') then edit1.setfocus else
    bfiltrarClick(frmcontasreceber);
  end;
end;

procedure Tfrmcontasreceber.DBText2Click(Sender: TObject);
begin
  if nossonumero_ok then
  begin
    qrcontasreceber.Edit;
    qrcontasreceber.fieldbyname('nossonumero').asstring := inputbox('Alterar Boleto','Informe o "Nosso Número":',dbtext2.Caption);
    qrcontasreceber.post;
  end
  else
  begin
    frmsenha_supervisor := tfrmsenha_supervisor.create(self);
    frmsenha_supervisor.showmodal;
    if bSupervisor_autenticado then
    begin
        nossonumero_ok := true;
        qrcontasreceber.Edit;
        qrcontasreceber.fieldbyname('nossonumero').asstring := inputbox('Alterar Boleto','Informe o "Nosso Número":',dbtext2.Caption);
        qrcontasreceber.post;
     end
     else
     begin
       nossonumero_ok := false;
     end;
  end;
end;

procedure Tfrmcontasreceber.DBEdit1Change(Sender: TObject);
begin
  IF DBEDIT1.Text = '' THEN FLATPANEL5.Color := CLBTNFACE ELSE FLATPANEL5.Color := $00A0FAF8;
end;

procedure Tfrmcontasreceber.brelatoriosClick(Sender: TObject);
begin
{  frmcontasreceber_impressao := tfrmcontasreceber_impressao.create(self);
  frmcontasreceber_IMPRESSAO.showmodal;
 }
end;

procedure Tfrmcontasreceber.edit1ButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
      edit1.text := resultado_pesquisa2;
      edit3.text := resultado_pesquisa1;
      FRMMODULO.QRCLIENTE.CLOSE;
      FRMMOdULO.QRCLIENTE.SQL.CLEAR;
      FRMMODULO.QRCLIENTe.SQL.ADD('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
      FRMMODULO.qrcliente.OPEN;
    bfiltrarClick(frmcontasreceber);
   end
   else
   begin
     edit1.setfocus;
   end;
end;

procedure Tfrmcontasreceber.button1Click(Sender: TObject);
begin

  if frmmodulo.qrconfig.FieldByName('CONTASRECEBER_JUROS_DINHEIRO').AsInteger = 1 then
    ltaxa.Caption := 'R$ ' + formatfloat('###,###,##0.00',juro_taxa)
  else
    ltaxa.Caption := formatfloat('###,###,##0.00',juro_taxa)+'%';

  lmulta.Caption := formatfloat('###,###,##0.00',juro_multa)+'%';
  lcarencia.Caption := inttostr(juro_carencia)+' dia(s)';

  plegenda.visible := true;
  bfechar_legenda.SetFocus;
end;

procedure Tfrmcontasreceber.Recebimentos1Click(Sender: TObject);
begin
pageview1.ActivePageIndex := 1;
end;

procedure Tfrmcontasreceber.PageView1Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 0 then
  begin


  end;
  if pageview1.ActivePageIndex = 1 then
  begin
    if qrcr.RecordCount = 0 then
    begin
     ptampa_recebimento.Visible := true;
     ptampa_recebimento.Caption := 'Não tem nenhuma conta selecionada!';
    end
    else
    begin
     qrcontasreceber_pgto.close;
     qrcontasreceber_pgto.SQL.Clear;
     qrcontasreceber_pgto.SQL.Add('select * from c000050 where CODCONTA = '''+copy(qrcr.fieldbyname('codigo').asstring,1,9)+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+''' order by data');
     qrcontasreceber_pgto.open;
     if qrcontasreceber_pgto.RecordCount = 0 then
     begin
       ptampa_recebimento.Visible := true;
       ptampa_recebimento.Caption := 'Esta conta não possue nenhum recebimento!';
     end
     else
       ptampa_recebimento.Visible := false;
    end;
  end;

  if pageview1.ActivePageIndex = 2 then
  begin
    if qrcr.RecordCount = 0 then
    begin
       ptampa_produto.Visible := true;
       ptampa_produto.Caption := 'Não tem nenhuma conta selecionada!';
       exit;
    end;

  try

    if pos('s',qrcr.fieldbyname('codvenda').asstring) > 0 then
    begin
      qrproduto_mov.close;
      qrproduto_mov.SQL.clear;
      qrproduto_mov.sql.add('select mov.*, pro.produto from c000032 mov, c000025 pro where mov.codproduto = pro.codigo and codnota = '''+copy(qrcr.fieldbyname('codvenda').asstring,1,6)+'''');
      qrproduto_mov.sql.add(' and movimento in (0,2,7,9) and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+''' order by codigo');
      qrproduto_mov.open;

      qrservico.close;
      qrservico.SQL.clear;
      qrservico.sql.add('select * from c000053 where codos = '''+COPY(qrcr.fieldbyname('codvenda').asstring,1,6)+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+'''');
      qrservico.open;
    end
    else
    begin
      qrproduto_mov.close;
      qrproduto_mov.SQL.clear;
      qrproduto_mov.sql.add('select mov.*, pro.produto from c000032 mov, c000025 pro where mov.codproduto = pro.codigo and codnota = '''+qrcr.fieldbyname('codvenda').asstring+'''');
      qrproduto_mov.sql.add(' and movimento in (0,2,7,9) and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+''' order by codigo');
      qrproduto_mov.open;

      qrservico.close;
      qrservico.SQL.clear;
      qrservico.sql.add('select * from c000053 where codos = '''+qrcr.fieldbyname('codvenda').asstring+''' and codcliente = '''+qrcr.fieldbyname('codcliente').asstring+'''');
      qrservico.open;


    end;
  except
       ptampa_produto.Visible := true;
       ptampa_produto.Caption := 'Houve erro no filtro! Verifique os Dados!';
       exit;
  end;

  end;
end;

procedure Tfrmcontasreceber.Produtos1Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 2;
end;

procedure Tfrmcontasreceber.combo_situacaoChange(Sender: TObject);
begin
  bfiltrarClick(frmcontasreceber);
end;

procedure Tfrmcontasreceber.RelaodeContas1Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 0;
end;

procedure Tfrmcontasreceber.Filtro1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_situacao.Items.Count - 1;
  if combo_situacao.ItemIndex = x then
     combo_situacao.ItemIndex := 0
  else
     combo_situacao.ItemIndex := combo_situacao.ItemIndex + 1;

     combo_situacaoChange(frmcontasreceber);

end;

procedure Tfrmcontasreceber.edit2Enter(Sender: TObject);
begin
  edit1.text := '';
end;

end.
