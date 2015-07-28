unit cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, wwdbedit,
  Wwdotdot, Wwdbcomb, Wwdbigrd, Wwdbgrid, ImgList, SHELLAPI, ComCtrls,
  RzEdit, RzDBEdit, RzDBBnEd, AdvGlowButton, AdvToolBar, RzPanel, ExtDlgs;

type
  Tfrmcliente = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dscliente2: TDataSource;
    qrcliente: TZQuery;
    Relatrios1: TMenuItem;
    dscliente: TDataSource;
    query1: TZQuery;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    pficha: TFlatPanel;
    Label5: TLabel;
    LAPELIDO: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    edata_cadastro: TDBDateEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Edit1: TEdit;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Movimento1: TMenuItem;
    FlipView1: TFlipView;
    ViewSplit1: TViewSplit;
    wwDBGrid1: TwwDBGrid;
    qrvenda: TZQuery;
    dsvenda: TDataSource;
    qrvendaCODIGO: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaDATA: TDateTimeField;
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
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    qrvenda_mes: TZQuery;
    dsvenda_mes: TDataSource;
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
    HeaderView2: THeaderView;
    wwDBGrid3: TwwDBGrid;
    qrproduto: TZQuery;
    dsproduto: TDataSource;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODNOTA: TStringField;
    qrprodutoCODPRODUTO: TStringField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoICMS: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoCFOP: TStringField;
    qrprodutoDATA: TDateTimeField;
    qrprodutoNUMERONOTA: TStringField;
    qrprodutoCODCLIENTE: TStringField;
    qrprodutoDESCONTO: TFloatField;
    qrprodutoACRESCIMO: TFloatField;
    qrprodutoMOVIMENTO: TIntegerField;
    qrprodutoCODVENDEDOR: TStringField;
    qrprodutoCODGRADE: TStringField;
    qrprodutoSERIAL: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoQTDE: TFloatField;
    qrprodutoVALOR_ICMS: TFloatField;
    qrprodutoICMS_REDUZIDO: TFloatField;
    qrprodutoBASE_CALCULO: TFloatField;
    qrprodutoVALOR_IPI: TFloatField;
    qrprodutoPRODUTO: TStringField;
    ViewSplit2: TViewSplit;
    Label4: TLabel;
    LTOTAL: TLabel;
    QUERY: TZQuery;
    PageView2: TPageView;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    dsreceber: TDataSource;
    qrcontasreceber: TZQuery;
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
    wwDBGrid4: TwwDBGrid;
    ImageList1: TImageList;
    qrcontasreceberpg: TZQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    DateTimeField2: TDateTimeField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField6: TFloatField;
    DateTimeField3: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField7: TFloatField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    dsreceberpg: TDataSource;
    wwDBGrid5: TwwDBGrid;
    Label6: TLabel;
    rvalor: TRxCalcEdit;
    Label13: TLabel;
    rjuro: TRxCalcEdit;
    Label15: TLabel;
    rtotal: TRxCalcEdit;
    PPGTO: TFlatPanel;
    HeaderView4: THeaderView;
    SpeedButton1: TSpeedButton;
    qrpgto: TZQuery;
    FlatPanel1: TFlatPanel;
    Memo1: TMemo;
    Label18: TLabel;
    rtotal_pago: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    PageSheet5: TPageSheet;
    InformaesAdicionais1: TMenuItem;
    qrpessoas: TZQuery;
    dspessoas: TDataSource;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    PageSheet6: TPageSheet;
    dsservicos_periodicos: TDataSource;
    ServicosPeriodicos1: TMenuItem;
    GroupBox6: TGroupBox;
    wwDBComboBox3: TwwDBComboBox;
    wwDBGrid7: TwwDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label20: TLabel;
    DBEdit1: TDBEdit;
    Label21: TLabel;
    combo_pessoa: TComboBox;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    euf: TwwDBComboBox;
    Label10: TLabel;
    dbedit28: TRzDBButtonEdit;
    dbedit29: TRzDBButtonEdit;
    Label22: TLabel;
    pcad: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    RLIMITE: TRxDBCalcEdit;
    DBDateEdit3: TDBDateEdit;
    wwDBComboBox1: TwwDBComboBox;
    GroupBox7: TGroupBox;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    ltelefone1: TLabel;
    ltelefone2: TLabel;
    Label24: TLabel;
    GroupBox8: TGroupBox;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    LRG: TLabel;
    LCPF: TLabel;
    GroupBox9: TGroupBox;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ERENDA: TRxDBCalcEdit;
    lprofissao: TLabel;
    lempresa: TLabel;
    lrenda: TLabel;
    lnascimento: TLabel;
    DateEdit1: TDateEdit;
    Panel2: TPanel;
    Bevel2: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Regies2: TMenuItem;
    Vendedor1: TMenuItem;
    Convnio1: TMenuItem;
    bitbtn9: TAdvGlowButton;
    bitbtn8: TAdvGlowButton;
    qrduplo: TZQuery;
    bcad: TAdvGlowButton;
    Label9: TLabel;
    PageSheet9: TPageSheet;
    DBMemo1: TDBMemo;
    Label23: TLabel;
    DBDateEdit1: TDBDateEdit;
    Histrico1: TMenuItem;
    pg_rodape: TPageView;
    PageSheet7: TPageSheet;
    PageSheet8: TPageSheet;
    pficha2: TPanel;
    LFILIACAO: TLabel;
    lestadocivil: TLabel;
    lconjuge: TLabel;
    Label16: TLabel;
    lsexo: TLabel;
    EFILIACAO: TDBEdit;
    ECIVIL: TDBComboBox;
    ECONJUGE: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    lconvenio: TGroupBox;
    ecodconvenio: TRzDBButtonEdit;
    ECONVENIO: TDBEdit;
    combo_sexo: TDBComboBox;
    DBCheckBox1: TDBCheckBox;
    pficha3: TPanel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit7: TDBEdit;
    PageSheet10: TPageSheet;
    pficha4: TPanel;
    Label31: TLabel;
    Label32: TLabel;
    eibge: TDBEdit;
    ecodmunicipio: TDBEdit;
    bibge: TAdvGlowButton;
    Label25: TLabel;
    ecnae: TDBEdit;
    bcnae: TAdvGlowButton;
    rrg: TRzPanel;
    Label27: TLabel;
    wwDBComboBox5: TwwDBComboBox;
    Label26: TLabel;
    wwDBComboBox4: TwwDBComboBox;
    Label30: TLabel;
    DBDateEdit2: TDBDateEdit;
    tab_responsavel: TPageSheet;
    PG_RESP: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    wwDBComboBox6: TwwDBComboBox;
    DBEdit34: TDBEdit;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    DBComboBox1: TDBComboBox;
    Label40: TLabel;
    DBEdit35: TDBEdit;
    Label41: TLabel;
    DBEdit36: TDBEdit;
    Label42: TLabel;
    DBEdit37: TDBEdit;
    ED_RESP2_NOME: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    wwDBComboBox7: TwwDBComboBox;
    DBEdit42: TDBEdit;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    DBComboBox2: TDBComboBox;
    Label50: TLabel;
    DBEdit43: TDBEdit;
    Label51: TLabel;
    DBEdit44: TDBEdit;
    Label52: TLabel;
    DBEdit45: TDBEdit;
    PageSheet11: TPageSheet;
    OpenPictureDialog1: TOpenPictureDialog;
    AdvGlowButton1: TAdvGlowButton;
    pficha1: TPanel;
    Image2: TImage;
    SpeedButton2: TSpeedButton;
    Label53: TLabel;
    Label54: TLabel;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    DBEdit38: TDBEdit;
    pInfAdic: TPanel;
    GroupBox5: TGroupBox;
    wwDBGrid6: TwwDBGrid;
    wwDBComboBox2: TwwDBComboBox;
    bitbtn7: TAdvGlowButton;
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
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RLIMITEKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure Movimento1Click(Sender: TObject);
    procedure wwDBComboBox1Change(Sender: TObject);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure InformaesAdicionais1Click(Sender: TObject);
    procedure qrpessoasBeforePost(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure qrpessoasAfterPost(DataSet: TDataSet);
    procedure ECODCONVENIOExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure eufEnter(Sender: TObject);
    procedure wwDBComboBox1Exit(Sender: TObject);
    procedure ServicosPeriodicos1Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure dbedit28ButtonClick(Sender: TObject);
    procedure dbedit29ButtonClick(Sender: TObject);
    procedure ecodconvenioButtonClick(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_pessoaChange(Sender: TObject);
    procedure dbedit29KeyPress(Sender: TObject; var Key: Char);
    procedure dbedit28KeyPress(Sender: TObject; var Key: Char);
    procedure combo_pessoaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure ecodconvenioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit21KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit25KeyPress(Sender: TObject; var Key: Char);
    procedure Regies2Click(Sender: TObject);
    procedure Vendedor1Click(Sender: TObject);
    procedure Convnio1Click(Sender: TObject);
    procedure ECIVILKeyPress(Sender: TObject; var Key: Char);
    procedure ECONJUGEKeyPress(Sender: TObject; var Key: Char);
    procedure bcadClick(Sender: TObject);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure combo_sexoKeyPress(Sender: TObject; var Key: Char);
    procedure Histrico1Click(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure bibgeClick(Sender: TObject);
    procedure bcnaeClick(Sender: TObject);
    procedure dscliente2DataChange(Sender: TObject; Field: TField);
    procedure ecnaeExit(Sender: TObject);
    procedure ecnaeKeyPress(Sender: TObject; var Key: Char);
    procedure pg_rodapeChange(Sender: TObject);
    procedure DBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit34KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit37KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox6Exit(Sender: TObject);
    procedure DBEdit34Exit(Sender: TObject);
    procedure DBEdit45KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit45Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBDateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure EFILIACAOKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6Exit(Sender: TObject);
    procedure ecodmunicipioKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure DBEdit38Exit(Sender: TObject);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit13Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente: Tfrmcliente;
  comando : string;
  juro_carencia : integer;
  juro_taxa, juro_multa, total_original, total_juros : real;



  CONTINUA_INCLUSAO : BOOLEAN;

  CLI_PESSOA, CLI_CPF : STRING;


implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, 
  xloc_cliente, lista_cliente2, Math, loc_convenio,
  lista_servicos_periodicos, funcionario, convenio, xloc_convenio,
  cliente_inicio, xloc_cidade, xloc_cnae, webcam2;

{$R *.dfm}


procedure Tfrmcliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente.FormShow(Sender: TObject);
begin

  total_juros    := 0;
  total_original  := 0;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa     := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa    := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;

  frmmodulo.qrregiao.close;
  frmmodulo.qrregiao.sql.clear;
  frmmodulo.qrregiao.SQL.add('select * from c000005 order by regiao');
  frmmodulo.qrregiao.open;
  frmmodulo.qrregiao.IndexFieldNames := 'regiao';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 where upper(funcao) = ''VENDEDOR'' order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrconvenio.close;
  frmmodulo.qrconvenio.sql.clear;
  frmmodulo.qrconvenio.SQL.add('select * from c000071 order by nome');
  frmmodulo.qrconvenio.open;
  frmmodulo.qrconvenio.IndexFieldNames := 'nome';

  pgravar.visible := false;
  pgravar.Align := alClient;



  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.first;

  if procura_sintegra = true then
  begin
   frmmodulo.qrcliente.Locate('codigo',parametro_pesquisa,[loCaseInsensitive]);
  end;

  procura_sintegra := false;

  OpenPictureDialog1.InitialDir := caminho_fotos_clientes;

  pficha.Enabled := false;
  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  pInfAdic.enabled := false;
  panel1.enabled := false;
  bincluir.SetFocus;


  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 1 THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 2 THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVA��O';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 3 THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 4 THEN wwDBComboBox1.Text := 'INATIVO';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 5 THEN wwDBComboBox1.Text := 'SPC';

  if FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER = 2 then
    combo_pessoa.ItemIndex := 1
  else
    combo_pessoa.ItemIndex := 0;

end;

procedure Tfrmcliente.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.bincluirClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pg_rodape.ActivePageIndex := 0;

  CONTINUA_INCLUSAO := FALSE;
  CLI_PESSOA := 'F�SICA';
  CLI_CPF := '';


  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.fieldbyname('CLIENTE_PEDE_CPF').asstring <> '0' then
  begin
    FRMCLIENTE_INICIO := TFRMCLIENTE_INICIO.CREATE(SELF);
    FRMCLIENTE_INICIO.SHOWMODAL;
  end
  else
    continua_inclusao := true;


  IF CONTINUA_INCLUSAO THEN
  BEGIN
    pcad.enabled := true;
    pcad.caption := 'Informa��es Cadastrais';
    bcad.Visible := false;

    frmmodulo.qrcliente.insert;
    frmmodulo.qrcliente.fieldbyname('codigo').asstring := frmprincipal.codifica('000007');
    frmmodulo.qrcliente.fieldbyname('codusuario').asstring := codigo_usuario;
    wwDBComboBox1.ItemIndex :=  0;
    pficha.Enabled := true;
    pficha1.enabled := true;
    pficha2.enabled := true;
    pficha3.enabled := true;
    pficha4.enabled := true;
    panel1.enabled := true;
    pInfAdic.enabled := true;
    pgravar.Visible := true;
    edata_cadastro.Date := Date;

    frmmodulo.qrcliente.fieldbyname('cpf').asstring := cli_cpf;

    IF CLI_PESSOA = 'F�SICA' then
    begin
      combo_pessoa.setfocus;
      combo_pessoa.ItemIndex := 0;
      LAPELIDO.Caption := 'Apelido:';
      LTELEFONE1.CAPTION := 'Residencial';
      LTELEFONE2.CAPTION := 'Comercial:';
      LRG.CAPTION := 'RG:';
      LCPF.CAPTION := 'CPF';
      rrg.Visible := true;
      LNASCIMENTO.CAPTION := 'Nascimento:';

      LFILIACAO.VISIBLE := TRUE;
      EFILIACAO.Visible := TRUE;
      LESTADOCIVIL.VISIBLE := TRUE;
      ECIVIL.Visible := TRUE;
      LCONJUGE.VISIBLE := TRUE;
      ECONJUGE.Visible := TRUE;

      LPROFISSAO.CAPTION := 'Profiss�o:';
      LEMPRESA.CAPTION := 'Empresa:';
      LRENDA.Visible := TRUE;
      ERENDA.VISIBLE := TRUE;
      ecnae.Enabled := False;
      bcnae.Enabled := False;
    end
    else
    begin
      combo_pessoa.setfocus;
      combo_pessoa.ItemIndex := 1;

      LAPELIDO.Caption := 'Fantasia:';
      LTELEFONE1.CAPTION := 'Telefone 01:';
      LTELEFONE2.CAPTION := 'Telefone 02:';
      LRG.CAPTION := 'IE:';
      LCPF.CAPTION := 'CNPJ:';
      rrg.Visible := false;
      LNASCIMENTO.CAPTION := 'Funda��o:';

      LFILIACAO.ENABLED := FALSE;
      EFILIACAO.ENABLED := FALSE;
      LESTADOCIVIL.ENABLED := FALSE;
      ECIVIL.ENABLED := FALSE;
      LCONJUGE.ENABLED := FALSE;
      ECONJUGE.ENABLED := FALSE;
      Label23.Enabled := FALSE;
      DBDateEdit1.Enabled := FALSE;
      lconvenio.Enabled := FALSE;

      LPROFISSAO.CAPTION := 'Ramo:';
      LEMPRESA.CAPTION := 'Titular:';
      LRENDA.ENABLED := FALSE;
      ERENDA.ENABLED := FALSE;
      ecnae.Enabled := True;
      bcnae.Enabled := True;

      lsexo.ENABLED := false;
      combo_sexo.ENABLED := false;
      
    end;
    PopupMenu := pop2;
  END;
end;

procedure Tfrmcliente.balterarClick(Sender: TObject);
begin
  CONTINUA_INCLUSAO := false;
  IF dbedit1.Text <> '' THEN
  BEGIN

    frmmodulo.qrcliente.Edit;

    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 1 THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 2 THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVA��O';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 3 THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 4 THEN wwDBComboBox1.Text := 'INATIVO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 5 THEN wwDBComboBox1.Text := 'SPC';

    pcad.enabled := true;
    pcad.caption := '          Informa��es Cadastrais';
    bcad.Visible := true;


    pficha.Enabled := true;
    pficha1.enabled := true;
    pficha2.enabled := true;
    pficha3.enabled := true;
    pficha4.enabled := true;
    pInfAdic.enabled := true;

      panel1.enabled := true;
    combo_pessoa.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;

procedure Tfrmcliente.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cliente',4) then
  begin

    QRDUPLO.CLOSE;
    QRDUPLO.SQL.CLEAR;
    QRDUPLO.SQL.ADD('select * from c000049 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      application.messagebox('Este cliente possue movimento de parcelas (contas a receber/recebidas) em seu nome! Imposs�vel excluir!','Erro',mb_ok+mb_iconerror);
      exit;
    end
    else
    begin

      QRDUPLO.CLOSE;
      QRDUPLO.SQL.CLEAR;
      QRDUPLO.SQL.ADD('select * from c000048 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');
      qrduplo.open;
      if qrduplo.recordcount > 0 then
      begin
        application.messagebox('Este cliente possue movimento de vendas em seu nome! Imposs�vel excluir!','Erro',mb_ok+mb_iconerror);
        exit;
      end
       else
       begin
            frmprincipal.log(codigo_usuario,'CLIENTE',frmmodulo.qrcliente.fieldbyname('codigo').asstring,'EXCLUIU',frmmodulo.qrcliente.fieldbyname('NOME').asstring);

      end;

    end;


    frmmodulo.qrcliente.Delete;
    frmmodulo.Conexao.commit;
     PageView1Change(frmcliente);
      end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcliente.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.bitbtn1.Enabled := false;
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 1 THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 2 THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVA��O';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 3 THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 4 THEN wwDBComboBox1.Text := 'INATIVO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 5 THEN wwDBComboBox1.Text := 'SPC';

     PageView1Change(frmcliente);
  end;
end;

procedure Tfrmcliente.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin

  if euf.text = '' then
    begin
     application.messagebox('Favor informar um Estado v�lido para este cliente!','Aten��o',mb_ok+mb_iconerror);
     euf.setfocus;
     exit;
   end;

  if dbedit2.text = '' then
    begin
     application.messagebox('Favor informar um nome v�lido para este cliente!','Aten��o',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
   end;

   bgravar.setfocus;


  pg_rodape.ActivePageIndex := 0;
  PageView1.ActivePageIndex := 0;
  
  IF wwDBComboBox1.ItemIndex = 0 THEN BEGIN wwDBComboBox1.Color := $00C6FFC6;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 2 THEN BEGIN wwDBComboBox1.Color := $00AAAAFF; wwDBComboBox1.Font.Color := clblack;END;
  IF wwDBComboBox1.ItemIndex = 1 THEN BEGIN wwDBComboBox1.Color := clSkyBlue;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 3 THEN BEGIN wwDBComboBox1.Color := $00FF9BCD;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 4 THEN BEGIN wwDBComboBox1.Color := $00D2D2FF;wwDBComboBox1.Font.Color := clBLACK;END;

  if (frmmodulo.qrcliente.State = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  Begin
      FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER :=  combo_pessoa.ItemIndex + 1;
      frmmodulo.qrcliente.fieldbyname('nascimento').asstring := dateedit1.Text;
      FRMMODULO.QRCLIENTE.FieldByName('SITUACAO').ASINTEGER := wwDBComboBox1.ItemIndex+1;
      frmmodulo.qrcliente.post;
  end;

  IF CONTINUA_INCLUSAO THEN
    frmprincipal.agenda('1','CLIENTE',DBEdit2.Text,DBEdit10.Text,DBEdit11.Text,'',DBEdit12.Text,DBEdit13.Text,'','','1');
    frmprincipal.log(codigo_usuario,'CLIENTE',frmmodulo.qrcliente.fieldbyname('codigo').asstring,'INCLUIU',frmmodulo.qrcliente.fieldbyname('NOME').asstring);
  //else if (frmmodulo.qrcliente.State = dsedit) then
  //  frmprincipal.agenda('2','CLIENTE',DBEdit2.Text,DBEdit10.Text,DBEdit11.Text,'',DBEdit12.Text,DBEdit13.Text,'','','1');

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  panel1.enabled := false;
  pInfAdic.enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;

  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 1 THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 2 THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVA��O';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 3 THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 4 THEN wwDBComboBox1.Text := 'INATIVO';
  IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 5 THEN wwDBComboBox1.Text := 'SPC';

    pcad.enabled := false;
    pcad.caption := '          Informa��es Cadastrais';
    bcad.Visible := true;

end;

procedure Tfrmcliente.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcliente.State = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
        PageView1.ActivePageIndex := 0;
        pg_rodape.ActivePageIndex := 0;
        if (frmmodulo.qrcliente.State = dsinsert) then
        begin
          //frmprincipal.transMestre.active := true;
          frmprincipal.qrmestre.close;
          frmprincipal.qrmestre.sql.clear;
          frmprincipal.qrmestre.sql.add('update c000000 set sequencia = sequencia - 1 where codigo = ''000007''');
          frmprincipal.qrmestre.execsql;
          //frmprincipal.transMestre.commit;
          end;

      frmmodulo.qrcliente.cancel;
    end;

    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 1 THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 2 THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVA��O';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 3 THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 4 THEN wwDBComboBox1.Text := 'INATIVO';
    IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 5 THEN wwDBComboBox1.Text := 'SPC';

  pficha.Enabled := false;
  pficha1.enabled := false;
  pficha2.enabled := false;
  pficha3.enabled := false;
  pficha4.enabled := false;
  panel1.enabled := false;
  pInfAdic.enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

    pcad.enabled := false;
    pcad.caption := '          Informa��es Cadastrais';
    bcad.Visible := true;

end;

procedure Tfrmcliente.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrcliente.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmcliente.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcliente.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmcliente.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      perform(wm_nextdlgctl,0,0);
    end;
end;

procedure Tfrmcliente.RLIMITEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then DATEEDIT1.setfocus;
end;

procedure Tfrmcliente.DBEdit27Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit28Exit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    frmmodulo.qrcliente.fieldbyname('codregiao').asstring := frmprincipal.zerarcodigo(dbedit28.text,6);
    if dbedit28.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrregiao,dbedit28.text,'codigo') then dbedit28ButtonClick(Frmcliente) else dbedit29.setfocus
    else
      dbedit28ButtonClick(Frmcliente);
  end;




end;

procedure Tfrmcliente.DBEdit29Exit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    frmmodulo.qrcliente.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(dbedit29.text,6);
    if dbedit29.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,dbedit29.text,'codigo') then
        dbedit29ButtonClick(Frmcliente)
      else
      BEGIN
       IF PCAD.ENABLED THEN
         RLIMITE.setfocus
       ELSE
         DATEEDIT1.SETFOCUS;
      END;
    END
    else
      dbedit29ButtonClick(Frmcliente);
  end;


end;

procedure Tfrmcliente.DBEdit15Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT15.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
      IF combo_pessoa.itemindex = 0 then
      begin
        frmprincipal.CheckCPF1.Cpf := dbedit15.text;
        if frmprincipal.CheckCPF1.Valido then
        begin
          if pos('-',dbedit15.text) = 0 then
            frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
        end
        else
        begin
            Showmessage('CPF Inv�lido!');
            dbedit15.SetFocus;
            exit;
        end;
      end
      else
      begin
        //if Length(frmprincipal.somenteNumero(dbedit15.Text)) > 11 then
        begin
          if frmprincipal.TestaCnpj(dbedit15.Text) then
          begin
            if pos('/',dbedit15.text) = 0 then frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
          end
          else
          begin
            Showmessage('CNPJ Inv�lido!');
            dbedit15.SetFocus;
            exit;
          end;
        end;
        {
        else
        begin
          frmprincipal.CheckCPF1.Cpf := dbedit15.text;
          if frmprincipal.CheckCPF1.Valido then
          begin
            if pos('-',dbedit15.text) = 0 then
              frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
          end
          else
          begin
            Showmessage('CPF Inv�lido!');
            dbedit15.SetFocus;
            exit;
          end;
        end;
        }
      end;

      IF DBEDIT15.TEXT <> '' THEN
      BEGIN

        if (frmmodulo.qrcliente.state = dsinsert) then
        begin
          query1.close;
          query1.sql.clear;
          query1.sql.Add('select * from c000007 where cpf = '''+dbedit15.text+'''');
          query1.open;
          if query1.recordcount > 0 then
          begin
            IF APPLICATION.MESSAGEBOX('Existe um cliente cadastrado com este CPF/CNPJ! Deseja cancelar esta ficha de cadastro e ir at� a ficha deste cliente?','Aten��o',mb_yesno+mb_iconquestion+MB_DEFBUTTON2) = idyes then
            begin
              frmmodulo.qrcliente.Cancel;
              frmmodulo.qrcliente.Locate('codigo',query1.fieldbyname('codigo').asstring,[loCaseInsensitive]);
              frmmodulo.qrcliente.Edit;
            end
            ELSE
            BEGIN
               frmmodulo.qrcliente.fieldbyname('cpf').asstring := '';
               DBEDIT15.SETFOCUS;
            END;
            exit;
          end;
        end;
      END;
    end;
  END;

end;

procedure Tfrmcliente.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmcliente.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.Edit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inv�lida');
    tdbdateedit(sender).SetFocus;
  END;
 end;

end;

procedure Tfrmcliente.DBEdit1Change(Sender: TObject);
begin
  dateedit1.Text := frmmodulo.qrcliente.fieldbyname('nascimento').asstring;
  wwDBComboBox1.ItemIndex := FRMMODULO.QRCLIENTE.FieldByName('SITUACAO').ASINTEGER - 1;

   PageView1Change(frmcliente);
    if pg_rodape.ActivePageIndex = 0 then // FOTO
    begin
       IF frmmodulo.qrcliente.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(frmmodulo.qrcliente.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;

 IF FRMMODULO.qrcliente.State <> DSINSERT THEN
 BEGIN
   IF FRMMODULO.qrcliente.STATE <> DSEDIT THEN
   BEGIN

   TRY
   combo_pessoa.ItemIndex := FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER - 1;
   IF FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER = 2 THEN
   BEGIN


      LAPELIDO.Caption := 'Fantasia:';
      LTELEFONE1.CAPTION := 'Telefone 01:';
      LTELEFONE2.CAPTION := 'Telefone 02:';
      LRG.CAPTION := 'IE:';
      LCPF.CAPTION := 'CNPJ:';
      rrg.Visible := false;
      LNASCIMENTO.CAPTION := 'Funda��o:';

      LFILIACAO.ENABLED := FALSE;
      EFILIACAO.ENABLED := FALSE;
      LESTADOCIVIL.ENABLED := FALSE;
      ECIVIL.ENABLED := FALSE;
      LCONJUGE.ENABLED := FALSE;
      ECONJUGE.ENABLED := FALSE;
      Label23.Enabled := FALSE;
      DBDateEdit1.Enabled := FALSE;
      lconvenio.Enabled := FALSE;
      
      LPROFISSAO.CAPTION := 'Ramo:';
      LEMPRESA.CAPTION := 'Titular:';
      LRENDA.ENABLED := FALSE;
      ERENDA.ENABLED := FALSE;

    lsexo.ENABLED := false;
    combo_sexo.ENABLED := false;

  end
  else
  begin
    LAPELIDO.Caption := 'Apelido:';
    LTELEFONE1.CAPTION := 'Residencial';
    LTELEFONE2.CAPTION := 'Comercial:';
    LRG.CAPTION := 'RG:';
    LCPF.CAPTION := 'CPF';
    rrg.Visible := true;
    LNASCIMENTO.CAPTION := 'Nascimento:';

    LFILIACAO.ENABLED := TRUE;
    EFILIACAO.ENABLED := TRUE;
    LESTADOCIVIL.ENABLED := TRUE;
    ECIVIL.ENABLED := TRUE;
    LCONJUGE.ENABLED := TRUE;
    ECONJUGE.ENABLED := TRUE;
    Label23.Enabled := TRUE;
    DBDateEdit1.Enabled := TRUE;
    lconvenio.Enabled := TRUE;

    LPROFISSAO.CAPTION := 'Profiss�o:';
    LEMPRESA.CAPTION := 'Empresa:';
    LRENDA.ENABLED := TRUE;
    ERENDA.ENABLED := TRUE;

    lsexo.ENABLED := true;
    combo_sexo.ENABLED := true;
 END;
 EXCEPT
 END;
 END;
 END;
end;

procedure Tfrmcliente.BitBtn5Click(Sender: TObject);
begin
  frmlista_cliente2 := tfrmlista_cliente2.create(self);
  frmlista_cliente2.showmodal;
end;

procedure Tfrmcliente.FichadeCadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente.Movimento1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.wwDBComboBox1Change(Sender: TObject);
begin
  wwDBComboBox1.Color := clwindow;wwDBComboBox1.Font.Color := clBLACK;
  IF wwDBComboBox1.ItemIndex = 0 THEN BEGIN wwDBComboBox1.Color := $00C6FFC6;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 2 THEN BEGIN wwDBComboBox1.Color := $00AAAAFF; wwDBComboBox1.Font.Color := clblack;END;
  IF wwDBComboBox1.ItemIndex = 1 THEN BEGIN wwDBComboBox1.Color := clSkyBlue;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 3 THEN BEGIN wwDBComboBox1.Color := $00FF9BCD;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 4 THEN BEGIN wwDBComboBox1.Color := $00D2D2FF;wwDBComboBox1.Font.Color := clBLACK;END;

end;

procedure Tfrmcliente.wwDBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.wwDBComboBox1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
TEDIT(SENDER).FONT.COLOR := CLBLACK;
end;

procedure Tfrmcliente.PageView1Change(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12 : string;
begin

  If PageView1.ActivePageIndex = 0 THEN
    begin
      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 1 THEN wwDBComboBox1.Text := 'CADASTRO APROVADO';
      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 2 THEN wwDBComboBox1.Text := 'CADASTRO EM OBSERVA��O';
      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 3 THEN wwDBComboBox1.Text := 'CADASTRO BLOQUEADO';
      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 4 THEN wwDBComboBox1.Text := 'INATIVO';
      IF FRMMODULO.QRCLIENTE.FIELDBYNAME('situacao').AsInteger = 5 THEN wwDBComboBox1.Text := 'SPC';

    end;

  if PageView1.ActivePageIndex = 1 then
  begin
    QUERY.close;
    QUERY.sql.clear;
    QUERY.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000048 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');
    QUERY.open;
    LTOTAL.CAPTION := FORMATFLOAT('###,###,##0.00',QUERY.FIELDBYNAME('TOTAL_GERAL').ASFLOAT);

    qrvenda.close;
    qrvenda.sql.clear;
    qrvenda.sql.add('select * from c000048 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' order by data, codigo');
    qrvenda.open;


  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000032 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+'''');
  qrproduto.open;

  GROUPBOX3.CAPTION := 'PRODUTOS COMPRADOS [TODAS AS NOTAS]';


  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from c000049 where codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasreceber.open;

  qrcontasreceberpg.Close;
  qrcontasreceberpg.SQL.Clear;
  qrcontasreceberpg.SQL.Add('select * from c000049 where codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 2 order by data_vencimento, codigo');
  qrcontasreceberpg.open;

  rtotal_pago.value := 0;

        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
           qrcontasreceber.next;
        end;
        while not qrcontasreceberpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASreceberpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasreceberpg.next;
        end;


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
    qrvenda_mes.sql.add('select sum(total) sum_0, '+
                     '(select sum(total) from c000048 where data >= :data11 and data < :data10 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data10 and data < :data09 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data09 and data < :data08 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data08 and data < :data07 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data07 and data < :data06 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data06 and data < :data05 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data05 and data < :data04 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data04 and data < :data03 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data03 and data < :data02 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data02 and data < :data01 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data01 and data < :data00 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''') '+
                     'from c000048 where data >= :data12 and data < :data11 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');

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
  end;

  If PageView1.ActivePageIndex = 2 THEN
  BEGIN
    QRPESSOAS.Close;
    QRPESSOAS.SQL.CLEAR;
    QRPESSOAS.SQL.ADD('SELECT * FROM C000070 WHERE CODCLIENTE = '''+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+''' ORDER BY NOME');
    QRPESSOAS.OPEN;
  END;

  If PageView1.ActivePageIndex = 3 THEN
  BEGIN
    frmmodulo.qrservicos_periodicos.close;
    frmmodulo.qrservicos_periodicos.sql.clear;
    frmmodulo.qrservicos_periodicos.sql.add('select * from servicos_periodicos');
    frmmodulo.qrservicos_periodicos.sql.add('where codcliente = '''+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+'''');
    frmmodulo.qrservicos_periodicos.open;
 END;

end;

procedure Tfrmcliente.wwDBGrid1DblClick(Sender: TObject);
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000032 where codnota = '''+qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+'''');
  qrproduto.open;

  groupbox3.Caption := 'PRODUTOS COMPRADOS [NOTA: '+QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+']';

  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' and codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasreceber.open;

  qrcontasreceberpg.Close;
  qrcontasreceberpg.SQL.Clear;
  qrcontasreceberpg.SQL.Add('select * from c000049 where codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 2 order by data_vencimento, codigo');
  qrcontasreceberpg.open;
       rtotal_pago.value := 0;

        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
           qrcontasreceber.next;
        end;
        while not qrcontasreceberpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASreceberpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasreceberpg.next;
        end;


end;

procedure Tfrmcliente.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin


  valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;


  if qrcontasreceber.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontasreceber.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat > qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        IF (DIAS - JURO_CARENCIA) > 0 THEN
        BEGIN
          juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        END;
      end;
      qrcontasreceber.FieldByName('dias').AsInteger := dias;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').AsInteger := dias;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.fieldbyname('restante').asfloat := qrcontasreceber.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').AsInteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
      qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').AsInteger := 0;
    qrcontasreceber.fieldbyname('restante').asfloat := valor;
    qrcontasreceber.fieldbyname('juros').asfloat := 0;
  end;









end;

procedure Tfrmcliente.wwDBGrid4DblClick(Sender: TObject);
begin
     if PageView2.ActivePageIndex = 0 then
     begin
       IF qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT <> 0 THEN
       BEGIN

             qrpgto.close;
              qrpgto.SQL.Clear;
              qrpgto.SQL.Add('select * from c000050 where CODCONTA = '''+qrcontasreceber.fieldbyname('codigo').asstring+''' and codcliente = '''+qrcontasreceber.fieldbyname('codcliente').asstring+''' order by data');
              qrpgto.open;
              memo1.Text := '';
              qrpgto.First;
              while not qrpgto.Eof do
              begin
                memo1.lines.add(qrpgto.fieldbyname('data').asstring+' -->'+frmPrincipal.texto_justifica(formatfloat('###,###,##0.00',qrpgto.fieldbyname('valor_pago').asfloat),12,' ','E'));
                qrpgto.Next;
              end;
                  PPGTO.Visible := TRUE;
       END;
     end
     else
     begin
              qrpgto.close;
              qrpgto.SQL.Clear;
              qrpgto.SQL.Add('select * from c000050 where CODCONTA = '''+qrcontasreceberpg.fieldbyname('codigo').asstring+''' and codcliente = '''+qrcontasreceber.fieldbyname('codcliente').asstring+''' order by data');
              qrpgto.open;
              memo1.Text := '';
              qrpgto.First;
              while not qrpgto.Eof do
              begin
                memo1.lines.add(qrpgto.fieldbyname('data').asstring+' -->'+frmPrincipal.texto_justifica(formatfloat('###,###,##0.00',qrpgto.fieldbyname('valor_pago').asfloat),12,' ','E'));
                qrpgto.Next;
              end;
                  PPGTO.Visible := TRUE;

     end;



end;

procedure Tfrmcliente.SpeedButton1Click(Sender: TObject);
begin
  ppgto.visible := false;
end;

procedure Tfrmcliente.InformaesAdicionais1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente.qrpessoasBeforePost(DataSet: TDataSet);
begin
  qrpessoas.FieldByName('CODCLIENTE').ASSTRING := frmmodulo.qrcliente.FIELDBYNAME('CODIGO').ASSTRING;
  qrpessoas.FieldByName('nome').ASSTRING := ansiuppercase(qrpessoas.fieldbyname('nome').AsString);

end;

procedure Tfrmcliente.BitBtn7Click(Sender: TObject);
begin
  IF APPLICATION.MESSAGEBOX('Tem certeza que deseja excluir este registro?','Aten��o',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrpessoas.Delete;
    frmmodulo.Conexao.Commit;
  end;
end;

procedure Tfrmcliente.qrpessoasAfterPost(DataSet: TDataSet);
begin
frmmodulo.Conexao.Commit;
end;

procedure Tfrmcliente.ECODCONVENIOExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    frmmodulo.qrcliente.fieldbyname('codconvenio').asstring := frmprincipal.zerarcodigo(ecodconvenio.text,6);
    if ecodconvenio.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrconvenio,ecodconvenio.text,'codigo') then ecodconvenioButtonClick(Frmcliente)
      else
      begin
        if ecivil.visible then ecivil.setfocus;
      end;
    end
    else
      ecodconvenioButtonClick(Frmcliente);
  end;
end;

procedure Tfrmcliente.FormCreate(Sender: TObject);
begin
{  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER = 4 THEN  // FARMACIA
  BEGIN
    LCONVENIO.Visible := TRUE;
    EFILIACAO.Width := 465;
    econjuge.Width := 273;
  END
  ELSE
  BEGIN
    LCONVENIO.Visible := FALSE;
    EFILIACAO.Width := 689;
    econjuge.Width := 497;
  END;}
end;

procedure Tfrmcliente.BitBtn8Click(Sender: TObject);
var tipo, campo, UF : PANSICHAR;
begin
  if frmmodulo.qrCLIENTE.fieldbyname('uf').ASSTRING = '' then
  begin
    showmessage('Favor informar a UF!');
    exit;
  end;
  UF := PANSICHAR(frmmodulo.qrCLIENTE.fieldbyname('uf').asstring);
  if frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring <> '' then
  begin
    if FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER = 2 then tipo := 'CNPJ' else tipo := 'CPF';

    CAMPO := PANSICHAR(FRMPRINCIPAL.somenteNumero(FRMMODULO.QRCLIENTE.FIELDBYNAME('CPF').ASSTRING));
  end
  else
  begin
    if frmmodulo.qrCLIENTE.fieldbyname('RG').asstring <> '' then
    begin
      tipo := 'IE';
      CAMPO := PANSICHAR(FRMPRINCIPAL.somenteNumero(FRMMODULO.QRCLIENTE.FIELDBYNAME('RG').ASSTRING));
    end
    else
    begin
      showmessage('Favor informar o CNPJ ou a Inscri��o Estadual!');
      exit;
    end;
  end;
  ShellExecute(0, nil, PChar('\Arquivos de programas\Ibersoft\QSint\' + 'qsint.exe'), PCHAR('UF:'+UF+' DT:'+tipo+' DN:'+CAMPO), nil, 0);
end;

procedure Tfrmcliente.DBEdit2Exit(Sender: TObject);
var texto : pansichar;
begin

  tedit(sender).Color := clwindow;
  if frmmodulo.qrcliente.state in [dsinsert,dsedit] then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000007');
    qrduplo.sql.add('where upper(NOME) = '''+ANSIUPPERCASE(dbedit2.text)+''' and codigo <> '''+DBEdit1.text+'''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      texto := pansichar( 'Existe um cliente cadastrado com este nome!'+#13+
               qrduplo.fieldbyname('codigo').asstring+' - '+qrduplo.fieldbyname('nome').asstring+#13+
               'Endere�o: '+qrduplo.fieldbyname('ENDERECO').asSTRING+'!'+#13+
               'Deseja prosseguir?');
      if application.messagebox(texto,'Aten��o',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idNO then
      begin
        BCANCELARCLICK(FRMCLIENTE);
        EXIT;
      end;
    end;
  end;
end;

procedure Tfrmcliente.eufExit(Sender: TObject);
begin

if frmPrincipal.ChecaEstado(euf.Text) = false then
  begin
    showmessage('Unidade de Federa��o Inv�lida...');
    euf.SetFocus;
    exit;
  end;


tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.eufEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmcliente.wwDBComboBox1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmcliente.ServicosPeriodicos1Click(Sender: TObject);
begin
 PageView1.ActivePageIndex := 3;
end;

procedure Tfrmcliente.BitBtn9Click(Sender: TObject);
begin
  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.CREATE(SELF);
  frmlista_servicos_periodicos.ShowModal;

end;

procedure Tfrmcliente.dbedit28ButtonClick(Sender: TObject);
begin
  frmloc_regiao := tfrmloc_regiao.create(self);
  frmloc_regiao.showmodal;
  frmmodulo.qrcliente.fieldbyname('codregiao').asstring := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
  dbedit29.setfocus;
end;

procedure Tfrmcliente.dbedit29ButtonClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrcliente.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;

       IF PCAD.ENABLED THEN
         RLIMITE.setfocus
       ELSE
         DATEEDIT1.SETFOCUS;
end;

procedure Tfrmcliente.ecodconvenioButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_convenio := tfrmxloc_convenio.create(self);
  frmxloc_convenio.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente.fieldbyname('codconvenio').asstring := resultado_pesquisa1;
  end;

  if ecivil.visible then ecivil.setfocus else
  DBEDIT20.SETFOCUS;
end;

procedure Tfrmcliente.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbedit3.setfocus;

  end;
end;

procedure Tfrmcliente.combo_pessoaChange(Sender: TObject);
begin

   IF combo_pessoa.ItemIndex = 1 THEN
   BEGIN


      LAPELIDO.Caption := 'Fantasia:';
      LTELEFONE1.CAPTION := 'Telefone 01:';
      LTELEFONE2.CAPTION := 'Telefone 02:';
      LRG.CAPTION := 'IE:';
      LCPF.CAPTION := 'CNPJ:';
      rrg.Visible := false;
      LNASCIMENTO.CAPTION := 'Funda��o:';

      LFILIACAO.ENABLED := FALSE;
      EFILIACAO.ENABLED := FALSE;
      LESTADOCIVIL.ENABLED := FALSE;
      ECIVIL.ENABLED := FALSE;
      LCONJUGE.ENABLED := FALSE;
      ECONJUGE.ENABLED := FALSE;
      Label23.Enabled := FALSE;
      DBDateEdit1.Enabled := FALSE;
      lconvenio.Enabled := FALSE;

      LPROFISSAO.CAPTION := 'Ramo:';
      LEMPRESA.CAPTION := 'Titular:';
      LRENDA.ENABLED := FALSE;
      ERENDA.ENABLED := FALSE;

      lsexo.ENABLED := false;
      combo_sexo.ENABLED := false;

  end
  else
  begin
    LAPELIDO.Caption := 'Apelido:';
    LTELEFONE1.CAPTION := 'Residencial';
    LTELEFONE2.CAPTION := 'Comercial:';
    LRG.CAPTION := 'RG:';
    LCPF.CAPTION := 'CPF';
    rrg.Visible := true;
      
    LNASCIMENTO.CAPTION := 'Nascimento:';

    LFILIACAO.ENABLED := TRUE;
    EFILIACAO.ENABLED := TRUE;
    LESTADOCIVIL.ENABLED := TRUE;
    ECIVIL.ENABLED := TRUE;
    LCONJUGE.ENABLED := TRUE;
    ECONJUGE.ENABLED := TRUE;
    Label23.Enabled := TRUE;
    DBDateEdit1.Enabled := TRUE;
    lconvenio.Enabled := TRUE;

    LPROFISSAO.CAPTION := 'Profiss�o:';
    LEMPRESA.CAPTION := 'Empresa:';
    LRENDA.ENABLED := TRUE;
    ERENDA.ENABLED := TRUE;

    lsexo.ENABLED := true;
    combo_sexo.ENABLED := true;

 END;
end;

procedure Tfrmcliente.dbedit29KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);  
end;

procedure Tfrmcliente.dbedit28KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente.combo_pessoaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbedit2.setfocus;
end;

procedure Tfrmcliente.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
  if ecnae.Enabled = False then
  begin
     pg_rodape.ActivePageIndex := 3;

     if rrg.Visible = True then
       wwDBComboBox5.SetFocus
     else
       DBEdit18.SetFocus;
   end;
end;

procedure Tfrmcliente.ecodconvenioKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.DBEdit21KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    Pg_rodape.ActivePageIndex := 2;
    ecodmunicipio.SetFocus;
  END;
end;

procedure Tfrmcliente.DBEdit25KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF PGRAVAR.Visible THEN BGRAVAR.SETFOCUS;
  END;
end;

procedure Tfrmcliente.Regies2Click(Sender: TObject);
begin
  frmregiao := tfrmregiao.create(self);
  frmregiao.showmodal;
  frmmodulo.qrregiao.refresh;
end;

procedure Tfrmcliente.Vendedor1Click(Sender: TObject);
begin
  frmfuncionario := tfrmfuncionario.create(self);
  frmfuncionario.showmodal;
end;

procedure Tfrmcliente.Convnio1Click(Sender: TObject);
begin
  frmconvenio := tfrmconvenio.create(self);
  frmconvenio.showmodal;
end;

procedure Tfrmcliente.ECIVILKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then econjuge.setfocus;
end;

procedure Tfrmcliente.ECONJUGEKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente.bcadClick(Sender: TObject);
begin
  if frmprincipal.autentica('Alterar Cadastro',4) then
  begin
    pcad.enabled := true;
    bcad.Visible := false;
    pcad.Caption := 'Informa��es Cadastrais';
    wwDBComboBox1.setfocus;
  end
  else
  begin
    Application.messagebox('Acesso n�o permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcliente.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  if key = #13 then perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;

  
end;

procedure Tfrmcliente.combo_sexoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente.Histrico1Click(Sender: TObject);
begin
  pageview1.ActivePageIndex := 4;
end;

procedure Tfrmcliente.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente.DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
 if key = #13 then
 begin
   pg_rodape.ActivePageIndex := 1;
   efiliacao.SetFocus;

 end;
end;

procedure Tfrmcliente.bibgeClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qrcliente.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.qrcliente.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.qrcliente.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qrcliente.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit6.SetFocus;
end;

procedure Tfrmcliente.bcnaeClick(Sender: TObject);
begin

  parametro_pesquisa := '';
  frmxloc_cnae := tfrmxloc_cnae.create(self);
  frmxloc_cnae.showmodal;

  frmmodulo.qrcliente.FieldByName('CNAE').AsString := resultado_pesquisa2;

end;

procedure Tfrmcliente.dscliente2DataChange(Sender: TObject; Field: TField);
begin

  if FRMMODULO.QRCLIENTE.State = dsBrowse then
    begin
      if FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER = 2 then
        combo_pessoa.ItemIndex := 1
      else
        combo_pessoa.ItemIndex := 0;
    end;
end;

procedure Tfrmcliente.ecnaeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    if ecnae.Text = '' then
       bcnae.OnClick (frmcliente);
   end;
end;

procedure Tfrmcliente.ecnaeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    pg_rodape.ActivePageIndex := 3;
    DBEdit22.SetFocus;
  END;

end;

procedure Tfrmcliente.pg_rodapeChange(Sender: TObject);
begin
  if pg_rodape.ActivePageIndex = 4 then
  begin
    if combo_pessoa.ItemIndex = 0 then pg_rodape.ActivePageIndex := 0;
  end;
end;

procedure Tfrmcliente.DBComboBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.DBEdit34KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.DBEdit37KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    PG_RESP.ActivePageIndex := 1;
    ED_RESP2_NOME.SETFOCUS;
  END;
end;

procedure Tfrmcliente.wwDBComboBox6Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit34Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT34.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit34.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('RESP1_CEP').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit34.text);
    END;
  END;
end;

procedure Tfrmcliente.DBEdit45KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF PGRAVAR.Visible THEN BGRAVAR.SETFOCUS;
  END;
end;

procedure Tfrmcliente.DBEdit45Exit(Sender: TObject);
begin
   tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit37Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.SpeedButton2Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    if frmmodulo.qrcliente.State <> dsedit then
    if frmmodulo.qrcliente.state <> dsinsert then
    frmmodulo.qrcliente.edit;
    frmmodulo.qrcliente.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmcliente.SpeedButton3Click(Sender: TObject);
begin
    if frmmodulo.qrcliente.State <> dsedit then
    if frmmodulo.qrcliente.state <> dsinsert then
    frmmodulo.qrcliente.edit;

  frmwebcam2 := tfrmwebcam2.create(self);
  frmwebcam2.showmodal;
end;

procedure Tfrmcliente.SpeedButton4Click(Sender: TObject);
begin
    if frmmodulo.qrcliente.State <> dsedit then
    if frmmodulo.qrcliente.state <> dsinsert then
    frmmodulo.qrcliente.edit;
  image2.Picture := nil;
  frmmodulo.qrcliente.FIELDBYNAME('FOTO').ASSTRING := '';
end;

procedure Tfrmcliente.DBDateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      perform(wm_nextdlgctl,0,0);
    end;
end;

procedure Tfrmcliente.EFILIACAOKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      ecodconvenio.SetFocus;
    end;
end;

procedure Tfrmcliente.DBEdit6Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
       AdvGlowButton1.OnClick (frmcliente);
   end;
end;

procedure Tfrmcliente.ecodmunicipioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmcliente.DBEdit14Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
if (DBEdit14.Text = '') and (LRG.Caption = 'IE:') then
   DBEdit14.Text := 'ISENTO';
end;

procedure Tfrmcliente.DBEdit38Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
frmmodulo.qrcliente.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(dbedit38.text,5);
end;

procedure Tfrmcliente.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmcliente.DBEdit10Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT10.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit10.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('TELEFONE1').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit10.text);
    END;
  END;
end;

procedure Tfrmcliente.DBEdit13Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

IF FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER = 2 THEN
   begin
   pg_rodape.ActivePageIndex := 2;
   ecodmunicipio.SetFocus;
   end;
end;

procedure Tfrmcliente.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT11.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit11.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('TELEFONE2').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit11.text);
    END;
  END;
end;

procedure Tfrmcliente.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT12.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit12.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('CELULAR').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit12.text);
    END;
  END;
end;

procedure Tfrmcliente.DBEdit42Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT42.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit42.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('RESP2_CEP').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit42.text);
    END;
  END;
end;

end.




////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
