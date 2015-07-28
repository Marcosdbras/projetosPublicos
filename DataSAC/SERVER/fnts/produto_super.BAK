unit produto_super;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, TFlatHintUnit, HpHint, LMDCustomButton, LMDButton, wwdblook,
  Wwdbdlg, wwdbedit, Wwdotdot, ExtDlgs, Wwdbcomb, RzEdit, RzDBEdit,
  ComCtrls;

type
  Tfrmproduto_super = class(TForm)
    HeaderView1: THeaderView;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    blocalizar: TBitBtn;
    bfechar: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsproduto2: TDataSource;
    qrproduto: TZQuery;
    BitBtn5: TBitBtn;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    pficha: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    egrupo: TDBEdit;
    blocgrupo: TBitBtn;
    efornecedor: TDBEdit;
    blocfornecedor: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Label3: TLabel;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    esubgrupo: TDBEdit;
    blocsubgrupo: TBitBtn;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    emarca: TDBEdit;
    blocmarca: TBitBtn;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    Label9: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBDateEdit2: TDBDateEdit;
    BitBtn9: TBitBtn;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    ViewSplit1: TViewSplit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    gestoque: TGroupBox;
    GroupBox2: TGroupBox;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    PageSheet7: TPageSheet;
    pobservacao: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit62: TDBEdit;
    ppreco: TPanel;
    pgrade: TPanel;
    wwDBGrid1: TwwDBGrid;
    BitBtn11: TBitBtn;
    DBCheckBox2: TDBCheckBox;
    pserial: TPanel;
    DBCheckBox3: TDBCheckBox;
    pcomposicao: TPanel;
    Label34: TLabel;
    ereceita: TDBEdit;
    blocreceita: TBitBtn;
    DBEdit61: TDBEdit;
    GroupBox6: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    Button1: TButton;
    Button2: TButton;
    pnutricional: TPanel;
    Label157: TLabel;
    Label29: TLabel;
    Label76: TLabel;
    GroupBox5: TGroupBox;
    DBEdit39: TDBEdit;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    Shape6: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label145: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    FlatPanel7: TFlatPanel;
    Shape10: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape2: TShape;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label165: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    FlatPanel8: TFlatPanel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    pbarra: TFlatPanel;
    INIMAGE: TImage;
    dspreco: TDataSource;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    BitBtn7: TBitBtn;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    BitBtn10: TBitBtn;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    dsgrade_produto: TDataSource;
    BitBtn8: TBitBtn;
    dsserial_produto: TDataSource;
    Shape11: TShape;
    Label42: TLabel;
    Button3: TButton;
    ptampaserial: TFlatPanel;
    Shape12: TShape;
    Label43: TLabel;
    LMDButton1: TLMDButton;
    PopupMenu1: TPopupMenu;
    Receitas1: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    Alquotas1: TMenuItem;
    dscomposicao_produto: TDataSource;
    qrcomposicao_produto: TZQuery;
    qrcomposicao_produtoCODIGO: TStringField;
    qrcomposicao_produtoCODPRODUTO: TStringField;
    qrcomposicao_produtoQTDE: TFloatField;
    qrproduto_loc: TZQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    comboproduto: TwwDBLookupComboDlg;
    qrcomposicao_produtoPRODUTO: TStringField;
    qrcomposicao_produtoprod: TStringField;
    ptampainfnutricional: TFlatPanel;
    BitBtn6: TBitBtn;
    Label44: TLabel;
    qrinfnutricional_produto: TDataSource;
    PageSheet8: TPageSheet;
    OpenPictureDialog1: TOpenPictureDialog;
    PFOTO: TPanel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    dsproduto_mov: TDataSource;
    Label48: TLabel;
    NaturezadeOperaoCFOP1: TMenuItem;
    qrproduto_mov: TZQuery;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    qrproduto_movQTDE: TFloatField;
    baltera: TBitBtn;
    N1: TMenuItem;
    Exportarparaarquivo1: TMenuItem;
    ImportardeArquivo1: TMenuItem;
    N2: TMenuItem;
    otalizarestoque1: TMenuItem;
    query: TZQuery;
    ComboBox1: TComboBox;
    Label55: TLabel;
    qradic: TZQuery;
    dsadic: TDataSource;
    N3: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    Label10: TLabel;
    Label30: TLabel;
    DBEdit13: TDBEdit;
    BLOCCST: TBitBtn;
    ealiq: TRxDBCalcEdit;
    Label56: TLabel;
    DBEdit14: TDBEdit;
    Label57: TLabel;
    DBEdit28: TDBEdit;
    Label58: TLabel;
    combo_tipo: TwwDBComboBox;
    RxDBCalcEdit1: TRxDBCalcEdit;
    Label60: TLabel;
    eestoque: TRzDBNumericEdit;
    Label59: TLabel;
    DBEdit10: TDBEdit;
    Indstrializao1: TMenuItem;
    N4: TMenuItem;
    Rentabilidade1: TMenuItem;
    qrproduto_movLOTE_FABRICACAO: TStringField;
    Label61: TLabel;
    Label62: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    Label63: TLabel;
    RzDBNumericEdit2: TRzDBNumericEdit;
    N5: TMenuItem;
    Inventrio1: TMenuItem;
    DBEdit29: TDBEdit;
    qrprodutoESTOQUEMINIMO: TFloatField;
    Label64: TLabel;
    DBEdit60: TDBEdit;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    combocodbarra: TComboBox;
    fdados_codbarra: THeaderView;
    Label80: TLabel;
    HeaderView9: THeaderView;
    bexclui_barra: TBitBtn;
    bgrava_barra: TBitBtn;
    qrcodbarra: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    qroperator: TZQuery;
    bcodigo: TBitBtn;
    grid_barra: TwwDBGrid;
    pop_barra: TPopupMenu;
    excluircodigodebarra1: TMenuItem;
    gravarcodigodebarra1: TMenuItem;
    N6: TMenuItem;
    BaixanoEstoque1: TMenuItem;
    Servios1: TMenuItem;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrproduto_movcliente: TStringField;
    lcliente: TLabel;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    GroupBox1: TGroupBox;
    rentrada: TRxCalcEdit;
    rsaida: TRxCalcEdit;
    restoque: TRxCalcEdit;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    ppreco_automatico: TDBCheckBox;
    paltera_automatico: TDBCheckBox;
    bnovo_preco_custo: TRzDBNumericEdit;
    Label68: TLabel;
    pdtaltera: TFlatPanel;
    Label69: TLabel;
    DBDateEdit3: TDBDateEdit;
    QUERY1: TZQuery;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    AtualizarPreosdeVendasRemarcados1: TMenuItem;
    Panel2: TPanel;
    BitBtn12: TBitBtn;
    BitBtn15: TBitBtn;
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
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label39: TLabel;
    Bevel3: TBevel;
    Label40: TLabel;
    Label49: TLabel;
    Bevel4: TBevel;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit32: TDBEdit;
    FlatPanel9: TFlatPanel;
    Label71: TLabel;
    FlatPanel10: TFlatPanel;
    Label72: TLabel;
    BitBtn16: TBitBtn;
    bcalcula_precocusto: TBitBtn;
    bcalcula_precovenda: TBitBtn;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit63: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    FlatPanel1: TFlatPanel;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    bpreco_venda: TBitBtn;
    bnovopreco_venda: TBitBtn;
    bnovo_preco_venda: TRzDBNumericEdit;
    Label87: TLabel;
    bpreco_custo: TBitBtn;
    batualiza_estoque: TBitBtn;
    bcusto: TBitBtn;
    bremarcacao: TBitBtn;
    ptermometro: TFlatPanel;
    Label70: TLabel;
    batualizar_estoque: TBitBtn;
    bar: TProgressBar;
    ProdutosSemPreodeVenda1: TMenuItem;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoCODALIQUOTA: TStringField;
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
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qrprodutoTIPO: TStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoQUANTIDADE_MINIMA_FAB: TFloatField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrprodutoSITUACAO: TIntegerField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movTP: TIntegerField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    Label88: TLabel;
    ecombo_piscofins: TwwDBComboBox;
    qrprodutoPISCOFINS: TStringField;
    ransfernciadeMercadoria1: TMenuItem;
    N7: TMenuItem;
    RecebimentodeMercadoria1: TMenuItem;
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
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure egrupoExit(Sender: TObject);
    procedure blocgrupoClick(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure esubgrupoExit(Sender: TObject);
    procedure emarcaExit(Sender: TObject);
    procedure blocsubgrupoClick(Sender: TObject);
    procedure blocmarcaClick(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoEnter(Sender: TObject);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure DBCheckBox3Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure blocreceitaClick(Sender: TObject);
    procedure ereceitaExit(Sender: TObject);
    procedure qrcomposicao_produtoBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBGrid4DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure qrproduto_movCalcFields(DataSet: TDataSet);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure balteraClick(Sender: TObject);
    procedure Exportarparaarquivo1Click(Sender: TObject);
    procedure ImportardeArquivo1Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure BLOCCSTClick(Sender: TObject);
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
    procedure Indstrializao1Click(Sender: TObject);
    procedure Rentabilidade1Click(Sender: TObject);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure bcodigoClick(Sender: TObject);
    procedure bexclui_barraClick(Sender: TObject);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure bgrava_barraClick(Sender: TObject);
    procedure dsproduto2DataChange(Sender: TObject; Field: TField);
    procedure GravarCodigodeBarra1Click(Sender: TObject);
    procedure excluircodigodebarra1Click(Sender: TObject);
    procedure BaixanoEstoque1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure batualiza_estoqueClick(Sender: TObject);
    procedure ecustoExit(Sender: TObject);
    procedure evendaExit(Sender: TObject);
    procedure bcalcula_precocustoClick(Sender: TObject);
    procedure bcalcula_precovendaClick(Sender: TObject);
    procedure ppreco_automaticoClick(Sender: TObject);
    procedure bnovo_preco_custoExit(Sender: TObject);
    procedure dsprecoDataChange(Sender: TObject; Field: TField);
    procedure batualizar_estoqueClick(Sender: TObject);
    procedure AtualizarPreosdeVendasRemarcados1Click(Sender: TObject);
    procedure ecustoEnter(Sender: TObject);
    procedure evendaEnter(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure bpreco_vendaClick(Sender: TObject);
    procedure bnovopreco_vendaClick(Sender: TObject);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure bnovo_preco_vendaExit(Sender: TObject);
    procedure bpreco_custoClick(Sender: TObject);
    procedure bnovo_preco_custoEnter(Sender: TObject);
    procedure bnovo_preco_vendaEnter(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure ClculodePreo1Click(Sender: TObject);
    procedure bremarcacaoClick(Sender: TObject);
    procedure ProdutosSemPreodeVenda1Click(Sender: TObject);
    procedure ransfernciadeMercadoria1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_super: Tfrmproduto_super;
  comando : string;
  estoque_anterior : real;
  preco_custo_anterior : double;
  preco_venda_anterior : double;

  vlucro,vlucro_anterior : double;
  vlucroP,vlucroP_anterior : double;
  vvalor_anterior : double;
  vvalor : double;
  novo_preco_custo : double;
  novo_preco_venda : double;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, loc_aliquota, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, industrializacao,
  rentabilidade, inventario, baixa_estoque, servico, produto_sempreco,
  transferencia_menu;

{$R *.dfm}


procedure Tfrmproduto_super.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_super.FormShow(Sender: TObject);
begin

  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;
  ptampainfnutricional.Align := alClient;

  ptampaserial.Top := 0;
  ptampaserial.left := 0;

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

  batualiza_estoqueClick(frmproduto_super);

  if busca_produto = 1 then
    begin
      frmmodulo.qrPRODUTO.close;
      frmmodulo.qrPRODUTO.SQL.clear;
      frmmodulo.qrPRODUTO.SQL.add('select * from c000025 where codigo = '''+busca_produto_codigo+'''');
      frmmodulo.qrPRODUTO.open;
      balterarClick(frmproduto_super);
    end
  else
    begin
      frmmodulo.qrPRODUTO.close;
      frmmodulo.qrPRODUTO.SQL.clear;
      frmmodulo.qrPRODUTO.SQL.add('select * from c000025 order by produto');
      frmmodulo.qrPRODUTO.open;
      frmmodulo.qrPRODUTO.first;

      combocodbarra.Text := frmmodulo.qrprodutoCODBARRA.AsString;

      pficha.Enabled := false;
      bincluir.SetFocus;
    end;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    Label7.Caption := 'CÓD.REMARCAÇÃO';

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;
  eestoque.DisplayFormat := mascara_qtde;
  bnovo_preco_custo.DisplayFormat := mascara_valor;
  bnovo_preco_venda.DisplayFormat := mascara_valor;
end;

procedure Tfrmproduto_super.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmproduto_super.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_super.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.insert;
  frmmodulo.qrproduto.FieldByName('unidade').AsString := 'UN';
  frmmodulo.qrproduto.FieldByName('cst').AsString := '000';
  frmmodulo.qrproduto.FieldByName('aliquota').asinteger := 17;

  frmmodulo.qrproduto.FieldByName('usa_balanca').asinteger := 2;
  frmmodulo.qrproduto.FieldByName('usa_serial').asinteger := 0;
  frmmodulo.qrproduto.FieldByName('usa_grade').asinteger := 0;
  frmmodulo.qrproduto.fieldbyname('tipo').asstring := 'VENDA';

  frmmodulo.qrproduto.fieldbyname('data_inventario').AsDateTime := strtodate('31/12/'+frmPrincipal.zerarcodigo(inttostr(strtoint(copy(datetostr(date),7,4))-1),4));
  frmmodulo.qrproduto.fieldbyname('custo_inventario').AsFloat := 0;
  frmmodulo.qrproduto.fieldbyname('estoque_inventario').AsFloat := 0;

  frmmodulo.qrPRODUTO.fieldbyname('codigo').asstring := frmprincipal.codifica('000025');

  EDATA_CADASTRO.Date := DATE;

  estoque_anterior := 0;

  gestoque.Enabled := true;
  pficha.Enabled := true;
  PFOTO.Enabled := TRUE;
  combocodbarra.Text := '';
  combocodbarra.SETFOCUS;
  combo_tipo.TEXT:='VENDA';
  pgravar.Visible := true;

  pobservacao.Enabled := true;
  ppreco.Enabled := true;
  pgrade.Enabled := true;
  pserial.Enabled := true;
  pcomposicao.Enabled := true;
  pnutricional.Enabled := true;


  pageview1.ActivePageindex := 0;



  PopupMenu := pop2;
end;

procedure Tfrmproduto_super.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN

  pobservacao.Enabled := true;
  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;
  pgrade.Enabled := true;
  pserial.Enabled := true;
  pcomposicao.Enabled := true;
  pnutricional.Enabled := true;


    eestoque.Top := 36;
    baltera.Visible := true;
    gestoque.Enabled := false;


   estoque_anterior := frmmodulo.qrproduto.fieldbyname('estoque').asfloat;
   preco_custo_anterior := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
   preco_venda_anterior := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

    frmmodulo.qrPRODUTO.Edit;

    combocodbarra.Text := frmmodulo.qrproduto.fieldbyname('CODBARRA').AsString;

    pficha.Enabled := true;
    //DBEdit16.SetFocus;   // CODBARRA
    combocodbarra.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;

    if PageView1.ActivePageIndex = 1 then
      begin
        if (frmmodulo.qrproduto.State = dsedit) or (frmmodulo.qrproduto.State = dsinsert) then
          frmmodulo.qrpreco.Edit;
      end;    
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

Procedure Tfrmproduto_super.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO',4) then
  begin
      qrcodbarra.close;
      qrcodbarra.SQL.clear;
      qrcodbarra.sql.add('SELECT * from c000055 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
      qrcodbarra.OPEN;
      WHILE QRCODBARRA.RECORDCOUNT <> 0 DO
      BEGIN
        QRCODBARRA.DELETE;
      END;

       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
       QRPRODUTO_MOV.Open;



       if qrproduto_mov.RecordCount > 1 then
       begin
         application.messagebox('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!','Atenção',mb_ok+mb_iconwarning);

       end
       else
       begin
        frmmodulo.qrPRODUTO.Delete;
        frmmodulo.Conexao.commit;
       end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_super.blocalizarClick(Sender: TObject);
begin
   frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrPRODUTO.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;

  batualiza_estoqueClick(frmproduto_super);
end;

procedure Tfrmproduto_super.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_super.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  {
  if strtoint(emarca.Text) = 0 then
    begin
      application.messagebox('Este Produto Não Possue Marca ! Verifique!','Atenção',mb_ok+mb_iconwarning);
      emarca.SetFocus;
      exit;
    end;
  }
  
      if DBEdit2.Text = '' then
      begin
        showmessage('Favor Informar O Nome do Produto!');
        DBEdit2.SetFocus;
        exit;
      end;


   //if ppreco_automatico.Checked = true then
   // BitBtn10Click(frmproduto_super);


  IF (frmmodulo.qrprODUTO.State = dsinsert) then
  BEGIN
    IF FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT <> 0 THEN
    BEGIN
                qrProduto_mov.Open;
                qrproduto_mov.Insert;

                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 0;
                qrproduto_mov.fieldbyname('codvendedor').asstring := codigo_vendedor;
                qrproduto_mov.fieldbyname('qtde').asfloat := FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                qrproduto_mov.fieldbyname('aliquota').AsFloat := frmmodulo.qrproduto.fieldbyname('aliquota').AsFloat;
                qrproduto_mov.fieldbyname('cst').AsString := frmmodulo.qrproduto.fieldbyname('cst').AsString;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat*FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT;
                qrProduto_mov.Post;

    END;

  END
  else
  begin

    if frmmodulo.qrproduto.fieldbyname('estoque').asfloat <> estoque_anterior then
    begin

                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 10;
                qrproduto_mov.fieldbyname('codvendedor').asstring := codigo_vendedor;
                qrproduto_mov.fieldbyname('qtde').asfloat := FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT-ESTOQUE_ANTERIOR;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat*(FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT-ESTOQUE_ANTERIOR);
                qrproduto_mov.fieldbyname('unidade').AsString := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                qrproduto_mov.fieldbyname('aliquota').AsFloat := frmmodulo.qrproduto.fieldbyname('aliquota').AsFloat;
                qrproduto_mov.fieldbyname('cst').AsString := frmmodulo.qrproduto.fieldbyname('cst').AsString;
                qrproduto_mov.fieldbyname('tp').AsInteger := 10;
                qrProduto_mov.Post;

    end;
  end;

  baltera.Visible := false;
  eestoque.Top := 28;
  gestoque.Enabled := false;

  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
    begin

      if frmmodulo.qrpreco.RecordCount > 0 then
        begin
          if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
            frmmodulo.qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime := DATE;

          frmmodulo.qrpreco.Post;

          bremarcacaoClick(frmproduto_super);

        end;
    end;

  if (frmmodulo.qrinfnutricional_produto.State = dsedit) or (frmmodulo.qrinfnutricional_produto.State = dsinsert) then frmmodulo.qrinfnutricional_produto.Post;

  pobservacao.Enabled := false;
  ppreco.Enabled := false;
  pgrade.Enabled := false;
  pserial.Enabled := false;
  pcomposicao.Enabled := false;
  pnutricional.Enabled := false;
  PFOTO.Enabled := FALSE;

  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
   //if ( frmmodulo.qrproduto.FieldByName('precovenda').AsFloat <> preco_venda_anterior ) or (frmmodulo.qrPRODUTO.State = dsinsert) then
   // begin
      if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
        begin
          frmmodulo.qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;
          frmmodulo.qrproduto.FieldByName('PRECOVENDA_NOVO').AsFloat := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
        end;
    //end;

   //frmmodulo.qrproduto.FieldByName('DATA_CADASTRO').AsDateTime := edata_cadastro.Date;
   frmmodulo.qrproduto.FieldByName('CODBARRA').AsString := combocodbarra.Text;
   frmmodulo.qrPRODUTO.post;

  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


  if PageView1.ActivePageIndex <> 1 then
    pageview1.ActivePageindex := 0;

  batualiza_estoqueClick(frmproduto_super);

  preco_custo_anterior := frmmodulo.qrproduto.FieldByName('PRECOCUSTO').AsFloat;
  preco_venda_anterior := frmmodulo.qrproduto.FieldByName('PRECOVENDA').AsFloat;

  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

end;

procedure Tfrmproduto_super.bcancelarClick(Sender: TObject);
begin


  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
    frmmodulo.qrpreco.cancel;

  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
    frmmodulo.qrPRODUTO.cancel;

  baltera.Visible := false;
  eestoque.Top := 28;
  gestoque.Enabled := false;

  FRMMODULO.Conexao.Rollback;

  PopupMenu := pop1;

  bincluir.setfocus;
  comando := '';
  //pageview1.ActivePageindex := 0;

  pobservacao.Enabled := false;
  ppreco.Enabled := false;
  pgrade.Enabled := false;
  pserial.Enabled := false;
  pcomposicao.Enabled := false;
  pnutricional.Enabled := false;
  PFOTO.Enabled := FALSE;

  pficha.Enabled := false;
  pgravar.Visible := false;

  batualiza_estoqueClick(frmproduto_super);

  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;
end;

procedure Tfrmproduto_super.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_super.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.first;
  batualiza_estoqueClick(frmproduto_super);
end;

procedure Tfrmproduto_super.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.last;
  batualiza_estoqueClick(frmproduto_super);
end;

procedure Tfrmproduto_super.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.prior;
  batualiza_estoqueClick(frmproduto_super);
end;

procedure Tfrmproduto_super.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.next;
  batualiza_estoqueClick(frmproduto_super);
end;

procedure Tfrmproduto_super.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_super.edata_cadastroEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
  //PageView1.ActivePageIndex := 0;

 if (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.state = dsinsert) then
 begin
    if edata_cadastro.text = '  /  /    ' then  EDATA_CADASTRO.Date := DATE;
 end;
end;

procedure Tfrmproduto_super.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_super.DBEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmproduto_super.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto_super.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_super.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_super.egrupoExit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codGRUPO').asstring := frmprincipal.zerarcodigo(egrupo.text,6);
    if egrupo.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrGRUPO,egrupo.text,'codigo') then blocGRUPOclick(frmproduto_super) else esubgrupo.setfocus
    else
      blocGRUPO.SetFocus;
  end;


end;

procedure Tfrmproduto_super.blocgrupoClick(Sender: TObject);
begin
  frmloc_grupo := tfrmloc_grupo.create(self);
  frmloc_grupo.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codgrupo').asstring := frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
  esubgrupo.setfocus;
end;

procedure Tfrmproduto_super.efornecedorExit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then blocfornecedorclick(frmproduto_super) else dbdateedit1.setfocus
    else
      blocfornecedor.SetFocus;
  end;


end;

procedure Tfrmproduto_super.blocfornecedorClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  dbdateedit1.setfocus;

end;

procedure Tfrmproduto_super.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_super.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_super.Edit1Exit(Sender: TObject);
var
  key : char;
begin
tedit(sender).Color := clwindow;
 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inválida');
    if key = #13 then
      tdbdateedit(sender).SetFocus;
  END;
 end;

end;

procedure Tfrmproduto_super.DBEdit16Exit(Sender: TObject);
var cd,x : string;
begin
tedit(sender).Color := clwindow;





  if dbedit16.text <> '' then
  begin
   try
     cd := copy(dbedit16.text,1,12);
     x := copy(frmPrincipal.somenteNumero(dbedit16.Text),13,1);
     if x <> '' then
     begin
       if frmprincipal.CalculaDigEAN13(frmPrincipal.somenteNumero(dbedit16.Text)) = x then pbarra.visible := false
       else pbarra.visible := true;
     end
     else
     begin
       pbarra.Visible := false;
     end;

    except
      pbarra.visible := true;
    end;
    if frmmodulo.qrproduto.State = dsinsert then
    begin
      QUERY.CLOSE;
      QUERY.SQL.CLEAR;
      QUERY.SQL.ADD('SELECT CODBARRA FROM C000025 WHERE CODBARRA = '''+DBEDIT16.TEXT+'''');
      QUERY.OPEN;
      IF QUERY.RECORDCOUNT > 0 THEN
      BEGIN
        if APPLICATION.MESSAGEBOX('Existe um produto cadastrado com este código de barras! Deseja visualiza-lo?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
       begin
          frmmodulo.qrproduto.cancel;
          frmmodulo.qrproduto.locate('codbarra',query.fieldbyname('codbarra').asstring,[loCaseInsensitive]);
        end
        else
          dbedit16.setfocus;
      END;
    end;
  end
  else
    begin
     //showmessage('Código de Barra Não Pode Ser Branco, deve ser Informado o código do Produto!');
     //dbedit16.SetFocus;
     DBEdit16.Text := inttostr(strtoint(frmmodulo.qrPRODUTO.fieldbyname('codigo').asstring));
     frmmodulo.qrproduto.FieldByName('codbarra').AsString := DBEdit16.Text;
     exit;
    end;

   pbarra.visible :=false;
end;

procedure Tfrmproduto_super.DBEdit1Change(Sender: TObject);
var cd, x : string;
begin
  if dbedit16.text <> '' then
  begin
   try
     cd := copy(dbedit16.text,1,12);
     x := copy(frmPrincipal.somenteNumero(dbedit16.Text),13,1);
     if x <> '' then
     begin
       if frmprincipal.CalculaDigEAN13(frmPrincipal.somenteNumero(dbedit16.Text)) = x then pbarra.visible := false
       else pbarra.visible := true;
     end
     else
     begin
       pbarra.Visible := false;
     end;
    except
      pbarra.visible := true;
    end;
  end
  else
  pbarra.visible :=false;





  try

    if PageView1.ActivePageIndex = 1 then
    begin
      frmmodulo.qrpreco.close;
      frmmodulo.qrpreco.SQL.clear;
      frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
      frmmodulo.qrpreco.open;
      if frmmodulo.qrpreco.RecordCount = 0 then
      begin
        ptampapreco.visible := true;
      end
      else
      begin
      ptampapreco.visible := false;
      end;
    end;

    if PageView1.ActivePageIndex = 2 then // grade
    begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;
    end;
    if PageView1.ActivePageIndex = 3 then // seriais
    begin
       frmmodulo.qrserial_produto.close;
       frmmodulo.qrserial_produto.sql.clear;
       frmmodulo.qrserial_produto.sql.add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       frmmodulo.qrserial_produto.Open;
       if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
         ptampaserial.Visible := false else ptampaserial.Visible := true;

    end;

    if PageView1.ActivePageIndex = 4 then // composicao
    begin
       qrcomposicao_produto.close;
       qrcomposicao_produto.sql.clear;
       qrcomposicao_produto.sql.add('select * from c000027 where produto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       qrcomposicao_produto.Open;
    end;

    if PageView1.ActivePageIndex = 5 then // informacao nutricional
    begin
       frmmodulo.qrinfnutricional_produto.close;
       frmmodulo.qrinfnutricional_produto.sql.clear;
       frmmodulo.qrinfnutricional_produto.sql.add('select * from c000028 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrinfnutricional_produto.Open;

        if frmmodulo.qrinfnutricional_produto.RecordCount = 0 then
        begin
          ptampainfnutricional.visible := true;
        end
        else
        begin
          ptampainfnutricional.visible := false;
        end;
    end;

    if PageView1.ActivePageIndex = 6 then // MOVIMENTO
    begin
       QRPRODUTO_MOV.close;
       QRPRODUTO_MOV.sql.clear;
              QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA desc');
       QRPRODUTO_MOV.Open;
    end;
    

    

    if PageView1.ActivePageIndex = 7 then // FOTO
    begin
       IF FRMMODULO.QRPRODUTO.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;








  except
  end;

end;

procedure Tfrmproduto_super.esubgrupoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codsubgrupo').asstring := frmprincipal.zerarcodigo(esubgrupo.text,6);
    if esubgrupo.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then blocsubgrupoclick(frmproduto_super) else efornecedor.setfocus
    else
      blocsubgrupo.SetFocus;
  end;
end;

procedure Tfrmproduto_super.emarcaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codmarca').asstring := frmprincipal.zerarcodigo(emarca.text,6);
    if emarca.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrmarca,emarca.text,'codigo') then blocmarcaclick(frmproduto_super) else ecusto.setfocus
    else
      blocmarca.SetFocus;
  end;

end;

procedure Tfrmproduto_super.blocsubgrupoClick(Sender: TObject);
begin
 try
  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+frmmodulo.qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
 except
 end;



  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  efornecedor.setfocus;

end;

procedure Tfrmproduto_super.blocmarcaClick(Sender: TObject);
begin
  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codmarca').asstring := frmmodulo.qrmarca.fieldbyname('codigo').asstring;
  ecusto.setfocus;

end;

procedure Tfrmproduto_super.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;

  end;
end;

procedure Tfrmproduto_super.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
{
With Memo1 do
begin
Line:= Perform(EM_LINEFROMCHAR,SelStart, 0);
sum:= SelStart - Perform(EM_LINEINDEX, Line, 0);
end;


With Memo1 do
  SelStart := Perform(EM_LINEINDEX, Linha, 0);


}
  if key = #13 then
  begin
    if dbmemo1.Lines.Count >= 5 then perform(wm_nextdlgctl,0,0);
  end;
end;

procedure Tfrmproduto_super.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_super.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_super.esubgrupoEnter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
try
  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+frmmodulo.qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
except
end;

end;

procedure Tfrmproduto_super.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codALIQUOTA').asstring := frmmodulo.qrALIQUOTA.fieldbyname('codigo').asstring;
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;


end;

procedure Tfrmproduto_super.ealiquotaExit(Sender: TObject);
begin
{
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    if eALIQUOTA.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrALIQUOTA,eALIQUOTA.text,'codigo') then blocALIQUOTAclick(frmproduto_super) else begin PageView1.ActivePageIndex := 0; dbmemo1.SetFocus; end;
    end
    else
      blocALIQUOTA.SetFocus;
  end;
}  
end;

procedure Tfrmproduto_super.PageView1Change(Sender: TObject);
begin
  try
    if PageView1.ActivePageindex = 1 then // preco
      begin
        ptampapreco.visible := true;

        if nivel_usuario < 4 then
          begin
            Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
            PageView1.ActivePageIndex := 0;
            exit;
          end;

        frmmodulo.qrpreco.close;
        frmmodulo.qrpreco.SQL.clear;
        frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
        frmmodulo.qrpreco.open;
        if frmmodulo.qrpreco.RecordCount = 0 then
          begin
            ptampapreco.visible := true;
            if (frmmodulo.qrproduto.State = dsedit) or (frmmodulo.qrproduto.State = dsinsert) then
              frmmodulo.qrpreco.Edit;
          end
        else
          begin
            novo_preco_venda := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            ptampapreco.visible := false;
          end;
      end;

    if PageView1.ActivePageIndex = 2 then // grade
    begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;
    end;

    if PageView1.ActivePageIndex = 3 then // seriais
    begin
       frmmodulo.qrserial_produto.close;
       frmmodulo.qrserial_produto.sql.clear;
       frmmodulo.qrserial_produto.sql.add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       frmmodulo.qrserial_produto.Open;

       if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
         ptampaserial.Visible := false else ptampaserial.Visible := true;
    end;

    if PageView1.ActivePageIndex = 4 then // composicao
    begin
       qrcomposicao_produto.close;
       qrcomposicao_produto.sql.clear;
       qrcomposicao_produto.sql.add('select * from c000027 where produto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       qrcomposicao_produto.Open;

       qrproduto_loc.open;

    end;
    if PageView1.ActivePageIndex = 5 then // informacao nutricional
    begin
       frmmodulo.qrinfnutricional_produto.close;
       frmmodulo.qrinfnutricional_produto.sql.clear;
       frmmodulo.qrinfnutricional_produto.sql.add('select * from c000028 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrinfnutricional_produto.Open;

        if frmmodulo.qrinfnutricional_produto.RecordCount = 0 then
        begin
          ptampainfnutricional.visible := true;
        end
        else
        begin
          ptampainfnutricional.visible := false;
        end;
    end;

    if PageView1.ActivePageIndex = 6 then // MOVIMENTO
    begin
       combobox1.ItemIndex := 0;
       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA desc');
       QRPRODUTO_MOV.Open;
    end;


    if PageView1.ActivePageIndex = 7 then // FOTO
    begin
       IF FRMMODULO.QRPRODUTO.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;




  except

  end;
end;

procedure Tfrmproduto_super.BitBtn7Click(Sender: TObject);
begin
  frmmodulo.qrpreco.insert;
  frmmodulo.qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
  frmmodulo.qrpreco.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOVENDA').asfloat;
  frmmodulo.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime := DATE;
  frmmodulo.qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger := 1;
  frmmodulo.qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger := 2;
  frmmodulo.qrpreco.Post;

  ptampapreco.Visible := false;
  dbedit19.setfocus;
end;

procedure Tfrmproduto_super.DBEdit19Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrpreco.Edit;
  frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('IPI').asfloat :=
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat/100;

  //if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  bpreco_vendaClick(frmproduto_super);

end;

procedure Tfrmproduto_super.BitBtn10Click(Sender: TObject);
begin

  if (frmmodulo.qrproduto.State = dsedit) or (frmmodulo.qrproduto.State = dsinsert) then
    begin
      if paltera_automatico.Checked = true then
        begin
          frmmodulo.qrproduto.fieldbyname('precovenda').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat;
          frmmodulo.qrproduto.fieldbyname('precovenda_novo').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat;
        end
      else
        if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
          frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat :=
          frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat;

        if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
          begin
            frmmodulo.qrproduto.fieldbyname('precocusto').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_custo').asfloat;
            frmmodulo.qrproduto.fieldbyname('precovenda_novo').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat;
          end;
    end;

end;

procedure Tfrmproduto_super.BitBtn8Click(Sender: TObject);
begin
  TRY
  FRMMODULO.qrgrade_subgrupo.CLOSE;
  FRMMODULO.qrgrade_subgrupo.SQL.Clear;
  FRMMODULO.qrgrade_subgrupo.SQL.ADD('SELECT * FROM C000020 WHERE CODSUBGRUPO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODSUBGRUPO').ASSTRING+''' ORDER BY CODIGO');
  FRMMODULO.qrgrade_subgrupo.Open;
  IF FRMMODULO.qrgrade_subgrupo.RecordCount > 0 THEN
  BEGIN
     frmmodulo.qrgrade_subgrupo.First;
     while not frmmodulo.qrgrade_subgrupo.Eof do
     begin
       frmmodulo.qrgrade_produto.Insert;
       frmmodulo.qrgrade_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000021');
       frmmodulo.qrgrade_produto.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
       frmmodulo.qrgrade_produto.FieldByName('numeracao').asstring := frmmodulo.qrgrade_subgrupo.fieldbyname('numeracao').asstring;

       frmmodulo.qrgrade_produto.post;
       frmmodulo.qrgrade_subgrupo.next;
     end;
     FRMMODULO.qrgrade_PRODUTO.Refresh;
  END
  ELSE
  BEGIN
    SHOWMESSAGE('O subgrupo a qual este produto pertence não possue grade! Favor verificar!');
  END;
  EXCEPT
  END;
end;

procedure Tfrmproduto_super.BitBtn11Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir GRADE',4) then
  begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('DELETE from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
       frmmodulo.qrgrade_produto.EXECSQL;

       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;       


       
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_super.wwDBGrid1Exit(Sender: TObject);
var estoque : real;
begin
  estoque := 0;
  frmmodulo.qrgrade_produto.First;
  while not frmmodulo.qrgrade_produto.Eof do
  begin
    estoque := estoque + frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat;
    frmmodulo.qrgrade_produto.next;
  end;

  if estoque <> frmmodulo.qrproduto.FieldByName('estoque').asfloat then
  begin
    if estoque < frmmodulo.qrproduto.FieldByName('estoque').asfloat then
    begin
      if application.MessageBox('A somatório do Estoque da Grade está MENOR que o Estoque atual do Produto! Deseja corrigir?','Atenção!',MB_YESNO+MB_ICONWARNING) = idyes then
      begin
        abort;
      end;
    end;

    if estoque > frmmodulo.qrproduto.FieldByName('estoque').asfloat then
    begin
      if application.MessageBox('A somatório do Estoque da Grade está MAIOR que o Estoque atual do Produto! Deseja corrigir?','Atenção!',MB_YESNO+MB_ICONWARNInG) = idyes then
      begin
        abort;
      end;
    end;

  end;

end;

procedure Tfrmproduto_super.wwDBGrid2DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  if frmmodulo.qrserial_produto.FieldByName('situacao').asinteger = 2 then
  begin
    wwDbgrid2.canvas.Brush.Color:= clred;
    wwDbgrid2.Canvas.Pen.Color:= clWhite;
  end;
  if frmmodulo.qrserial_produto.FieldByName('situacao').asinteger = 3 then
  begin
    wwDbgrid2.canvas.Brush.Color:= clyellow;
    wwDbgrid2.Canvas.Pen.Color:= clblack;
  end;
  wwDbgrid2.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmproduto_super.Button3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Baixar Serial',4) then
  begin
    case frmmodulo.qrserial_produto.FieldByName('situacao').asinteger of
    1:
    begin
      If application.MessageBox('Tem certeza que deseja BAIXAR este serial do Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        frmmodulo.qrserial_produto.edit;
        frmmodulo.qrserial_produto.fieldbyname('situacao').asinteger := 3;
        frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := 'BAIXADO - '+codigo_vendedor;
        FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').ASDATETIME := DATE;
        frmmodulo.qrserial_produto.Post;
        FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT := FRMMODULO.qrproduto.FIELDBYNAME('ESTOQUE').ASFLOAT - 1;
        (****************************************)


                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 5;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  codigo_vendedor;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrProduto_mov.Post;



        (****************************************)
      end;
    end;
    2:
    begin
      showmessage('Este serial já foi vendido! Impossível BAIXAR/RETORNAR o mesmo!');
    end;
    3:
    begin
      If application.MessageBox('Tem certeza que deseja RETORNAR este serial para o Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        frmmodulo.qrserial_produto.edit;
        frmmodulo.qrserial_produto.fieldbyname('situacao').asinteger := 1;
        frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := '';
        FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').ASstring := '';
        frmmodulo.qrserial_produto.Post;
        FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT := FRMMODULO.qrproduto.FIELDBYNAME('ESTOQUE').ASFLOAT + 1;
        (****************************************)
                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 8;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  codigo_vendedor;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrProduto_mov.Post;
        (****************************************)
      end;
    end;

    end; //case

//    frmmodulo.qrserial_produto.Refresh;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_super.DBCheckBox3Click(Sender: TObject);
begin
  if (frmmodulo.qrproduto.state = dsinsert) or (frmmodulo.qrproduto.State = dsedit) then
  begin
   if dbcheckbox3.Checked then
   begin
     if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
     begin

       application.MessageBox('Este produto utiliza grade de preços, impossível usar controle de seriais!','Atenção',mb_ok+mb_iconwarning);
       ptampaserial.Visible := true;
       dbcheckbox3.Checked := false;


     end
     else
     begin
       ptampaserial.Visible := false;
     end;
   end
   else
   begin
     ptampaserial.Visible := true;
   end;
  end;
end;

procedure Tfrmproduto_super.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.showmodal;
end;

procedure Tfrmproduto_super.Regies1Click(Sender: TObject);
begin
LMDButton1.Click;
end;

procedure Tfrmproduto_super.blocreceitaClick(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  wwdbgrid3.setfocus;
end;

procedure Tfrmproduto_super.ereceitaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codreceita').asstring := frmprincipal.zerarcodigo(ereceita.text,6);
    if ereceita.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrreceita,ereceita.text,'codigo') then blocreceitaclick(frmproduto_super) else wwdbgrid3.setfocus
    else
      blocreceita.SetFocus;
  end;
end;

procedure Tfrmproduto_super.qrcomposicao_produtoBeforePost(DataSet: TDataSet);
begin
  qrcomposicao_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000027');
  qrcomposicao_produto.fieldbyname('produto').asstring := FRMMODULO.qrproduto.FIELDBYNAME('CODIGO').ASSTRING;


end;

procedure Tfrmproduto_super.Button1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir COMPOSIÇÃO',4) then
  begin
    WHILE QRCOMPOSICAO_PRODUTO.RecordCount <> 0 DO
    qrCOMPOSICAO_PRODUTO.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_super.Button2Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir COMPOSIÇÃO',4) then
  begin
    qrCOMPOSICAO_PRODUTO.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_super.DBEdit40Exit(Sender: TObject);
begin
  tdbedit(sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto_super.DBEdit42Exit(Sender: TObject);
begin
tedit(sender).Color := clbtnface;
end;

procedure Tfrmproduto_super.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrinfnutricional_produto.insert;
  frmmodulo.qrinfnutricional_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000028');
  frmmodulo.qrinfnutricional_produto.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

  ptampainfnutricional.Visible := false;
  dbedit39.setfocus;
end;

procedure Tfrmproduto_super.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_super.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmproduto_super.SpeedButton2Click(Sender: TObject);
begin
  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto_super.SpeedButton3Click(Sender: TObject);
begin
  image2.Picture := nil;
  FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := '';
end;

procedure Tfrmproduto_super.wwDBGrid4DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  CASE QRPRODUTO_MOV.FieldByName('movimento').asinteger OF
  0,50 : WWDBGRID4.Canvas.FONT.Color := clFuchsia;
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

 10 : WWDBGRID4.Canvas.FONT.Color:= clMaroon;

 11 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 12 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 13 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 14 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 15 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 16 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 21 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 22 : WWDBGRID4.Canvas.FONT.Color:= clPurple;
 23 : WWDBGRID4.Canvas.FONT.Color:= clPurple;



  END;

  WWDbgrid4.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmproduto_super.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto_super.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto_super.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto_super.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto_super.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto_super.qrproduto_movCalcFields(DataSet: TDataSet);
begin

  CASE QRPRODUTO_MOV.FieldByName('MOVIMENTO').ASINTEGER OF
    0:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';
    1:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'COMPRA';
    2:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA';
    3:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';
    4:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';
    5:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
    6:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
    7:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';
    8:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
    9:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';
   10:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';
   11:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';
   12:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';
   13:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';
   14:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';
   15:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';
   16:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';
   17:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';
   18:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';
   19:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';
   20:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DOAÇÃO';
   21:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'TROCA';
   22:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'TRANSFERENCIA';
   23:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RECEBIMENTO';
   50:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ACERTO BALANÇO';
  END;

end;

procedure Tfrmproduto_super.BitBtn14Click(Sender: TObject);
begin
//VERIFICAR
end;

procedure Tfrmproduto_super.BitBtn13Click(Sender: TObject);
begin
  // VERIFICAR
  {
   CRIAR INFORMACOES DE TODOS OS TIPOS DE MOVIMENTACOES


  }

end;

procedure Tfrmproduto_super.balteraClick(Sender: TObject);
begin
 if frmprincipal.autentica('Alterar Estoque',4) then
 begin
   gestoque.enabled := true;
   eestoque.setfocus;
 end;
end;

procedure Tfrmproduto_super.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto_super.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Atualizar Produtos',4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
  end;
end;

procedure Tfrmproduto_super.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.SQL.Clear;
  query.sql.add('select sum(estoque * precocusto) custo, sum(estoque * precovenda) venda from c000025');
  query.open;
  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.label1.caption := formatfloat('###,###,##0.00',query.fieldbyname('custo').asfloat);
  frmproduto_total.label2.caption := formatfloat('###,###,##0.00',query.fieldbyname('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto_super.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.ShowModal;
end;

procedure Tfrmproduto_super.ComboBox1Change(Sender: TObject);
begin
  if combobox1.Text = '-- TODAS AS MOVIMENTAÇÕES --' then
  begin
       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA,CODIGO');
       QRPRODUTO_MOV.Open;
  end
  else
  begin
       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where movimento = '+copy(combobox1.Text,1,2)+' and codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA,CODIGO');
       QRPRODUTO_MOV.Open;
  end;
end;

procedure Tfrmproduto_super.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_atualizapreco := tfrmproduto_atualizapreco.create(self);
  frmproduto_atualizapreco.showmodal;
end;

procedure Tfrmproduto_super.DBEdit13Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    if DBEDIT13.text <> '' then
    begin
      FRMMODULO.qrfiscal_cst.CLOSE;
      FRMMODULO.QRFISCAL_CST.SQL.CLEAR;
      FRMMODULO.QRFISCAL_CST.SQL.ADD('SELECT * FROM C000083 WHERE CODIGO = '''+DBEDIT13.TEXT+'''');
      FRMMODULO.qrfiscal_cst.Open;
      IF FRMMODULO.QRFISCAL_CST.RecordCount > 0 THEN
      BEGIN
        frmmodulo.qrPRODUTO.fieldbyname('CST').asstring := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
      END
      ELSE
      BEGIN
        FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
        FRMXLOC_CST.SHOWMODAL;
        frmmodulo.qrPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
        EALIQ.SETFOCUS;
      END;
    end
    else
      blocCST.SetFocus;
  end;
end;

procedure Tfrmproduto_super.BLOCCSTClick(Sender: TObject);
begin
      FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
      FRMXLOC_CST.SHOWMODAL;
      frmmodulo.qrPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
      EALiq.SETFOCUS;

end;

procedure Tfrmproduto_super.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_super.ealiqExit(Sender: TObject);
begin
  //if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_super.ealiqKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;

  end;
end;

procedure Tfrmproduto_super.combo_tipoEnter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
end;

procedure Tfrmproduto_super.combo_tipoExit(Sender: TObject);
var
  key : char;
begin
tedit(sender).Color := clwindow;

  if key = #13 then
    DBEdit2.SetFocus;
end;

procedure Tfrmproduto_super.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edata_cadastro.setfocus;
end;

procedure Tfrmproduto_super.DBEdit2Exit(Sender: TObject);
var
  key : char;
begin
     if DBEdit2.Text = '' then
          begin
               showmessage('Favor Informar o Nome do Produto...');
               if key = #13 then
                DBEdit2.SetFocus;
               exit;
          end;
tedit(sender).Color := clwindow;


end;

procedure Tfrmproduto_super.DBEdit7Exit(Sender: TObject);
begin
     if DBEdit7.Text = '' then
          begin
               showmessage('Favor Informar a Unidade do Produto...');
               DBEdit7.SetFocus;
               exit;
          end;

  tedit(sender).color := clwindow;

end;

procedure Tfrmproduto_super.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_super.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
  
end;

procedure Tfrmproduto_super.Indstrializao1Click(Sender: TObject);
begin
  frmindustrializacao := Tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;

end;

procedure Tfrmproduto_super.Rentabilidade1Click(Sender: TObject);
begin
  frmrentabilidade := Tfrmrentabilidade.create(self);
  frmrentabilidade.showmodal;

end;

procedure Tfrmproduto_super.Inventrio1Click(Sender: TObject);
begin
  frminventario := Tfrminventario.create(self);
  frminventario.showmodal;
end;

procedure Tfrmproduto_super.combocodbarraEnter(Sender: TObject);
begin
  TComboBox(sender).color := clyellow;

end;

procedure Tfrmproduto_super.combocodbarraExit(Sender: TObject);
var cd,x : string;
key : char;
begin
  TComboBox(sender).color := clwindow;

  if combocodbarra.Text = '' then
    begin
      combocodbarra.Text := inttostr(strtoint(frmmodulo.qrprodutoCODIGO.AsString));
    end;

  try
    cd := copy(combocodbarra.Text,1,12);
    x := copy(frmPrincipal.somenteNumero(combocodbarra.Text),13,1);
    if x <> '' then
      begin
        if frmprincipal.CalculaDigEAN13(frmPrincipal.somenteNumero(combocodbarra.Text)) = x then pbarra.visible := false
        else pbarra.visible := true;
        end
      else
      begin
        fdados_codbarra.Visible := false;
     end;

    except

      pbarra.visible := true;
    end;

  if (frmmodulo.qrproduto.State = dsinsert) or (frmmodulo.qrproduto.State = dsedit) then
  begin
    if combocodbarra.text <> '' then
    begin
      if combocodbarra.text <> 'VARIOS' then
        begin
          qrbarra.close;
          qrbarra.sql.clear;
          qrbarra.sql.add('select codbarra from c000025 where codbarra = '''+combocodbarra.text+''' and codigo <> '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
          qrbarra.Open;
          if qrbarra.RecordCount > 0 then
          begin
            //if application.messagebox('Já existe um produto cadastro com este código! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
            application.messagebox('Já existe um produto cadastro com este código de barra! Verifique','Atenção',mb_ok+mb_iconwarning);
            combocodbarra.setfocus;
            exit;
          end;
          if key = #13 then
            DBEdit2.SetFocus;
        end

      else
      begin
        bcodigoClick(frmproduto_super);
      end;

    end;

    end;

end;

procedure Tfrmproduto_super.combocodbarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto_super.bcodigoClick(Sender: TObject);
begin
  if combocodbarra.Text = 'VARIOS' then
    begin
      PopupMenu := pop_barra;

      qrcodbarra.close;
      qrcodbarra.SQL.clear;
      qrcodbarra.sql.add('select * from c000055 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codbarra');
      qrcodbarra.open;

      if (frmmodulo.qrproduto.State = dsinsert) then
        qrcodbarra.Insert
      else
        qrcodbarra.Edit;

      fdados_codbarra.Visible := TRUE;
      fdados_codbarra.Top  := 30;
      fdados_codbarra.Left := 206;

      grid_barra.SETFOCUS;
    end;

end;

procedure Tfrmproduto_super.bexclui_barraClick(Sender: TObject);
begin
  if application.messagebox('Tem certeza que deseja exlcuir este código de barras?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
    qrcodbarra.Delete;
  end;

end;

procedure Tfrmproduto_super.qrcodbarraBeforePost(DataSet: TDataSet);
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
 qrcodbarra.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  qroperator.open;
  qroperator.Insert;
  qroperator.fieldbyname('tiporegistro').asinteger := 2;
  if qrcodbarra.State = dsinsert then qroperator.FieldByName('movimento').asinteger := 1;
  if qrcodbarra.State = dsedit then qroperator.FieldByName('movimento').asinteger := 2;
  qroperator.FieldByName('codregistro').asstring := qrcodbarra.fieldbyname('codigo').asstring;
    QROPERATOR.FieldByName('SITUACAO').ASINTEGER := 0;
  qroperator.post;



end;

procedure Tfrmproduto_super.bgrava_barraClick(Sender: TObject);
begin
  IF (qrcodbarra.State = dsinsert) or (qrcodbarra.State = dsedit) then
    qrcodbarra.Post;

  fdados_codbarra.Visible := false;
  PopupMenu := Pop2;

  DBEdit2.SetFocus;
end;

procedure Tfrmproduto_super.dsproduto2DataChange(Sender: TObject; Field: TField);
var
  vqde_ent,vqde_sai : double;
begin
  IF (frmmodulo.qrprODUTO.State = dsbrowse) then
    combocodbarra.Text := frmmodulo.qrprodutoCODBARRA.AsString;
end;

procedure Tfrmproduto_super.GravarCodigodeBarra1Click(Sender: TObject);
begin
  bgrava_barraClick(frmproduto_super);
end;

procedure Tfrmproduto_super.excluircodigodebarra1Click(Sender: TObject);
begin
  bexclui_barraClick(frmproduto_super);
end;

procedure Tfrmproduto_super.BaixanoEstoque1Click(Sender: TObject);
begin
  frmbaixa_estoque := Tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure Tfrmproduto_super.Servios1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_super);
end;

procedure Tfrmproduto_super.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto_super.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_super);
end;

procedure Tfrmproduto_super.batualiza_estoqueClick(Sender: TObject);
var
  vrecno : integer;
  vestoque,vestoque_anterior : double;
begin
{

  vrecno := frmmodulo.qrproduto.RecNo;
  vestoque_anterior := frmmodulo.qrprodutoESTOQUE.AsFloat;
  vestoque := 0;


  qrPRODUTO.close;
  qrproduto.sql.clear;
  qrproduto.sql.Add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
  qrproduto.open;

  QRENTRADA.close;
  QRENTRADA.sql.clear;
  QRENTRADA.sql.add('select sum(qtde) ENTRADA FROM C000032 WHERE CODPRODUTO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
  QRENTRADA.SQL.ADD('AND movimento in (0,1,7,8,10,13,16)');
  QRENTRADA.open;

  QRSAIDA.close;
  QRSAIDA.sql.clear;
  QRSAIDA.sql.add('select sum(qtde) SAIDA FROM C000032 WHERE CODPRODUTO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
  QRSAIDA.SQL.ADD('AND movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20)');
  QRSAIDA.open;

  RSAIDA.VALUE := QRSAIDA.FIELDBYNAME('SAIDA').ASFLOAT;
  RENTRADA.VALUE := QRENTRADA.FIELDBYNAME('ENTRADA').ASFLOAT;
  RESTOQUE.VALUE := RENTRADA.VALUE - RSAIDA.VALUE;
}

end;

procedure Tfrmproduto_super.ecustoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if frmmodulo.qrproduto.FieldByName('PRECOCUSTO').AsFloat <> preco_custo_anterior then
    begin
      if frmmodulo.qrpreco.RecordCount > 0 then
        begin
          frmmodulo.qrpreco.Edit;
          frmmodulo.qrpreco.FieldByName('NOVO_PRECO_CUSTO').AsFloat := frmmodulo.qrproduto.FieldByName('PRECOCUSTO').AsFloat;
          bpreco_custoClick(frmproduto_super);
          preco_custo_anterior := frmmodulo.qrproduto.FieldByName('PRECOCUSTO').AsFloat;
        end;
    end;

end;

procedure Tfrmproduto_super.evendaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
    if paltera_automatico.Checked = true then
      begin
        if frmmodulo.qrpreco.RecordCount > 0 then
          begin
            frmmodulo.qrpreco.Edit;
            frmmodulo.qrpreco.FieldByName('NOVO_PRECO_VENDA').AsFloat := frmmodulo.qrproduto.FieldByName('PRECOVENDA').AsFloat;
            bnovopreco_vendaClick(frmproduto_super);
          end;
      end;

end;

procedure Tfrmproduto_super.bcalcula_precocustoClick(Sender: TObject);
begin

      frmmodulo.qrpreco.Edit;

  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin

    (***************************** ICMS DE ENTRADA ****************************)

      frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat-
      frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;




      if frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
        if 1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100) <> 0 then
          begin
            frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat :=
            frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat /
            (1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));
          end;

      if frmmodulo.qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin

        frmmodulo.qrpreco.FieldByName('icms_entrada').asfloat :=
        frmmodulo.qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;

      end;
      if frmmodulo.qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_saida').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('outros_impostos').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
      end;

      if frmmodulo.qrpreco.FieldByName('comissao_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('comissao').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('comissao_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('lucro_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('lucro').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('lucro_p').asfloat / 100;
      end;


      frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
       frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;


      frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat :=
      frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat;

  if paltera_automatico.Checked = true then
      frmmodulo.qrproduto.fieldbyname('precovenda').asfloat :=
      frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat;

  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
    begin
      frmmodulo.qrproduto.fieldbyname('precovenda_novo').asfloat :=
      frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat;

      frmmodulo.qrproduto.fieldbyname('precocusto').asfloat :=
      frmmodulo.qrpreco.fieldbyname('custo_compra').asfloat;
    end;

  end;
  preco_custo_anterior := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;

end;

procedure Tfrmproduto_super.bcalcula_precovendaClick(Sender: TObject);
begin
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin

    if frmmodulo.qrpreco.FieldByName('lucro_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('lucro').asfloat :=
        frmmodulo.qrpreco.FieldByName('novo_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('lucro_p').asfloat / 100;
      end;

    frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;

    (***************************** ICMS DE ENTRADA ****************************)

      frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat-
      frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;


      if frmmodulo.qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_entrada').asfloat :=
        frmmodulo.qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_saida').asfloat :=
        frmmodulo.qrpreco.FieldByName('novo_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        frmmodulo.qrpreco.FieldByName('novo_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('outros_impostos').asfloat :=
        frmmodulo.qrpreco.FieldByName('novo_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
      end;

      if frmmodulo.qrpreco.FieldByName('comissao_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('comissao').asfloat :=
        frmmodulo.qrpreco.FieldByName('novo_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('comissao_p').asfloat / 100;
      end;

      frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
       frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;

    frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat;

  end;

  if paltera_automatico.Checked = true then
    begin
      frmmodulo.qrproduto.fieldbyname('precovenda').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat;
    end;

  frmmodulo.qrproduto.fieldbyname('precovenda_novo').asfloat := frmmodulo.qrpreco.fieldbyname('novo_preco_venda').asfloat;
  frmmodulo.qrproduto.fieldbyname('precocusto').asfloat := frmmodulo.qrpreco.fieldbyname('custo_compra').asfloat;


end;

procedure Tfrmproduto_super.ppreco_automaticoClick(Sender: TObject);
begin

{
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
    begin
      frmmodulo.qrpreco.FieldByName('PRECO_AUTOMATICO').AsInteger := 1;
      frmmodulo.qrpreco.Post;
    end;
}

end;

procedure Tfrmproduto_super.bnovo_preco_custoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
    bpreco_custoClick(frmproduto_super);
end;

procedure Tfrmproduto_super.dsprecoDataChange(Sender: TObject; Field: TField);
begin
  if frmmodulo.qrpreco.FieldByName('ALTERA_AUTOMATICO').AsInteger = 2 then
    pdtaltera.Visible := true
  else
    pdtaltera.Visible := false;

end;

procedure Tfrmproduto_super.batualizar_estoqueClick(Sender: TObject);
var
  vrecno : integer;
begin

  vrecno := frmmodulo.qrproduto.RecNo;

  QUERY1.close;
  QUERY1.sql.clear;
  QUERY1.SQL.add('select * from c000026 where DATA_ALTERACAO = :datai order by codproduto');
  QUERY1.params.ParamByName('datai').asdatetime := date;
  QUERY1.open;

  bar.position := 0;
  bar.Max := query1.RecordCount;

  QUERY1.First;
  if QUERY1.RecordCount > 0 then
  begin
    ptermometro.Visible := true;

    while not QUERY1.Eof do
      begin
        qrproduto.close;
        qrproduto.SQL.clear;
        qrproduto.sql.Add('select * from c000025 where codigo = '''+QUERY1.fieldbyname('codproduto').asstring+'''');
        qrproduto.open;
        if qrproduto.RecordCount > 0 then
          begin
            qrproduto.Edit;
            qrproduto.FieldByName('PRECOVENDA').AsFloat := QUERY1.fieldbyname('NOVO_PRECO_VENDA').AsFloat;
            qrproduto.fieldbyname('precovenda_novo').asfloat := QUERY1.fieldbyname('novo_preco_venda').asfloat;
            qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := QUERY1.fieldbyname('DATA_ALTERACAO').AsDateTime;
            qrproduto.Post;
          end;
        frmmodulo.qrpreco.close;
        frmmodulo.qrpreco.SQL.clear;
        frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+QUERY1.fieldbyname('codproduto').asstring+'''');
        frmmodulo.qrpreco.open;
        if frmmodulo.qrpreco.RecordCount > 0 then
          begin
            frmmodulo.qrpreco.Edit;
            frmmodulo.qrpreco.FieldByName('PRECO_VENDA').AsFloat := frmmodulo.qrpreco.FieldByName('NOVO_PRECO_VENDA').AsFloat;
            //frmmodulo.qrpreco.FieldByName('ALTERA_AUTOMATICO').AsInteger := 1;
            frmmodulo.qrpreco.Post;
          end;
        QUERY1.Next;
        bar.Position := bar.position + 1;
    end;
    frmmodulo.Conexao.Commit;
    qrproduto.Refresh;
    frmmodulo.qrproduto.Refresh;
    bar.Position := 0;
    ptermometro.Visible := false;
  end
  else
    application.messagebox('Não Há Alteração de Preços para Hoje, verifique!','Atenção',mb_ok+mb_iconwarning);

  frmmodulo.qrproduto.RecNo := vrecno;

end;

procedure Tfrmproduto_super.AtualizarPreosdeVendasRemarcados1Click(
  Sender: TObject);
begin
  batualizar_estoqueClick(frmproduto_super);
end;

procedure Tfrmproduto_super.ecustoEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
  //PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto_super.evendaEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
  //PageView1.ActivePageIndex := 1;

end;

procedure Tfrmproduto_super.BitBtn12Click(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin


    (***************************** ICMS DE ENTRADA ****************************)

      frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat-
      frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;


      if frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
        if 1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100) <> 0 then
          begin

            frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat :=
            frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat /
            (1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));
          end;

      if frmmodulo.qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_entrada').asfloat :=
        frmmodulo.qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_saida').asfloat :=
        frmmodulo.qrpreco.FieldByName('NOVO_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        frmmodulo.qrpreco.FieldByName('NOVO_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('outros_impostos').asfloat :=
        frmmodulo.qrpreco.FieldByName('NOVO_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
      end;

      if frmmodulo.qrpreco.FieldByName('comissao_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('comissao').asfloat :=
        frmmodulo.qrpreco.FieldByName('NOVO_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('comissao_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('lucro_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('lucro').asfloat :=
        frmmodulo.qrpreco.FieldByName('NOVO_preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('lucro_p').asfloat / 100;
      end;


      frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
       frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;





  end;



end;

procedure Tfrmproduto_super.BitBtn15Click(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin
    if frmmodulo.qrpreco.FieldByName('custo_COMPRA').asfloat <> 0 then
    begin
      frmmodulo.qrpreco.FieldByName('lucro_p').asfloat :=
      frmmodulo.qrpreco.FieldByName('lucro').asfloat * 100 /
      frmmodulo.qrpreco.FieldByName('custo_COMPRA').asfloat;
    end;
    frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;

  end;

end;

procedure Tfrmproduto_super.BitBtn16Click(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin
    frmmodulo.qrpreco.FieldByName('custo_compra').asfloat := frmmodulo.qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat + frmmodulo.qrpreco.FieldByName('frete_ipi_outras').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
        frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;

    if frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
    frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat / (1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));

  end;

end;

procedure Tfrmproduto_super.bpreco_vendaClick(Sender: TObject);
begin
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
  begin
  // custo da compra
  frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat :=
  (frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat +
  frmmodulo.qrpreco.fieldbyname('FRETE').asfloat +
  frmmodulo.qrpreco.fieldbyname('SEGURO').asfloat +
  frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat+
  frmmodulo.qrpreco.fieldbyname('IPI').asfloat)-
  (frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat +
  frmmodulo.qrpreco.fieldbyname('DESCONTO').asfloat);

  frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;

  //total dos custos
  frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat :=
  frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat +
  frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat +
  frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat +
  frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat+
  frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat+
  frmmodulo.qrpreco.fieldbyname('COMISSAO_P').asfloat;

  //preco de venda
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat :=
  frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat/
  ((100-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat+frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat))/100);

  frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat := frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat;

  frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('PIS').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('COFINS').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('COMISSAO').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('COMISSAO_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('LUCRO').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat/100;
  end;
end;

procedure Tfrmproduto_super.bnovopreco_vendaClick(Sender: TObject);
var
  vindice : double;

begin
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
  begin
  //preco de venda
  vindice := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat/frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
  frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat := 100-((vindice*100)+frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat);
  bpreco_vendaClick(frmproduto_super);
  end;
end;

procedure Tfrmproduto_super.DBEdit68Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
  begin
  frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat/100;

  bpreco_vendaClick(frmproduto_super);
  end;
end;

procedure Tfrmproduto_super.DBEdit69Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
  begin
  frmmodulo.qrpreco.fieldbyname('IPI').asfloat :=
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat/100;
  if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
    bpreco_vendaClick(frmproduto_super);
  end;
end;

procedure Tfrmproduto_super.bnovo_preco_vendaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
    begin
      if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
        begin
          if frmmodulo.qrpreco.FieldByName('NOVO_PRECO_VENDA').AsFloat > 0 then
            bnovopreco_vendaClick(frmproduto_super);
        end;
    end;
end;

procedure Tfrmproduto_super.bpreco_custoClick(Sender: TObject);
begin
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
    begin
  //total dos custos
  frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat :=
  frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat +
  frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat +
  frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat +
  frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat+
  frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat+
  frmmodulo.qrpreco.fieldbyname('COMISSAO_P').asfloat;

  //preco de venda
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat :=
  frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat/
  ((100-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat+frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat))/100);

  frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat := frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat;


  frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('PIS').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('COFINS').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('COMISSAO').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('COMISSAO_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100;

  frmmodulo.qrpreco.fieldbyname('LUCRO').asfloat :=
  frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat/100;
   end;
end;

procedure Tfrmproduto_super.bnovo_preco_custoEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
  novo_preco_custo := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;

end;

procedure Tfrmproduto_super.bnovo_preco_vendaEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
  novo_preco_venda := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;

end;

procedure Tfrmproduto_super.BitBtn9Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
  DBEdit19.SetFocus;
end;

procedure Tfrmproduto_super.ClculodePreo1Click(Sender: TObject);
begin
  BitBtn9Click(frmproduto_super);
end;

procedure Tfrmproduto_super.bremarcacaoClick(Sender: TObject);
var
  vcod_remarcacao : string;
begin
  vcod_remarcacao := emarca.Text;


  if vcod_remarcacao <> '000001' then

    begin

      if Application.MessageBox(pchar('Deseja Atualizar os Produtos do Grupo Remarcação ' + vcod_remarcacao + ' ?'),'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
      begin
      ptermometro.Visible := true;

      query1.Close;
      query1.SQL.Clear;
      query1.SQL.Add('select * from c000026');
      query1.Open;

      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from c000025 where codmarca = '''+vcod_remarcacao+'''');
      query.Open;

      bar.position := 0;
      bar.Max := query.RecordCount;

      query.First;
      while not query.Eof do begin
        if QUERY1.LOCATE('codproduto',query.fieldbyname('codigo').AsString,[loCaseInsensitive]) THEN
          begin
            query1.Edit;
            query1.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat  := frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            query1.fieldbyname('ICMS_ENTRADA_P').asfloat       := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat;
            query1.fieldbyname('ICMS_ENTRADA').asfloat         := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
            query1.fieldbyname('DESCONTO').asfloat             := frmmodulo.qrpreco.fieldbyname('DESCONTO').asfloat;
            query1.fieldbyname('FRETE').asfloat                := frmmodulo.qrpreco.fieldbyname('FRETE').asfloat;
            query1.fieldbyname('SEGURO').asfloat               := frmmodulo.qrpreco.fieldbyname('SEGURO').asfloat;
            query1.fieldbyname('OUTRAS_DESPESAS').asfloat      := frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat;
            query1.fieldbyname('IPI_P').asfloat                := frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat;
            query1.fieldbyname('IPI').asfloat                  := frmmodulo.qrpreco.fieldbyname('IPI').asfloat;
            query1.fieldbyname('CUSTO_COMPRA').asfloat         := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;
            query1.fieldbyname('ICMS_SAIDA_P').asfloat         := frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat;
            query1.fieldbyname('ICMS_SAIDA').asfloat           := frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA').asfloat;
            query1.fieldbyname('PIS_P').asfloat                := frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat;
            query1.fieldbyname('PIS').asfloat                  := frmmodulo.qrpreco.fieldbyname('PIS').asfloat;
            query1.fieldbyname('COFINS_P').asfloat             := frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat;
            query1.fieldbyname('COFINS').asfloat               := frmmodulo.qrpreco.fieldbyname('COFINS').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat := frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat  := frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL_P').asfloat  := frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL').asfloat    := frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat;
            query1.fieldbyname('COMISSAO_P').asfloat           := frmmodulo.qrpreco.fieldbyname('COMISSAO_P').asfloat;
            query1.fieldbyname('COMISSAO').asfloat             := frmmodulo.qrpreco.fieldbyname('COMISSAO').asfloat;
            query1.fieldbyname('TOTAL_CUSTO_P').asfloat        := frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat;
            query1.fieldbyname('TOTAL_CUSTO').asfloat          := frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat;
            query1.fieldbyname('LUCRO_P').asfloat              := frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat;
            query1.fieldbyname('LUCRO').asfloat                := frmmodulo.qrpreco.fieldbyname('LUCRO').asfloat;
            query1.fieldbyname('PRECO_VENDA').asfloat          := frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat;
            query1.fieldbyname('NOVO_PRECO_VENDA').asfloat     := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            query1.fieldbyname('DATA_ALTERACAO').AsDateTime       := frmmodulo.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
            query1.fieldbyname('NOVO_PRECO_CUSTO').asfloat     := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;
            query1.fieldbyname('PRECO_AUTOMATICO').AsInteger     := frmmodulo.qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger;
            query1.fieldbyname('ALTERA_AUTOMATICO').AsInteger    := frmmodulo.qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger;
          end
        else
          begin
            query1.Insert;
            query1.fieldbyname('codigo').asstring               := frmprincipal.codifica('000026');
            query1.fieldbyname('codproduto').asstring           := query.fieldbyname('codigo').asstring;
            query1.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat   := frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            query1.fieldbyname('ICMS_ENTRADA_P').asfloat        := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat;
            query1.fieldbyname('ICMS_ENTRADA').asfloat          := frmmodulo.qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
            query1.fieldbyname('DESCONTO').asfloat              := frmmodulo.qrpreco.fieldbyname('DESCONTO').asfloat;
            query1.fieldbyname('FRETE').asfloat                 := frmmodulo.qrpreco.fieldbyname('FRETE').asfloat;
            query1.fieldbyname('SEGURO').asfloat                := frmmodulo.qrpreco.fieldbyname('SEGURO').asfloat;
            query1.fieldbyname('OUTRAS_DESPESAS').asfloat       := frmmodulo.qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat;
            query1.fieldbyname('IPI_P').asfloat                 := frmmodulo.qrpreco.fieldbyname('IPI_P').asfloat;
            query1.fieldbyname('IPI').asfloat                   := frmmodulo.qrpreco.fieldbyname('IPI').asfloat;
            query1.fieldbyname('CUSTO_COMPRA').asfloat          := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;
            query1.fieldbyname('ICMS_SAIDA_P').asfloat          := frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat;
            query1.fieldbyname('ICMS_SAIDA').asfloat            := frmmodulo.qrpreco.fieldbyname('ICMS_SAIDA').asfloat;
            query1.fieldbyname('PIS_P').asfloat                 := frmmodulo.qrpreco.fieldbyname('PIS_P').asfloat;
            query1.fieldbyname('PIS').asfloat                   := frmmodulo.qrpreco.fieldbyname('PIS').asfloat;
            query1.fieldbyname('COFINS_P').asfloat              := frmmodulo.qrpreco.fieldbyname('COFINS_P').asfloat;
            query1.fieldbyname('COFINS').asfloat                := frmmodulo.qrpreco.fieldbyname('COFINS').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat := frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat   := frmmodulo.qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL_P').asfloat   := frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL').asfloat     := frmmodulo.qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat;
            query1.fieldbyname('COMISSAO_P').asfloat            := frmmodulo.qrpreco.fieldbyname('COMISSAO_P').asfloat;
            query1.fieldbyname('COMISSAO').asfloat              := frmmodulo.qrpreco.fieldbyname('COMISSAO').asfloat;
            query1.fieldbyname('TOTAL_CUSTO_P').asfloat         := frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat;
            query1.fieldbyname('TOTAL_CUSTO').asfloat           := frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO').asfloat;
            query1.fieldbyname('LUCRO_P').asfloat               := frmmodulo.qrpreco.fieldbyname('LUCRO_P').asfloat;
            query1.fieldbyname('LUCRO').asfloat                 := frmmodulo.qrpreco.fieldbyname('LUCRO').asfloat;
            query1.fieldbyname('PRECO_VENDA').asfloat           := frmmodulo.qrpreco.fieldbyname('PRECO_VENDA').asfloat;
            query1.fieldbyname('NOVO_PRECO_VENDA').asfloat      := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            query1.fieldbyname('DATA_ALTERACAO').AsDateTime     := frmmodulo.qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
            query1.fieldbyname('NOVO_PRECO_CUSTO').asfloat      := frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;
            query1.fieldbyname('PRECO_AUTOMATICO').AsInteger    := frmmodulo.qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger;
            query1.fieldbyname('ALTERA_AUTOMATICO').AsInteger   := frmmodulo.qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger;
          end;

        query1.Post;
        query.Next;

        bar.Position := bar.position + 1;

      end;
    end;
    end;

    bar.Position := 0;
    ptermometro.Visible := false;

end;

procedure Tfrmproduto_super.ProdutosSemPreodeVenda1Click(Sender: TObject);
begin

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.SQL.clear;
  //frmmodulo.qrproduto.SQL.add('select * from c000025 where precovenda = 0');
  frmmodulo.qrproduto.SQL.add('select * from c000025 where precovenda = 0 or precovenda < precocusto');
  frmmodulo.qrproduto.Open;

  if frmmodulo.qrproduto.RecordCount > 0 then
    begin
      frmproduto_sempreco := tfrmproduto_sempreco.create(self);
      frmproduto_sempreco.showmodal;
    end;

  frmmodulo.qrPRODUTO.close;
  frmmodulo.qrPRODUTO.SQL.clear;
  frmmodulo.qrPRODUTO.SQL.add('select * from c000025 order by produto');
  frmmodulo.qrPRODUTO.open;
  frmmodulo.qrPRODUTO.first;

  combocodbarra.Text := frmmodulo.qrprodutoCODBARRA.AsString;

  pficha.Enabled := false;
  bincluir.SetFocus;

end;

procedure Tfrmproduto_super.ransfernciadeMercadoria1Click(Sender: TObject);
begin
  frmtransferencia_menu := Tfrmtransferencia_menu.create(self);
  frmtransferencia_menu.showmodal;
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
