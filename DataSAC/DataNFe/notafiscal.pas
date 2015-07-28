unit notafiscal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, wwdbedit, wwdblook, ScrollView, CustomGridViewControl,
  CustomGridView, GridView, ComCtrls, frxClass, frxDBSet, frxDesgn,
  Wwdotdot, Wwdbcomb, RzEdit, RzDBEdit, RzDBBnEd, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, RzCmboBx, RzDBCmbo, AdvToolBar,
  AdvToolBarStylers, RzPanel, ImgList, AdvGlowButton, RzDBSpin, RxMemDS,
  MemDS, DBAccess, IBC;

type
  Tfrmnotafiscal = class(TForm)
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsnota: TDataSource;
    POP3: TPopupMenu;
    InciodoNome1: TMenuItem;
    PartedoNome1: TMenuItem;
    FecharLocalizao1: TMenuItem;
    dsnotafiscal_item: TDataSource;
    N1: TMenuItem;
    Incluiritem1: TMenuItem;
    Excluiritem1: TMenuItem;
    AlterarItem1: TMenuItem;
    pgravar: TFlatPanel;
    bimprimir: TBitBtn;
    Bevel5: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Panel3: TPanel;
    Label1: TLabel;
    Label4: TLabel;
    Label36: TLabel;
    DBEdit21: TDBEdit;
    GroupBox1: TGroupBox;
    DBEdit24: TDBEdit;
    GroupBox2: TGroupBox;
    ENUMERO: TDBEdit;
    GroupBox3: TGroupBox;
    DBEdit42: TDBEdit;
    ecodmodelo: TRzDBButtonEdit;
    GroupBox4: TGroupBox;
    eserie: TDBEdit;
    COMBOMOVIMENTO: TwwDBComboBox;
    efilial: TRzDBButtonEdit;
    ecfop: TRzDBButtonEdit;
    ecliente: TRzDBButtonEdit;
    DBEdit23: TDBEdit;
    Label38: TLabel;
    edata_cadastro: TDBDateEdit;
    EDATA_SAIDA: TDBDateEdit;
    Label39: TLabel;
    Label40: TLabel;
    Panel1: TPanel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    Bevel1: TBevel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    bincluir_item: TAdvGlowButton;
    bitbtn9: TAdvGlowButton;
    bexcluir_item: TAdvGlowButton;
    Bevel8: TBevel;
    GroupBox6: TGroupBox;
    DBText1: TDBText;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    PageSheet1: TPageSheet;
    grid1: TwwDBGrid;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Bevel2: TBevel;
    Bevel4: TBevel;
    ETRANSPORTADOR: TDBEdit;
    bloctransportador: TBitBtn;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    Label18: TLabel;
    Label19: TLabel;
    DBEdit1: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    brateio: TButton;
    GroupBox5: TGroupBox;
    check_estoque: TDBCheckBox;
    check_desconto: TDBCheckBox;
    GroupBox7: TGroupBox;
    DBEdit2: TDBEdit;
    GroupBox8: TGroupBox;
    Label5: TLabel;
    ecpf: TDBEdit;
    Label3: TLabel;
    erg: TDBEdit;
    Label2: TLabel;
    eendereco: TDBEdit;
    Bevel9: TBevel;
    lsit: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    pveiculo: TFlatPanel;
    Label9: TLabel;
    FlatPanel2: TFlatPanel;
    Memo1: TMemo;
    Edit1: TEdit;
    PageSheet2: TPageSheet;
    ed_serv1: TRzDBButtonEdit;
    RzDBEdit1: TRzDBEdit;
    OS_QTDE1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    RzDBNumericEdit3: TRzDBNumericEdit;
    RzDBEdit2: TRzDBEdit;
    ed_serv2: TRzDBButtonEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    RzDBNumericEdit5: TRzDBNumericEdit;
    RzDBNumericEdit6: TRzDBNumericEdit;
    RzDBEdit4: TRzDBEdit;
    ed_serv3: TRzDBButtonEdit;
    RzDBEdit5: TRzDBEdit;
    RzDBNumericEdit7: TRzDBNumericEdit;
    RzDBNumericEdit8: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBEdit6: TRzDBEdit;
    ed_serv4: TRzDBButtonEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    RzDBNumericEdit12: TRzDBNumericEdit;
    RzDBEdit8: TRzDBEdit;
    ed_serv5: TRzDBButtonEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBNumericEdit13: TRzDBNumericEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBEdit10: TRzDBEdit;
    ed_serv6: TRzDBButtonEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    RzDBEdit12: TRzDBEdit;
    Label8: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label17: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    RzDBNumericEdit19: TRzDBNumericEdit;
    Label35: TLabel;
    Label37: TLabel;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    Label49: TLabel;
    RzDBEdit13: TRzDBEdit;
    Edit2: TEdit;
    check_prestacao: TDBCheckBox;
    Label20: TLabel;
    combocondpgto: TwwDBLookupCombo;
    Label21: TLabel;
    rqtde: TRzDBSpinEdit;
    wwDBGrid1: TwwDBGrid;
    Bevel3: TBevel;
    dsreceber: TDataSource;
    Label22: TLabel;
    Label50: TLabel;
    rsoma: TRxCalcEdit;
    rdiferenca: TRxCalcEdit;
    check_gerar: TDBCheckBox;
    BDUPLICATA: TButton;
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
    fsduplicata: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fxduplicata: TfrxReport;
    Panel2: TPanel;
    DBText2: TDBText;
    qrreceber: TzQuery;
    qrreceberNUMERO: TStringField;
    qrreceberVENCIMENTO: TDateTimeField;
    qrreceberTIPO: TStringField;
    qrreceberDOCUMENTO: TStringField;
    qrreceberVALOR: TFloatField;
    qrreceberCODIGO: TStringField;
    qrreceberCOD_NOTA: TStringField;
    query: TZQuery;
    qrservico: TZQuery;
    query2: TZQuery;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TStringField;
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
    qrnf: TZQuery;
    qrmodelo: TZQuery;
    qrmodeloSINTEGRA: TStringField;
    qrmodeloMODELO: TStringField;
    qrmodeloCODIGO: TStringField;
    qrmodeloSIGLA: TStringField;
    qrmodeloTIPO_REGISTRO: TStringField;
    qrsoma: TZQuery;
    qrgrade_entrada: TZQuery;
    qrcliente: TZQuery;
    qrnotafiscal: TZQuery;
    MainMenu1: TMainMenu;
    menu1: TMenuItem;
    N2: TMenuItem;
    Bevel10: TBevel;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    Label51: TLabel;
    Label52: TLabel;
    DBCheckBox1: TDBCheckBox;
    DBEdit16: TDBEdit;
    RichEdit1: TRichEdit;
    bimporta_cupom: TAdvGlowButton;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemCODNOTA: TStringField;
    qrnotafiscal_itemCODPRODUTO: TStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemCFOP: TStringField;
    qrnotafiscal_itemCODGRADE: TStringField;
    qrnotafiscal_itemSERIAL: TStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnotafiscal_itemCST: TStringField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TStringField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal_itemCOMPLEMENTO: TBlobField;
    qrnotafiscal_itemITEM: TIntegerField;
    qrnotafiscal_itemCODIGO: TStringField;
    qrnotafiscal_itemGRADE: TStringField;
    qrnotafiscal_itemPIS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemPIS_BASE: TFloatField;
    qrnotafiscal_itemPIS_VALOR: TFloatField;
    qrnotafiscal_itemCOFINS_ALIQUOTA: TFloatField;
    qrnotafiscal_itemCOFINS_BASE: TFloatField;
    qrnotafiscal_itemCOFINS_VALOR: TFloatField;
    qrnotafiscal_itemPRODUTO: TStringField;
    qrnotafiscal_itemUNIDADE: TStringField;
    qrnotafiscal_itemCODBARRA: TStringField;
    ImportaCupomFiscal1: TMenuItem;
    qrapoioPRODUTO: TStringField;
    Edit3: TEdit;
    Edit4: TEdit;
    check_custovenda: TDBCheckBox;
    Label86: TLabel;
    rtipo: TRzDBComboBox;
    rintegracao: TRzDBNumericEdit;
    Label87: TLabel;
    DBEdit17: TDBEdit;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    RVALOR: TRzNumericEdit;
    DBEdit11: TDBEdit;
    qrnotafiscal_itemOUTRAS: TFloatField;
    qrnotafiscal_itemcst_descricao: TStringField;
    qrnotafiscal_itemnatureza: TStringField;
    ehora: TDBEdit;
    qrnotafiscal_itemCSOSN: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure efilialEnter(Sender: TObject);
    procedure efilialExit(Sender: TObject);
    procedure efilialKeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edata_cadastroExit(Sender: TObject);
    procedure bfinalizarClick(Sender: TObject);
    procedure bexcluir_itemClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure bincluir_itemClick(Sender: TObject);
    procedure grid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit12KeyPress(Sender: TObject; var Key: Char);
    procedure Panel1Click(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edata_cadastroKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Enter(Sender: TObject);
    procedure DBEdit17Enter(Sender: TObject);
    procedure DBEdit19Enter(Sender: TObject);
    procedure DBEdit22Enter(Sender: TObject);
    procedure DBEdit22KeyPress(Sender: TObject; var Key: Char);
    procedure bloctransportadorClick(Sender: TObject);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure ETRANSPORTADORExit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3Exit(Sender: TObject);
    procedure DBEdit24Change(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure EDATA_SAIDAEnter(Sender: TObject);
    procedure EDATA_SAIDAKeyPress(Sender: TObject; var Key: Char);
    procedure COMBOMOVIMENTOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Change(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure eserieEnter(Sender: TObject);
    procedure eserieExit(Sender: TObject);
    procedure brateioClick(Sender: TObject);
    procedure qrnotafiscal_itemNewRecord(DataSet: TDataSet);
    procedure ecodmodeloButtonClick(Sender: TObject);
    procedure ecodmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure efilialButtonClick(Sender: TObject);
    procedure ecfopButtonClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure check_estoqueKeyPress(Sender: TObject; var Key: Char);
    procedure check_descontoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure RzDBNumericEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit20KeyPress(Sender: TObject; var Key: Char);
    procedure OS_QTDE1Exit(Sender: TObject);
    procedure ed_serv1KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv1ButtonClick(Sender: TObject);
    procedure ed_serv2KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv3KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv4KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv5KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv6KeyPress(Sender: TObject; var Key: Char);
    procedure ed_serv2ButtonClick(Sender: TObject);
    procedure ed_serv3ButtonClick(Sender: TObject);
    procedure ed_serv4ButtonClick(Sender: TObject);
    procedure ed_serv5ButtonClick(Sender: TObject);
    procedure ed_serv6ButtonClick(Sender: TObject);
    procedure RzDBNumericEdit20Exit(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure combocondpgtoExit(Sender: TObject);
    procedure combocondpgtoKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rqtdeExit(Sender: TObject);
    procedure qrreceberBeforePost(DataSet: TDataSet);
    procedure tab_principalChange(Sender: TObject);
    procedure BDUPLICATAClick(Sender: TObject);
    procedure bimporta_cupomClick(Sender: TObject);
    procedure ImportaCupomFiscal1Click(Sender: TObject);
    procedure ecodmodeloExit(Sender: TObject);

  private
    { Private declarations }
  public
  vopcao: integer;
  vinclui_item : integer;
  qtde_total_item : Double;
    { Public declarations }
  end;

var
  frmnotafiscal: Tfrmnotafiscal;
  comando : string;

  PIS_ANTERIOR, COFINS_ANTERIOR, desconto_anterior,qtde_anterior, valor_anterior, ipi_anterior, icms_anterior, base_anterior, icms_sub_anterior, base_sub_anterior : real;
  vdesconto_anterior,vdesconto_atual: double;

  mostra : boolean;
  ITENS: integer;
  altera_item: integer;
  vtotal_desconto : double;

  nf_item : integer;

  vtot_val_prod,vtotal_produtos,vtotal_nota : Double;

implementation

uses modulo, principal, loc_cfop,  Math, loc_cliente, notafiscal_item,
  loc_filial, loc_transportador, relnf, notafiscal_impressao,
  xloc_notafiscal, xloc_cliente, lista_notasaida, xloc_modelo, compra_menu,
  compra, contasreceber_boleto, boleto_avulso, notafiscal_menu,
  xloc_servico, notafiscal_item2, xloc_cfop, extenso1,
  notafiscal_importacupom, sintegra_gerar;

{$R *.dfm}


procedure Tfrmnotafiscal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  mostra := false;
  action := cafree;
end;

procedure Tfrmnotafiscal.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.bgravarClick(Sender: TObject);
var
  situacao, vitem, ITEM, tipo : integer;
  vdesconto: double;
  vpeso_bruto,vpeso_liquido: double;
  DATA: STRING;
  nPesoItem : Boolean;
begin

  vtot_val_prod := 0;

    if (ecliente.text = '') or (ecliente.text = '000000') then
    begin
      application.messagebox('Favor informar o cliente!','Erro',mb_ok+mb_iconerror);
      ecliente.setfocus;
      exit;
    end;
    if (ecfop.text = '')  then
    begin
      application.messagebox('Favor informar o CFOP!','Erro',mb_ok+mb_iconerror);
      eCFOP.setfocus;
      exit;
    end;
    if (eNUMERO.text = '') or (eNUMERO.text = '000000') then
    begin
      application.messagebox('Favor informar o numero!','Erro',mb_ok+mb_iconerror);
      enumero.setfocus;
      exit;
    end;

    if (ecodmodelo.text = '')  then
    begin
      application.messagebox('Favor informar o modelo!','Erro',mb_ok+mb_iconerror);
      ecodmodelo.setfocus;
      exit;
    end;

    if (edata_cadastro.text = '  /  /    ')  then
    begin
      application.messagebox('Favor informar a data de Emissão!','Erro',mb_ok+mb_iconerror);
      edata_cadastro.setfocus;
      exit;
    end;

    {
    if (edata_saida.text = '  /  /    ')  then
    begin
      application.messagebox('Favor informar a data!','Erro',mb_ok+mb_iconerror);
      edata_saida.setfocus;
      exit;
    end;
    }

    if (efilial.text = '') or (efilial.text = '000000') then
    begin
      application.messagebox('Favor informar a filial!','Erro',mb_ok+mb_iconerror);
      efilial.setfocus;
      exit;
    end;

    frmnotafiscal_menu.qrnota.fieldbyname('DESCONTO_ITEM').AsFloat        := 0;
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat   := 0;
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asstring   := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat   := 0;
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asstring   := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').asfloat   := 0;
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asstring   := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').asfloat   := 0;
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring := '';
    frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asstring   := '';

   item := 1;
   qrreceber.first;
   while not qrReceber.eof do
   begin
     case item of
     1 : BEGIN
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR1').asfloat    := QRRECEBER.FIELDBYNAME('VALOR').ASFLOAT;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO1').asstring  := QRRECEBER.FIELDBYNAME('DOCUMENTO').ASSTRING;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA1').asDATETIME  := QRRECEBER.FIELDBYNAME('VENCIMENTO').ASDATETIME;
         END;
     2 : BEGIN
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR2').asfloat    := QRRECEBER.FIELDBYNAME('VALOR').ASFLOAT;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO2').asstring  := QRRECEBER.FIELDBYNAME('DOCUMENTO').ASSTRING;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA2').asDATETIME  := QRRECEBER.FIELDBYNAME('VENCIMENTO').ASDATETIME;
         END;
     3 : BEGIN
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR3').asfloat    := QRRECEBER.FIELDBYNAME('VALOR').ASFLOAT;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO3').asstring  := QRRECEBER.FIELDBYNAME('DOCUMENTO').ASSTRING;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA3').asDATETIME  := QRRECEBER.FIELDBYNAME('VENCIMENTO').ASDATETIME;
         END;
     4 : BEGIN
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_VALOR4').asfloat    := QRRECEBER.FIELDBYNAME('VALOR').ASFLOAT;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_NUMERO4').asstring  := QRRECEBER.FIELDBYNAME('DOCUMENTO').ASSTRING;
           frmnotafiscal_menu.qrnota.fieldbyname('FATURAMENTO_DATA4').asDATETIME  := QRRECEBER.FIELDBYNAME('VENCIMENTO').ASDATETIME;
         END;

     END;
     ITEM := ITEM + 1;

     QRRECEBER.Next;
   end;

  (******************     CONTAS A RECEBER    *********************)

  if check_prestacao.Checked then
    begin
        query2.close;
        query2.sql.clear;
        query2.sql.add('select * from c000049 where codvenda = ''NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
        query2.sql.add('and valor_pago > 0');
        query2.Open;
        if query2.RecordCount > 0 then
        begin
          application.messagebox('Esta nota fiscal possue prestações que já foram feito pagamentos! Não será possível recriar as prestações!',
                                 'Aviso',mb_ok+mb_iconwarning);

        end
        else
        begin
          query2.close;
          query2.sql.clear;
          query2.sql.add('delete from c000049 where codvenda = ''NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
          query2.execsql;

          if qrreceber.recordcount > 0 then
          begin
            qrreceber.First;
            while not qrreceber.eof do
            begin
              query2.close;
              query2.SQL.clear;
              query2.sql.add('insert into c000049');
              query2.sql.add('(codigo,codvenda,codcliente,codregiao,codvendedor,codcaixa,');
              query2.sql.add(' data_emissao, data_vencimento,valor_original, valor_pago, valor_atual,');
              query2.sql.Add(' documento, tipo, situacao, filtro)');
              query2.sql.add('values');
              query2.sql.add('(:codigo,:codvenda,:codcliente,:codregiao,:codvendedor,:codcaixa,');
              query2.sql.add(' :data_emissao, :data_vencimento,:valor_original, :valor_pago, :valor_atual,');
              query2.sql.Add(' :documento, :tipo, :situacao, :filtro)');

              query2.parambyname('codigo').asstring          := frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring+'/'+frmprincipal.zerarcodigo(qrreceber.fieldbyname('numero').asstring,2);
              query2.parambyname('codvenda').asstring        := 'NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
              query2.parambyname('codcliente').asstring      := frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring;
              query2.parambyname('codregiao').asstring       := '000000';
              if frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').AsString = 'S/VEND' then
                query2.parambyname('codvendedor').asstring     := frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').AsString
              else
                query2.parambyname('codvendedor').asstring     := frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').AsString;
              query2.parambyname('codcaixa').asstring        := '000099';
              query2.parambyname('data_emissao').asdatetime  := frmnotafiscal_menu.qrnota.fieldbyname('data').asdatetime;
              query2.parambyname('data_vencimento').asdatetime := qrreceber.fieldbyname('vencimento').asdatetime;
              query2.parambyname('valor_original').asfloat   := qrreceber.fieldbyname('valor').asfloat;
              query2.parambyname('valor_atual').asfloat      := qrreceber.fieldbyname('valor').asfloat;
              query2.parambyname('documento').asstring       := qrreceber.fieldbyname('documento').asstring;
              query2.parambyname('tipo').asstring            := qrreceber.fieldbyname('tipo').asstring;
              query2.parambyname('situacao').asinteger       := 1;
              query2.parambyname('filtro').asinteger         := 0;
              query2.ExecSQL;

              qrreceber.next;
            end;
          end;
        end;
    end;

    (***************************************************************)

     vitem := qrnotafiscal_item.RecordCount;

     vdesconto_atual := 0;
     vtotal_desconto := 0;

     IF qrnotafiscal_item.RecordCount <> 0 then
     begin
       if (frmnotafiscal_menu.qrnota.State = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
       begin
         if frmnotafiscal_menu.qrnota.fieldbyname('nfe_situacao').asstring = '' then
            frmnotafiscal_menu.qrnota.fieldbyname('nfe_situacao').asinteger := 3;

            brateioClick(frmnotafiscal);

         if vtotal_desconto > 0 then vdesconto_atual := vtotal_desconto;

         if frmnotafiscal_menu.qrnota.State = dsinsert then
         begin

              frmnotafiscal_menu.qrnota.fieldbyname('nfe_situacao').asinteger := 3;

              vpeso_bruto   := frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat;
              vpeso_liquido := frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat;

              qrnotafiscal_item.First;
              nPesoItem := False;
              while not qrnotafiscal_item.Eof do begin
                if ( qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat+
                     qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat ) > 0 then
                  nPesoItem := True;
                qrnotafiscal_item.Next;
              end;
              qrnotafiscal_item.First;

              if nPesoItem = True then
                begin
                  frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat := 0;
                  frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat := 0;
                end;

              frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat := 0;

           frmnotafiscal_menu.qrnota.FieldByName('situacao').asinteger := 1;

           if frmnotafiscal_menu.qrnota.State = dsinsert then
            begin
              frmmodulo.qrfilial.edit;
              frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := StrToInt(ENUMERO.Text)+1; //frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
              frmmodulo.qrfilial.post;
            end;

           ITEM := 1;

           FRMMODULO.QRPRODUTO_MOV.CLOSE;
           FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
           FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
           FRMMODULO.QRPRODUTO_MOV.OPEN;
           qrnotafiscal_item.first;

           while not qrnotafiscal_item.eof do
           begin

             frmmodulo.qrproduto_mov.Insert;
             frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := QRNOTAFISCAL_ITEM.FIELDBYNAME('CODLANCAMENTO').ASSTRING;
             frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codIGO').asstring+'NF';
             frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString := qrnotafiscal_item.fieldbyname('SERIAL').asstring; //frmprincipal.zerarcodigo(INTTOSTR(ITEM),3);
             frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
             frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := QRNOTAFISCAL_item.fieldbyname('codproduto').asstring;
             frmmodulo.qrproduto_mov.fieldbyname('codbarra').asstring := QRNOTAFISCAL_item.fieldbyname('codbarra').asstring;
             frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := QRNOTAFISCAL_item.fieldbyname('qtde').asfloat;
             frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := QRNOTAFISCAL_item.fieldbyname('unitario').asfloat;
             frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := QRNOTAFISCAL_item.fieldbyname('total').asfloat;
             frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := QRNOTAFISCAL_item.fieldbyname('desconto').asfloat;
             frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := QRNOTAFISCAL_item.fieldbyname('unidade').AsString;
             frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := QRNOTAFISCAL_item.fieldbyname('ICMS').asFLOAT;
             frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString := QRNOTAFISCAL_item.fieldbyname('CFOP').AsString;
             frmmodulo.qrproduto_mov.fieldbyname('cupom_numero').asstring := vnumero_inclui_cupom;
             frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmnotafiscal_menu.qrnota.FIELDBYNAME('MODELO_NF').ASSTRING;
             frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmnotafiscal_menu.qrnota.fieldbyname('CODCLIENTE').asstring;
             frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmnotafiscal_menu.qrnota.fieldbyname('CODVENDEDOR').asstring;
             frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmnotafiscal_menu.qrnota.FIELDBYNAME('DATA').ASSTRING;
             if check_estoque.Checked then
             begin
               IF frmnotafiscal_menu.qrnota.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
                    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1
               ELSE
                    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
             end
             else
             begin
               frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 99;// zerado
             end;
             frmmodulo.qrproduto_mov.Post;


              //IF (qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat > 0) or
              //   (qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat > 0 ) then
              //begin
                frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat +
                                                                               (qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat*qrnotafiscal_item.fieldbyname('qtde').asfloat);
                frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat +
                                                                              (qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat*qrnotafiscal_item.fieldbyname('qtde').asfloat);
              //end;
              frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').asfloat +
                                                                                    qrnotafiscal_item.fieldbyname('ISENTO').asfloat;
              vdesconto := vdesconto+qrnotafiscal_item.fieldbyname('DESCONTO').asfloat;




              if qrnotafiscal_item.fieldbyname('BASE_CALCULO').asfloat > 0 THEN
                 frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat +
                                                                                    (qrnotafiscal_item.fieldbyname('BASE_CALCULO').asfloat +
                                                                                    (frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat/VITEM) +
                                                                                    (frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat/VITEM) +
                                                                                    (frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat/VITEM)) ;

              if qrnotafiscal_item.fieldbyname('VALOR_ICMS').asfloat > 0 THEN
                 frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').asfloat +
                                                                                ((qrnotafiscal_item.fieldbyname('BASE_CALCULO').asfloat +
                                                                                (frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat/VITEM) +
                                                                                (frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat/VITEM) +
                                                                                (frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat/VITEM)))
                                                                                *qrnotafiscal_item.fieldbyname('ICMS').asfloat/100;


              frmnotafiscal_menu.qrnota.fieldbyname('base_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('base_sub').asfloat +
                                  qrnotafiscal_item.fieldbyname('base_sub').asfloat;

              frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat +
                                  qrnotafiscal_item.fieldbyname('icms_sub').asfloat;

              frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                              qrnotafiscal_item.fieldbyname('valor_ipi').asfloat;

              frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto_atual;

              vtot_val_prod := vtot_val_prod + qrnotafiscal_item.fieldbyname('SUBTOTAL').AsFloat;

              frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat := vtot_val_prod;


              if frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat > 0 then
                frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat :=
                frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                (vtot_val_prod +
                frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat) -
                frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat
              else
                frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat :=
                //frmprincipal.Arredondar(
                frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                (vtot_val_prod +
                frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat) -
                frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat;  //,2 ) ;
           IF (check_desconto.Checked = FALSE) OR
              (frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat <> 0) then
                 frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto_atual
              else
                 frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto;

          if check_desconto.Checked = True then
            begin
              frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := (vtotal_produtos-vdesconto_atual);
              frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').asfloat;

              frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := 0;

              //ShowMessage('A DESCONTO ITEM => '+ FloatToStr(frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat));

            end;

              frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger := vitem;

             ITEM := ITEM + 1;
             qrnotafiscal_item.next;
             Application.ProcessMessages;
           end;
         end
         ELSE
         BEGIN (**********  editar a tabela de movimento  ************)
           ITEM := 1;

              vpeso_bruto   := frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat;
              vpeso_liquido := frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat;
              frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := 0;
              frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat := 0;
              if frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat = 0 then frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat := vpeso_bruto;
              if frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat = 0 then frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat := vpeso_liquido;



           qrnotafiscal_item.first;
           while not qrnotafiscal_item.eof do
           begin



              //IF (qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat > 0) or
              //   (qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat > 0 ) then
              //begin
                frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('peso_bruto').asfloat +
                                                                               (qrnotafiscal_item.fieldbyname('PESO_BRUTO').asfloat*qrnotafiscal_item.fieldbyname('qtde').asfloat);
                frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('peso_liquido').asfloat +
                                                                              (qrnotafiscal_item.fieldbyname('PESO_LIQUIDO').asfloat*qrnotafiscal_item.fieldbyname('qtde').asfloat);
              //end;
              frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('valor_isento_icms').asfloat +
                                                                                    qrnotafiscal_item.fieldbyname('ISENTO').asfloat;
              vdesconto := vdesconto+qrnotafiscal_item.fieldbyname('DESCONTO').asfloat;




              if qrnotafiscal_item.fieldbyname('BASE_CALCULO').asfloat > 0 THEN
                 frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat +
                                                                                    (qrnotafiscal_item.fieldbyname('BASE_CALCULO').asfloat +
                                                                                    (frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat/VITEM) +
                                                                                    (frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat/VITEM) +
                                                                                    (frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat/VITEM)) ;

              if qrnotafiscal_item.fieldbyname('VALOR_ICMS').asfloat > 0 THEN
                 frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('valor_ICMS').asfloat +
                                                                                ((qrnotafiscal_item.fieldbyname('BASE_CALCULO').asfloat +
                                                                                (frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat/VITEM) +
                                                                                (frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat/VITEM) +
                                                                                (frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat/VITEM)))
                                                                                *qrnotafiscal_item.fieldbyname('ICMS').asfloat/100;


              frmnotafiscal_menu.qrnota.fieldbyname('base_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('base_sub').asfloat +
                                  qrnotafiscal_item.fieldbyname('base_sub').asfloat;

              frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat +
                                  qrnotafiscal_item.fieldbyname('icms_sub').asfloat;

              frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat := frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                              qrnotafiscal_item.fieldbyname('valor_ipi').asfloat;

              vtot_val_prod := vtot_val_prod + qrnotafiscal_item.fieldbyname('SUBTOTAL').AsFloat;

              frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat := vtot_val_prod;

              if frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat > 0 then
                frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat :=
                frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                (vtot_val_prod +
                frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat) -
                frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat
              else
                frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat :=
                //frmprincipal.Arredondar(
                frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                (vtot_val_prod +
                frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat) -
                frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat;  //,2 ) ;

              frmnotafiscal_menu.qrnota.FieldByName('itens').asinteger := vitem;

             FRMMODULO.QRPRODUTO_MOV.CLOSE;
             FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
             FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODIGO = '''+QRNOTAFISCAL_ITEM.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
             FRMMODULO.QRPRODUTO_MOV.OPEN;

             IF FRMMODULO.QRPRODUTO_MOV.RecordCount > 0 THEN
             BEGIN


               frmmodulo.qrproduto_mov.EDIT;
               frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codIGO').asstring+'NF';
               frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := QRNOTAFISCAL_item.fieldbyname('codproduto').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('codbarra').asstring := QRNOTAFISCAL_item.fieldbyname('codbarra').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := QRNOTAFISCAL_item.fieldbyname('qtde').asfloat;
               frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := QRNOTAFISCAL_item.fieldbyname('unitario').asfloat;

               frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := QRNOTAFISCAL_item.fieldbyname('total').asfloat;
               frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := QRNOTAFISCAL_item.fieldbyname('desconto').asfloat;

               frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := QRNOTAFISCAL_item.fieldbyname('unidade').AsString;
               frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := QRNOTAFISCAL_item.fieldbyname('ICMS').asFLOAT;
               frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString := QRNOTAFISCAL_item.fieldbyname('CFOP').AsString;
               frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmnotafiscal_menu.qrnota.FIELDBYNAME('MODELO_NF').ASSTRING;
               frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codCLIENTE').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codvendedor').asstring; //'S/VEND';


               if check_estoque.Checked then
               begin
                 IF frmnotafiscal_menu.qrnota.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
                    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1
                 ELSE
                    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA

               end
               else
               begin
                 frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 99;// nada
               end;

               frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmnotafiscal_menu.qrnota.FIELDBYNAME('DATA').ASSTRING;
               frmmodulo.qrproduto_mov.Post;

               if (frmnotafiscal_menu.qrnota.FieldByName('desconto').AsFloat > 0) and (check_desconto.Checked = false) and (frmnotafiscal_menu.qrnota.state = dsinsert) then
               begin
                 query.close;
                 query.sql.clear;
                 query.sql.add('update c000062 set');
                 query.sql.add('desconto = :desconto, total = :totalz');
                  if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
                 begin
                    query.sql.add(',codigo = '''+frmprincipal.codifica('000062')+'''');
                    query.sql.add(' where codproduto = :codproduto and codnota = :codnota and total = :total and codlancamento = :codlancamento');
                    query.params.ParamByName('totalz').asfloat          := qrnotafiscal_item.fieldbyname('total').asfloat;
                    query.params.ParamByName('codproduto').asstring    := qrnotafiscal_item.fieldbyname('codproduto').asstring;
                    query.params.ParamByName('codnota').asstring       := qrnotafiscal_item.fieldbyname('codnota').asstring;
                    query.params.ParamByName('codlancamento').asstring := qrnotafiscal_item.fieldbyname('codlancamento').asstring;
                 end
                 else
                 begin
                    query.sql.add(' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
                 end;
                 query.params.ParamByName('desconto').AsFloat := 0;
                 query.params.ParamByName('totalz').AsFloat := qrnotafiscal_item.FieldByName('subtotal').AsFloat;
                 query.execsql;
               end;
             END
             ELSE
             BEGIN

               frmmodulo.qrproduto_mov.Insert;
               frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := QRNOTAFISCAL_ITEM.FIELDBYNAME('CODLANCAMENTO').ASSTRING;
               frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codIGO').asstring+'NF';
               frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString := qrnotafiscal_item.fieldbyname('SERIAL').asstring; //frmprincipal.zerarcodigo(INTTOSTR(ITEM),3);
               frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmnotafiscal_menu.qrnota.fieldbyname('NUMERO').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := QRNOTAFISCAL_item.fieldbyname('codproduto').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('codbarra').asstring := QRNOTAFISCAL_item.fieldbyname('codbarra').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := QRNOTAFISCAL_item.fieldbyname('qtde').asfloat;
               frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := QRNOTAFISCAL_item.fieldbyname('unitario').asfloat;
               frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := QRNOTAFISCAL_item.fieldbyname('total').asfloat;
               frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := QRNOTAFISCAL_item.fieldbyname('desconto').asfloat;
               frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := QRNOTAFISCAL_item.fieldbyname('unidade').AsString;
               frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := QRNOTAFISCAL_item.fieldbyname('ICMS').asFLOAT;
               frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString := QRNOTAFISCAL_item.fieldbyname('CFOP').AsString;
               frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmnotafiscal_menu.qrnota.FIELDBYNAME('MODELO_NF').ASSTRING;
               frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codCLIENTE').asstring;
               frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmnotafiscal_menu.qrnota.fieldbyname('codvendedor').asstring;//'S/VEND';
               if check_estoque.Checked then
               begin
                 IF frmnotafiscal_menu.qrnota.FIELDBYNAME('MOVIMENTO').ASSTRING = 'E' THEN
                    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1
                 ELSE
                    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 2;// VENDA
               end
               else
               begin
                 frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 99;// nada
               end;
               frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmnotafiscal_menu.qrnota.FIELDBYNAME('DATA').ASSTRING;
               frmmodulo.qrproduto_mov.Post;

               query.close;
               query.sql.clear;
               query.sql.add('update c000062 set');
               query.sql.add('codlancamento = :codlancamento');
               if (frmnotafiscal_menu.qrnota.FieldByName('desconto').AsFloat > 0) and
                 (check_desconto.Checked = false) then
               begin
                  query.sql.add(',desconto = :desconto, total = :totalz');
                  query.params.ParamByName('desconto').AsFloat := 0;
                  query.params.ParamByName('totalz').AsFloat := qrnotafiscal_item.FieldByName('subtotal').AsFloat;
               end;
               if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
               begin
                  query.sql.add(',codigo = '''+frmprincipal.codifica('000062')+'''');
                  query.sql.add(' where codproduto = :codproduto and codnota = :codnota and total = :totalz and codlancamento = :codlancamento');
                  query.params.ParamByName('totalz').asfloat          := qrnotafiscal_item.fieldbyname('total').asfloat;
                  query.params.ParamByName('codproduto').asstring    := qrnotafiscal_item.fieldbyname('codproduto').asstring;
                  query.params.ParamByName('codnota').asstring       := qrnotafiscal_item.fieldbyname('codnota').asstring;
                  query.params.ParamByName('codlancamento').asstring := qrnotafiscal_item.fieldbyname('codlancamento').asstring;
               end
               else
               begin
                  query.sql.add(' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
               end;


               query.params.parambyname('CODLANCAMENTO').ASSTRING := frmmodulo.qrproduto_mov.FieldByName('codigo').AsString;
               query.execsql;
             END;
             ITEM := ITEM + 1;
             qrnotafiscal_item.next;
             Application.ProcessMessages;

           end;// looping do item

           IF (check_desconto.Checked = FALSE) OR
              (frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat <> 0) then
                 frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto_atual
              else
                 frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := vdesconto;

          if check_desconto.Checked = True then
            begin
              frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := (vtotal_produtos-vdesconto_atual);
              frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat := frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat+
                                                                             frmnotafiscal_menu.qrnota.fieldbyname('ICMS_SUB').asfloat;

              frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := 0;

              //ShowMessage('A DESCONTO ITEM => '+ FloatToStr(frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat));

            end;

         end; // se a nota estah em edicao
       end; // se a nota fiscal --> state in dsinsert e dsedit

        if frmnotafiscal_menu.qrnota.state = dsinsert then
          begin
            if check_estoque.Checked = false then
              begin
                IF frmmodulo.qrconfig.FieldByName('BAIXAR_ESTOQUE_NOTA_SAIDA').AsInteger = 1 THEN
                  frmnotafiscal_menu.qrnotaBAIXA_ESTOQUE.AsString := 'S'
                else
                  frmnotafiscal_menu.qrnotaBAIXA_ESTOQUE.AsString := 'N';
              end;
          end;


      frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat := frmprincipal.Arredondar(frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat,2);
      frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat     := frmprincipal.Arredondar(frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat,2);

      if frmnotafiscal_menu.qrnota.fieldbyname('TRANSPORTADOR').asstring = 'DESTINATARIO' then  // quando for o próprio destinatário
        frmnotafiscal_menu.qrnota.fieldbyname('FRETE_CONTA').asinteger := 2;

      frmnotafiscal_menu.qrnota.POST;

       Application.ProcessMessages;

       frmmodulo.Conexao.Commit;

       tab_principal.ActivePageIndex := 0;
       bimprimirClick(frmnotafiscal);

       if check_gerar.Checked then
       begin
        if qrreceber.recordcount > 0 then
        BDUPLICATAClick(frmnotafiscal);
       end;

       frmmodulo.qrcfop.close;
       frmmodulo.qrcfop.sql.clear;
       frmmodulo.qrcfop.SQL.add('select * from c000030 ');
       frmmodulo.qrcfop.open;
       frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';
       close;
     end
     else
     begin
       if application.messagebox('Não há nenhum Produto lançado para esta Nota ou a Nota é de Correção! Continua?','Atenção',mb_yesno+mb_iconquestion) = idyes then
       begin

          if frmnotafiscal_menu.qrnota.State = dsinsert then
            begin
              frmmodulo.qrfilial.edit;
              frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger := StrToInt(ENUMERO.Text)+1; //frmmodulo.qrfilial.fieldbyname('notafiscal').asinteger + 1;
              frmmodulo.qrfilial.post;
            end;

          frmnotafiscal_menu.qrnota.POST;
          frmmodulo.Conexao.Commit;

          tab_principal.ActivePageIndex := 0;
          bimprimirClick(frmnotafiscal);
          frmmodulo.qrcfop.close;
          frmmodulo.qrcfop.sql.clear;
          frmmodulo.qrcfop.SQL.add('select * from c000030 ');
          frmmodulo.qrcfop.open;
          frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';
          close;
        end
        else
         grid1.setfocus;
     end;
  bimporta_cupom.Visible := false;
end;

procedure Tfrmnotafiscal.bcancelarClick(Sender: TObject);
begin

  if frmnotafiscal_menu.qrnota.state = dsinsert then
    begin
      query2.close;
      query2.sql.clear;
      query2.sql.add('delete from c000117 where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
      query2.execsql;

      qrnotafiscal_item.First;
      while not qrnotafiscal_item.eof do
        begin
          IF qrnotafiscal_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' THEN
            BEGIN
              FRMMODULO.QRPRODUTO_MOV.CLOSE;
              FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
              FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnotafiscal_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
              FRMMODULO.QRPRODUTO_MOV.ExecSQL;
            end;
          if qrnotafiscal_item.FieldByName('codgrade').asstring <> '' then
            begin
              IF frmnotafiscal_menu.QRNOTA.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING = 'S' THEN
                BEGIN
                  frmmodulo.qrgrade_produto.close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrnotafiscal_item.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
                  frmmodulo.qrgrade_produto.sql.add('and codigo = '''+qrnotafiscal_item.fieldbyname('codgrade').asstring+'''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecordCount > 0 then
                    BEGIN
                      frmmodulo.qrgrade_produto.edit;

                      if frmnotafiscal_menu.qrnota.FieldByName('MOVIMENTO').asstring = 'S' then
                        frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat +
                                                                          qrnotafiscal_item.fieldbyname('qtde').asfloat
                      else
                        frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                          qrnotafiscal_item.fieldbyname('qtde').asfloat;

                      frmmodulo.qrgrade_produto.post;
                  END;
                END;
            end;
          if qrnotafiscal_item.fieldbyname('serial').asstring <> '' then
            begin
              query.close;
              query.sql.clear;
              query.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
              query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
              query.sql.add('where serial = '''+qrnotafiscal_item.fieldbyname('serial').asstring+'''');
              query.sql.add('and codproduto = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
              query.params.Parambyname('situacao').AsInteger  := 1;
              query.params.Parambyname('cliente').asstring    := '';
              query.params.Parambyname('codcliente').asstring := '';
              query.params.Parambyname('DATAVENDA').ASdatetime:= date;
              query.params.Parambyname('codvenda').asstring   := '';
              query.params.Parambyname('precovenda').asfloat  := 0;
              query.execsql;
            end;

          qrnotafiscal_item.next;
          Application.ProcessMessages;
        end;

        query.close;
        query.sql.clear;
        query.sql.add('delete from c000062');
        query.sql.add('Where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
        query.execsql;
    end;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
      frmnotafiscal_menu.qrnota.cancel;
    frmmodulo.Conexao.commit;

  frmnotafiscal_menu.qrnota.Refresh;
  comando := '';
  tab_principal.ActivePageIndex := 0;
  bimporta_cupom.Visible := false;
  close;
end;

procedure Tfrmnotafiscal.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmnotafiscal.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmnotafiscal.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmnotafiscal_menu.qrnota.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmnotafiscal.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotafiscal.efilialEnter(Sender: TObject);
begin


tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmnotafiscal.efilialExit(Sender: TObject);
var
  key : char;
begin
  tedit(sender).Color := clwindow;
  IF (frmnotafiscal_menu.qrnota.state = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin
    if efilial.text <> '' then
    begin
      efilial.Text := frmprincipal.zerarcodigo(efilial.text,6);

      if not frmprincipal.Locregistro(frmmodulo.qrfilial,efilial.text,'codigo') then
      begin
        efilialButtonClick(frmnotafiscal);
      end
      else
      begin
        if frmnotafiscal_menu.qrnota.State = dsinsert then
        begin
          frmnotafiscal_menu.qrnota.FieldByName('numero').asstring :=
          frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
          frmnotafiscal_menu.qrnota.fieldbyname('filial').asstring := frmmodulo.qrfilial.fieldbyname('filial').asstring;
        end;
        if key = #13 then
          ecliente.setfocus;

      end;
    end
    else
      efilialButtonClick(frmnotafiscal);
  end;

end;

procedure Tfrmnotafiscal.efilialKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmnotafiscal.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotafiscal.edata_cadastroExit(Sender: TObject);
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

procedure Tfrmnotafiscal.bfinalizarClick(Sender: TObject);
begin
  bgravar.setfocus;
end;

procedure Tfrmnotafiscal.bexcluir_itemClick(Sender: TObject);
begin

  if frmprincipal.autentica('Excluir produto NF',4) then
  begin


      frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_CALCULO').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('BASE_CALCULO').asfloat;

      frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('PIS').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('PIS_VALOR').asfloat;

      frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('cofins').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('cofins_VALOR').asfloat;

      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('VALOR_ICMS').asfloat;

      frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('BASE_sub').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('BASE_sub').asfloat;

      frmnotafiscal_menu.qrnota.fieldbyname('ICMS_sub').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat -
      dsnotafiscal_item.dataset.fieldbyname('icms_sub').asfloat;


      {PESO_NOVO}
      frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('PESO_BRUTO').asfloat -
      (dsnotafiscal_item.dataset.fieldbyname('PESO_BRUTO').asfloat*
      dsnotafiscal_item.dataset.fieldbyname('QTDE').asfloat);


      frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat :=
      frmnotafiscal_menu.qrnota.fieldbyname('PESO_LIQUIDO').asfloat -
      (dsnotafiscal_item.dataset.fieldbyname('PESO_LIQUIDO').asfloat*
      dsnotafiscal_item.dataset.fieldbyname('QTDE').asfloat);




    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat :=
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat - dsnotafiscal_item.dataset.fieldbyname('valor_ipi').asfloat;




  frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat := frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat -
                                                                       dsnotafiscal_item.DataSet.fieldbyname('DESCONTO').asfloat;

  frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat := frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat -
                                                                       dsnotafiscal_item.DataSet.fieldbyname('subTOTAL').asfloat;


  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat :=
  //frmprincipal.Arredondar(

                                                                  frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                                                                   frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat +
                                                                   frmnotafiscal_menu.qrnota.FieldByName('frete').asfloat +
                                                                   frmnotafiscal_menu.qrnota.FieldByName('icms_sub').asfloat +
                                                                   frmnotafiscal_menu.qrnota.FieldByName('seguro').asfloat +
                                                                   frmnotafiscal_menu.qrnota.FieldByName('outras_despesas').asfloat +
                                                                   frmnotafiscal_menu.qrnota.FieldByName('valor_total_ipi').asfloat -
                                                                   frmnotafiscal_menu.qrnota.FieldByName('desconto').asfloat;  // , 2);



      IF qrnotafiscal_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' THEN
      BEGIN
        FRMMODULO.QRPRODUTO_MOV.CLOSE;
        FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
        FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnotafiscal_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
        FRMMODULO.QRPRODUTO_MOV.ExecSQL;
      end;



      if qrnotafiscal_item.FieldByName('codgrade').asstring <> '' then
      begin
        IF frmnotafiscal_menu.QRNOTA.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING = 'S' THEN
        BEGIN
          frmmodulo.qrgrade_produto.close;
          frmmodulo.qrgrade_produto.sql.clear;
          frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrnotafiscal_item.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
          frmmodulo.qrgrade_produto.sql.add('and codigo = '''+qrnotafiscal_item.fieldbyname('codgrade').asstring+'''');
          frmmodulo.qrgrade_produto.open;
          if frmmodulo.qrgrade_produto.RecordCount > 0 then
          BEGIN
              frmmodulo.qrgrade_produto.edit;
              frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat +
                                                                          qrnotafiscal_item.fieldbyname('qtde').asfloat;
              frmmodulo.qrgrade_produto.post;
          END;
        END;
      end;

      if qrnotafiscal_item.fieldbyname('serial').asstring <> '' then
      begin
        query.close;
        query.sql.clear;
        query.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
        query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
        query.sql.add('where serial = '''+qrnotafiscal_item.fieldbyname('serial').asstring+'''');
        query.sql.add('and codproduto = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
        query.params.Parambyname('situacao').AsInteger  := 1;
        query.params.Parambyname('cliente').asstring    := '';
        query.params.Parambyname('codcliente').asstring := '';
        query.params.Parambyname('DATAVENDA').ASSTRING  := '';
        query.params.Parambyname('codvenda').asstring   := '';
        query.params.Parambyname('precovenda').asfloat  := 0;
        query.execsql;

      end;





    query.close;
    query.sql.clear;
    query.sql.add('delete from c000062 ');
    if qrnotafiscal_item.FieldByName('codigo').asstring = '' then
    begin
      query.sql.add('where total = :totalz and codproduto = :codproduto and codnota = :codnota and codlancamento = :codlancamento');
      query.params.ParamByName('totalz').asfloat := qrnotafiscal_item.fieldbyname('total').asfloat;
      query.params.ParamByName('codproduto').asstring := qrnotafiscal_item.fieldbyname('codproduto').asstring;
      query.params.ParamByName('codnota').asstring := qrnotafiscal_item.fieldbyname('codnota').asstring;
      query.params.ParamByName('codlancamento').asstring := qrnotafiscal_item.fieldbyname('codlancamento').asstring;
    end
    else
    begin
     query.sql.add('where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+''' and codnota = :codnota');
      query.params.ParamByName('codnota').asstring := qrnotafiscal_item.fieldbyname('codnota').asstring;
    end;
    query.ExecSQL;



  qrnotafiscal_item.Close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnotafiscal_item.open;

   nf_item := 1;
  qrnotafiscal_item.first;
  while not qrnotafiscal_item.eof do
  begin
     query.close;
     query.sql.clear;
     query.sql.add('update c000062 set item = '+inttostr(nf_item)+' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
     query.execsql;
    NF_ITEM := NF_ITEM + 1;
    qrnotafiscal_item.Next;
    Application.ProcessMessages;
  end;
  frmmodulo.conexao.commit;

  frmnotafiscal_menu.qrnota.fieldbyname('ITENS').asinteger := nf_item - 1;


  qrnotafiscal_item.refresh;

  grid1.setfocus;


  frmmodulo.qrconfig.Open;
   IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
   BEGIN
    if qrnotafiscal_item.RecordCount = 0 then
    begin
      venda_veiculo := false;
      pveiculo.visible := false;
    end;
  END;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;




end;

procedure Tfrmnotafiscal.ENUMEROExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

  if (frmnotafiscal_menu.qrnota.State = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
    frmnotafiscal_menu.qrnota.FieldByName('numero').asstring := frmprincipal.zerarcodigo(ENUMERO.text,6);

  if frmnotafiscal_menu.qrnota.FieldByName('numero').asstring = '000000' then
  begin
    application.messagebox('Favor informar um número válido!','Atenção',mb_ok+MB_ICONERROR);
    enumero.setfocus;
  end
  ELSE
  BEGIN
    QUERY.CLOSE;
    QUERY.SQL.CLEAR;
    QUERY.SQL.ADD('SELECT * FROM C000061');
    QUERY.SQL.ADD('WHERE NUMERO = '''+frmnotafiscal_menu.qrnota.FieldByName('numero').asstring+'''');
    QUERY.OPEN;

    IF QUERY.RecordCount > 0 THEN
      BEGIN
        if (frmnotafiscal_menu.qrnota.State = dsinsert) then
          begin
            if APPLICATION.MESSAGEBOX('Existe uma nota fiscal já emitida com este número! Deseja prosseguir?','Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idno then
              bcancelarClick(frmnotafiscal);
          end;
      END;

  END;
end;

procedure Tfrmnotafiscal.ecfopExit(Sender: TObject);
begin

  if (Edit3.Text = Edit4.Text) and (copy(ecfop.Text,1,1) = '6') then
    begin
      showmessage('CFOP Invalido para essa Operação com Clientes de Dentro do Estado!');
      ecfop.SetFocus;
      exit;
    end
  else if (Edit3.Text <> Edit4.Text) and (copy(ecfop.Text,1,1) = '5') then
    begin
      showmessage('CFOP Invalido para essa Operação com Clientes de Fora do Estado!');
      ecfop.SetFocus;
      exit;
    end;

  IF (frmnotafiscal_menu.qrnota.state = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin



      if ecfop.text <> '' then
      begin
        frmmodulo.qrcfop.close;
        frmmodulo.qrcfop.sql.clear;
        frmmodulo.qrcfop.sql.add('select * from c000030');
        frmmodulo.qrcfop.sql.add('where cfop = '''+ecfop.text+'''');
        if combomovimento.text = 'S' then
        frmmodulo.qrcfop.sql.add('and tipo = ''2''')
        else
        frmmodulo.qrcfop.sql.add('and tipo = ''1''');
        frmmodulo.qrcfop.open;

        if frmmodulo.qrcfop.recordcount > 0 then
        begin
          frmnotafiscal_menu.qrnota.FieldByName('INF1').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS1').ASSTRING;
          frmnotafiscal_menu.qrnota.FieldByName('INF2').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS2').ASSTRING;
          frmnotafiscal_menu.qrnota.FieldByName('INF3').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS3').ASSTRING;
          frmnotafiscal_menu.qrnota.FieldByName('INF4').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS4').ASSTRING;
          frmnotafiscal_menu.qrnota.FieldByName('cfop').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('cfop').ASSTRING;
          enumero.SetFocus;
        //ecliente.setfocus;
        END
        else
        begin
          application.messagebox('CFOP não encontrado!','Erro',mb_ok+mb_iconerror);
          ecfop.setfocus;
          exit;
        end;
      END
      else
        ecfopButtonClick(frmnotafiscal);

  end;

end;

procedure Tfrmnotafiscal.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if ecliente.Text = '' then
    begin
      application.messagebox('Favor Informar o Cliente!','Atenção',mb_ok+mb_iconwarning);
      ecliente.SetFocus;
      exit;
    end;
end;

procedure Tfrmnotafiscal.bincluir_itemClick(Sender: TObject);
begin

  frmmodulo.qrconfig.Open;
  IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
    BEGIN
      IF VENDA_VEICULO THEN
        BEGIN
          application.messagebox('NF de veículo não pode conter outros produtos!','Atenção',mb_ok+mb_iconerror);
          exit;
        END;
    END;

  qtde_anterior := 0;
  frmnotafiscal_item2 := tfrmnotafiscal_item2.create(self);
  with frmnotafiscal_item2 do
  begin
    ed_cfop.text           := ecfop.text;
    ed_nome_cfop.text      := dbedit21.text;
    ed_produto.text        := '';
    ed_serial.text         := '';
    ed_codigo.text         := '';
    ed_estoque.value       := 0 ;
    ed_grade.text          := '';
    ed_classific.text      := '';
    ed_qtde.value          := 0 ;
    ed_unitario.value      := 0 ;
    ed_subtotal.value      := 0 ;
    ed_descontop.value     := 0 ;
    ed_desconto.value      := 0 ;
    ed_total.value         := 0 ;
    ed_cst.text            := '';
    ed_nome_cst.text       := '';
    ed_icms_aliquota.value := 0 ;
    ed_icms_reducao.value  := 0 ;
    ed_icms_base.value     := 0 ;
    ed_icms_valor.value    := 0 ;
    ed_sub_base.value      := 0 ;
    ed_sub_valor.value     := 0 ;
    ed_isenta.value        := 0 ;
    ed_outras.value        := 0 ;
    ed_ipi_aliquota.value  := 0 ;
    ed_ipi_valor.value     := 0 ;
    pstate.caption         := 'Inclusão';
    pstate.color           := clblue;
    pcodigo.caption        := '------';
  end;
  frmnotafiscal_item2.showmodal;

  frmnotafiscal_menu.qrnota.fieldbyname('ITENS').asinteger := nf_item - 1;

    if confirmado then
    begin
       Application.ProcessMessages;
       bincluir_itemClick(frmnotafiscal);
    end;

  qrnotafiscal_item.Close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnotafiscal_item.open;
  qrnotafiscal_item.Last;

end;

procedure Tfrmnotafiscal.grid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotafiscal.DBEdit7Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin
    frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat -
    frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('FRETE').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('seguro').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('OUTRAS_DESPESAS').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat;
  end;
end;

procedure Tfrmnotafiscal.DBEdit12KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    //PageView1.ActivePageIndex := 1;
    tab_principal.ActivePageIndex := 1;

    if combocondpgto.text = '' then
       combocondpgto.setfocus
    else
       wwdbgrid1.setfocus;
  end;
end;

procedure Tfrmnotafiscal.Panel1Click(Sender: TObject);
begin
  //VERIFICAR
end;

procedure Tfrmnotafiscal.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmnotafiscal_menu.qrnota.State = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin

     vdesconto_anterior := frmnotafiscal_menu.qrnota.FieldByName('desconto').asfloat;

    frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat :=
    frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_PRODUTOS').asfloat -
    frmnotafiscal_menu.qrnota.FieldByName('DESCONTO').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('FRETE').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('seguro').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('OUTRAS_DESPESAS').asfloat +
    frmnotafiscal_menu.qrnota.FieldByName('VALOR_TOTAL_IPI').asfloat;

{    IF CHECK_DESCONTO.CHECKED = FALSE THEN
    BEGIN
      IF FRMNOTAFISCAL_MENU.QRNOTA.FIELDBYNAME('DESCONTO').ASFLOAT > 0 THEN
      BEGIN
        IF qrnotafiscal_item.FIELDBYNAME('ICMS').ASFLOAT > 0 THEN
        BEGIN
          FRMNOTAFISCAL_MENU.QRNOTA.FIELDBYNAME('BASE_CALCULO').ASFLOAT :=  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat;
          FRMNOTAFISCAL_MENU.QRNOTA.FIELDBYNAME('VALOR_ICMS').ASFLOAT   :=  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat;

        END;
      END;
    END;

}
  end;

end;

procedure Tfrmnotafiscal.FormCreate(Sender: TObject);
begin
  mostra := false;
end;

procedure Tfrmnotafiscal.edata_cadastroKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmnotafiscal.DBEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmnotafiscal.DBEdit41KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    //PageView1.ActivePageIndex := 0;
    tab_principal.ActivePageIndex := 0;

    BGRAVAR.SETFOCUS;
  END;
end;

procedure Tfrmnotafiscal.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmnotafiscal.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal.DBDateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmnotafiscal.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF TEDIT(SENDER).Text = '  /  /    ' THEN
    BEGIN
      //PageView1.ActivePageINDEX := 2;
      tab_principal.ActivePageIndex := 2;

      ETRANSPORTADOR.SetFocus;
    END
    ELSE
      PERFORM(WM_NEXTDLGCTL,0,0);
  END;
end;

procedure Tfrmnotafiscal.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmnotafiscal.DBEdit15Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR1').ASFLOAT :=
  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').ASFLOAT -
  (frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR4').ASFLOAT );



end;

procedure Tfrmnotafiscal.DBEdit17Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR2').ASFLOAT :=
  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').ASFLOAT -
  (frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR4').ASFLOAT );

end;

procedure Tfrmnotafiscal.DBEdit19Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR3').ASFLOAT :=
  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').ASFLOAT -
  (frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR4').ASFLOAT );

end;

procedure Tfrmnotafiscal.DBEdit22Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
  frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR4').ASFLOAT :=
  frmnotafiscal_menu.qrnota.FieldByName('TOTAL_NOTA').ASFLOAT -
  (frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR1').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR2').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR3').ASFLOAT +
   frmnotafiscal_menu.qrnota.FieldByName('FATURAMENTO_VALOR4').ASFLOAT );

end;

procedure Tfrmnotafiscal.DBEdit22KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    //PageView1.ActivePageIndex := 2;
    tab_principal.ActivePageIndex := 2;

    ETRANSPORTADOR.SETFOCUS;
  END;
end;

procedure Tfrmnotafiscal.bloctransportadorClick(Sender: TObject);
begin
  frmloc_transportador := tfrmloc_transportador.create(self);
  frmloc_transportador.showmodal;
  frmnotafiscal_menu.qrnota.fieldbyname('codtransportador').asstring := frmmodulo.qrtransportador.fieldbyname('codigo').asstring;

  frmnotafiscal_menu.qrnota.FieldByName('placa').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('placa').ASSTRING;
  frmnotafiscal_menu.qrnota.FieldByName('placa_uf').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('ufplaca').ASSTRING;
  dbedit26.setfocus;
end;

procedure Tfrmnotafiscal.DBEdit26Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmnotafiscal.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    //PageView1.ActivePageIndex := 3;
    tab_principal.ActivePageIndex := 3;

    dbedit1.setfocus;
  end;
end;

procedure Tfrmnotafiscal.ETRANSPORTADORExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmnotafiscal_menu.qrnota.state = dsinsert) or (frmnotafiscal_menu.qrnota.State = dsedit) then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('codtransportador').asstring := frmprincipal.zerarcodigo(etransportador.text,6);
    if etransportador.text <> '000000' then
    BEGIN
      if not frmprincipal.Locregistro(frmmodulo.qrtransportador,etransportador.text,'codigo') then bloctransportadorclick(frmnotafiscal)
      else
      BEGIN
        frmnotafiscal_menu.qrnota.FieldByName('placa').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('placa').ASSTRING;
         frmnotafiscal_menu.qrnota.FieldByName('placa_uf').ASSTRING := FRMMODULO.qrtransportador.FIELDBYNAME('ufplaca').ASSTRING;
        dbedit26.setfocus;
      END;
    END
    else
      bloctransportador.SetFocus;

  end;
end;

procedure Tfrmnotafiscal.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal.DBEdit3Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmnotafiscal.DBEdit24Change(Sender: TObject);
begin
  if mostra then
  begin
  try
  if frmnotafiscal_menu.qrnota.RecordCount > 0 then
  begin
    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.SQL.add('select * from c000062 where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
    qrnotafiscal_item.open;
  end;

  //
  except
  end;
  end;
end;

procedure Tfrmnotafiscal.bimprimirClick(Sender: TObject);
var
  f : textfile;
  TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7 : string;
  i : integer;
  NNOTA, cfops : INTEGER;
  V : REAL;
  y, a : integer;
  vvalor_cfop1,vvalor_cfop2 : double;
  vcfop1,vcfop2 : string;
  cfop : string;
  vtot_cfop,vtot_soma_cfop, vtotal_cfop, vdesconto_nota, vsoma_total_produtos, vsoma_total_nota : double;
  vtotal_despesas : Double;
  v1,v2 : Double;
begin

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring+'''');
  frmmodulo.qrcliente.open;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('codtransportador').asstring+'''');
  frmmodulo.qrtransportador.open;

  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('delete from cl00004');
  qrapoio.execsql;
  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select * from cl00004');
  qrapoio.open;

  frmmodulo.qrconfig.open;

  nnota := 0;
  vvalor_cfop1 := 0;
  vvalor_cfop2 := 0;

  I := 1;

    qrnotafiscal_item.Close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
    qrnotafiscal_item.open;


  qrnotafiscal_item.First;
  vsoma_total_produtos := 0;
  vsoma_total_nota := 0;
  vtotal_despesas := 0;

  while not qrnotafiscal_item.Eof do begin
    vsoma_total_produtos := vsoma_total_produtos + qrnotafiscal_itemSUBTOTAL.AsFloat;
    vsoma_total_nota := vsoma_total_nota + qrnotafiscal_itemTOTAL.AsFloat;
    qrnotafiscal_item.Next;
    Application.ProcessMessages;
  end;

  vsoma_total_nota := vsoma_total_nota +
                      frmnotafiscal_menu.qrnotaOS_TOTAL1.AsFloat +
                      frmnotafiscal_menu.qrnotaOS_TOTAL2.AsFloat +
                      frmnotafiscal_menu.qrnotaOS_TOTAL3.AsFloat +
                      frmnotafiscal_menu.qrnotaOS_TOTAL4.AsFloat +
                      frmnotafiscal_menu.qrnotaOS_TOTAL5.AsFloat +
                      frmnotafiscal_menu.qrnotaOS_TOTAL6.AsFloat +
                      frmnotafiscal_menu.qrnotaFRETE.AsFloat +
                      frmnotafiscal_menu.qrnotaSEGURO.AsFloat +
                      frmnotafiscal_menu.qrnotaOUTRAS_DESPESAS.AsFloat +
                      frmnotafiscal_menu.qrnotaICMS_SUB.AsFloat +
                      frmnotafiscal_menu.qrnotaVALOR_TOTAL_IPI.AsFloat;

  vtotal_despesas := vtotal_despesas +
                     frmnotafiscal_menu.qrnotaOS_TOTAL1.AsFloat +
                     frmnotafiscal_menu.qrnotaOS_TOTAL2.AsFloat +
                     frmnotafiscal_menu.qrnotaOS_TOTAL3.AsFloat +
                     frmnotafiscal_menu.qrnotaOS_TOTAL4.AsFloat +
                     frmnotafiscal_menu.qrnotaOS_TOTAL5.AsFloat +
                     frmnotafiscal_menu.qrnotaOS_TOTAL6.AsFloat +
                     frmnotafiscal_menu.qrnotaFRETE.AsFloat +
                     frmnotafiscal_menu.qrnotaSEGURO.AsFloat +
                     frmnotafiscal_menu.qrnotaOUTRAS_DESPESAS.AsFloat +
                     frmnotafiscal_menu.qrnotaICMS_SUB.AsFloat +
                     frmnotafiscal_menu.qrnotaVALOR_TOTAL_IPI.AsFloat;

{  if FRMSINTEGRA_GERAR.RoundNum(vsoma_total_nota,2) <> FRMSINTEGRA_GERAR.RoundNum(frmnotafiscal_menu.qrnotaTOTAL_NOTA.AsFloat,2) then
    begin
      Application.messagebox('Soma Total da Nota Fiscal está ERRADA, Verifique...!','Atenção!',mb_ok+mb_iconerror);
      bcancelarClick(frmnotafiscal);
      exit;
    end;
}

  qrnotafiscal_item.First;

  qrsoma.close;
  qrsoma.sql.clear;
  qrsoma.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000062 where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
  qrsoma.sql.add('and cfop = '''+qrnotafiscal_item.fieldbyname('cfop').asstring+'''');
  qrsoma.open;

  {
  query.Close;
  query.SQL.Clear;
  query.sql.add('select * from c000062 where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
  query.sql.add('and cfop = '''+qrnotafiscal_item.fieldbyname('cfop').asstring+'''');
  query.Open;
  if query.RecordCount > 0 then
    begin
      vtot_soma_cfop := 0;
      while not query.Eof do begin
          vtot_soma_cfop := vtot_soma_cfop + query.fieldbyname('total').AsFloat;
          query.Next;
      end;
      ShowMessage(FloatToStr(vtot_soma_cfop));
    end;

  }

  TRY

      //vvalor_cfop1 := frmprincipal.Arredondar(qrsoma.fieldbyname('total_geral').asfloat,2);
      vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;

{
  if check_desconto.Checked = true then
    begin
      vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;
    end
  else
    begin
      if (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat) > 0 then
      if frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat > 0 then
      vvalor_cfop1 := (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat)/
                       frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat;
    end;
}

  EXCEPT
  END;

  //vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;
  vcfop1 := qrnotafiscal_item.fieldbyname('cfop').asstring;

  cfop := qrnotafiscal_item.fieldbyname('cfop').asstring;
  cfops := 1;
  qrnotafiscal_item.first;
  while not qrnotafiscal_item.eof do
  begin
    IF I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger THEN
    BEGIN
      WHILE I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger  DO
      BEGIN
        I :=  I + 1;
        IF I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger THEN
        BEGIN
          qrapoio.INSERT;
          qrapoio.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
            qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          qrapoio.POST;
        END
        ELSE
        BEGIN
          qrapoio.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger THEN
          BEGIN
            qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          END;
          qrapoio.POST;
        END;
      END;
      qrapoio.INSERT;
      qrapoio.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      qrapoio.POST;
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring+' '+qrnotafiscal_item.fieldbyname('serial').asstring+' '+qrnotafiscal_item.fieldbyname('grade').asstring;

      // verifica se a empresa vai codificar a qtde e o valor
      // pela quantidade de casas decimais descritas em configurações
      if codifica_nota_fiscal = 1 then
        begin
          if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat(mascara_qtde,qrnotafiscal_item.fieldbyname('qtde').asfloat);
          if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat(mascara_valor,qrnotafiscal_item.fieldbyname('unitario').asfloat);
          if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat(mascara_valor,qrnotafiscal_item.fieldbyname('total').asfloat);
        end
      else
        begin
          if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
          if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',qrnotafiscal_item.fieldbyname('unitario').asfloat);
          if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);
        end;

      qrapoio.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring :=  qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring :=  qrnotafiscal_item.fieldbyname('codgrade').asstring;


      qrapoio.post;
      NNOTA := NNOTA + 1;
      I := 2;
    END
    ELSE
    BEGIN
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring+' '+qrnotafiscal_item.fieldbyname('serial').asstring+' '+qrnotafiscal_item.fieldbyname('grade').asstring;

      // verifica se a empresa vai codificar a qtde e o valor
      // pela quantidade de casas decimais descritas em configurações
      if codifica_nota_fiscal = 1 then
        begin
          if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat(mascara_qtde,qrnotafiscal_item.fieldbyname('qtde').asfloat);
          if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat(mascara_valor,qrnotafiscal_item.fieldbyname('unitario').asfloat);
          if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat(mascara_valor,qrnotafiscal_item.fieldbyname('total').asfloat);
        end
      else
        begin
          if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
          if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',qrnotafiscal_item.fieldbyname('unitario').asfloat);
          if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);
        end;

      qrapoio.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring :=  qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring :=  qrnotafiscal_item.fieldbyname('codgrade').asstring;
      qrapoio.post;

      if qrnotafiscal_item.fieldbyname('complemento').asstring <> '' then
      begin
          richedit1.Text := qrnotafiscal_item.fieldbyname('Complemento').asstring;

          y := RichEdit1.Lines.Count;

          for a := 1 to y do
          begin
            if richedit1.Lines.Strings[a-1] <> '' then
            begin
              qrapoio.insert;
              qrapoio.fieldbyname('codproduto').asstring :=  '      ';
              qrapoio.fieldbyname('produto').asstring    := richedit1.Lines.Strings[a-1];
              qrapoio.post;
              I := I + 1;
            end;
          end;
      end;




    END;



    if cfops = 1 then
    begin
      if qrnotafiscal_item.fieldbyname('cfop').ASSTRING <> '' then
      begin
       if cfop <> qrnotafiscal_item.fieldbyname('cfop').asstring then
       begin
         cfop := cfop + '/'+ qrnotafiscal_item.fieldbyname('cfop').asstring;

         qrsoma.close;
         qrsoma.sql.clear;
         qrsoma.sql.add('select SUM(TOTAL+DESCONTO) TOTAL_GERAL from c000062 where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
         qrsoma.sql.add('and cfop = '''+qrnotafiscal_item.fieldbyname('cfop').asstring+'''');
         qrsoma.open;

        if (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat) > 0 then

        if frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat > 0 then
        vvalor_cfop2 := (frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat)/
                frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat;
        //vvalor_cfop2 := frmprincipal.Arredondar((frmnotafiscal_menu.qrnota.fieldbyname('total_nota').AsFloat*qrsoma.fieldbyname('total_geral').asfloat)/
        //        frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').AsFloat,2);

         vcfop2 := qrnotafiscal_item.fieldbyname('cfop').asstring;

         cfops := 2;
       end;
      end;

    end;

    qrnotafiscal_item.next;
    Application.ProcessMessages;
    I := I + 1;
  end;

  WHILE i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger DO
  BEGIN
    qrapoio.INSERT;
    qrapoio.POST;
    i := i+1;
  END;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  if frmnotafiscal_menu.qrnotaDESCONTO.AsFloat > 0 then
    vdesconto_nota := frmnotafiscal_menu.qrnotaDESCONTO.AsFloat
  else
    vdesconto_nota := frmnotafiscal_menu.qrnotaDESCONTO_ITEM.AsFloat;

  if vdesconto_nota > 0 then
    //frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := 'DESCONTO INCONDICIONAL : R$ ' + FORMATFLOAT('###,###,##0.00',frmnotafiscal_menu.qrnotaDESCONTO.AsFloat)
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := 'DESCONTO INCONDICIONAL : R$ ' + FORMATFLOAT('###,###,##0.00',vdesconto_nota)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := '';

    frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := '';
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '';

  QUERY.close;
  query.sql.clear;
  //query.sql.add('select cfop, sum(unitario*qtde) total from c000062');
  query.sql.add('select cfop, sum(total) total , sum(desconto) desconto from c000062');
  query.sql.add('where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' group by cfop order by cfop');
  query.open;
  query.first;
  texto := '';


  rvalor.Value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').AsFloat;
  vtot_cfop := query.RecordCount;

  while not query.eof do
  begin


{
    IF (check_desconto.Checked = FALSE) then
      vtotal_cfop := QUERY.FIELDBYNAME('TOTAL').ASFLOAT
    else
      vtotal_cfop := QUERY.FIELDBYNAME('TOTAL').ASFLOAT-QUERY.FIELDBYNAME('DESCONTO').ASFLOAT;
}

    RVALOR.Value := frmprincipal.Arredondar(QUERY.fieldbyname('total').asfloat,2);

    //vtotal_cfop := RVALOR.Value;

  if vtot_cfop > 1 then
    vtotal_cfop := QUERY.FIELDBYNAME('TOTAL').ASFLOAT
  else
    vtotal_cfop := RVALOR.Value;

    //showmessage(' a ' + floattostr(vtotal_cfop));


    v1 := vtotal_cfop;
    v2 := vtotal_despesas/query.recordcount;

    vtotal_cfop := (vtotal_cfop+v2);

    Application.ProcessMessages;

    //showmessage(floattostr(vtotal_cfop));

    RVALOR.Value := RVALOR.Value - vtotal_cfop;

    //ShowMessage(floattostr(RVALOR.Value)+ '   '+FloatToStr(vtotal_cfop)+ '  ' + FloatToStr(QUERY.FIELDBYNAME('TOTAL').ASFLOAT));

    // verifica se só tem um registro e tem diferença
    // no arredondamento se tiver acrescenta no valor do cfop
    //if ( vtot_cfop = 1 ) and ( RVALOR.Value > 0 )then vtotal_cfop := vtotal_cfop + RVALOR.Value;

    //ShowMessage('Total CFOP Novo : '+FloatToStr(frmprincipal.Arredondar(vtotal_cfop,2)));

    texto := texto + ' CFOP '+QUERY.FIELDBYNAME('CFOP').ASSTRING +'  = R$ '+FORMATFLOAT('###,###,##0.00',vtotal_cfop)+' / ';

  {

    IF (check_desconto.Checked = FALSE) then

      //OR
//       ((frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat) <> 0) then
//       ((vdesconto_nota) <> 0) then
    begin
//      percentual de desconto
      //V := ((frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat) * 100)/
      //      frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat;
      V := ((vdesconto_nota) * 100)/
            (frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat+vdesconto_nota);


     // V := (QUERY.FIELDBYNAME('total').ASFLOAT * 100)/frmnotafiscal_menu.qrnota.fieldbyname('VALOR_PRODUTOS').asfloat;

      texto := texto + ' CFOP '+QUERY.FIELDBYNAME('CFOP').ASSTRING +
                       '  = R$ '+FORMATFLOAT('###,###,##0.00',vtotal_cfop -
                       ((vtotal_cfop*v)/100))+' / ';

      ShowMessage(FORMATFLOAT('###,###,##0.00',vtotal_cfop -
                       ((vtotal_cfop*v)/100)));


    end
    else
    begin
      texto := texto + ' CFOP '+QUERY.FIELDBYNAME('CFOP').ASSTRING +'  = R$ '+FORMATFLOAT('###,###,##0.00',vtotal_cfop)+' / ';
    end;

    ShowMessage(FloatToStr(vtotal_cfop));

    }

    QUERY.NEXT;
    vtot_cfop := vtot_cfop - 1;
    Application.ProcessMessages;
  end;

  frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := TEXTO;
  frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := cfop;

  query.Close;
  query.sql.clear;
  query.sql.add('select sum(qtde) qtde from c000062');
  query.sql.add('where codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
  query.open;

  qtde_total_item := query.fieldbyname('qtde').AsFloat;

  frmmodulo.qrrelatorio.post;

  frmmodulo.conexaolocal.commit;

  qrapoio.close;
  qrapoio.open;

  application.ProcessMessages;

  frmnotafiscal_impressao := tfrmnotafiscal_impressao.create(self);
//  frmnotafiscal_impressao.showmodal;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

end;

procedure Tfrmnotafiscal.EDATA_SAIDAEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmnotafiscal_menu.qrnota.state = dsinsert then
  EDATA_SAIDA.Date := DATE;
  ehora.Text := (FormatDateTime('hh:nn', now));
end;

procedure Tfrmnotafiscal.EDATA_SAIDAKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
  bimporta_cupom.Visible := true;
end;

procedure Tfrmnotafiscal.COMBOMOVIMENTOKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal.DBEdit2Change(Sender: TObject);
begin
  IF DBEDIT2.Text = 'C' then
  BEGIN
    lsit.caption := 'CANCELADA';
    lsit.font.color := clred;
  END
  else
  BEGIN
    lsit.caption := 'ATIVA';
    lsit.font.color := clblue;
  END;
end;

procedure Tfrmnotafiscal.BitBtn9Click(Sender: TObject);
var
  vrecno : integer;
  icodproduto, icodnota, icodlancamento : string;
  itotal : real;
begin
   if edit4.Text = '' then
   begin
     showmessage('Informação do Estado do Cliente Inválido...');
     ecliente.SetFocus;
     exit;
   end;

  altera_item := 1;
  vrecno := qrnotafiscal_item.RecNo;
  qtde_anterior := qrnotafiscal_item.fieldbyname('qtde').asfloat;

  if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
  begin
    itotal := qrnotafiscal_item.fieldbyname('total').asfloat;
    icodproduto := qrnotafiscal_item.fieldbyname('codproduto').asstring;
    icodnota := qrnotafiscal_item.fieldbyname('codnota').asstring;
    icodlancamento := qrnotafiscal_item.fieldbyname('codlancamento').asstring;

    qrnotafiscal_item.close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('update c000062 set');
    qrnotafiscal_item.sql.add('codigo = '''+frmprincipal.codifica('000062')+'''');
    qrnotafiscal_item.sql.add('where total = :total and codproduto = :codproduto and codnota = :codnota and codlancamento = :codlancamento');
    qrnotafiscal_item.params.ParamByName('total').asfloat := itotal;
    qrnotafiscal_item.params.ParamByName('codproduto').asstring := icodproduto;
    qrnotafiscal_item.params.ParamByName('codnota').asstring := icodnota;
    qrnotafiscal_item.params.ParamByName('codlancamento').asstring := icodlancamento;
    qrnotafiscal_item.ExecSQL;
    frmmodulo.conexao.commit;

    qrnotafiscal_item.Close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
    qrnotafiscal_item.open;
    qrnotafiscal_item.RecNo := vrecno;
  end;

  frmnotafiscal_item2 := tfrmnotafiscal_item2.create(self);
  with frmnotafiscal_item2 do
  begin
    ed_codigo.text        := qrnotafiscal_item.fieldbyname('CODPRODUTO'          ).asstring ;
    ed_produto.text       := qrnotafiscal_item.fieldbyname('produto'             ).asstring ;
    ed_unidade.text       := qrnotafiscal_item.fieldbyname('unidade'             ).asstring ;
    ed_qtde.value         := qrnotafiscal_item.fieldbyname('QTDE'                ).asfloat  ;
    ed_unitario.value     := qrnotafiscal_item.fieldbyname('UNITARIO'            ).asfloat  ;
    ed_total.value        := qrnotafiscal_item.fieldbyname('TOTAL'               ).asfloat  ;
    ed_ipi_aliquota.value := qrnotafiscal_item.fieldbyname('IPI'                 ).asfloat  ;
    ed_icms_aliquota.value:= qrnotafiscal_item.fieldbyname('ICMS'                ).asfloat  ;
    ed_cfop.Text          := qrnotafiscal_item.fieldbyname('CFOP'                ).asstring ;
    ed_csosn.Text         := qrnotafiscal_item.fieldbyname('CSOSN'               ).asstring ;
    ed_grade_codigo.Text  := qrnotafiscal_item.fieldbyname('CODGRADE'            ).asstring ;
    ed_serial.Text        := qrnotafiscal_item.fieldbyname('SERIAL'              ).asstring ;
    ed_ipi_valor.value    := qrnotafiscal_item.fieldbyname('VALOR_IPI'           ).asfloat  ;
    ed_classific.text     := qrnotafiscal_item.fieldbyname('CLASSIFICACAO_FISCAL').asstring ;
    ed_cst.Text           := qrnotafiscal_item.fieldbyname('CST'                 ).asstring ;
    ed_icms_valor.Value   := qrnotafiscal_item.fieldbyname('VALOR_ICMS'          ).asfloat  ;
    ed_icms_reducao.Value := qrnotafiscal_item.fieldbyname('ICMS_REDUZIDO'       ).asfloat  ;
    ed_icms_base.value    := qrnotafiscal_item.fieldbyname('BASE_CALCULO'        ).asfloat  ;
    margem_agregada       := qrnotafiscal_item.fieldbyname('MARGEM_AGREGADA'     ).asfloat  ;
    ed_sub_base.value     := qrnotafiscal_item.fieldbyname('BASE_SUB'            ).asfloat  ;
    ed_sub_valor.value    := qrnotafiscal_item.fieldbyname('ICMS_SUB'            ).asfloat  ;
    ed_isenta.value       := qrnotafiscal_item.fieldbyname('ISENTO'              ).asfloat  ;
    ed_outras.value       := qrnotafiscal_item.fieldbyname('OUTRAS'              ).asfloat  ;
    ed_desconto.value     := qrnotafiscal_item.fieldbyname('DESCONTO'            ).asfloat  ;
    ed_subtotal.value     := qrnotafiscal_item.fieldbyname('SUBTOTAL'            ).asfloat  ;

    ed_PIS_base.value     := qrnotafiscal_item.fieldbyname('pis_base'            ).asfloat  ;
    ed_PIS_valor.value    := qrnotafiscal_item.fieldbyname('pis_valor'           ).asfloat  ;
    ed_PIS_aliquota.value := qrnotafiscal_item.fieldbyname('pis_aliquota'        ).asfloat  ;

    ed_cofins_base.value     := qrnotafiscal_item.fieldbyname('cofins_base'            ).asfloat  ;
    ed_cofins_valor.value    := qrnotafiscal_item.fieldbyname('cofins_valor'           ).asfloat  ;
    ed_cofins_aliquota.value := qrnotafiscal_item.fieldbyname('cofins_aliquota'        ).asfloat  ;

    ed_grade.text         := qrnotafiscal_item.fieldbyname('GRADE'               ).asstring ;

    {PESO_NOVO}
    ed_PESO_BRUTO.VALUE   := qrnotafiscal_item.fieldbyname('PESO_BRUTO'          ).asfloat  ;
    ed_PESO_LIQUIDO.VALUE := qrnotafiscal_item.fieldbyname('PESO_LIQUIDO'        ).asfloat  ;

    pstate.caption         := 'Edição';
    pstate.color           := clred;
    pcodigo.caption        := QRNOTAFISCAL_ITEM.FIELDBYNAME('CODIGO').ASSTRING;
    ed_produto.enabled := false;
    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select prod.*, est.* from c000025 prod, c000100 est where prod.codigo = est.codproduto and codigo = '''+qrnotafiscal_item.fieldbyname('codproduto').asstring+'''');
    qrproduto.open;
    ed_estoque.value       := qrproduto.fieldbyname('estoque_atual').asfloat;

  end;

  frmnotafiscal_item2.showmodal;

  qrnotafiscal_item.Close;
  qrnotafiscal_item.sql.clear;
  qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
  qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
  qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
  qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnotafiscal_item.open;

  qrnotafiscal_item.RecNo := vrecno;
  grid1.setfocus;
end;

procedure Tfrmnotafiscal.eserieEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmnotafiscal.eserieExit(Sender: TObject);
begin
  if trim(eserie.Text) = '0' then
    begin
      showmessage('Série Inválida, Verifique...');
      eserie.SetFocus;
      exit;
    end;
  tedit(sender).Color := clwindow;
  edata_cadastro.SetFocus;
end;

procedure Tfrmnotafiscal.brateioClick(Sender: TObject);
var
  vdesc_item : Double;
begin

  vtotal_produtos := 0;
  vtotal_nota     := 0;

  if check_desconto.Checked = true then
    begin
      qrnotafiscal_item.first;
      while not qrnotafiscal_item.eof do begin
        if ( frmnotafiscal_menu.qrnota.FieldByName('desconto').AsFloat + frmnotafiscal_menu.qrnota.FieldByName('desconto_item').AsFloat ) > 0 then
          BEGIN
            query.close;
            query.sql.clear;
            query.sql.add('update c000062 set');
            query.sql.add('desconto = :descontox, total = :totalx');
            if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
              begin
                query.sql.add(',codigo = '''+frmprincipal.codifica('000062')+'''');
                query.sql.add(' where codproduto = :codproduto and codnota = :codnota and total = :total and codlancamento = :codlancamento');
                query.params.ParamByName('total').asfloat          := qrnotafiscal_item.fieldbyname('total').asfloat;
                query.params.ParamByName('codproduto').asstring    := qrnotafiscal_item.fieldbyname('codproduto').asstring;
                query.params.ParamByName('codnota').asstring       := qrnotafiscal_item.fieldbyname('codnota').asstring;
                query.params.ParamByName('codlancamento').asstring := qrnotafiscal_item.fieldbyname('codlancamento').asstring;
              end
            else
              begin
                query.sql.add(' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
              end;

              if frmnotafiscal_menu.qrnotaDESCONTO.AsFloat > 0 then
                vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO.AsFloat
              else
                vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO_ITEM.AsFloat;

            if frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat > 0 then
              query.params.ParamByName('descontox').asfloat := qrnotafiscal_item.FieldByName('subtotal').AsFloat*vdesc_item/frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
            else
              query.params.ParamByName('descontox').asfloat := 0;

            query.params.ParamByName('totalx').asfloat := (qrnotafiscal_item.FieldByName('unitario').AsFloat*
                                                           qrnotafiscal_item.FieldByName('qtde').AsFloat)
                                                          -query.params.ParamByName('descontox').asfloat;

            //ShowMessage(FLOATTOSTR(qrnotafiscal_item.FieldByName('subtotal').AsFloat)+' ' +
            //FLOATTOSTR(qrnotafiscal_item.FieldByName('QTDE').AsFloat)+' ' +
            //FLOATTOSTR(query.params.ParamByName('descontox').asfloat)+' ' +
            //FLOATTOSTR(query.params.ParamByName('totalx').asfloat));

            query.execsql;

          vdesconto_atual := vdesconto_atual + (qrnotafiscal_item.FieldByName('subtotal').AsFloat*
                                                vdesc_item/
                                                frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat);
          END
        else
          begin
            vdesconto_atual := vdesconto_atual + qrnotafiscal_item.FieldByName('desconto').AsFloat;
          end;

        vtotal_produtos := vtotal_produtos + qrnotafiscal_item.FieldByName('subtotal').AsFloat;
        vtotal_nota     := vtotal_nota + qrnotafiscal_item.FieldByName('total').AsFloat;

        qrnotafiscal_item.next;
        Application.ProcessMessages;
      end;

      frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat := vtotal_produtos;
      frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat     := vtotal_nota;

      if check_desconto.Checked = True then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').asfloat := vdesconto_atual;
          frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat      := 0;
        end
      else
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat      := vdesconto_atual;
          frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').asfloat := 0;
        end;

      frmmodulo.conexao.commit;

      qrnotafiscal_item.Close;
      qrnotafiscal_item.sql.clear;
      qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
      qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
      qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
      qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
      qrnotafiscal_item.open;
    END
  else
    begin

      vdesconto_atual := 0;
      qrnotafiscal_item.first;
      while not qrnotafiscal_item.eof do
        begin
         vdesconto_atual := vdesconto_atual+qrnotafiscal_item.FieldByName('desconto').AsFloat;
         qrnotafiscal_item.next;
        end;

      Application.ProcessMessages;

      if vdesconto_atual > 0 then
        frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat := vdesconto_atual
      else
        begin
          qrnotafiscal_item.first;
          while not qrnotafiscal_item.eof do
            begin
             query.close;
             query.sql.clear;
             query.sql.add('update c000062 set');
             query.sql.add('desconto = :descontox, total = :totalx');
             if qrnotafiscal_item.fieldbyname('codigo').asstring = '' then
              begin
                query.sql.add(',codigo = '''+frmprincipal.codifica('000062')+'''');
                query.sql.add(' where codproduto = :codproduto and codnota = :codnota and total = :total and codlancamento = :codlancamento');
                query.params.ParamByName('total').asfloat          := qrnotafiscal_item.fieldbyname('total').asfloat;
                query.params.ParamByName('codproduto').asstring    := qrnotafiscal_item.fieldbyname('codproduto').asstring;
                query.params.ParamByName('codnota').asstring       := qrnotafiscal_item.fieldbyname('codnota').asstring;
                query.params.ParamByName('codlancamento').asstring := qrnotafiscal_item.fieldbyname('codlancamento').asstring;
              end
             else
              begin
                query.sql.add(' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
              end;

              if frmnotafiscal_menu.qrnotaDESCONTO.AsFloat > 0 then
                vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO.AsFloat
              else
                vdesc_item := frmnotafiscal_menu.qrnotaDESCONTO_ITEM.AsFloat;


            if frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat > 0 then
              query.params.ParamByName('descontox').asfloat := qrnotafiscal_item.FieldByName('subtotal').AsFloat*vdesc_item/frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat
            else
              query.params.ParamByName('descontox').asfloat := 0;

            query.params.ParamByName('totalx').asfloat := (qrnotafiscal_item.FieldByName('unitario').AsFloat*
                                                           qrnotafiscal_item.FieldByName('qtde').AsFloat)
                                                          -query.params.ParamByName('descontox').asfloat;

            //ShowMessage(FLOATTOSTR(query.params.ParamByName('totalx').asfloat));
             query.execsql;

            vdesconto_atual := vdesconto_atual + (qrnotafiscal_item.FieldByName('subtotal').AsFloat*
                                                  vdesc_item/
                                                  frmnotafiscal_menu.qrnotaVALOR_PRODUTOS.AsFloat);

            qrnotafiscal_item.next;
            vtotal_produtos := vtotal_produtos + qrnotafiscal_item.FieldByName('subtotal').AsFloat;
            vtotal_nota     := vtotal_nota + qrnotafiscal_item.FieldByName('total').AsFloat;
            Application.ProcessMessages;
          end;

        end;

      frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat := vtotal_produtos;
      frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat     := vtotal_nota;

      if check_desconto.Checked = True then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').asfloat := vdesconto_atual;
          frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat      := 0;
        end
      else
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat      := vdesconto_atual;
          frmnotafiscal_menu.qrnota.fieldbyname('desconto_item').asfloat := 0;
        end;

      frmmodulo.conexao.commit;

      qrnotafiscal_item.Close;
      qrnotafiscal_item.sql.clear;
      qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
      qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
      qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
      qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
      qrnotafiscal_item.open;

    end;
end;

procedure Tfrmnotafiscal.qrnotafiscal_itemNewRecord(DataSet: TDataSet);
begin
     qrnotafiscal_itemICMS.Value := 0;
     qrnotafiscal_itemIPI.Value := 0;
     qrnotafiscal_itemVALOR_IPI.Value := 0;
     qrnotafiscal_itemVALOR_ICMS.Value := 0;
     qrnotafiscal_itemBASE_CALCULO.Value := 0;
     qrnotafiscal_itemDESCONTO.Value := 0;
     qrnotafiscal_itemBASE_SUB.Value := 0;
     qrnotafiscal_itemICMS_SUB.Value := 0;
     qrnotafiscal_itemQTDE.Value := 0;
     qrnotafiscal_itemUNITARIO.Value := 0;
     qrnotafiscal_itemQTDE.Value := 0;
end;

procedure Tfrmnotafiscal.ecodmodeloButtonClick(Sender: TObject);
begin
  resultado_pesquisa3 := '';
  resultado_pesquisa4 := '';
  parametro_pesquisa := '';
  frmxloc_modelo := tfrmxloc_modelo.create(self);
  frmxloc_modelo.showmodal;
  if resultado_pesquisa4 <>'' then
  begin

     qrmodelo.close;
     qrmodelo.sql.clear;
     qrmodelo.sql.add('select * from c000082 where sintegra = '''+resultado_pesquisa4+'''');
     qrmodelo.open;
     frmnotafiscal_menu.qrnota.fieldbyname('modelo_nf').asstring := resultado_pesquisa4;
     frmnotafiscal_menu.qrnota.fieldbyname('especie').asstring := qrmodelo.fieldbyname('sigla').asstring;
     eSERIE.setfocus;
  end;

end;

procedure Tfrmnotafiscal.ecodmodeloKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmnotafiscal_menu.qrnota.State <> dsedit then if frmnotafiscal_menu.qrnota.State <> dsinsert then exit;

    frmnotafiscal_menu.qrnota.fieldbyname('modelo_nf').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,2);
    if tedit(sender).Text <> '00' then
    begin
      qrmodelo.close;
      qrmodelo.sql.clear;
      qrmodelo.sql.add('select * from c000082 where sintegra = '''+ecodmodelo.text+'''');
      qrmodelo.open;

      if qrmodelo.recordcount > 0 then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('especie').asstring := qrmodelo.fieldbyname('sigla').asstring;
        Perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        application.messagebox('Modelo não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodmodelo.SelectAll;
        ecodmodelo.setfocus;
        ecodmodeloButtonClick (Frmnotafiscal);
      end;
    end
    else
    begin
      ecodmodeloButtonClick(frmcompra);
    end;
  end;

end;

procedure Tfrmnotafiscal.efilialButtonClick(Sender: TObject);
begin
  frmloc_filial := tfrmloc_filial.create(self);
  frmloc_filial.showmodal;
  
  frmnotafiscal_menu.qrnota.fieldbyname('codfilial').asstring := frmmodulo.qrfilial.fieldbyname('codigo').asstring;
  if frmnotafiscal_menu.qrnota.State = dsinsert then
  begin
    frmnotafiscal_menu.qrnota.FieldByName('numero').asstring :=
    frmprincipal.zerarcodigo(frmmodulo.qrFilial.fieldbyname('notafiscal').asstring,6);
  end;
  ecliente.setfocus;
end;

procedure Tfrmnotafiscal.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  if COMBOMOVIMENTO.Text = 'S' then
    parametro_pesquisa := ' = 2'
  else
    parametro_pesquisa := ' = 1';
  frmxloc_cfop := tfrmxloc_cfop.create(self);
  frmxloc_cfop.showmodal;

  if resultado_pesquisa1 <> '' then
    begin
      frmmodulo.qrcfop.close;
      frmmodulo.qrcfop.sql.clear;
      frmmodulo.qrcfop.sql.add('select * from c000030');
      frmmodulo.qrcfop.sql.add('where cfop = '''+resultado_pesquisa1+'''');
      if combomovimento.text = 'S' then
      frmmodulo.qrcfop.sql.add('and tipo = ''2''')
      else
      frmmodulo.qrcfop.sql.add('and tipo = ''1''');
      frmmodulo.qrcfop.open;


      if frmmodulo.qrcfop.recordcount > 0 then
      begin
        frmnotafiscal_menu.qrnota.FieldByName('cfop').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('cfop').ASSTRING;
        frmnotafiscal_menu.qrnota.FieldByName('INF1').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS1').ASSTRING;
        frmnotafiscal_menu.qrnota.FieldByName('INF2').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS2').ASSTRING;
        frmnotafiscal_menu.qrnota.FieldByName('INF3').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS3').ASSTRING;
        frmnotafiscal_menu.qrnota.FieldByName('INF4').ASSTRING := FRMMODULO.qrCFOP.FIELDBYNAME('OBS4').ASSTRING;
        enumero.SetFocus;
      //ecliente.setfocus;
      END;
    end
  else
    begin
      application.messagebox('CFOP Não Informado!','Erro',mb_ok+mb_iconerror);
      ecfop.setfocus;
      exit;
    end;
end;

procedure Tfrmnotafiscal.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;

  frmnotafiscal_menu.qrcliente.Refresh;

  if RESULTADO_PESQUISA1 <> '' then
    begin
      frmnotafiscal_menu.qrnota.fieldbyname('CODcliente').asstring := RESULTADO_PESQUISA1;
      edit4.Text := resultado_pesquisa5;
    end;
  COMBOMOVIMENTO.setfocus;
end;

procedure Tfrmnotafiscal.ecfopKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      if frmnotafiscal_menu.qrnota.State <> dsedit then if frmnotafiscal_menu.qrnota.State <> dsinsert then exit;

      frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.Text,6);

      if ecliente.text <> '000000' then
        begin
          frmmodulo.qrcliente.close;
          frmmodulo.qrcliente.sql.clear;
          frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+eCliente.text+'''');
          frmmodulo.qrcliente.open;
          if frmmodulo.qrcliente.recordcount = 0 then
            begin
              application.messagebox('Cliente não cadastrado!','Aviso',mb_ok+mb_iconwarning);
              eCliente.Text := '';
              eCliente.setfocus;
              exit;
            end
        else
          begin
            edit4.Text := frmmodulo.qrclienteUF.AsString;
            if (frmmodulo.qrclienteCPF.Value = '') or
               (frmmodulo.qrclienteUF.Value = '') or
               (frmmodulo.qrclienteRG.Value = '') then
              begin
                if Edit4.Text = '' then
                  begin
                    application.messagebox('Não Informado o Estado do Cliente, Verifique!','Erro',mb_ok+mb_iconerror);
                    ecliente.SetFocus;
                    exit;
                  end;
                  if application.messagebox('Dados de Cliente Inconsistente, Deseja Continuar?','Aviso',mb_yesno+MB_ICONWARNING) = idno then
                    begin
                      exit;
                    end;
              end;
          end;
          Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      eClienteButtonClick(frmnotafiscal);
    end;
  end;
end;

procedure Tfrmnotafiscal.check_estoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then check_desconto.setfocus;
end;

procedure Tfrmnotafiscal.check_descontoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bincluir_item.setfocus;
end;

procedure Tfrmnotafiscal.FormShow(Sender: TObject);
begin

    tab_principal.ActivePageIndex := 0;
    VENDA_VEICULO := FALSE;
    if frmnotafiscal_menu.qrnota.state = dsedit then
    begin
      check_estoque.enabled := false;
    end
    else
    begin
      check_estoque.enabled := true;
    end;


  if frmnotafiscal_menu.qrnota.State = dsinsert then
  begin

  if frmmodulo.qrFilial.FieldByName('optante_simples').AsString = 'S' then
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('INF1').asSTRING := 'DOCUMENTO EMITIDO POR ME OU EPP OPTANTE PELO SIMPLES NACIONAL';
    frmnotafiscal_menu.qrnota.fieldbyname('INF2').asSTRING := 'NÃO GERA DIREITO A CRÉDITO FISCAL DE ICMS, DE ISS E DE IPI';
  end
  else
  begin
    frmnotafiscal_menu.qrnota.fieldbyname('INF1').asSTRING := '';
    frmnotafiscal_menu.qrnota.fieldbyname('INF2').asSTRING := '';
  end;

    IF frmmodulo.qrconfig.FieldByName('BAIXAR_ESTOQUE_NOTA_SAIDA').AsInteger = 1 THEN
      check_estoque.Checked := True
    ELSE
      check_estoque.Checked := False;

     frmnotafiscal_menu.qrempresa.close;
     frmnotafiscal_menu.qrempresa.sql.clear;
     frmnotafiscal_menu.qrempresa.sql.add('select * from c000004');
     frmnotafiscal_menu.qrempresa.open;

     edit3.Text := frmnotafiscal_menu.qrEMPRESA.fieldbyname('uf').asstring;
     frmnotafiscal_menu.qrnota.FieldByName('CODFILIAL').AsString := frmnotafiscal_menu.qrEMPRESA.fieldbyname('codigo').asstring;

     frmnotafiscal_menu.qrempresa.close;
     frmnotafiscal_menu.qrempresa.sql.clear;
     frmnotafiscal_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+frmnotafiscal_menu.qrnotaCODFILIAL.Value+'''');
     frmnotafiscal_menu.qrempresa.open;

  end
  else
  begin
     frmnotafiscal_menu.qrempresa.close;
     frmnotafiscal_menu.qrempresa.sql.clear;
     frmnotafiscal_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+frmnotafiscal_menu.qrnotaCODFILIAL.Value+'''');
     frmnotafiscal_menu.qrempresa.open;
     edit3.Text := frmnotafiscal_menu.qrEMPRESA.fieldbyname('uf').asstring;
  end;

    frmmodulo.qrformapgto.Open;
    frmmodulo.qrcondpgto.close;
    frmmodulo.qrcondpgto.sql.clear;
    frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
    frmmodulo.qrcondpgto.Open;
    frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';

    qrnotafiscal_item.Close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.SQL.add('item.codnota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
    qrnotafiscal_item.open;

    if qrnotafiscal_item.fieldbyname('item').asstring = '' then
    begin
       nf_item := 1;
      qrnotafiscal_item.first;
      while not qrnotafiscal_item.eof do
      begin
         query.close;
         query.sql.clear;
         query.sql.add('update c000062 set item = '+inttostr(nf_item)+' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
         query.execsql;
        NF_ITEM := NF_ITEM + 1;
        qrnotafiscal_item.Next;
      end;
    end
    else
      nf_item := qrnotafiscal_item.recordcount + 1;

    qrnotafiscal_item.refresh;

    if frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring <> '' then
    begin
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('codcliente').asstring+'''');
      qrcliente.Open;
      edit4.Text := qrcliente.fieldbyname('uf').AsString;
    end;

    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('select * from c000117');
    qrreceber.sql.add('where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
    qrreceber.sql.add('order by numero');
    qrreceber.open;

    if frmnotafiscal_menu.vopcao_nfs = 3 then
    begin
      bgravar.enabled := false;
      bimprimirClick(frmnotafiscal);
    end;
    efilial.setfocus;

end;


procedure Tfrmnotafiscal.RzDBNumericEdit18KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotafiscal.RzDBNumericEdit20KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmnotafiscal.OS_QTDE1Exit(Sender: TObject);
begin
  IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
  BEGIN
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL1').ASFLOAT := FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_QTDE1').ASFLOAT * FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_UNIT1').ASFLOAT;
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL2').ASFLOAT := FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_QTDE2').ASFLOAT * FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_UNIT2').ASFLOAT;
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL3').ASFLOAT := FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_QTDE3').ASFLOAT * FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_UNIT3').ASFLOAT;
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL4').ASFLOAT := FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_QTDE4').ASFLOAT * FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_UNIT4').ASFLOAT;
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL5').ASFLOAT := FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_QTDE5').ASFLOAT * FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_UNIT5').ASFLOAT;
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL6').ASFLOAT := FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_QTDE6').ASFLOAT * FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_UNIT6').ASFLOAT;

    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL_GERAL').ASFLOAT :=
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL1').ASFLOAT +
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL2').ASFLOAT +
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL3').ASFLOAT +
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL4').ASFLOAT +
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL5').ASFLOAT +
    FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL6').ASFLOAT ;

    IF FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_ISS').ASFLOAT > 0 THEN
    BEGIN
      FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL_ISS').ASFLOAT  :=
      FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL_GERAL').ASFLOAT *
      (FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_ISS').ASFLOAT / 100);
    END;

                                        frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat :=
                                        frmnotafiscal_menu.qrnota.fieldbyname('os_total_geral').asfloat +
                                        (frmnotafiscal_menu.qrnota.fieldbyname('valor_produtos').asfloat +
                                             frmnotafiscal_menu.qrnota.fieldbyname('frete').asfloat +
                                             frmnotafiscal_menu.qrnota.fieldbyname('seguro').asfloat +
                                             frmnotafiscal_menu.qrnota.fieldbyname('outras_despesas').asfloat +
                                             frmnotafiscal_menu.qrnota.fieldbyname('valor_total_ipi').asfloat +
                                             frmnotafiscal_menu.qrnota.fieldbyname('icms_sub').asfloat) -
                                             frmnotafiscal_menu.qrnota.fieldbyname('desconto').asfloat ;    
  END;
end;

procedure Tfrmnotafiscal.ed_serv1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
    BEGIN
      if tedit(sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod1').asstring := frmprincipal.zerarcodigo(tedit(sender).text,6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('os_cod1').asstring+'''');
        qrservico.open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv1').asstring := qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp1').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit1').asfloat := qrservico.fieldbyname('valor').asfloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde1').asfloat  := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total1').asfloat := qrservico.fieldbyname('valor').asfloat;
          OS_QTDE1Exit(frmnotafiscal);
          perform(wm_nextdlgctl,0,0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!','Erro',mb_yesno+mb_iconquestion);
          tedit(sender).setfocus;
        end;
      end
      else
      begin
        ed_serv1ButtonClick(frmnotafiscal);
      end;
    END;
  END;

end;

procedure Tfrmnotafiscal.ed_serv1ButtonClick(Sender: TObject);
begin
   resultado_pesquisa1 := '';
   frmxloc_servico := Tfrmxloc_servico.create(self);
   frmxloc_servico.showmodal;

   if resultado_pesquisa1 <> '' then
   begin
     frmnotafiscal_menu.qrnota.fieldbyname('os_cod1').asstring := resultado_pesquisa1;
     tedit(sender).SetFocus;
   end;
end;

procedure Tfrmnotafiscal.ed_serv2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
    BEGIN
      if tedit(sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod2').asstring := frmprincipal.zerarcodigo(tedit(sender).text,6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('os_cod2').asstring+'''');
        qrservico.open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv2').asstring := qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp2').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit2').asfloat := qrservico.fieldbyname('valor').asfloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde2').asfloat  := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total2').asfloat := qrservico.fieldbyname('valor').asfloat;
          OS_QTDE1Exit(frmnotafiscal);
          perform(wm_nextdlgctl,0,0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!','Erro',mb_yesno+mb_iconquestion);
          tedit(sender).setfocus;
        end;
      end
      else
      begin
        ed_serv2ButtonClick(frmnotafiscal);
      end;
    END;
  END;
end;

procedure Tfrmnotafiscal.ed_serv3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
    BEGIN
      if tedit(sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod3').asstring := frmprincipal.zerarcodigo(tedit(sender).text,6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('os_cod3').asstring+'''');
        qrservico.open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv3').asstring := qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp3').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit3').asfloat := qrservico.fieldbyname('valor').asfloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde3').asfloat  := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total3').asfloat := qrservico.fieldbyname('valor').asfloat;
          OS_QTDE1Exit(frmnotafiscal);
          perform(wm_nextdlgctl,0,0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!','Erro',mb_yesno+mb_iconquestion);
          tedit(sender).setfocus;
        end;
      end
      else
      begin
        ed_serv3ButtonClick(frmnotafiscal);
      end;
    END;
  END;
end;

procedure Tfrmnotafiscal.ed_serv4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
    BEGIN
      if tedit(sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod4').asstring := frmprincipal.zerarcodigo(tedit(sender).text,6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('os_cod4').asstring+'''');
        qrservico.open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv4').asstring := qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp4').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit4').asfloat := qrservico.fieldbyname('valor').asfloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde4').asfloat  := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total4').asfloat := qrservico.fieldbyname('valor').asfloat;
          OS_QTDE1Exit(frmnotafiscal);
          perform(wm_nextdlgctl,0,0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!','Erro',mb_yesno+mb_iconquestion);
          tedit(sender).setfocus;
        end;
      end
      else
      begin
        ed_serv4ButtonClick(frmnotafiscal);
      end;
    END;
  END;
end;

procedure Tfrmnotafiscal.ed_serv5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
    BEGIN
      if tedit(sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod5').asstring := frmprincipal.zerarcodigo(tedit(sender).text,6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('os_cod5').asstring+'''');
        qrservico.open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv5').asstring := qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp5').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit5').asfloat := qrservico.fieldbyname('valor').asfloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde5').asfloat  := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total5').asfloat := qrservico.fieldbyname('valor').asfloat;
          OS_QTDE1Exit(frmnotafiscal);
          perform(wm_nextdlgctl,0,0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!','Erro',mb_yesno+mb_iconquestion);
          tedit(sender).setfocus;
        end;
      end
      else
      begin
        ed_serv5ButtonClick(frmnotafiscal);
      end;
    END;
  END;
end;

procedure Tfrmnotafiscal.ed_serv6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
    BEGIN
      if tedit(sender).text <> '' then
      begin
        frmnotafiscal_menu.qrnota.fieldbyname('os_cod6').asstring := frmprincipal.zerarcodigo(tedit(sender).text,6);

        qrservico.close;
        qrservico.sql.clear;
        qrservico.sql.add('select * from c000011 where codigo = '''+frmnotafiscal_menu.qrnota.fieldbyname('os_cod6').asstring+'''');
        qrservico.open;
        if qrservico.RecordCount > 0 then
        begin
          frmnotafiscal_menu.qrnota.fieldbyname('os_serv6').asstring := qrservico.fieldbyname('servico').asstring;
          frmnotafiscal_menu.qrnota.fieldbyname('os_comp6').asstring := '';
          frmnotafiscal_menu.qrnota.fieldbyname('os_unit6').asfloat := qrservico.fieldbyname('valor').asfloat;
          frmnotafiscal_menu.qrnota.fieldbyname('os_qtde6').asfloat  := 1;
          frmnotafiscal_menu.qrnota.fieldbyname('os_total6').asfloat := qrservico.fieldbyname('valor').asfloat;
          OS_QTDE1Exit(frmnotafiscal);
          perform(wm_nextdlgctl,0,0);
        end
        else
        begin
          application.messagebox('Serviço não encontrado!','Erro',mb_yesno+mb_iconquestion);
          tedit(sender).setfocus;
        end;
      end
      else
      begin
        ed_serv6ButtonClick(frmnotafiscal);
      end;
    END;
  END;
end;

procedure Tfrmnotafiscal.ed_serv2ButtonClick(Sender: TObject);
begin
   resultado_pesquisa1 := '';
   frmxloc_servico := Tfrmxloc_servico.create(self);
   frmxloc_servico.showmodal;

   if resultado_pesquisa1 <> '' then
   begin
     frmnotafiscal_menu.qrnota.fieldbyname('os_cod2').asstring := resultado_pesquisa1;
     tedit(sender).SetFocus;
   end;
end;

procedure Tfrmnotafiscal.ed_serv3ButtonClick(Sender: TObject);
begin
   resultado_pesquisa1 := '';
   frmxloc_servico := Tfrmxloc_servico.create(self);
   frmxloc_servico.showmodal;

   if resultado_pesquisa1 <> '' then
   begin
     frmnotafiscal_menu.qrnota.fieldbyname('os_cod3').asstring := resultado_pesquisa1;
     tedit(sender).SetFocus;
   end;
end;

procedure Tfrmnotafiscal.ed_serv4ButtonClick(Sender: TObject);
begin
   resultado_pesquisa1 := '';
   frmxloc_servico := Tfrmxloc_servico.create(self);
   frmxloc_servico.showmodal;

   if resultado_pesquisa1 <> '' then
   begin
     frmnotafiscal_menu.qrnota.fieldbyname('os_cod4').asstring := resultado_pesquisa1;
     tedit(sender).SetFocus;
   end;
end;

procedure Tfrmnotafiscal.ed_serv5ButtonClick(Sender: TObject);
begin
   resultado_pesquisa1 := '';
   frmxloc_servico := Tfrmxloc_servico.create(self);
   frmxloc_servico.showmodal;

   if resultado_pesquisa1 <> '' then
   begin
     frmnotafiscal_menu.qrnota.fieldbyname('os_cod5').asstring := resultado_pesquisa1;
     tedit(sender).SetFocus;
   end;
end;

procedure Tfrmnotafiscal.ed_serv6ButtonClick(Sender: TObject);
begin
   resultado_pesquisa1 := '';
   frmxloc_servico := Tfrmxloc_servico.create(self);
   frmxloc_servico.showmodal;

   if resultado_pesquisa1 <> '' then
   begin
     frmnotafiscal_menu.qrnota.fieldbyname('os_cod6').asstring := resultado_pesquisa1;
     tedit(sender).SetFocus;
   end;
end;

procedure Tfrmnotafiscal.RzDBNumericEdit20Exit(Sender: TObject);
begin
  IF frmnotafiscal_menu.qrnota.State IN [DSINSERT,DSEDIT] THEN
  BEGIN

    IF FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_ISS').ASFLOAT > 0 THEN
    BEGIN
      FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL_ISS').ASFLOAT  :=
      FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_TOTAL_GERAL').ASFLOAT *
      (FRMNOTAFISCAL_MENU.qrnota.FIELDBYNAME('OS_ISS').ASFLOAT / 100);
    END;
  END;
end;

procedure Tfrmnotafiscal.ENUMEROEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  if key = #13 then
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmnotafiscal.combocondpgtoExit(Sender: TObject);
var
  prestacao : integer;
  valor : real;
  key : char;
begin
  if key = #13 then
  begin
    tedit(sender).color := clwindow;

    if combocondpgto.text <> '' then
    begin
      if frmmodulo.qrcondpgto.locate('condpgto',combocondpgto.text,[loCaseInsensitive]) then
      begin
        frmmodulo.qrcondpgto_parcela.close;
        frmmodulo.qrcondpgto_parcela.sql.clear;
        frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = '''+frmmodulo.qrcondpgto.fieldbyname('codigo').asstring+''' order by codigo');
        frmmodulo.qrcondpgto_parcela.open;
        if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
        begin
          qrreceber.close;
          qrreceber.sql.clear;
          qrreceber.SQL.Add('delete from c000117');
          qrreceber.sql.add('where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
          qrreceber.ExecSQL;
          qrreceber.close;
          qrreceber.sql.clear;
          qrreceber.sql.add('select * from c000117');
          qrreceber.sql.add('where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
          qrreceber.sql.add('order by numero');
          qrreceber.open;

          rqtde.IntValue := frmmodulo.qrcondpgto_parcela.RecordCount;

          frmmodulo.qrcondpgto_parcela.first;
          prestacao := 1;


          while not frmmodulo.qrcondpgto_parcela.eof do
          begin
            qrreceber.Insert;
            qrreceber.FieldByName('numero').asstring :=  frmprincipal.zerarcodigo(inttostr( prestacao),2);
            qrreceber.FieldByName('vencimento').asdatetime := frmnotafiscal_menu.qrnota.fieldbyname('data').asdatetime+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;



              valor := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat *
                     (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);

            if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
               valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

            qrreceber.fieldbyname('valor').asfloat := valor;
            qrreceber.FieldByName('documento').asstring := frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring +'/'+inttostr(prestacao);

            qrreceber.FieldByName('TIPO').asstring := 'DUPLICATA';

            qrreceber.post;
            prestacao := prestacao + 1;
            frmmodulo.qrcondpgto_parcela.Next;
          end;
          qrreceber.open;


          rsoma.value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat;


          rdiferenca.Value := 0;
          qrreceber.REFRESH;
          IF TAB_PRINCIPAL.ActivePageIndex = 1 THEN
          wwdbgrid1.SetFocus;
        end
        else
        begin
          application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!','Atenção',mb_ok+MB_ICONWARNING);
          IF TAB_PRINCIPAL.ActivePageIndex = 1 THEN
          combocondpgto.setfocus;
        end;
      end
      else
      begin
        application.messagebox('Condição de Pagamento não encontrada!','Aviso',mb_ok+MB_ICONERROR);
          IF TAB_PRINCIPAL.ActivePageIndex = 1 THEN
        combocondpgto.setfocus;
      end;
    end
    else
    begin
          IF TAB_PRINCIPAL.ActivePageIndex = 1 THEN
      rqtde.setfocus;
    end;
  end;
end;

procedure Tfrmnotafiscal.combocondpgtoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal.rqtdeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;

  if rqtde.value > 0 then
  begin

        prestacao := 1;
        qtde := trunc(rqtde.value);

        VALOR := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat / qtde;

        qrreceber.close;
        qrreceber.sql.clear;
        qrreceber.SQL.Add('delete from c000117');
        qrreceber.sql.add('where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
        qrreceber.ExecSQL;
        qrreceber.close;
        qrreceber.sql.clear;
        qrreceber.sql.add('select * from c000117');
        qrreceber.sql.add('where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
        qrreceber.sql.add('order by numero');
        qrreceber.open;

        while QTDE <> 0 do
        begin
          qrreceber.Insert;
          qrreceber.FieldByName('numero').asstring :=  frmprincipal.zerarcodigo(inttostr( prestacao),2);
          qrreceber.FieldByName('vencimento').asdatetime := incmonth(frmnotafiscal_menu.qrnota.fieldbyname('data').asdatetime,prestacao);
          qrreceber.fieldbyname('valor').asfloat := valor;
          qrreceber.FieldByName('documento').asstring := frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring +'/'+inttostr(prestacao);
          qrreceber.FieldByName('TIPO').asstring := 'DUPLICATA';
          qrreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;

        qrreceber.REFRESH;
        rsoma.value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat;

        rdiferenca.Value := 0;
               IF TAB_PRINCIPAL.ActivePageIndex = 1 THEN
        wwdbgrid1.SetFocus;
  end;
end;

procedure Tfrmnotafiscal.qrreceberBeforePost(DataSet: TDataSet);
begin
  if qrreceber.state = dsinsert then
     qrreceber.fieldbyname('codigo').asstring := frmprincipal.codifica('000062');

  qrreceber.fieldbyname('cod_nota').asstring := frmNotafiscal_menu.qrnota.fieldbyname('codigo').asstring;
end;

procedure Tfrmnotafiscal.tab_principalChange(Sender: TObject);
var itotal : real;
begin

  if tab_principal.ActivePageIndex = 1 then
  begin
    if (rtipo.ItemIndex = 0) or (rtipo.ItemIndex = 2) then
       tab_principal.ActivePageIndex := 0;
  end;

  if tab_principal.activepageindex = 1 then
  begin
  qrreceber.first;
  itotal := 0;
  while not qrreceber.eof do
  begin
    itotal := itotal + qrreceber.fieldbyname('valor').asfloat;
    qrreceber.next;
  end;

  if itotal = 0 then
  begin
    rsoma.value      := 0;
    rdiferenca.value := 0;
  end
  else
  begin
    rdiferenca.value := frmnotafiscal_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat - itotal;
    rsoma.value := itotal;


    if (rdiferenca.Value < 0.10) and ( rdiferenca.Value > (-0.10)) then
    begin
      rdiferenca.value := 0;
    end;
  end;
  end;

end;

procedure Tfrmnotafiscal.BDUPLICATAClick(Sender: TObject);
begin
          qrduplicata.open;
          while qrduplicata.recordcount <> 0 do qrduplicata.delete;
          qrduplicata.Refresh;

              qrreceber.first;
              while not qrreceber.Eof do
              begin
                  qrduplicata.insert;
                  qrduplicata.fieldbyname('emitente_fantasia').asstring := emitente_fantasia;
                  qrduplicata.fieldbyname('emitente_RAZAO').asstring := emitente_nome;
                  qrduplicata.fieldbyname('emitente_telefone').asstring := 'Fone: '+emitente_telefone;
                  qrduplicata.fieldbyname('emitente_endereco').asstring := emitente_endereco+' - '+emitente_cidade+' - '+emitente_cep;
                  qrduplicata.fieldbyname('emitente_cnpj').asstring := emitente_cnpj;
                  qrduplicata.fieldbyname('emitente_ie').asstring := emitente_ie;
                  qrduplicata.fieldbyname('FATURA_NUMERO').asstring := frmnotafiscal_menu.qrnota.fieldbyname('numero').asstring;
                  qrduplicata.fieldbyname('fatura_valor').asstring := formatfloat('###,###,##0.00',frmnotafiscal_menu.qrnota.fieldbyname('total_nota').asfloat);

                  qrduplicata.fieldbyname('duplicata_numero').asstring := qrreceber.fieldbyname('documento').asstring;
                  qrduplicata.fieldbyname('duplicata_valor').asstring := formatfloat('###,###,##0.00',qrreceber.fieldbyname('valor').asfloat);
                  qrduplicata.fieldbyname('data_vencimento').asstring := qrreceber.fieldbyname('vencimento').asstring;
                  qrduplicata.fieldbyname('data_emissao').asstring := frmnotafiscal_menu.qrnota.fieldbyname('data').asstring;
                  qrduplicata.fieldbyname('extenso').asstring :=  AnsiUpperCase(extenso(qrreceber.fieldbyname('valor').asfloat));

                  qrduplicata.fieldbyname('sacado_nome').asstring := qrcliente.fieldbyname('nome').asstring;
                  qrduplicata.fieldbyname('sacado_endereco').asstring := qrcliente.fieldbyname('endereco').asstring + ' '+qrcliente.fieldbyname('bairro').asstring;
                  qrduplicata.fieldbyname('sacado_municipio').asstring := qrcliente.fieldbyname('cidade').asstring;
                  qrduplicata.fieldbyname('sacado_uf').asstring := qrcliente.fieldbyname('uf').asstring;
                  qrduplicata.fieldbyname('sacado_cep').asstring := qrcliente.fieldbyname('cep').asstring;
                  qrduplicata.fieldbyname('sacado_cnpj').asstring := qrcliente.fieldbyname('cpf').asstring;
                  qrduplicata.fieldbyname('sacado_ie').asstring := qrcliente.fieldbyname('rg').asstring;
                  qrduplicata.fieldbyname('sacado_praca').asstring := emitente_cidade;
                  qrduplicata.post;

                qrreceber.next;
              end;
              qrduplicata.SortOnFields('duplicata_numero');

              FXduplicata.LoadFromFile('\DATASAC\server\rel\f000150.fr3');
              FXduplicata.ShowReport;
end;

procedure Tfrmnotafiscal.bimporta_cupomClick(Sender: TObject);
begin
  if ( efilial.Text = '' )  or ( efilial.Text = '000000' ) then
    begin
      Application.messagebox('Empresa Não Informada!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      efilial.SetFocus;
      exit;
    end;
  if ( ecliente.Text = '' ) or ( ecliente.Text = '000000' ) then
    begin
      Application.messagebox('Cliente Não Informado!','Atenção!',mb_ok+MB_ICONEXCLAMATION);
      ecliente.SetFocus;
      exit;
    end;

  frmnotafiscal_importacupom := Tfrmnotafiscal_importacupom.CREATE(SELF);
  frmnotafiscal_importacupom.ShowModal;

 // qrnotafiscal_item.Post;


 //  frmmodulo.Conexao.Commit;
 //  frmmodulo.EConexao.Commit;

    qrnotafiscal_item.Close;
    qrnotafiscal_item.sql.clear;
    qrnotafiscal_item.sql.add('select item.*, pro.produto, pro.unidade');
    qrnotafiscal_item.SQL.add('from c000062 item, c000025 pro');
    qrnotafiscal_item.sql.add('where item.codproduto = pro.codigo and');
    qrnotafiscal_item.SQL.add('item.codnota = '''+vnumero_inclui_nota+''' order by item');
    qrnotafiscal_item.open;

 {
    if qrnotafiscal_item.fieldbyname('item').asstring = '' then
    begin
       nf_item := 1;
      qrnotafiscal_item.first;
      while not qrnotafiscal_item.eof do
      begin
         query.close;
         query.sql.clear;
         query.sql.add('update c000062 set item = '+inttostr(nf_item)+' where codigo = '''+qrnotafiscal_item.fieldbyname('codigo').asstring+'''');
         query.execsql;
        NF_ITEM := NF_ITEM + 1;
        qrnotafiscal_item.Next;
      end;
    end
    else
      nf_item := qrnotafiscal_item.recordcount + 1;

//    qrnotafiscal_item.refresh;

    qrcliente.close;
    qrcliente.sql.clear;
    qrcliente.sql.add('select * from c000007');
    qrcliente.Open;

    efilial.SetFocus;
}

  grid1.SetFocus;

end;

procedure Tfrmnotafiscal.ImportaCupomFiscal1Click(Sender: TObject);
begin
  bimporta_cupomClick(frmnotafiscal);
end;

procedure Tfrmnotafiscal.ecodmodeloExit(Sender: TObject);
begin
  if tedit(sender).Text = '' then
  begin
     ecodmodeloButtonClick(frmnotafiscal);
  end;
end;

end.






