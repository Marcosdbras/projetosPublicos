unit produto;

interface

uses                                                                                                                                      
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, DB, AdvMenus,
  AdvMenuStylers, ExtDlgs, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Menus, RzButton, RzRadChk, RzDBChk, AdvToolBar, AdvGlowButton,
  RzEdit, RzBtnEdt, AdvShapeButton, wwdblook,
  Wwdbdlg, ComCtrls, Grids, Wwdbigrd, Wwdbgrid, rxtooledit, rxcurredit,
  RXDBCtrl, RzDBEdit, RzDBBnEd, wwdbedit, Wwdotdot, Wwdbcomb,
  Mask, TFlatPanelUnit, PageView, TeEngine, Series, TeeProcs, Chart,
  RzPanel;

type
  Tfrmproduto = class(TForm)
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
    qrcomposicao_produto: TZQuery;
    qrcomposicao_produtoCODIGO: TStringField;
    qrcomposicao_produtoCODPRODUTO: TStringField;
    qrcomposicao_produtoQTDE: TFloatField;
    qrproduto_loc: TZQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    qrcomposicao_produtoPRODUTO: TStringField;
    qrcomposicao_produtoprod: TStringField;
    qrinfnutricional_produto: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    query: TZQuery;
    qradic: TZQuery;
    dsadic: TDataSource;
    qrcodbarra: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    pop_barra: TPopupMenu;
    excluircodigodebarra1: TMenuItem;
    gravarcodigodebarra1: TMenuItem;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    Label6: TLabel;
    Label10: TLabel;
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
    Bevel7: TBevel;
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
    qrestoque: TZQuery;
    Bevel10: TBevel;
    dsrentabilidade: TDataSource;
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
    Indstrializao1: TMenuItem;
    N1: TMenuItem;
    Inventrio1: TMenuItem;
    N2: TMenuItem;
    Servios1: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    Receitas1: TMenuItem;
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
    qrprodutoSITUACAO: TIntegerField;
    ConsultaSerial1: TMenuItem;
    MovimentarEstoque1: TMenuItem;
    qrduplo: TZQuery;
    batualiza_estoque: TBitBtn;
    bcalcula_precovenda: TBitBtn;
    bcalcula_precocusto: TBitBtn;
    bpreco_custo: TBitBtn;
    bpreco_venda: TBitBtn;
    bnovopreco_venda: TBitBtn;
    AtualizarPreosdeVendasRemarcados1: TMenuItem;
    QUERY1: TZQuery;
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
    ZQuery1: TZQuery;
    qrcondicional: TZQuery;
    dscondicional: TDataSource;
    bremarcacao: TBitBtn;
    NFeExportarProdutoSelecionado1: TMenuItem;
    NFeExportartodososPrdutos1: TMenuItem;
    N7: TMenuItem;
    qrprodutoPISCOFINS: TStringField;
    qrprodutoREFERENCIA_FORNECEDOR: TStringField;
    bfornecedor_codigo: TAdvGlowButton;
    qrprodutoINCIDENCIA_PISCOFINS: TStringField;
    PageView1: TPageView;
    PageSheet9: TPageSheet;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    Bevel8: TBevel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    bfiltro_entrada: TAdvGlowButton;
    combo_entrada: TComboBox;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    wwDBGrid4: TwwDBGrid;
    PageSheet12: TPageSheet;
    Bevel9: TBevel;
    wwDBGrid5: TwwDBGrid;
    GroupBox14: TGroupBox;
    Label9: TLabel;
    di_saida: TDateEdit;
    df_saida: TDateEdit;
    bfiltro_saida: TAdvGlowButton;
    combo_saida: TComboBox;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    PageSheet7: TPageSheet;
    ppreco: TPanel;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    PageSheet5: TPageSheet;
    PageSheet8: TPageSheet;
    PageSheet1: TPageSheet;
    PageSheet6: TPageSheet;
    graf_venda: TChart;
    Series1: TBarSeries;
    Chart1: TChart;
    BarSeries1: TBarSeries;
    qrprodutoIAT: TStringField;
    qrprodutoIPPT: TStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TStringField;
    qrprodutoFLAG_SIS: TStringField;
    qrprodutoFLAG_ACEITO: TStringField;
    qrprodutoFLAG_EST: TStringField;
    pficha3: TPanel;
    Bevel3: TBevel;
    Label1: TLabel;
    Label3: TLabel;
    Label58: TLabel;
    Label5: TLabel;
    Label2: TLabel;
    Label8: TLabel;
    Label36: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    label7: TLabel;
    Bevel4: TBevel;
    Label13: TLabel;
    DBEdit1: TDBEdit;
    combo_tipo: TwwDBComboBox;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    egrupo: TRzDBButtonEdit;
    DBEdit30: TDBEdit;
    esubgrupo: TRzDBButtonEdit;
    DBEdit8: TDBEdit;
    efornecedor: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    emarca: TRzDBButtonEdit;
    DBEdit63: TDBEdit;
    GroupBox7: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox8: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    DBEdit11: TDBEdit;
    DBEdit16: TDBEdit;
    gestoque: TGroupBox;
    Label11: TLabel;
    eestoque: TRzDBNumericEdit;
    fdados_codbarra: TFlatPanel;
    Bevel5: TBevel;
    grid_barra: TwwDBGrid;
    bexclui_barra: TAdvGlowButton;
    bgrava_barra: TAdvGlowButton;
    RzDBCheckBox1: TRzDBCheckBox;
    pexporta: TFlatPanel;
    COMBOCODBARRA: TDBEdit;
    pbarra: TFlatPanel;
    INIMAGE: TImage;
    pficha2: TPanel;
    Label90: TLabel;
    Label80: TLabel;
    Label57: TLabel;
    Label56: TLabel;
    Label35: TLabel;
    Label18: TLabel;
    Label16: TLabel;
    Label14: TLabel;
    GroupBox16: TGroupBox;
    Label12: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    RzDBNumericEdit4: TRzDBNumericEdit;
    DBDateEdit1: TDBDateEdit;
    DBDateEdit2: TDBDateEdit;
    GroupBox12: TGroupBox;
    Label64: TLabel;
    DBEdit60: TDBEdit;
    GroupBox11: TGroupBox;
    Label17: TLabel;
    Label59: TLabel;
    DBEdit17: TDBEdit;
    DBEdit10: TDBEdit;
    FlatPanel2: TFlatPanel;
    Image3: TImage;
    FlatPanel18: TFlatPanel;
    restoque: TRxCalcEdit;
    FlatPanel16: TFlatPanel;
    rsaida: TRxCalcEdit;
    FlatPanel15: TFlatPanel;
    rentrada: TRxCalcEdit;
    FlatPanel14: TFlatPanel;
    RINICIAL: TRxCalcEdit;
    FlatPanel13: TFlatPanel;
    Image6: TImage;
    FlatPanel11: TFlatPanel;
    Image4: TImage;
    FlatPanel1: TFlatPanel;
    Image1: TImage;
    FLAG_SIS: TDBEdit;
    FLAG_EST: TDBEdit;
    FLAG_ACEITO: TDBEdit;
    DBMemo1: TDBMemo;
    DBEdit62: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit15: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    Bevel6: TBevel;
    pficha1: TPanel;
    ptermometro: TFlatPanel;
    Label88: TLabel;
    batualizar_estoque: TBitBtn;
    bar: TProgressBar;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    bitbtn7: TAdvGlowButton;
    ppreco_automatico: TDBCheckBox;
    pdtaltera: TFlatPanel;
    GroupBox10: TGroupBox;
    DBText1: TDBText;
    Label87: TLabel;
    Label70: TLabel;
    GroupBox4: TGroupBox;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Bevel16: TBevel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Bevel17: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    Bevel18: TBevel;
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
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit32: TDBEdit;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel2: TBevel;
    Bevel15: TBevel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit64: TDBEdit;
    DBEdit65: TDBEdit;
    DBEdit66: TDBEdit;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    FlatPanel12: TFlatPanel;
    Label86: TLabel;
    DBEdit69: TDBEdit;
    bnovo_preco_venda: TRzDBNumericEdit;
    bnovo_preco_custo: TRzDBNumericEdit;
    batu: TAdvGlowButton;
    pficha4: TPanel;
    pgrade: TPanel;
    wwDBGrid1: TwwDBGrid;
    DBCheckBox2: TDBCheckBox;
    bitbtn8: TAdvGlowButton;
    bitbtn11: TAdvGlowButton;
    pficha5: TPanel;
    wwDBGrid2: TwwDBGrid;
    Panel6: TPanel;
    Label42: TLabel;
    Label43: TLabel;
    Bevel14: TBevel;
    Label67: TLabel;
    Shape11: TShape;
    Shape12: TShape;
    button3: TAdvGlowButton;
    eserial: TRzEdit;
    DBCheckBox3: TDBCheckBox;
    Panel5: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    Bevel19: TBevel;
    pficha6: TPanel;
    pcomposicao: TPanel;
    Label34: TLabel;
    ereceita: TDBEdit;
    blocreceita: TBitBtn;
    DBEdit61: TDBEdit;
    GroupBox6: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    comboproduto: TwwDBLookupComboDlg;
    button1: TAdvGlowButton;
    button2: TAdvGlowButton;
    pficha7: TPanel;
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
    ptampainfnutricional: TFlatPanel;
    Label44: TLabel;
    bitbtn6: TAdvGlowButton;
    pficha8: TPanel;
    PFOTO: TPanel;
    Label48: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Image2: TImage;
    pficha9: TPanel;
    Panel3: TPanel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label37: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel4: TPanel;
    Label15: TLabel;
    elocproduto: TRzButtonEdit;
    eproduto: TRzEdit;
    erentabilidade: TRzNumericEdit;
    brent_gravar: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    rtotal_rent: TRzNumericEdit;
    wwDBGrid6: TwwDBGrid;
    Label55: TLabel;
    check_rentabilidade: TDBCheckBox;
    Bevel11: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    rComposicao: TRzGroupBox;
    DBEdit70: TDBEdit;
    DBEdit71: TDBEdit;
    qrprodutoCOMPOSICAO1: TStringField;
    qrprodutoCOMPOSICAO2: TStringField;
    eNCM: TRzDBButtonEdit;
    qrprodutoCSOSN: TStringField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    qrprodutoSITA: TStringField;
    PageSheet13: TPageSheet;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    Label73: TLabel;
    Label93: TLabel;
    Label95: TLabel;
    Label106: TLabel;
    Label96: TLabel;
    Label60: TLabel;
    Label92: TLabel;
    Label94: TLabel;
    Label89: TLabel;
    Label91: TLabel;
    ealiq: TRxDBCalcEdit;
    dbedit13: TRzDBButtonEdit;
    wwDBComboBox2: TwwDBComboBox;
    RxDBCalcEdit2: TRxDBCalcEdit;
    ecsosn: TRzDBButtonEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    RxDBCalcEdit1: TRxDBCalcEdit;
    wwDBComboBox3: TwwDBComboBox;
    wwDBComboBox4: TwwDBComboBox;
    ecombo_piscofins: TwwDBComboBox;
    wwDBComboBox1: TwwDBComboBox;
    Bevel20: TBevel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Bevel21: TBevel;
    BaixarTabelaNCM1: TMenuItem;
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
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoEnter(Sender: TObject);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure BitBtn11Click(Sender: TObject);
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
    procedure Indstrializao1Click(Sender: TObject);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure bgrava_barraClick(Sender: TObject);
    procedure GravarCodigodeBarra1Click(Sender: TObject);
    procedure Servios1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure egrupoKeyPress(Sender: TObject; var Key: Char);
    procedure egrupoButtonClick(Sender: TObject);
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
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
    procedure QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
    procedure qrcomposicao_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrcomposicao_produtoBeforeEdit(DataSet: TDataSet);
    procedure check_rentabilidadeClick(Sender: TObject);
    procedure QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
    procedure brent_gravarClick(Sender: TObject);
    procedure elocprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure elocprodutoButtonClick(Sender: TObject);
    procedure erentabilidadeKeyPress(Sender: TObject; var Key: Char);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure PageView1Change(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure qrprecoBeforeInsert(DataSet: TDataSet);
    procedure qrprecoBeforeEdit(DataSet: TDataSet);
    procedure batuClick(Sender: TObject);
    procedure eserialChange(Sender: TObject);
    procedure ConsultaSerial1Click(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure qrprodutoBeforeEdit(DataSet: TDataSet);
    procedure bpreco_custoClick(Sender: TObject);
    procedure bpreco_vendaClick(Sender: TObject);
    procedure bnovopreco_vendaClick(Sender: TObject);
    procedure bcalcula_precocustoClick(Sender: TObject);
    procedure bcalcula_precovendaClick(Sender: TObject);
    procedure batualiza_estoqueClick(Sender: TObject);
    procedure batualizar_estoqueClick(Sender: TObject);
    procedure ppreco_automaticoExit(Sender: TObject);
    procedure bnovo_preco_custoEnter(Sender: TObject);
    procedure bnovo_preco_custoExit(Sender: TObject);
    procedure bnovo_preco_vendaEnter(Sender: TObject);
    procedure bnovo_preco_vendaExit(Sender: TObject);
    procedure AtualizarPreosdeVendasRemarcados1Click(Sender: TObject);
    procedure evendaEnter(Sender: TObject);
    procedure evendaExit(Sender: TObject);
    procedure ecustoEnter(Sender: TObject);
    procedure ecustoExit(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit68Exit(Sender: TObject);
    procedure DBEdit69Exit(Sender: TObject);
    procedure dsprecoDataChange(Sender: TObject; Field: TField);
    procedure DBCheckBox2Click(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit11KeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit2Exit(Sender: TObject);
    procedure bremarcacaoClick(Sender: TObject);
    procedure NFeExportarProdutoSelecionado1Click(Sender: TObject);
    procedure NFeExportartodososPrdutos1Click(Sender: TObject);
    procedure DBEdit29KeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoBeforeInsert(DataSet: TDataSet);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure bfornecedor_codigoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure DBEdit23Exit(Sender: TObject);
    procedure DBEdit24Exit(Sender: TObject);
    procedure DBEdit25Exit(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure eNCMButtonClick(Sender: TObject);
    procedure eNCMKeyPress(Sender: TObject; var Key: Char);
    procedure ecsosnButtonClick(Sender: TObject);
    procedure ecsosnKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13Exit(Sender: TObject);
    procedure RxDBCalcEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure ecustoKeyPress(Sender: TObject; var Key: Char);
    procedure evendaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit71KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit17KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit70KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ecombo_piscofinsKeyPress(Sender: TObject; var Key: Char);
    procedure BaixarTabelaNCM1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto: Tfrmproduto;
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
  edicao_preco : boolean;

  PRECO_VENDA_ANTERIORX : REAL;
  
implementation

uses modulo, principal, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, industrializacao,
  inventario, baixa_estoque, servico, loc_aliquota, Produto_consultaserial,
  produto_movimentar, unNFe2, produto_serial_ficha, fornecedor_codigo, Ncm,
  xloc_csosn, baixarncm;

{$R *.dfm}


procedure Tfrmproduto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  IF (BUSCA_PRODUTO = 1) OR (BUSCA_PRODUTO = 2) THEN
  BEGIN
     FRMMODULO.QRPRODUTO.OPEN;
     FRMMODULO.QRPRODUTO.REFRESH;
  END;

   BUSCA_PRODUTO := 0;
  qrproduto.close;
  action := cafree;

end;

procedure Tfrmproduto.FormShow(Sender: TObject);
begin
 di_entrada.Text := '01/'+copy(datetostr(date),4,7);
 df_entrada.date := frmprincipal.UltimoDiaMes(date);

 di_saida.Text := '01/'+copy(datetostr(date),4,7);
 df_saida.date := frmprincipal.UltimoDiaMes(date);

  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;
  ptampainfnutricional.Align := alClient;

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

  frmmodulo.qrCSOSN.close;
  frmmodulo.qrCSOSN.sql.clear;
  frmmodulo.qrCSOSN.SQL.add('select * from CSOSN order by codigo');
  frmmodulo.qrCSOSN.open;
  frmmodulo.qrCSOSN.IndexFieldNames := 'codigo';

  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.open;

  pgravar.visible := false;
  pgravar.Align := alClient;
  fdados_codbarra.Top := 29;
  fdados_codbarra.left := 126;

  batualiza_estoqueClick(frmproduto);

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  pficha6.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;

  if busca_produto = 1 then
    begin
      qrproduto.close;
      qrproduto.SQL.clear;
      qrproduto.SQL.add('select * from c000025 where codigo = '''+busca_produto_codigo+'''');
      qrproduto.open;
      balterarClick(frmproduto);
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

  if frmmodulo.qrconfig.FieldByName('IND_MOSTRA_COMPOSICAO').asinteger = 1 then // Industrialização
    rComposicao.Visible := True;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    Label7.Caption := 'Cód.Remarc.:';

  if (frmmodulo.qrfilial.FieldByName('crt').asinteger = 1) or
     (frmmodulo.qrfilial.FieldByName('crt').asinteger = 2) then
  begin
     ecsosn.Enabled  := true;
     Label95.Enabled := true;
  end
  else
  begin
     ecsosn.Enabled  := false;
     Label95.Enabled := false;
  end;

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat   := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

  //eestoque.DisplayFormat := mascara_qtde;
  bnovo_preco_custo.DisplayFormat := mascara_valor;
  bnovo_preco_venda.DisplayFormat := mascara_valor;

  if qrprodutoPISCOFINS.AsString = 'S' then ecombo_piscofins.ItemIndex := 0 else ecombo_piscofins.ItemIndex := 1;

end;

procedure Tfrmproduto.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto.bincluirClick(Sender: TObject);
begin

  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;
  pgrade.Enabled := true;

  pcomposicao.Enabled := true;
  pnutricional.Enabled := true;


  qrproduto.insert;
  qrproduto.FieldByName('unidade').AsString := 'UN';
  qrproduto.fieldbyname('estoque').asfloat := 0;
  qrproduto.FieldByName('cst').AsString := '000';
  qrproduto.FieldByName('aliquota').asinteger := 17;
  qrproduto.fieldbyname('situacao').asinteger := 0;

  qrproduto.FieldByName('usa_balanca').asinteger := 2;
  qrproduto.FieldByName('usa_serial').asinteger := 0;
  qrproduto.FieldByName('usa_grade').asinteger := 0;
  qrproduto.fieldbyname('tipo').asstring := 'VENDA';
  qrproduto.FieldByName('iat').AsString := 'T';
  qrproduto.FieldByName('ippt').AsString := 'T';
  qrproduto.FieldByName('FLAG_SIS').AsString := 'S';
  wwDBComboBox2.Value := 'T';
  wwDBComboBox1.Value := 'NENHUMA';

         if (frmmodulo.qrfilial.FieldByName('permite_credito').asinteger = 1) then
       begin
          ecsosn.Text := '101';
       end
       else
          ecsosn.Text := '102';

  qrproduto.fieldbyname('data_inventario').AsDateTime := strtodate('31/12/'+frmPrincipal.zerarcodigo(inttostr(strtoint(copy(datetostr(date),7,4))-1),4));
  qrproduto.fieldbyname('custo_inventario').AsFloat := 0;
  qrproduto.fieldbyname('estoque_inventario').AsFloat := 0;

  qrproduto.fieldbyname('codigo').asstring := frmprincipal.codifica('000025');

  EDATA_CADASTRO.Date := DATE;

  estoque_anterior := 0;

  pficha1.enabled := true;
  pficha2.enabled := true;
  pficha3.enabled := true;
  pficha4.enabled := true;
  pficha5.enabled := true;
  pficha6.enabled := true;
  pficha7.enabled := true;
  pficha8.enabled := true;
  pficha9.enabled := true;
  
  combocodbarra.SETFOCUS;
  combo_tipo.TEXT:='VENDA';
  pageview1.ActivePageindex := 0;
  pageview2.ActivePageindex := 0;

end;

procedure Tfrmproduto.balterarClick(Sender: TObject);
begin

  pficha1.enabled := true;
  pficha2.enabled := true;
  pficha3.enabled := true;
  pficha4.enabled := true;
  pficha5.enabled := true;
  pficha6.enabled := true;
  pficha7.enabled := true;
  pficha8.enabled := true;
  pficha9.enabled := true;

  IF dbedit1.Text <> '' THEN
  BEGIN
  //pageview1.ActivePageindex := 0;
  //pobservacao.Enabled := true;
  ptampapreco.visible := false;
  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;
  pgrade.Enabled := true;
  //pserial.Enabled := true;
  pcomposicao.Enabled := true;
  pnutricional.Enabled := true;


    //eestoque.Top := 36;
    //baltera.Visible := true;
    //gestoque.Enabled := false;

   estoque_anterior := qrproduto.fieldbyname('estoque').asfloat;
   preco_custo_anterior := qrproduto.fieldbyname('precocusto').asfloat;
   preco_venda_anterior := qrproduto.fieldbyname('precovenda').asfloat;

   qrPRODUTO.Edit;
    combocodbarra.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;

    if PageView1.ActivePageIndex = 1 then
      begin
        if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
          qrpreco.Edit;
      end;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;

Procedure Tfrmproduto.bexcluirClick(Sender: TObject);
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

procedure Tfrmproduto.blocalizarClick(Sender: TObject);
begin
  frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.bitbtn1.Enabled := false;
  frmxloc_PRODUTO.balterar.Enabled := false;
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    qrproduto.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
    pageview1.ActivePageindex := 0;
  end;


end;

procedure Tfrmproduto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  if qrproduto.FieldByName('PRECOVENDA').AsFloat = 0 then
    begin
      showmessage('Favor Informar O Preço de Venda!');
      evenda.SetFocus;
      exit;
    end;

  if qrproduto.FieldByName('ESTOQUE').Value = null then qrproduto.FieldByName('ESTOQUE').AsFloat := 0;

      if DBEdit2.Text = '' then
      begin
        showmessage('Favor Informar O Nome do Produto!');
        DBEdit2.SetFocus;
        exit;
      end;

  if qrpreco.state in [dsinsert, dsedit] then
   begin

     IF QRPRECO.RECORDCOUNT > 0 THEN
     BEGIN

          if qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
            qrpreco.FieldByName('DATA_ALTERACAO').AsDateTime := DATE;


          qrpreco.Post;

        if     Label7.Caption = 'Cód.Remarc.:' then  bremarcacaoClick(frmproduto);
     END;

   end;

  if (frmmodulo.qrinfnutricional_produto.State = dsedit) or (frmmodulo.qrinfnutricional_produto.State = dsinsert) then frmmodulo.qrinfnutricional_produto.Post;

  if ecombo_piscofins.Text = '' then
    begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
        begin
          qrproduto.FieldByName('PISCOFINS').AsString := 'N';
        end;
    end;

  if     Label7.Caption = 'Cód.Remarc.:' then
  begin

        if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
        begin


         if ( qrproduto.FieldByName('precovenda').AsFloat <> preco_venda_anterior ) or (qrproduto.State = dsinsert) then
          begin
            qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;
            qrproduto.FieldByName('PRECOVENDA_NOVO').AsFloat := qrproduto.FieldByName('PRECOVENDA').AsFloat;

          end;
        if (qrproduto.State = dsinsert) then
          qrproduto.fieldbyname('codigo').asstring := frmprincipal.codifica('000025');

         qrproduto.post;

        end;
  end
  else
  begin
     qrproduto.post;

  end;

  frmmodulo.Conexao.Commit;

  qrestoque.Refresh;

        ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
        ldata_venda.Caption := qrestoque.fieldbyname('ultima_saida').asstring;
        lnf.Caption := qrproduto.fieldbyname('notafiscal').asstring;
        rinicial.Value := qrestoque.fieldbyname('estoque_inicial').asfloat;
        rentrada.Value := qrestoque.fieldbyname('entradas').asfloat;
        rsaida.Value := qrestoque.fieldbyname('saidas').asfloat;
        restoque.Value := qrestoque.fieldbyname('estoque_atual').asfloat;

  if PageView1.ActivePageIndex <> 1 then
     PageView1.ActivePageindex := 0;
     PageView2.ActivePageIndex := 0;

  batualiza_estoqueClick(frmproduto);

  preco_custo_anterior := qrproduto.fieldbyname('precocusto').AsFloat;
  preco_venda_anterior := qrproduto.fieldbyname('precovenda').AsFloat;

  bincluir.setfocus;

  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  pficha6.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;

    edicao_preco := false;

    if frmmodulo.qrproduto.State = dsinsert then
       frmprincipal.log(codigo_usuario,'PRODUTO',qrproduto.fieldbyname('codigo').asstring,'INCLUIU',qrPRODUTO.fieldbyname('PRODUTO').asstring);

end;

procedure Tfrmproduto.bcancelarClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then qrpreco.cancel;

  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
    begin
      pageview1.ActivePageindex := 0;
      pageview2.ActivePageindex := 0;
      if (qrproduto.State = dsinsert) then
        begin
          //frmprincipal.transMestre.active := true;
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000025''');
          frmprincipal.qrmestre.execsql;
          //frmprincipal.transMestre.commit;
          end;
      qrproduto.cancel;
    end;

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

  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pficha5.enabled := false;
  pficha6.enabled := false;
  pficha7.enabled := false;
  pficha8.enabled := false;
  pficha9.enabled := false;

    edicao_preco := false;

end;

procedure Tfrmproduto.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto.edata_cadastroEnter(Sender: TObject);
begin

 tedit(sender).Color := $00A0FAF8;
 //PageView1.ActivePageIndex := 0;

 if (qrproduto.state = dsinsert) or (qrproduto.state = dsedit) then
 begin
    if edata_cadastro.text = '  /  /    ' then  EDATA_CADASTRO.Date := DATE;
 end;

end;

procedure Tfrmproduto.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto.DBEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto.DBEdit1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
 if key = #13 then perform(wm_nextdlgctl,0,0);
 if ecsosn.Enabled = False then
 begin
   perform(wm_nextdlgctl,0,0);
   //DBMemo1.SetFocus;
 end;
 
end;

procedure Tfrmproduto.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto.Edit1Exit(Sender: TObject);
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

procedure Tfrmproduto.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;

  end;
end;

procedure Tfrmproduto.DBMemo1KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmproduto.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then RzDBNumericEdit4.setfocus;
end;

procedure Tfrmproduto.esubgrupoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
try
  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
except
end;

end;

procedure Tfrmproduto.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  qrproduto.fieldbyname('codALIQUOTA').asstring := frmmodulo.qrALIQUOTA.fieldbyname('codigo').asstring;
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;


end;

procedure Tfrmproduto.ealiquotaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if eALIQUOTA.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrALIQUOTA,eALIQUOTA.text,'codigo') then blocALIQUOTAclick(frmproduto) else begin PageView1.ActivePageIndex := 0; dbmemo1.SetFocus; end;
    end
    else
      blocALIQUOTA.SetFocus;
  end;
end;

procedure Tfrmproduto.BitBtn7Click(Sender: TObject);
begin

  qrpreco.close;
  qrpreco.SQL.clear;
  qrpreco.sql.Add('select * from c000026 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
  qrpreco.open;

  qrpreco.insert;
  qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
  qrpreco.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
  qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  qrpreco.fieldbyname('PRECO_VENDA').asfloat := qrproduto.fieldbyname('PRECOVENDA').asfloat;
  qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime := DATE;
  qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger := 1;
  qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger := 2;
  qrpreco.Post;

  ptampapreco.Visible := false;
  dbedit19.setfocus;

  edicao_preco := true;
end;

procedure Tfrmproduto.BitBtn8Click(Sender: TObject);
begin
  TRY
  FRMMODULO.qrgrade_subgrupo.CLOSE;
  FRMMODULO.qrgrade_subgrupo.SQL.Clear;
  FRMMODULO.qrgrade_subgrupo.SQL.ADD('SELECT * FROM C000020 WHERE CODSUBGRUPO = '''+qrproduto.FIELDBYNAME('CODSUBGRUPO').ASSTRING+''' ORDER BY CODIGO');
  FRMMODULO.qrgrade_subgrupo.Open;
  IF FRMMODULO.qrgrade_subgrupo.RecordCount > 0 THEN
  BEGIN
     frmmodulo.qrgrade_subgrupo.First;
     while not frmmodulo.qrgrade_subgrupo.Eof do
     begin
       frmmodulo.qrgrade_produto.Insert;
       frmmodulo.qrgrade_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000021');
       frmmodulo.qrgrade_produto.FieldByName('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
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

procedure Tfrmproduto.BitBtn11Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir GRADE',4) then
  begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('DELETE from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
       frmmodulo.qrgrade_produto.EXECSQL;

       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;


       
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto.wwDBGrid2DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  if frmmodulo.qrserial_produto.FieldByName('situacao').asinteger = 2 then
  begin
    wwDbgrid2.canvas.Brush.Color:= clred;
    wwDbgrid2.Canvas.Pen.Color:= clWhite;
  end;
  if frmmodulo.qrserial_produto.FieldByName('situacao').asinteger = 3 then
  begin
    wwDbgrid2.canvas.Brush.Color:= $00A0FAF8;
    wwDbgrid2.Canvas.Pen.Color:= clblack;
  end;
  wwDbgrid2.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmproduto.Button3Click(Sender: TObject);
begin
  if frmmodulo.qrserial_produto.RecordCount = 0 then exit;


  if frmprincipal.autentica('Baixar Serial',4) then
  begin
    case frmmodulo.qrserial_produto.FieldByName('situacao').asinteger of
    1:
    begin
      If application.MessageBox('Tem certeza que deseja BAIXAR este serial do Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        frmmodulo.qrserial_produto.edit;
        frmmodulo.qrserial_produto.fieldbyname('situacao').asinteger := 3;
        frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := 'BAIXADO - '+codigo_usuario;
        FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').ASDATETIME := DATE;
        frmmodulo.qrserial_produto.Post;

       (****************************************)


                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 5;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  codigo_usuario;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
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
        (****************************************)
                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 8;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  codigo_usuario;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := qrproduto.fieldbyname('precocusto').asfloat;
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

procedure Tfrmproduto.DBCheckBox3Click(Sender: TObject);
begin
  if dbcheckbox3.checked then
  begin
  if (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
     if qrproduto.FieldByName('usa_grade').asinteger = 1 then
     begin
       application.MessageBox('Este produto utiliza grade de preços, impossível usar controle de seriais!','Atenção',mb_ok+mb_iconwarning);
       dbcheckbox3.Checked := false;
     end ;

  end;
  end;
end;

procedure Tfrmproduto.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.showmodal;
end;

procedure Tfrmproduto.Regies1Click(Sender: TObject);
begin
LMDButton1.Click;
end;

procedure Tfrmproduto.blocreceitaClick(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.showmodal;
  if qrproduto.State <> dsedit then
  if qrproduto.state <> dsinsert then
     qrproduto.edit;



  qrproduto.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  wwdbgrid3.setfocus;
end;

procedure Tfrmproduto.ereceitaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('codreceita').asstring := frmprincipal.zerarcodigo(ereceita.text,6);
    if ereceita.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrreceita,ereceita.text,'codigo') then blocreceitaclick(frmproduto) else wwdbgrid3.setfocus
    else
      blocreceita.SetFocus;
  end;
end;

procedure Tfrmproduto.qrcomposicao_produtoBeforePost(DataSet: TDataSet);
begin
  qrcomposicao_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000027');
  qrcomposicao_produto.fieldbyname('produto').asstring := qrproduto.FIELDBYNAME('CODIGO').ASSTRING;


end;

procedure Tfrmproduto.Button1Click(Sender: TObject);
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

procedure Tfrmproduto.Button2Click(Sender: TObject);
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

procedure Tfrmproduto.DBEdit40Exit(Sender: TObject);
begin
  tdbedit(sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto.DBEdit42Exit(Sender: TObject);
begin
tedit(sender).Color := clbtnface;
end;

procedure Tfrmproduto.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrinfnutricional_produto.insert;
  frmmodulo.qrinfnutricional_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000028');
  frmmodulo.qrinfnutricional_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;

  ptampainfnutricional.Visible := false;
  dbedit39.setfocus;
end;

procedure Tfrmproduto.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if qrproduto.state <> dsinsert then
    if qrproduto.state <> dsedit then
      qrproduto.edit;
    bgravar.setfocus;

  end;
end;

procedure Tfrmproduto.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    if qrproduto.State <> dsedit then
    if qrproduto.state <> dsinsert then
    qrproduto.edit;
    qrproduto.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmproduto.SpeedButton2Click(Sender: TObject);
begin
    if qrproduto.State <> dsedit then
    if qrproduto.state <> dsinsert then
    qrproduto.edit;

  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto.SpeedButton3Click(Sender: TObject);
begin
    if qrproduto.State <> dsedit then
    if qrproduto.state <> dsinsert then
    qrproduto.edit;
  image2.Picture := nil;
  qrproduto.FIELDBYNAME('FOTO').ASSTRING := '';
end;

procedure Tfrmproduto.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto.BitBtn14Click(Sender: TObject);
begin
//VERIFICAR
end;

procedure Tfrmproduto.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Atualizar Produtos',4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
    qrproduto.refresh;
  end;
end;

procedure Tfrmproduto.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.SQL.Clear;
  query.sql.add('select sum(estq.estoque_atual * prod.precocusto) custo, sum(estq.estoque_atual * precovenda) venda from c000025 prod, c000100 estq');
  query.sql.add('where prod.codigo = estq.codproduto');
  query.open;


  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.label1.caption := formatfloat('###,###,##0.00',query.fieldbyname('custo').asfloat);
  frmproduto_total.label2.caption := formatfloat('###,###,##0.00',query.fieldbyname('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.ShowModal;
end;

procedure Tfrmproduto.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_atualizapreco := tfrmproduto_atualizapreco.create(self);
  frmproduto_atualizapreco.showmodal;

  qrproduto.refresh;
end;

procedure Tfrmproduto.DBEdit13KeyPress(Sender: TObject; var Key: Char);
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
            ealiq.SetFocus;
          END
          ELSE
          BEGIN
            FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
            FRMXLOC_CST.SHOWMODAL;
            qrproduto.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
            ealiq.SETFOCUS;
          END;
        end
        else
          dbedit13ButtonClick(frmproduto);
      end;

  end
  else
  begin
     if (key in (['0'..'9'])) or (key = #8) then
        //
     else
       abort;
  end;


  
end;

procedure Tfrmproduto.ealiqExit(Sender: TObject);
begin
  if ( ealiq.value <> 0.00 )  and
     ( ealiq.value <> 7.00 )  and
     ( ealiq.value <> 12.00 ) and
     ( ealiq.value <> 17.00 ) and
     ( ealiq.value <> 18.00 ) and
     ( ealiq.value <> 19.00 ) and
     ( ealiq.value <> 25.00 ) and
     ( ealiq.value <> 26.00 ) and
     ( ealiq.value <> 27.00 ) and
     ( ealiq.value <> 33.00 ) and
     ( ealiq.value <> 41.00 ) then
    begin
      application.messagebox('Aliquota fora da faixa!','Atenção',mb_ok+mb_iconwarning);
      ealiq.Value := 0;
      ealiq.SetFocus;
      exit;
    end;
  tedit(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmproduto.ealiqKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    //PageView1.ActivePageIndex := 0;
    //PageView2.ActivePageIndex := 0;
    if gestoque.visible then
      begin
        RxDBCalcEdit2.setfocus;
      end
    else
      begin
        //PageView1.ActivePageIndex := 0;
        RxDBCalcEdit2.setfocus;
      end;
  end;
end;

procedure Tfrmproduto.combo_tipoEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
//PageView1.ActivePageIndex := 0;
end;

procedure Tfrmproduto.combo_tipoExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
DBEdit2.SetFocus;
end;

procedure Tfrmproduto.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edata_cadastro.setfocus;
end;

procedure Tfrmproduto.DBEdit2Exit(Sender: TObject);
var texto : pansichar;
prod : string;
begin

  tedit(sender).Color := clwindow;
  if qrproduto.state = dsinsert then
  begin
    prod := dbedit2.text;
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where upper(produto) = '''+prod+'''');
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
        QRPRODUTO.LOCATE('produto',prod,[loCaseInsensitive]);
        EXIT;
      end;
    end;
  end;


  if qrproduto.state in [dsinsert,dsedit] then
  begin
    qrproduto.fieldbyname('produto').asstring :=
    TrimLeft(qrproduto.fieldbyname('produto').asstring);

  end;


end;

procedure Tfrmproduto.DBEdit7Exit(Sender: TObject);
begin
     if DBEdit7.Text = '' then
          begin
               showmessage('Favor Informar a Unidade do Produto...');
               DBEdit7.SetFocus;
               exit;
          end;

  tedit(sender).color := clwindow;

end;

procedure Tfrmproduto.DBEdit2KeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmproduto.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
  
end;

procedure Tfrmproduto.Indstrializao1Click(Sender: TObject);
begin
  frmindustrializacao := Tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;

end;

procedure Tfrmproduto.Inventrio1Click(Sender: TObject);
begin

        frminventario := tfrminventario.create(application);
        try
          frminventario.showmodal;
        finally
          frminventario.Release;
          frminventario := nil;
        end;

end;

procedure Tfrmproduto.combocodbarraEnter(Sender: TObject);
begin
  TEDIT(sender).color := $00A0FAF8;

end;

procedure Tfrmproduto.combocodbarraExit(Sender: TObject);
var cd,x : string;
begin
  TEDIT(sender).color := clwindow;
{
  if combocodbarra.Text = '' then
  begin
    combocodbarra.Text := inttostr(strtoint(qrprodutoCODIGO.AsString));
  end;

  if Length(Trim(frmPrincipal.somenteNumero(COMBOCODBARRA.Text))) >= 13 then
    begin

      try
        cd := copy(combocodbarra.Text,1,12);
        x := copy(frmPrincipal.somenteNumero(combocodbarra.Text),13,1);
        if x <> '' then
          begin
            if frmprincipal.CalculaDigEAN13(frmPrincipal.somenteNumero(combocodbarra.Text)) = x then pbarra.visible := false
            else
              begin
                //if application.messagebox('Caminho do arquivo para Atualização não encontrado, Deseja Cria-lo?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
                ShowMessage('Código de Barra Inválido!');
                COMBOCODBARRA.SetFocus;
                pbarra.visible := true;
                Exit;
              end;
          end
        else
          fdados_codbarra.Visible := false;

      except
        pbarra.visible := false;
      end;
    end
  else
    begin
      pbarra.visible := false;
    end;

  if combocodbarra.text <> '' then
  begin
   if qrproduto.State = dsinsert then
    begin
      QUERY.CLOSE;
      QUERY.SQL.CLEAR;
      QUERY.SQL.ADD('SELECT CODBARRA FROM C000025 WHERE CODBARRA = '''+combocodbarra.TEXT+'''');
      QUERY.OPEN;
      IF QUERY.RECORDCOUNT > 0 THEN
      BEGIN
        if APPLICATION.MESSAGEBOX('Existe um produto cadastrado com este código de barras! Deseja visualiza-lo?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
       begin
          qrproduto.cancel;
          qrproduto.locate('codbarra',query.fieldbyname('codbarra').asstring,[loCaseInsensitive]);
        end
        else
          combocodbarra.setfocus;
      END;
    end;
  end
  else
  begin
    combocodbarra.Text := inttostr(strtoint(qrproduto.fieldbyname('codigo').asstring));
  end;
  }
end;

procedure Tfrmproduto.combocodbarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto.qrcodbarraBeforePost(DataSet: TDataSet);
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

procedure Tfrmproduto.bgrava_barraClick(Sender: TObject);
begin
  IF (qrcodbarra.State = dsinsert) or (qrcodbarra.State = dsedit) then
    qrcodbarra.Post;

  fdados_codbarra.Visible := false;
  PopupMenu := Pop2;

  DBEdit2.SetFocus;
end;

procedure Tfrmproduto.GravarCodigodeBarra1Click(Sender: TObject);
begin
  bgrava_barraClick(frmproduto);
end;

procedure Tfrmproduto.Servios1Click(Sender: TObject);
begin
  bservicosClick(frmproduto);
end;

procedure Tfrmproduto.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto);
end;

procedure Tfrmproduto.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto.egrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.fieldbyname('codGRUPO').asstring := frmprincipal.zerarcodigo(egrupo.text,6);
      if egrupo.text <> '000000' then
        if not FrmPrincipal.Locregistro(frmmodulo.qrGRUPO,egrupo.text,'codigo') then
        begin
          application.messagebox('Grupo não cadastrado!','Atenção',mb_ok+mb_iconerror);
          egrupo.setfocus;
          exit;
        end
        else
           esubgrupo.setfocus
      else
        egrupoButtonClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.egrupoButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  frmloc_grupo := tfrmloc_grupo.create(self);
  frmloc_grupo.showmodal;
  qrproduto.fieldbyname('codgrupo').asstring := frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
  esubgrupo.setfocus;
end;

procedure Tfrmproduto.efornecedorButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;


  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  qrproduto.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  emarca.setfocus;
end;

procedure Tfrmproduto.emarcaButtonClick(Sender: TObject);
begin

  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  qrproduto.fieldbyname('codmarca').asstring := frmmodulo.qrmarca.fieldbyname('codigo').asstring;
  dbedit11.setfocus;
end;

procedure Tfrmproduto.esubgrupoButtonClick(Sender: TObject);
begin

  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;


 try
  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
 except
 end;



  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  qrproduto.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  efornecedor.setfocus;
end;

procedure Tfrmproduto.esubgrupoKeyPress(Sender: TObject; var Key: Char);
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
        efornecedor.setfocus
    else
      esubgrupoButtonClick(frmproduto);;
  end;

  end;
end;

procedure Tfrmproduto.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then
      begin
          application.messagebox('Fornecedor não cadastrado!','Atenção',mb_ok+mb_iconerror);
          efornecedor.setfocus;
          exit;
      end
      else
        emarca.setfocus
    else
      efornecedorButtonClick(frmproduto);
  end;

  end;
end;

procedure Tfrmproduto.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('codmarca').asstring := frmprincipal.zerarcodigo(emarca.text,6);
    if emarca.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrmarca,emarca.text,'codigo') then
      begin
          application.messagebox('Marca não cadastrada!','Atenção',mb_ok+mb_iconerror);
          emarca.setfocus;
          exit;
      end
      else
        dbedit11.setfocus
    else
      emarcaButtonClick(frmproduto);
  end;

  end;
end;

procedure Tfrmproduto.dbedit13ButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

      FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
      FRMXLOC_CST.SHOWMODAL;
      qrproduto.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
      EALiq.SETFOCUS;
end;

procedure Tfrmproduto.bfiltro_entradaClick(Sender: TObject);
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

procedure Tfrmproduto.di_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.df_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bfiltro_entrada.setfocus;
end;

procedure Tfrmproduto.PageView2Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 0 then
  begin

    if PageView2.ActivePageIndex = 0 then
    begin
        qrestoque.Connection := frmmodulo.Conexao;
        qrestoque.close;
        qrestoque.SQL.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
        qrestoque.open;
        if qrestoque.recordcount > 0 then
        begin
          ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
          ldata_venda.Caption  := qrestoque.fieldbyname('ultima_saida').asstring;
          lnf.Caption          := qrestoque.fieldbyname('nota_fiscal').asstring;
          rinicial.Value       := qrestoque.fieldbyname('estoque_inicial').asfloat;
          rentrada.Value       := qrestoque.fieldbyname('entradas').asfloat;
          rsaida.Value         := qrestoque.fieldbyname('saidas').asfloat;
          restoque.Value       := qrestoque.fieldbyname('estoque_atual').asfloat;
        end
        else
        begin
          ldata_compra.Caption := '?';
          ldata_venda.Caption  := '?';
          lnf.Caption          := '?';
          rinicial.Value       := 0;
          rentrada.Value       := 0;
          rsaida.Value         := 0;
          restoque.Value       := 0;

        end;
    end;

    if PageView2.ActivePageIndex = 1 then
    begin
      bfiltro_entradaClick(frmproduto);
    end;
    if PageView2.ActivePageIndex = 2 then
    begin
      bfiltro_saidaClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.qrmov_entradaCalcFields(DataSet: TDataSet);
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

 17:qrmov_entrada.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO/TRANSFÊNCIA';
 18:qrmov_entrada.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';
 19:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';
 20:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DOAÇÃO';
 99:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SAÍDA SEM BAIXAR ESTOQUE';


  END;

end;

procedure Tfrmproduto.qrmov_saidaCalcFields(DataSet: TDataSet);
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

procedure Tfrmproduto.bfiltro_saidaClick(Sender: TObject);

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

procedure Tfrmproduto.df_saidaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then bfiltro_saida.setfocus;
end;

procedure Tfrmproduto.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
//if key = #13 then bgravar.setfocus;
if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then batu.setfocus;
end;

procedure Tfrmproduto.qrproduto_movBeforePost(DataSet: TDataSet);
begin
    case qrproduto_mov.fieldbyname('movimento').asinteger of
    0,10 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    1,3,7,8,12,13,16 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    2,4,5,6,9,11,14,15,17,18,19,20 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat * (-1);
    end;
end;

procedure Tfrmproduto.AdvGlowButton4Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE',4) then
  begin
  rtotal_rent.Value := rtotal_rent.value - qrrentabilidade.fieldbyname('rendimento').asfloat;
    qrRENTABILIDADE.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto.AdvGlowButton3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE',4) then
  begin
    WHILE QRRENTABILIDADE.RecordCount <> 0 DO
    qrRENTABILIDADE.Delete;
  rtotal_rent.Value := 0;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeEdit(DataSet: TDataSet);
begin
  if (qrproduto.state <> dsinsert) then
  if (qrproduto.state <> dsedit) then
  if qrproduto.recordcount > 0 then
     qrproduto.Edit
  else
     abort;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeInsert(DataSet: TDataSet);
begin
    if (qrproduto.state <> dsinsert) then
  if (qrproduto.state <> dsedit) then
  if qrproduto.recordcount > 0 then
     qrproduto.Edit
  else
     abort;
end;

procedure Tfrmproduto.qrcomposicao_produtoBeforeInsert(DataSet: TDataSet);
begin
  if (qrproduto.state <> dsinsert) then
  if (qrproduto.state <> dsedit) then
  if qrproduto.recordcount > 0 then
     qrproduto.Edit
  else
     abort;
end;

procedure Tfrmproduto.qrcomposicao_produtoBeforeEdit(DataSet: TDataSet);
begin
  if (qrproduto.state <> dsinsert) then
  if (qrproduto.state <> dsedit) then
  if qrproduto.recordcount > 0 then
     qrproduto.Edit
  else
     abort;
end;

procedure Tfrmproduto.check_rentabilidadeClick(Sender: TObject);
begin
  if check_rentabilidade.Checked then
  begin
    qrrentabilidade.close;
    qrrentabilidade.sql.clear;
    qrrentabilidade.sql.add('select * from c000078 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    qrrentabilidade.Open;
  end
  else
  begin
    qrrentabilidade.close;
  end;
end;

procedure Tfrmproduto.QRRENTABILIDADEBeforeDelete(DataSet: TDataSet);
begin
  if (qrproduto.state <> dsinsert) then
  if (qrproduto.state <> dsedit) then
  if qrproduto.recordcount > 0 then
     qrproduto.Edit
  else
     abort;
end;

procedure Tfrmproduto.brent_gravarClick(Sender: TObject);
begin
 IF check_rentabilidade.Checked THEN
 BEGIN


 if radiobutton1.checked then
 begin
    qrrentabilidade.Insert;
    qrrentabilidade.fieldbyname('codproduto').asstring := elocproduto.text;
    qrrentabilidade.fieldbyname('produto').asstring := eproduto.text;
    qrrentabilidade.fieldbyname('rendimento').asfloat := erentabilidade.Value;
    qrrentabilidade.fieldbyname('codigo').asstring := frmprincipal.codifica('000078');
    qrrentabilidade.fieldbyname('rentabilidade').asstring := qrproduto.FIELDBYNAME('CODIGO').ASSTRING;
    qrrentabilidade.post;
 end
 else
 begin
    qrrentabilidade.Insert;
    qrrentabilidade.fieldbyname('codproduto').asstring := '000000';
    qrrentabilidade.fieldbyname('produto').asstring := 'P E R D A';
    qrrentabilidade.fieldbyname('rendimento').asfloat := erentabilidade.Value;
    qrrentabilidade.fieldbyname('codigo').asstring := frmprincipal.codifica('000078');
    qrrentabilidade.fieldbyname('rentabilidade').asstring := qrproduto.FIELDBYNAME('CODIGO').ASSTRING;
    qrrentabilidade.post;
 end;

  rtotal_rent.Value := rtotal_rent.value + qrrentabilidade.fieldbyname('rendimento').asfloat;

  RADIOBUTTON1.Checked := TRUE;
  elocproduto.setfocus;
  elocproduto.text := '';
  eproduto.text := '';
  erentabilidade.value := 0;


  END
  ELSE
  BEGIN
    application.messagebox('Este produto não utiliza rentabilidade! Favor verificar!','Atenção',mb_ok+mb_iconerror);
    exit;
  END;


end;

procedure Tfrmproduto.elocprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    elocproduto.text := frmprincipal.zerarcodigo(elocproduto.text,6);
    if elocproduto.text <> '000000' then
    begin
      qrproduto_loc.close;
      qrproduto_loc.SQL.clear;
      qrproduto_loc.sql.add('select * from c000025 where codigo = '''+elocproduto.text+'''');
      qrproduto_loc.open;
      if qrproduto_loc.RecordCount > 0 then
      begin
        eproduto.text := qrproduto_loc.fieldbyname('produto').asstring;
        elocproduto.text := qrproduto_loc.fieldbyname('codigo').asstring;
        erentabilidade.setfocus;
      end
      else
      begin
          application.messagebox('Produto não cadastrado!','Atenção',mb_ok+mb_iconerror);
          elocproduto.setfocus;
          exit;
      end;
    end
    else
      elocprodutoButtonClick(frmproduto);


  end;
end;

procedure Tfrmproduto.elocprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  resultado_pesquisa2 := '';
  frmxloc_Produto := tfrmxloc_Produto.create(self);
  frmxloc_Produto.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    elocproduto.text := resultado_pesquisa1;
    eproduto.text := resultado_pesquisa2;
    erentabilidade.setfocus;
  end;

end;

procedure Tfrmproduto.erentabilidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then brent_gravar.setfocus;
end;

procedure Tfrmproduto.RadioButton1Click(Sender: TObject);
begin
  elocproduto.TEXT := '';
  eproduto.text := '';
  elocproduto.Enabled := true;
  elocproduto.setfocus;

end;

procedure Tfrmproduto.RadioButton2Click(Sender: TObject);
begin
  elocproduto.TEXT := '000000';
  eproduto.text := 'P E R D A';
  elocproduto.Enabled := false;
  erentabilidade.setfocus;
end;

procedure Tfrmproduto.qrprodutoAfterCancel(DataSet: TDataSet);
begin
      pgravar.Visible := false;
      PopupMenu := Pop1;
      gestoque.Visible := false;
end;

procedure Tfrmproduto.qrprodutoAfterEdit(DataSet: TDataSet);
begin
   edicao_preco := false;

      pgravar.Visible := true;
      gestoque.Visible := false;
      PopupMenu := pop2;

end;

procedure Tfrmproduto.qrprodutoAfterInsert(DataSet: TDataSet);
begin
     edicao_preco := false;

      pgravar.Visible := true;
      gestoque.Visible := true;
      PopupMenu := pop2;
end;

procedure Tfrmproduto.qrprodutoAfterPost(DataSet: TDataSet);
begin

      pgravar.Visible := false;
      PopupMenu := Pop1;
      gestoque.Visible := false;
end;

procedure Tfrmproduto.PageView1Change(Sender: TObject);
begin
  DBEdit1Change(frmproduto);
  if frmmodulo.qrconfig.FieldByName('USA_RENTABILIDADE').AsInteger = 0 then // Rentabilidade
  if PageView1.ActivePageIndex = 7 then
     PageView1.ActivePageIndex := 0;
end;

procedure Tfrmproduto.DBEdit1Change(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12 : string;
begin
try



   if pageview1.activepageindex = 8 then
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
        if qrestoque.recordcount > 0 then
        begin
          ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
          ldata_venda.Caption  := qrestoque.fieldbyname('ultima_saida').asstring;
          lnf.Caption          := qrestoque.fieldbyname('nota_fiscal').asstring;
          rinicial.Value       := qrestoque.fieldbyname('estoque_inicial').asfloat;
          rentrada.Value       := qrestoque.fieldbyname('entradas').asfloat;
          rsaida.Value         := qrestoque.fieldbyname('saidas').asfloat;
          restoque.Value       := qrestoque.fieldbyname('estoque_atual').asfloat;
        end
        else
        begin
          ldata_compra.Caption := '?';
          ldata_venda.Caption  := '?';
          lnf.Caption          := '?';
          rinicial.Value       := 0;
          rentrada.Value       := 0;
          rsaida.Value         := 0;
          restoque.Value       := 0;

        end;

      end;

      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_entradaClick(frmproduto);
      end;
      if PageView2.ActivePageIndex = 2 then
      begin
        bfiltro_saidaClick(frmproduto);
      end;
    end;

  if PageView1.ActivePageindex = 1 then // preco
      begin
       if edicao_preco = false then
       begin

        ptampapreco.visible := true;

        if nivel_usuario < 4 then
          begin
            Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
            PageView1.ActivePageIndex := 0;
            exit;
          end;

        qrpreco.close;
        qrpreco.SQL.clear;
        qrpreco.sql.Add('select * from c000026 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
        qrpreco.open;

        if qrpreco.RecordCount = 0 then
          begin
            ptampapreco.visible := true;
            if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
              qrpreco.Edit;
          end
        else
          begin
            novo_preco_venda := qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            ptampapreco.visible := false;
          end;

        end;
      end;

    if PageView1.ActivePageIndex = 2 then // grade
    begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;
    end;

    if PageView1.ActivePageIndex = 3 then // seriais
    begin
       frmmodulo.qrserial_produto.close;
       frmmodulo.qrserial_produto.sql.clear;
       frmmodulo.qrserial_produto.sql.add('select * from c000022 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       frmmodulo.qrserial_produto.Open;
    end;

    if PageView1.ActivePageIndex = 4 then // composicao
    begin
       qrcomposicao_produto.close;
       qrcomposicao_produto.sql.clear;
       qrcomposicao_produto.sql.add('select * from c000027 where produto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       qrcomposicao_produto.Open;

       qrproduto_loc.open;

    end;
    if PageView1.ActivePageIndex = 5 then // informacao nutricional
    begin
       frmmodulo.qrinfnutricional_produto.close;
       frmmodulo.qrinfnutricional_produto.sql.clear;
       frmmodulo.qrinfnutricional_produto.sql.add('select * from c000028 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
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

    if PageView1.ActivePageIndex = 6 then // FOTO
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

    if PageView1.ActivePageIndex = 7 then // rentabilidade
    begin
       rtotal_rent.value := 0;
       if qrproduto.fieldbyname('usa_rentabilidade').asinteger = 1 then
       begin
         qrrentabilidade.close;
         qrrentabilidade.sql.clear;
         qrrentabilidade.sql.add('select * from c000078 where RENTABILIDADE = '''+qrproduto.fieldbyname('codigo').asstring+'''');
         qrrentabilidade.Open;

         qrrentabilidade.first;
         while not qrrentabilidade.Eof do
         begin
           rtotal_rent.value := rtotal_rent.value + qrrentabilidade.fieldbyname('rendimento').asfloat;
           qrrentabilidade.next;
         end;
         end
       else
        qrrentabilidade.close;
    end;

  except

  end;

end;

procedure Tfrmproduto.qrprecoBeforeInsert(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
  if qrproduto.state <> dsedit then
  qrproduto.edit;
end;

procedure Tfrmproduto.qrprecoBeforeEdit(DataSet: TDataSet);
begin
  if qrproduto.State <> dsinsert then
  if qrproduto.state <> dsedit then
  qrproduto.edit;
end;

procedure Tfrmproduto.batuClick(Sender: TObject);
begin

  if (qrproduto.State = dsedit) or (qrproduto.State = dsinsert) then
    begin

          qrproduto.fieldbyname('precovenda').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;
          qrproduto.fieldbyname('precovenda_novo').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;


        if qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
        begin
            qrproduto.fieldbyname('precocusto').asfloat := qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            qrproduto.fieldbyname('precovenda_novo').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;
        end;

  end
  else
    application.messagebox('Produto Não Esta em Edição, Verifique! Impossível alterar preços!','Atenção',mb_ok+mb_iconwarning);




end;

procedure Tfrmproduto.eserialChange(Sender: TObject);
begin
  frmmodulo.qrserial_produto.Locate('serial',eserial.text,[loCaseInsensitive]);
end;

procedure Tfrmproduto.ConsultaSerial1Click(Sender: TObject);
begin
  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure Tfrmproduto.MovimentarEstoque1Click(Sender: TObject);
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
    frmproduto.DBEdit1Change(frmproduto);
  end;
  
end;

procedure Tfrmproduto.qrprodutoBeforePost(DataSet: TDataSet);
var estoque : real;
begin
  if qrproduto.fieldbyname('codigo').asstring = '' then abort;

  qrproduto.fieldbyname('codigo').asstring :=  frmPrincipal.zerarcodigo(qrproduto.fieldbyname('codigo').asstring,6);




  IF PRECO_VENDA_ANTERIORX <> QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT THEN
    QRPRODUTO.FIELDBYNAME('DATA_REMARCACAO_VENDA').ASDATETIME := DATE;


  if qrproduto.FieldByName('usa_grade').asinteger = 1 then
  begin

  estoque := 0;

       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;

  frmmodulo.qrgrade_produto.First;
  while not frmmodulo.qrgrade_produto.Eof do
  begin
    estoque := estoque + frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat;
    frmmodulo.qrgrade_produto.next;
  end;

  if estoque <> restoque.value then
  begin
    if estoque < restoque.value then
    begin
      if application.MessageBox('A somatório do Estoque da Grade está MENOR que o Estoque atual do Produto! Deseja corrigir?','Atenção!',MB_YESNO+MB_ICONWARNING) = idyes then
      begin
        abort;
      end;
    end;

    if estoque > restoque.value then
    begin
      if application.MessageBox('A somatório do Estoque da Grade está MAIOR que o Estoque atual do Produto! Deseja corrigir?','Atenção!',MB_YESNO+MB_ICONWARNInG) = idyes then
      begin
        abort;
      end;
    end;

  end;

  end;




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

procedure Tfrmproduto.qrprodutoBeforeEdit(DataSet: TDataSet);
begin
    PRECO_VENDA_ANTERIORX := QRPRODUTO.FIELDBYNAME('PRECOVENDA').ASFLOAT;
    if qrproduto.fieldbyname('codigo').asstring = '' then abort;
end;

procedure Tfrmproduto.bpreco_custoClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
  //total dos custos
  qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat :=
  qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat +
  qrpreco.fieldbyname('PIS_P').asfloat +
  qrpreco.fieldbyname('COFINS_P').asfloat +
  qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat+
  qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat+
  qrpreco.fieldbyname('COMISSAO_P').asfloat;

  //preco de venda
  qrpreco.fieldbyname('PRECO_VENDA').asfloat :=
  qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat/
  ((100-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat+qrpreco.fieldbyname('LUCRO_P').asfloat))/100);

  qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat := qrpreco.fieldbyname('PRECO_VENDA').asfloat;


  qrpreco.fieldbyname('ICMS_SAIDA').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat/100;

  qrpreco.fieldbyname('PIS').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('PIS_P').asfloat/100;

  qrpreco.fieldbyname('COFINS').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('COFINS_P').asfloat/100;

  qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat/100;

  qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat/100;

  qrpreco.fieldbyname('COMISSAO').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('COMISSAO_P').asfloat/100;

  qrpreco.fieldbyname('TOTAL_CUSTO').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100;

  qrpreco.fieldbyname('LUCRO').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('LUCRO_P').asfloat/100;
   end;

end;

procedure Tfrmproduto.bpreco_vendaClick(Sender: TObject);
begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
  // custo da compra
  qrpreco.fieldbyname('CUSTO_COMPRA').asfloat :=
  (qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat +
  qrpreco.fieldbyname('FRETE').asfloat +
  qrpreco.fieldbyname('SEGURO').asfloat +
  qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat+
  qrpreco.fieldbyname('IPI').asfloat)-
  (qrpreco.fieldbyname('ICMS_ENTRADA').asfloat +
  qrpreco.fieldbyname('DESCONTO').asfloat);

  qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat := qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;

  //total dos custos
  qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat :=
  qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat +
  qrpreco.fieldbyname('PIS_P').asfloat +
  qrpreco.fieldbyname('COFINS_P').asfloat +
  qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat+
  qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat+
  qrpreco.fieldbyname('COMISSAO_P').asfloat;


  if ((100-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat+qrpreco.fieldbyname('LUCRO_P').asfloat))/100) > 0 then
    begin
      //preco de venda
{      qrpreco.fieldbyname('PRECO_VENDA').asfloat :=
      qrpreco.fieldbyname('CUSTO_COMPRA').asfloat/
      ((100-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat+qrpreco.fieldbyname('LUCRO_P').asfloat))/100);  }

       qrpreco.fieldbyname('PRECO_VENDA').asfloat :=
      qrpreco.fieldbyname('CUSTO_COMPRA').asfloat+qrpreco.fieldbyname('LUCRO').asfloat;

    end;

  qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat := qrpreco.fieldbyname('PRECO_VENDA').asfloat;
{
  qrpreco.fieldbyname('ICMS_SAIDA').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat/100;

  qrpreco.fieldbyname('PIS').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('PIS_P').asfloat/100;

  qrpreco.fieldbyname('COFINS').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('COFINS_P').asfloat/100;

  qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat/100;

  qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat/100;

  qrpreco.fieldbyname('COMISSAO').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('COMISSAO_P').asfloat/100;

  qrpreco.fieldbyname('TOTAL_CUSTO').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100;

  qrpreco.fieldbyname('LUCRO').asfloat :=
  qrpreco.fieldbyname('PRECO_VENDA').asfloat*
  qrpreco.fieldbyname('LUCRO_P').asfloat/100;   }
  end;

end;

procedure Tfrmproduto.bnovopreco_vendaClick(Sender: TObject);
var
  vindice : double;

begin
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      //preco de venda
      if qrpreco.fieldbyname('CUSTO_COMPRA').Value = null then qrpreco.fieldbyname('CUSTO_COMPRA').AsFloat := 0;
      if qrpreco.fieldbyname('NOVO_PRECO_VENDA').Value = null then qrpreco.fieldbyname('NOVO_PRECO_VENDA').AsFloat := 0;

      if qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat > 0 then
        vindice := qrpreco.fieldbyname('CUSTO_COMPRA').asfloat/qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat
      else
        vindice := 0;

      qrpreco.fieldbyname('LUCRO_P').asfloat := 100-((vindice*100)+qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat);
      bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.bcalcula_precocustoClick(Sender: TObject);
begin

      qrpreco.Edit;

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
        if 1-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100) <> 0 then
          begin
            qrpreco.fieldbyname('preco_venda').asfloat :=
            qrpreco.fieldbyname('CUSTO_COMPRA').asfloat /
            (1-(qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));
          end;

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


      qrpreco.fieldbyname('novo_preco_venda').asfloat :=
      qrpreco.fieldbyname('preco_venda').asfloat;

      qrproduto.fieldbyname('precovenda').asfloat :=
      qrpreco.fieldbyname('preco_venda').asfloat;

  if (qrPRODUTO.State = dsinsert) or (qrPRODUTO.State = dsedit) then
    begin
      qrproduto.fieldbyname('precovenda_novo').asfloat :=
      qrpreco.fieldbyname('preco_venda').asfloat;

      qrproduto.fieldbyname('precocusto').asfloat :=
      qrpreco.fieldbyname('custo_compra').asfloat;
    end;

  end;
  preco_custo_anterior := qrproduto.fieldbyname('precocusto').asfloat;

end;

procedure Tfrmproduto.bcalcula_precovendaClick(Sender: TObject);
begin
  if (qrpreco.State = dsinsert) or (qrpreco.State = dsedit) then
  begin

    if qrpreco.FieldByName('lucro_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('lucro').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('lucro_p').asfloat / 100;
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

    (***************************** ICMS DE ENTRADA ****************************)

      qrpreco.fieldbyname('total_custo_p').asfloat :=
      qrpreco.fieldbyname('icms_saida_p').asfloat +
      qrpreco.fieldbyname('custo_operacional_p').asfloat +
      qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
      qrpreco.fieldbyname('comissao_p').asfloat +
      qrpreco.fieldbyname('lucro_p').asfloat-
      qrpreco.fieldbyname('icms_entrada_p').asfloat;


      if qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin
        qrpreco.FieldByName('icms_entrada').asfloat :=
        qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
      end;
      if qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
      begin
        qrpreco.FieldByName('icms_saida').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
      end;
      if qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
      end;
      if qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('outros_impostos').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
      end;

      if qrpreco.FieldByName('comissao_P').asfloat <> 0 then
      begin
        qrpreco.FieldByName('comissao').asfloat :=
        qrpreco.FieldByName('novo_preco_venda').asfloat *
        qrpreco.FieldByName('comissao_p').asfloat / 100;
      end;

      qrpreco.fieldbyname('total_custo').asfloat :=
      qrpreco.fieldbyname('icms_saida').asfloat +
      qrpreco.fieldbyname('custo_operacional').asfloat +
      qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
      qrpreco.fieldbyname('comissao').asfloat +
      qrpreco.fieldbyname('lucro').asfloat -
       qrpreco.fieldbyname('icms_entrada').asfloat;

    qrpreco.fieldbyname('preco_venda').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;

  end;

  qrproduto.fieldbyname('precovenda').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;


  qrproduto.fieldbyname('precovenda_novo').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;
  qrproduto.fieldbyname('precocusto').asfloat := qrpreco.fieldbyname('custo_compra').asfloat;



end;

procedure Tfrmproduto.batualiza_estoqueClick(Sender: TObject);
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

procedure Tfrmproduto.batualizar_estoqueClick(Sender: TObject);
var
  vrecno : integer;
begin

  vrecno := qrproduto.RecNo;

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
        frmmodulo.qrproduto.close;
        frmmodulo.qrproduto.SQL.clear;
        frmmodulo.qrproduto.sql.Add('select * from c000025 where codigo = '''+QUERY1.fieldbyname('codproduto').asstring+'''');
        frmmodulo.qrproduto.open;
        if frmmodulo.qrproduto.RecordCount > 0 then
          begin
            frmmodulo.qrproduto.Edit;
            frmmodulo.qrproduto.FieldByName('PRECOCUSTO_ANTERIOR').AsFloat := qrproduto.FieldByName('PRECOCUSTO').AsFloat;
            frmmodulo.qrproduto.FieldByName('PRECOVENDA_ANTERIOR').AsFloat := qrproduto.FieldByName('PRECOVENDA').AsFloat;
            frmmodulo.qrproduto.FieldByName('PRECOVENDA').AsFloat := QUERY1.fieldbyname('NOVO_PRECO_VENDA').AsFloat;
            frmmodulo.qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := QUERY1.fieldbyname('DATA_ALTERACAO').AsDateTime;
            frmmodulo.qrproduto.Post;
          end;
        qrpreco.close;
        qrpreco.SQL.clear;
        qrpreco.sql.Add('select * from c000026 where codproduto = '''+QUERY1.fieldbyname('codproduto').asstring+'''');
        qrpreco.open;
        if qrpreco.RecordCount > 0 then
          begin
            qrpreco.Edit;
            qrpreco.FieldByName('PRECO_VENDA').AsFloat := qrpreco.FieldByName('NOVO_PRECO_VENDA').AsFloat;
            //qrpreco.FieldByName('ALTERA_AUTOMATICO').AsInteger := 1;
            qrpreco.Post;
          end;
        QUERY1.Next;
        bar.Position := bar.position + 1;
    end;

    bar.Position := 0;
    ptermometro.Visible := false;

    frmmodulo.Conexao.Commit;
    qrproduto.Refresh;
    frmmodulo.qrproduto.Refresh;

  end
  else
    application.messagebox('Não Há Alteração de Preços para Hoje, verifique!','Atenção',mb_ok+mb_iconwarning);

  qrproduto.RecNo := vrecno;
  DBEdit1Change(frmproduto);

end;

procedure Tfrmproduto.ppreco_automaticoExit(Sender: TObject);
begin

{
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.FieldByName('PRECO_AUTOMATICO').AsInteger := 1;
      qrpreco.Post;
    end;
}

end;

procedure Tfrmproduto.bnovo_preco_custoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  novo_preco_custo := qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;

end;

procedure Tfrmproduto.bnovo_preco_custoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat <> novo_preco_custo then
    bpreco_custoClick(frmproduto);

end;

procedure Tfrmproduto.bnovo_preco_vendaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  novo_preco_venda := qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;

end;

procedure Tfrmproduto.bnovo_preco_vendaExit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;

  if qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
    begin
      if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
        begin
          if qrpreco.FieldByName('NOVO_PRECO_VENDA').AsFloat > 0 then
            bnovopreco_vendaClick(frmproduto);
        end;
    end;

end;

procedure Tfrmproduto.AtualizarPreosdeVendasRemarcados1Click(
  Sender: TObject);
begin
  if frmprincipal.autentica('Atualiza Preços Remarcados',4) then
    begin
      if APPLICATION.MESSAGEBOX('Deseja Atualiza os preços de venda remarcados hoje?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
        batualizar_estoqueClick(frmproduto);
    end
  else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    end;
end;

procedure Tfrmproduto.evendaEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  //PageView1.ActivePageIndex := 1;

end;

procedure Tfrmproduto.evendaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if qrpreco.state in [dsinsert, dsedit] then
   begin

        if qrpreco.RecordCount > 0 then
          begin
            qrpreco.Edit;
            qrpreco.FieldByName('NOVO_PRECO_VENDA').AsFloat := qrproduto.FieldByName('PRECOVENDA').AsFloat;
            bnovopreco_vendaClick(frmproduto);
          end;

   end;



end;

procedure Tfrmproduto.ecustoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  //PageView1.ActivePageIndex := 1;
  ptampapreco.visible := true;
end;

procedure Tfrmproduto.ecustoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if qrproduto.FieldByName('PRECOCUSTO').AsFloat <> preco_custo_anterior then
    begin
      if qrpreco.RecordCount > 0 then
        begin
          qrpreco.Edit;
          qrpreco.FieldByName('NOVO_PRECO_CUSTO').AsFloat := qrproduto.FieldByName('PRECOCUSTO').AsFloat;
          bpreco_custoClick(frmproduto);
          preco_custo_anterior := qrproduto.FieldByName('PRECOCUSTO').AsFloat;
        end;
    end;

end;

procedure Tfrmproduto.DBEdit19Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  qrpreco.Edit;
  qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
  qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat/100;

  qrpreco.fieldbyname('IPI').asfloat :=
  qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  qrpreco.fieldbyname('IPI_P').asfloat/100;

  Application.ProcessMessages;

  //if frmmodulo.qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
  bpreco_vendaClick(frmproduto);
end;

procedure Tfrmproduto.DBEdit68Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('ICMS_ENTRADA').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat/100;

      bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.DBEdit69Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
  begin
  qrpreco.fieldbyname('IPI').asfloat :=
  qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
  qrpreco.fieldbyname('IPI_P').asfloat/100;
  if qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat <> novo_preco_venda then
    bpreco_vendaClick(frmproduto);
  end;

end;

procedure Tfrmproduto.dsprecoDataChange(Sender: TObject; Field: TField);
begin
  if qrpreco.FieldByName('ALTERA_AUTOMATICO').AsInteger = 2 then
    pdtaltera.Visible := true
  else
    pdtaltera.Visible := false;
end;

procedure Tfrmproduto.DBCheckBox2Click(Sender: TObject);
begin
  if dbcheckbox2.checked then
  begin
  if (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
     if qrproduto.FieldByName('usa_serial').asinteger = 1 then
     begin
       application.MessageBox('Este produto utiliza controle de seriais! Impossível usar grade!','Atenção',mb_ok+mb_iconwarning);
       dbcheckbox2.Checked := false;
     end ;

  end;
  end;
end;

procedure Tfrmproduto.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then batu.setfocus;
end;

procedure Tfrmproduto.RzDBNumericEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBEdit11KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.eestoqueKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
      PageView1.ActivePageIndex := 0;
      dbedit13.SetFocus;
  end;
end;

procedure Tfrmproduto.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  PERFORM(WM_NEXTDLGCTL,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;

end;

procedure Tfrmproduto.DBDateEdit2Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
  if dbdateedit2.date < dbdateedit1.date then
  begin

    application.messagebox('Data final não pode ser menor que a data inicial!','Erro',mb_ok+mb_iconerror);
    dbdateedit2.setfocus;
    exit;
  end;

end;

procedure Tfrmproduto.bremarcacaoClick(Sender: TObject);
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
            query1.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat  := qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            query1.fieldbyname('ICMS_ENTRADA_P').asfloat       := qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat;
            query1.fieldbyname('ICMS_ENTRADA').asfloat         := qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
            query1.fieldbyname('DESCONTO').asfloat             := qrpreco.fieldbyname('DESCONTO').asfloat;
            query1.fieldbyname('FRETE').asfloat                := qrpreco.fieldbyname('FRETE').asfloat;
            query1.fieldbyname('SEGURO').asfloat               := qrpreco.fieldbyname('SEGURO').asfloat;
            query1.fieldbyname('OUTRAS_DESPESAS').asfloat      := qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat;
            query1.fieldbyname('IPI_P').asfloat                := qrpreco.fieldbyname('IPI_P').asfloat;
            query1.fieldbyname('IPI').asfloat                  := qrpreco.fieldbyname('IPI').asfloat;
            query1.fieldbyname('CUSTO_COMPRA').asfloat         := qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;
            query1.fieldbyname('ICMS_SAIDA_P').asfloat         := qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat;
            query1.fieldbyname('ICMS_SAIDA').asfloat           := qrpreco.fieldbyname('ICMS_SAIDA').asfloat;
            query1.fieldbyname('PIS_P').asfloat                := qrpreco.fieldbyname('PIS_P').asfloat;
            query1.fieldbyname('PIS').asfloat                  := qrpreco.fieldbyname('PIS').asfloat;
            query1.fieldbyname('COFINS_P').asfloat             := qrpreco.fieldbyname('COFINS_P').asfloat;
            query1.fieldbyname('COFINS').asfloat               := qrpreco.fieldbyname('COFINS').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat := qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat  := qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL_P').asfloat  := qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL').asfloat    := qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat;
            query1.fieldbyname('COMISSAO_P').asfloat           := qrpreco.fieldbyname('COMISSAO_P').asfloat;
            query1.fieldbyname('COMISSAO').asfloat             := qrpreco.fieldbyname('COMISSAO').asfloat;
            query1.fieldbyname('TOTAL_CUSTO_P').asfloat        := qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat;
            query1.fieldbyname('TOTAL_CUSTO').asfloat          := qrpreco.fieldbyname('TOTAL_CUSTO').asfloat;
            query1.fieldbyname('LUCRO_P').asfloat              := qrpreco.fieldbyname('LUCRO_P').asfloat;
            query1.fieldbyname('LUCRO').asfloat                := qrpreco.fieldbyname('LUCRO').asfloat;
            query1.fieldbyname('PRECO_VENDA').asfloat          := qrpreco.fieldbyname('PRECO_VENDA').asfloat;
            query1.fieldbyname('NOVO_PRECO_VENDA').asfloat     := qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            query1.fieldbyname('DATA_ALTERACAO').AsDateTime       := qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
            query1.fieldbyname('NOVO_PRECO_CUSTO').asfloat     := qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;
            query1.fieldbyname('PRECO_AUTOMATICO').AsInteger     := qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger;
            query1.fieldbyname('ALTERA_AUTOMATICO').AsInteger    := qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger;
          end
        else
          begin
            query1.Insert;
            query1.fieldbyname('codigo').asstring               := frmprincipal.codifica('000026');
            query1.fieldbyname('codproduto').asstring           := query.fieldbyname('codigo').asstring;
            query1.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat   := qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
            query1.fieldbyname('ICMS_ENTRADA_P').asfloat        := qrpreco.fieldbyname('ICMS_ENTRADA_P').asfloat;
            query1.fieldbyname('ICMS_ENTRADA').asfloat          := qrpreco.fieldbyname('ICMS_ENTRADA').asfloat;
            query1.fieldbyname('DESCONTO').asfloat              := qrpreco.fieldbyname('DESCONTO').asfloat;
            query1.fieldbyname('FRETE').asfloat                 := qrpreco.fieldbyname('FRETE').asfloat;
            query1.fieldbyname('SEGURO').asfloat                := qrpreco.fieldbyname('SEGURO').asfloat;
            query1.fieldbyname('OUTRAS_DESPESAS').asfloat       := qrpreco.fieldbyname('OUTRAS_DESPESAS').asfloat;
            query1.fieldbyname('IPI_P').asfloat                 := qrpreco.fieldbyname('IPI_P').asfloat;
            query1.fieldbyname('IPI').asfloat                   := qrpreco.fieldbyname('IPI').asfloat;
            query1.fieldbyname('CUSTO_COMPRA').asfloat          := qrpreco.fieldbyname('CUSTO_COMPRA').asfloat;
            query1.fieldbyname('ICMS_SAIDA_P').asfloat          := qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat;
            query1.fieldbyname('ICMS_SAIDA').asfloat            := qrpreco.fieldbyname('ICMS_SAIDA').asfloat;
            query1.fieldbyname('PIS_P').asfloat                 := qrpreco.fieldbyname('PIS_P').asfloat;
            query1.fieldbyname('PIS').asfloat                   := qrpreco.fieldbyname('PIS').asfloat;
            query1.fieldbyname('COFINS_P').asfloat              := qrpreco.fieldbyname('COFINS_P').asfloat;
            query1.fieldbyname('COFINS').asfloat                := qrpreco.fieldbyname('COFINS').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat := qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat;
            query1.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat   := qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL_P').asfloat   := qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat;
            query1.fieldbyname('CUSTO_OPERACIONAL').asfloat     := qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat;
            query1.fieldbyname('COMISSAO_P').asfloat            := qrpreco.fieldbyname('COMISSAO_P').asfloat;
            query1.fieldbyname('COMISSAO').asfloat              := qrpreco.fieldbyname('COMISSAO').asfloat;
            query1.fieldbyname('TOTAL_CUSTO_P').asfloat         := qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat;
            query1.fieldbyname('TOTAL_CUSTO').asfloat           := qrpreco.fieldbyname('TOTAL_CUSTO').asfloat;
            query1.fieldbyname('LUCRO_P').asfloat               := qrpreco.fieldbyname('LUCRO_P').asfloat;
            query1.fieldbyname('LUCRO').asfloat                 := qrpreco.fieldbyname('LUCRO').asfloat;
            query1.fieldbyname('PRECO_VENDA').asfloat           := qrpreco.fieldbyname('PRECO_VENDA').asfloat;
            query1.fieldbyname('NOVO_PRECO_VENDA').asfloat      := qrpreco.fieldbyname('NOVO_PRECO_VENDA').asfloat;
            query1.fieldbyname('DATA_ALTERACAO').AsDateTime     := qrpreco.fieldbyname('DATA_ALTERACAO').AsDateTime;
            query1.fieldbyname('NOVO_PRECO_CUSTO').asfloat      := qrpreco.fieldbyname('NOVO_PRECO_CUSTO').asfloat;
            query1.fieldbyname('PRECO_AUTOMATICO').AsInteger    := qrpreco.fieldbyname('PRECO_AUTOMATICO').AsInteger;
            query1.fieldbyname('ALTERA_AUTOMATICO').AsInteger   := qrpreco.fieldbyname('ALTERA_AUTOMATICO').AsInteger;
          end;

        query1.Post;


        query.edit;
        query.fieldbyname('precocusto').asfloat := qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat;
        query.fieldbyname('precovenda').asfloat := qrpreco.fieldbyname('novo_preco_venda').asfloat;
        query.post;




        query.Next;

        bar.Position := bar.position + 1;

      end;
    end;
    end;

    bar.Position := 0;
    ptermometro.Visible := false;


end;

procedure Tfrmproduto.NFeExportarProdutoSelecionado1Click(Sender: TObject);
begin
  if Exp_Abre_PRODUTO('PRODUTO.txt') then
  begin
    Exp_Inclui_PRODUTO(
                       qrproduto.fieldbyname('codigo').asstring,
                       qrproduto.fieldbyname('produto').asstring,
                       qrproduto.fieldbyname('codbarra').asstring,
                       '',
                       '',
                       '',
                       qrproduto.fieldbyname('unidade').asstring,
                       qrproduto.fieldbyname('precovenda').asfloat,
                       '',
                       '',
                       0,
                       0,
                       0,
                       '',
                       '',
                       '',
                       qrproduto.fieldbyname('cst').asstring,
                       0,
                       1,
                       qrproduto.fieldbyname('aliquota').asfloat,
                       0,
                       '',
                       0,
                       0);


    if Exp_Fecha_PRODUTO then
    begin
     showmessage('Arquivo de PRODUTO criado com sucesso!');
    end
    else
    begin
     showmessage('Houve falha na criação do arquivo de PRODUTO!');
    end;
  end;

end;

procedure Tfrmproduto.NFeExportartodososPrdutos1Click(Sender: TObject);
begin
   query.close;
   query.sql.clear;
   query.sql.add('select * from c000025 where SITUACAO = 0');
   query.sql.Add('and cst is not null');
   query.sql.add('order by codigo');
   query.open;
   query.first;
   if Exp_Abre_PRODUTO('PRODUTO.txt') then
   begin
     while not query.eof do
     begin

          Exp_Inclui_PRODUTO(
                             query.fieldbyname('codigo').asstring,
                             query.fieldbyname('produto').asstring,
                             query.fieldbyname('codbarra').asstring,
                             '',
                             '',
                             '',
                             query.fieldbyname('unidade').asstring,
                             query.fieldbyname('precovenda').asfloat,
                             '',
                             '',
                             0,
                             0,
                             0,
                             '',
                             '',
                             '',
                             query.fieldbyname('cst').asstring,
                             0,
                             1,
                             query.fieldbyname('aliquota').asfloat,
                             0,
                             '',
                             0,
                             0);
       query.next;
     end;
     if Exp_Fecha_PRODUTO then
     begin
       showmessage('Arquivo de PRODUTO criado com sucesso!');
     end
     else
     begin
       showmessage('Houve falha na criação do arquivo de PRODUTO!');
     end;
   end;
end;

procedure Tfrmproduto.DBEdit29KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

  //IF KEY = #13 THEN
  //  IF pgravar.Visible THEN bgravar.SETFOCUS;
end;

procedure Tfrmproduto.qrprodutoBeforeInsert(DataSet: TDataSet);
begin
PRECO_VENDA_ANTERIORX := 0;
end;

procedure Tfrmproduto.AdvGlowButton2Click(Sender: TObject);
begin
  frmproduto_serial_ficha := tfrmproduto_serial_ficha.create(self);
  frmproduto_serial_ficha.showmodal;


  frmmodulo.qrserial_produto.Refresh;

end;

procedure Tfrmproduto.AdvGlowButton5Click(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir PRODUTO',4) then
  begin

    if application.MessageBox('Confirma a exclusão do serial?','Excluir',mb_yesno+mb_iconwarning) = idyes then
    begin
      if frmmodulo.qrserial_produto.fieldbyname('codnota').asstring <> 'AVULSO' then
      begin
        application.messagebox('Este serial não pode ser excluído!','Atenção',mb_ok+mb_iconerror);
        exit;
      end;
      frmmodulo.qrserial_produto.Delete;
    end;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;



end;

procedure Tfrmproduto.bfornecedor_codigoClick(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.lproduto.Caption := qrprodutoCODIGO.AsString+'-'+qrprodutoPRODUTO.AsString;
  frmfornecedor_codigo.showmodal;
end;

procedure Tfrmproduto.FormCreate(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmproduto.DBEdit22Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('LUCRO').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('LUCRO_P').asfloat/100;
      bpreco_vendaClick(frmproduto);
    end;
end;

procedure Tfrmproduto.DBEdit23Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('PIS').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('PIS_P').asfloat/100;
//      bpreco_vendaClick(frmproduto);
    end;
end;

procedure Tfrmproduto.DBEdit6Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('ICMS_SAIDA').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('ICMS_SAIDA_P').asfloat/100;
//      bpreco_vendaClick(frmproduto);
    end;
end;

procedure Tfrmproduto.DBEdit24Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('COFINS').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('COFINS_P').asfloat/100;
//      bpreco_vendaClick(frmproduto);
    end;
end;


procedure Tfrmproduto.DBEdit25Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('CONTRIBUICAO_SOCIAL_P').asfloat/100;
//      bpreco_vendaClick(frmproduto);
    end;
end;

procedure Tfrmproduto.DBEdit26Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('CUSTO_OPERACIONAL').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('CUSTO_OPERACIONAL_P').asfloat/100;
//      bpreco_vendaClick(frmproduto);
    end;
end;

procedure Tfrmproduto.DBEdit27Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrpreco.State = dsedit) or (qrpreco.State = dsinsert) then
    begin
      qrpreco.fieldbyname('COMISSAO').asfloat :=
      qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat*
      qrpreco.fieldbyname('COMISSAO_P').asfloat/100;
//      bpreco_vendaClick(frmproduto);
    end;
end;

procedure Tfrmproduto.eNCMButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  frmNCM := tfrmNCM.create(self);
  frmNCM.showmodal;
  qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring := frmmodulo.qrNCM.fieldbyname('CODNCMNBS').asstring;
  eNCM.setfocus;
end;


procedure Tfrmproduto.eNCMKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
    begin
      qrproduto.fieldbyname('CLASSIFICACAO_FISCAL').asstring := eNCM.text;
      if eNCM.text <> '' then
        begin

          frmmodulo.qrNCM.Close;
          frmmodulo.qrNCM.SQL.Clear;
          frmmodulo.qrNCM.SQL.Add('select * from ncm where CODNCMNBS = :CODNCMNBS');
          frmmodulo.qrNCM.Params.ParamByName('CODNCMNBS').AsString := eNCM.text;
          frmmodulo.qrNCM.Open;


          //if not FrmPrincipal.Locregistro(frmmodulo.qrNCM,eNCM.text,'CODNCMNBS') then
          if frmmodulo.qrNCM.RecordCount = 0 then
             begin
               application.messagebox('NCM não encontrado!','Atenção',mb_ok+mb_iconerror);
               eNCM.setfocus;
               exit;
             end
             else
                begin
                  perform(wm_nextdlgctl,0,0);
                  //RxDBCalcEdit1.setfocus;
                end

        end

      else
        eNCMButtonClick(frmproduto);
    end;
  end;
end;

procedure Tfrmproduto.ecsosnButtonClick(Sender: TObject);
begin
  IF QRPRODUTO.State <> DSINSERT THEN
  IF QRPRODUTO.STATE <> DSINSERT THEN QRPRODUTO.Edit;

  parametro_pesquisa := '';
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
      zquery1.close;
      zquery1.sql.clear;
      zquery1.sql.add('select * from csosn where CODIGO = '''+resultado_pesquisa1+'''');
      zquery1.open;
      ecsosn.text := zquery1.fieldbyname('codigo').asstring;
      ecsosn.setfocus;
  end;
end;

procedure Tfrmproduto.ecsosnKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    qrproduto.fieldbyname('CSOSN').asstring := frmprincipal.zerarcodigo(ecsosn.text,3);
    if ecsosn.text <> '000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrCSOSN,ecsosn.text,'codigo') then
      begin
          application.messagebox('CSOSN não cadastrada!','Atenção',mb_ok+mb_iconerror);
          eCSOSN.setfocus;
          exit;
      end
      else
        begin
          perform(wm_nextdlgctl,0,0);
          //DBMemo1.setfocus
        end

    else
      ecsosnButtonClick(frmproduto);
  end;

  end;
end;

procedure Tfrmproduto.dbedit13Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (dbedit13.Text = '060') or
     (dbedit13.Text = '010') or
     (dbedit13.Text = '070') then wwDBComboBox2.Text := 'F'
  else
  if (dbedit13.Text = '040') or
     (dbedit13.Text = '030') then wwDBComboBox2.Text := 'I'
  else
  if (dbedit13.Text = '041') or
     (dbedit13.Text = '050') or
     (dbedit13.Text = '051') or
     (dbedit13.Text = '090') then wwDBComboBox2.Text := 'N'
  else
      wwDBComboBox2.Text := 'T';
end;

procedure Tfrmproduto.RxDBCalcEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.ecustoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.evendaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBEdit71KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.RzDBNumericEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBDateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBEdit17KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBEdit70KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.wwDBComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin

if key = #13 then
   perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto.RxDBCalcEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.wwDBComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.wwDBComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.ecombo_piscofinsKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto.BaixarTabelaNCM1Click(Sender: TObject);
begin
  frmbaixarncm := tfrmbaixarncm.Create(self);
  frmbaixarncm.ShowModal;
  frmbaixarncm.Free;
end;

end.
{
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
}
