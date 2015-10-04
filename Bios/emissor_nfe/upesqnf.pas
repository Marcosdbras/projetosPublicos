unit upesqnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqnf = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_nf: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Label37: TLabel;
    DBText9: TDBText;
    Label38: TLabel;
    DBText10: TDBText;
    Label10: TLabel;
    cbxdescdest_cod4nf: TDBLookupComboBox;
    rgbtipodest: TRadioGroup;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label39: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label9: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    cbxdescemi_cod3nf: TDBLookupComboBox;
    Label6: TLabel;
    lbldatacad: TLabel;
    lblendereco: TLabel;
    lblbairro: TLabel;
    lbltelefones: TLabel;
    lblcep: TLabel;
    lblestado: TLabel;
    lblcnpj: TLabel;
    lblnumero: TLabel;
    lblmunicipio: TLabel;
    lblie: TLabel;
    lblenderecoemi: TLabel;
    lblbairroemi: TLabel;
    lbltelefonesemi: TLabel;
    lblcepemi: TLabel;
    lblestadoemi: TLabel;
    lblcnpjemi: TLabel;
    lblnumeroemi: TLabel;
    lblmunicipioemi: TLabel;
    lblieemi: TLabel;
    tbsprod: TTabSheet;
    Label2: TLabel;
    edicpro: TEdit;
    SpeedButton1: TSpeedButton;
    Label3: TLabel;
    edinpro: TEdit;
    Label4: TLabel;
    cbxdescund_cod13prodnf: TDBLookupComboBox;
    ediqtde: TEdit;
    Label5: TLabel;
    Label11: TLabel;
    ediprve: TEdit;
    edisubtotal: TEdit;
    Label12: TLabel;
    btngravaprod: TBitBtn;
    pctprod: TPageControl;
    tbslistaprod: TTabSheet;
    dbgprod: TDBGrid;
    tbstributacao: TTabSheet;
    btnalterarprod: TBitBtn;
    btnexcluirprod: TBitBtn;
    lbltitdest: TLabel;
    lbldest: TLabel;
    tbsserv: TTabSheet;
    Label26: TLabel;
    edicdesc: TEdit;
    SpeedButton2: TSpeedButton;
    Label27: TLabel;
    edindesc: TEdit;
    Label50: TLabel;
    ediqtdes: TEdit;
    ediprves: TEdit;
    Label51: TLabel;
    edisubtotals: TEdit;
    Label52: TLabel;
    btngravaserv: TBitBtn;
    pctserv: TPageControl;
    tbsdescserv: TTabSheet;
    dbgserv: TDBGrid;
    tbstribserv: TTabSheet;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label67: TLabel;
    lblndesc: TLabel;
    spdservant: TSpeedButton;
    spdservprox: TSpeedButton;
    cbxdescTIPOSERV_cod1servnf: TDBLookupComboBox;
    cbxdescRCSERV_cod2servnf: TDBLookupComboBox;
    cbxdescIMPOSTOI_cod3servnf: TDBLookupComboBox;
    btnalteraserv: TBitBtn;
    btnexcluiserv: TBitBtn;
    TOTAL: TLabel;
    lbltotserv: TLabel;
    Label49: TLabel;
    lbltotprod: TLabel;
    odpExec: TOpenDialog;
    pnlnavegatribnf: TPanel;
    spdprodant: TSpeedButton;
    spdprodprox: TSpeedButton;
    pnldescricao: TPanel;
    lblproduto: TLabel;
    tbsipi: TPageControl;
    tbsicms: TTabSheet;
    pnlsuptab: TPanel;
    Label7: TLabel;
    lblsita: TLabel;
    Label22: TLabel;
    Label17: TLabel;
    lblaliqicms: TLabel;
    cbxdescsitb_cod5prodnf: TDBLookupComboBox;
    cbxdescsita_cod4prodnf: TDBLookupComboBox;
    edisimplesncm: TEdit;
    cbxdesccfop_cod11prodnf: TDBLookupComboBox;
    ckbcompoetnf: TCheckBox;
    cbxdescicms_cod1prodnf: TDBLookupComboBox;
    TabSheet3: TTabSheet;
    lblaliquota_ipi: TLabel;
    cbxdescipi_cod2prodnf: TDBLookupComboBox;
    tbspip: TTabSheet;
    lblaliquota_pis: TLabel;
    cbxdescpis_cod9prodnf: TDBLookupComboBox;
    tbscofins: TTabSheet;
    lblaliquota_cofins: TLabel;
    cbxdesccofins_cod10prodnf: TDBLookupComboBox;
    tbsii: TTabSheet;
    lblaliquota_ii: TLabel;
    cbxdescvii_cod8prodnf: TDBLookupComboBox;
    tbsoutras: TTabSheet;
    lblaliquota_outras: TLabel;
    cbxdescoimp_cod12prodnf: TDBLookupComboBox;
    rgbctipoemi1: TRadioGroup;
    edincupom1: TEdit;
    Label20: TLabel;
    Label23: TLabel;
    edidatacupom1: TMaskEdit;
    Bevel5: TBevel;
    Label57: TLabel;
    Label59: TLabel;
    Bevel6: TBevel;
    edivlrcredicms: TEdit;
    Label60: TLabel;
    edivlrreticms: TEdit;
    Label61: TLabel;
    ediartricms: TEdit;
    Label21: TLabel;
    cbxdesccsosn_cod14prodnf: TDBLookupComboBox;
    Label8: TLabel;
    edivlrcredIPI: TEdit;
    Label14: TLabel;
    edivlrretipi: TEdit;
    Label63: TLabel;
    ediartripi: TEdit;
    Label64: TLabel;
    Bevel8: TBevel;
    btncancelar: TBitBtn;
    btnimportar: TBitBtn;
    btnajustatrib: TBitBtn;
    btnemitenfe: TBitBtn;
    tbscupomf: TTabSheet;
    DBGrid1: TDBGrid;
    Label24: TLabel;
    ckbatualiza: TCheckBox;
    ckbproximoreg: TCheckBox;
    BitBtn1: TBitBtn;
    Label25: TLabel;
    Memo1: TMemo;
    tbsemitir: TTabSheet;
    Label69: TLabel;
    pctcadnf: TPageControl;
    tbsdup: TTabSheet;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    lbltotdup: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    rgbformapgto: TRadioGroup;
    edidin: TEdit;
    edinparc: TEdit;
    btncalcular: TButton;
    DBGrid2: TDBGrid;
    ediperiodo: TEdit;
    edidatainic: TMaskEdit;
    tbstransportador: TTabSheet;
    Label82: TLabel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Label86: TLabel;
    edicnpjtransp: TDBText;
    Label87: TLabel;
    edienderecotransp: TDBText;
    Label88: TLabel;
    DBText23: TDBText;
    Label89: TLabel;
    edibairrotransp: TDBText;
    Label90: TLabel;
    ediceptransp: TDBText;
    Label91: TLabel;
    edimunicipiotransp: TDBText;
    Label92: TLabel;
    editelefonestransp: TDBText;
    Label93: TLabel;
    ediuftransp: TDBText;
    Label94: TLabel;
    ediietransp: TDBText;
    Label95: TLabel;
    Label96: TLabel;
    Label97: TLabel;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    cbxdesctransp_cod5nf: TDBLookupComboBox;
    cbxdescfreteporconta_cod2nf: TDBLookupComboBox;
    ediplacavei: TEdit;
    EDIUFVEI: TEdit;
    EDIQUANTIDADE: TEdit;
    ediespecie: TEdit;
    edimarca: TEdit;
    EDINUMERO: TEdit;
    EDIPESOB: TEdit;
    EDIPESOL: TEdit;
    cbxdesccfop_cod7nf: TDBLookupComboBox;
    tbsadicnf: TTabSheet;
    mmoadicnf: TMemo;
    tbsedpgto: TTabSheet;
    Label81: TLabel;
    edidte: TMaskEdit;
    btneditar: TBitBtn;
    Label76: TLabel;
    ediprazo: TEdit;
    BitBtn2: TBitBtn;
    Label77: TLabel;
    edivencimento: TMaskEdit;
    btncancelarparc: TBitBtn;
    Label78: TLabel;
    edivalorp: TEdit;
    Panel2: TPanel;
    Label102: TLabel;
    ediiesubtrib: TEdit;
    Label103: TLabel;
    edibscalcsubstrib: TEdit;
    Label104: TLabel;
    EDIVLRICMSSUBTRIB: TEdit;
    Label105: TLabel;
    edivlrfrete: TEdit;
    Label106: TLabel;
    edivlrout: TEdit;
    Label107: TLabel;
    EDIVLRSEG: TEdit;
    Label108: TLabel;
    edialiqapicms: TEdit;
    Label113: TLabel;
    Label109: TLabel;
    edialiqapipi: TEdit;
    Label112: TLabel;
    edinnfrefdevol: TEdit;
    Label110: TLabel;
    edidatanfrefdevol: TMaskEdit;
    Label111: TLabel;
    Label114: TLabel;
    cbxdescnatop_cod6nf: TDBLookupComboBox;
    Label15: TLabel;
    cbxdescmodbs_cod6prodnf: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    Label13: TLabel;
    cbxdesccf_cod3prodnf: TDBLookupComboBox;
    Label16: TLabel;
    cbxdescmodbst_cod7prodnf: TDBLookupComboBox;
    Bevel4: TBevel;
    Label115: TLabel;
    Label116: TLabel;
    edivlrcrediss: TEdit;
    Panel3: TPanel;
    Panel4: TPanel;
    BitBtn3: TBitBtn;
    btnemitir: TBitBtn;
    Label117: TLabel;
    edialiqapiss: TEdit;
    Label118: TLabel;
    ediiva: TEdit;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    EDIBASEI1: TEdit;
    EDIVLR1: TEdit;
    edibscalcst: TEdit;
    ediicmscalcst: TEdit;
    ediitem: TEdit;
    Label122: TLabel;
    TabSheet1: TTabSheet;
    Label28: TLabel;
    ediproxnota: TEdit;
    Label56: TLabel;
    edidatasai: TMaskEdit;
    Pedido: TLabel;
    edinped: TEdit;
    Label58: TLabel;
    edihorasai: TMaskEdit;
    Label62: TLabel;
    cbxdesctiponf_cod1nf: TDBLookupComboBox;
    Label65: TLabel;
    edipdesc: TEdit;
    Label66: TLabel;
    Label68: TLabel;
    edivaldesc: TEdit;
    Label70: TLabel;
    EDILIQUIDO: TEdit;
    Label71: TLabel;
    lbltotal: TLabel;
    Button1: TButton;
    Label72: TLabel;
    edidataemi: TMaskEdit;
    TabSheet2: TTabSheet;
    Label124: TLabel;
    Label123: TLabel;
    Label125: TLabel;
    edivlricms: TEdit;
    Label129: TLabel;
    edivlrsubsicms: TEdit;
    Label130: TLabel;
    EDIBCSUBSICMS: TEdit;
    Label127: TLabel;
    EDIVLRIPI: TEdit;
    Label126: TLabel;
    Label128: TLabel;
    edibcicms: TEdit;
    Label131: TLabel;
    Label132: TLabel;
    Label133: TLabel;
    edichave: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Limpar;
    procedure btnnovaClick(Sender: TObject);
    procedure tbsfichaShow(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure carregaficha;
    procedure FormShow(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure edidescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnproximoClick(Sender: TObject);
    procedure btnanteriorClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure dbg_nfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edibscalcstKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveExit(Sender: TObject);
    procedure edibscalcstExit(Sender: TObject);
    procedure ediicmscalcstExit(Sender: TObject);
    procedure rgbtipodestClick(Sender: TObject);
    procedure configuradest;
    procedure cbxdescdest_cod4nfKeyPress(Sender: TObject; var Key: Char);
    procedure btncancelarClick(Sender: TObject);
    procedure gravar;
    procedure tbsprodShow(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalKeyPress(Sender: TObject; var Key: Char);
    procedure btngravaprodClick(Sender: TObject);
    procedure spdprodantClick(Sender: TObject);
    procedure spdprodproxClick(Sender: TObject);
    procedure ediqtdeExit(Sender: TObject);
    procedure edisubtotalExit(Sender: TObject);
    procedure edicproKeyPress(Sender: TObject; var Key: Char);
    procedure edinproKeyPress(Sender: TObject; var Key: Char);
    procedure cbxdescund_cod13prodnfKeyPress(Sender: TObject;
      var Key: Char);
    procedure tbstributacaoShow(Sender: TObject);
    procedure btnalterarprodClick(Sender: TObject);
    procedure edicproExit(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure filtraprod;
    procedure limparprod;
    procedure mostraprod;
    procedure buscarprod;
    procedure gravarprod;
    procedure bloqtribprod;
    procedure desblotribprod;
    procedure carregafichaprod;

    procedure filtraserv;
    procedure limparserv;
    procedure mostraserv;
    procedure buscarserv;
    procedure gravarserv;
    procedure bloqtribserv;
    procedure desblotribserv;
    procedure carregafichaserv;


    procedure filtracupom;

    procedure carregadest;
    procedure edicdescExit(Sender: TObject);
    procedure edicdescKeyPress(Sender: TObject; var Key: Char);
    procedure ediqtdesExit(Sender: TObject);
    procedure ediqtdesKeyPress(Sender: TObject; var Key: Char);
    procedure ediprvesExit(Sender: TObject);
    procedure edisubtotalsExit(Sender: TObject);
    procedure btngravaservClick(Sender: TObject);
    procedure btnalteraservClick(Sender: TObject);
    procedure btnexcluirprodClick(Sender: TObject);
    procedure btnexcluiservClick(Sender: TObject);
    procedure spdservantClick(Sender: TObject);
    procedure spdservproxClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure tbsservShow(Sender: TObject);
    procedure tbstribservShow(Sender: TObject);

    procedure totprod;
    procedure totserv;
    procedure btnemitenfeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbg_nfDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btnexportarClick(Sender: TObject);
    procedure btnimportarClick(Sender: TObject);
    procedure btnajustatribClick(Sender: TObject);
    procedure rgbctipoemi1Click(Sender: TObject);
    procedure edincupom1KeyPress(Sender: TObject; var Key: Char);

    procedure liberacampo;
    procedure edivlrcredicmsKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrreticmsKeyPress(Sender: TObject; var Key: Char);
    procedure edialiqapicmsKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrcredicmsExit(Sender: TObject);
    procedure edivlrreticmsExit(Sender: TObject);
    procedure edialiqapicmsExit(Sender: TObject);
    procedure edidatacupom1KeyPress(Sender: TObject; var Key: Char);
    procedure edinnfrefdevolKeyPress(Sender: TObject; var Key: Char);
    procedure edidatanfrefdevolKeyPress(Sender: TObject; var Key: Char);
    procedure ediartricmsKeyPress(Sender: TObject; var Key: Char);

    procedure carregadadosprincipais;
    procedure tbslistaprodShow(Sender: TObject);
    procedure edivlrcredIPIExit(Sender: TObject);
    procedure edivlrretipiExit(Sender: TObject);
    procedure edialiqapipiExit(Sender: TObject);
    procedure edivlrcredIPIKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrretipiKeyPress(Sender: TObject; var Key: Char);
    procedure edialiqapipiKeyPress(Sender: TObject; var Key: Char);
    procedure tbslistaShow(Sender: TObject);
    procedure tbsdescservShow(Sender: TObject);
    procedure tbscupomfShow(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure tbsprodHide(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure cbxdescnatop_cod6nfKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrcredissExit(Sender: TObject);
    procedure edialiqapissKeyPress(Sender: TObject; var Key: Char);
    procedure ediivaExit(Sender: TObject);
    procedure EDIBASEI1Exit(Sender: TObject);
    procedure EDIVLR1Exit(Sender: TObject);
    procedure ediicmscalcstKeyPress(Sender: TObject; var Key: Char);
    procedure ediivaKeyPress(Sender: TObject; var Key: Char);
    procedure ediitemKeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure ediproxnotaKeyPress(Sender: TObject; var Key: Char);
    procedure edidatasaiKeyPress(Sender: TObject; var Key: Char);
    procedure edinpedKeyPress(Sender: TObject; var Key: Char);
    procedure edihorasaiKeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesctiponf_cod1nfKeyPress(Sender: TObject; var Key: Char);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure EDILIQUIDOKeyPress(Sender: TObject; var Key: Char);
    procedure edidatasaiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edipdescExit(Sender: TObject);
    procedure edivaldescExit(Sender: TObject);
    procedure EDILIQUIDOExit(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure edidataemiKeyPress(Sender: TObject; var Key: Char);
    procedure edidataemiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edivlricmsExit(Sender: TObject);
    procedure edivlricmsKeyPress(Sender: TObject; var Key: Char);
    procedure EDIVLRIPIExit(Sender: TObject);
    procedure EDIVLRIPIKeyPress(Sender: TObject; var Key: Char);
    procedure edivlrsubsicmsExit(Sender: TObject);
    procedure EDIBCSUBSICMSExit(Sender: TObject);
    procedure edivlrsubsicmsKeyPress(Sender: TObject; var Key: Char);
    procedure EDIBCSUBSICMSKeyPress(Sender: TObject; var Key: Char);
    procedure edibcicmsExit(Sender: TObject);
    procedure edibcicmsKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sOpcao:string;
    sOpcaoprod:string;
    sOpcaoserv:string;
    scaux:string;
    sncupoma, sdataant:string;
    bInsereD:boolean;
    fbscalcst:real;
    ficmscalcst:real;



  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
    icpro, icmobra:integer;
    scaminho:string;
  end;

var
  frmpesqnf: Tfrmpesqnf;

implementation
   uses ugeral, udados, uconsprodutos, ufiltronf, urelnf, uconsserv,
  ufecnf, uprincipal;
{$R *.dfm}

procedure Tfrmpesqnf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 limpar;
 limparprod;
 limparserv;

  frmdados.cds_nf.Active := false;
  frmdados.sql_nf.Active := false;

  frmdados.cds_nfp.Active := false;
  frmdados.sql_nfp.Active := false;

  frmdados.cds_nfs.Active := false;
  frmdados.sql_nfs.Active := false;

  frmdados.cds_cupom.Active := false;
  frmdados.sql_cupom.Active := false;

  frmdados.cds_clientes.Active := false;
  frmdados.sql_clientes.Active := false;

  frmdados.cds_emitente.Active := false;
  frmdados.sql_emitente.Active := false;

  frmdados.cds_icms.Active := false;
  frmdados.sql_icms.Active := false;

  frmdados.cds_ipi.Active := false;
  frmdados.sql_ipi.Active := false;

  frmdados.cds_cf.Active := false;
  frmdados.sql_cf.Active := false;

  frmdados.cds_sita.Active := false;
  frmdados.sql_sita.Active := false;

  frmdados.cds_sitb.Active := false;
  frmdados.sql_sitb.Active := false;

  frmdados.cds_modbc.Active := false;
  frmdados.sql_modbc.Active := false;

  frmdados.cds_modbcst.Active := false;
  frmdados.sql_modbcst.Active := false;

  frmdados.cds_impostoII.Active := false;
  frmdados.sql_impostoII.Active := false;

  frmdados.cds_pis.Active := false;
  frmdados.sql_pis.Active := false;

  frmdados.cds_cofins.Active := false;
  frmdados.sql_cofins.Active := false;

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  frmdados.cds_impostoIII.Active := false;
  frmdados.sql_impostoIII.Active := false;

  frmdados.cds_csosn.Active := false;
  frmdados.sql_csosn.Active := false;

  frmdados.cds_produtos.Active := false;
  frmdados.sql_produtos.Active := false;

  frmdados.cds_fornecedores.Active := false;
  frmdados.sql_fornecedores.Active := false;

  frmdados.cds_tiposerv.Active := false;
  frmdados.sql_tiposerv.Active := false;

  frmdados.cds_rcserv.Active := false;
  frmdados.sql_rcserv.Active := false;

  frmdados.cds_impostoI.Active := false;
  frmdados.sql_impostoI.Active := false;

  frmdados.cds_Munic.Active := false;
  frmdados.sql_Munic.Active := false;

  frmdados.cds_Estados.Active := false;
  frmdados.sql_Estados.Active := false;

  frmdados.cds_Paises.Active := false;
  frmdados.sql_Paises.Active := false;

  frmdados.cds_tiponf.Active := false;
  frmdados.sql_tiponf.Active := false;

  frmdados.cds_natop.Active := false;
  frmdados.sql_natop.Active := false;

  frmdados.cds_transportador.Active := false;
  frmdados.sql_transportador.Active := false;

  frmdados.cds_onusdofrete.Active := false;
  frmdados.sql_onusdofrete.Active := false;

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  frmdados.cds_tiponf.Active := false;
  frmdados.sql_tiponf.Active := false;

  frmdados.cds_natop.Active := false;
  frmdados.sql_natop.Active := false;

  frmdados.cds_transportador.Active := false;
  frmdados.sql_transportador.Active := false;

  frmdados.cds_onusdofrete.Active := false;
  frmdados.sql_onusdofrete.Active := false;

  frmdados.cds_regtrib.Active := false;
  frmdados.sql_regtrib.Active := false;

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  frmdados.cds_unidade.Active := false;
  frmdados.sql_unidade.Active := false;



  frmdados.cds_temp_imp.Active := false;


  pctdados.TabIndex := 0;
  Action:=caFree;
  frmPesqnf:=nil;
  form_ativo := '';
end;

procedure tfrmpesqnf.Limpar;
begin
  icpro := 0;

  lblcodigo.Caption := '00000';
  lbldatacad.Caption := datetostr(date);
  lblcnpj.caption := '';
  lblendereco.caption := '';
  lblnumero.caption := '';
  lblbairro.caption := '';
  lblcep.caption := '';
  lbltelefones.caption := '';
  lblie.caption := '';
  lblmunicipio.caption := '';
  lblestado.caption := '';
  

  lblcnpjemi.caption := '';
  lblenderecoemi.caption := '';
  lblnumeroemi.caption := '';
  lblbairroemi.caption := '';
  lblcepemi.caption := '';
  lbltelefonesemi.caption := '';
  lblieemi.caption := '';
  lblmunicipioemi.caption := '';
  lblestadoemi.caption := '';
  edivlrcredicms.Text := '0,00';

  edivlrcrediss.Text := '0,00';
  edialiqapiss.Text := '0,00';

  edivlrreticms.Text := '0,00';
  ediartricms.Text := '';

  edivlrcredipi.Text := '0,00';
  edivlrretipi.Text := '0,00';
  ediartripi.Text := '';

  edidatasai.Text := '00/00/0000';
  edidataemi.Text := datetostr(date);
  edihorasai.Text := '';
  ediplacavei.Text := '';
  ediufvei.Text := '';
  ediquantidade.Text := '';
  ediespecie.Text := '';
  edimarca.Text := '';
  edinumero.Text := '';
  edipesob.Text := '0,00';
  edipesol.Text := '0,00';
  edibscalcsubstrib.text := '0,00';
  edivlricmssubtrib.text := '0,00';
  edivlrfrete.Text := '0,00';

  edialiqapicms.Text := '0,00';
  edialiqapipi.Text := '0,00';
  edinnfrefdevol.Text := '';
  ediiesubtrib.Text := '0,00';

  ediproxnota.Text := '0';
  edipdesc.Text := '0,00';
  edivaldesc.Text := '0,00';
  edivlricms.Text := '0,00';
  edibcicms.Text := '0,00';
  edichave.Text := '';

  edivlrsubsicms.Text := '0,00';
  edibcsubsicms.Text := '0,00';
  edivlripi.Text := '0,00';

  ediliquido.Text := '0,00';
  edidin.Text := '0,00';
  edinparc.Text := '0';
  edidatainic.Text := '';
  ediperiodo.Text := '0';
  edidte.Text := '';
  ediprazo.Text := '0';
  edivencimento.Text := '0';
  edivalorp.Text := '0,00';

  edivlrseg.Text := '0,00';
  edivlrout.Text := '0,00';
  mmoadicnf.Clear;



  frmdados.cds_Temp.Edit;
  frmdados.cds_Temp.FieldByName('cod4nf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3nf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod6nf').asInteger := 0;

  frmdados.cds_Temp.FieldByName('cod1nf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2nf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod5nf').asInteger := 0;


end;

procedure Tfrmpesqnf.btnnovaClick(Sender: TObject);
begin

//sOpcao := 'I';

bInsereD := true;


lbldest.Caption := '';

edidatasai.Enabled := true;
edihorasai.Enabled := true;
ediplacavei.Enabled := true;
ediufvei.Enabled := true;
ediquantidade.Enabled := true;
ediespecie.Enabled := true;
edimarca.Enabled := true;
edinumero.Enabled := true;
edipesob.Enabled := true;
edipesol.Enabled := true;
edibscalcsubstrib.enabled := true;
edivlricmssubtrib.enabled := true;

edivlrsubsicms.Enabled := true;
edibcsubsicms.Enabled := true;

edivlrfrete.enabled := true;
edivlrseg.enabled := true;
edivlrout.enabled := true;
mmoadicnf.Enabled := true;

cbxdesctiponf_cod1nf.Enabled := true;
cbxdesctransp_cod5nf.Enabled := true;
cbxdescfreteporconta_cod2nf.Enabled := true;

cbxdescdest_cod4nf.Enabled := true;
cbxdescemi_cod3nf.Enabled := true;
cbxdescnatop_cod6nf.Enabled := true;


btnsalvar.Enabled := true;
Limpar;
//if cbxdescdest_cod4nf.Enabled then
//   cbxdescdest_cod4nf.SetFocus;
//endi

if cbxdescnatop_cod6nf.Enabled then
   cbxdescnatop_cod6nf.SetFocus;
//endi



btnexcluir.Enabled := false;


liberacampo;

end;

procedure Tfrmpesqnf.tbsfichaShow(Sender: TObject);
begin

Limpar;
carregadadosprincipais;
if btnsalvar.Enabled then
   begin
     //if cbxdescdest_cod4nf.Enabled then
     //   begin
          //cbxdescdest_cod4nf.SetFocus;
     //   end;
     //endi


     if cbxdescnatop_cod6nf.Enabled then
        begin
          cbxdescnatop_cod6nf.SetFocus;
        end;
     //endi


   end;
//endi
end;

procedure Tfrmpesqnf.btnsalvarClick(Sender: TObject);
begin
gravar;
pctdados.TabIndex := 0;

end;

procedure tfrmpesqnf.carregaficha;
begin

if bInsereD then
   exit;
//endi

with frmdados do
  begin

    sOpcao := 'A';



    lblcodigo.Caption := formatfloat('00000',cds_nf.fieldbyname('codigo').asfloat);
    lbldatacad.Caption := cds_nf.fieldbyname('datacad').asString;
    //edincupom.Text := cds_nf.fieldbyname('ncupom').asString;

    if  edidatasai.Text <> '00/00/0000' then
       edidatasai.Text := cds_nf.fieldbyname('datasai').asString;
    //endi

    //if  edihorasai.Text <> '  :  ' then
    edihorasai.Text := cds_nf.fieldbyname('horasai').asString;
    //endi


    if edidatanfrefdevol.Text <> '  /  /    ' then
       edidatanfrefdevol.Text := cds_nf.fieldbyname('datanfrefdevol').asString;
    //endi

    edivlrcredicms.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('vlrcredicms').asfloat);
    edivlrcrediss.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('vlrcrediss').asfloat);



    edivlrreticms.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('vlrreticms').asfloat);
    ediartricms.Text := cds_nf.fieldbyname('artricms').asString;


    edialiqapicms.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('aliqapicms').asfloat);
    edialiqapiss.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('aliqapiss').asfloat);




    edivlrcredipi.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('vlrcredipi').asfloat);
    edivlrretipi.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('vlrretipi').asfloat);
    ediartripi.Text := cds_nf.fieldbyname('artripi').asString;
    edialiqapipi.Text := formatfloat('###,###,##0.00',cds_nf.fieldbyname('aliqapipi').asfloat);

    edinnfrefdevol.Text :=  cds_nf.fieldbyname('nnfrefdevol').asString;


    ediplacavei.Text := cds_nf.fieldbyname('placavei').asString;
    ediufvei.Text := cds_nf.fieldbyname('ufvei').asString;
    ediquantidade.Text := cds_nf.fieldbyname('quantidade').asString;
    ediespecie.Text := cds_nf.fieldbyname('especie').asString;
    edimarca.Text := cds_nf.fieldbyname('marca').asString;
    edinumero.Text := cds_nf.fieldbyname('numero').asString;
    edipesob.Text := cds_nf.fieldbyname('pesob').asString;
    edipesol.Text := cds_nf.fieldbyname('pesol').asString;
    edibscalcsubstrib.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('bscalcsubtrib').asfloat);
    edivlricmssubtrib.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('vlricmssubtrib').asfloat);
    edivlrfrete.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('tvlrfrete').asfloat);
    edivlrseg.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('tvlrseg').asfloat);
    edivlrout.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('tvlrout').asfloat);


    ediproxnota.Text :=  inttostr( cds_nf.fieldbyname('nnf').asInteger );
    edipdesc.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('pdesc').asfloat);;
    edivaldesc.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('valdesc').asfloat);
    ediliquido.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('liquido').asfloat);
    edidin.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('din').asfloat);
    edinparc.Text :=  inttostr( cds_nf.fieldbyname('nparc').asInteger );
    edidatainic.Text := cds_nf.fieldbyname('datainic').asString;
    ediperiodo.Text :=   inttostr( cds_nf.fieldbyname('periodo').asInteger );
    


    edialiqapicms.Text := formatfloat('###,###,##0.00', cds_nf.fieldbyname('aliqapicms').asfloat);
    edialiqapipi.Text :=  formatfloat('###,###,##0.00', cds_nf.fieldbyname('aliqapipi').asfloat);
    edinnfrefdevol.Text :=  cds_nf.fieldbyname('nnfrefdevol').asString;
    ediiesubtrib.Text := cds_nf.fieldbyname('iesubtrib').asString;;;

    configuradest;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod3nf').asInteger := cds_nf.FieldByName('cemi').asInteger;
    frmdados.cds_Temp.fieldbyname('cod4nf').asInteger := cds_nf.FieldByName('cdest').asInteger;
    frmdados.cds_Temp.fieldbyname('cod6nf').asInteger := cds_nf.FieldByName('cnatop').asInteger;
    frmdados.cds_Temp.fieldbyname('cod1nf').asInteger := cds_nf.FieldByName('ctiponf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2nf').asInteger := cds_nf.FieldByName('cfreteporconta').asInteger;
    frmdados.cds_Temp.fieldbyname('cod5nf').asInteger := cds_nf.FieldByName('ctransp').asInteger;


    if cds_nf.FieldByName('tipodest').asString ='C' then
       begin
         rgbtipodest.ItemIndex := 0;
       end;
    //endi
    if cds_nf.FieldByName('tipodest').asString = 'F' then
       begin
         rgbtipodest.ItemIndex := 1;
       end;
    //endi


    //if cds_nf.FieldByName('ctipoemi').asInteger = 0 then
    //   begin
    //     rgbctipoemi.ItemIndex := 0;
    //   end;
    //endi
    //if cds_nf.FieldByName('ctipoemi').asInteger = 1 then
    //   begin
    //     rgbctipoemi.ItemIndex := 1;
    //   end;
    //endi



    lblcnpjemi.caption := frmdados.cds_emitente.fieldbyname('cnpj').asString;
    lblenderecoemi.caption := frmdados.cds_emitente.fieldbyname('endereco').asString;
    lblnumeroemi.caption := frmdados.cds_emitente.fieldbyname('nro').asString;
    lblbairroemi.caption := frmdados.cds_emitente.fieldbyname('bairro').asString;
    lblcepemi.caption := frmdados.cds_emitente.fieldbyname('cep').asString;
    lbltelefonesemi.caption := frmdados.cds_emitente.fieldbyname('telefones').asString;
    lblieemi.caption := frmdados.cds_emitente.fieldbyname('ie').asString;
    if frmdados.cds_Munic.Locate('codigo',frmdados.cds_emitente.fieldbyname('cmun').asString,[]) then
       lblmunicipioemi.caption := frmdados.cds_Munic.fieldbyname('nome').asString
    else
       lblmunicipioemi.caption := '';
    //endi

    if frmdados.cds_estados.Locate('codigo',frmdados.cds_emitente.fieldbyname('cest').asString,[]) then
       lblestadoemi.caption := frmdados.cds_estados.fieldbyname('sigla').asString
    else
       lblestadoemi.caption := '';
    //endi




  end;
//endi

end;

procedure Tfrmpesqnf.FormShow(Sender: TObject);
begin




cbxdescipi_cod2prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescipi_cod2prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdescpis_cod9prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescpis_cod9prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdesccofins_cod10prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdesccofins_cod10prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdescvii_cod8prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescvii_cod8prodnf.Left  := cbxdescicms_cod1prodnf.Left;

cbxdescoimp_cod12prodnf.Top  := cbxdescicms_cod1prodnf.Top;
cbxdescoimp_cod12prodnf.Left  := cbxdescicms_cod1prodnf.Left;

lblaliquota_ipi.Top    := lblaliqicms.Top;
lblaliquota_ipi.left    := lblaliqicms.left;

lblaliquota_pis.Top    := lblaliqicms.Top;
lblaliquota_pis.left    := lblaliqicms.left;

lblaliquota_cofins.Top    := lblaliqicms.Top;
lblaliquota_cofins.left    := lblaliqicms.left;

lblaliquota_ii.Top    := lblaliqicms.Top;
lblaliquota_ii.left    := lblaliqicms.left;

lblaliquota_outras.Top    := lblaliqicms.Top;
lblaliquota_outras.left    := lblaliqicms.left;




sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_nf.IndexName := 'codigo';
frmdados.cds_nf.IndexName := sordenado;
frmdados.cds_nfdatacad.DefaultExpression := quotedstr(datetostr(date));
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;


lbldest.Caption := '';

carregadest;

//with frmdados do
//  begin
//    cds_duplicata.Filtered := false;
//    cds_duplicata.Filter := 'cnf = '+ inttostr( cds_nf.fieldbyname('codigo').asInteger );
//    cds_duplicata.Filtered := true;
//  end;
//endi


//frmdados.cds_nf.Active := false;
//frmdados.cds_nfndest.KeyFields := 'cdest';
//frmdados.cds_nfndest.LookupDataSet := frmdados.cds_clientes;
//frmdados.cds_nfndest.LookupKeyFields := 'codigo';
//frmdados.cds_nfndest.LookupResultField := 'nome';
//frmdados.cds_nf.Active := true;

Case  frmdados.cds_indice.FieldByName('configcpro').asInteger of
      0:begin
          dbgprod.Columns[0].FieldName := 'cpro';
        end;
      1:begin
          dbgprod.Columns[0].FieldName := 'caux';
        end;
      2:begin
          dbgprod.Columns[0].FieldName := 'cbar';
        end;
end;





end;

procedure Tfrmpesqnf.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin

       frmdados.cds_nfp.Active := false;
       frmdados.cds_nfp.Filtered := false;
       frmdados.cds_nfp.Filter := 'cnf = '+frmdados.cds_nf.fieldbyname('codigo').asString;
       frmdados.cds_nfp.Filtered := true;
       frmdados.cds_nfp.Active := true;
       while not frmdados.cds_nfp.Eof do
          begin
            frmdados.cds_nfp.Delete;
          end;
       //endi



       frmdados.cds_nfs.Active := false;
       frmdados.cds_nfs.Filtered := false;
       frmdados.cds_nfs.Filter := 'cnf = '+frmdados.cds_nf.fieldbyname('codigo').asString;
       frmdados.cds_nfs.Filtered := true;
       frmdados.cds_nfs.Active := true;
       while not frmdados.cds_nfp.Eof do
          begin
            frmdados.cds_nfs.Delete;
          end;
       //endi



       frmdados.cds_cupom.Active := false;
       frmdados.cds_cupom.Filtered := false;
       frmdados.cds_cupom.Filter := 'cnf = '+frmdados.cds_nf.fieldbyname('codigo').asString;
       frmdados.cds_cupom.Filtered := true;
       frmdados.cds_cupom.Active := true;
       while not frmdados.cds_cupom.Eof do
          begin
            frmdados.cds_cupom.Delete;
          end;
       //endi






       frmdados.cds_nf.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.btnproximoClick(Sender: TObject);
begin
frmdados.cds_nf.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
if pctdados.TabIndex = 2 then
   begin
     filtraprod;
     if pctprod.TabIndex = 1 then
        begin
          carregafichaprod;
        end;
     //endi
   end;
//endi

if pctdados.TabIndex = 3 then
   begin
     filtracupom;
   end;
//endi

if pctdados.TabIndex = 4 then
   begin
     filtraserv;
     if pctserv.TabIndex = 1 then
        begin
          carregafichaserv;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmpesqnf.btnanteriorClick(Sender: TObject);
begin

frmdados.cds_nf.Prior;

if pctdados.TabIndex = 1 then
   carregaficha;
//endi

if pctdados.TabIndex = 2 then
   begin
     filtraprod;
     if pctprod.TabIndex = 1 then
        begin
          carregafichaprod;
        end;
     //endi
   end;
//endi

if pctdados.TabIndex = 3 then
   begin
     filtracupom;
   end;
//endi

if pctdados.TabIndex = 4 then
   begin
     filtraserv;
     if pctserv.TabIndex = 1 then
        begin
          carregafichaserv;
        end;
     //endi
   end;
//endi

end;

procedure Tfrmpesqnf.btnfiltrarClick(Sender: TObject);
begin

if frmfiltronf = nil then
   begin
      frmfiltronf := tfrmfiltronf.Create(self);
      frmfiltronf.Showmodal;
      frmfiltronf.Free;
   end;
//endi

{
frmdados.cds_nf.Close;
frmdados.sql_nf.Close;
frmdados.sql_nf.SQL.Clear;
frmdados.sql_nf.SQL.Add('select * from nf order by codigo desc');
frmdados.sql_nf.Open;
frmdados.cds_nf.Open;
}

end;

procedure Tfrmpesqnf.dbg_nfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqnf.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_nf.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqnf.edilocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

if iclassificar = 0 then
   begin
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
     //endi
   end;
//endi

if iclassificar = 2 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi

if iclassificar = 3 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi




end;

procedure Tfrmpesqnf.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_nf.Filtered := false;
    cds_nf.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqnf.btnimprimirClick(Sender: TObject);
begin
frmrelnf := tfrmrelnf.Create(self);
frmrelnf.relatorio.Preview;
frmrelnf.Free;
end;

procedure Tfrmpesqnf.ediprveKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edibscalcstKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.ediprveExit(Sender: TObject);
begin
  ediprve.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediprve.text)));
  edisubtotal.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediqtde.text))*strtofloat(tirapontos(ediprve.text)) );

end;

procedure Tfrmpesqnf.edibscalcstExit(Sender: TObject);
begin
edibscalcst.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edibscalcst.text)));

end;

procedure Tfrmpesqnf.ediicmscalcstExit(Sender: TObject);
begin
ediicmscalcst.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediicmscalcst.text)));

end;

procedure Tfrmpesqnf.rgbtipodestClick(Sender: TObject);
begin
  configuradest;
end;


procedure tfrmpesqnf.configuradest;
begin

with frmdados do
  begin

    cds_clientes.IndexName := 'nome';
    cds_clientes.First;

    cds_fornecedores.IndexName := 'nome';
    cds_fornecedores.First;


    if rgbtipodest.ItemIndex = 0 then
       begin
         cds_temp.Edit;
         cds_temp.FieldByName('cod4nf').AsInteger := cds_clientes.fieldbyname('codigo').asInteger;
       end;
    //endi
    if rgbtipodest.ItemIndex = 1 then
       begin
         cds_temp.Edit;
         cds_temp.FieldByName('cod4nf').AsInteger := cds_fornecedores.fieldbyname('codigo').asInteger;


       end;
    //endi

    if sOpcao = 'A' then
       begin

         cds_temp.Edit;
         cds_temp.FieldByName('cod4nf').AsInteger := cds_nf.fieldbyname('cdest').asInteger;

       end;
    //endi

    //cds_Temp.FieldByName('cod3nf').asInteger := frmdados.cds_emitente.fieldbyname('codigo').asInteger;
    //cds_Temp.FieldByName('cod5nf').asInteger := frmdados.cds_transportador.fieldbyname('codigo').asInteger;




  end;
//endi




with cbxdescdest_cod4nf do
  begin
    if rgbtipodest.ItemIndex = 0 then
       begin
         listsource := frmdados.dts_clientes;
         listfield := 'nome';
         keyfield := 'codigo';


         lblcnpj.caption := frmdados.cds_clientes.fieldbyname('cnpj').asString;
         lblendereco.caption := frmdados.cds_clientes.fieldbyname('endereco').asString;
         lblnumero.caption := frmdados.cds_clientes.fieldbyname('nro').asString;
         lblbairro.caption := frmdados.cds_clientes.fieldbyname('bairro').asString;
         lblcep.caption := frmdados.cds_clientes.fieldbyname('cep').asString;
         lbltelefones.caption := frmdados.cds_clientes.fieldbyname('telefones').asString;
         lblie.caption := frmdados.cds_clientes.fieldbyname('ie').asString;
         if frmdados.cds_Munic.Locate('codigo',frmdados.cds_clientes.fieldbyname('cmun').asInteger,[]) then
            lblmunicipio.caption := frmdados.cds_Munic.fieldbyname('nome').asString
         else
            lblmunicipio.caption := '';
         //endi

         if frmdados.cds_estados.Locate('codigo',frmdados.cds_clientes.fieldbyname('cest').asInteger,[]) then
            lblestado.caption := frmdados.cds_estados.fieldbyname('sigla').asString
         else
            lblestado.caption := '';
         //endi




       end;
    //endif

    if rgbtipodest.ItemIndex = 1 then
       begin
         listsource := frmdados.dts_fornecedores;
         listfield := 'nome';
         keyfield := 'codigo';

         lblcnpj.caption := frmdados.cds_fornecedores.fieldbyname('cnpj').asString;
         lblendereco.caption := frmdados.cds_fornecedores.fieldbyname('endereco').asString;
         lblnumero.caption := frmdados.cds_fornecedores.fieldbyname('nro').asString;
         lblbairro.caption := frmdados.cds_fornecedores.fieldbyname('bairro').asString;
         lblcep.caption := frmdados.cds_fornecedores.fieldbyname('cep').asString;
         lbltelefones.caption := frmdados.cds_fornecedores.fieldbyname('telefones').asString;
         lblie.caption := frmdados.cds_fornecedores.fieldbyname('ie').asString;
         if frmdados.cds_Munic.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cmun').asInteger,[]) then
            lblmunicipio.caption := frmdados.cds_Munic.fieldbyname('nome').asString
         else
            lblmunicipio.caption := '';
         //endi

         if frmdados.cds_estados.Locate('codigo',frmdados.cds_fornecedores.fieldbyname('cest').asInteger,[]) then
            lblestado.caption := frmdados.cds_estados.fieldbyname('sigla').asString
         else
            lblestado.caption := '';
         //endi



       end;
    //endif

  end;
//endth




end;

procedure Tfrmpesqnf.cbxdescdest_cod4nfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.btncancelarClick(Sender: TObject);
begin

  dbgprod.Enabled := true;
  spdprodant.Enabled := true;
  spdprodprox.Enabled := true;
  edicpro.Enabled := true;

  limparprod;

  bloqtribprod;

  if pctprod.TabIndex = 1 then
     begin
       carregafichaprod;
     end;
  //endi

  if edicpro.Enabled then
     edicpro.SetFocus;
  //endi

  sOpcaoprod := 'I';

end;

procedure tfrmpesqnf.gravar;
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin


bFiltrar := false;


with frmdados do
  begin
    aIndex := cds_nf.IndexName;
    if (bInsereD) or (sOpcao = 'I') then
       begin
         bFiltrar := cds_nf.Filtered;
         cds_nf.Filtered := false;

         cds_nf.IndexName := 'codigo';
         cds_nf.Last;
         icodigo := cds_nf.fieldbyname('codigo').asInteger;
         cds_nf.Append;
         cds_nf.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_nf.Edit;
    cds_nf.FieldByName('cemi').asInteger := frmdados.cds_Temp.fieldbyname('cod3nf').asInteger;
    cds_nf.FieldByName('cdest').asInteger := frmdados.cds_Temp.fieldbyname('cod4nf').asInteger;
    cds_nf.FieldByName('ctiponf').asInteger := frmdados.cds_Temp.fieldbyname('cod1nf').asInteger;
    cds_nf.FieldByName('cfreteporconta').asInteger := frmdados.cds_Temp.fieldbyname('cod2nf').asInteger;
    cds_nf.FieldByName('ctransp').asInteger := frmdados.cds_Temp.fieldbyname('cod5nf').asInteger;
    cds_nf.FieldByName('cnatop').asInteger := frmdados.cds_Temp.fieldbyname('cod6nf').asInteger;

    cds_nf.FieldByName('datacad').asString := lbldatacad.Caption;

    cds_nf.fieldbyname('vlrcredicms').asfloat := strtofloat(tirapontos(edivlrcredicms.Text));
    cds_nf.fieldbyname('vlrcrediss').asfloat := strtofloat(tirapontos(edivlrcrediss.Text));



    cds_nf.fieldbyname('vlrreticms').asfloat := strtofloat(tirapontos(edivlrreticms.Text));
    cds_nf.fieldbyname('artricms').asString := ediartricms.Text;

    cds_nf.fieldbyname('aliqapicms').asfloat := strtofloat(tirapontos(edialiqapicms.Text));
    cds_nf.fieldbyname('aliqapiss').asfloat := strtofloat(tirapontos(edialiqapiss.Text));


    cds_nf.fieldbyname('vlrcredipi').asfloat := strtofloat(tirapontos(edivlrcredipi.Text));
    cds_nf.fieldbyname('vlrretipi').asfloat := strtofloat(tirapontos(edivlrretipi.Text));
    cds_nf.fieldbyname('artripi').asString := ediartripi.Text;

    //---
    cds_nf.fieldbyname('aliqapipi').asfloat := strtofloat(tirapontos(edialiqapipi.Text));
    cds_nf.fieldbyname('nnfrefdevol').asString := edinnfrefdevol.Text ;

    //if edihorasai.Text <> '  :  ' then
    cds_nf.FieldByName('horasai').asString := edihorasai.Text;
    //endi
    if (edidatasai.Text <> '00/00/0000')  then
        frmdados.cds_nf.FieldByName('datasai').asString :=  edidatasai.Text;
    //endi

    cds_nf.FieldByName('placavei').asString := ediplacavei.Text;
    cds_nf.FieldByName('quantidade').asString := ediquantidade.Text;
    cds_nf.FieldByName('especie').asString := ediespecie.Text;
    cds_nf.FieldByName('marca').asString := edimarca.Text;
    cds_nf.FieldByName('numero').asString := edinumero.Text;
    cds_nf.FieldByName('pesob').asString := edipesob.Text;
    cds_nf.FieldByName('pesol').asString := edipesol.Text;
    cds_nf.FieldByName('bscalcsubtrib').asfloat :=  strtofloat(tirapontos(edibscalcsubstrib.Text));
    cds_nf.FieldByName('vlricmssubtrib').asfloat :=  strtofloat(tirapontos(edivlricmssubtrib.Text));
    cds_nf.FieldByName('tvlrfrete').asfloat :=  strtofloat(tirapontos(edivlrfrete.Text));
    cds_nf.FieldByName('tvlrseg').asfloat :=  strtofloat(tirapontos(edivlrseg.Text));
    cds_nf.FieldByName('tvlrout').asfloat :=  strtofloat(tirapontos(edivlrout.Text)); 

    cds_nf.FieldByName('nnf').asinteger := strtoint( ediproxnota.Text );
    cds_nf.FieldByName('tvlrout').asfloat :=  strtofloat( tirapontos(edipdesc.text));
    cds_nf.FieldByName('valdesc').asfloat :=  strtofloat( tirapontos(edivaldesc.Text) );
    cds_nf.FieldByName('liquido').asfloat :=  strtofloat(tirapontos(ediliquido.Text));
    cds_nf.FieldByName('din').asfloat :=   strtofloat( tirapontos( edidin.Text ) );
    cds_nf.FieldByName('nparc').asinteger :=  strtoint( edinparc.Text );
    if edidatainic.Text <> '  /  /    ' then
       cds_nf.FieldByName('datainic').asString :=  edidatainic.Text;
    //endi
    cds_nf.FieldByName('periodo').asinteger :=  strtoint(  ediperiodo.Text  );


    if rgbtipodest.ItemIndex = 0 then
       cds_nf.FieldByName('tipodest').asString :='C';
    //endi

    if rgbtipodest.ItemIndex = 1 then
       cds_nf.FieldByName('tipodest').asString :='F';
    //endi


    cds_nf.Post;

    cds_nf.IndexName := aIndex;
    if cds_nf.Filter <> '' then
       cds_nf.Filtered := bFiltrar;
    //endi

  end;
//endth
carregadest;

sOpcao := 'A';
bInsereD := false;

end;

procedure Tfrmpesqnf.tbsprodShow(Sender: TObject);
begin


if (bInsereD) or (sopcao = 'I') then
   gravar;
//endi


sopcaoprod := 'I';
pctprod.TabIndex := 0;

filtraprod;

limparprod;

totprod;

filtracupom;

if edicpro.Enabled then
   edicpro.SetFocus;
//endi

end;

procedure Tfrmpesqnf.limparprod;
begin
  icpro := 0;

  edicpro.Text := '';
  edinpro.Text := '';
  scaux := '';
  ediitem.Text := '0';

  ediqtde.Text := '0,000';
  ediprve.Text := '0,00';
  edisubtotal.Text := '0,00';
  edibscalcst.Text := '0,00';
  ediicmscalcst.Text := '0,00';


  ediiva.Text := '0,00';
  edivlricms.Text := '0,00';
  edibcicms.Text := '0,00';

  edivlripi.Text := '0,00';
  edivlrsubsicms.Text := '0,00';
  edibcsubsicms.Text := '0,00';


  
  //.Text := '0,00';
  //.Text := '0,00';

  edisimplesncm.Text := '';
  
  ckbcompoetnf.Checked := True;
  frmdados.cds_Temp.edit;
  frmdados.cds_Temp.FieldByName('cod1prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod4prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod5prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod6prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod7prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod8prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod9prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod10prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod11prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod12prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod13prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod14prodnf').asInteger := 0;
  

end;


procedure Tfrmpesqnf.limparserv;
begin
  icmobra := 0;

  edicdesc.Text := '';
  edindesc.Text := '';
  ediqtdes.Text := '0,000';
  ediprves.Text := '0,00';
  edisubtotals.Text := '0,00';
  
  frmdados.cds_Temp.edit;
  frmdados.cds_Temp.FieldByName('cod1servnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2servnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3servnf').asInteger := 0;
end;


procedure Tfrmpesqnf.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edisubtotalKeyPress(Sender: TObject; var Key: Char);
begin

  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi



  //key:=#0;

end;

procedure tfrmpesqnf.gravarprod;
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_nfp.IndexName;
    if sOpcaoprod = 'I' then
       begin
         bFiltrar := cds_nfp.Filtered;
         cds_nfp.Filtered := false;

         cds_nfp.IndexName := 'codigo';
         cds_nfp.Last;
         icodigo := cds_nfp.fieldbyname('codigo').asInteger;
         cds_nfp.Append;
         cds_nfp.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi


    cds_nfp.Edit;
    cds_nfp.FieldByName('cpro').asInteger := icpro;
    cds_nfp.FieldByName('npro').asString := edinpro.Text;
    cds_nfp.FieldByName('item').asInteger := strtoint(ediitem.text);
    cds_nfp.FieldByName('caux').asstring := scaux;

    if  ediqtde.text <> '' then
        cds_nfp.FieldByName('qtde').asfloat := strtofloat(tirapontos(ediqtde.text));
    //endi
    if  ediprve.text <> '' then
        cds_nfp.FieldByName('prve').asfloat := strtofloat(tirapontos(ediprve.text));
    //endi
    if  edisubtotal.text <> '' then
        cds_nfp.FieldByName('subtotal').asfloat := strtofloat(tirapontos(edisubtotal.text));
    //endi



    cds_nfp.FieldByName('cod1prodnf').asInteger := cds_Temp.fieldbyname('cod1prodnf').asInteger;
    cds_nfp.FieldByName('cod2prodnf').asInteger := cds_Temp.fieldbyname('cod2prodnf').asInteger; //ipi
    cds_nfp.FieldByName('cod3prodnf').asInteger := cds_Temp.fieldbyname('cod3prodnf').asInteger;
    cds_nfp.FieldByName('cod4prodnf').asInteger := cds_Temp.fieldbyname('cod4prodnf').asInteger;
    cds_nfp.FieldByName('cod5prodnf').asInteger := cds_Temp.fieldbyname('cod5prodnf').asInteger;
    cds_nfp.FieldByName('cod6prodnf').asInteger := cds_Temp.fieldbyname('cod6prodnf').asInteger;
    cds_nfp.FieldByName('cod7prodnf').asInteger := cds_Temp.fieldbyname('cod7prodnf').asInteger;
    cds_nfp.FieldByName('cod8prodnf').asInteger := cds_Temp.fieldbyname('cod8prodnf').asInteger;
    cds_nfp.FieldByName('cod9prodnf').asInteger := cds_Temp.fieldbyname('cod9prodnf').asInteger;  //pis
    cds_nfp.FieldByName('cod10prodnf').asInteger := cds_Temp.fieldbyname('cod10prodnf').asInteger;
    cds_nfp.FieldByName('cod11prodnf').asInteger := cds_Temp.fieldbyname('cod11prodnf').asInteger;
    cds_nfp.FieldByName('cod12prodnf').asInteger := cds_Temp.fieldbyname('cod12prodnf').asInteger;
    cds_nfp.FieldByName('cod13prodnf').asInteger := cds_Temp.fieldbyname('cod13prodnf').asInteger;
    cds_nfp.FieldByName('cod14prodnf').asInteger := cds_Temp.fieldbyname('cod14prodnf').asInteger;


    {

    if cds_Temp.fieldbyname('cod2prodnf').asInteger = 0 then
       begin
         cds_ipi.Filtered := false;
         cds_ipi.Filter := 'cpadrao = 1';
         cds_ipi.Filtered := true;
         cds_nfp.FieldByName('cod2prodnf').asInteger := cds_ipi.FieldByName('codigo').asInteger;
         cds_ipi.Filtered := false;
       end
    else
       begin
         cds_nfp.FieldByName('cod2prodnf').asInteger := cds_Temp.fieldbyname('cod2prodnf').asInteger;
       end;
    //endi

    if cds_Temp.fieldbyname('cod4prodnf').asInteger = 0 then
       begin
         cds_sita.Filtered := false;
         cds_sita.Filter := 'cpadrao = 1';
         cds_sita.Filtered := true;
         cds_nfp.FieldByName('cod4prodnf').asInteger := cds_sita.FieldByName('codigo').asInteger;
         cds_sita.Filtered := false;
       end
    else
       begin
         cds_nfp.FieldByName('cod4prodnf').asInteger := cds_Temp.fieldbyname('cod4prodnf').asInteger;
       end;
    //endi

    if cds_Temp.fieldbyname('cod9prodnf').asInteger = 0 then
       begin
         cds_pis.Filtered := false;
         cds_pis.Filter := 'cpadrao = 1';
         cds_pis.Filtered := true;
         cds_nfp.FieldByName('cod9prodnf').asInteger := cds_pis.FieldByName('codigo').asInteger;
         cds_pis.Filtered := false;
       end
    else
       begin
         cds_nfp.FieldByName('cod9prodnf').asInteger := cds_Temp.fieldbyname('cod9prodnf').asInteger;
       end;
    //endi

    if cds_Temp.fieldbyname('cod10prodnf').asInteger = 0 then
       begin
         cds_cofins.Filtered := false;
         cds_cofins.Filter := 'cpadrao = 1';
         cds_cofins.Filtered := true;
         cds_nfp.FieldByName('cod10prodnf').asInteger := cds_cofins.FieldByName('codigo').asInteger;
         cds_cofins.Filtered := false;
       end
    else
       begin
         cds_nfp.FieldByName('cod10prodnf').asInteger := cds_Temp.fieldbyname('cod10prodnf').asInteger;
       end;
    //endi

    if cds_Temp.fieldbyname('cod11prodnf').asInteger = 0 then
       begin

          if (rgbctipoemi.ItemIndex = 0) then
             begin
               cds_cfop.Filtered := false;
               if lblestado.Caption = lblestadoemi.Caption then
                  begin
                    cds_cfop.Filter := 'ccupom = 0 and ctipoest = 0';
                  end
               else
                  begin
                    cds_cfop.Filter := 'ccupom = 0 and ctipoest = 1';
                  end;
               //endi
               cds_cfop.Filtered := true;
               cds_nfp.FieldByName('cod11prodnf').asInteger := frmdados.cds_cfop.fieldbyname('codigo').asInteger;
               cds_nfp.FieldByName('cod5prodnf').asInteger := frmdados.cds_cfop.fieldbyname('csitb').asInteger;
               cds_nfp.FieldByName('cod1prodnf').asInteger := frmdados.cds_cfop.fieldbyname('cicms').asInteger;
               cds_nfp.FieldByName('cod14prodnf').asInteger := frmdados.cds_cfop.fieldbyname('ccsosn').asInteger;
               //cds_nfp.FieldByName('cod2prodnf').asInteger := frmdados.cds_cfop.fieldbyname('cipi').asInteger;
               //cds_nfp.FieldByName('cod9prodnf').asInteger := frmdados.cds_cfop.fieldbyname('cpis').asInteger;
               //cds_nfp.FieldByName('cod10prodnf').asInteger := frmdados.cds_cfop.fieldbyname('ccofins').asInteger;
             end
          else
             begin
               cds_cfop.Filtered := false;
               if lblestado.Caption = lblestadoemi.Caption then
                  begin
                    cds_cfop.Filter := 'cpadrao = 1 and ctipoest = 0';
                  end
               else
                  begin
                    cds_cfop.Filter := 'cpadrao = 1 and ctipoest = 1';
                  end;
               //endi
               cds_cfop.Filtered := true;
               cds_nfp.FieldByName('cod11prodnf').asInteger := frmdados.cds_cfop.fieldbyname('codigo').asInteger;
             end;
          //endi

          cds_cfop.Filtered := false;
       end
    else
       begin
         cds_nfp.FieldByName('cod11prodnf').asInteger := cds_Temp.fieldbyname('cod11prodnf').asInteger;
       end;
    //end


    }

    //cds_nfp.FieldByName('cod11prodnf').asInteger := cds_Temp.fieldbyname('cod11prodnf').asInteger;

    if edibscalcst.text <> '' then
       cds_nfp.FieldByName('bscalcst').asfloat := strtofloat(tirapontos(edibscalcst.text));
    //endi
    if ediicmscalcst.text <> '' then
       cds_nfp.FieldByName('icmscalcst').asfloat := strtofloat(tirapontos(ediicmscalcst.text));
    //endi

    if ediiva.text <> '' then
       cds_nfp.FieldByName('iva').asfloat := strtofloat(tirapontos(ediiva.text));
    //endi

    if edivlricms.text <> '' then
       cds_nfp.FieldByName('vlricms').asfloat := strtofloat(tirapontos(edivlricms.text));
    //endi

    if edibcicms.text <> '' then
       cds_nfp.FieldByName('bcicms').asfloat := strtofloat(tirapontos(edibcicms.text));
    //endi
    
    if edivlrsubsicms.text <> '' then
       cds_nfp.FieldByName('vlrsubsicms').asfloat := strtofloat(tirapontos(edivlrsubsicms.text));
    //endi

    if edibcsubsicms.text <> '' then
       cds_nfp.FieldByName('bcsubsicms').asfloat := strtofloat(tirapontos(edibcsubsicms.text));
    //endi

    if edivlripi.text <> '' then
       cds_nfp.FieldByName('vlripi').asfloat := strtofloat(tirapontos(edivlripi.text));
    //endi


    //if .text <> '' then
    //   cds_nfp.FieldByName('').asfloat := strtofloat(tirapontos(.text));
    //endi
    //if .text <> '' then
    //   cds_nfp.FieldByName('').asfloat := strtofloat(tirapontos(.text));
    //endi


    cds_nfp.FieldByName('simplesncm').asString := edisimplesncm.text;


    if ckbcompoetnf.Checked then
       cds_nfp.FieldByName('compoetnf').asString  := 'T'
    else
       cds_nfp.FieldByName('compoetnf').asString  := 'F';
    //endi


    cds_nfp.Post;

    cds_nfp.IndexName := aIndex;
    if (cds_nfp.Filter <> '') and (sOpcaoprod = 'I') then
       begin
         cds_nfp.Filtered := bFiltrar;
       end;
    //endi

    if sOpcaoprod = 'I' then
       cds_nfp.Last;
    //endi



  end;
//endth
sOpcaoprod := 'I';
end;



procedure tfrmpesqnf.gravarserv;
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_nfs.IndexName;
    if sOpcaoserv = 'I' then
       begin
         bFiltrar := cds_nfs.Filtered;
         cds_nfs.Filtered := false;

         cds_nfs.IndexName := 'codigo';
         cds_nfs.Last;
         icodigo := cds_nfs.fieldbyname('codigo').asInteger;
         cds_nfs.Append;
         cds_nfs.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi

    cds_nfs.Edit;
    cds_nfs.FieldByName('cdesc').asInteger := icmobra;
    cds_nfs.FieldByName('ndesc').asString := edindesc.Text;
    if  ediqtdes.text <> '' then
        cds_nfs.FieldByName('qtde').asfloat := strtofloat(tirapontos(ediqtdes.text));
    //endi
    if  ediprves.text <> '' then
        cds_nfs.FieldByName('prve').asfloat := strtofloat(tirapontos(ediprves.text));
    //endi
    if  edisubtotals.text <> '' then
        cds_nfs.FieldByName('subtotal').asfloat := strtofloat(tirapontos(edisubtotals.text));
    //endi
    cds_nfs.FieldByName('cod1servnf').asInteger := cds_Temp.fieldbyname('cod1servnf').asInteger;
    cds_nfs.FieldByName('cod2servnf').asInteger := cds_Temp.fieldbyname('cod2servnf').asInteger;
    cds_nfs.FieldByName('cod3servnf').asInteger := cds_Temp.fieldbyname('cod3servnf').asInteger;


    cds_nfs.Post;

    cds_nfs.IndexName := aIndex;
    if (cds_nfs.Filter <> '') and (sOpcaoserv = 'I') then
       begin
         cds_nfs.Filtered := bFiltrar;
       end;
    //endi

    if sOpcaoserv = 'I' then
       cds_nfs.Last;
    //endi



  end;
//endth
sOpcaoserv := 'I';
end;


procedure Tfrmpesqnf.btngravaprodClick(Sender: TObject);
begin
  if edinpro.Text = '' then
     exit;
  //endi

  gravarprod;

  dbgprod.Enabled := true;
  spdprodant.Enabled := true;
  spdprodprox.Enabled := true;
  edicpro.Enabled := true;

  if pctprod.TabIndex = 1 then
     begin

       if ckbatualiza.Checked then
          begin
            if frmdados.cds_produtos.Locate('codigo',frmdados.cds_nfp.fieldbyname('cpro').asInteger,[]) then
               begin

                 frmdados.cds_produtos.Edit;
                 frmdados.cds_produtos.FieldByName('cicms').AsInteger := frmdados.cds_temp.fieldbyname('cod1prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('cipi').AsInteger := frmdados.cds_temp.fieldbyname('cod2prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('ccfncm').AsInteger := frmdados.cds_temp.fieldbyname('cod3prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('csita').AsInteger := frmdados.cds_temp.fieldbyname('cod4prodnf').asInteger;
                 //frmdados.cds_produtos.FieldByName('csitb').AsInteger := frmdados.cds_temp.fieldbyname('cod5prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('cmodbscalc').AsInteger := frmdados.cds_temp.fieldbyname('cod6prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('cmodbscalcst').AsInteger := frmdados.cds_temp.fieldbyname('cod7prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('cvii').AsInteger := frmdados.cds_temp.fieldbyname('cod8prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('cpis').AsInteger := frmdados.cds_temp.fieldbyname('cod9prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('ccofins').AsInteger := frmdados.cds_temp.fieldbyname('cod10prodnf').asInteger;
                 //frmdados.cds_produtos.FieldByName('ccfop').AsInteger := frmdados.cds_temp.fieldbyname('cod11prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('coimp').AsInteger := frmdados.cds_temp.fieldbyname('cod12prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('cund').AsInteger := frmdados.cds_temp.fieldbyname('cod13prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('ccsosn').AsInteger := frmdados.cds_temp.fieldbyname('cod14prodnf').asInteger;
                 frmdados.cds_produtos.FieldByName('simplesncm').Asstring := edisimplesncm.Text;
                 frmdados.cds_produtos.FieldByName('bscalcst').Asstring := edibscalcst.Text;
                 frmdados.cds_produtos.FieldByName('icmscalcst').Asstring := ediicmscalcst.Text;

                 if ckbcompoetnf.Checked  then
                     frmdados.cds_produtos.fieldbyname('compoetnf').asString := 'T'
                 else
                    frmdados.cds_produtos.fieldbyname('compoetnf').asString := 'F';
                 //endi

                 frmdados.cds_produtos.Post;


               end;
            //endi


          end;
       //endi

       if ckbproximoreg.Checked then
          begin
            spdprodprox.Click;
          end;
       //endi

     end;
  //endi


  totprod;

  limparprod;

  bloqtribprod;

  if pctprod.TabIndex = 1 then
     begin
       carregafichaprod;
     end;
  //endi

  if edicpro.Enabled then
     edicpro.SetFocus;
  //endi

  sOpcaoprod := 'I';




end;

procedure tfrmpesqnf.carregafichaprod;
begin
with frmdados do
  begin
    //sOpcaoprod := 'A';
    //edibscalcst.Text := frmdados.cds_nfp.fieldbyname('').asfloat

    lblproduto.Caption := frmdados.cds_nfp.fieldbyname('npro').asString;
    //ediitem.text := cds_nfp.FieldByName('item').asString;

    edibscalcst.text   := formatfloat('###,###,##0.00', cds_nfp.FieldByName('bscalcst').asfloat);
    ediicmscalcst.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('icmscalcst').asfloat);
    edisimplesncm.text := cds_nfp.FieldByName('simplesncm').asString;
    ediiva.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('iva').asfloat);

    edivlricms.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('vlricms').asfloat);

    edibcicms.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('bcicms').asfloat);

    edivlrsubsicms.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('vlrsubsicms').asfloat);
    edibcsubsicms.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('bcsubsicms').asfloat);


    edivlripi.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('vlripi').asfloat);
    




    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1prodnf').asInteger := cds_nfp.FieldByName('cod1prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2prodnf').asInteger := cds_nfp.FieldByName('cod2prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3prodnf').asInteger := cds_nfp.FieldByName('cod3prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod4prodnf').asInteger := cds_nfp.FieldByName('cod4prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod5prodnf').asInteger := cds_nfp.FieldByName('cod5prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod6prodnf').asInteger := cds_nfp.FieldByName('cod6prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod7prodnf').asInteger := cds_nfp.FieldByName('cod7prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod8prodnf').asInteger := cds_nfp.FieldByName('cod8prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod9prodnf').asInteger := cds_nfp.FieldByName('cod9prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod10prodnf').asInteger := cds_nfp.FieldByName('cod10prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11prodnf').asInteger := cds_nfp.FieldByName('cod11prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod12prodnf').asInteger := cds_nfp.FieldByName('cod12prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod14prodnf').asInteger := cds_nfp.FieldByName('cod14prodnf').asInteger;

    //frmdados.cds_Temp.fieldbyname('cod13prodnf').asInteger := cds_nfp.FieldByName('cod13prodnf').asInteger;


  end;
//endi

end;



procedure tfrmpesqnf.carregafichaserv;
begin
with frmdados do
  begin
    sOpcaoserv := 'A';
    //edibscalcst.Text := frmdados.cds_nfp.fieldbyname('').asfloat

    lblndesc.Caption := frmdados.cds_nfs.fieldbyname('ndesc').asString;


    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1servnf').asInteger := cds_nfs.FieldByName('cod1servnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2servnf').asInteger := cds_nfs.FieldByName('cod2servnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3servnf').asInteger := cds_nfs.FieldByName('cod3servnf').asInteger;


  end;
//endi

end;






procedure Tfrmpesqnf.spdprodantClick(Sender: TObject);
begin
//sOpcaoprod := 'A';
frmdados.cds_nfp.Prior;
carregafichaprod;

end;

procedure Tfrmpesqnf.spdprodproxClick(Sender: TObject);
begin
//sOpcaoprod := 'A';
frmdados.cds_nfp.Next;
carregafichaprod;

end;

procedure Tfrmpesqnf.ediqtdeExit(Sender: TObject);
begin
 ediqtde.Text := formatfloat('###,###,##0.000', strtofloat(tirapontos(ediqtde.text)));
 edisubtotal.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediqtde.text))*strtofloat(tirapontos(ediprve.text)) );

 if strtofloat(tirapontos(edibscalcst.Text)) = 0 then
    edibscalcst.Text := formatfloat('###,###,##0.00',fbscalcst * strtofloat( tirapontos(  ediqtde.Text  )  )      )  ;


 if strtofloat(tirapontos(ediicmscalcst.Text)) = 0 then
    ediicmscalcst.Text := formatfloat('###,###,##0.00', ficmscalcst * strtofloat( tirapontos(  ediqtde.Text  )  ) );


end;

procedure Tfrmpesqnf.edisubtotalExit(Sender: TObject);
begin
edisubtotal.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edisubtotal.text)));
end;

procedure Tfrmpesqnf.edicproKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqnf.edinproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqnf.cbxdescund_cod13prodnfKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqnf.tbstributacaoShow(Sender: TObject);
begin
sOpcaoprod := 'I';
bloqtribprod;
carregafichaprod;
end;

procedure Tfrmpesqnf.btnalterarprodClick(Sender: TObject);
begin

if frmdados.cds_nfp.RecordCount = 0 then
   exit;
//endi

sopcaoprod := 'A';
icpro := frmdados.cds_nfp.fieldbyname('cpro').asInteger;
edicpro.Text := frmdados.cds_nfp.fieldbyname('cpro').asString;
edinpro.Text := frmdados.cds_nfp.fieldbyname('npro').asString;
ediitem.text := inttostr(frmdados.cds_nfp.FieldByName('item').asInteger);

scaux := frmdados.cds_nfp.fieldbyname('caux').asString;



ediqtde.Text := formatfloat('###,###,##0.000',frmdados.cds_nfp.fieldbyname('qtde').asfloat);
ediprve.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('prve').asfloat);
edisubtotal.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('subtotal').asfloat);

frmdados.cds_Temp.Edit;
frmdados.cds_temp.FieldByName('cod1prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod1prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod2prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod2prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod3prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod3prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod4prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod4prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod5prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod5prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod6prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod6prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod7prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod7prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod8prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod8prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod9prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod9prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod10prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod10prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod11prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod11prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod12prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod12prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod13prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod13prodnf').asInteger;
frmdados.cds_temp.FieldByName('cod14prodnf').AsInteger := frmdados.cds_nfp.fieldbyname('cod14prodnf').asInteger;


ediiva.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('iva').asfloat);

edivlricms.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('vlricms').asfloat);

edibcicms.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('bcicms').asfloat);

edivlrsubsicms.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('vlrsubsicms').asfloat);

edibcsubsicms.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('bcsubsicms').asfloat);

edivlripi.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('vlripi').asfloat);




//edi.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('').asfloat);
//edi.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('').asfloat);


edibscalcst.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('bscalcst').asfloat);
ediicmscalcst.Text := formatfloat('###,###,##0.00',frmdados.cds_nfp.fieldbyname('icmscalcst').asfloat);

edisimplesncm.Text := frmdados.cds_nfp.fieldbyname('simplesncm').asString;


if frmdados.cds_nfp.fieldbyname('compoetnf').asString = 'T' then
   ckbcompoetnf.Checked := true
else
   ckbcompoetnf.Checked := false;
//endi




//frmdados.cds_Temp.fieldbyname('cod13prodnf').asInteger := frmdados.cds_nfp.FieldByName('cod13prodnf').asInteger;





dbgprod.Enabled := false;
spdprodant.Enabled := false;
spdprodprox.Enabled := false;
edicpro.Enabled := false;

desblotribprod;

if edinpro.Enabled then
   edinpro.SetFocus;
//endi

end;

procedure tfrmpesqnf.bloqtribprod;
begin
cbxdescicms_cod1prodnf.Enabled := false;
cbxdescipi_cod2prodnf.Enabled := false;
cbxdesccf_cod3prodnf.Enabled := false;
cbxdescsita_cod4prodnf.Enabled := false;
cbxdescsitb_cod5prodnf.Enabled := false;
cbxdescmodbs_cod6prodnf.Enabled := false;
cbxdescmodbst_cod7prodnf.Enabled := false;
cbxdescvii_cod8prodnf.Enabled := false;
cbxdescpis_cod9prodnf.Enabled := false;
cbxdesccofins_cod10prodnf.Enabled := false;
cbxdesccfop_cod11prodnf.Enabled := false;
cbxdescoimp_cod12prodnf.Enabled := false;
cbxdesccsosn_cod14prodnf.Enabled := false;

edibscalcst.Enabled := false;
ediicmscalcst.Enabled := false;

ediiva.Enabled := false;

edivlricms.Enabled := false;

edibcicms.Enabled := false;


edivlripi.Enabled := false;

edivlrsubsicms.Enabled := false;
edibcsubsicms.Enabled := false;


edisimplesncm.Enabled := false;
ckbcompoetnf.Enabled := false;
end;

procedure tfrmpesqnf.bloqtribserv;
begin
cbxdesctiposerv_cod1servnf.Enabled := false;
cbxdescrcserv_cod2servnf.Enabled := false;
cbxdescimpostoi_cod3servnf.Enabled := false;
end;

procedure tfrmpesqnf.desblotribprod;
begin
cbxdescicms_cod1prodnf.Enabled := true;
cbxdescipi_cod2prodnf.Enabled := true;
cbxdesccf_cod3prodnf.Enabled := true;
cbxdescsita_cod4prodnf.Enabled := true;
cbxdescsitb_cod5prodnf.Enabled := true;
cbxdescmodbs_cod6prodnf.Enabled := true;
cbxdescmodbst_cod7prodnf.Enabled := true;
cbxdescvii_cod8prodnf.Enabled := true;
cbxdescpis_cod9prodnf.Enabled := true;
cbxdesccofins_cod10prodnf.Enabled := true;
cbxdesccfop_cod11prodnf.Enabled := true;
cbxdescoimp_cod12prodnf.Enabled := true;
cbxdesccsosn_cod14prodnf.Enabled := true;

edibscalcst.Enabled := true;
ediicmscalcst.Enabled := true;

ediiva.Enabled := true;

edivlricms.Enabled := true;

edibcicms.Enabled := true;


edivlrsubsicms.Enabled := true;
edibcsubsicms.Enabled := true;

edivlripi.Enabled := true;

edisimplesncm.Enabled := true;

ckbcompoetnf.Enabled := true;

end;


procedure tfrmpesqnf.desblotribserv;
begin
cbxdesctiposerv_cod1servnf.Enabled := true;
cbxdescrcserv_cod2servnf.Enabled := true;
cbxdescimpostoi_cod3servnf.Enabled := true;

end;





procedure tfrmpesqnf.buscarprod;
begin
  if edicpro.Text = '' then
     exit;
  //endi

  with frmdados do
    begin
      if cds_produtos.Locate('caux',edicpro.Text,[]) then
         begin
           mostraprod;
         end
      else
         begin
           if cds_produtos.Locate('cbar',edicpro.Text,[]) then
              begin
                mostraprod;
              end
           else
              begin
                if cds_produtos.Locate('codigo',edicpro.Text,[]) then
                   begin
                     mostraprod;
                   end
                else
                   begin
                     //showmessage('CÓDIGO NÃO EXISTE...');
                     //edicpro.SetFocus;

                     if application.MessageBox('CÓDIGO NÃO ESTÁ CADASTRADO, DESEJA PROSEGUIR?','AVISO',Mb_YesNo+ Mb_IconInformation + Mb_DefButton2 ) = 6  then
                        begin
                          icpro :=  strtoint(edicpro.text);
                          
                          edinpro.SetFocus;
                        end
                     else
                        begin
                          edicpro.SetFocus;
                        end;
                     //endi



                   end
                //endi

              end
           //endi

         end;
      //endi

    end;
  //endth
end;


procedure tfrmpesqnf.buscarserv;
begin
  if edicdesc.Text = '' then
     exit;
  //endi
  with frmdados do
    begin
      if cds_cmobra.Locate('codigo',edicdesc.Text,[]) then
         begin
           mostraserv;
         end
      else
         begin
           showmessage('CÓDIGO NÃO EXISTE...');
           edicdesc.SetFocus;
         end;
      //endi
    end;
  //endth
end;



procedure tfrmpesqnf.mostraprod;
begin
  with frmdados do
    begin

      icpro := cds_produtos.fieldbyname('codigo').asInteger;
      edinpro.Text := cds_produtos.fieldbyname('descricao').asString;
      scaux := cds_produtos.fieldbyname('caux').asString;



      ediiva.Text := formatfloat('###,###,##0.00',cds_produtos.fieldbyname('iva').asfloat);

      //edivlricms.Text := formatfloat('###,###,##0.00',cds_produtos.fieldbyname('icms').asfloat);
      //edivlripi.Text := formatfloat('###,###,##0.00',cds_produtos.fieldbyname('iva').asfloat);

      //.Text := formatfloat('###,###,##0.00',cds_produtos.fieldbyname('').asfloat);
      //.Text := formatfloat('###,###,##0.00',cds_produtos.fieldbyname('').asfloat);

      fbscalcst := cds_produtos.fieldbyname('bscalcst').asfloat;
      ficmscalcst := cds_produtos.fieldbyname('icmscalcst').asfloat;


      edisimplesncm.Text := cds_produtos.fieldbyname('simplesncm').asString;


      ediprve.Text := formatfloat('###,###,##0.00',cds_produtos.fieldbyname('prve').asfloat);

      cds_temp.Edit;
      //cds_temp.FieldByName('cod1prodnf').AsInteger := cds_produtos.fieldbyname('cicms').asInteger;
      //cds_temp.FieldByName('cod2prodnf').AsInteger := cds_produtos.fieldbyname('cipi').asInteger;
      cds_temp.FieldByName('cod3prodnf').AsInteger := cds_produtos.fieldbyname('ccfncm').asInteger;
      //cds_temp.FieldByName('cod4prodnf').AsInteger := cds_produtos.fieldbyname('csita').asInteger;
      //cds_temp.FieldByName('cod5prodnf').AsInteger := cds_produtos.fieldbyname('csitb').asInteger;
      cds_temp.FieldByName('cod6prodnf').AsInteger := cds_produtos.fieldbyname('cmodbscalc').asInteger;
      cds_temp.FieldByName('cod7prodnf').AsInteger := cds_produtos.fieldbyname('cmodbscalcst').asInteger;
      cds_temp.FieldByName('cod8prodnf').AsInteger := cds_produtos.fieldbyname('cvii').asInteger;
      //cds_temp.FieldByName('cod9prodnf').AsInteger := cds_produtos.fieldbyname('cpis').asInteger;
      //cds_temp.FieldByName('cod10prodnf').AsInteger := cds_produtos.fieldbyname('ccofins').asInteger;
      //cds_temp.FieldByName('cod11prodnf').AsInteger := cds_produtos.fieldbyname('ccfop').asInteger;
      cds_temp.FieldByName('cod12prodnf').AsInteger := cds_produtos.fieldbyname('coimp').asInteger;
      cds_temp.FieldByName('cod13prodnf').AsInteger := cds_produtos.fieldbyname('cund').asInteger;
      //cds_temp.FieldByName('cod14prodnf').AsInteger := cds_produtos.fieldbyname('ccsosn').asInteger;
      
      if edisimplesncm.Text = '' then
         edisimplesncm.Text := '99999999';
      //endi

      cds_temp.FieldByName('cod4prodnf').AsInteger := cds_produtos.fieldbyname('csita').asInteger;
      if cds_temp.fieldbyname('cod4prodnf').asInteger = 0 then
         begin
           cds_sita.Filtered := false;
           cds_sita.Filter := 'cpadrao = 1';
           cds_sita.Filtered := true;
           cds_temp.FieldByName('cod4prodnf').asInteger := cds_sita.FieldByName('codigo').asInteger;
           cds_sita.Filtered := false;
         end;
      //endi

      if frmdados.cds_cupom.RecordCount = 0 then
         begin
           cds_temp.FieldByName('cod1prodnf').AsInteger := cds_produtos.fieldbyname('cicms').asInteger;
           cds_temp.FieldByName('cod11prodnf').AsInteger := cds_produtos.fieldbyname('ccfop').asInteger;
           if  cds_temp.FieldByName('cod11prodnf').AsInteger = 0 then
               begin
                 if cds_icms.Locate('codigo',cds_temp.FieldByName('cod1prodnf').AsInteger,[]) then
                    begin
                      if frmpesqnf.lblestado.Caption = frmpesqnf.lblestadoemi.Caption then
                         begin
                           cds_temp.FieldByName('cod11prodnf').asInteger := cds_icms.fieldbyname('ccfop').asInteger;
                         end
                      else
                         begin
                           cds_temp.FieldByName('cod11prodnf').asInteger := cds_icms.fieldbyname('ccfopf').asInteger;
                         end;
                      //endi
                    end;
                 //endi
               end;
           //endi

           cds_temp.FieldByName('cod5prodnf').AsInteger := cds_produtos.fieldbyname('csitb').asInteger;
           if  cds_temp.FieldByName('cod5prodnf').AsInteger = 0 then
               begin
                 if cds_icms.Locate('codigo',cds_temp.FieldByName('cod1prodnf').AsInteger,[]) then
                    begin
                      cds_temp.FieldByName('cod5prodnf').asInteger := cds_icms.fieldbyname('csitb').asInteger;
                    end;
                 //endi
               end;
           //endi

           cds_temp.FieldByName('cod14prodnf').AsInteger := cds_produtos.fieldbyname('ccsosn').asInteger;
           if  cds_temp.FieldByName('cod14prodnf').AsInteger = 0 then
               begin
                 if cds_icms.Locate('codigo',cds_temp.FieldByName('cod1prodnf').AsInteger,[]) then
                    begin
                      cds_temp.FieldByName('cod14prodnf').asInteger := cds_icms.fieldbyname('ccsosn').asInteger;
                    end;
                 //endi
               end;
           //endi

           cds_temp.FieldByName('cod2prodnf').AsInteger := cds_produtos.fieldbyname('cipi').asInteger;
           if cds_temp.fieldbyname('cod2prodnf').asInteger = 0 then
              begin
                cds_ipi.Filtered := false;
                cds_ipi.Filter := 'cpadrao = 1';
                cds_ipi.Filtered := true;
                cds_temp.FieldByName('cod2prodnf').asInteger := cds_ipi.FieldByName('codigo').asInteger;
                cds_ipi.Filtered := false;
              end;
           //endi

           cds_temp.FieldByName('cod9prodnf').AsInteger := cds_produtos.fieldbyname('cpis').asInteger;
           if cds_temp.fieldbyname('cod9prodnf').asInteger = 0 then
              begin
                cds_pis.Filtered := false;
                cds_pis.Filter := 'cpadrao = 1';
                cds_pis.Filtered := true;
                cds_temp.FieldByName('cod9prodnf').asInteger := cds_pis.FieldByName('codigo').asInteger;
                cds_pis.Filtered := false;
              end;
           //endi

           cds_temp.FieldByName('cod10prodnf').AsInteger := cds_produtos.fieldbyname('ccofins').asInteger;
           if cds_temp.fieldbyname('cod10prodnf').asInteger = 0 then
              begin
                cds_cofins.Filtered := false;
                cds_cofins.Filter := 'cpadrao = 1';
                cds_cofins.Filtered := true;
                cds_temp.FieldByName('cod10prodnf').asInteger := cds_cofins.FieldByName('codigo').asInteger;
                cds_cofins.Filtered := false;
              end;
           //endi
         end
      else
         begin
           cds_cfop.Filtered := false;
           if lblestado.Caption = lblestadoemi.Caption then
              begin
                cds_cfop.Filter := 'ccupom = 0 and ctipoest = 0';
              end
           else
              begin
                cds_cfop.Filter := 'ccupom = 0 and ctipoest = 1';
               end;
           //endi
           cds_cfop.Filtered := true;
           cds_temp.FieldByName('cod11prodnf').asInteger := cds_cfop.fieldbyname('codigo').asInteger;
           cds_temp.FieldByName('cod5prodnf').asInteger := cds_cfop.fieldbyname('csitb').asInteger;
           cds_temp.FieldByName('cod1prodnf').asInteger := cds_cfop.fieldbyname('cicms').asInteger;
           cds_temp.FieldByName('cod14prodnf').asInteger := cds_cfop.fieldbyname('ccsosn').asInteger;
           cds_temp.FieldByName('cod2prodnf').asInteger := cds_cfop.fieldbyname('cipi').asInteger;
           cds_temp.FieldByName('cod9prodnf').asInteger := cds_cfop.fieldbyname('cpis').asInteger;
           cds_temp.FieldByName('cod10prodnf').asInteger := cds_cfop.fieldbyname('ccofins').asInteger;
           cds_temp.Filtered := false;

         end;
      //endi



      if cds_produtos.fieldbyname('compoetnf').asString = 'T' then
         ckbcompoetnf.Checked := true
      else
         ckbcompoetnf.Checked := false;
      //endi



    end;
  //endth
end;


procedure tfrmpesqnf.mostraserv;
begin
  with frmdados do
    begin
      icmobra := cds_cmobra.fieldbyname('codigo').asInteger;
      edindesc.Text := cds_cmobra.fieldbyname('descricao').asString;
      ediprves.Text := formatfloat('###,###,##0.00',cds_cmobra.fieldbyname('prve').asfloat);

      cds_temp.Edit;
      cds_temp.FieldByName('cod1servnf').AsInteger := cds_cmobra.fieldbyname('ctiposerv').asInteger;
      cds_temp.FieldByName('cod2servnf').AsInteger := cds_cmobra.fieldbyname('crcserv').asInteger;
      cds_temp.FieldByName('cod3servnf').AsInteger := cds_cmobra.fieldbyname('cimpostoi').asInteger;


    end;
  //endth
end;




procedure Tfrmpesqnf.edicproExit(Sender: TObject);
begin
  buscarprod;

  edisubtotal.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.text))*strtofloat(tirapontos(ediqtde.text)) );

  with frmdados do
    begin


           sql_consulta.Close;
           sql_consulta.SQL.Clear;
           sql_consulta.SQL.Add('select count(*)+1 as tot from nfp where cnf = :cnf');
           sql_consulta.Params.ParamByName('cnf').AsString := frmdados.cds_nf.fieldbyname('codigo').asString;
           sql_consulta.Open;

           ediitem.Text := sql_consulta.fieldbyname('tot').AsString;



    end;

end;

procedure Tfrmpesqnf.SpeedButton1Click(Sender: TObject);
begin
  frmconsprodutos := tfrmconsprodutos.Create(self);
  frmconsprodutos.ShowModal;
  frmconsprodutos.Free;



  //if frmpesqprodutos = nil then
  //   begin
  //     frmpesqprodutos := tfrmpesqprodutos.create(self);
  //     frmpesqprodutos.show;
  //   end
  //else
  //   begin
  //     showmessage('CADASTRO DE PRODUTOS JÁ ENCONTRA-SE ABERTO');
  //   end;
  //endi


end;

procedure tfrmpesqnf.filtraprod;
begin

with frmdados do
  begin

    cds_nfp.Active := false;
    cds_nfpcnf.DefaultExpression := inttostr(cds_nf.fieldbyname('codigo').asInteger);
    cds_nfp.Filtered := false;
    cds_nfp.Filter := 'cnf = '+ inttostr(cds_nf.fieldbyname('codigo').asInteger);
    cds_nfp.Filtered := true;

    cds_nfp.Active := true;

  end;
//endi

end;


procedure tfrmpesqnf.filtraserv;
begin

with frmdados do
  begin

    cds_nfs.Active := false;
    cds_nfscnf.DefaultExpression := inttostr(cds_nf.fieldbyname('codigo').asInteger);
    cds_nfs.Filtered := false;
    cds_nfs.Filter := 'cnf = '+ inttostr(cds_nf.fieldbyname('codigo').asInteger);
    cds_nfs.Filtered := true;

    cds_nfs.Active := true;

  end;
//endi

end;



procedure tfrmpesqnf.carregadest;
begin
if frmdados.cds_nf.FieldByName('tipodest').asString = 'C' then
   begin
     frmdados.cds_clientes.Locate('codigo',frmdados.cds_nf.FieldByName('cdest').asInteger,[]);
     lbldest.Caption := frmdados.cds_clientes.fieldbyname('nome').asString;
   end;
//end
if frmdados.cds_nf.FieldByName('tipodest').asString = 'F' then
   begin
     frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nf.FieldByName('cdest').asInteger,[]);
     lbldest.Caption := frmdados.cds_fornecedores.fieldbyname('nome').asString;
   end;
//end

end;

procedure Tfrmpesqnf.edicdescExit(Sender: TObject);
begin
  buscarserv;

  edisubtotals.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprves.text))*strtofloat(tirapontos(ediqtdes.text)) );

end;

procedure Tfrmpesqnf.edicdescKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqnf.ediqtdesExit(Sender: TObject);
begin
 ediqtdes.Text := formatfloat('###,###,##0.000', strtofloat(tirapontos(ediqtdes.text)));
 edisubtotals.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediqtdes.text))*strtofloat(tirapontos(ediprves.text)) );

end;

procedure Tfrmpesqnf.ediqtdesKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.ediprvesExit(Sender: TObject);
begin
  ediprves.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediprves.text)));
  edisubtotals.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediqtdes.text))*strtofloat(tirapontos(ediprves.text)) );

end;

procedure Tfrmpesqnf.edisubtotalsExit(Sender: TObject);
begin
edisubtotals.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edisubtotals.text)));

end;

procedure Tfrmpesqnf.btngravaservClick(Sender: TObject);
begin
  if edindesc.Text = '' then
     exit;
  //endi

  gravarserv;
  limparserv;

  if edicdesc.Enabled then
     edicdesc.SetFocus;
  //endi

  if pctserv.TabIndex = 1 then
     carregafichaserv;
  //endi


  dbgserv.Enabled := true;
  spdservant.Enabled := true;
  spdservprox.Enabled := true;
  edicdesc.Enabled := true;

  totserv;


  bloqtribserv;

  sOpcaoserv := 'I';

end;

procedure Tfrmpesqnf.btnalteraservClick(Sender: TObject);
begin

if frmdados.cds_nfp.RecordCount = 0 then
   exit;
//endi


sopcaoserv := 'A';
icmobra := frmdados.cds_nfs.fieldbyname('cdesc').asInteger;
edicdesc.Text := frmdados.cds_nfs.fieldbyname('cdesc').asString;
edindesc.Text := frmdados.cds_nfs.fieldbyname('ndesc').asString;
ediqtdes.Text := formatfloat('###,###,##0.000',frmdados.cds_nfs.fieldbyname('qtde').asfloat);
ediprves.Text := formatfloat('###,###,##0.00',frmdados.cds_nfs.fieldbyname('prve').asfloat);
edisubtotals.Text := formatfloat('###,###,##0.00',frmdados.cds_nfs.fieldbyname('subtotal').asfloat);


dbgserv.Enabled := false;
spdservant.Enabled := false;
spdservprox.Enabled := false;
edicdesc.Enabled := false;

desblotribserv;

if edindesc.Enabled then
   edindesc.SetFocus;
//endi

end;

procedure Tfrmpesqnf.btnexcluirprodClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_nfp.Delete;
       if pctprod.TabIndex = 1 then
          carregafichaprod;
       //endi
     end;
  //endi

end;

procedure Tfrmpesqnf.btnexcluiservClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_nfs.Delete;
       if pctserv.TabIndex = 1 then
          carregafichaserv;
       //endi
     end;
  //endi

end;

procedure Tfrmpesqnf.spdservantClick(Sender: TObject);
begin
frmdados.cds_nfs.Prior;
carregafichaserv;

end;

procedure Tfrmpesqnf.spdservproxClick(Sender: TObject);
begin
frmdados.cds_nfs.Next;
carregafichaserv;

end;

procedure Tfrmpesqnf.SpeedButton2Click(Sender: TObject);
begin
  frmconsserv := tfrmconsserv.Create(self);
  frmconsserv.ShowModal;
  frmconsserv.Free;

end;

procedure Tfrmpesqnf.tbsservShow(Sender: TObject);
begin


if (bInsereD) or (sopcao = 'I')  then
   gravar;
//endi

sopcaoserv := 'I';
pctserv.TabIndex := 0;

filtraserv;

limparserv;

totserv;

if edicdesc.Enabled then
   edicdesc.SetFocus;
//endi

end;

procedure Tfrmpesqnf.tbstribservShow(Sender: TObject);
begin
sOpcaoServ := 'I';
bloqtribserv;
carregafichaserv;

end;

procedure Tfrmpesqnf.totprod;
var ftotal:real;
var codigo:integer;
begin

with frmdados do
  begin
    codigo := cds_nfp.fieldbyname('codigo').asInteger;
  end;
//endth



filtraprod;

ftotal := 0;
with frmdados do
  begin
    cds_nfp.DisableControls;
    cds_nfp.First;
    while not cds_nfp.Eof do
      begin
        ftotal := ftotal + cds_nfp.fieldbyname('subtotal').asfloat;
        cds_nfp.Next;
      end;
    //endi
    cds_nfp.EnableControls;
    cds_nfp.Locate('codigo',codigo,[]);
  end;
//endi

lbltotprod.Caption := formatfloat('###,###,##0.00',ftotal);

end;

procedure Tfrmpesqnf.totserv;
var ftotal:real;
    codigo:integer;
begin

with frmdados do
  begin
    codigo := cds_nfs.fieldbyname('codigo').asInteger;
  end;
//endth

filtraserv;

ftotal := 0;
with frmdados do
  begin
    cds_nfs.DisableControls;
    while not cds_nfs.Eof do
      begin
        ftotal := ftotal + cds_nfs.fieldbyname('subtotal').asfloat;
        cds_nfs.Next;
      end;
    //endi
    cds_nfs.EnableControls;

    cds_nfs.Locate('codigo',codigo,[]);

  end;
//endi

lbltotserv.Caption := formatfloat('###,###,##0.00',ftotal);
end;


procedure Tfrmpesqnf.btnemitenfeClick(Sender: TObject);
begin
carregadadosprincipais;

frmfecnf := tfrmfecnf.create(self);
frmfecnf.showmodal;
frmfecnf.free;
end;

procedure Tfrmpesqnf.FormCreate(Sender: TObject);
begin
binsered := false;


frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := true;
frmdados.cds_clientes.Active := true;


frmdados.cds_fornecedores.Active := false;
frmdados.sql_fornecedores.Active := false;
frmdados.sql_fornecedores.SQL.Clear;
frmdados.sql_fornecedores.SQL.Add('select * from fornecedores');
frmdados.sql_fornecedores.Active := true;
frmdados.cds_fornecedores.Active := true;
{
frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := true;
frmdados.cds_clientes.Active := true;
}
frmdados.sql_nf.Active := true;
frmdados.cds_nf.Active := true;

frmdados.sql_nfp.Active := true;
frmdados.cds_nfp.Active := true;

frmdados.sql_nfs.Active := true;
frmdados.cds_nfs.Active := true;

frmdados.sql_emitente.Active := true;
frmdados.cds_emitente.Active := true;

frmdados.sql_icms.Active := true;
frmdados.cds_icms.Active := true;
frmdados.cds_icms.Filtered := false;

frmdados.sql_ipi.Active := true;
frmdados.cds_ipi.Active := true;

frmdados.sql_cf.Active := true;
frmdados.cds_cf.Active := true;

frmdados.sql_sita.Active := true;
frmdados.cds_sita.Active := true;

frmdados.sql_sitb.Active := true;
frmdados.cds_sitb.Active := true;

frmdados.sql_modbc.Active := true;
frmdados.cds_modbc.Active := true;

frmdados.sql_modbcst.Active := true;
frmdados.cds_modbcst.Active := true;

frmdados.sql_impostoII.Active := true;
frmdados.cds_impostoII.Active := true;

frmdados.sql_pis.Active := true;
frmdados.cds_pis.Active := true;

frmdados.sql_cofins.Active := true;
frmdados.cds_cofins.Active := true;


frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;


frmdados.sql_impostoIII.Active := true;
frmdados.cds_impostoIII.Active := true;


frmdados.sql_csosn.Active := true;
frmdados.cds_csosn.Active := true;


frmdados.cds_produtos.Active := false;
frmdados.sql_produtos.Active := false;
frmdados.sql_produtos.SQL.Clear;
frmdados.sql_produtos.SQL.Add('select * from produtos');
frmdados.sql_produtos.Active := true;
frmdados.cds_produtos.Active := true;


frmdados.sql_tiposerv.Active := true;
frmdados.cds_tiposerv.Active := true;


frmdados.sql_rcserv.Active := true;
frmdados.cds_rcserv.Active := true;


frmdados.sql_impostoI.Active := true;
frmdados.cds_impostoI.Active := true;


frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;


frmdados.sql_Estados.Active := true;
frmdados.cds_Estados.Active := true;


frmdados.sql_Paises.Active := true;
frmdados.cds_Paises.Active := true;


frmdados.sql_natop.Active := true;
frmdados.cds_natop.Active := true;

frmdados.sql_unidade.Active := true;
frmdados.cds_unidade.Active := true;



frmdados.cds_Temp.Active := true;



end;

procedure Tfrmpesqnf.dbg_nfDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
     {

       if frmdados.cds_nftipodest.Value = 'C' then
          begin
            if frmdados.cds_clientes.Locate('codigo',frmdados.cds_nfcdest.Value,[]) then
               begin
                 frmdados.cds_nfnomedest.Value := frmdados.cds_clientes.fieldbyname('nome').asString;
               end
            else
               begin
                 frmdados.cds_nfnomedest.Value := '';
               end;
            //endi
          end;
       //endi

       if frmdados.cds_nftipodest.Value = 'F' then
          begin
            if frmdados.cds_fornecedores.Locate('codigo',frmdados.cds_nfcdest.Value,[]) then
               begin
                 frmdados.cds_nfnomedest.Value := frmdados.cds_fornecedores.fieldbyname('nome').asString;
               end
            else
               begin
                 frmdados.cds_nfnomedest.Value := '';
               end;
            //endi
          end;
       //endi
     }
end;

procedure Tfrmpesqnf.btnexportarClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Exportar Dados?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin


       frmdados.exportarc;
       frmdados.exportarf;
       frmdados.exportarp;
       frmdados.exportarnfc;


     end;
  //endi


end;

procedure Tfrmpesqnf.btnimportarClick(Sender: TObject);
var
  vardir:string;
begin
 try
    vardir := extractfilepath(application.ExeName);
    carregadadosprincipais;
    //frmprincipal.skin.Active := false;
    frmprincipal.skin.SkinFile := '';

    odpExec.InitialDir := frmdados.cds_indice.fieldbyname('importarpara').AsString;
    odpExec.FileName := '*.txt';
    odpExec.Filter := '*.txt';
    if odpExec.Execute then
       begin

         scaminho := odpExec.FileName;
         frmdados.importarnfc;
         deletefile(scaminho);
       end;
    //endi

 finally


    frmprincipal.skin.SkinFile := vardir+'skin.skn';
    pctdados.ActivePageIndex := 0;

 end;


end;

procedure Tfrmpesqnf.btnajustatribClick(Sender: TObject);
var
  tiponf, tipoicms:integer;
begin
  carregadadosprincipais;


  if application.MessageBox('Deseja Realmente ajustar tributação de acordo com o cadastro de produtos? Isto poderá apagar os ajustes antes realizados.','Atenção',mb_YesNo + mb_DefButton2) = idNo then
     begin
       exit;
     end;
  //endi


  filtraprod;

  //limparprod;

  //totprod;

  //filtracupom;

  with frmdados do
    begin

      cds_nfp.First;

      while not cds_nfp.Eof do
        begin
          if cds_produtos.Locate('codigo',cds_nfp.fieldbyname('cpro').asInteger,[]) then
             begin

               //showmessage(inttostr(cds_produtos.FieldByName('csitb').AsInteger)  );

               cds_nfp.Edit;
               cds_nfp.FieldByName('cod6prodnf').AsInteger := cds_produtos.fieldbyname('cmodbscalc').asInteger;
               cds_nfp.FieldByName('cod7prodnf').AsInteger := cds_produtos.fieldbyname('cmodbscalcst').asInteger;
               cds_nfp.FieldByName('cod8prodnf').AsInteger := cds_produtos.fieldbyname('cvii').asInteger;
               cds_nfp.FieldByName('cod12prodnf').AsInteger := cds_produtos.fieldbyname('coimp').asInteger;
               cds_nfp.FieldByName('cod13prodnf').AsInteger := cds_produtos.fieldbyname('cund').asInteger;
               cds_nfp.FieldByName('cod3prodnf').AsInteger := cds_produtos.fieldbyname('ccfncm').asInteger;

               cds_nfp.FieldByName('compoetnf').asString := cds_produtos.fieldbyname('compoetnf').asString;
               cds_nfp.FieldByName('bscalcst').asfloat := cds_produtos.fieldbyname('bscalcst').asfloat;
               cds_nfp.FieldByName('icmscalcst').AsFloat := cds_produtos.fieldbyname('icmscalcst').asfloat;
               cds_nfp.FieldByName('simplesncm').AsString := cds_produtos.fieldbyname('simplesncm').asString;
               if cds_nfp.FieldByName('simplesncm').asString = '' then
                  cds_nfp.FieldByName('simplesncm').asString := '99999999';
               //endi


               cds_nfp.FieldByName('cod4prodnf').AsInteger := cds_produtos.fieldbyname('csita').asInteger;
               if cds_nfp.fieldbyname('cod4prodnf').asInteger = 0 then
                  begin
                    cds_sita.Filtered := false;
                    cds_sita.Filter := 'cpadrao = 1';
                    cds_sita.Filtered := true;
                    cds_nfp.FieldByName('cod4prodnf').asInteger := cds_sita.FieldByName('codigo').asInteger;
                    cds_sita.Filtered := false;
                  end;
               //endi


               filtracupom;
               //if (rgbctipoemi.ItemIndex = 1) then
               if frmdados.cds_cupom.RecordCount = 0 then
                   begin

                     cds_natop.Locate('codigo',cds_temp.fieldbyname('cod6nf').AsInteger,[]);

                     tiponf := cds_natop.fieldbyname('ccfop').AsInteger;
                     tipoicms := cds_natop.fieldbyname('cicms').AsInteger;

                     if tipoicms = 0 then
                         begin
                           cds_nfp.FieldByName('cod1prodnf').AsInteger := cds_produtos.fieldbyname('cicms').asInteger;
                         end
                     else
                         begin
                           cds_nfp.FieldByName('cod1prodnf').AsInteger := cds_natop.fieldbyname('cicms').asInteger;
                         end;
                     //endi

                     //if  cds_produtos.fieldbyname('ccfop').asInteger = 0 then

                     cds_nfp.FieldByName('cod11prodnf').AsInteger := cds_produtos.fieldbyname('ccfop').asInteger;
                     if  cds_nfp.FieldByName('cod11prodnf').AsInteger = 0 then
                         begin


                          if tiponf = 0 then
                             begin

                               if cds_icms.Locate('codigo',cds_nfp.FieldByName('cod1prodnf').AsInteger,[]) then
                                  begin
                                    //showmessage(cds_icms.fieldbyname('descricao').AsString);
                                    if frmpesqnf.lblestado.Caption = frmpesqnf.lblestadoemi.Caption then
                                       begin
                                         cds_nfp.FieldByName('cod11prodnf').asInteger := cds_icms.fieldbyname('ccfop').asInteger;
                                       end
                                    else
                                       begin
                                         cds_nfp.FieldByName('cod11prodnf').asInteger := cds_icms.fieldbyname('ccfopf').asInteger;
                                       end;
                                    //endi
                                  end;
                               //endi

                             end
                          else
                             begin


                               if frmpesqnf.lblestado.Caption = frmpesqnf.lblestadoemi.Caption then
                                  begin
                                    cds_nfp.FieldByName('cod11prodnf').asInteger := cds_natop.fieldbyname('ccfop').asInteger;
                                  end
                               else
                                  begin
                                    cds_nfp.FieldByName('cod11prodnf').asInteger := cds_natop.fieldbyname('ccfopf').asInteger;
                                  end;
                               //endi




                             end;



                         end;
                     //endi



                     if tipoicms = 0 then
                        begin

                          cds_nfp.FieldByName('cod5prodnf').AsInteger := cds_produtos.fieldbyname('csitb').asInteger;

                          if  cds_nfp.FieldByName('cod5prodnf').AsInteger = 0 then
                              begin

                                if cds_icms.Locate('codigo',cds_nfp.FieldByName('cod1prodnf').AsInteger,[]) then
                                   begin
                                     cds_nfp.FieldByName('cod5prodnf').asInteger := cds_icms.fieldbyname('csitb').asInteger;
                                   end;
                                //endi

                              end;
                          //endi

                        end
                     else
                        begin

                          if cds_icms.Locate('codigo',tipoicms,[]) then
                             cds_nfp.FieldByName('cod5prodnf').AsInteger := cds_icms.fieldbyname('csitb').AsInteger;
                          //endi

                        end;
                     //endi
                     
                     if tipoicms = 0 then
                        begin
                          cds_nfp.FieldByName('cod14prodnf').AsInteger := cds_produtos.fieldbyname('ccsosn').asInteger;
                          if  cds_nfp.FieldByName('cod14prodnf').AsInteger = 0 then
                              begin
                                if cds_icms.Locate('codigo',cds_nfp.FieldByName('cod1prodnf').AsInteger,[]) then
                                   begin
                                     cds_nfp.FieldByName('cod14prodnf').asInteger := cds_icms.fieldbyname('ccsosn').asInteger;
                                   end;
                                //endi
                              end;
                          //endi
                        end
                     else
                        begin

                          if cds_icms.Locate('codigo',tipoicms,[]) then
                             cds_nfp.FieldByName('cod14prodnf').AsInteger := cds_icms.fieldbyname('ccsosn').AsInteger;
                          //endi

                        end;
                     //endi

                     cds_nfp.FieldByName('cod2prodnf').AsInteger := cds_produtos.fieldbyname('cipi').asInteger;
                     if cds_nfp.fieldbyname('cod2prodnf').asInteger = 0 then
                        begin
                          cds_ipi.Filtered := false;
                          cds_ipi.Filter := 'cpadrao = 1';
                          cds_ipi.Filtered := true;
                          cds_nfp.FieldByName('cod2prodnf').asInteger := cds_ipi.FieldByName('codigo').asInteger;
                          cds_ipi.Filtered := false;
                        end;
                     //endi

                     cds_nfp.FieldByName('cod9prodnf').AsInteger := cds_produtos.fieldbyname('cpis').asInteger;
                     if cds_nfp.fieldbyname('cod9prodnf').asInteger = 0 then
                        begin
                          cds_pis.Filtered := false;
                          cds_pis.Filter := 'cpadrao = 1';
                          cds_pis.Filtered := true;
                          cds_nfp.FieldByName('cod9prodnf').asInteger := cds_pis.FieldByName('codigo').asInteger;
                          cds_pis.Filtered := false;
                        end;
                     //endi

                     cds_nfp.FieldByName('cod10prodnf').AsInteger := cds_produtos.fieldbyname('ccofins').asInteger;
                     if cds_nfp.fieldbyname('cod10prodnf').asInteger = 0 then
                        begin
                          cds_cofins.Filtered := false;
                          cds_cofins.Filter := 'cpadrao = 1';
                          cds_cofins.Filtered := true;
                          cds_nfp.FieldByName('cod10prodnf').asInteger := cds_cofins.FieldByName('codigo').asInteger;
                          cds_cofins.Filtered := false;
                        end;
                     //endi


                   end
               else
                   begin


                     cds_cfop.Filtered := false;
                     if lblestado.Caption = lblestadoemi.Caption then
                        begin
                          cds_cfop.Filter := 'ccupom = 0 and ctipoest = 0';
                        end
                     else
                        begin
                          cds_cfop.Filter := 'ccupom = 0 and ctipoest = 1';
                        end;
                     //endi
                     cds_cfop.Filtered := true;
                     cds_nfp.FieldByName('cod11prodnf').asInteger := cds_cfop.fieldbyname('codigo').asInteger;
                     cds_nfp.FieldByName('cod5prodnf').asInteger := cds_cfop.fieldbyname('csitb').asInteger;
                     cds_nfp.FieldByName('cod1prodnf').asInteger := cds_cfop.fieldbyname('cicms').asInteger;
                     cds_nfp.FieldByName('cod14prodnf').asInteger := cds_cfop.fieldbyname('ccsosn').asInteger;
                     cds_nfp.FieldByName('cod2prodnf').asInteger := cds_cfop.fieldbyname('cipi').asInteger;
                     cds_nfp.FieldByName('cod9prodnf').asInteger := cds_cfop.fieldbyname('cpis').asInteger;
                     cds_nfp.FieldByName('cod10prodnf').asInteger := cds_cfop.fieldbyname('ccofins').asInteger;
                     cds_cfop.Filtered := false;



                   end;
               //endi
               {
               if cds_nfp.fieldbyname('cod11prodnf').asInteger = 0 then
                  begin

                    if (rgbctipoemi.ItemIndex = 0) then
                        begin
                          cds_cfop.Filtered := false;
                          if lblestado.Caption = lblestadoemi.Caption then
                             begin
                               cds_cfop.Filter := 'ccupom = 0 and ctipoest = 0';
                             end
                          else
                             begin
                               cds_cfop.Filter := 'ccupom = 0 and ctipoest = 1';
                             end;
                          //endi
                          cds_cfop.Filtered := true;
                          cds_nfp.FieldByName('cod11prodnf').asInteger := cds_cfop.fieldbyname('codigo').asInteger;
                          cds_nfp.FieldByName('cod5prodnf').asInteger := cds_cfop.fieldbyname('csitb').asInteger;
                          cds_nfp.FieldByName('cod1prodnf').asInteger := cds_cfop.fieldbyname('cicms').asInteger;
                          cds_nfp.FieldByName('cod14prodnf').asInteger := cds_cfop.fieldbyname('ccsosn').asInteger;
                          //cds_nfp.FieldByName('cod2prodnf').asInteger := cds_cfop.fieldbyname('cipi').asInteger;
                          //cds_nfp.FieldByName('cod9prodnf').asInteger := cds_cfop.fieldbyname('cpis').asInteger;
                          //cds_nfp.FieldByName('cod10prodnf').asInteger := cds_cfop.fieldbyname('ccofins').asInteger;
                        end
                    else
                        begin
                          cds_cfop.Filtered := false;
                          if lblestado.Caption = lblestadoemi.Caption then
                             begin
                               cds_cfop.Filter := 'cpadrao = 1 and ctipoest = 0';
                             end
                          else
                             begin
                               cds_cfop.Filter := 'cpadrao = 1 and ctipoest = 1';
                             end;
                          //endi
                          cds_cfop.Filtered := true;
                          cds_nfp.FieldByName('cod11prodnf').asInteger := cds_cfop.fieldbyname('codigo').asInteger;
                        end;
                    //endi

                    cds_cfop.Filtered := false;
                  end
               else
                  begin
                    cds_nfp.FieldByName('cod11prodnf').AsInteger := cds_produtos.fieldbyname('ccfop').asInteger;
                  end;
               //end
               }




               //cds_nfp.FieldByName('cod11prodnf').asInteger := cds_Temp.fieldbyname('cod11prodnf').asInteger;

               cds_nfp.Post;
             end;
          //endi



          cds_nfp.Next;
        end;
      //endw

      carregafichaprod;



    end;
 //endth


end;

procedure Tfrmpesqnf.rgbctipoemi1Click(Sender: TObject);
begin
  liberacampo;
end;

procedure Tfrmpesqnf.edincupom1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;


procedure tfrmpesqnf.liberacampo;
begin
  //if (rgbctipoemi.ItemIndex = 0) and ((sOpcao = 'I') or (sOpcao = 'A')) then
  //   begin
  //     if sncupoma <> '' then
  //        begin
  //          edincupom.Text := sncupoma;
  //          edidatacupom.Text := sdataant;
  //        end;
       //endi
  //     edincupom.Enabled := true;
  //     edidatacupom.Enabled := true;
  //   end
  //else
  //   begin
  //     edincupom.Enabled := false;
  //     sncupoma := edincupom.Text;

  //     edidatacupom.Enabled := false;
  //     sdataant := edidatacupom.Text;

  //     edincupom.Text := '';
  //   end;
  //endi
end;

procedure Tfrmpesqnf.edivlrcredicmsKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edivlrreticmsKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edialiqapicmsKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edivlrcredicmsExit(Sender: TObject);
begin
  edivlrcredicms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlrcredicms.text)));
end;

procedure Tfrmpesqnf.edivlrreticmsExit(Sender: TObject);
begin
  edivlrreticms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlrreticms.text)));
end;

procedure Tfrmpesqnf.edialiqapicmsExit(Sender: TObject);
begin
  //edialiqapicms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edialiqapicms.text)));

end;

procedure Tfrmpesqnf.edidatacupom1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edinnfrefdevolKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqnf.edidatanfrefdevolKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqnf.ediartricmsKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;


procedure tfrmpesqnf.carregadadosprincipais;
begin

if frmdados.cds_nf.RecordCount > 0 then
   begin

     sOpcao := 'A';

     edidatasai.Enabled := true;
     edihorasai.Enabled := true;
     ediplacavei.Enabled := true;
     ediufvei.Enabled := true;
     ediquantidade.Enabled := true;
     ediespecie.Enabled := true;
     edimarca.Enabled := true;
     edinumero.Enabled := true;
     edipesob.Enabled := true;
     edipesol.Enabled := true;
     edibscalcsubstrib.Enabled := true;
     edivlricmssubtrib.Enabled := true;
     edibscalcsubstrib.enabled := true;
     edivlricmssubtrib.enabled := true;
     edivlrfrete.enabled := true;
     edivlrseg.enabled := true;
     edivlrout.enabled := true;
     mmoadicnf.Enabled := true;
     cbxdescdest_cod4nf.Enabled := true;
     cbxdescemi_cod3nf.Enabled := true;


     cbxdesctiponf_cod1nf.Enabled := true;
     cbxdesctransp_cod5nf.Enabled := true;
     cbxdescfreteporconta_cod2nf.Enabled := true;


     //if rgbctipoemi.ItemIndex = 0 then
     //   begin
     //     edincupom.Enabled := true;
     //     edidatacupom.Enabled := true;
     //   end;
     //endi



     cbxdescnatop_cod6nf.Enabled := true;
     cbxdesctiponf_cod1nf.Enabled := true;
     cbxdesctransp_cod5nf.Enabled := true;
     cbxdescfreteporconta_cod2nf.Enabled := true;



     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     carregaficha;
   end
else
   begin
     edidatasai.Enabled := false;
     edihorasai.Enabled := false;
     ediplacavei.Enabled := false;
     ediufvei.Enabled := false;
     ediquantidade.Enabled := false;
     ediespecie.Enabled := false;
     edimarca.Enabled := false;
     edinumero.Enabled := false;
     edipesob.Enabled := false;
     edipesol.Enabled := false;

     edibscalcsubstrib.enabled := false;
     edivlricmssubtrib.enabled := false;
     edivlrfrete.enabled := false;
     edivlrseg.enabled := false;
     edivlrout.enabled := false;
     mmoadicnf.Enabled := false;

     cbxdescdest_cod4nf.Enabled := false;
     cbxdescemi_cod3nf.Enabled := false;

     cbxdesctiponf_cod1nf.Enabled := false;
     cbxdesctransp_cod5nf.Enabled := false;
     cbxdescfreteporconta_cod2nf.Enabled := false;


     //edincupom.Enabled := false;
     //edidatacupom.Enabled := false;


     cbxdescnatop_cod6nf.Enabled := false;
     cbxdesctiponf_cod1nf.Enabled := false;
     cbxdesctransp_cod5nf.Enabled := false;
     cbxdescfreteporconta_cod2nf.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
   end;
//endi

sOpcaoprod := 'I';

end;

procedure Tfrmpesqnf.tbslistaprodShow(Sender: TObject);
begin

carregadadosprincipais;

totprod;

end;

procedure Tfrmpesqnf.edivlrcredIPIExit(Sender: TObject);
begin
  edivlrcredipi.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlrcredipi.text)));

end;

procedure Tfrmpesqnf.edivlrretipiExit(Sender: TObject);
begin
  edivlrretipi.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlrretipi.text)));

end;

procedure Tfrmpesqnf.edialiqapipiExit(Sender: TObject);
begin
  //edialiqapipi.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edialiqapipi.text)));
end;

procedure Tfrmpesqnf.edivlrcredIPIKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edivlrretipiKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edialiqapipiKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.tbslistaShow(Sender: TObject);
begin
sopcao := '';
bInsereD := false;
end;

procedure Tfrmpesqnf.tbsdescservShow(Sender: TObject);
begin
carregadadosprincipais;

totserv;
end;

procedure Tfrmpesqnf.tbscupomfShow(Sender: TObject);
begin
if (bInsereD) or (sopcao = 'I')  then
  gravar;
//endi


  filtracupom;
end;


procedure tfrmpesqnf.filtracupom;
begin

  with frmdados do
    begin

      cds_cupom.Active := false;
      cds_cupomcnf.DefaultExpression := inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_cupom.Filtered := false;
      cds_cupom.Filter := 'cnf = '+ inttostr(cds_nf.fieldbyname('codigo').asInteger);
      cds_cupom.Filtered := true;

      cds_cupom.Active := true;



    end;
  //endth

end;

procedure Tfrmpesqnf.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
with frmdados do
  begin

    if key = #13 then
       begin

         if cds_cupom.State in [dsinsert, dsedit] then
            begin
              cds_cupom.Post;
            end;
         //endi

       end;
    //endi

  end;
//endi
end;

procedure Tfrmpesqnf.tbsprodHide(Sender: TObject);
begin
frmdados.cds_nfp.Active := false;
end;

procedure Tfrmpesqnf.BitBtn1Click(Sender: TObject);
begin

  bInsereD := true;

  pctdados.TabIndex := 1;

  btnnova.Click;
  
end;

procedure Tfrmpesqnf.Memo1Enter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

procedure Tfrmpesqnf.cbxdescnatop_cod6nfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edivlrcredissExit(Sender: TObject);
begin
  edivlrcrediss.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlrcrediss.text)));

end;

procedure Tfrmpesqnf.edialiqapissKeyPress(Sender: TObject; var Key: Char);
begin
  edialiqapiss.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edialiqapiss.text)));

end;

procedure Tfrmpesqnf.ediivaExit(Sender: TObject);
begin
ediiva.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediiva.text)));

end;

procedure Tfrmpesqnf.EDIBASEI1Exit(Sender: TObject);
begin
//.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(.text)));
end;

procedure Tfrmpesqnf.EDIVLR1Exit(Sender: TObject);
begin
//.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(.text)));

end;

procedure Tfrmpesqnf.ediicmscalcstKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.ediivaKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.ediitemKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) then
     begin
       beep;
       key:=#0;
     end;
  //endi


end;

procedure Tfrmpesqnf.Edit1KeyPress(Sender: TObject; var Key: Char);
begin

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.ediproxnotaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edidatasaiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edinpedKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edihorasaiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.cbxdesctiponf_cod1nfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.EDILIQUIDOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edidatasaiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 7 then
   begin
     edidatasai.Text := '';
   end;
//endi

end;

procedure Tfrmpesqnf.edipdescExit(Sender: TObject);
begin
edivaldesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edipdesc.Text))*strtofloat(tirapontos(lbltotal.Caption))/100 );
ediliquido.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lbltotal.Caption))-strtofloat(tirapontos(edivaldesc.Text)));
edipdesc.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(edipdesc.Text)));

end;

procedure Tfrmpesqnf.edivaldescExit(Sender: TObject);
begin
edipdesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edivaldesc.Text))/strtofloat(tirapontos(lbltotal.Caption))*100 );
ediliquido.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lbltotal.Caption))-strtofloat(tirapontos(edivaldesc.Text)));
edivaldesc.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(edivaldesc.Text)));

end;

procedure Tfrmpesqnf.EDILIQUIDOExit(Sender: TObject);
begin
edivaldesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(lbltotal.Caption))-strtofloat(tirapontos(ediliquido.Text)));
edipdesc.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(edivaldesc.Text))/strtofloat(tirapontos(lbltotal.Caption))*100 );
ediliquido.Text :=   formatfloat('###,###,##0.00',strtofloat(tirapontos(ediliquido.Text)));

end;

procedure Tfrmpesqnf.TabSheet1Show(Sender: TObject);
begin

frmdados.sql_tiponf.Active := true;
frmdados.cds_tiponf.Active := true;

frmdados.sql_natop.Active := true;
frmdados.cds_natop.Active := true;

frmdados.sql_transportador.Active := true;
frmdados.cds_transportador.Active := true;

frmdados.sql_onusdofrete.Active := true;
frmdados.cds_onusdofrete.Active := true;

frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;

frmdados.sql_regtrib.Active := true;
frmdados.cds_regtrib.Active := true;

frmdados.cds_temp_imp.Active := true;

frmdados.cds_temp_imp.First;
while not frmdados.cds_temp_imp.Eof do
  begin
    frmdados.cds_temp_imp.Delete;
  end;
//endi

ediproxnota.Text := '00000';
edidatasai.Text:= '00/00/0000';
edidataemi.Text := datetostr(date);
edinped.Text:='';
edihorasai.Text := '';
edipdesc.Text := '0,00';
edivaldesc.Text := '0,00';
ediliquido.Text := '0,00';
edichave.Text := '';

//AssignFile(f,vardir+'copiaris.bat');
//Rewrite(f); //abre o arquivo para escrita
//Writeln(f,'cd '+frmdados.cds_indice.fieldbyname('caminhoarqnfe').AsString);
//Writeln(f,'copy '+'SAINFE.TXT'+' '+frmdados.cds_indice.fieldbyname('caminhoarqnfetemp').AsString+'\SAINFE_C'+formatfloat('000',icontadornfe)+'NF'+formatfloat('000',innf)+'.TXT');
//Writeln(f,'del SAINFE.TXT');
//Closefile(f); //fecha o handle de arquivo
//WinExec(pchar(vardir+'copiaris.bat'), SW_HIDE);

with frmdados do
  begin
    cds_temp.Edit;
    //cds_temp.FieldByName('cod5nf').asInteger := cds_transportador.fieldbyname('codigo').asInteger;
    //cds_temp.FieldByName('cod1nf').asInteger := cds_tiponf.fieldbyname('codigo').asInteger;
    //cds_temp.FieldByName('cod6nf').asInteger := cds_natop.fieldbyname('codigo').asInteger;

    cds_temp.FieldByName('cod1nf').asInteger := 2;
    //cds_temp.FieldByName('cod6nf').asInteger := 0;

  end;
//endth

with frmdados do
  begin
    cds_nfp.Filtered := false;
    cds_nfp.Filter := 'cnf = '+inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger );
    cds_nfp.Filtered := true;
  end;
//endth
totprod;

with frmdados do
  begin
    cds_nfs.Filtered := false;
    cds_nfs.Filter := 'cnf = '+inttostr( frmdados.cds_nf.fieldbyname('codigo').asInteger );
    cds_nfs.Filtered := true;
  end;
//endth
totserv; 

lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(frmpesqnf.lbltotprod.Caption))+strtofloat(tirapontos(frmpesqnf.lbltotserv.Caption)));
ediliquido.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(frmpesqnf.lbltotprod.Caption))+strtofloat(tirapontos(frmpesqnf.lbltotserv.Caption)));

end;

procedure Tfrmpesqnf.Button1Click(Sender: TObject);
var icodigo:integer;
begin
  if application.MessageBox('Deseja realmente lançar em notas emitidas?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin

       frmdados.sql_nfe.Active := true;
       frmdados.cds_nfe.Active := true;


       if frmdados.cds_nfe.Locate('nnf',ediproxnota.Text,[]) then
          begin
            showmessage('Número de nota já existe');
            exit;
          end;


       frmdados.cds_nfe.Filtered := false;
       frmdados.cds_nfe.IndexName := 'codigo';
       frmdados.cds_nfe.Last;
       icodigo := frmdados.cds_nfe.fieldbyname('codigo').asInteger;
       icodigo := icodigo + 1;
       frmdados.cds_nfe.Append;
       frmdados.cds_nfe.FieldByName('codigo').asInteger :=  icodigo;
       frmdados.cds_nfe.FieldByName('cemi').asInteger :=  frmdados.Cds_emitente.fieldbyname('codigo').asInteger;
       frmdados.cds_nfe.FieldByName('tipodest').asString :=  frmdados.cds_nf.FieldByName('tipodest').AsString;
       frmdados.cds_nfe.FieldByName('cdest').asInteger :=  frmdados.cds_nf.fieldbyname('cdest').asInteger ;

       {

       if frmdados.cds_nf.FieldByName('tipodest').AsString = 'C' then
          begin
            frmdados.cds_nfe.FieldByName('cdest').asInteger :=  frmdados.cds_clientes.fieldbyname('codigo').asInteger ;
          end;
       //endi

       if frmdados.cds_nf.FieldByName('tipodest').AsString = 'F' then
          begin
            frmdados.cds_nfe.FieldByName('cdest').asInteger :=  frmdados.cds_fornecedores.fieldbyname('codigo').asInteger ;
          end;
       //endi

       }


       if cbxdesctransp_cod5nf.text <> '' then
          frmdados.cds_nfe.FieldByName('ctransp').asInteger :=  frmdados.cds_transportador.fieldbyname('codigo').asInteger;
       //endi

       frmdados.cds_nfe.FieldByName('pdesc').asfloat :=  strtofloat(tirapontos(edipdesc.text));
       frmdados.cds_nfe.FieldByName('vdesc').asfloat :=  strtofloat(tirapontos(edivaldesc.text));
       frmdados.cds_nfe.FieldByName('total').asfloat :=  strtofloat(tirapontos(lbltotal.caption));
       frmdados.cds_nfe.FieldByName('liquido').asfloat :=  strtofloat(tirapontos(ediliquido.text));
       frmdados.cds_nfe.FieldByName('cnatop').asInteger :=  frmdados.cds_natop.fieldbyname('codigo').asInteger;
       //frmdados.cds_nfe.FieldByName('bscalcsubtrib').asfloat :=  strtofloat(tirapontos(edibscalcsubstrib.text));
       //frmdados.cds_nfe.FieldByName('vlricmssubtrib').asfloat :=  strtofloat(tirapontos(edivlricmssubtrib.text));
       frmdados.cds_nfe.FieldByName('placavei').asString := ediplacavei.text;
       frmdados.cds_nfe.FieldByName('ufvei').asString :=  ediufvei.Text;
       if edihorasai.Text <> '  :  ' then
          frmdados.cds_nfe.FieldByName('horasai').asString :=  edihorasai.Text;
       //endi
       if (edidatasai.Text <> '00/00/0000')  then
           frmdados.cds_nfe.FieldByName('datasai').asString :=  edidatasai.Text;
       //endi
       frmdados.cds_nfe.FieldByName('quantidade').asString :=  ediquantidade.Text;
       frmdados.cds_nfe.FieldByName('especie').asString :=  ediespecie.Text;
       frmdados.cds_nfe.FieldByName('marca').asString :=  edimarca.Text;
       frmdados.cds_nfe.FieldByName('numero').asString :=  edinumero.Text;
       frmdados.cds_nfe.FieldByName('pesob').asString :=  edipesob.Text;
       frmdados.cds_nfe.FieldByName('pesol').asString :=  edipesol.Text;
       frmdados.cds_nfe.FieldByName('adicnf').asString :=  mmoadicnf.Text;
       frmdados.cds_nfe.FieldByName('adicpostofiscal').asString :=  '';
       frmdados.cds_nfe.FieldByName('ctiponf').asInteger :=  frmdados.cds_tiponf.fieldbyname('codigo').asInteger;
       if  (cbxdescfreteporconta_cod2nf.text <> '') then
           begin
             frmdados.cds_nfe.FieldByName('cfreteporconta').asInteger := frmdados.cds_onusdofrete.fieldbyname('codigo').asInteger;
           end;
       //endi
       frmdados.cds_nfe.FieldByName('nnf').asInteger :=  strtoint(ediproxnota.Text);
       //frmdados.cds_nfe.FieldByName('tvlrfrete').asfloat :=  strtofloat(tirapontos(edivlrfrete.text));
       frmdados.cds_nfe.FieldByName('dataemi').asString :=   edidataemi.text;
       //frmdados.cds_nfe.FieldByName('tvlrseg').asfloat :=    strtofloat(tirapontos(edivlrseg.text));
       //frmdados.cds_nfe.FieldByName('tvlrvii').asfloat :=  0;
       //frmdados.cds_nfe.FieldByName('tvlripi').asfloat :=  ftotipi;
       frmdados.cds_nfe.FieldByName('tvlrpis').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('tvlrcofins').asfloat :=  0;
       //frmdados.cds_nfe.FieldByName('tvlrout').asfloat:= strtofloat( tirapontos(edivlrout.text) );
       frmdados.cds_nfe.FieldByName('ndest').asString :=  '';
       //frmdados.cds_nfe.FieldByName('iesubstrib').asString :=  ediiesubtrib.Text;
       frmdados.cds_nfe.FieldByName('modelonf').asString :=  '';
       frmdados.cds_nfe.FieldByName('serienf').asString :=  '';
       frmdados.cds_nfe.FieldByName('codigonf').asString :=  '';
       frmdados.cds_nfe.FieldByName('tiponf').asString :=  '';
       //frmdados.cds_nfe.FieldByName('formapgtonf').asString :=  inttostr(rgbformapgto.ItemIndex);
       frmdados.cds_nfe.FieldByName('cuftransp').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('vlrserv').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vlrbsserv').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('aliqserv').asfloat := 0 ;
       frmdados.cds_nfe.FieldByName('vlriss').asfloat :=  0;
       //frmdados.cds_nfe.FieldByName('bcipi').asfloat :=  ftotbcipi;
       frmdados.cds_nfe.FieldByName('aliqipi').asfloat := 0 ;
       frmdados.cds_nfe.FieldByName('ccofins').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('ncofins').asString :=  '';
       frmdados.cds_nfe.FieldByName('bscofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('aliqcofins').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vcofins').asfloat :=  0;
       //frmdados.cds_nfe.FieldByName('totbcicms').asfloat :=  ftotbcicms;
       //frmdados.cds_nfe.FieldByName('toticms').asfloat :=  ftoticms;
       //frmdados.cds_nfe.FieldByName('totp').asfloat :=  ftotp;
       frmdados.cds_nfe.FieldByName('vlrdesc').asfloat :=  0;
       //frmdados.cds_nfe.FieldByName('totipi').asfloat :=  ftotipi;
       frmdados.cds_nfe.FieldByName('vlrpis').asfloat :=  0;
       frmdados.cds_nfe.FieldByName('vlrcofins').asfloat :=  0;
       //frmdados.cds_nfe.FieldByName('vlrtotal').asfloat :=  ftotp-strtofloat(edivaldesc.text)+ftotipi;

       frmdados.cds_nfe.FieldByName('vlrtotal').asfloat :=  strtofloat(tirapontos(ediliquido.text));;

       frmdados.cds_nfe.FieldByName('ccfoptrans').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('cidadecodtrans').asInteger :=  0;
       frmdados.cds_nfe.FieldByName('ufplacavei').asString :=  '';
       frmdados.cds_nfe.FieldByName('rntc').asString :=  '';
       //frmdados.cds_nfe.FieldByName('arquivonfe').asString := 'SAINFE_C'+formatfloat('00000',icontadornfe)+'NF'+formatfloat('00000',innf)+'.TXT' ;
       frmdados.cds_nfe.FieldByName('cnf').asInteger :=  frmdados.cds_nf.fieldbyname('codigo').asInteger;
       //frmdados.cds_nfe.FieldByName('contador').asInteger :=  icontadornfe;
       frmdados.cds_nfe.FieldByName('chave').asString :=  edichave.Text;

       frmdados.cds_nfe.Post;
       frmdados.cds_nfe.Active := false;
       frmdados.sql_nfe.Active := false;


       pctdados.ActivePageIndex := 0;

     end;
end;

procedure Tfrmpesqnf.edidataemiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnf.edidataemiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 7 then
   begin
     edidataemi.Text := '';
   end;
//endi

end;

procedure Tfrmpesqnf.edivlricmsExit(Sender: TObject);
begin
edivlricms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlricms.text)));
end;

procedure Tfrmpesqnf.edivlricmsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.EDIVLRIPIExit(Sender: TObject);
begin
edivlripi.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlripi.text)));
end;

procedure Tfrmpesqnf.EDIVLRIPIKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi
end;

procedure Tfrmpesqnf.edivlrsubsicmsExit(Sender: TObject);
begin
edivlrsubsicms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivlrsubsicms.text)));
end;

procedure Tfrmpesqnf.EDIBCSUBSICMSExit(Sender: TObject);
begin
edibcsubsicms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edibcsubsicms.text)));
end;

procedure Tfrmpesqnf.edivlrsubsicmsKeyPress(Sender: TObject;
  var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.EDIBCSUBSICMSKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure Tfrmpesqnf.edibcicmsExit(Sender: TObject);
begin
edibcicms.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edibcicms.text)));

end;

procedure Tfrmpesqnf.edibcicmsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

end.
