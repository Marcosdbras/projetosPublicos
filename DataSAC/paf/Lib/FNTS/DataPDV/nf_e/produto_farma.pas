unit produto_farma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, TFlatHintUnit, wwdblook,
  Wwdbdlg, wwdbedit, Wwdotdot, ExtDlgs, Wwdbcomb, RzEdit, RzDBEdit,
  RzDBBnEd, AdvGlowButton, AdvToolBar, ZAbstractRODataset, AdvShapeButton,
  RzBtnEdt, AdvMenus, AdvMenuStylers, ComCtrls, RzButton, RzRadChk, RzDBChk,
  TeEngine, Series, TeeProcs, Chart;

type
  Tfrmproduto_farma = class(TForm)
    pfichas: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsproduto2: TDataSource;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    dspreco: TDataSource;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    dsgrade_produto: TDataSource;
    dsserial_produto: TDataSource;
    dscomposicao_produto: TDataSource;
    qrproduto_loc: TZQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    qrinfnutricional_produto: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    query: TZQuery;
    qradic: TZQuery;
    dsadic: TDataSource;
    qrcodbarra: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label58: TLabel;
    DBEdit1: TDBEdit;
    combo_tipo: TwwDBComboBox;
    combocodbarra: TComboBox;
    Label5: TLabel;
    edata_cadastro: TDBDateEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    esubgrupo: TRzDBButtonEdit;
    DBEdit8: TDBEdit;
    efornecedor: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    Label68: TLabel;
    emarca: TRzDBButtonEdit;
    DBEdit63: TDBEdit;
    Label69: TLabel;
    label7: TLabel;
    Bevel4: TBevel;
    Label10: TLabel;
    PageView1: TPageView;
    PageSheet7: TPageSheet;
    ppreco: TPanel;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Bevel2: TBevel;
    Label28: TLabel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    FlatPanel9: TFlatPanel;
    Label39: TLabel;
    FlatPanel10: TFlatPanel;
    Label40: TLabel;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    PageSheet8: TPageSheet;
    PFOTO: TPanel;
    Label48: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Image2: TImage;
    PageSheet9: TPageSheet;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    FlatPanel11: TFlatPanel;
    FlatPanel13: TFlatPanel;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Bevel6: TBevel;
    Panel1: TPanel;
    blocaliquota: TBitBtn;
    ealiquota: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bitbtn10: TAdvGlowButton;
    DBEdit16: TDBEdit;
    GroupBox1: TGroupBox;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    Label4: TLabel;
    Bevel8: TBevel;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    bfiltro_entrada: TAdvGlowButton;
    qrmov_entrada: TZQuery;
    dsmov_entrada: TDataSource;
    qrmov_entradaMOV: TStringField;
    qrmov_entradacliente: TStringField;
    qrmov_entradaDATA: TDateTimeField;
    qrmov_entradaNUMERONOTA: TStringField;
    qrmov_entradaQTDE: TFloatField;
    qrmov_entradaUNITARIO: TFloatField;
    qrmov_entradaTOTAL: TFloatField;
    qrmov_entradaCODNOTA: TStringField;
    qrmov_entradaLOTE_FABRICACAO: TStringField;
    qrmov_entradaCODPRODUTO: TStringField;
    qrmov_entradaICMS: TFloatField;
    qrmov_entradaIPI: TFloatField;
    qrmov_entradaCFOP: TStringField;
    qrmov_entradaCODCLIENTE: TStringField;
    qrmov_entradaDESCONTO: TFloatField;
    qrmov_entradaACRESCIMO: TFloatField;
    qrmov_entradaCODIGO: TStringField;
    qrmov_entradaCODVENDEDOR: TStringField;
    qrmov_entradaMOVIMENTO: TIntegerField;
    qrproduto_mov: TZQuery;
    wwDBGrid5: TwwDBGrid;
    GroupBox14: TGroupBox;
    Label9: TLabel;
    di_saida: TDateEdit;
    df_saida: TDateEdit;
    bfiltro_saida: TAdvGlowButton;
    Bevel9: TBevel;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    qrmov_saida: TZQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    DateTimeField2: TDateTimeField;
    StringField15: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField2: TIntegerField;
    dsmov_saida: TDataSource;
    combo_saida: TComboBox;
    combo_entrada: TComboBox;
    bitbtn7: TAdvGlowButton;
    wwDBGrid4: TwwDBGrid;
    FlatPanel14: TFlatPanel;
    RINICIAL: TRxCalcEdit;
    FlatPanel15: TFlatPanel;
    rentrada: TRxCalcEdit;
    FlatPanel16: TFlatPanel;
    rsaida: TRxCalcEdit;
    FlatPanel18: TFlatPanel;
    restoque: TRxCalcEdit;
    qrestoque: TZQuery;
    Bevel10: TBevel;
    dsrentabilidade: TDataSource;
    PageSheet1: TPageSheet;
    QRRENTABILIDADE: TZQuery;
    QRRENTABILIDADECODPRODUTO: TStringField;
    QRRENTABILIDADEPRODUTO: TStringField;
    QRRENTABILIDADERENDIMENTO: TFloatField;
    QRRENTABILIDADERENTABILIDADE: TStringField;
    QRRENTABILIDADEQUANTIDADE: TFloatField;
    QRRENTABILIDADEVALOR: TFloatField;
    QRRENTABILIDADECODIGO: TStringField;
    popmenu1: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    Inventrio1: TMenuItem;
    N2: TMenuItem;
    BaixanoEstoque1: TMenuItem;
    Servios1: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    N4: TMenuItem;
    Exportarparaarquivo1: TMenuItem;
    ImportardeArquivo1: TMenuItem;
    N5: TMenuItem;
    otalizarestoque1: TMenuItem;
    N6: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoCODBARRA: TStringField;
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
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoTIPO: TStringField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutomarca: TStringField;
    qrprodutoreceitas: TStringField;
    Bevel7: TBevel;
    DBEdit11: TDBEdit;
    Label12: TLabel;
    DBEdit4: TDBEdit;
    Label14: TLabel;
    DBEdit6: TDBEdit;
    Bevel5: TBevel;
    dbmemo1: TDBRichEdit;
    GroupBox7: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label73: TLabel;
    ealiq: TRxDBCalcEdit;
    dbedit13: TRzDBButtonEdit;
    GroupBox8: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    gestoque: TGroupBox;
    Label11: TLabel;
    eest: TRzDBNumericEdit;
    Bevel3: TBevel;
    Label18: TLabel;
    Label35: TLabel;
    Label29: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit18: TDBEdit;
    DBEdit62: TDBEdit;
    combo_classificacao: TwwDBComboBox;
    combo_generico: TwwDBComboBox;
    DBEdit10: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    Label13: TLabel;
    qrpreco: TZQuery;
    qrprecoCODIGO: TStringField;
    qrprecoCODPRODUTO: TStringField;
    qrprecoCUSTO_COMPRA: TFloatField;
    qrprecoVALOR_ULTIMA_COMPRA: TFloatField;
    qrprecoFRETE_IPI_OUTRAS: TFloatField;
    qrprecoICMS_ENTRADA: TFloatField;
    qrprecoICMS_SAIDA: TFloatField;
    qrprecoCUSTO_OPERACIONAL: TFloatField;
    qrprecoOUTROS_IMPOSTOS: TFloatField;
    qrprecoCOMISSAO: TFloatField;
    qrprecoLUCRO: TFloatField;
    qrprecoPRECO_VENDA: TFloatField;
    qrprecoICMS_ENTRADA_P: TFloatField;
    qrprecoICMS_SAIDA_P: TFloatField;
    qrprecoCUSTO_OPERACIONAL_P: TFloatField;
    qrprecoOUTROS_IMPOSTOS_P: TFloatField;
    qrprecoCOMISSAO_P: TFloatField;
    qrprecoLUCRO_P: TFloatField;
    qrprecoTOTAL_CUSTO: TFloatField;
    qrprecoTOTAL_CUSTO_P: TFloatField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoDATA_ALTERACAO: TDateTimeField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFloatField;
    qrprecoDESCONTO: TFloatField;
    qrprecoFRETE: TFloatField;
    qrprecoSEGURO: TFloatField;
    qrprecoOUTRAS_DESPESAS: TFloatField;
    qrprecoIPI_P: TFloatField;
    qrprecoIPI: TFloatField;
    qrprecoPIS_P: TFloatField;
    qrprecoPIS: TFloatField;
    qrprecoCOFINS_P: TFloatField;
    qrprecoCOFINS: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL: TFloatField;
    qrprecoNOVO_PRECO_CUSTO: TFloatField;
    RzDBCheckBox1: TRzDBCheckBox;
    qrprodutoSITUACAO: TIntegerField;
    qrduplo: TZQuery;
    Atuli1: TMenuItem;
    MovimentarEstoque1: TMenuItem;
    pexporta: TFlatPanel;
    qrvenda_mes: TZQuery;
    qrvenda_mesCOLUMN_0: TFloatField;
    qrvenda_mesColumn: TFloatField;
    qrvenda_mesColumn_1: TFloatField;
    qrvenda_mesColumn_2: TFloatField;
    qrvenda_mesColumn_3: TFloatField;
    qrvenda_mesColumn_4: TFloatField;
    qrvenda_mesColumn_5: TFloatField;
    qrvenda_mesColumn_6: TFloatField;
    qrvenda_mesColumn_7: TFloatField;
    qrvenda_mesColumn_8: TFloatField;
    qrvenda_mesColumn_9: TFloatField;
    qrvenda_mesColumn_10: TFloatField;
    PageSheet2: TPageSheet;
    graf_venda: TChart;
    Series1: TBarSeries;
    Chart1: TChart;
    BarSeries1: TBarSeries;
    DBEdit12: TDBEdit;
    Label17: TLabel;
    bfornecedor_codigo: TAdvGlowButton;
    ControledeValidades1: TMenuItem;
    qrprodutoLOTE_FABRICACAO: TStringField;
    qrprodutoLOTE_VALIDADE: TDateTimeField;
    DBDateEdit1: TDBDateEdit;
    DBEdit14: TDBEdit;
    Label34: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoEnter(Sender: TObject);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Exportarparaarquivo1Click(Sender: TObject);
    procedure ImportardeArquivo1Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure ealiqExit(Sender: TObject);
    procedure ealiqKeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoEnter(Sender: TObject);
    procedure combo_tipoExit(Sender: TObject);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure dsproduto2DataChange(Sender: TObject; Field: TField);
    procedure BaixanoEstoque1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure emarcaButtonClick(Sender: TObject);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13ButtonClick(Sender: TObject);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure di_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure df_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure PageView2Change(Sender: TObject);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure df_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure bitbtn10Click(Sender: TObject);
    procedure qrprecoBeforeEdit(DataSet: TDataSet);
    procedure qrprecoBeforeInsert(DataSet: TDataSet);
    procedure Atuli1Click(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure bfornecedor_codigoClick(Sender: TObject);
    procedure ControledeValidades1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_farma: Tfrmproduto_farma;
  comando : string;
  estoque_anterior : real;
  preco_venda_anterior : double;
  cod_produto : string;



implementation

uses modulo_nfe, principal, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, industrializacao,
  inventario, baixa_estoque, servico, loc_aliquota, loc_produto_auto,
  produto_farma_preco, produto_movimentar, fornecedor_codigo,
  produto_validade;

{$R *.dfm}


procedure Tfrmproduto_farma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrproduto.close;
  action := cafree;

end;

procedure Tfrmproduto_farma.FormShow(Sender: TObject);
begin
 di_entrada.Text := '01/'+copy(datetostr(date),4,7);
 df_entrada.date := frmprincipal.UltimoDiaMes(date);

 di_saida.Text := '01/'+copy(datetostr(date),4,7);
 df_saida.date := frmprincipal.UltimoDiaMes(date);

  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;


  PageView1.ActivePageIndex := 0;
  frmmodulo.qrreceita.close;
  frmmodulo.qrreceita.sql.clear;
  frmmodulo.qrreceita.SQL.add('select * from c000024 order by receita');
  frmmodulo.qrreceita.open;
  frmmodulo.qrreceita.IndexFieldNames := 'receita';

  frmmodulo.qrGRUPO.close;
  frmmodulo.qrGRUPO.sql.clear;
  frmmodulo.qrGRUPO.SQL.add('select * from c000017 order by GRUPO');
  frmmodulo.qrGRUPO.open;
  frmmodulo.qrGRUPO.IndexFieldNames := 'GRUPO';

  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';


  frmmodulo.qrALIQUOTA.close;
  frmmodulo.qrALIQUOTA.sql.clear;
  frmmodulo.qrALIQUOTA.SQL.add('select * from c000023 order by codigo');
  frmmodulo.qrALIQUOTA.open;
  frmmodulo.qrALIQUOTA.IndexFieldNames := 'codigo';

  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.sql.clear;
  frmmodulo.qrFORNECEDOR.SQL.add('select * from c000009 order by nome');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.IndexFieldNames := 'nome';

  frmmodulo.qrMARCA.close;
  frmmodulo.qrMARCA.sql.clear;
  frmmodulo.qrMARCA.SQL.add('select * from c000019 order by nome');
  frmmodulo.qrMARCA.open;
  frmmodulo.qrMARCA.IndexFieldNames := 'nome';


  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.open;

  pgravar.visible := false;
  pgravar.Align := alClient;


  if busca_produto = 1 then
    begin
      qrproduto.close;
      qrproduto.SQL.clear;
      qrproduto.SQL.add('select * from c000025 where codigo = '''+busca_produto_codigo+'''');
      qrproduto.open;
      balterarClick(frmproduto_farma);
    end
  else
    begin
      qrproduto.close;
      qrproduto.SQL.clear;
      qrproduto.SQL.add('select * from c000025 order by produto');
      qrproduto.open;
      qrproduto.first;

      combocodbarra.Text := qrprodutoCODBARRA.AsString;

      bincluir.SetFocus;
    end;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    Label7.Caption := 'CÓD.REMARCAÇÃO';

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat   := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

end;

procedure Tfrmproduto_farma.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_farma.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.bincluirClick(Sender: TObject);
begin

  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;





  qrproduto.insert;
  qrproduto.FieldByName('unidade').AsString := 'UN';
  qrproduto.fieldbyname('codgrupo').asstring := '000001';
  qrproduto.fieldbyname('estoque').asfloat := 0;
  qrproduto.FieldByName('cst').AsString := '000';
  qrproduto.FieldByName('aliquota').asinteger := 17;
    qrproduto.fieldbyname('situacao').asinteger := 0;

  qrproduto.FieldByName('usa_balanca').asinteger := 2;
  qrproduto.FieldByName('usa_serial').asinteger := 0;
  qrproduto.FieldByName('usa_grade').asinteger := 0;
  qrproduto.fieldbyname('tipo').asstring := 'VENDA';

  qrproduto.fieldbyname('data_inventario').AsDateTime := strtodate('31/12/'+frmPrincipal.zerarcodigo(inttostr(strtoint(copy(datetostr(date),7,4))-1),4));
  qrproduto.fieldbyname('custo_inventario').AsFloat := 0;
  qrproduto.fieldbyname('estoque_inventario').AsFloat := 0;

  qrproduto.fieldbyname('codigo').asstring := frmprincipal.codifica('000025');


  EDATA_CADASTRO.Date := DATE;

  estoque_anterior := 0;

  combocodbarra.Text := '';
  combocodbarra.SETFOCUS;
  combo_tipo.TEXT:='VENDA';
  pageview1.ActivePageindex := 0;

end;

procedure Tfrmproduto_farma.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN


  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;

   preco_venda_anterior := qrproduto.fieldbyname('precovenda').asfloat;


    qrproduto.Edit;

    combocodbarra.Text := qrproduto.fieldbyname('CODBARRA').AsString;

    combocodbarra.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

Procedure Tfrmproduto_farma.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO',4) then
  begin
      qrcodbarra.close;
      qrcodbarra.SQL.clear;
      qrcodbarra.sql.add('SELECT * from c000055 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
      qrcodbarra.OPEN;
      WHILE QRCODBARRA.RECORDCOUNT <> 0 DO
      BEGIN
        QRCODBARRA.DELETE;
      END;

       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
       QRPRODUTO_MOV.Open;



       if qrproduto_mov.RecordCount > 1 then
       begin
         application.messagebox('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!','Atenção',mb_ok+mb_iconwarning);

       end
       else
       begin

            frmprincipal.log(codigo_usuario,'PRODUTO',qrproduto.fieldbyname('codigo').asstring,'EXCLUIU',qrPRODUTO.fieldbyname('PRODUTO').asstring);
                    qrproduto.Delete;
        frmmodulo.Conexao.commit;
       end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_farma.blocalizarClick(Sender: TObject);
begin
   frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrPRODUTO.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmproduto_farma.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_farma.bgravarClick(Sender: TObject);
begin
  if qrproduto.FieldByName('PRECOVENDA').AsFloat = 0 then
    begin
      showmessage('Favor Informar O Preço de Venda!');
      evenda.SetFocus;
      exit;
    end;


      if DBEdit2.Text = '' then
      begin
        showmessage('Favor Informar O Nome do Produto!');
        DBEdit2.SetFocus;
        exit;
      end;



  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
   qrpreco.Post;

  if (frmmodulo.qrinfnutricional_produto.State = dsedit) or (frmmodulo.qrinfnutricional_produto.State = dsinsert) then frmmodulo.qrinfnutricional_produto.Post;

{
  if ecombo_piscofins.Text = '' then
    begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
        begin
          qrproduto.FieldByName('PISCOFINS').AsString := 'N';
        end;
    end;
}


  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin


   if ( qrproduto.FieldByName('precovenda').AsFloat <> preco_venda_anterior ) or (qrproduto.State = dsinsert) then
      qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;

   qrproduto.FieldByName('CODBARRA').AsString := combocodbarra.Text;
   qrproduto.post;

  end;






  frmmodulo.Conexao.Commit;

  qrestoque.Refresh;

        ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
        ldata_venda.Caption := qrestoque.fieldbyname('ultima_saida').asstring;
        lnf.Caption := qrestoque.fieldbyname('nota_fiscal').asstring;
        rinicial.Value := qrestoque.fieldbyname('estoque_inicial').asfloat;
        rentrada.Value := qrestoque.fieldbyname('entradas').asfloat;
        rsaida.Value := qrestoque.fieldbyname('saidas').asfloat;
        restoque.Value := qrestoque.fieldbyname('estoque_atual').asfloat;



  bincluir.setfocus;


  pageview1.ActivePageindex := 0;



  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

end;

procedure Tfrmproduto_farma.bcancelarClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then qrpreco.cancel;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
      qrproduto.cancel;


  FRMMODULO.Conexao.Rollback;



  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  pageview1.ActivePageindex := 0;



  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

end;

procedure Tfrmproduto_farma.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_farma.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if (qrproduto.state = dsinsert) or (qrproduto.state = dsinsert) then
 begin
    if edata_cadastro.text = '  /  /    ' then  EDATA_CADASTRO.Date := DATE;
 end;
end;

procedure Tfrmproduto_farma.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;


end;

procedure Tfrmproduto_farma.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto_farma.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.Edit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inválida');
    tdbdateedit(sender).SetFocus;
  END;
 end;

end;

procedure Tfrmproduto_farma.DBEdit16Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;





  if dbedit16.text <> '' then
  begin
    if qrproduto.State = dsinsert then
    begin
      QUERY.CLOSE;
      QUERY.SQL.CLEAR;
      QUERY.SQL.ADD('SELECT CODBARRA FROM C000025 WHERE CODBARRA = '''+DBEDIT16.TEXT+'''');
      QUERY.OPEN;
      IF QUERY.RECORDCOUNT > 0 THEN
      BEGIN
        if APPLICATION.MESSAGEBOX('Existe um produto cadastrado com este código de barras! Deseja visualiza-lo?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
       begin
          qrproduto.cancel;
          qrproduto.locate('codbarra',query.fieldbyname('codbarra').asstring,[loCaseInsensitive]);
        end
        else
          dbedit16.setfocus;
      END;
    end;
  end
  else
  begin
    DBEdit16.Text := inttostr(strtoint(qrproduto.fieldbyname('codigo').asstring));
    qrproduto.FieldByName('codbarra').AsString := DBEdit16.Text;
  end;


end;

procedure Tfrmproduto_farma.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;

  end;
end;

procedure Tfrmproduto_farma.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if dbmemo1.Lines.Count >= 5 then perform(wm_nextdlgctl,0,0);
  end;
end;

procedure Tfrmproduto_farma.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);  
end;

procedure Tfrmproduto_farma.esubgrupoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;


end;

procedure Tfrmproduto_farma.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  qrproduto.fieldbyname('codALIQUOTA').asstring := frmmodulo.qrALIQUOTA.fieldbyname('codigo').asstring;
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;


end;

procedure Tfrmproduto_farma.ealiquotaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if eALIQUOTA.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrALIQUOTA,eALIQUOTA.text,'codigo') then blocALIQUOTAclick(frmproduto_farma) else begin PageView1.ActivePageIndex := 0; dbmemo1.SetFocus; end;
    end
    else
      blocALIQUOTA.SetFocus;
  end;
end;

procedure Tfrmproduto_farma.BitBtn7Click(Sender: TObject);
begin
  qrpreco.insert;
  qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
  qrpreco.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
  qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := qrproduto.fieldbyname('PRECOCUSTO').asfloat;


  ptampapreco.Visible := false;
  dbedit19.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit19Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin
    qrpreco.FieldByName('custo_compra').asfloat := qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat + qrpreco.FieldByName('frete_ipi_outras').asfloat;

    qrpreco.fieldbyname('total_custo').asfloat :=
    qrpreco.fieldbyname('icms_saida').asfloat +
    qrpreco.fieldbyname('custo_operacional').asfloat +
    qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    qrpreco.fieldbyname('comissao').asfloat +
    qrpreco.fieldbyname('lucro').asfloat -
        qrpreco.fieldbyname('icms_entrada').asfloat;

    qrpreco.fieldbyname('total_custo_p').asfloat :=
    qrpreco.fieldbyname('icms_saida_p').asfloat +
    qrpreco.fieldbyname('custo_operacional_p').asfloat +
    qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    qrpreco.fieldbyname('comissao_p').asfloat +
    qrpreco.fieldbyname('lucro_p').asfloat -
    qrpreco.fieldbyname('icms_entrada_p').asfloat;

    if qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
    qrpreco.fieldbyname('preco_venda').asfloat := qrpreco.fieldbyname('CUSTO_COMPRA').asfloat / (1-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));

  end;

end;

procedure Tfrmproduto_farma.DBEdit22Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin



    (***************************** ICMS DE ENTRADA ****************************)

      qrpreco.fieldbyname('total_custo_p').asfloat :=
      qrpreco.fieldbyname('icms_saida_p').asfloat +
      qrpreco.fieldbyname('custo_operacional_p').asfloat +
      qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.fieldbyname('comissao_p').asfloat +
      qrpreco.fieldbyname('lucro_p').asfloat-
      qrpreco.fieldbyname('icms_entrada_p').asfloat;


      if qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
      qrpreco.fieldbyname('preco_venda').asfloat :=
      qrpreco.fieldbyname('CUSTO_COMPRA').asfloat /
      (1-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));



      if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin
        qrpreco.FieldByName('icms_entrada').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
      end;
      if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
      begin
        qrpreco.FieldByName('icms_saida').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
      end;
      if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
      end;
      if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('outros_impostos').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
      end;

      if qrpreco.FieldByName('comissao_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('comissao').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('comissao_p').asfloat / 100;
      end;
      if qrpreco.FieldByName('lucro_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('lucro').asfloat :=
        qrpreco.FieldByName('preco_venda').asfloat *
        qrpreco.FieldByName('lucro_p').asfloat / 100;
      end;


      qrpreco.fieldbyname('total_custo').asfloat :=
      qrpreco.fieldbyname('icms_saida').asfloat +
      qrpreco.fieldbyname('custo_operacional').asfloat +
      qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
      qrpreco.fieldbyname('comissao').asfloat +
      qrpreco.fieldbyname('lucro').asfloat -
       qrpreco.fieldbyname('icms_entrada').asfloat;





  end;



end;

procedure Tfrmproduto_farma.DBEdit37Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin
    if qrpreco.FieldByName('custo_COMPRA').asfloat <> 0 then
    begin
      qrpreco.FieldByName('lucro_p').asfloat :=
      qrpreco.FieldByName('lucro').asfloat * 100 /
      qrpreco.FieldByName('custo_COMPRA').asfloat;
    end;
    qrpreco.fieldbyname('total_custo').asfloat :=
    qrpreco.fieldbyname('icms_saida').asfloat +
    qrpreco.fieldbyname('custo_operacional').asfloat +
    qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    qrpreco.fieldbyname('comissao').asfloat +
    qrpreco.fieldbyname('lucro').asfloat -
    qrpreco.fieldbyname('icms_entrada').asfloat;

    qrpreco.fieldbyname('total_custo_p').asfloat :=
    qrpreco.fieldbyname('icms_saida_p').asfloat +
    qrpreco.fieldbyname('custo_operacional_p').asfloat +
    qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    qrpreco.fieldbyname('comissao_p').asfloat +
    qrpreco.fieldbyname('lucro_p').asfloat -
    qrpreco.fieldbyname('icms_entrada_p').asfloat;



  end;
end;


procedure Tfrmproduto_farma.Regies1Click(Sender: TObject);
begin
LMDButton1.Click;
end;

procedure Tfrmproduto_farma.DBEdit40Exit(Sender: TObject);
begin
  tdbedit(sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto_farma.DBEdit42Exit(Sender: TObject);
begin
tedit(sender).Color := clbtnface;
end;

procedure Tfrmproduto_farma.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_farma.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    qrproduto.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmproduto_farma.SpeedButton2Click(Sender: TObject);
begin
  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto_farma.SpeedButton3Click(Sender: TObject);
begin
  image2.Picture := nil;
  qrproduto.FIELDBYNAME('FOTO').ASSTRING := '';
end;

procedure Tfrmproduto_farma.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto_farma.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto_farma.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto_farma.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto_farma.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto_farma.BitBtn14Click(Sender: TObject);
begin
//VERIFICAR
end;

procedure Tfrmproduto_farma.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto_farma.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Atualizar Produtos',4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
  end;
end;

procedure Tfrmproduto_farma.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.SQL.Clear;
  query.sql.add('select sum(estq.estoque_atual * prod.precocusto) custo, sum(estq.estoque_atual * precovenda) venda from c000025 prod, c000100 estq');
  query.open;


  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.label1.caption := formatfloat('###,###,##0.00',query.fieldbyname('custo').asfloat);
  frmproduto_total.label2.caption := formatfloat('###,###,##0.00',query.fieldbyname('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto_farma.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.ShowModal;
end;

procedure Tfrmproduto_farma.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_atualizapreco := tfrmproduto_atualizapreco.create(self);
  frmproduto_atualizapreco.showmodal;
end;

procedure Tfrmproduto_farma.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if DBEDIT13.text <> '' then
    begin
      FRMMODULO.qrfiscal_cst.CLOSE;
      FRMMODULO.QRFISCAL_CST.SQL.CLEAR;
      FRMMODULO.QRFISCAL_CST.SQL.ADD('SELECT * FROM C000083 WHERE CODIGO = '''+DBEDIT13.TEXT+'''');
      FRMMODULO.qrfiscal_cst.Open;
      IF FRMMODULO.QRFISCAL_CST.RecordCount > 0 THEN
      BEGIN
        qrproduto.fieldbyname('CST').asstring := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
        EALIQ.SetFocus;
      END
      ELSE
      BEGIN
        FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
        FRMXLOC_CST.SHOWMODAL;
        qrproduto.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
        EALIQ.SETFOCUS;
      END;
    end
    else
      dbedit13ButtonClick(frmproduto_farma);
  end;

  end;
end;

procedure Tfrmproduto_farma.ealiqExit(Sender: TObject);
begin
  if ( ealiq.value <> 0.00 )  and
     ( ealiq.value <> 7.00 )  and
     ( ealiq.value <> 12.00 ) and
     ( ealiq.value <> 17.00 ) and
     ( ealiq.value <> 25.00 ) and
     ( ealiq.value <> 27.00 ) then
    begin
      application.messagebox('Aliquota fora da faixa!','Atenção',mb_ok+mb_iconwarning);
      ealiq.Value := 0;
      ealiq.SetFocus;
      exit;
    end;
  tedit(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmproduto_farma.ealiqKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin

          pageview1.ActivePageIndex := 0;
        pageview2.ActivePageIndex := 0;

     combo_classificacao.setfocus;


  end;
end;

procedure Tfrmproduto_farma.combo_tipoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_farma.combo_tipoExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
DBEdit2.SetFocus;
end;

procedure Tfrmproduto_farma.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edata_cadastro.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit2Exit(Sender: TObject);
var texto : pansichar;
begin

  tedit(sender).Color := clwindow;
  if qrproduto.state = dsinsert then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where upper(produto) = '''+dbedit2.text+'''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      texto := pansichar( 'Existe um produto cadastrado com este nome!'+#13+
               qrduplo.fieldbyname('codigo').asstring+' - '+qrduplo.fieldbyname('produto').asstring+#13+
               'Preço de Venda: '+formatfloat('###,###,##0.00',qrduplo.fieldbyname('precovenda').asfloat)+'!'+#13+
               'Deseja prosseguir?');
      if application.messagebox(texto,'Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idNO then
      begin
        QRPRODUTO.CANCEL;
        EXIT;
      end;
    end;
  end;

end;

procedure Tfrmproduto_farma.DBEdit7Exit(Sender: TObject);
begin
     if DBEdit7.Text = '' then
          begin
               showmessage('Favor Informar a Unidade do Produto...');
               DBEdit7.SetFocus;
               exit;
          end;

  tedit(sender).color := clwindow;

end;

procedure Tfrmproduto_farma.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     if DBEdit2.Text = '' then
          begin
               showmessage('Favor Informar o Nome do Produto...');
               DBEdit2.SetFocus;
               exit;
          end
          else
            perform(wm_nextdlgctl,0,0);

  end;


end;

procedure Tfrmproduto_farma.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
  
end;

procedure Tfrmproduto_farma.Inventrio1Click(Sender: TObject);
begin
  frminventario := Tfrminventario.create(self);
  frminventario.showmodal;
end;

procedure Tfrmproduto_farma.combocodbarraEnter(Sender: TObject);
begin
  TComboBox(sender).color := $00A0FAF8;

end;

procedure Tfrmproduto_farma.combocodbarraExit(Sender: TObject);
begin
  TComboBox(sender).color := clwindow;

  if combocodbarra.Text = '' then
    begin
      combocodbarra.Text := inttostr(strtoint(qrprodutoCODIGO.AsString));
    end;


  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if combocodbarra.text <> '' then
    begin
      qrbarra.close;
      qrbarra.sql.clear;
      qrbarra.sql.add('select codbarra from c000025 where codbarra = '''+combocodbarra.text+''' and codigo <> '''+qrproduto.fieldbyname('codigo').asstring+'''');
      qrbarra.Open;
      if qrbarra.RecordCount > 0 then
      begin
        application.messagebox('Já existe um produto cadastro com este código de barra! Verifique','Atenção',mb_ok+mb_iconwarning);
        combocodbarra.setfocus;
        exit;
      end;
      dbedit2.setfocus;
    end;

  end;

end;

procedure Tfrmproduto_farma.combocodbarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto_farma.qrcodbarraBeforePost(DataSet: TDataSet);
begin

 if qrcodbarra.State = dsinsert then
 begin

  QRCODBARRA.FieldByName('CODIGO').AsString := frmPrincipal.codifica('000055');

  qrbarra.Close;
  qrbarra.sql.clear;
  qrbarra.sql.add('select * from c000055 where codbarra = '''+qrcodbarra.fieldbyname('codbarra').asstring+'''');
  qrbarra.open;
  if qrbarra.recordcount > 0 then
  begin
    Application.MessageBox('Existe um produto cadastrado com este Código','Atenção',mb_ok+MB_ICONWARNING );
    Abort;
  end;

 end;
 qrcodbarra.FieldByName('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;



end;

procedure Tfrmproduto_farma.dsproduto2DataChange(Sender: TObject; Field: TField);
begin
  IF (qrproduto.State = dsbrowse) then
    combocodbarra.Text := qrprodutoCODBARRA.AsString;
end;

procedure Tfrmproduto_farma.BaixanoEstoque1Click(Sender: TObject);
begin
  frmbaixa_estoque := Tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure Tfrmproduto_farma.Servios1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_farma);
end;

procedure Tfrmproduto_farma.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto_farma.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_farma);
end;

procedure Tfrmproduto_farma.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto_farma.efornecedorButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  qrproduto.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  if gestoque.visible then eest.setfocus else ecusto.setfocus;
end;

procedure Tfrmproduto_farma.emarcaButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  qrproduto.fieldbyname('codmarca').asstring := frmmodulo.qrmarca.fieldbyname('codigo').asstring;
  efornecedor.setfocus;
end;

procedure Tfrmproduto_farma.esubgrupoButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  qrproduto.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  emarca.setfocus;
end;

procedure Tfrmproduto_farma.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('codsubgrupo').asstring := frmprincipal.zerarcodigo(esubgrupo.text,6);
    if esubgrupo.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then
      begin
          application.messagebox('Subgrupo não cadastrado!','Atenção',mb_ok+mb_iconerror);
          esubgrupo.setfocus;
          exit;
      end
      else
        emarca.setfocus
    else
      esubgrupoButtonClick(frmproduto_farma);;
  end;

  end;
end;

procedure Tfrmproduto_farma.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then
      begin
          application.messagebox('Fornecedor não cadastrado!','Atenção',mb_ok+mb_iconerror);
          efornecedor.setfocus;
          exit;
      end
      else
        perform(wm_nextdlgctl,0,0);
    end
    else
      efornecedorButtonClick(frmproduto_farma);
  end;

  end;
end;

procedure Tfrmproduto_farma.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('codmarca').asstring := frmprincipal.zerarcodigo(emarca.text,6);
    if emarca.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrmarca,emarca.text,'codigo') then
      begin
          application.messagebox('Marca não cadastrada!','Atenção',mb_ok+mb_iconerror);
          emarca.setfocus;
          exit;
      end
      else
      begin
        efornecedor.setfocus;
      end;
    end
    else
      emarcaButtonClick(frmproduto_farma);
  end;

  end;
end;

procedure Tfrmproduto_farma.dbedit13ButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

      FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
      FRMXLOC_CST.SHOWMODAL;
      qrproduto.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
      EALiq.SETFOCUS;
end;

procedure Tfrmproduto_farma.bfiltro_entradaClick(Sender: TObject);
var ve : real;
begin
  if combo_entrada.ItemIndex = 0 then
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_entrada.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento in (0,1,7,8,10,13,16)');
    qrmov_entrada.Params.ParamByName('datai').asdatetime := di_entrada.Date;
    qrmov_entrada.Params.ParamByName('dataf').asdatetime := df_entrada.Date;
    qrmov_entrada.open;
    qrmov_entrada.first;
  end
  else
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_entrada.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento ='+copy(combo_entrada.Text,1,2));
    qrmov_entrada.Params.ParamByName('datai').asdatetime := di_entrada.Date;
    qrmov_entrada.Params.ParamByName('dataf').asdatetime := df_entrada.Date;
    qrmov_entrada.open;
    qrmov_entrada.first;
  end;


  ve := 0;
  while not qrmov_entrada.Eof do
  begin
    ve := ve + qrmov_entrada.fieldbyname('qtde').asfloat;
    qrmov_entrada.next;
  end;
  eentrada.Caption := formatfloat('###,###,##0.000',ve);
end;

procedure Tfrmproduto_farma.di_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.df_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bfiltro_entrada.setfocus;
end;

procedure Tfrmproduto_farma.PageView2Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 0 then
  begin
    if PageView2.ActivePageIndex = 1 then
    begin
      bfiltro_entradaClick(frmproduto_farma);
    end;
    if PageView2.ActivePageIndex = 2 then
    begin
      bfiltro_saidaClick(frmproduto_farma);
    end;
  end;
end;

procedure Tfrmproduto_farma.qrmov_entradaCalcFields(DataSet: TDataSet);
begin

  CASE qrmov_entrada.FieldByName('MOVIMENTO').ASINTEGER OF
  0:qrmov_entrada.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';
  1:qrmov_entrada.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:qrmov_entrada.FieldByName('MOV').ASSTRING := 'VENDA';
  3:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';
  4:qrmov_entrada.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';
  5:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:qrmov_entrada.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';
  8:qrmov_entrada.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:qrmov_entrada.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';
 10:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';
 11:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';
 12:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';
 13:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';
 14:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';
 15:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';
 16:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';

 17:qrmov_entrada.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';
 18:qrmov_entrada.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';
 19:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';
 20:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DOAÇÃO';
 99:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SAÍDA SEM BAIXAR ESTOQUE';


  END;

end;

procedure Tfrmproduto_farma.qrmov_saidaCalcFields(DataSet: TDataSet);
begin

  CASE qrmov_SAIDA.FieldByName('MOVIMENTO').ASINTEGER OF
  0:qrmov_saida.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';           // ENTRADA
  1:qrmov_saida.FieldByName('MOV').ASSTRING := 'COMPRA';                         // ENTRADA
  2:qrmov_saida.FieldByName('MOV').ASSTRING := 'VENDA';                          // SAIDA
  3:qrmov_saida.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';            // ENTRADA
  4:qrmov_saida.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';                  // SAIDA
  5:qrmov_saida.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';                // SAIDA
  6:qrmov_saida.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';                // SAIDA
  7:qrmov_saida.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';             // ENTRADA
  8:qrmov_saida.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';                 // ENTRADA
  9:qrmov_saida.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';                   // SAIDA
 10:qrmov_saida.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';                 // ENTRADA
 11:qrmov_saida.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';            // SAIDA
 12:qrmov_saida.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';          // ENTRADA
 13:qrmov_saida.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';        // ENTRADA
 14:qrmov_saida.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';        // SAIDA
 15:qrmov_saida.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';       // SAIDA
 16:qrmov_saida.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';       // ENTRADA

 17:qrmov_saida.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';                     // saida
 18:qrmov_saida.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';            // saida
 19:qrmov_saida.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';             // saida
 20:qrmov_saida.FieldByName('MOV').ASSTRING := 'DOAÇÃO';                         // saida
 99:qrmov_saida.FieldByName('MOV').ASSTRING := 'SEM BAIXA DE ESTOQUE';           // saida


  END;
end;

procedure Tfrmproduto_farma.bfiltro_saidaClick(Sender: TObject);

var ve : real;
begin
  if combo_saida.ItemIndex = 0 then
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_saida.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20,99)');
    qrmov_saida.Params.ParamByName('datai').asdatetime := di_saida.Date;
    qrmov_saida.Params.ParamByName('dataf').asdatetime := df_saida.Date;
    qrmov_saida.open;
    qrmov_saida.first;
  end
  else
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_saida.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento ='+copy(combo_saida.Text,1,2));
    qrmov_saida.Params.ParamByName('datai').asdatetime := di_saida.Date;
    qrmov_saida.Params.ParamByName('dataf').asdatetime := df_saida.Date;
    qrmov_saida.open;
    qrmov_saida.first;
  end;
  ve := 0;
  while not qrmov_saida.Eof do
  begin
    ve := ve + qrmov_saida.fieldbyname('qtde').asfloat;
    qrmov_saida.next;
  end;
  esaida.Caption := formatfloat('###,###,##0.000',ve);
end;

procedure Tfrmproduto_farma.df_saidaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then bfiltro_saida.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bitbtn10.setfocus;
end;

procedure Tfrmproduto_farma.qrproduto_movBeforePost(DataSet: TDataSet);
begin
    case qrproduto_mov.fieldbyname('movimento').asinteger of
    0,10 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    1,3,7,8,12,13,16 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    2,4,5,6,9,11,14,15,17,18,19,20 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat * (-1);
    end;
end;

procedure Tfrmproduto_farma.qrprodutoAfterCancel(DataSet: TDataSet);
begin
      pgravar.Visible := false;
      PopupMenu := Pop1;
      gestoque.Visible := false;
end;

procedure Tfrmproduto_farma.qrprodutoAfterEdit(DataSet: TDataSet);
begin
      pgravar.Visible := true;
      gestoque.Visible := false;
      PopupMenu := pop2;

end;

procedure Tfrmproduto_farma.qrprodutoAfterInsert(DataSet: TDataSet);
begin
      pgravar.Visible := true;
      gestoque.Visible := true;
      PopupMenu := pop2;
end;

procedure Tfrmproduto_farma.qrprodutoAfterPost(DataSet: TDataSet);
begin

      pgravar.Visible := false;
      PopupMenu := Pop1;
      gestoque.Visible := false;
end;

procedure Tfrmproduto_farma.PageView1Change(Sender: TObject);
begin
  DBEdit1Change(frmproduto_farma);
end;

procedure Tfrmproduto_farma.DBEdit1Change(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12 : string;
begin
try



   if pageview1.activepageindex = 4 then
   begin

    mes01 := copy(datetostr(date),4,7);
    mes02 := copy(datetostr(IncMonth(date,-1)),4,7);
    mes03 := copy(datetostr(IncMonth(date,-2)),4,7);
    mes04 := copy(datetostr(IncMonth(date,-3)),4,7);
    mes05 := copy(datetostr(IncMonth(date,-4)),4,7);
    mes06 := copy(datetostr(IncMonth(date,-5)),4,7);
    mes07 := copy(datetostr(IncMonth(date,-6)),4,7);
    mes08 := copy(datetostr(IncMonth(date,-7)),4,7);
    mes09 := copy(datetostr(IncMonth(date,-8)),4,7);
    mes10 := copy(datetostr(IncMonth(date,-9)),4,7);
    mes11 := copy(datetostr(IncMonth(date,-10)),4,7);
    mes12 := copy(datetostr(IncMonth(date,-11)),4,7);


    qrvenda_mes.close;
    qrvenda_mes.SQL.clear;
    qrvenda_mes.sql.add('select sum(qtde) sum_0, '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data11 and data < :data10 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data10 and data < :data09 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data09 and data < :data08 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data08 and data < :data07 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data07 and data < :data06 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data06 and data < :data05 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data05 and data < :data04 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data04 and data < :data03 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data03 and data < :data02 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data02 and data < :data01 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where movimento in (2,9) and data >= :data01 and data < :data00 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''') '+
                     'from c000032 where movimento in (2,9) and data >= :data12 and data < :data11 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');

    qrvenda_mes.Params.ParamByName('data00').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,1)),4,7));
    qrvenda_mes.Params.ParamByName('data01').asdatetime := strtodate('01/'+copy(datetostr(date),4,7));
    qrvenda_mes.Params.ParamByName('data02').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-1)),4,7));
    qrvenda_mes.Params.ParamByName('data03').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-2)),4,7));
    qrvenda_mes.Params.ParamByName('data04').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-3)),4,7));
    qrvenda_mes.Params.ParamByName('data05').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-4)),4,7));
    qrvenda_mes.Params.ParamByName('data06').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-5)),4,7));
    qrvenda_mes.Params.ParamByName('data07').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-6)),4,7));
    qrvenda_mes.Params.ParamByName('data08').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-7)),4,7));
    qrvenda_mes.Params.ParamByName('data09').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-8)),4,7));
    qrvenda_mes.Params.ParamByName('data10').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-9)),4,7));
    qrvenda_mes.Params.ParamByName('data11').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-10)),4,7));
    qrvenda_mes.Params.ParamByName('data12').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-11)),4,7));

    qrvenda_mes.open;




    qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
    qrvenda_mesCOLUMN.DisplayLabel :=   mes11;
    qrvenda_mesCOLUMN_1.DisplayLabel := mes10;
    qrvenda_mesCOLUMN_2.DisplayLabel := mes09;
    qrvenda_mesCOLUMN_3.DisplayLabel := mes08;
    qrvenda_mesCOLUMN_4.DisplayLabel := mes07;
    qrvenda_mesCOLUMN_5.DisplayLabel := mes06;
    qrvenda_mesCOLUMN_6.DisplayLabel := mes05;
    qrvenda_mesCOLUMN_7.DisplayLabel := mes04;
    qrvenda_mesCOLUMN_8.DisplayLabel := mes03;
    qrvenda_mesCOLUMN_9.DisplayLabel := mes02;
    qrvenda_mesCOLUMN_10.DisplayLabel := mes01;


     series1.Clear;
     series1.AddY(qrvenda_mesCOLUMN_0.AsFloat,qrvenda_mesCOLUMN_0.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN.AsFloat,qrvenda_mesCOLUMN.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_1.AsFloat,qrvenda_mesCOLUMN_1.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_2.AsFloat,qrvenda_mesCOLUMN_2.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_3.AsFloat,qrvenda_mesCOLUMN_3.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_4.AsFloat,qrvenda_mesCOLUMN_4.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_5.AsFloat,qrvenda_mesCOLUMN_5.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_6.AsFloat,qrvenda_mesCOLUMN_6.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_7.AsFloat,qrvenda_mesCOLUMN_7.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_8.AsFloat,qrvenda_mesCOLUMN_8.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_9.AsFloat,qrvenda_mesCOLUMN_9.DisplayLabel,clred);
     series1.AddY(qrvenda_mesCOLUMN_10.AsFloat,qrvenda_mesCOLUMN_10.DisplayLabel,clred);

    qrvenda_mes.close;
    qrvenda_mes.SQL.clear;
    qrvenda_mes.sql.add('select sum(qtde) sum_0, '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data11 and data < :data10 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data10 and data < :data09 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data09 and data < :data08 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data08 and data < :data07 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data07 and data < :data06 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data06 and data < :data05 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data05 and data < :data04 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data04 and data < :data03 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data03 and data < :data02 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data02 and data < :data01 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(qtde) from c000032 where MOVIMENTO = 1 and data >= :data01 and data < :data00 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''') '+
                     'from c000032 where MOVIMENTO = 1 and data >= :data12 and data < :data11 and codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');

    qrvenda_mes.Params.ParamByName('data00').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,1)),4,7));
    qrvenda_mes.Params.ParamByName('data01').asdatetime := strtodate('01/'+copy(datetostr(date),4,7));
    qrvenda_mes.Params.ParamByName('data02').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-1)),4,7));
    qrvenda_mes.Params.ParamByName('data03').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-2)),4,7));
    qrvenda_mes.Params.ParamByName('data04').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-3)),4,7));
    qrvenda_mes.Params.ParamByName('data05').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-4)),4,7));
    qrvenda_mes.Params.ParamByName('data06').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-5)),4,7));
    qrvenda_mes.Params.ParamByName('data07').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-6)),4,7));
    qrvenda_mes.Params.ParamByName('data08').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-7)),4,7));
    qrvenda_mes.Params.ParamByName('data09').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-8)),4,7));
    qrvenda_mes.Params.ParamByName('data10').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-9)),4,7));
    qrvenda_mes.Params.ParamByName('data11').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-10)),4,7));
    qrvenda_mes.Params.ParamByName('data12').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-11)),4,7));

    qrvenda_mes.open;




    qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
    qrvenda_mesCOLUMN.DisplayLabel :=   mes11;
    qrvenda_mesCOLUMN_1.DisplayLabel := mes10;
    qrvenda_mesCOLUMN_2.DisplayLabel := mes09;
    qrvenda_mesCOLUMN_3.DisplayLabel := mes08;
    qrvenda_mesCOLUMN_4.DisplayLabel := mes07;
    qrvenda_mesCOLUMN_5.DisplayLabel := mes06;
    qrvenda_mesCOLUMN_6.DisplayLabel := mes05;
    qrvenda_mesCOLUMN_7.DisplayLabel := mes04;
    qrvenda_mesCOLUMN_8.DisplayLabel := mes03;
    qrvenda_mesCOLUMN_9.DisplayLabel := mes02;
    qrvenda_mesCOLUMN_10.DisplayLabel := mes01;

     BARseries1.Clear;
     BARseries1.AddY(qrvenda_mesCOLUMN_0.AsFloat,qrvenda_mesCOLUMN_0.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN.AsFloat,qrvenda_mesCOLUMN.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_1.AsFloat,qrvenda_mesCOLUMN_1.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_2.AsFloat,qrvenda_mesCOLUMN_2.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_3.AsFloat,qrvenda_mesCOLUMN_3.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_4.AsFloat,qrvenda_mesCOLUMN_4.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_5.AsFloat,qrvenda_mesCOLUMN_5.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_6.AsFloat,qrvenda_mesCOLUMN_6.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_7.AsFloat,qrvenda_mesCOLUMN_7.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_8.AsFloat,qrvenda_mesCOLUMN_8.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_9.AsFloat,qrvenda_mesCOLUMN_9.DisplayLabel,CLBLUE);
     BARseries1.AddY(qrvenda_mesCOLUMN_10.AsFloat,qrvenda_mesCOLUMN_10.DisplayLabel,CLBLUE);






   end;





    if pageview1.ActivePageIndex = 0 then
    begin
      if PageView2.ActivePageIndex = 0 then
      begin
        qrestoque.Connection := frmmodulo.Conexao;
        qrestoque.close;
        qrestoque.SQL.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
        qrestoque.open;

        ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
        ldata_venda.Caption  := qrestoque.fieldbyname('ultima_saida').asstring;
        lnf.Caption          := qrestoque.fieldbyname('nota_fiscal').asstring;
        rinicial.Value       := qrestoque.fieldbyname('estoque_inicial').asfloat;
        rentrada.Value       := qrestoque.fieldbyname('entradas').asfloat;
        rsaida.Value         := qrestoque.fieldbyname('saidas').asfloat;
        restoque.Value       := qrestoque.fieldbyname('estoque_atual').asfloat;

      end;


      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_entradaClick(frmproduto_farma);
      end;
      if PageView2.ActivePageIndex = 2 then
      begin
        bfiltro_saidaClick(frmproduto_farma);
      end;
    end;


    if PageView1.ActivePageindex = 1 then // preco
    begin
      qrpreco.close;
      qrpreco.SQL.clear;
      qrpreco.sql.Add('select * from c000026 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
      qrpreco.open;

      if qrpreco.RecordCount = 0 then
      begin
        ptampapreco.visible := true;
      end
      else
      begin
        ptampapreco.visible := false;
      end;
    end;





    if PageView1.ActivePageIndex = 3 then // FOTO
    begin
       IF qrproduto.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(qrproduto.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;



  except

  end;
end;

procedure Tfrmproduto_farma.DBEdit17KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_farma.bitbtn10Click(Sender: TObject);
begin
  if qrproduto.State <> dsinsert then
  if qrproduto.state <> dsedit then
  qrproduto.edit;
  qrproduto.fieldbyname('precovenda').asfloat := qrpreco.fieldbyname('preco_venda').asfloat;
  qrproduto.fieldbyname('precocusto').asfloat := qrpreco.fieldbyname('custo_compra').asfloat;
end;

procedure Tfrmproduto_farma.qrprecoBeforeEdit(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
  if qrproduto.state <> dsedit then
  qrproduto.edit;
end;

procedure Tfrmproduto_farma.qrprecoBeforeInsert(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
  if qrproduto.state <> dsedit then
  qrproduto.edit;
end;

procedure Tfrmproduto_farma.Atuli1Click(Sender: TObject);
begin
  frmproduto_farma_preco := tfrmproduto_farma_preco.create(self);
  frmproduto_farma_preco.showmodal;
end;

procedure Tfrmproduto_farma.MovimentarEstoque1Click(Sender: TObject);
var recor : string;
begin
  if frmprincipal.autentica('Movimentar Estoque',4) then
  begin
    recor := qrproduto.fieldbyname('codigo').asstring;
    frmproduto_movimentar := tfrmproduto_movimentar.create(self);
    frmproduto_movimentar.LCODIGO.Caption := qrproduto.fieldbyname('codigo').asstring;
    frmproduto_movimentar.Lproduto.Caption := qrproduto.fieldbyname('produto').asstring;
    frmproduto_movimentar.Lestoque.Caption := formatfloat('###,###,##0.000',restoque.value);
    frmproduto_movimentar.rqtde.Value := 1;
    frmproduto_movimentar.runitario.Value := qrproduto.fieldbyname('precovenda').asfloat;
    frmproduto_movimentar.rtotal.Value := qrproduto.fieldbyname('precovenda').asfloat;
    frmproduto_movimentar.lunidade.Caption := QRPRODUTO.FIELDBYNAME('UNIDADE').ASSTRING;
    frmproduto_movimentar.showmodal;
    frmproduto_farma.DBEdit1Change(frmproduto_farma);
  end;

end;

procedure Tfrmproduto_farma.qrprodutoBeforePost(DataSet: TDataSet);
begin

  //complus
    IF (QRPRODUTO.STATE = DSINSERT) and (cd_pro = '1') THEN
    BEGIN


         pexporta.visible := true;
         application.ProcessMessages;

         frmmodulo.qradic.close;
         frmmodulo.qradic.sql.clear;
         frmmodulo.qradic.sql.add('insert into c000025');
         frmmodulo.qradic.sql.add('(codigo,produto,codbarra,data_cadastro,unidade,');
         frmmodulo.qradic.sql.add('codgrupo,codsubgrupo,codfornecedor,codmarca,');
         frmmodulo.qradic.sql.add('precocusto,precovenda,estoque,LOCALICAZAO,comissao,cst,aliquota,tipo,situacao)');
         frmmodulo.qradic.sql.add('values');
         frmmodulo.qradic.sql.add('(:xcodigo,:xproduto,:xcodbarra,:xdata_cadastro,:xunidade,');
         frmmodulo.qradic.sql.add(':xcodgrupo,:xcodsubgrupo,:xcodfornecedor,:xcodmarca,');
         frmmodulo.qradic.sql.add(':xprecocusto,:xprecovenda,:xestoque,:xLOCALICAZAO,:xcomissao,:xcst,:xaliquota,:xtipo,:xsituacao)');
         frmmodulo.qradic.params.parambyname('xcodigo').asstring          := qrproduto.fieldbyname('codigo').asstring;
         frmmodulo.qradic.params.parambyname('xproduto').asstring         := qrproduto.fieldbyname('produto').asstring;
         frmmodulo.qradic.params.parambyname('xCODBARRA').asstring        := qrproduto.fieldbyname('CODBARRA').asstring;
         frmmodulo.qradic.params.parambyname('xDATA_CADASTRO').asdatetime := qrproduto.fieldbyname('DATA_CADASTRO').asdatetime;
         frmmodulo.qradic.params.parambyname('xUNIDADE').asstring         := qrproduto.fieldbyname('UNIDADE').asstring;
         frmmodulo.qradic.params.parambyname('xCODGRUPO').asstring        := qrproduto.fieldbyname('CODGRUPO').asstring;
         frmmodulo.qradic.params.parambyname('xCODSUBGRUPO').asstring     := qrproduto.fieldbyname('CODSUBGRUPO').asstring;
         frmmodulo.qradic.params.parambyname('xCODFORNECEDOR').asstring   := qrproduto.fieldbyname('CODFORNECEDOR').asstring;
         frmmodulo.qradic.params.parambyname('xCODMARCA').asstring        := qrproduto.fieldbyname('CODMARCA').asstring;
         frmmodulo.qradic.params.parambyname('xPRECOCUSTO').asFLOAT       := qrproduto.fieldbyname('PRECOCUSTO').asFLOAT;
         frmmodulo.qradic.params.parambyname('xPRECOVENDA').asFLOAT       := qrproduto.fieldbyname('PRECOVENDA').asFLOAT;
         frmmodulo.qradic.params.parambyname('xESTOQUE').asFLOAT          := 0;
         frmmodulo.qradic.params.parambyname('xLOCALICAZAO').asstring     := qrproduto.fieldbyname('LOCALICAZAO').asstring;
         frmmodulo.qradic.params.parambyname('xCOMISSAO').asFLOAT         := qrproduto.fieldbyname('COMISSAO').asFLOAT;
         frmmodulo.qradic.params.parambyname('xCST').AsString             := qrproduto.fieldbyname('CST').AsString;
         frmmodulo.qradic.params.parambyname('xALIQUOTA').asFLOAT         := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;
         frmmodulo.qradic.params.parambyname('xTIPO').AsString            := 'VENDAS';
         frmmodulo.qradic.params.parambyname('xsituacao').asinteger       := qrproduto.fieldbyname('situacao').asinteger;
         frmmodulo.qradic.execsql;

         frmmodulo.conexao_adic.Commit;

         frmmodulo.qradic.CLOSE;
         frmmodulo.qradic.SQL.CLEAR;
         frmmodulo.qradic.SQL.Add('insert into c000032');
         frmmodulo.qradic.SQL.add('(codigo,codnota,serial,numeronota,');
         frmmodulo.qradic.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
         frmmodulo.qradic.SQL.add('total,unidade,aliquota,');
         frmmodulo.qradic.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
         frmmodulo.qradic.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
         frmmodulo.qradic.SQL.add('values');
         frmmodulo.qradic.SQL.add('('''+frmprincipal.codifica('000032')+''',''000000'',''000000'',''000000'',');
         frmmodulo.qradic.SQL.add(''''+qrproduto.fieldbyname('codigo').asstring+''',:QTDE,:UNITARIO,:movimento_estoque,');
         frmmodulo.qradic.SQL.add(':TOTAL,'''+qrproduto.fieldbyname('unidade').asstring +''',:ALIQUOTA,');
         frmmodulo.qradic.SQL.add('''001'',''000000'','''',');
         frmmodulo.qradic.SQL.add('''000000'',''000000'',''000000'',''S/VEND'',0,:datax,''000'')');
         frmmodulo.qradic.Params.ParamByName('datax').asdatetime := qrproduto.fieldbyname('DATA_CADASTRO').asdatetime;
         frmmodulo.qradic.Params.ParamByName('UNITARIO').ASFLOAT := qrproduto.fieldbyname('precocusto').asfloat;
         frmmodulo.qradic.Params.ParamByName('QTDE').ASFLOAT := 0;
         frmmodulo.qradic.Params.ParamByName('TOTAL').ASFLOAT := 0;
         frmmodulo.qradic.Params.ParamByName('movimento_estoque').ASFLOAT := 0;
         frmmodulo.qradic.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
         frmmodulo.qradic.ExecSQL;

         frmmodulo.conexao_adic.Commit;

         sleep(1000);
         pexporta.visible := false;
   END;
   IF (QRPRODUTO.STATE = DSedit) and (cd_pro = '1') THEN
   BEGIN
     frmmodulo.qradic.Close;
     frmmodulo.qradic.sql.clear;
     frmmodulo.qradic.sql.add('update c000025 set');
     frmmodulo.qradic.sql.add('produto       = :xproduto,');
     frmmodulo.qradic.sql.add('codbarra      = :xcodbarra,');
     frmmodulo.qradic.sql.add('data_cadastro = :xdata_cadastro,');
     frmmodulo.qradic.sql.add('unidade       = :xunidade,');
     frmmodulo.qradic.sql.add('codgrupo      = :xcodgrupo,');
     frmmodulo.qradic.sql.add('codsubgrupo      = :xcodsubgrupo,');
     frmmodulo.qradic.sql.add('codfornecedor = :xcodfornecedor,');
     frmmodulo.qradic.sql.add('codmarca      = :xcodmarca,');
     frmmodulo.qradic.sql.add('precocusto    = :xprecocusto,');
     frmmodulo.qradic.sql.add('precovenda    = :xprecovenda,');
     frmmodulo.qradic.sql.add('LOCALICAZAO   = :xLOCALICAZAO,');
     frmmodulo.qradic.sql.add('comissao      = :xcomissao,');
     frmmodulo.qradic.sql.add('cst           = :xcst,');
     frmmodulo.qradic.sql.add('aliquota      = :xaliquota');
     frmmodulo.qradic.sql.add('where codigo = '''+qrproduto.fieldbyname('codigo').asstring+'''');


     frmmodulo.qradic.params.parambyname('xproduto').asstring       := qrproduto.fieldbyname('produto').asstring;
     frmmodulo.qradic.params.parambyname('xCODBARRA').asstring      := qrproduto.fieldbyname('CODBARRA').asstring;
     frmmodulo.qradic.params.parambyname('xDATA_CADASTRO').asdatetime := qrproduto.fieldbyname('DATA_CADASTRO').asdatetime;
     frmmodulo.qradic.params.parambyname('xUNIDADE').asstring       := qrproduto.fieldbyname('UNIDADE').asstring;
     frmmodulo.qradic.params.parambyname('xCODGRUPO').asstring      := qrproduto.fieldbyname('CODGRUPO').asstring;
     frmmodulo.qradic.params.parambyname('xCODSUBGRUPO').asstring   := qrproduto.fieldbyname('CODSUBGRUPO').asstring;
     frmmodulo.qradic.params.parambyname('xCODFORNECEDOR').asstring := qrproduto.fieldbyname('CODFORNECEDOR').asstring;
     frmmodulo.qradic.params.parambyname('xCODMARCA').asstring      := qrproduto.fieldbyname('CODMARCA').asstring;
     frmmodulo.qradic.params.parambyname('xPRECOCUSTO').asFLOAT     := qrproduto.fieldbyname('PRECOCUSTO').asFLOAT;
     frmmodulo.qradic.params.parambyname('xPRECOVENDA').asFLOAT     := qrproduto.fieldbyname('PRECOVENDA').asFLOAT;
     frmmodulo.qradic.params.parambyname('xLOCALICAZAO').asstring   := qrproduto.fieldbyname('LOCALICAZAO').asstring;
     frmmodulo.qradic.params.parambyname('xCOMISSAO').asFLOAT       := qrproduto.fieldbyname('COMISSAO').asFLOAT;
     frmmodulo.qradic.params.parambyname('xCST').AsString           := qrproduto.fieldbyname('CST').AsString;
     frmmodulo.qradic.params.parambyname('xALIQUOTA').asFLOAT       := qrproduto.fieldbyname('ALIQUOTA').asFLOAT;



     frmmodulo.qradic.execsql;
     frmmodulo.conexao_adic.commit;
   end;

end;

procedure Tfrmproduto_farma.bfornecedor_codigoClick(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.lproduto.Caption := qrprodutoCODIGO.AsString+'-'+qrprodutoPRODUTO.AsString;
  frmfornecedor_codigo.showmodal;
end;

procedure Tfrmproduto_farma.ControledeValidades1Click(Sender: TObject);
begin
  frmproduto_validade := tfrmproduto_validade.create(self);
  frmproduto_validade.showmodal;

end;

end.

////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);


  CASE QRPRODUTO_MOV.FieldByName('movimento').asinteger OF
  0 : WWDBGRID4.Canvas.FONT.Color := clFuchsia;
  1 : WWDBGRID4.Canvas.FONT.Color := clBLUE;
  2,9 :BEGIN
       WWDBGRID4.Canvas.FONT.Color:= clGREEN;
       WWDBGRID4.Canvas.FONT.Style := [FSBOLD];
     END;
  3 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  4 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  5 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  6 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  7 : WWDBGRID4.Canvas.FONT.Color:= clBLUE;
  8 : WWDBGRID4.Canvas.FONT.Color:= clBLUE;

 11 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 12 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 13 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 14 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 15 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 16 : WWDBGRID4.Canvas.FONT.Color:= clRED;



  END;

{
  0:                                             'IMPLANTAÇÃO DE SALDO';
  1:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA';
  3:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE COMPRA';
  4:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'SAÍDA';
  5:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE VENDA';
  8:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA EM O.S.';


}
  WWDbgrid4.DefaultDrawDataCell(Rect, field, State);

   // NULO = 0,10
  // ENTRADA = 1,3,7,8,12,13,16
  // SAIDA   = 2,4,5,6,9,11,14,15,17,18,19,20

