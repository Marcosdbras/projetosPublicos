unit compra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, TFlatPanelUnit,
  AdvOfficeStatusBar, wwdblook, RzEdit,
  RzDBEdit, RzDBBnEd, ToolEdit, RXDBCtrl, RzLabel, AdvGlowButton,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  Grids, Wwdbigrd, Wwdbgrid, ImgList, RzPanel, RzCmboBx,  DB,
  ZAbstractRODataset, ZAbstractDataset, AdvOfficeStatusBarStylers
  {$IFDEF VER150}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER160}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER170}
  ,XPMan
  {$ENDIF}
  {$IFDEF VER180}
  ,XPMan, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset
  {$ENDIF},
  ZDataset, AdvPreviewMenuStylers, RzDBCmbo, AdvMenus, AdvMenuStylers,
  BaseGrid, AdvGrid, DBAdvGrid, Menus, PageView, AdvShapeButton, RzSpnEdt,
  RzBtnEdt, RzDBSpin;


type
  Tfrmcompra = class(TForm)
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    stilo2: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler3: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler6: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler7: TAdvOfficeStatusBarOfficeStyler;
    dsnota: TDataSource;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    qrnota_item: TZQuery;
    dscompra_item: TDataSource;
    qrnf: TZQuery;
    qrgrade_entrada: TZQuery;
    AdvOfficeStatusBarOfficeStyler2: TAdvOfficeStatusBarOfficeStyler;
    query: TZQuery;
    tab_principal: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    Bevel7: TBevel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit11: TRzDBNumericEdit;
    RzDBNumericEdit13: TRzDBNumericEdit;
    RzDBNumericEdit17: TRzDBNumericEdit;
    RzDBNumericEdit18: TRzDBNumericEdit;
    RzDBNumericEdit19: TRzDBNumericEdit;
    RzDBNumericEdit20: TRzDBNumericEdit;
    RzDBNumericEdit21: TRzDBNumericEdit;
    RzDBNumericEdit22: TRzDBNumericEdit;
    RzDBNumericEdit23: TRzDBNumericEdit;
    RzDBNumericEdit24: TRzDBNumericEdit;
    RzDBNumericEdit25: TRzDBNumericEdit;
    RzDBNumericEdit26: TRzDBNumericEdit;
    RzDBNumericEdit27: TRzDBNumericEdit;
    RzDBNumericEdit28: TRzDBNumericEdit;
    RzDBNumericEdit29: TRzDBNumericEdit;
    RzDBNumericEdit30: TRzDBNumericEdit;
    RzDBNumericEdit31: TRzDBNumericEdit;
    RzDBNumericEdit32: TRzDBNumericEdit;
    RzDBNumericEdit33: TRzDBNumericEdit;
    RzDBNumericEdit34: TRzDBNumericEdit;
    RzDBNumericEdit35: TRzDBNumericEdit;
    RzDBNumericEdit36: TRzDBNumericEdit;
    RzDBNumericEdit37: TRzDBNumericEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    PageSheet3: TPageSheet;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    DBEdit3: TDBEdit;
    ecodremetente: TRzDBButtonEdit;
    emercadoria: TRzDBNumericEdit;
    RzDBComboBox3: TRzDBComboBox;
    enota_fiscal: TDBEdit;
    RzDBNumericEdit4: TRzDBNumericEdit;
    Bevel2: TBevel;
    Label21: TLabel;
    Label22: TLabel;
    Panel4: TPanel;
    Label24: TLabel;
    RzDBNumericEdit38: TRzDBNumericEdit;
    Label53: TLabel;
    RzDBNumericEdit39: TRzDBNumericEdit;
    Label56: TLabel;
    RzDBNumericEdit40: TRzDBNumericEdit;
    Label57: TLabel;
    RzDBNumericEdit41: TRzDBNumericEdit;
    Label58: TLabel;
    RzDBNumericEdit42: TRzDBNumericEdit;
    Panel5: TPanel;
    Label1: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    eserie: TDBEdit;
    ecodempresa: TRzDBButtonEdit;
    DBEdit22: TDBEdit;
    DBEdit1: TDBEdit;
    combo_tipo: TRzDBComboBox;
    Edit2: TEdit;
    ecodmodelo: TRzDBButtonEdit;
    GroupBox4: TGroupBox;
    Label8: TLabel;
    ECODFORNECEDOR: TRzDBButtonEdit;
    DBEdit2: TDBEdit;
    Edit1: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label6: TLabel;
    eemissao: TDBDateEdit;
    eentrada: TDBDateEdit;
    ecfop: TRzDBButtonEdit;
    Bevel1: TBevel;
    Panel6: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    ebase_icms: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    ebase_subst: TRzDBNumericEdit;
    evalor_subst: TRzDBNumericEdit;
    RzDBNumericEdit5: TRzDBNumericEdit;
    RzDBNumericEdit6: TRzDBNumericEdit;
    RzDBNumericEdit7: TRzDBNumericEdit;
    RzDBNumericEdit8: TRzDBNumericEdit;
    RzDBNumericEdit9: TRzDBNumericEdit;
    RzDBNumericEdit10: TRzDBNumericEdit;
    rdesconto: TRzDBNumericEdit;
    XDESCONTO: TDBCheckBox;
    Label15: TLabel;
    enumero: TDBEdit;
    Bevel5: TBevel;
    Bevel6: TBevel;
    evalor_produtos: TRzDBNumericEdit;
    Label2: TLabel;
    Bevel4: TBevel;
    Bevel8: TBevel;
    Label59: TLabel;
    Label19: TLabel;
    etotalnota: TRzDBNumericEdit;
    Label60: TLabel;
    GroupBox1: TGroupBox;
    etipo_baseicms: TDBCheckBox;
    Panel1: TPanel;
    Bevel9: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    batualiza_itens: TButton;
    Bevel10: TBevel;
    Label26: TLabel;
    Label28: TLabel;
    Label30: TLabel;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    Shape4: TShape;
    Shape5: TShape;
    Shape6: TShape;
    Shape7: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Shape11: TShape;
    Shape12: TShape;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label76: TLabel;
    Label77: TLabel;
    Label20: TLabel;
    Label55: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    Label69: TLabel;
    Label70: TLabel;
    Label71: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Shape13: TShape;
    Label80: TLabel;
    DBText14: TDBText;
    DBText13: TDBText;
    Label81: TLabel;
    Label82: TLabel;
    img: TAdvShapeButton;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    bgerar: TAdvGlowButton;
    wwDBGrid2: TwwDBGrid;
    Panel7: TPanel;
    Bevel13: TBevel;
    qrpagar: TZQuery;
    dspagar: TDataSource;
    qrpagarCODIGO: TStringField;
    qrpagarDATA_EMISSAO: TDateTimeField;
    qrpagarDATA_VENCIMENTO: TDateTimeField;
    qrpagarDATA_PAGAMENTO: TDateTimeField;
    qrpagarCODCONTA: TStringField;
    qrpagarCODFORNECEDOR: TStringField;
    qrpagarVALOR: TFloatField;
    qrpagarVALORPAGO: TFloatField;
    qrpagarLIQUIDO: TFloatField;
    qrpagarDESCONTO: TFloatField;
    qrpagarACRESCIMO: TFloatField;
    qrpagarDOCUMENTO: TStringField;
    qrpagarNOTAFISCAL: TStringField;
    qrpagarHISTORICO: TStringField;
    qrpagarC: TStringField;
    qrpagarE: TStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarESPECIE: TStringField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TStringField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TStringField;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    RzDBEdit1: TRzDBEdit;
    Bevel3: TBevel;
    AdvGlowButton2: TAdvGlowButton;
    Panel2: TPanel;
    Label23: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label29: TLabel;
    Label31: TLabel;
    Label33: TLabel;
    Label54: TLabel;
    Label61: TLabel;
    Bevel11: TBevel;
    Bevel12: TBevel;
    Label62: TLabel;
    Label63: TLabel;
    edbicms: TRzNumericEdit;
    edfrete: TRzNumericEdit;
    edvicms: TRzNumericEdit;
    edseguro: TRzNumericEdit;
    edbst: TRzNumericEdit;
    edoutras: TRzNumericEdit;
    edipi: TRzNumericEdit;
    edvst: TRzNumericEdit;
    edtotal: TRzNumericEdit;
    edprodutos: TRzNumericEdit;
    edespecial: TRzNumericEdit;
    dbedit4: TwwDBLookupCombo;
    ZQuery1: TZQuery;
    qrnota_item_lista: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    StringField13: TStringField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    DateTimeField1: TDateTimeField;
    IntegerField1: TIntegerField;
    StringField14: TStringField;
    StringField15: TStringField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    StringField16: TStringField;
    FloatField24: TFloatField;
    StringField17: TStringField;
    FloatField25: TFloatField;
    qrnota_itemITEM: TStringField;
    qrnota_itemCODPRODUTO: TStringField;
    qrnota_itemUN_COMPRA: TStringField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemCST: TStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemICMS_ALIQUOTA: TFloatField;
    qrnota_itemSUB_VALOR: TFloatField;
    qrnota_itemIPI_ALIQUOTA: TFloatField;
    qrnota_itemIPI_VALOR: TFloatField;
    qrnota_itemnatureza: TStringField;
    qrnota_itemcst_descricao: TStringField;
    qrnota_itemCODIGO: TStringField;
    qrnota_itemCODNOTA: TStringField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrnota_itemUN_FRACAO: TStringField;
    qrnota_itemFRACAO: TFloatField;
    qrnota_itemDESCONTO_P: TFloatField;
    qrnota_itemICMS_RETIDO: TStringField;
    qrnota_itemICMS_REDUCAO: TFloatField;
    qrnota_itemICMS_BASE: TFloatField;
    qrnota_itemICMS_VALOR: TFloatField;
    qrnota_itemICMS_VALORRETIDO: TFloatField;
    qrnota_itemICMS_ISENTO: TFloatField;
    qrnota_itemICMS_NAOTRIBUTADO: TFloatField;
    qrnota_itemSUB_MARGEM: TFloatField;
    qrnota_itemSUB_BASE: TFloatField;
    qrnota_itemIPI_BASE: TFloatField;
    qrnota_itemDATA: TDateTimeField;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemNOTAFISCAL: TStringField;
    qrnota_itemIPI_TIPO: TStringField;
    qrnota_itemFRETE: TFloatField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemSEGURO: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnota_itemSUB_PRODUTOS: TFloatField;
    qrnota_itemCODFORNECEDOR: TStringField;
    qrnota_itemITEM_ESPECIAL_VALOR: TFloatField;
    Label7: TLabel;
    eddesconto: TRzNumericEdit;
    rtproduto: TRzNumericEdit;
    GroupBox2: TGroupBox;
    DBEdit19: TDBEdit;
    qrproduto_grade: TZQuery;
    qrproduto_gradeNUMERACAO: TStringField;
    qrproduto_gradeESTOQUE: TFloatField;
    qrproduto_gradeCOR: TStringField;
    qrproduto_gradeCODBARRA: TStringField;
    qrproduto_gradeCODIGO: TStringField;
    qrproduto_gradeCODPRODUTO: TStringField;
    qrproduto_serial: TZQuery;
    qrproduto_serialSERIAL: TStringField;
    qrproduto_serialNUMERONOTA: TStringField;
    qrproduto_serialESTOQUE: TFloatField;
    qrproduto_serialDATACOMPRA: TDateTimeField;
    qrproduto_serialPRECOCUSTO: TFloatField;
    qrproduto_serialPRECOVENDA: TFloatField;
    qrproduto_serialCLIENTE: TStringField;
    qrproduto_serialDATAVENDA: TDateTimeField;
    qrproduto_serialCODNOTA: TStringField;
    qrproduto_serialCODIGO: TStringField;
    qrproduto_serialCODPRODUTO: TStringField;
    qrproduto_serialCODCLIENTE: TStringField;
    qrproduto_serialSITUACAO: TIntegerField;
    qrproduto_serialCODITEM: TStringField;
    qrproduto_serialCODFORNECEDOR: TStringField;
    qrproduto_serialCODVENDA_ITEM: TStringField;
    qrproduto_serialFILTRO: TIntegerField;
    qrproduto_serialCODVENDA: TStringField;
    Label86: TLabel;
    rtipo: TRzDBComboBox;
    Label87: TLabel;
    rintegracao: TRzDBNumericEdit;
    qrnota_itemICMS_OUTRAS: TFloatField;
    qrnota_itemCREDITO_ICMS: TFloatField;
    qrnota_itemPIS: TFloatField;
    qrnota_itemCOFINS: TFloatField;
    qrnota_itemPIS_BASE: TFloatField;
    qrnota_itemCOFINS_BASE: TFloatField;
    qrnota_item_listaCREDITO_ICMS: TFloatField;
    qrnota_item_listaPIS_BASE: TFloatField;
    qrnota_item_listaPIS: TFloatField;
    qrnota_item_listaCOFINS_BASE: TFloatField;
    qrnota_item_listaCOFINS: TFloatField;
    qrnota_item_listaICMS_OUTRAS: TFloatField;
    qrnota_item_listaCREDITO_ICMS_BASE: TFloatField;
    eaproveita_credito: TRzComboBox;
    Label88: TLabel;
    qrnota_itemLOTE_VALIDADE: TDateTimeField;
    qrnota_itemLOTE_FABRICACAO: TStringField;
    procedure bcancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ecodempresaButtonClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure ecodempresaKeyPress(Sender: TObject; var Key: Char);
    procedure enumeroExit(Sender: TObject);
    procedure enumeroEnter(Sender: TObject);
    procedure enumeroKeyPress(Sender: TObject; var Key: Char);
    procedure eserieExit(Sender: TObject);
    procedure ECODFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ECODFORNECEDORButtonClick(Sender: TObject);
    procedure eemissaoEnter(Sender: TObject);
    procedure eentradaEnter(Sender: TObject);
    procedure evalor_substExit(Sender: TObject);
    procedure RzDBNumericEdit9Exit(Sender: TObject);
    procedure etotalnotaKeyPress(Sender: TObject; var Key: Char);
    procedure xdescontoClick(Sender: TObject);
    procedure ecfopKeyPress(Sender: TObject; var Key: Char);
    procedure ecfopButtonClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure batualiza_itensClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4Enter(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure RzDBNumericEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteKeyPress(Sender: TObject; var Key: Char);
    procedure ecodremetenteButtonClick(Sender: TObject);
    procedure combo_tipoChange(Sender: TObject);
    procedure enota_fiscalExit(Sender: TObject);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit1Exit(Sender: TObject);
    procedure RzDBNumericEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure edvicmsExit(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure ecfopExit(Sender: TObject);
    procedure ecodmodeloKeyPress(Sender: TObject; var Key: Char);
    procedure ecodmodeloButtonClick(Sender: TObject);
    procedure evalor_produtosExit(Sender: TObject);
    procedure ECODFORNECEDORExit(Sender: TObject);
    procedure XDESCONTOKeyPress(Sender: TObject; var Key: Char);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure econtaButtonClick(Sender: TObject);
    procedure edit5KeyPress(Sender: TObject; var Key: Char);
    procedure ecountKeyPress(Sender: TObject; var Key: Char);
    procedure bgerarClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure qrpagarBeforePost(DataSet: TDataSet);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure ebase_icmsKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBNumericEdit41KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit19Exit(Sender: TObject);
    procedure ecountExit(Sender: TObject);
    procedure eemissaoExit(Sender: TObject);
    procedure eentradaExit(Sender: TObject);
    procedure eaproveita_creditoKeyPress(Sender: TObject; var Key: Char);
    procedure RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure ecodmodeloExit(Sender: TObject);
  private
    { Private declarations }
  public

     vbicms,vvicms,vipi,vbst,vvst,vfrete,vespecial,vseguro,voutras,vprodutos,vtotal: double;
    { Public declarations }
  end;

var
  frmcompra: Tfrmcompra;
  itens : integer;
  altera_preco : boolean;
  xreducao : real;
  xipi : integer;
  aceita_inclusao : boolean;


implementation

uses modulo, xloc_empresa, principal, xloc_fornecedor, xloc_cfop,
  compra_item, compra_menu, xloc_modelo, loc_conta;



{$R *.dfm}

procedure Tfrmcompra.bcancelarClick(Sender: TObject);
var texto : pansichar;
begin
  if frmcompra_menu.vopcao_nfe = 1 then
  begin
    query.close;
    query.sql.clear;
    query.SQL.add('delete from c000088 where notafiscal = ''' + enumero.Text + '''');
    query.SQL.add('and codfornecedor = '''+ ECODFORNECEDOR.Text + '''');
    query.ExecSQL;

     QRPAGAR.CLOSE;
     QRPAGAR.SQL.CLEAR;
     QRPAGAR.SQL.ADD('DELETE FROM C000046 WHERE CODNOTA = '''+FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+'''');
     QRPAGAR.ExecSQL;

    frmcompra_menu.qrnota.cancel;
    frmmodulo.Conexao.Commit;
    Application.ProcessMessages;
    CLOSE;
  end
  else
  begin
        bgravarClick(frmcompra);
  end;

end;

procedure Tfrmcompra.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcompra.FormShow(Sender: TObject);
var
  vitem : Integer;
begin
  CAPTION := CAPTION + '       Código: '+frmcompra_menu.qrnota.fieldbyname('codigo').asstring;

  if frmcompra_menu.qrnota.State = dsinsert then
  begin
    bcancelar.Caption := 'Cancelar';
    bcancelar.Picture := img.Picture;
  end
  else
  begin
    bcancelar.Caption := 'Retornar';
  end;


  xipi := 0;
  altera_preco := false;
  xreducao := 0;


  if frmcompra_menu.qrnota.State = dsinsert then
  begin

     frmcompra_menu.qrempresa.close;
     frmcompra_menu.qrempresa.sql.clear;
     frmcompra_menu.qrempresa.sql.add('select * from c000004');
     frmcompra_menu.qrempresa.open;

     edit2.Text := frmcompra_menu.qrEMPRESA.fieldbyname('uf').asstring;
     frmcompra_menu.qrnota.FieldByName('codempresa').AsString := frmcompra_menu.qrEMPRESA.fieldbyname('codigo').asstring;

     frmcompra_menu.qrempresa.close;
     frmcompra_menu.qrempresa.sql.clear;
     frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+frmcompra_menu.qrnotaCODEMPRESA.Value+'''');
     frmcompra_menu.qrempresa.open;

  end
  else
  begin
     frmcompra_menu.qrempresa.close;
     frmcompra_menu.qrempresa.sql.clear;
     frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+frmcompra_menu.qrnotaCODEMPRESA.Value+'''');
     frmcompra_menu.qrempresa.open;
     edit2.Text := frmcompra_menu.qrEMPRESA.fieldbyname('uf').asstring;
  end;


     frmcompra_menu.qrfornecedor.close;
     frmcompra_menu.qrfornecedor.sql.clear;
     frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+frmcompra_menu.qrnotaCODFORNECEDOR.Value+'''');
     frmcompra_menu.qrfornecedor.open;
     edit1.Text := frmcompra_menu.qrfornecedorUF.Value;
     eemissao.setfocus;


     frmmodulo.qrtransportador.open;


{  qrnota_item.Close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from c000088 where codnota = '''+frmcompra_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnota_item.Open;

}

  qrnota_item_lista.Close;
  qrnota_item_lista.sql.clear;
  qrnota_item_lista.sql.add('select item.*, produto.produto from c000088 item, c000025 produto');
  qrnota_item_lista.SQL.add('where item.codproduto = produto.codigo');
  qrnota_item_lista.sql.add('and codnota = '''+frmcompra_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnota_item_lista.Open;

  itens := qrnota_item_lista.RecordCount + 1;

     // atualiza somatoria da nota fiscal
     edbicms.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
     edvicms.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
     edipi.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
     edbst.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat;
     edvst.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat;
     edfrete.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat;
     edespecial.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat;
     edseguro.Value      := frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
     edoutras.Value      := frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
     edprodutos.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;


  //   if frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0 then
  //    eddesconto.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   //  else
   //   eddesconto.Value    := frmcompra_menu.qrnota.fieldbyname('DESCONTO').asfloat;


    if rtipo.Text = '' then rtipo.ItemIndex := 0;

     eddesconto.value := frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;

     edtotal.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat;

     vespecial := frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat;

     if frmcompra_menu.qrnota.state = dsedit then
     begin
        tab_principal.ActivePageIndex := 0;
        if (ecodmodelo.text = '07') or
           (ecodmodelo.text = '08') or
           (ecodmodelo.text = '09') or
           (ecodmodelo.text = '10') or
           (ecodmodelo.text = '11') then
        begin
          combo_tipo.ItemIndex := 3;
          tab_principal.ActivePageIndex := 5;
        end;

          ecodfornecedor.SetFocus;
     end
     else
     begin
        ecodempresa.SetFocus;
     end;

     QRPAGAR.CLOSE;
     QRPAGAR.SQL.CLEAR;
     QRPAGAR.SQL.ADD('SELECT * FROM C000046 WHERE CODNOTA = '''+FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+''' ORDER BY DATA_VENCIMENTO');
     QRPAGAR.OPEN;

     aceita_inclusao := FALSE;
     if frmcompra_menu.qrnota.state = dsinsert then
     begin
       pfatura.Enabled := true;
     end
     else
     begin
       if qrpagar.recordcount > 0 then
       pfatura.Enabled := false
       else
       pfatura.Enabled := true;
     end;



  rtproduto.Value := 0;

  frmcompra.qrnota_item_lista.first;
  while not frmcompra.qrnota_item_lista.Eof do
  begin
    rtproduto.value := rtproduto.value + frmcompra.qrnota_item_lista.fieldbyname('total').asfloat;
    ITENS := ITENS + 1;
    frmcompra.qrnota_item_lista.next;
  end;

  (********************** verificar a nota nao tem item mas na 88 existe ***********************)
  if qrnota_item_lista.RecordCount = 0 then
     begin

      query.close;
      query.SQL.clear;
      query.SQL.Add('select * from c000032 where numeronota = '''+frmcompra_menu.qrnota.fieldbyname('numero').asstring+'''');
      query.SQL.Add('and codcliente = '''+frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring+'''');
      query.SQL.Add('and cupom_modelo = '''+frmcompra_menu.qrnota.fieldbyname('modelo').asstring+'''');
      query.SQL.Add('and data = :vdat');
      query.Params.ParamByName('vdat').AsDateTime := frmcompra_menu.qrnota.fieldbyname('DATA_EMISSAO').AsDateTime;
      query.open;

      if query.recordcount > 0 then
      begin

        FRMCOMPRA.qrnota_item.Open;

        vitem := 0;

        while not query.Eof do begin
          vitem := vitem + 1;
          FRMCOMPRA.qrnota_item.Insert;
          FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
          FRMCOMPRA.qrnota_item.fieldbyname('codlancamento').asstring := FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring;
          FRMCOMPRA.qrnota_item.fieldbyname('data').asdatetime := frmcompra_menu.qrnota.fieldbyname('DATA_LANCAMENTO').asfloat;

          codigo_it := FRMCOMPRA.qrnota_item.fieldbyname('codigo').asstring;
          FRMCOMPRA.qrnota_item.fieldbyname('codnota').asstring := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
          FRMCOMPRA.qrnota_item.fieldbyname('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
          FRMCOMPRA.qrnota_item.fieldbyname('codfornecedor').asstring := frmcompra.ECODFORNECEDOR.Text;
          FRMCOMPRA.qrnota_item.fieldbyname('CFOP').asstring := frmcompra_menu.qrnota.fieldbyname('CFOP').asstring;
          if frmcompra_menu.qrnota.FieldByName('CONF_ICMSRETIDO').asfloat > 0 then
            FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'S' else FRMCOMPRA.qrnota_item.fieldbyname('icms_retido').asstring := 'N';
          FRMCOMPRA.qrnota_item.FieldByName('item').AsString := frmprincipal.zerarcodigo(inttostr(itens),3);

          if frmcompra.rdesconto.Value = 0 then
            begin
              FRMCOMPRA.qrnota_item.FieldByName('DESCONTO').AsFloat := 0;
              FRMCOMPRA.qrnota_item.FieldByName('DESCONTO_P').AsFloat := 0;
            end;
          FRMCOMPRA.qrnota_item.FieldByName('ICMS_ISENTO').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('ICMS_NAOTRIBUTADO').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('ICMS_VALORRETIDO').AsFloat := 0;

          FRMCOMPRA.qrnota_item.FieldByName('ICMS_ALIQUOTA').AsFloat := query.fieldbyname('icms').AsFloat;
          FRMCOMPRA.qrnota_item.FieldByName('ICMS_REDUCAO').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('ICMS_BASE').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('ICMS_VALOR').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('SUB_VALOR').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('IPI_BASE').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('IPI_VALOR').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('IPI_ALIQUOTA').AsFloat := 0;;
          FRMCOMPRA.qrnota_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';

          FRMCOMPRA.qrnota_item.FieldByName('SUB_MARGEM').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('SUB_BASE').AsFloat := 0;
          FRMCOMPRA.qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat := 0;

          FRMCOMPRA.qrnota_itemCODPRODUTO.AsString := query.fieldbyname('codproduto').asstring;
          FRMCOMPRA.qrnota_itemQTDE.AsFloat := query.fieldbyname('qtde').AsFloat;
          FRMCOMPRA.qrnota_itemUNITARIO.AsFloat := query.fieldbyname('unitario').AsFloat;
          FRMCOMPRA.qrnota_itemITEM.AsString := frmPrincipal.zerarcodigo(IntToStr(vitem),3);
          if ( query.fieldbyname('cst').Value = '' ) or
             ( query.fieldbyname('cst').Value = null ) then
            FRMCOMPRA.qrnota_itemCST.AsString := '000'
          else
            FRMCOMPRA.qrnota_itemCST.AsString := query.fieldbyname('cst').AsString;
          FRMCOMPRA.qrnota_itemDESCONTO.AsFloat := query.fieldbyname('desconto').AsFloat;
          FRMCOMPRA.qrnota_itemSUBTOTAL.AsFloat := query.fieldbyname('total').AsFloat-query.fieldbyname('desconto').AsFloat;
          FRMCOMPRA.qrnota_itemTOTAL.AsFloat := query.fieldbyname('total').AsFloat;
          FRMCOMPRA.qrnota_itemICMS_ALIQUOTA.AsFloat := query.fieldbyname('aliquota').AsFloat;
          FRMCOMPRA.qrnota_itemUN_COMPRA.AsString := query.fieldbyname('unidade').AsString;
          FRMCOMPRA.qrnota_itemIPI_TIPO.AsString := '0.Não Tem IPI';

          FRMCOMPRA.qrnota_item.Post;

          query.Next;
        end;
        frmmodulo.Conexao.Commit;
        Application.ProcessMessages;
        close;
      end;
    end;



end;

procedure Tfrmcompra.ecodempresaButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_empresa := tfrmxloc_empresa.create(self);
  frmxloc_empresa.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmcompra_menu.qrempresa.close;
     frmcompra_menu.qrempresa.sql.clear;
     frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+resultado_pesquisa1+'''');
     frmcompra_menu.qrempresa.open;
     frmcompra_menu.qrnota.fieldbyname('codempresa').asstring := resultado_pesquisa1;

     edit2.Text := frmcompra_menu.qrEMPRESAUF.Value;

     enumero.setfocus;
  end;
end;

procedure Tfrmcompra.bgravarClick(Sender: TObject);
var texto : pansichar;
  vqde_item : integer;
  vitem : Integer;

begin

  if copy(datetostr(eemissao.date),7,4) <> copy(datetostr(date),7,4) then
    begin
      if application.messagebox('Data de Emissão fora do ano corrente, Continua?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          eemissao.SetFocus;
          exit;
        end;
    end;

  if copy(datetostr(eentrada.date),7,4) <> copy(datetostr(date),7,4) then
    begin
      if application.messagebox('Data de Entrada fora do ano corrente, Continua?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          eentrada.SetFocus;
          exit;
        end;
    end;

  if dsnota.DataSet.State in [dsinsert, dsedit] then
    begin
      dsnota.dataset.fieldbyname('obs7').asstring := frmPrincipal.zerarcodigo(dbedit19.text,6);
      dsnota.dataset.fieldbyname('obs8').asstring := frmPrincipal.zerarcodigo(inttostr(ecount.IntValue),3);
    end;

  if ecodmodelo.text = '' then
    begin
      showmessage('Favor informar um modelo de documento válido!');
      ecodmodelo.setfocus;
      exit;
    end;

  if eemissao.text = '  /  /    ' then
    begin
      showmessage('Data de Emissão Não pode ser em branco, Verifique...');
      eemissao.SetFocus;
      exit;
    end;

     if eentrada.text = '  /  /    ' then
          begin
               showmessage('Data de Entrada Não pode ser em branco, Verifique...');
               eentrada.SetFocus;
               exit;
          end;

   (********************** verificar se existe a mesma nota para o mesmo forncedor ***********************)
    if frmcompra_menu.qrnota.State = dsinsert then
    begin
      qrnf.close;
      qrnf.SQL.clear;
      qrnf.SQL.Add('select * from c000087 where numero = '''+frmcompra_menu.qrnota.fieldbyname('numero').asstring+'''');
      qrnf.SQL.Add('and codfornecedor = '''+frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring+'''');
      qrnf.SQL.Add('and modelo = '''+frmcompra_menu.qrnota.fieldbyname('modelo').asstring+'''');
      qrnf.open;
      if qrnf.recordcount > 0 then
      begin
        application.messagebox('Já existe uma NOTA FISCAL cadastrada com este MODELO e o mesmo NÚMERO para este FORNECEDOR!','Atenção',mb_ok+mb_iconerror);
        exit;
      end;
    end;


    (**********************verificar campos obrigatorios***********************)
    if (ecodempresa.text = '') or (ecodempresa.text = '000000') then
    begin
      application.MessageBox('Favor informar a empresa!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
    if (ecodfornecedor.text = '') or (ecodfornecedor.text = '000000') then
    begin
      application.MessageBox('Favor informar o fornecedor!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
    if (enumero.text = '') or (enumero.text = '000000') then
    begin
      application.MessageBox('Favor informar o número da nota!','Erro',mb_ok+mb_iconerror);
      exit;
    end;

    (**********************lancar dados do conhecimento de transporte**********)

    IF COMBO_TIPO.ItemIndex = 3 THEN
    BEGIN
     // atualiza somatoria da nota fiscal
     edbicms.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
     edvicms.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
     edipi.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
     edbst.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat;
     edvst.Value         := frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat;
     edfrete.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat;
     edespecial.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat;
     edseguro.Value      := frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
     edoutras.Value      := frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
     edprodutos.Value    := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;
     edtotal.Value       := frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat;
    END
    ELSE
    BEGIN
      if (frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat = 0) or (frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat = 0) then
      begin
        application.MessageBox('Valor da Nota/Produtos zerado! Deseja prosseguir?','Erro',mb_ok+mb_iconquestion);
        frmcompra_menu.qrnota.post;
        frmmodulo.conexao.commit;
        Application.ProcessMessages;
        close;
        exit;
      end;

   if ((frmcompra_menu.qrnota.FieldByName('TOTAL_produtos').asfloat-
       frmcompra_menu.qrnota.FieldByName('conf_TOTALprodutos').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('TOTAL_produtos').asfloat-
       frmcompra_menu.qrnota.FieldByName('CONF_TOTALprodutos').asfloat) < (-0.10)) then

   begin
     texto := pansichar('Foi alterado alguma Informação na Nota Fiscal de Entrada'+#13+
              'ou há Inconsistência no valor total dos Produtos.'+#13+
              'Por isso, esta nota precisa ser gravada para sua finalização!'+#13+
              'Deseja prosseguir com a finalização?'+#13+
              'Diferença: R$'+formatfloat('###,###,##0.00',(frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat)));


     if application.messagebox(texto,'Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then exit;
   end;
   (********************** verificar total do ipi ***********************)

   if ((frmcompra_menu.qrnota.FieldByName('ipi').asfloat-
       frmcompra_menu.qrnota.FieldByName('conf_ipi').asfloat) > 0.10) or
      ((frmcompra_menu.qrnota.FieldByName('ipi').asfloat-
       frmcompra_menu.qrnota.FieldByName('CONF_ipi').asfloat) < (-0.10)) then
   begin
     texto := pansichar('Houve inconsistência no valor total do IPI!'+#13+
              'Diferença: R$'+formatfloat('###,###,##0.00',(frmcompra_menu.qrnota.FieldByName('TOTAL_NOTA').asfloat-frmcompra_menu.qrnota.FieldByName('conf_TOTALNOTA').asfloat))+#13+
              'Deseja prosseguir com a finalização?');

     if application.messagebox(texto,'Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then exit;
   end;

    END;

  qrnota_item.Close;
  qrnota_item.sql.clear;
  qrnota_item.sql.add('select * from c000088 where codproduto is not null and codnota = '''+frmcompra_menu.qrnota.fieldbyname('codigo').asstring+''' order by item');
  qrnota_item.Open;

   if frmcompra_menu.qrnota.state = dsinsert then
    begin

      //frmmodulo.qrproduto_mov.Open;
      FRMMODULO.QRPRODUTO_MOV.CLOSE;
      FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
      FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
      FRMMODULO.QRPRODUTO_MOV.OPEN;

      if qrnota_item.recordcount > 0 then
        begin
          qrnota_item.first;
          while not qrnota_item.eof do
            begin
              frmmodulo.qrproduto_mov.Insert;
              frmmodulo.qrproduto_mov.FieldByName('codigo').AsString       := qrnota_item.fieldbyname('codlancamento').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := qrnota_item.fieldbyname('codnota').asstring+'NE';
              frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';  //qrnota_item.fieldbyname('codigo').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item.fieldbyname('codproduto').asstring;
              if qrnota_item.FieldByName('fracao').asfloat > 0 then
                begin
                  frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
                  frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat/(qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
                end
              ELSE
                begin
                  frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
                  frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat/qrnota_item.FieldByName('qtde').asfloat;
                end;
              frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item.fieldbyname('total').asfloat;

              if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_fracao').AsString
              else
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString;

              frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('credito_icms').asFLOAT  := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('pis').asFLOAT           := qrnota_item.fieldbyname('PIS').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('cofins').asFLOAT        := qrnota_item.fieldbyname('COFINS').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
              frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
              frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_LANCAMENTO').ASSTRING;
              frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString      := qrnota_item.fieldbyname('cfop').AsString;

              frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString      := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
              frmmodulo.qrproduto_mov.fieldbyname('vencimento').AsDateTime         := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

              frmmodulo.qrproduto_mov.Post;
              qrnota_item.Next;
            end;
        end
      else
        begin
        {
        // vrifica se o sistema nao achou informações na tabela qrnota_item
        // e pegou as informações da qrnota_item_lista

          if qrnota_item_lista.RecordCount > 0 then
            begin
              qrnota_item_lista.First;
              while not qrnota_item_lista.Eof do begin
                frmmodulo.qrproduto_mov.Insert;
                frmmodulo.qrproduto_mov.FieldByName('codigo').AsString       := qrnota_item_lista.fieldbyname('codlancamento').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := qrnota_item_lista.fieldbyname('codnota').asstring+'NE';
                frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := qrnota_item_lista.fieldbyname('codigo').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item_lista.fieldbyname('codproduto').asstring;
                if qrnota_item_lista.FieldByName('fracao').asfloat > 0 then
                  begin
                    frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item_lista.FieldByName('qtde').asfloat * qrnota_item_lista.FieldByName('fracao').asfloat;
                    frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item_lista.FieldByName('total').asfloat/(qrnota_item_lista.FieldByName('qtde').asfloat * qrnota_item_lista.FieldByName('fracao').asfloat);
                  end
                ELSE
                  begin
                    frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat        := qrnota_item_lista.FieldByName('qtde').asfloat;
                    frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat    := qrnota_item_lista.FieldByName('total').asfloat/qrnota_item_lista.FieldByName('qtde').asfloat;
                  end;
                frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item_lista.fieldbyname('total').asfloat;
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item_lista.fieldbyname('un_fracao').AsString;

                frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item_lista.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
                frmmodulo.qrproduto_mov.fieldbyname('CST').AsString      := qrnota_item_lista.fieldbyname('CST').AsString;
                frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString      := qrnota_item_lista.fieldbyname('cfop').AsString;
                frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
                frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
                frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
                frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 1;
                frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
                frmmodulo.qrproduto_mov.Post;

                qrnota_item_lista.Next;
              end;

        end;
        }
        end;

    end
   ELSE
   BEGIN

      if qrnota_item.recordcount > 0 then
      begin
        qrnota_item.first;
        while not qrnota_item.eof do
        begin
          //frmmodulo.qrproduto_mov.Open;
          FRMMODULO.QRPRODUTO_MOV.CLOSE;
          FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
          FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODIGO = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
          FRMMODULO.QRPRODUTO_MOV.OPEN;

          // deilson

          IF FRMMODULO.QRPRODUTO_MOV.RecordCount > 0 THEN
          begin

            frmmodulo.qrproduto_mov.EDIT;
            frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := qrnota_item.fieldbyname('codnota').asstring+'NE';
            frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item.fieldbyname('codproduto').asstring;
            if qrnota_item.FieldByName('fracao').asfloat > 0 then
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat/(qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
            end
            ELSE
            begin
              frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat;
              frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat/qrnota_item.FieldByName('qtde').asfloat;
            end;
            frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item.fieldbyname('total').asfloat;

              if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_fracao').AsString
              else
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString;

            //frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString; //qrnota_item.fieldbyname('un_fracao').AsString;

            frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('credito_icms').asFLOAT  := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('pis').asFLOAT           := qrnota_item.fieldbyname('PIS').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('cofins').asFLOAT        := qrnota_item.fieldbyname('COFINS').asFLOAT;
            frmmodulo.qrproduto_mov.fieldbyname('CST').AsString      := qrnota_item.fieldbyname('CST').AsString;
            frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString      := qrnota_item.fieldbyname('cfop').AsString;

            frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString      := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
            frmmodulo.qrproduto_mov.fieldbyname('vencimento').AsDateTime         := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
            frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
            frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 1;
            frmmodulo.qrproduto_mov.FieldByName('data').asstring := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;


            frmmodulo.qrproduto_mov.Post;
          END
          ELSE
          BEGIN

            query.Close;
            query.sql.clear;
            query.sql.add('select codigo, produto from c000025 where codigo = '''+qrnota_item.fieldbyname('codproduto').asstring+'''');
            query.open;
            {
            texto := pansichar(query.fieldbyname('codigo').asstring+' - '+ query.fieldbyname('produto').asstring);
            case application.messagebox(pansichar('O produto: [ '+texto+' ] não possue lançamento de estoque!'+#13+
                                        'Existem 3 possibilidades para que isso aconteça:'+#13+
                                        '1ª - Esta nota está sendo alterada o foi feita a inclusão deste item (Clique em SIM);'+#13+
                                        '2ª - Foi feita a atualização do sistema, e esta nota foi lançada antes da atualização (Clique em NÃO);'+#13+
                                        '3ª - O lançamento foi excluído indevidamente; (Clique em Sim);'+#13+
                                        'Caso tenha dúvidas, clique em cancelar e consulte o suporte!'+#13+
                                        'Deseja criar o lançamento de Estoque para este produto?'),
                                        'Atenção',MB_YESNOCANCEL+mb_iconwarning+MB_DEFBUTTON3) of
            idYes :
             }
             //begin

              frmmodulo.qrproduto_mov.Insert;
              frmmodulo.qrproduto_mov.FieldByName('codigo').AsString       := qrnota_item.fieldbyname('codlancamento').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := qrnota_item.fieldbyname('codnota').asstring+'NE';
              frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';  //qrnota_item.fieldbyname('codigo').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra_menu.qrnota.fieldbyname('NUMERO').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := qrnota_item.fieldbyname('codproduto').asstring;
              if qrnota_item.FieldByName('fracao').asfloat > 0 then
              begin
                frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat;
                frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qrnota_item.FieldByName('total').asfloat/(qrnota_item.FieldByName('qtde').asfloat * qrnota_item.FieldByName('fracao').asfloat);
              end
              ELSE
              begin
                frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat        := qrnota_item.FieldByName('qtde').asfloat;
                frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat    := qrnota_item.FieldByName('total').asfloat/qrnota_item.FieldByName('qtde').asfloat;
              end;
              frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := qrnota_item.fieldbyname('total').asfloat;

              if qrnota_item.fieldbyname('un_fracao').AsString <> '' then
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_fracao').AsString
              else
                frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString;

              //frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := qrnota_item.fieldbyname('un_compra').AsString; //qrnota_item.fieldbyname('un_fracao').AsString;

              frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := qrnota_item.fieldbyname('ICMS_ALIQUOTA').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('credito_icms').asFLOAT  := qrnota_item.fieldbyname('CREDITO_ICMS').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('pis').asFLOAT           := qrnota_item.fieldbyname('PIS').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('cofins').asFLOAT        := qrnota_item.fieldbyname('COFINS').asFLOAT;
              frmmodulo.qrproduto_mov.fieldbyname('CST').AsString      := qrnota_item.fieldbyname('CST').AsString;
              frmmodulo.qrproduto_mov.fieldbyname('cfop').AsString      := qrnota_item.fieldbyname('cfop').AsString;

              frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString      := qrnota_item.fieldbyname('LOTE_FABRICACAO').AsString;
              frmmodulo.qrproduto_mov.fieldbyname('vencimento').AsDateTime         := qrnota_item.fieldbyname('LOTE_VALIDADE').AsDateTime;

              frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := frmcompra_menu.qrnota.FIELDBYNAME('MODELO').ASSTRING;
              frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
              frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
              frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 1;
              frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmcompra_menu.qrnota.FIELDBYNAME('DATA_emissao').ASSTRING;
              frmmodulo.qrproduto_mov.Post;
            //end;
            {
            idcancel :begin
                       break;
                       exit;
                      end;

            end;
            }
          END;
          qrnota_item.next;
          Application.ProcessMessages;
        end;
      end;

   END;

   // ajusta o total da nota pelo rodapé

     frmcompra_menu.qrnota.fieldbyname('SERIE').AsString := frmPrincipal.somenteNumero(eserie.Text);

     frmcompra_menu.qrnota.fieldbyname('TOTAL_NOTA').asfloat := edtotal.Value;
     frmcompra_menu.qrnota.fieldbyname('TOTAL_PRODUTOS').asfloat := edprodutos.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat := edtotal.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat := edprodutos.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat := edbicms.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat := edvicms.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_BASESUB').asfloat := edbst.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat := edvst.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat := edfrete.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat := edseguro.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat := edoutras.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat := edespecial.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat := edipi.Value;

     frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat := rdesconto.Value;
     frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat := RzDBNumericEdit9.Value;

     IF COMBO_TIPO.ItemIndex = 3 THEN // CONHECIMENTO DE TRANSPORTE
      begin
        frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := 0;
        frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := 0;
        frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := 0;
        frmcompra_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat := edtotal.Value-edipi.Value;
      end
     else
      begin
        frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := edbicms.value; //frmcompra_menu.qrnota.fieldbyname('CONF_BASEICMS').asfloat;
        frmcompra_menu.qrnota.fieldbyname('VALOR_ICMS').asfloat := edvicms.value; //frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;
        IF (frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat = 0) AND (frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat = 0) THEN
          frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat :=  edprodutos.value; //frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat;
      end;
      frmcompra_menu.qrnota.fieldbyname('SEGURO').asfloat := edseguro.value; //frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat;
      frmcompra_menu.qrnota.fieldbyname('OUTRAS').asfloat := edseguro.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
      frmcompra_menu.qrnota.fieldbyname('FRETE').asfloat := edfrete.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat := edespecial.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;
      frmcompra_menu.qrnota.fieldbyname('IPI').asfloat := edipi.value; //frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat;


   frmcompra_menu.qrnota.post;

  /// recodifica os itens da nota fiscal

  vqde_item := 0;
  qrnota_item.first;
  while not qrnota_item.Eof do
    begin
      vqde_item := vqde_item + 1;
      qrnota_item.Edit;
      qrnota_item.FieldByName('ITEM').AsString := frmPrincipal.zerarcodigo(INTTOSTR(vqde_item),3);
      qrnota_item.Post;
      qrnota_item.Next;
    end;

   frmmodulo.conexao.commit;
   Application.ProcessMessages;

   close;
end;

procedure Tfrmcompra.ecodempresaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('codempresa').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin
      frmcompra_menu.qrempresa.close;
      frmcompra_menu.qrempresa.sql.clear;
      frmcompra_menu.qrempresa.sql.add('select * from c000004 where codigo = '''+ecodempresa.text+'''');
      frmcompra_menu.qrempresa.open;



      if frmcompra_menu.qrempresa.recordcount = 0 then
      begin
        application.messagebox('Empresa não cadastrada!','Aviso',mb_ok+mb_iconwarning);
        ecodempresa.setfocus;
      end
      else
      begin
        edit2.Text := frmcompra_menu.qrEMPRESAUF.Value;
        Perform(wm_nextdlgctl,0,0);
      end;
    end
    else
    begin
      ecodempresaButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.enumeroExit(Sender: TObject);
begin
  tedit(sender).color := clbtnface;
  if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

  frmcompra_menu.qrnota.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(frmcompra_menu.qrnota.fieldbyname('numero').asstring,6);

  if frmcompra_menu.qrnota.FieldByName('numero').asstring = '000000' then
  begin
    application.messagebox('Favor informar um número válido!','Atenção',mb_ok+MB_ICONERROR);
    enumero.setfocus;
  end;
end;

procedure Tfrmcompra.enumeroEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure Tfrmcompra.enumeroKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then perform(wm_nextdlgctl,0,0);

//  if key <> #8 then
//  if key = #13 then
//  perform(wm_nextdlgctl,0,0);
//  else
//  if ( key  in ['0'..'9']) then
//   //
//  else abort;
end;

procedure Tfrmcompra.eserieExit(Sender: TObject);
begin
  if ( trim(eserie.Text) = '0' ) or
     ( trim(eserie.Text) = '00' ) or
     ( trim(eserie.Text) = '000' ) then
    begin
      showmessage('Série Inválida, Verifique...');
      eserie.SetFocus;
      exit;
    end;
  tedit(sender).color := clwindow;

end;

procedure Tfrmcompra.ECODFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin


      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+ecodfornecedor.text+'''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.recordcount = 0 then
      begin
        application.messagebox('Fornecedor não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodfornecedor.Text := '';
        ecodfornecedor.setfocus;
        exit;
      end
      else
      if (frmcompra_menu.qrfornecedorCNPJ.Value = '') or
        (frmcompra_menu.qrfornecedorUF.Value = '') or
        (frmcompra_menu.qrfornecedorIE.Value = '') then
          begin
               showmessage('Atenção! Dados de Fornecedor Inconsistente...');
               exit;
          end;

          edit1.Text := frmcompra_menu.qrfornecedorUF.Value;

        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodfornecedorButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ECODFORNECEDORButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmcompra_menu.qrfornecedor.close;
     frmcompra_menu.qrfornecedor.sql.clear;
     frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     frmcompra_menu.qrfornecedor.open;
     frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring := resultado_pesquisa1;

     if (frmcompra_menu.qrfornecedorCNPJ.Value = '') or
        (frmcompra_menu.qrfornecedorUF.Value = '') or
        (frmcompra_menu.qrfornecedorIE.Value = '') then
          begin
               showmessage('Atenção! Dados de Fornecedor Inconsistente...');
               exit;
          end;

     edit1.Text := frmcompra_menu.qrfornecedorUF.Value;
     eemissao.setfocus;
  end;
end;

procedure Tfrmcompra.eemissaoEnter(Sender: TObject);
begin
  if eemissao.Text = '  /  /    ' then eemissao.date := date;
end;

procedure Tfrmcompra.eentradaEnter(Sender: TObject);
begin
  if eentrada.Text = '  /  /    ' then eentrada.date := date;
end;

procedure Tfrmcompra.evalor_substExit(Sender: TObject);
begin
 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('conf_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;

end;

procedure Tfrmcompra.RzDBNumericEdit9Exit(Sender: TObject);
begin
 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('conf_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('conf_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;


       IF frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat > 0 THEN
          frmcompra_menu.qrnota.fieldbyname('CONF_ICMSREDITO_PERC').asfloat  :=
            (frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat * 100) / frmcompra_menu.qrnota.fieldbyname('CONF_VALORICMS').asfloat;


 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('conf_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('conf_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;



end;

procedure Tfrmcompra.etotalnotaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin

    tab_principal.ActivePageIndex := 0;
    if combo_tipo.ItemIndex = 3 then
    begin
      tab_principal.ActivePageIndex := 5;
      enota_fiscal.setfocus;

    end
    else
    begin
      tab_principal.ActivePageIndex := 0;
      bincluir.setfocus;
    end;
  end;
end;

procedure Tfrmcompra.xdescontoClick(Sender: TObject);
begin
  if xdesconto.Checked then
  begin

 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_ITEM_ESPECIAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;

  end;
end;

procedure Tfrmcompra.ecfopKeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then
          begin
               if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;
                    if tedit(sender).Text <> '' then
                         begin
                              frmmodulo.qrcfop.close;
                              frmmodulo.qrcfop.sql.clear;
                              frmmodulo.qrcfop.sql.add('select * from c000030 where cfop = '''+ecfop.text+''' and tipo = 1');
                              frmmodulo.qrcfop.open;
                              if frmmodulo.qrcfop.recordcount = 0 then
                                   begin
                                        application.messagebox('CFOP não cadastrado ou não é de entrada!','Aviso',mb_ok+mb_iconwarning);
                                        ecfop.setfocus;
                                   end
                              else
                                   Perform(wm_nextdlgctl,0,0);
                              end
                    else
                         begin
                              ecfopButtonClick(frmcompra);
                         end;
          end;
end;

procedure Tfrmcompra.ecfopButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  parametro_pesquisa := ' = 1 '; 
  frmxloc_cfOP := tfrmxloc_cfOP.create(self);
  frmxloc_cfOP.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmmodulo.qrcfOP.close;
     frmmodulo.qrcfOP.sql.clear;
     frmmodulo.qrcfOP.sql.add('select * from c000030 where cfop = '''+resultado_pesquisa1+'''');
     frmmodulo.qrcfOP.open;
     frmcompra_menu.qrnota.fieldbyname('cfOP').asstring := resultado_pesquisa1;
     ebase_icms.setfocus;
  end;
end;

procedure Tfrmcompra.bincluirClick(Sender: TObject);
var codg : string;
begin


  if etotalnota.Value = 0 then
    begin
      application.messagebox('Favor informar o Valor da Nota Fiscal!','Atenção',mb_ok+MB_ICONERROR);
      evalor_produtos.setfocus;
      exit;
    end;

  frmcompra_menu.vopcao_item := 1;

  if (frmcompra_menu.qrnota.FieldByName('numero').asstring = '000000') and (frmcompra_menu.qrnota.FieldByName('numero').asstring = '') then
    begin
      application.messagebox('Favor informar um número válido para Nota Fiscal!','Atenção',mb_ok+MB_ICONERROR);
      enumero.setfocus;
      exit;
    end;

//  balterar.Enabled := False;

  //frmcompra_menu.vopcao_nfe := 1;

          vbicms    := 0;
          vvicms    := 0;
          vipi      := 0;
          vbst      := 0;
          vvst      := 0;
          vfrete    := 0;
          //vespecial := 0;
          vseguro   := 0;
          voutras   := 0;
          vprodutos := 0;
          vtotal    := 0;
          codg := frmprincipal.codifica('000032');
          qrnota_item.close;
          qrnota_item.sql.clear;
          qrnota_item.sql.add('select * from c000088 where codigo = '''+codg+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
          qrnota_item.open;

          qrnota_item.Insert;
          qrnota_item.fieldbyname('codigo').asstring := codg;
          qrnota_item.fieldbyname('codlancamento').asstring := qrnota_item.fieldbyname('codigo').asstring;
          qrnota_item.fieldbyname('data').asdatetime := frmcompra_menu.qrnota.fieldbyname('DATA_LANCAMENTO').asfloat;
          codigo_it := qrnota_item.fieldbyname('codigo').asstring;
          qrnota_item.fieldbyname('codnota').asstring := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
          qrnota_item.fieldbyname('codfornecedor').asstring := ECODFORNECEDOR.Text;
          qrnota_item.fieldbyname('notafiscal').asstring := frmcompra_menu.qrnota.fieldbyname('numero').asstring;
          qrnota_item.fieldbyname('CFOP').asstring := frmcompra_menu.qrnota.fieldbyname('CFOP').asstring;

          if frmcompra_menu.qrnota.FieldByName('CONF_ICMSRETIDO').asfloat > 0 then
               qrnota_item.fieldbyname('icms_retido').asstring := 'S' else qrnota_item.fieldbyname('icms_retido').asstring := 'N';

          qrnota_item.FieldByName('item').AsString := frmprincipal.zerarcodigo(inttostr(itens),3);
          qrnota_item.fieldbyname('IPI_TIPO').AsString := '0.Não Tem IPI';

          if rdesconto.Value = 0 then
            begin
              qrnota_item.FieldByName('DESCONTO').AsFloat := 0;
              qrnota_item.FieldByName('DESCONTO_P').AsFloat := 0;
            end;

          qrnota_item.FieldByName('ICMS_ALIQUOTA').AsFloat := 0;
          qrnota_item.FieldByName('ICMS_REDUCAO').AsFloat := 0;
          qrnota_item.FieldByName('ICMS_BASE').AsFloat := 0;
          qrnota_item.FieldByName('ICMS_VALOR').AsFloat := 0;
          qrnota_item.FieldByName('ICMS_ISENTO').AsFloat := 0;
          qrnota_item.FieldByName('ICMS_NAOTRIBUTADO').AsFloat := 0;
          qrnota_item.FieldByName('ICMS_VALORRETIDO').AsFloat := 0;
          qrnota_item.FieldByName('SUB_BASE').AsFloat := 0;
          qrnota_item.FieldByName('SUB_VALOR').AsFloat := 0;
          qrnota_item.FieldByName('IPI_ALIQUOTA').AsFloat := 0;
          qrnota_item.FieldByName('IPI_BASE').AsFloat := 0;
          qrnota_item.FieldByName('IPI_VALOR').AsFloat := 0;
          qrnota_item.FieldByName('CLASSIFICACAO_FISCAL').AsString := '';
          qrnota_item.FieldByName('SUB_MARGEM').AsFloat := 0;
          qrnota_item.FieldByName('SUB_BASE').AsFloat := 0; //frmcompra_menu.qrnotaCONF_BASESUB.AsFloat;
          qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat := 0;

          qrnota_item.FieldByName('frete').asfloat := 0;
          qrnota_item.fieldbyname('seguro').asfloat := 0;
          qrnota_item.fieldbyname('outras').asfloat := 0;
          qrnota_item.fieldbyname('ITEM_ESPECIAL_VALOR').asfloat := 0;

          if frmcompra_menu.qrnota.FieldByName('CONF_BASESUB').asfloat > 0 then
            qrnota_item.FieldByName('SUB_PRODUTOS').AsFloat := frmcompra_menu.qrnotaCONF_TOTALPRODUTOS.AsFloat;

          frmcompra_item := tfrmcompra_item.create(self);
          frmcompra_item.showmodal;

          qrnota_item_lista.Refresh;

          batualiza_itensClick(frmcompra);

          bgravar.setfocus;

end;

procedure Tfrmcompra.batualiza_itensClick(Sender: TObject);
begin
  frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('BASE_sub').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('frete').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('seguro').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('outras').asfloat := 0;
  //frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('credito_icms').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('pis').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('cofins').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat := 0;
  frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := 0;


  ITENS := 1;

  frmcompra.qrnota_item_lista.First;
  rtproduto.Value := 0;


  while not frmcompra.qrnota_item_lista.Eof do
    begin

    frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat := frmcompra_menu.qrnota.fieldbyname('ICMS_ISENTO').asfloat +
                                                            frmcompra.qrnota_item_lista.fieldbyname('ICMS_ISENTO').asfloat+
                                                            frmcompra.qrnota_item_lista.fieldbyname('ICMS_NAOTRIBUTADO').asfloat;

    frmcompra_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat := frmcompra_menu.qrnota.fieldbyname('ICMS_OUTRAS').asfloat +
                                                            frmcompra.qrnota_item_lista.fieldbyname('ICMS_OUTRAS').asfloat;

    frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('BASE_ICMS').asfloat +
                                                            frmcompra.qrnota_item_lista.fieldbyname('icms_base').asfloat;

    frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat := frmcompra_menu.qrnota.fieldbyname('valor_ICMS').asfloat +
                                                            frmcompra.qrnota_item_lista.fieldbyname('icms_valor').asfloat;

    frmcompra_menu.qrnota.fieldbyname('BASE_sub').asfloat := frmcompra_menu.qrnota.fieldbyname('Base_sub').asfloat +
                                                            frmcompra.qrnota_item_lista.fieldbyname('sub_base').asfloat;

    frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat := frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                            frmcompra.qrnota_item_lista.fieldbyname('sub_valor').asfloat;

    frmcompra_menu.qrnota.fieldbyname('frete').asfloat := frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('frete').asfloat;

    frmcompra_menu.qrnota.fieldbyname('seguro').asfloat := frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('seguro').asfloat;

    frmcompra_menu.qrnota.fieldbyname('outras').asfloat := frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('outras').asfloat;

    frmcompra_menu.qrnota.fieldbyname('ipi').asfloat := frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('ipi_valor').asfloat;

    frmcompra_menu.qrnota.fieldbyname('credito_icms').asfloat := frmcompra_menu.qrnota.fieldbyname('credito_icms').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('credito_icms').asfloat;

    frmcompra_menu.qrnota.fieldbyname('pis').asfloat := frmcompra_menu.qrnota.fieldbyname('pis').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('pis').asfloat;

    frmcompra_menu.qrnota.fieldbyname('cofins').asfloat := frmcompra_menu.qrnota.fieldbyname('cofins').asfloat +
                                                        frmcompra.qrnota_item_lista.fieldbyname('cofins').asfloat;

    frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat := frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                 frmcompra.qrnota_item_lista.fieldbyname('subtotal').asfloat;

    rtproduto.value := rtproduto.value + frmcompra.qrnota_item_lista.fieldbyname('total').asfloat;

  if rdesconto.Value > 0 then
  begin
    if ( xdesconto.Checked = false ) and ( frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0) then
    begin
  //    frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;

      frmcompra_menu.qrnota.fieldbyname('desconto').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('desconto').asfloat + frmcompra.qrnota_item_lista.fieldbyname('desconto').asfloat;


      frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=    (frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                     frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                     frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                     frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                     frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                     frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat +
                                                                     frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat) -
                                                                     frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;


    end
    else
    begin
      if ( frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat > 0) then
      begin

    //     frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat;

      frmcompra_menu.qrnota.fieldbyname('desconto').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('desconto').asfloat + frmcompra.qrnota_item_lista.fieldbyname('desconto').asfloat;



         frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     (frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat)-
                                                                        frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;



      end
      else
      begin
         frmcompra_menu.qrnota.fieldbyname('desconto').asfloat := 0;
         frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat ;



      end;
    end;
  end
  else
  begin

      frmcompra_menu.qrnota.fieldbyname('desconto').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('desconto').asfloat + frmcompra.qrnota_item_lista.fieldbyname('desconto').asfloat;


         frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     (frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                        frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat)-
                                                                        frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;



  end;


  edtotal.Value := frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat;



    ITENS := ITENS + 1;

    frmcompra.qrnota_item_lista.next;
  end;


  frmcompra_menu.qrnota.fieldbyname('itens').asinteger := itens - 1;


  eddesconto.value := frmcompra_menu.qrnota.fieldbyname('desconto').asfloat;



     frmcompra.edbicms.Value       := frmcompra_menu.qrnota.fieldbyname('base_icms').asfloat;
     frmcompra.edvicms.Value       := frmcompra_menu.qrnota.fieldbyname('valor_icms').asfloat;
     frmcompra.edipi.Value         := frmcompra_menu.qrnota.fieldbyname('ipi').asfloat;
     frmcompra.edbst.Value         := frmcompra_menu.qrnota.fieldbyname('base_sub').asfloat;
     frmcompra.edvst.Value         := frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat;
     frmcompra.edfrete.Value       := frmcompra_menu.qrnota.fieldbyname('frete').asfloat;
     frmcompra.edespecial.Value    := frmcompra_menu.qrnota.fieldbyname('item_especial_total').asfloat;
     frmcompra.edseguro.Value      := frmcompra_menu.qrnota.fieldbyname('seguro').asfloat;
     frmcompra.edoutras.Value      := frmcompra_menu.qrnota.fieldbyname('outras').asfloat;
     frmcompra.edprodutos.Value    := frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat;
     frmcompra.edtotal.Value       := frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat;


      //action := cafree;

end;

procedure Tfrmcompra.bexcluirClick(Sender: TObject);
var  vrecno: integer;
vqde_item : integer;
begin
  vrecno := qrnota_item.RecNo;
  vbicms    := 0;
  vvicms    := 0;
  vipi      := 0;
  vbst      := 0;
  vvst      := 0;
  vfrete    := 0;
  //vespecial := 0;
  vseguro   := 0;
  voutras   := 0;
  vprodutos := 0;
  vtotal    := 0;
  if application.messagebox('Confirma a exclusão do item?','Atenção',mb_yesno+mb_iconwarning) = idyes then
  begin
    IF qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' THEN
    BEGIN
      FRMMODULO.QRPRODUTO_MOV.CLOSE;
      FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
      FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
      FRMMODULO.QRPRODUTO_MOV.ExecSQL;
      qrgrade_entrada.Close;
      qrgrade_entrada.SQL.clear;
      qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+qrnota_item_lista.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
      qrgrade_entrada.Open;
      frmmodulo.qrgrade_produto.close;
      frmmodulo.qrgrade_produto.sql.clear;
      frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrnota_item_lista.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
      frmmodulo.qrgrade_produto.open;
      while qrgrade_entrada.RecordCount <> 0 do
      BEGIN
        if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
        begin
          frmmodulo.qrgrade_produto.edit;
          frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat - qrgrade_entrada.FieldByName('qtde').asfloat;
          frmmodulo.qrgrade_produto.post;
        end;
        qrgrade_entrada.delete;
      END;
    END;

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('delete from c000088 where codigo = '''+qrnota_item_lista.fieldbyname('codigo').asstring+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
    qrnota_item.execsql;
    frmmodulo.conexao.commit;
    Application.ProcessMessages;


    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from c000088 where codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
    qrnota_item.open;


  vqde_item := 0;
  qrnota_item.first;
  while not qrnota_item.Eof do
  begin
    vqde_item := vqde_item + 1;
    qrnota_item.Edit;
    qrnota_item.FieldByName('ITEM').AsString := frmPrincipal.zerarcodigo(INTTOSTR(vqde_item),3);
    qrnota_item.Post;
    qrnota_item.Next;
  end;

      frmmodulo.conexao.commit;
      Application.ProcessMessages;

    qrnota_item_lista.Refresh;




    batualiza_itensClick(frmcompra);
  end;
end;

procedure Tfrmcompra.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.RzDBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbedit5.setfocus;
end;

procedure Tfrmcompra.DBEdit4Enter(Sender: TObject);
begin
   tedit(sender).color :=  $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit4Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmmodulo.qrtransportador.locate('nome',dbedit4.text,[loCaseInsensitive]) then
  begin
    frmcompra_menu.qrnota.fieldbyname('TRANSP_PLACA').asstring := frmmodulo.qrtransportador.fieldbyname('placa').asstring;
    frmcompra_menu.qrnota.fieldbyname('TRANSP_UF').asstring := frmmodulo.qrtransportador.fieldbyname('ufplaca').asstring;
    frmcompra_menu.qrnota.fieldbyname('TRANSP_CNPJ').asstring := frmmodulo.qrtransportador.fieldbyname('cpf').asstring;
    frmcompra_menu.qrnota.fieldbyname('TRANSP_IE').asstring := frmmodulo.qrtransportador.fieldbyname('rg').asstring;
    frmcompra_menu.qrnota.fieldbyname('TRANSP_ENDERECO').asstring := frmmodulo.qrtransportador.fieldbyname('endereco').asstring;
    frmcompra_menu.qrnota.fieldbyname('TRANSP_CIDADE').asstring := frmmodulo.qrtransportador.fieldbyname('cidade').asstring;
    frmcompra_menu.qrnota.fieldbyname('TRANSP_UF').asstring := frmmodulo.qrtransportador.fieldbyname('uf').asstring;
  end;
end;

procedure Tfrmcompra.RzDBNumericEdit16KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 then ecodfornecedor.setfocus;
end;

procedure Tfrmcompra.ecodremetenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('codremetente').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,6);
    if tedit(sender).Text <> '000000' then
    begin
      frmcompra_menu.qrfornecedor.close;
      frmcompra_menu.qrfornecedor.sql.clear;
      frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+ecodremetente.text+'''');
      frmcompra_menu.qrfornecedor.open;
      if frmcompra_menu.qrfornecedor.recordcount = 0 then
      begin
        application.messagebox('Fornecedor/Remetente não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodremetente.setfocus;
      end
      else
        Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      ecodremetenteButtonClick(frmcompra);
    end;
  end;
end;

procedure Tfrmcompra.ecodremetenteButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_fornecedor := tfrmxloc_fornecedor.create(self);
  frmxloc_fornecedor.showmodal;
  if resultado_pesquisa1 <>'' then
  begin
     frmcompra_menu.qrfornecedor.close;
     frmcompra_menu.qrfornecedor.sql.clear;
     frmcompra_menu.qrfornecedor.sql.add('select * from c000009 where codigo = '''+resultado_pesquisa1+'''');
     frmcompra_menu.qrfornecedor.open;
     frmcompra_menu.qrnota.fieldbyname('codremetente').asstring := resultado_pesquisa1;
     emercadoria.setfocus;
  end;
end;

procedure Tfrmcompra.combo_tipoChange(Sender: TObject);
begin
 if combo_tipo.ItemIndex = 3 then
    tab_principal.ActivePageIndex := 5 else
   tab_principal.ActivePageIndex := 0;
end;

procedure Tfrmcompra.enota_fiscalExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

  frmcompra_menu.qrnota.fieldbyname('nota_fiscal').asstring :=
  frmprincipal.zerarcodigo(frmcompra_menu.qrnota.fieldbyname('nota_fiscal').asstring,6);

  qrnf.close;
  qrnf.sql.clear;
  qrnf.sql.add('select * from c000087 where numero = '''+frmcompra_menu.qrnota.fieldbyname('nota_fiscal').asstring+'''');
  qrnf.open;
  if qrnf.recordcount = 1 then
  begin
    frmcompra_menu.QRNOTA.fieldbyname('codremetente').asstring :=    QRNF.fieldbyname('codfornecedor').asstring;
    frmcompra_menu.QRNOTA.fieldbyname('VALOR_MERCADORIAS').asstring :=    QRNF.fieldbyname('total_produtos').asstring;

  end;

end;

procedure Tfrmcompra.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra.RzDBNumericEdit1Exit(Sender: TObject);
begin
 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 WITH FRMCOMPRA_MENU.qrnota DO
 BEGIN
   IF FieldByName('ITEM_FRETE_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_FRETE_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_FRETE_BASE').ASFLOAT := FieldByName('ITEM_FRETE_VALOR').ASFLOAT;
     IF FieldByName('ITEM_FRETE_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_FRETE_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_FRETE_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_FRETE_ICMS').ASFLOAT := FieldByName('ITEM_FRETE_BASE').ASFLOAT * (FieldByName('ITEM_FRETE_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_SEGURO_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_SEGURO_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_SEGURO_BASE').ASFLOAT := FieldByName('ITEM_SEGURO_VALOR').ASFLOAT;
     IF FieldByName('ITEM_SEGURO_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_SEGURO_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_SEGURO_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_SEGURO_ICMS').ASFLOAT := FieldByName('ITEM_SEGURO_BASE').ASFLOAT * (FieldByName('ITEM_SEGURO_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_PIS_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_PIS_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_PIS_BASE').ASFLOAT := FieldByName('ITEM_PIS_VALOR').ASFLOAT;
     IF FieldByName('ITEM_PIS_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_PIS_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_PIS_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_PIS_ICMS').ASFLOAT := FieldByName('ITEM_PIS_BASE').ASFLOAT * (FieldByName('ITEM_PIS_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_COMPLEMENTO_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT := FieldByName('ITEM_COMPLEMENTO_VALOR').ASFLOAT;
     IF FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_COMPLEMENTO_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_COMPLEMENTO_ICMS').ASFLOAT := FieldByName('ITEM_COMPLEMENTO_BASE').ASFLOAT * (FieldByName('ITEM_COMPLEMENTO_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_SERVICO_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_SERVICO_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_SERVICO_BASE').ASFLOAT := FieldByName('ITEM_SERVICO_VALOR').ASFLOAT;
     IF FieldByName('ITEM_SERVICO_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_SERVICO_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_SERVICO_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_SERVICO_ICMS').ASFLOAT := FieldByName('ITEM_SERVICO_BASE').ASFLOAT * (FieldByName('ITEM_SERVICO_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;

   IF FieldByName('ITEM_OUTRAS_VALOR').ASFLOAT > 0 THEN
   BEGIN
     IF FieldByName('ITEM_OUTRAS_BASE').ASFLOAT = 0 THEN FieldByName('ITEM_OUTRAS_BASE').ASFLOAT := FieldByName('ITEM_OUTRAS_VALOR').ASFLOAT;
     IF FieldByName('ITEM_OUTRAS_BASE').ASFLOAT > 0 THEN
     BEGIN
       IF (FieldByName('ITEM_OUTRAS_BASE').ASFLOAT > 0) AND (FieldByName('ITEM_OUTRAS_ALIQUOTA').ASFLOAT > 0) THEN
       BEGIN
         FieldByName('ITEM_OUTRAS_ICMS').ASFLOAT := FieldByName('ITEM_OUTRAS_BASE').ASFLOAT * (FieldByName('ITEM_OUTRAS_ALIQUOTA').ASFLOAT/100);
       END;
     END;
   END;


   FieldByName('ITEM_ESPECIAL_VALOR').ASFLOAT :=
   FieldByName('ITEM_FRETE_VALOR').ASFLOAT +
   FieldByName('ITEM_SEGURO_VALOR').ASFLOAT +
   FieldByName('ITEM_PIS_VALOR').ASFLOAT +
   FieldByName('ITEM_COMPLEMENTO_VALOR').ASFLOAT +
   FieldByName('ITEM_SERVICO_VALOR').ASFLOAT +
   FieldByName('ITEM_OUTRAS_VALOR').ASFLOAT;

   FieldByName('ITEM_ESPECIAL_TOTAL').ASFLOAT :=
   FieldByName('ITEM_FRETE_ICMS').ASFLOAT +
   FieldByName('ITEM_SEGURO_ICMS').ASFLOAT +
   FieldByName('ITEM_PIS_ICMS').ASFLOAT +
   FieldByName('ITEM_COMPLEMENTO_ICMS').ASFLOAT +
   FieldByName('ITEM_SERVICO_ICMS').ASFLOAT +
   FieldByName('ITEM_OUTRAS_ICMS').ASFLOAT;

    frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_VALOR').asfloat := FieldByName('ITEM_ESPECIAL_VALOR').ASFLOAT;
    frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat := FieldByName('ITEM_ESPECIAL_TOTAL').ASFLOAT;

    frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat :=     frmcompra_menu.qrnota.fieldbyname('total_produtos').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('frete').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('seguro').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('outras').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ipi').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('valor_sub').asfloat +
                                                                      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat ;



    edtotal.Value := frmcompra_menu.qrnota.fieldbyname('total_nota').asfloat;
    edespecial.Value := frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat;


     vespecial := frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat;


 END;


end;

procedure Tfrmcompra.RzDBNumericEdit37KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SetFocus;
end;

procedure Tfrmcompra.edvicmsExit(Sender: TObject);
begin
  edtotal.Value := (edprodutos.Value+edvst.Value+edfrete.Value+
  edseguro.Value+edoutras.Value+edipi.Value+edespecial.Value)-rdesconto.Value;
end;

procedure Tfrmcompra.balterarClick(Sender: TObject);
var
  vrecno: integer;
begin
   if edit1.Text = '' then
   begin
     showmessage('Informação do Estado do Fornecedor Inválido...');
     ecodfornecedor.SetFocus;
     exit;
   end;
   frmcompra_menu.vopcao_item := 2;
   vrecno := qrnota_item_lista.RecNo;
   vbicms    := 0;
   vvicms    := 0;
   vipi      := 0;
   vbst      := 0;
   vvst      := 0;
   vfrete    := 0;
   //vespecial := 0;
   vseguro   := 0;
   voutras   := 0;
   vprodutos := 0;
   vtotal    := 0;

   qrnota_item.close;
   qrnota_item.sql.clear;
   qrnota_item.sql.add('select * from c000088 where codigo = '''+qrnota_item_lista.fieldbyname('codigo').asstring+''' and codnota = '''+qrnota_item_lista.fieldbyname('codnota').asstring+'''');
   qrnota_item.open;

   qrnota_item.Edit;

   frmcompra_item := tfrmcompra_item.create(self);
   frmcompra_item.eproduto.text := qrnota_item_lista.fieldbyname('produto').asstring;
   frmcompra_item.showmodal;

   qrnota_item.Refresh;
   batualiza_itensClick(frmcompra);
   qrnota_item_lista.RecNo := vrecno;

   bgravar.setfocus;

end;

procedure Tfrmcompra.ecfopExit(Sender: TObject);
begin
     if (frmcompra.Edit1.Text = frmcompra.Edit2.Text) and (copy(ecfop.Text,1,1) = '2') then
          begin
               showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
               ecfop.SetFocus;
               exit;
          end
     else if (frmcompra.Edit1.Text <> frmcompra.Edit2.Text) and (copy(ecfop.Text,1,1) = '1') then
          begin
               showmessage('CFOP Invalido para essa Operação com Empresa de Dentro do Estado!');
               ecfop.SetFocus;
               exit;
          end;

end;

procedure Tfrmcompra.ecodmodeloKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

    frmcompra_menu.qrnota.fieldbyname('modelo').asstring := frmprincipal.zerarcodigo(tedit(sender).Text,2);
    if tedit(sender).Text <> '00' then
    begin
      frmcompra_menu.qrmodelo.close;
      frmcompra_menu.qrmodelo.sql.clear;
      frmcompra_menu.qrmodelo.sql.add('select * from c000082 where sintegra = '''+ecodmodelo.text+'''');
      frmcompra_menu.qrmodelo.open;

      if frmcompra_menu.qrmodelo.recordcount > 0 then
      begin
        application.messagebox('Modelo não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        ecodmodelo.SelectAll;
        ecodmodelo.setfocus;
        ecodmodeloButtonClick (Frmcompra);
      end
      else
      begin
         tab_principal.ActivePageIndex := 0;
        frmcompra_menu.qrnota.fieldbyname('especie').asstring := frmcompra_menu.qrmodelo.fieldbyname('sigla').asstring;
        if (ecodmodelo.text = '07') or
           (ecodmodelo.text = '08') or
           (ecodmodelo.text = '09') or
           (ecodmodelo.text = '10') or
           (ecodmodelo.text = '11') then
        begin
          combo_tipo.ItemIndex := 3;
          tab_principal.ActivePageIndex := 5
        end;


        Perform(wm_nextdlgctl,0,0);
      end;
    end
    else
    begin
      ecodmodeloButtonClick(frmcompra);
      frmcompra_menu.qrnota.fieldbyname('especie').asstring := frmcompra_menu.qrmodelo.fieldbyname('sigla').asstring;

    end;
  end;
end;

procedure Tfrmcompra.ecodmodeloButtonClick(Sender: TObject);
begin
  resultado_pesquisa4 := '';
  parametro_pesquisa := '';
  frmxloc_modelo := tfrmxloc_modelo.create(self);
  frmxloc_modelo.showmodal;
  if resultado_pesquisa1 <>'' then
    begin
     frmcompra_menu.qrmodelo.close;
     frmcompra_menu.qrmodelo.sql.clear;
     frmcompra_menu.qrmodelo.sql.add('select * from c000082 where sintegra = '''+resultado_pesquisa4+'''');
     frmcompra_menu.qrmodelo.open;
     frmcompra_menu.qrnota.fieldbyname('modelo').asstring := resultado_pesquisa4;
     frmcompra_menu.qrnota.fieldbyname('especie').asstring := frmcompra_menu.qrmodelo.fieldbyname('sigla').asstring;
        tab_principal.ActivePageIndex := 0;
        if (ecodmodelo.text = '07') or
           (ecodmodelo.text = '08') or
           (ecodmodelo.text = '09') or
           (ecodmodelo.text = '10') or
           (ecodmodelo.text = '11') then
        begin
          combo_tipo.ItemIndex := 3;
          tab_principal.ActivePageIndex := 5
        end;

//      frmcompra_menu.qrnota.fieldbyname('especie').asstring := frmcompra_menu.qrmodelo.fieldbyname('sigla').asstring;
     eSERIE.setfocus;
  end;
end;

procedure Tfrmcompra.evalor_produtosExit(Sender: TObject);
begin

  if frmcompra_menu.qrnota.FieldByName('CONF_TOTALPRODUTOS').AsFloat = 0 then
    begin
      if application.messagebox('Valor dos produtos não Informado! Continua?','Aviso',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          evalor_produtos.SetFocus;
          exit;
        end;
    end;

 if frmcompra_menu.qrnota.State <> dsedit then if frmcompra_menu.qrnota.State <> dsinsert then exit;

 if frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat > 0 then
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_ICMSRETIDO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end
 else
 begin
   if xdesconto.checked then
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat -
      frmcompra_menu.qrnota.fieldbyname('CONF_DESCONTO').asfloat
   else
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALNOTA').asfloat :=
      frmcompra_menu.qrnota.fieldbyname('CONF_VALORSUB').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_TOTALPRODUTOS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_FRETE').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_SEGURO').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_OUTRAS').asfloat +
      frmcompra_menu.qrnota.fieldbyname('ITEM_ESPECIAL_TOTAL').asfloat +
      frmcompra_menu.qrnota.fieldbyname('CONF_IPI').asfloat;
 end;

end;

procedure Tfrmcompra.ECODFORNECEDORExit(Sender: TObject);
begin
   (********************** verificar se existe a mesma nota para o mesmo forncedor ***********************)
    if frmcompra_menu.qrnota.State = dsinsert then
    begin
      qrnf.close;
      qrnf.SQL.clear;
      qrnf.SQL.Add('select * from c000087 where numero = '''+enumero.Text+'''');
      qrnf.SQL.Add('and codfornecedor = '''+resultado_pesquisa1+'''');
      qrnf.SQL.Add('and modelo = '''+ecodmodelo.Text+'''');
      qrnf.open;
      if qrnf.recordcount > 0 then
      begin
        application.messagebox('Já existe uma nota fiscal cadastrada com este número para este fornecedor!','Atenção',mb_ok+mb_iconerror);
        enumero.SetFocus;
        exit;
      end;
    end;


end;

procedure Tfrmcompra.XDESCONTOKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    econta.text := frmprincipal.zerarcodigo(econta.text,6);
    if econta.text <> '000000' then
      if not frmprincipal.Locregistro(frmmodulo.qrplano,econta.text,'codigo') then
       econtaButtonClick(frmcompra) else edit5.setfocus
    else
      econta.SetFocus;

  end;
end;

procedure Tfrmcompra.econtaButtonClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.text := frmmodulo.qrplano.fieldbyname('codigo').asstring;
  edit5.setfocus;
end;

procedure Tfrmcompra.edit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.ecountKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgerar.setfocus;
end;

procedure Tfrmcompra.bgerarClick(Sender: TObject);
var i : integer;
valor_fat : real;
begin
   IF FRMCOMPRA_MENU.qrnota.State = DSINSERT THEN
   BEGIN
     QRPAGAR.CLOSE;
     QRPAGAR.SQL.CLEAR;
     QRPAGAR.SQL.ADD('DELETE FROM C000046 WHERE CODNOTA = '''+FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+'''');
     QRPAGAR.ExecSQL;

     QRPAGAR.SQL.CLEAR;
     QRPAGAR.SQL.ADD('SELECT * FROM C000046 WHERE CODNOTA = '''+FRMCOMPRA_MENU.QRNOTA.FIELDBYNAME('CODIGO').ASSTRING+''' ORDER BY DATA_VENCIMENTO');
     QRPAGAR.OPEN;
   END;
      aceita_inclusao := true;

      if edtotal.value > 0 then valor_fat := edtotal.value
      else
      if etotalnota.Value > 0 then valor_fat := etotalnota.value
      else
      begin
        application.messagebox('Esta nota fiscal não possue valor!','Erro',mb_ok+mb_iconerror);
        exit;
      end;

      for i := 1 to ecount.IntValue do
      begin
        qrpagar.insert;
        qrpagar.FieldByName('codigo').asstring            := frmprincipal.codifica('000046');
        qrpagar.fieldbyname('data_emissao').asdatetime    := eemissao.date;
        qrpagar.fieldbyname('codfornecedor').asstring     := ecodfornecedor.text;
        qrpagar.fieldbyname('codconta').asstring          := econta.text;
        qrpagar.fieldbyname('notafiscal').asstring        := enumero.text;
        qrpagar.fieldbyname('situacao').aSINTEGER         := 1;
        qrpagar.fieldbyname('filtro').aSINTEGER           := 0;
        qrpagar.fieldbyname('codnota').aSstring           := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
        qrpagar.Fieldbyname('valor').asfloat              := valor_fat / ecount.intvalue ;
        qrpagar.Fieldbyname('documento').asstring         := enumero.text+'/'+inttostr(i);
        qrpagar.Fieldbyname('historico').asstring         := edit5.text;
        qrpagar.Fieldbyname('especie').asstring           := 'DUPLICATA';
        qrpagar.Fieldbyname('C').asstring                 := '';
        qrpagar.Fieldbyname('E').asstring                 := '';
        qrpagar.Fieldbyname('data_vencimento').asdatetime := INCMONTH(eemissao.date,I);
        qrpagar.post;
      end;
      frmmodulo.Conexao.Commit;
      Application.ProcessMessages;
      
      QRPAGAR.refresh;

      aceita_inclusao := false;
end;

procedure Tfrmcompra.AdvGlowButton2Click(Sender: TObject);
begin
  IF QRPAGAR.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
  BEGIN
    Application.messagebox('Este documento já foi pago! Impossível prosseguir com a exclusao!','Atenção',mb_ok+mb_iconerror);
    exit;
  END;


  IF APPLICATION.MESSAGEBOX('Confirma e exclusão deste documento?','Atenção',mb_YESNO+MB_ICONWARNING) = IDYES THEN
  BEGIN
    QRPAGAR.DELETE;
    frmmodulo.conexao.commit;
    Application.ProcessMessages;
    if qrpagar.RecordCount = 0 then pfatura.Enabled := true;
  END;
end;

procedure Tfrmcompra.qrpagarBeforePost(DataSet: TDataSet);
begin


  IF QRPAGAR.FIELDBYNAME('SITUACAO').ASINTEGER = 2 THEN
  BEGIN
    Application.messagebox('Este documento já foi pago! Impossível prosseguir com a edição!','Atenção',mb_ok+mb_iconerror);
    abort;
  END
  else
  begin
    if aceita_inclusao then
      qrpagar.Fieldbyname('liquido').asfloat  :=  qrpagar.Fieldbyname('valor').asfloat
    else
    BEGIN
      IF QRPAGAR.STATE = DSINSERT THEN abort;
    END;
  end;
end;

procedure Tfrmcompra.DBEdit5Enter(Sender: TObject);
begin
   tedit(sender).color :=  $00A8FFFF;
end;

procedure Tfrmcompra.DBEdit5Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra.DBEdit5KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.ebase_icmsKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.RzDBNumericEdit41KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key <> #8 then
  if key = #13 then
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmcompra.DBEdit19Exit(Sender: TObject);
begin
  if dsnota.DataSet.State in [dsinsert, dsedit] then
    dsnota.dataset.fieldbyname('obs7').asstring :=
    frmPrincipal.zerarcodigo(dsnota.dataset.fieldbyname('obs7').asstring,6);
end;

procedure Tfrmcompra.ecountExit(Sender: TObject);
begin
  if dsnota.DataSet.State in [dsinsert, dsedit] then
    dsnota.dataset.fieldbyname('obs8').asstring := frmPrincipal.zerarcodigo(dsnota.dataset.fieldbyname('obs8').asstring,3);

end;

procedure Tfrmcompra.eemissaoExit(Sender: TObject);
begin
  if copy(datetostr(eemissao.date),7,4) <> copy(datetostr(date),7,4) then
    begin
      if application.messagebox('Data de Emissão fora do ano corrente, Continua?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          eemissao.SetFocus;
        end;
    end;
  tedit(sender).color := clwindow;
end;

procedure Tfrmcompra.eentradaExit(Sender: TObject);
begin
  if copy(datetostr(eentrada.date),7,4) <> copy(datetostr(date),7,4) then
    begin
      if application.messagebox('Data de Entrada fora do ano corrente, Continua?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        begin
          eentrada.SetFocus;
        end;
    end;
  tedit(sender).color := clwindow;

end;

procedure Tfrmcompra.eaproveita_creditoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcompra.RzDBComboBox3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcompra.ecodmodeloExit(Sender: TObject);
begin
  if tedit(sender).Text = '' then
  begin
     ecodmodeloButtonClick(frmcompra);
  end;
end;

End.
