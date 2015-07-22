unit upesqost;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus, dbcgrids, jpeg, clipbrd,
  shellapi, ExtDlgs;

type
  TfrmPesqOST = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    lbltitdatai: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    pnlficha: TPanel;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;            
    spdConsultar174: TSpeedButton;
    spdcodbar175: TSpeedButton;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    pnllocaliza: TPanel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label9: TLabel;
    spdilustracao177: TSpeedButton;
    SayPrint: TSayPrint;
    Panel1: TPanel;
    rgbtipoop: TDBRadioGroup;
    pctficha: TPageControl;
    tbsDadosG: TTabSheet;
    Bevel5: TBevel;
    dbgos: TDBGrid;
    Bevel3: TBevel;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    cbxnomecli: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomerep: TDBLookupComboBox;
    spdprinter: TSpeedButton;
    pnlop: TPanel;
    spdimp: TSpeedButton;
    spdimpnf: TSpeedButton;
    spdlanca: TSpeedButton;
    spdemail: TSpeedButton;
    spdconflan: TSpeedButton;
    spdcanclan: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    tbsmaodeobra: TTabSheet;
    tbsoutrasinf: TTabSheet;
    Bevel6: TBevel;
    Bevel7: TBevel;
    lbldesc13: TLabel;
    edidesc13: TDBEdit;
    lbldesc14: TLabel;
    edidesc14: TDBEdit;
    lbldesc15: TLabel;
    edidesc15: TDBEdit;
    lbldesc16: TLabel;
    edidesc16: TDBEdit;
    lbldesc17: TLabel;
    edidesc17: TDBEdit;
    lbldesc18: TLabel;
    edidesc18: TDBEdit;
    lbldesc19: TLabel;
    edidesc19: TDBEdit;
    lbldesc20: TLabel;
    edidesc20: TDBEdit;
    lbldesc21: TLabel;
    edidesc21: TDBEdit;
    lbldesc22: TLabel;
    edidesc22: TDBEdit;
    lbldesc23: TLabel;
    edidesc23: TDBEdit;
    lbldesc24: TLabel;
    edidesc24: TDBEdit;
    lbldesc25: TLabel;
    edidesc25: TDBEdit;
    lbldesc26: TLabel;
    edidesc26: TDBEdit;
    lbldesc27: TLabel;
    edidesc27: TDBEdit;
    lbldesc28: TLabel;
    edidesc28: TDBEdit;
    lbldesc29: TLabel;
    edidesc29: TDBEdit;
    lbldesc30: TLabel;
    edidesc30: TDBEdit;
    lbldesc31: TLabel;
    edidesc31: TDBEdit;
    lbldesc32: TLabel;
    edidesc32: TDBEdit;
    lbldesc33: TLabel;
    edidesc33: TDBEdit;
    lbldesc34: TLabel;
    edidesc34: TDBEdit;
    lbldesc35: TLabel;
    edidesc35: TDBEdit;
    lbldesc36: TLabel;
    edidesc36: TDBEdit;
    lbldesc37: TLabel;
    edidesc37: TDBEdit;
    lbldesc38: TLabel;
    edidesc38: TDBEdit;
    cbxnmodulo: TDBLookupComboBox;
    ediqtdeM: TEdit;
    Label15: TLabel;
    Label17: TLabel;
    ediprveM: TEdit;
    Label21: TLabel;
    edisubtotalM: TEdit;
    Label22: TLabel;
    dbgmao: TDBGrid;
    spdalterarparcM: TSpeedButton;
    spdsalvarprodM: TSpeedButton;
    spdexcluirparcM: TSpeedButton;
    lbltittotal: TLabel;
    lbltotalM: TLabel;
    Label32: TLabel;
    cbxnomefuns: TDBLookupComboBox;
    Label31: TLabel;
    lbltotalMG: TLabel;
    Label36: TLabel;
    edincli: TDBEdit;
    edinfant: TDBEdit;
    ediccli: TDBEdit;
    cbxncli: TDBLookupComboBox;
    cbxnfant: TDBLookupComboBox;
    ediendent: TDBEdit;
    edicomplent: TDBEdit;
    edibairroent: TDBEdit;
    edicidadeent: TDBEdit;
    edicepent: TDBEdit;
    edidddfs: TDBEdit;
    editelefones: TDBEdit;
    edicontato: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label10: TLabel;
    Label12: TLabel;
    Label8: TLabel;
    Label13: TLabel;
    Label11: TLabel;
    Label6: TLabel;
    edinroent: TDBEdit;
    lbltitnroent: TLabel;
    lbloutinf4: TLabel;
    lbloutinf6: TLabel;
    lblid1: TLabel;
    ediid1: TEdit;
    lblid2: TLabel;
    ediid2: TEdit;
    lbldesc1: TLabel;
    cbxdesc1: TComboBox;
    lbldesc2: TLabel;
    cbxdesc2: TComboBox;
    lbldesc3: TLabel;
    cbxdesc3: TComboBox;
    lbldesc4: TLabel;
    cbxdesc4: TComboBox;
    lbldesc5: TLabel;
    cbxdesc5: TComboBox;
    lbldesc6: TLabel;
    cbxdesc6: TComboBox;
    lbldesc7: TLabel;
    cbxdesc7: TComboBox;
    lbldesc8: TLabel;
    cbxdesc8: TComboBox;
    lbldesc9: TLabel;
    cbxdesc9: TComboBox;
    lbldesc10: TLabel;
    cbxdesc10: TComboBox;
    lbldesc11: TLabel;
    edidesc11: TDBEdit;
    lbldesc12: TLabel;
    edidesc12: TDBEdit;
    cbxoutinf4: TDBComboBox;
    cbxoutinf6: TDBComboBox;
    cbxnproM: TDBLookupComboBox;
    tbsproc: TTabSheet;
    tbsfin: TTabSheet;
    Label23: TLabel;
    lbltotg: TLabel;
    DBGrid2: TDBGrid;
    pctcontacli: TPageControl;
    tbspagar: TTabSheet;
    tbspagas: TTabSheet;
    dbgpagar: TDBGrid;
    Panel2: TPanel;
    dbgmat_rest: TDBCtrlGrid;
    imgfoto1: TImage;
    DBText1: TDBText;
    lbltitid: TLabel;
    cbxidmat: TDBLookupComboBox;
    imgfundo: TImage;
    Shape1: TShape;
    tbscob: TTabSheet;
    tbscom: TTabSheet;
    tbsident: TTabSheet;
    lbltittelent: TLabel;
    edidddeent: TDBEdit;
    editelent: TDBEdit;
    lbltitresponsavelent: TLabel;
    ediresponsavelent: TDBEdit;
    lbltitresponsavelrgent: TLabel;
    ediresponsavelrgent: TDBEdit;
    lbltitresponsavelcpfent: TLabel;
    ediresponsavelcpfent: TDBEdit;
    Label38: TLabel;
    edicpf: TDBEdit;
    Label39: TLabel;
    EDIIE: TDBEdit;
    Label40: TLabel;
    EDIDATANASC: TDBEdit;
    Bevel4: TBevel;
    Bevel8: TBevel;
    imgFoto: TImage;
    spdinsfoto: TSpeedButton;
    spdapafoto: TSpeedButton;
    Label41: TLabel;
    edidtcad: TDBEdit;
    Label42: TLabel;
    EDIDTPESPCERASA: TDBEdit;
    lbltitendent: TLabel;
    ediendcob: TDBEdit;
    Label14: TLabel;
    edinrocob: TDBEdit;
    lbltitcompent: TLabel;
    edicompcob: TDBEdit;
    lbltitbaient: TLabel;
    edibaicob: TDBEdit;
    lbltitcident: TLabel;
    edicidcob: TDBEdit;
    lbltitestent: TLabel;
    ediestcob: TDBEdit;
    lbltitcepent: TLabel;
    edicepcob: TDBEdit;
    Label16: TLabel;
    edidddcob: TDBEdit;
    editelefonecob: TDBEdit;
    Label29: TLabel;
    ediresponsavelcob: TDBEdit;
    Label30: TLabel;
    edirgresponsavelcob: TDBEdit;
    Label33: TLabel;
    edicpfresponsavelcob: TDBEdit;
    Label34: TLabel;
    ediendcom: TDBEdit;
    Label35: TLabel;
    edinrocom: TDBEdit;
    Label37: TLabel;
    edicomplcom: TDBEdit;
    Label43: TLabel;
    edibairrocom: TDBEdit;
    Label44: TLabel;
    edicidadecom: TDBEdit;
    Label45: TLabel;
    ediestadocom: TDBEdit;
    Label46: TLabel;
    edicepcom: TDBEdit;
    Label47: TLabel;
    edidddecom: TDBEdit;
    editelefonecom: TDBEdit;
    Label48: TLabel;
    ediresponsavelcom: TDBEdit;
    Label49: TLabel;
    edirgresponsavelcom: TDBEdit;
    Label50: TLabel;
    edicpfresponsavelcom: TDBEdit;
    Bevel9: TBevel;
    Bevel10: TBevel;
    Bevel11: TBevel;
    opdAbrirfig: TOpenPictureDialog;
    lbloutinf1: TLabel;
    cbxoutinf1: TDBComboBox;
    lbloutinf2: TLabel;
    cbxoutinf2: TDBComboBox;
    lbloutinf3: TLabel;
    cbxoutinf3: TDBComboBox;
    lbloutinf5: TLabel;
    cbxoutinf5: TDBComboBox;
    Label1: TLabel;
    cbxntabela: TDBLookupComboBox;
    Bevel12: TBevel;
    Label24: TLabel;
    edipdesc: TDBEdit;
    Label25: TLabel;
    Label26: TLabel;
    edivaldesc: TDBEdit;
    Label27: TLabel;
    ediliquido: TDBEdit;
    Label28: TLabel;
    edidin: TDBEdit;
    btnbaixair: TBitBtn;
    BitBtn1: TBitBtn;
    DBGrid3: TDBGrid;
    tbspagto: TTabSheet;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    edicsit: TDBEdit;
    edinsit: TDBLookupComboBox;
    edidtl: TDBEdit;
    edidtb: TDBEdit;
    edivalliq: TDBEdit;
    cbxntipoop: TDBLookupComboBox;
    btnfechar: TBitBtn;
    btncancelar: TBitBtn;
    tbsparcelar: TTabSheet;
    Label56: TLabel;
    ediparc: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgosEnter(Sender: TObject);
    procedure dbgdvendaEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure edipdescExit(Sender: TObject);
    procedure spdIncluir171Click(Sender: TObject);
    procedure filtraproduto;
    procedure limparprod;
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalKeyPress(Sender: TObject; var Key: Char);
    function  AlinEdNumD(texto:TEdit; idec:integer):string;
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure spdConsultar174Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure AlternaF;
    procedure AlternaL;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edisubtotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnfunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnrepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescChange(Sender: TObject);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    
    procedure cbxunidKeyPress(Sender: TObject; var Key: Char);
    procedure cbxntranspKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ediliquidoExit(Sender: TObject);
    procedure edisaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure ediliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure edidinKeyPress(Sender: TObject; var Key: Char);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure edinproKeyPress(Sender: TObject; var Key: Char);
    procedure edivolumesKeyPress(Sender: TObject; var Key: Char);
    procedure ediresuniKeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo_validadeKeyPress(Sender: TObject; var Key: Char);
    procedure edida1KeyPress(Sender: TObject; var Key: Char);
    procedure edida2KeyPress(Sender: TObject; var Key: Char);
    procedure edida3KeyPress(Sender: TObject; var Key: Char);
    procedure edida4KeyPress(Sender: TObject; var Key: Char);
    procedure edida5KeyPress(Sender: TObject; var Key: Char);
    procedure edida6KeyPress(Sender: TObject; var Key: Char);
    procedure edida7KeyPress(Sender: TObject; var Key: Char);
    procedure edida8KeyPress(Sender: TObject; var Key: Char);
    procedure edinumdup1KeyPress(Sender: TObject; var Key: Char);
    procedure dbgdvendaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure spdimpClick(Sender: TObject);
    procedure spdimpnfClick(Sender: TObject);
    procedure cbxnfunKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnrepKeyPress(Sender: TObject; var Key: Char);
    procedure cbxncliKeyPress(Sender: TObject; var Key: Char);
    procedure edicfunKeyPress(Sender: TObject; var Key: Char);
    procedure edicrepKeyPress(Sender: TObject; var Key: Char);
    procedure ediccliKeyPress(Sender: TObject; var Key: Char);
    procedure limpar;
    procedure mostrar;
    procedure ediccliExit(Sender: TObject);
    procedure edicrepExit(Sender: TObject);
    procedure edicfunExit(Sender: TObject);
    procedure cbxcfunKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcrepKeyPress(Sender: TObject; var Key: Char);
    procedure cbxccliKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnfantKeyPress(Sender: TObject; var Key: Char);
    procedure spdlancaClick(Sender: TObject);
    procedure spdemailClick(Sender: TObject);
    procedure spdprinterClick(Sender: TObject);
    procedure bloqueiabotoesP;
    procedure bloqueiabotoesF;
    procedure desbloqueiabotoesP;
    procedure desbloqueiabotoesF;
    procedure AtivaDbotoes;
    procedure spdconflanClick(Sender: TObject);
    procedure spdcanclanClick(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure bloqueiadet;
    procedure desbloqueiadet;
    procedure habdedidesc;
    procedure cbxclassificarClick(Sender: TObject);
    procedure habproduto;
    procedure dbgosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgdvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomecliEnter(Sender: TObject);
    procedure cbxnomefunEnter(Sender: TObject);
    procedure cbxnomerepEnter(Sender: TObject);
    procedure cbxncliExit(Sender: TObject);
    procedure cbxnfantExit(Sender: TObject);
    procedure edidesc11KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc1KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc2KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc3KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc4KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc5KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc6KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc7KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc8KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc9KeyPress(Sender: TObject; var Key: Char);
    procedure edidesc10KeyPress(Sender: TObject; var Key: Char);
    procedure edincliKeyPress(Sender: TObject; var Key: Char);
    procedure edinfantKeyPress(Sender: TObject; var Key: Char);
    procedure ediendentKeyPress(Sender: TObject; var Key: Char);
    procedure edicomplentKeyPress(Sender: TObject; var Key: Char);
    procedure edibairroentKeyPress(Sender: TObject; var Key: Char);
    procedure edicidadeentKeyPress(Sender: TObject; var Key: Char);
    procedure edicepentKeyPress(Sender: TObject; var Key: Char);
    procedure editelefonesKeyPress(Sender: TObject; var Key: Char);
    procedure edicontatoKeyPress(Sender: TObject; var Key: Char);
    procedure tbsmaodeobraShow(Sender: TObject);
    procedure cbxnmoduloEnter(Sender: TObject);
    procedure cbxnmoduloExit(Sender: TObject);
    procedure ediqtdeMKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveMKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalMKeyPress(Sender: TObject; var Key: Char);
    procedure edicproMExit(Sender: TObject);
    procedure ediqtdeMExit(Sender: TObject);
    procedure ediprveMExit(Sender: TObject);
    procedure edisubtotalMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdalterarparcMClick(Sender: TObject);
    procedure spdsalvarprodMClick(Sender: TObject);
    procedure cbxnomefunsKeyPress(Sender: TObject; var Key: Char);
    procedure edivcomMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnmoduloClick(Sender: TObject);
    procedure cbxid2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc1KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc3KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc4KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc5KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc6KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc7KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc8KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc9KeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc10KeyPress(Sender: TObject; var Key: Char);
    procedure ediid1Exit(Sender: TObject);
    procedure ediid1KeyPress(Sender: TObject; var Key: Char);
    procedure ediid2KeyPress(Sender: TObject; var Key: Char);
    procedure salvaros;
    procedure mostrard;
    procedure limpard;
    procedure cbxnmoduloKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure mostrararq_ext;
    procedure dbgmat_restPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure cbxoutinf1KeyPress(Sender: TObject; var Key: Char);
    procedure cbxoutinf2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxoutinf3KeyPress(Sender: TObject; var Key: Char);
    procedure cbxoutinf4KeyPress(Sender: TObject; var Key: Char);
    procedure cbxoutinf5KeyPress(Sender: TObject; var Key: Char);
    procedure cbxoutinf6KeyPress(Sender: TObject; var Key: Char);
    procedure cbxnproMExit(Sender: TObject);
    procedure cbxnproMEnter(Sender: TObject);
    procedure DBText1Click(Sender: TObject);
    procedure tbsfinShow(Sender: TObject);
    procedure tbspagarShow(Sender: TObject);
    procedure tbspagasShow(Sender: TObject);
    procedure dbgpagarEnter(Sender: TObject);
    procedure dbgpagarExit(Sender: TObject);
    procedure cbxidmatClick(Sender: TObject);
    procedure dbgmat_restKeyPress(Sender: TObject; var Key: Char);
    procedure cbxidmatKeyPress(Sender: TObject; var Key: Char);
    procedure spdexcluirparcMClick(Sender: TObject);
    procedure dbgmat_restClick(Sender: TObject);
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure EDIDATANASCKeyPress(Sender: TObject; var Key: Char);
    procedure EDIIEKeyPress(Sender: TObject; var Key: Char);
    procedure edidddeentKeyPress(Sender: TObject; var Key: Char);
    procedure edidtcadKeyPress(Sender: TObject; var Key: Char);
    procedure EDIDTPESPCERASAKeyPress(Sender: TObject; var Key: Char);
    procedure ediresponsavelentKeyPress(Sender: TObject; var Key: Char);
    procedure ediresponsavelcpfentKeyPress(Sender: TObject; var Key: Char);
    procedure ediresponsavelrgentKeyPress(Sender: TObject; var Key: Char);
    procedure edidddcobKeyPress(Sender: TObject; var Key: Char);
    procedure ediresponsavelcobKeyPress(Sender: TObject; var Key: Char);
    procedure edirgresponsavelcobKeyPress(Sender: TObject; var Key: Char);
    procedure edicpfresponsavelcobKeyPress(Sender: TObject; var Key: Char);
    procedure tbsprocShow(Sender: TObject);
    procedure spdinsfotoClick(Sender: TObject);
    procedure spdapafotoClick(Sender: TObject);
    procedure mostrararq_ext_cli;
    procedure edidddecomKeyPress(Sender: TObject; var Key: Char);
    procedure ediresponsavelcomKeyPress(Sender: TObject; var Key: Char);
    procedure edirgresponsavelcomKeyPress(Sender: TObject; var Key: Char);
    procedure edicpfresponsavelcomKeyPress(Sender: TObject; var Key: Char);
    procedure exibidadosadc;
    procedure DBGrid2Enter(Sender: TObject);
    procedure DBGrid2Exit(Sender: TObject);
    procedure dbgpagarColEnter(Sender: TObject);
    procedure dbgpagarKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure rgbtipoopClick(Sender: TObject);
    procedure rgbtipoopChange(Sender: TObject);
    procedure btnbaixairClick(Sender: TObject);
    procedure btnBaixarClick(Sender: TObject);
    procedure tbspagtoShow(Sender: TObject);
    procedure tbsparcelarShow(Sender: TObject);


  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sOpcaoP, sCodigo, sOPcao, sTipocodM:string;
    icuni, iccf, icsita, icsitb, icicms, icipi, icMar,  iccfop,
    icpis, iccofins, icmodbc, icirii, icvii, icoimp, icmodbcst :integer;
    fQtdeEstq:real;
    bMostrar, bMostrarM:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf:boolean;
    ftvalor, ftvalliq, fvaltot, fvalsobra:real;

  public
    { Public declarations }
    sTitRel:string;
    scoluna:string;
  end;

var
  frmPesqOST: TfrmPesqOST;

implementation

uses uGeral, uPrincipal, uDados, uImpOrcp, upesqprod, uimpnf, uFecOst, uemailped,
  uMRVD, upesqcmobrad, uImpOST;

{$R *.DFM}

procedure TfrmPesqOST.FormShow(Sender: TObject);
var
   vardir: String;
   x:integer;
begin
   tabela := 'sVenda';
   sOpcaoP := 'I';
   sOpcao := 'I';

   exibidadosadc;

   //shpfundosel.Visible := false;


   lbloutinf1.Visible := false;
   lbloutinf2.Visible := false;
   lbloutinf3.Visible := false;
   lbloutinf4.Visible := false;
   lbloutinf5.Visible := false;
   lbloutinf6.Visible := false;

   cbxoutinf1.Visible := false;
   cbxoutinf2.Visible := false;
   cbxoutinf3.Visible := false;
   cbxoutinf4.Visible := false;
   cbxoutinf5.Visible := false;
   cbxoutinf6.Visible := false;


   x:=0;


   pctficha.ActivePageIndex := 0;


   edincli.Top := cbxncli.Top;
   edincli.left := cbxncli.left;
   edincli.Height := cbxncli.Height;
   edincli.left := cbxncli.left;

   edinfant.Top := cbxnfant.Top;
   edinfant.left := cbxnfant.left;
   edinfant.Height := cbxnfant.Height;
   edinfant.left := cbxnfant.left;

   edincli.Visible := false;
   edinfant.Visible := false;

   ediendent.DataField := '';
   edicomplent.DataField := '';
   edibairroent.DataField := '';
   edicidadeent.DataField := '';
   edicepent.DataField := '';
   edidddfs.DataField := '';
   editelefones.DataField := '';
   edicontato.DataField := '';
   cbxoutinf1.DataField := '';
   cbxoutinf2.DataField := '';
   cbxoutinf3.DataField := '';
   cbxoutinf4.DataField := '';
   cbxoutinf5.DataField := '';
   cbxoutinf6.DataField := '';
   edinroent.DataField := '';

   lblid1.Visible := false;
   lblid2.Visible := false;
   lbldesc1.Visible := false;
   lbldesc2.Visible := false;
   lbldesc3.Visible := false;
   lbldesc4.Visible := false;
   lbldesc5.Visible := false;
   lbldesc6.Visible := false;
   lbldesc7.Visible := false;
   lbldesc8.Visible := false;
   lbldesc9.Visible := false;
   lbldesc10.Visible := false;
   lbldesc11.Visible := false;
   lbldesc12.Visible := false;
   lbldesc13.Visible := false;
   lbldesc14.Visible := false;
   lbldesc15.Visible := false;
   lbldesc16.Visible := false;
   lbldesc17.Visible := false;
   lbldesc18.Visible := false;
   lbldesc19.Visible := false;
   lbldesc20.Visible := false;
   lbldesc21.Visible := false;
   lbldesc22.Visible := false;
   lbldesc23.Visible := false;
   lbldesc24.Visible := false;
   lbldesc25.Visible := false;
   lbldesc26.Visible := false;
   lbldesc27.Visible := false;
   lbldesc28.Visible := false;
   lbldesc29.Visible := false;
   lbldesc30.Visible := false;
   lbldesc31.Visible := false;
   lbldesc32.Visible := false;
   lbldesc33.Visible := false;
   lbldesc34.Visible := false;
   lbldesc35.Visible := false;
   lbldesc36.Visible := false;
   lbldesc37.Visible := false;
   lbldesc38.Visible := false;

   ediid1.Visible := false;
   ediid2.Visible := false;
   cbxdesc1.Visible := false;
   cbxdesc2.Visible := false;
   cbxdesc3.Visible := false;
   cbxdesc4.Visible := false;
   cbxdesc5.Visible := false;
   cbxdesc6.Visible := false;
   cbxdesc7.Visible := false;
   cbxdesc8.Visible := false;
   cbxdesc9.Visible := false;
   cbxdesc10.Visible := false;
   edidesc11.Visible := false;
   edidesc12.Visible := false;
   edidesc13.Visible := false;
   edidesc14.Visible := false;
   edidesc15.Visible := false;
   edidesc16.Visible := false;
   edidesc17.Visible := false;
   edidesc18.Visible := false;
   edidesc19.Visible := false;
   edidesc20.Visible := false;
   edidesc21.Visible := false;
   edidesc22.Visible := false;
   edidesc23.Visible := false;
   edidesc24.Visible := false;
   edidesc25.Visible := false;
   edidesc26.Visible := false;
   edidesc27.Visible := false;
   edidesc28.Visible := false;
   edidesc29.Visible := false;
   edidesc30.Visible := false;
   edidesc31.Visible := false;
   edidesc32.Visible := false;
   edidesc33.Visible := false;
   edidesc34.Visible := false;
   edidesc35.Visible := false;
   edidesc36.Visible := false;
   edidesc37.Visible := false;
   edidesc38.Visible := false;

   with frmdados do
     begin

       if (cds_indice.FieldByName('outinfcli1').asString <> '') then
           begin
             lbloutinf1.Caption := cds_indice.FieldByName('outinfcli1').asString;
             lbloutinf1.Visible := true;
             cbxoutinf1.Visible := true;
           end;
       //endi

        if (cds_indice.FieldByName('outinfcli2').asString <> '') then
           begin
             lbloutinf2.Caption := cds_indice.FieldByName('outinfcli2').asString;
             lbloutinf2.Visible := true;
             cbxoutinf2.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli3').asString <> '') then
           begin
             lbloutinf3.Caption := cds_indice.FieldByName('outinfcli3').asString;
             lbloutinf3.Visible := true;
             cbxoutinf3.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli4').asString <> '') then
           begin
             lbloutinf4.Caption := cds_indice.FieldByName('outinfcli4').asString;
             lbloutinf4.Visible := true;
             cbxoutinf4.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli5').asString <> '') then
           begin
             lbloutinf5.Caption := cds_indice.FieldByName('outinfcli5').asString;
             lbloutinf5.Visible := true;
             cbxoutinf5.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli6').asString <> '') then
           begin
             lbloutinf6.Caption := cds_indice.FieldByName('outinfcli6').asString;
             lbloutinf6.Visible := true;
             cbxoutinf6.Visible := true;
           end;
       //endi


       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'DATACAD';
       dbgos.Columns[x].Title.caption     := 'DATA CADASTRO';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       if (cds_indice.FieldByName('ID1').asString <> '') then
           begin
             dbgos.Columns.Add;
             dbgos.Columns[x].FieldName  := 'ID1';
             dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('ID1').asString;
             dbgos.Columns[x].Width := 100;
             lblid1.Caption := cds_indice.FieldByName('ID1').asString;
             lblid1.Visible := true;
             ediid1.Visible := true;
             x := x + 1;
           end;
       //endi

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'nos';
       dbgos.Columns[x].Title.caption     := 'O.S.';
       dbgos.Columns[x].Width := 80;
       x := x + 1;

       if (cds_indice.FieldByName('DESC1').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC1';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC1').asString;
            dbgos.Columns[x].Width := 130;
            lbldesc1.Caption := cds_indice.FieldByName('desc1').asString;
            lbldesc1.Visible := true;
            cbxdesc1.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC2';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC2').asString;
            dbgos.Columns[x].Width := 130;
            lbldesc2.Caption := cds_indice.FieldByName('desc2').asString;
            lbldesc2.Visible := true;
            cbxdesc2.Visible := true;
            x := x + 1;
          end;
       //endi


       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'totg';
       dbgos.Columns[x].Title.caption     := 'TOTAL';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'pdesc_p';
       dbgos.Columns[x].Title.caption     := '% DESC.';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'valdesc_p';
       dbgos.Columns[x].Title.caption     := 'VLR. DESC.';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'liquido_p';
       dbgos.Columns[x].Title.caption     := 'LIQUIDO';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'ftotp';
       dbgos.Columns[x].Title.caption     := 'PEÇAS';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'ftotm';
       dbgos.Columns[x].Title.caption     := 'MÃO-DE-OBRA';
       dbgos.Columns[x].Width := 100;
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'ncli';
       dbgos.Columns[x].Title.caption     := 'NOME CLIENTE';
       x := x + 1;

       dbgos.Columns.Add;
       dbgos.Columns[x].FieldName  := 'ccli';
       dbgos.Columns[x].Title.caption     := 'COD. CLI.';
       x := x + 1;

       if (cds_indice.FieldByName('DESC3').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC3';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC3').asString;
            lbldesc3.Caption := cds_indice.FieldByName('desc3').asString;
            lbldesc3.Visible := true;
            cbxdesc3.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC4';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC4').asString;
            lbldesc4.Caption := cds_indice.FieldByName('desc4').asString;
            lbldesc4.Visible := true;
            cbxdesc4.Visible := true;
            x := x + 1;
          end;
       //endi

       if (cds_indice.FieldByName('DESC5').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC5';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC5').asString;
            lbldesc5.Caption := cds_indice.FieldByName('desc5').asString;
            lbldesc5.Visible := true;
            cbxdesc5.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC6';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC6').asString;
            lbldesc6.Caption := cds_indice.FieldByName('desc6').asString;
            lbldesc6.Visible := true;
            cbxdesc6.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC7';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC7').asString;
            lbldesc7.Caption := cds_indice.FieldByName('desc7').asString;
            lbldesc7.Visible := true;
            cbxdesc7.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC8').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC8';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC8').asString;
            lbldesc8.Caption := cds_indice.FieldByName('desc8').asString;
            lbldesc8.Visible := true;
            cbxdesc8.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC9').asString <> '')then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC9';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC9').asString;
            lbldesc9.Caption := cds_indice.FieldByName('desc9').asString;
            lbldesc9.Visible := true;
            cbxdesc9.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC10').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC10';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC10').asString;
            lbldesc10.Caption := cds_indice.FieldByName('desc10').asString;
            lbldesc10.Visible := true;
            cbxdesc10.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC11').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC11';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC11').asString;
            lbldesc11.Caption := cds_indice.FieldByName('desc11').asString;
            lbldesc11.Visible := true;
            edidesc11.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC12').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC12';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC12').asString;
            lbldesc12.Caption := cds_indice.FieldByName('desc12').asString;
            lbldesc12.Visible := true;
            edidesc12.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC13').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC13';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC13').asString;
            lbldesc13.Caption := cds_indice.FieldByName('desc13').asString;
            lbldesc13.Visible := true;
            edidesc13.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC14').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC14';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC14').asString;
            lbldesc14.Caption := cds_indice.FieldByName('desc14').asString;
            lbldesc14.Visible := true;
            edidesc14.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC15').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC15';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC15').asString;
            lbldesc15.Caption := cds_indice.FieldByName('desc15').asString;
            lbldesc15.Visible := true;
            edidesc15.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC16').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC16';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC16').asString;
            lbldesc16.Caption := cds_indice.FieldByName('desc16').asString;
            lbldesc16.Visible := true;
            edidesc16.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC17').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC17';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC17').asString;
            lbldesc17.Caption := cds_indice.FieldByName('desc17').asString;
            lbldesc17.Visible := true;
            edidesc17.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC18').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC18';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC18').asString;
            lbldesc18.Caption := cds_indice.FieldByName('desc18').asString;
            lbldesc18.Visible := true;
            edidesc18.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC19').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC19';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC19').asString;
            lbldesc19.Caption := cds_indice.FieldByName('desc19').asString;
            lbldesc19.Visible := true;
            edidesc19.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC20').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC20';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC20').asString;
            lbldesc20.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc20.Visible := true;
            edidesc20.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC21').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC21';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC21').asString;
            lbldesc21.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc21.Visible := true;
            edidesc21.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC22').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC22';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC22').asString;
            lbldesc22.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc22.Visible := true;
            edidesc22.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC23').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC23';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC23').asString;
            lbldesc23.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc23.Visible := true;
            edidesc23.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC24').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC24';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC24').asString;
            lbldesc24.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc24.Visible := true;
            edidesc24.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC25').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC25';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC25').asString;
            lbldesc25.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc25.Visible := true;
            edidesc25.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC26').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC26';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC26').asString;
            lbldesc26.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc26.Visible := true;
            edidesc26.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC27').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC27';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC27').asString;
            lbldesc27.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc27.Visible := true;
            edidesc27.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC28').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC28';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC28').asString;
            lbldesc28.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc28.Visible := true;
            edidesc28.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC29').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC29';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC29').asString;
            lbldesc29.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc29.Visible := true;
            edidesc29.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC30').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC30';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC30').asString;
            lbldesc30.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc30.Visible := true;
            edidesc30.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC31').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC31';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC31').asString;
            lbldesc31.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc31.Visible := true;
            edidesc31.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC32').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC32';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC32').asString;
            lbldesc32.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc32.Visible := true;
            edidesc32.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC33').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC33';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC33').asString;
            lbldesc33.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc33.Visible := true;
            edidesc33.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC34').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC34';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC34').asString;
            lbldesc34.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc34.Visible := true;
            edidesc34.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC35').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC35';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC35').asString;
            lbldesc35.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc35.Visible := true;
            edidesc35.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC36').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC36';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC36').asString;
            lbldesc36.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc36.Visible := true;
            edidesc36.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC37').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC37';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC37').asString;
            lbldesc37.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc37.Visible := true;
            edidesc37.Visible := true;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC38').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'DESC38';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('DESC38').asString;
            lbldesc38.Caption := cds_indice.FieldByName('desc20').asString;
            lbldesc38.Visible := true;
            edidesc38.Visible := true;
            x := x + 1;
          end;
       //endi

       if (cds_indice.FieldByName('ID2').asString <> '') then
          begin
            dbgos.Columns.Add;
            dbgos.Columns[x].FieldName  := 'ID2';
            dbgos.Columns[x].Title.caption     := cds_indice.FieldByName('ID2').asString;
            lblid2.Caption := cds_indice.FieldByName('id2').asString;
            lblid2.Visible := true;
            ediid2.Visible := true;
            x := x + 1;
          end;
       //endi


     end;
   //endi




   {

   for x := 0 to dbgos.Columns.Count - 1 do
     begin
       dbgos.Columns[x].Visible := false;

     end;
   //endi


   dbgos.Columns[dbgos.Columns.Count - 1].Visible := true;

   }



   cbxclassificar.Items.Clear;

   cbxclassificar.Items.Add('Data');
   cbxclassificar.Items.Add('N.o O.S.');


   with frmdados do
     begin
       if cds_indice.FieldByName('ID1').asString <> '' then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('ID1').asString);
          end;
       //endi
       if cds_indice.FieldByName('ID2').asString <> '' then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('ID2').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC1').asString <> '')  then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC1').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '')  then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC2').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC3').asString <> '')  then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC3').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '')  then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC4').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC5').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC5').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC6').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC7').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC8').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC8').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC9').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC9').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC10').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC10').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC11').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC11').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC12').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC12').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC13').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC13').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC14').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC14').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC15').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC15').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC16').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC16').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC17').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC17').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC18').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC18').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC19').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC19').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC20').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC20').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC21').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC21').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC22').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC22').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC23').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC23').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC24').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC24').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC25').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC25').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC26').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC26').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC27').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC27').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC28').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC28').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC29').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC29').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC30').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC30').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC31').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC31').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC32').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC32').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC33').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC33').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC34').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC34').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC35').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC35').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC36').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC36').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC37').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC37').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC38').asString <> '') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC38').asString);
          end;
       //endi
     end;
   //endi

   cbxclassificar.ItemIndex := 0;

   edidesc.Enabled := false;

   vardir := ExtractFilePath(Application.ExeName);

   pnlsalvarficha.Top := pnllista.Top;
   pnlsalvarficha.Left := pnllista.Left;
   dbgos.Align := alclient;
   pnlficha.Align := alclient;

   pnlsalvarficha.Visible := false;


   with frmdados do
     begin

       Cds_Temp.Active := false;
       Cds_Tempcod4.DefaultExpression  := '1';
       Dbx_Temp.Active := false;
       Dbx_Temp.SQL.Clear;
       Dbx_Temp.SQL.Add('Select * from Temp order by codigo');
       Dbx_Temp.Active := true;
       Cds_Temp.Active := true;

       Cds_Mat_Restaurar.Active := false;
       Dbx_Mat_Restaurar.Active := false;
       Dbx_Mat_Restaurar.SQL.Clear;
       Dbx_Mat_Restaurar.SQL.Add('Select * from Mat_Restaurar order by codigo');
       Dbx_Mat_Restaurar.Active := true;
       Cds_Mat_Restaurar.Active := true;

       Cds_Funcionarios.Active := false;
       Dbx_Funcionarios.Active := false;
       Dbx_Funcionarios.SQL.Clear;
       Dbx_Funcionarios.SQL.Add('Select * from Funcionarios order by nome');
       Dbx_Funcionarios.Active := true;
       Cds_Funcionarios.Active := true;

       Cds_Unidade.Active := false;
       Dbx_Unidade.Active := false;
       Dbx_Unidade.SQL.Clear;
       Dbx_Unidade.SQL.Add('Select * from Unidade');
       Dbx_Unidade.Active := true;
       Cds_Unidade.Active := true;

       cds_vProdutos.Active := false;
       dbx_vProdutos.Active := false;
       dbx_vProdutos.SQL.Clear;
       dbx_vProdutos.SQL.Add('select * from vProdutos order by descricao');
       dbx_vProdutos.Active := true;
       cds_vProdutos.Active := true;

       cds_Clientes.Active := false;
       dbx_Clientes.Active := false;
       dbx_Clientes.SQL.Clear;
       dbx_Clientes.SQL.Add('select * from Clientes order by nome');
       dbx_Clientes.Active := true;
       cds_Clientes.Active := true;

       cds_Representantes.Active := false;
       dbx_Representantes.Active := false;
       dbx_Representantes.SQL.Clear;
       dbx_Representantes.SQL.Add('select * from Representantes order by nome');
       dbx_Representantes.Active := true;
       cds_Representantes.Active := true;

       //cds_Funcionarios.Active := false;
       //dbx_Funcionarios.Active := false;
       //dbx_Funcionarios.SQL.Clear;
       //dbx_Funcionarios.SQL.Add('select * from Funcionarios order by nome');
       //dbx_Funcionarios.Active := true;
       //cds_Funcionarios.Active := true;

       cds_modulo.Active := false;
       dbx_modulo.Active := false;
       dbx_modulo.SQL.Clear;
       dbx_modulo.SQL.Add('select * from modulo order by codigo');
       dbx_modulo.Active := true;
       cds_modulo.Active := true;

       cds_cmobra.Active := false;
       dbx_cmobra.Active := false;
       dbx_cmobra.SQL.Clear;
       dbx_cmobra.SQL.Add('select * from cmobra order by descr');
       dbx_cmobra.Active := true;
       cds_cmobra.Active := true;

       cds_tipotab.Active := false;
       dbx_tipotab.Active := false;
       dbx_tipotab.SQL.Clear;
       dbx_tipotab.SQL.Add('select * from tipotab order by descricao');
       dbx_tipotab.Active := true;
       cds_tipotab.Active := true;

       //cds_Mat_Rest_ID.Active := false;
       //dbx_Mat_Rest_ID.Active := false;
       //dbx_Mat_Rest_ID.SQL.Clear;
       //dbx_Mat_Rest_ID.SQL.Add('select m.id, m.codigo from Mat_restaurar m inner join matrep p on m.codigo = p.codmat_restaurar where codsvenda = '+ inttostr(cds_svenda.fieldbyname('codigo').asInteger) +' order by m.codigo');
       //dbx_Mat_Rest_ID.Active := true;
       //cds_Mat_Rest_ID.Active := true;


       tabela := 'Temp';

       cds_temp.Edit;
       cds_tempcod4.Value := 1;

       Tabela := 'sVenda';

     end;
   //endth

   spdlimpar.Click;
   //bloqueiabotoesP;
   //bloqueiabotoesF;

   if not edidesc13.Visible then
      tbsoutrasinf.TabVisible := false
   else
      tbsoutrasinf.TabVisible := true;
   //endi

   lbltitid.Caption := 'Tratamento';

   frmdados.cds_mat_restaurar.First;

   tabela := 'Temp';
   frmdados.cds_temp.Edit;
   frmdados.cds_temp.FieldByName('cod10').asInteger := frmdados.cds_mat_restaurar.fieldbyname('codigo').asInteger;


   //tbsfin.TabVisible := false;
end;

procedure TfrmPesqOST.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqOST.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqOST.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqOST.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqOST.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqost:=nil;
  form_ativo := '';

end;

procedure TfrmPesqOST.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqOST.dbgosKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
      frmdados.Cds_sVenda.Post;
   //endi
//endi
end;

procedure TfrmPesqOST.dbgosEnter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqOST.dbgdvendaEnter(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmPesqOST.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqOST.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqOST.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqOST.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sDesc : String;
  ftotcusto, ftotpreco:real;
  iccli, icfun, icrep:integer;
begin

  with frmdados do
    begin
      Cds_sVenda.Active := false;
      Cds_sVendatpo.DefaultExpression := '1';
      Cds_sVendadatacad.DefaultExpression := quotedstr( datetostr( date ) );
      Cds_sVendahrcad.DefaultExpression := quotedstr(copy(timetostr(time),1,5));
      //showmessage( copy(timetostr(time),1,5) );
      Cds_dVenda.Active := false;
      Cds_Vencto.Active := false;
      Cds_dmobra.Active := false;
    end;
  //end;


  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('ID1').Text then
     begin
       sClassificar := 'ID1';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('ID2').Text then
     begin
       sClassificar := 'ID2';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC1').Text then
     begin
       sClassificar := 'DESC1';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC2').Text then
     begin
       sClassificar := 'DESC2';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC3').Text then
     begin
       sClassificar := 'DESC3';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC4').Text then
     begin
       sClassificar := 'DESC4';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC5').Text then
     begin
       sClassificar := 'DESC5';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC6').Text then
     begin
       sClassificar := 'DESC6';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC7').Text then
     begin
       sClassificar := 'DESC7';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC8').Text then
     begin
       sClassificar := 'DESC8';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC9').Text then
     begin
       sClassificar := 'DESC9';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC10').Text then
     begin
       sClassificar := 'DESC10';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC11').Text then
     begin
       sClassificar := 'DESC11';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC12').Text then
     begin
       sClassificar := 'DESC12';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC13').Text then
     begin
       sClassificar := 'DESC13';
     end;
  //endi

  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC14').Text then
     begin
       sClassificar := 'DESC14';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC15').Text then
     begin
       sClassificar := 'DESC15';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC16').Text then
     begin
       sClassificar := 'DESC16';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC17').Text then
     begin
       sClassificar := 'DESC17';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC18').Text then
     begin
       sClassificar := 'DESC18';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC19').Text then
     begin
       sClassificar := 'DESC19';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC20').Text then
     begin
       sClassificar := 'DESC20';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC21').Text then
     begin
       sClassificar := 'DESC21';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC22').Text then
     begin
       sClassificar := 'DESC22';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC23').Text then
     begin
       sClassificar := 'DESC23';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC24').Text then
     begin
       sClassificar := 'DESC24';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC25').Text then
     begin
       sClassificar := 'DESC25';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC26').Text then
     begin
       sClassificar := 'DESC26';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC27').Text then
     begin
       sClassificar := 'DESC27';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC28').Text then
     begin
       sClassificar := 'DESC28';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC29').Text then
     begin
       sClassificar := 'DESC29';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC30').Text then
     begin
       sClassificar := 'DESC30';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC31').Text then
     begin
       sClassificar := 'DESC31';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC32').Text then
     begin
       sClassificar := 'DESC32';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC33').Text then
     begin
       sClassificar := 'DESC33';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC34').Text then
     begin
       sClassificar := 'DESC34';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC35').Text then
     begin
       sClassificar := 'DESC35';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC36').Text then
     begin
       sClassificar := 'DESC36';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC37').Text then
     begin
       sClassificar := 'DESC37';
     end;
  //endi
  if cbxclassificar.text = frmdados.Cds_Indice.FieldByName('DESC38').Text then
     begin
       sClassificar := 'DESC38';
     end;
  //endi

  if cbxclassificar.Text = 'Data' then
     sClassificar := 'DataCad';
  //endi
  if cbxclassificar.Text = 'N.o O.S.' then
     sClassificar := 'nos';
  //endi


  // inicializando variáveis comuns
  sCompo := '(coalesce (nco,0) = 0) and (coalesce (tpo,0) = 1)';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sDesc := '';
  iccli := 0;
  icfun := 0;
  icrep := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  //sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := bar_is_point( sDataI  );


  sDataF := datetostr(dtpdataF.Date);
  //sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := bar_is_point( sDataF  );


  if cbxnomecli.Text <> '' then
     begin
       iccli := frmdados.Cds_Clientes.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomefun.Text <> '' then
     begin
       icfun := frmdados.Cds_Funcionarios.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomeRep.Text <> '' then
     begin
       icRep := frmdados.Cds_Representantes.FieldByName('codigo').asInteger;
     end;
  //endi

  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de codigoF
  if ( icCli <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + 'Cliente: ' + cbxnomecli.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Cliente: ' + cbxnomecli.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de codigoF
  if ( icfun <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + 'Vend.: ' + cbxnomeFun.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + ' / Vend.: ' + cbxnomeFun.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de codigoF
  if ( icRep <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cRep = ' + inttostr(icRep) + ')';
            sTitRel := sTitRel + 'Rep.: ' + cbxnomeRep.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cRep = ' + inttostr(icRep) + ')';
            sTitRel := sTitRel + ' / Rep.: ' + cbxnomeRep.Text;
          end;
       //endif
     end;
  //endif
  
  // executando o filtro

  try
    with frmdados.Dbx_sVenda do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            begin
              if not cbxclassificar.Enabled then
                 sql.Add('select * from sVenda where '+sCompo)
              else
                 sql.Add('select * from sVenda where '+sCompo+' order by '+sClassificar);
              //endi
            end
         else
            begin
              if not cbxclassificar.Enabled then
                 sql.Add('select * from sVenda')
              else
                 sql.Add('select * from sVenda order by '+sClassificar);
              //endi
            end;
         //endi
         //showmessage(sql.Text);
         active := true;
         
         if edidesc.Enabled then
            if recordcount = 0 then
               begin
                 if sDesc <> '' then
                    begin
                      active := false;
                      sql.Clear;
                      sql.Add('select * from sVenda where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);

                      active := true;
                    end;
                 //endi
               end;
            //endi
         //endi

       end;
    //endi

    frmdados.cds_sVendatipoop.DefaultExpression := frmdados.Cds_Indice.fieldbyname('qdonovopedint').asString;
    frmdados.cds_sVenda.Active := true;
    if frmdados.Cds_sVenda.RecordCount > 0 then
       begin
         AtivaDbotoes;
       end
    else
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;
         spdincluir171.Enabled := true;

       end;
    //endi
  
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;

end;

procedure TfrmPesqOST.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;
  limparprod;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqOST.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi
if (key = 45)          and
   (not dbgos.Visible) and
   ((cbxncli.Focused)  or (cbxnfant.Focused))
then
   begin
     edincli.Visible := true;
     edinfant.Visible := true;

     edincli.SetFocus;
     tabela := 'Clientes';
     frmdados.Cds_Clientes.Append;
     tabela := 'sVenda';
     
     cbxncli.Visible := false;
     cbxnfant.Visible := false;

     exit;
   end;
//endi

if (ssCtrl in Shift) and (chr(Key) in ['I', 'i']) then
begin
  if spdincluir171.Enabled then
     spdincluir171.Click;
  //endi
end;
if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
begin
  if spdAlterar172.Enabled then
     spdAlterar172.Click;
  //endi
end;

if pnlsalvarficha.Enabled then
   begin
     if (ssCtrl in Shift) and (chr(Key) in ['P', 'p']) then
        begin
          if spdimpnf.Enabled then
             spdimpnf.Click;
          //endi
        end;
     //endi
   end;
//endi

if pnlsalvarficha.Enabled then
   begin
     if (ssCtrl in Shift) and (chr(Key) in ['L', 'l']) then
        begin
          if spdlanca.Enabled then
             spdlanca.Click;
          //endi
        end;
     //endi
   end;
//endi

end;

procedure TfrmPesqOST.DBEdit1Exit(Sender: TObject);
begin
     with frmdados do
       begin
         if cds_ClientesCPF.text <> '' then
            if length(cds_ClientesCPF.text) > 14 then
               cds_ClientesCPF.EditMask := '00.000.000/0000-00;0;_'
            else
               cds_ClientesCPF.EditMask := '000.000.000-00;0;_'
            //endi
         else
            cds_ClientesCPF.EditMask := '';
         //endi
       end;
     //endth

end;

procedure TfrmPesqOST.DBEdit1Enter(Sender: TObject);
begin
frmdados.cds_ClientesCPF.EditMask := '';
end;

procedure TfrmPesqOST.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
end;

procedure TfrmPesqOST.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';

AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'sVenda';
limpar;
frmdados.Cds_sVenda.Append;
if ediccli.Enabled then
   ediccli.SetFocus;
//endi
end;

procedure tfrmPesqOST.filtraproduto;
begin
  with frmdados do
    begin

      if Cds_svenda.State in [dsinsert, dsedit] then
         Cds_svenda.Post;
      //endi

      cds_dVenda.Active := false;
      cds_dVendacodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_dVendaImpNf.DefaultExpression := 'T';
      dbx_dVenda.Active := false;
      dbx_dVenda.SQL.Clear;
      dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) );
      dbx_dVenda.Active := true;
      cds_dVenda.Active := true;

      cds_dMobra.Active := false;
      cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      dbx_dMobra.Active := false;
      dbx_dMobra.SQL.Clear;
      dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )  and ( cmod = ' +inttostr(    cds_temp.fieldbyname('cod4').asInteger      )+')');
      dbx_dMobra.Active := true;
      cds_dMobra.Active := true;

      cds_vencto.Active := false;
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where ( c_svenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +')');
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

      totalizafrmpesqvdprod;

      //if Cds_sVenda.RecordCount <> 0 then
      //   Cds_dVenda.Active := true;
      //endi
      //if Cds_sVenda.RecordCount <> 0 then
      //   Cds_Vencto.Active := true;
      //endi
    end;
  //end;


end;

procedure tfrmPesqOST.limparprod;
var
  fvalor:real;
begin
  fquaa        := 0;

  ediqtdeM.Text := '1';
  fvalor := strtofloat(tirapontos(ediqtdeM.Text));
  ediqtdeM.Text := AlinNumD0(14,fvalor);

  ediprveM.Text := '0,00';
  ediprveM.Text := AlinEdNumD(ediprveM,2);

  edisubtotalM.Text := '0,00';
  edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

  bimpnf := true;

  tabela := 'Temp';
  frmdados.Cds_Temp.Edit; 
  frmdados.Cds_Temp.FieldByName('cod6').asInteger := 0;

  tabela := 'sVenda';

end;

procedure TfrmPesqOST.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi




end;

procedure TfrmPesqOST.ediprveKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif



  if (key <> ',') then
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi



end;

procedure TfrmPesqOST.edisubtotalKeyPress(Sender: TObject; var Key: Char);
begin

  key := #0;

end;


function TfrmPesqOST.AlinEdNumD(texto:TEdit; idec:integer):string;
var
  n: Integer;
  c: TCanvas;
  h: HWND;
  txt:string;
  // pode se usar Form1.Canvas se for a mesma fonte do Edit
begin
  if idec = 3 then
     texto.Text := formatfloat('###,###,##0.000',strtofloat(tirapontos(texto.Text)))
  else
     texto.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(texto.Text)));
  //endi

  c := TCanvas.Create;
  c.Handle := GetDeviceContext(h);
  c.Font := texto.Font;
  n := round((texto.Width - c.TextWidth(texto.Text) - 8) / c.TextWidth( ' '));
  texto.Text := stringofchar( ' ',n) + texto.Text;
  result := texto.Text;
end;


procedure TfrmPesqOST.DBLookupComboBox4Enter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOST.DBLookupComboBox4Exit(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmPesqOST.spdAlterar172Click(Sender: TObject);
begin
AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'sVenda';
Mostrar;
if ediccli.Enabled then
   ediccli.SetFocus;
//endi   

end;

procedure TfrmPesqOST.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
//AlternaF;
tabela := 'sVenda';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin
     //with frmdados do
     //  begin
     //    dbx_exec.Active := false;
     //    dbx_exec.SQL.Clear;
     //    dbx_exec.SQL.Add('Delete from NF where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
     //    dbx_exec.ExecSQL;
     //  end;
     //endi

     frmdados.Cds_sVenda.Delete;

     if frmdados.cds_svenda.RecordCount = 0 then
        begin

          bloqueiabotoesP;
          bloqueiabotoesF;
          spdincluir171.Enabled := true;

        end;
     //endi

   end;
//endi
//Mostrar;
end;

procedure TfrmPesqOST.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
AlternaF;
tabela  := 'sVenda';
Mostrar;
end;

procedure TfrmPesqOST.sPdGravarClick(Sender: TObject);
begin

with frmdados do
  begin

    //if Cds_sVenda.FieldByName('ccli').asInteger = 0 then
    //   exit;
    //endi

    if ediccli.Text = '' then
       exit;
    //endi

    sOpcao := '';

    salvaros;

    AtivaDbotoes;

    //Cds_sVenda.Refresh;

    alternaL;

    dbgos.SetFocus;

  end;
//endth

end;

procedure TfrmPesqOST.AlternaF;
begin
mostrararq_ext_cli;

if frmdados.Cds_sVenda.recordcount > 0 then
   begin
     filtraproduto;
   end;
//endi
cbxncli.Visible := true;
cbxnfant.Visible := true;

dbgos.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;
pctficha.ActivePageIndex := 0;
edincli.Visible := false;
edinfant.Visible := false;

if (sopcao <> 'I') then
   begin
     ediendent.DataField := 'endent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     edidddfs.DataField := 'dddfs';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';
     cbxoutinf1.DataField := 'outinf1';
     cbxoutinf2.DataField := 'outinf2';
     cbxoutinf3.DataField := 'outinf3';
     cbxoutinf4.DataField := 'outinf4';
     cbxoutinf5.DataField := 'outinf5';
     cbxoutinf6.DataField := 'outinf6';
     edinroent.DataField :=  'nroent';
     mostrard;

   end
else
   begin
     ediendent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     edidddfs.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';
     cbxoutinf1.DataField := '';
     cbxoutinf2.DataField := '';
     cbxoutinf3.DataField := '';
     cbxoutinf4.DataField := '';
     cbxoutinf5.DataField := '';
     cbxoutinf6.DataField := '';
     edinroent.DataField := '';
     limpard;

   end;
//endi

if ediccli.Enabled then
   ediccli.SetFocus;
//endi   

end;

procedure TfrmPesqOST.AlternaL;
begin
dbgos.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;

ediendent.DataField := '';
edicomplent.DataField := '';
edibairroent.DataField := '';
edicidadeent.DataField := '';
edicepent.DataField := '';
edidddfs.DataField := '';
editelefones.DataField := '';
edicontato.DataField := '';
cbxoutinf1.DataField := '';
cbxoutinf2.DataField := '';
cbxoutinf3.DataField := '';
cbxoutinf4.DataField := '';
cbxoutinf5.DataField := '';
cbxoutinf6.DataField := '';
edinroent.DataField := '';

end;


procedure TfrmPesqOST.spdcancelar2310Click(Sender: TObject);
begin

alternaL;

with frmdados do
  begin

    if Cds_sVenda.FieldByName('lancado').asString = 'T' then
       begin
         spdcanclan.Enabled := true;
         //spdrel.Enabled := true;
         spdimpnf.Enabled := true;
         spdimp.Enabled := true;
       end
    else
       begin
         if cds_sVenda.RecordCount > 0 then
            begin
              spdcanclan.Enabled := false;
              //spdrel.Enabled := true;
              spdimpnf.Enabled := true;
              spdconflan.Enabled := true;
              //spdrel.Enabled := true;
              spdimpnf.Enabled := true;
              spdimp.Enabled := true;
            end
         else
            begin
              bloqueiabotoesP;
              bloqueiabotoesF;
              spdincluir171.Enabled := true;
            end;
         //endi
       end;
    //endi

    Cds_svenda.Cancel;

    sOpcao := '';

    //Cds_sVenda.Refresh;

    //if cds_svenda.RecordCount > 0 then
    //   begin

    cds_dvenda.Active := false;
    dbx_dvenda.Active := false;
    dbx_dvenda.SQL.Clear;
    dbx_dvenda.SQL.Add('Select * from dvenda where codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dvenda.Active := true;
    cds_dvenda.Active := true;

    cds_dmobra.Active := false;
    dbx_dmobra.Active := false;
    dbx_dmobra.SQL.Clear;
    dbx_dmobra.SQL.Add('Select * from dmobra where codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dmobra.Active := true;
    cds_dmobra.Active := true;

    //   end;
    //endi


  end;
//endth


end;

procedure TfrmPesqOST.FormCreate(Sender: TObject);
begin
pctficha.ActivePage.PageIndex := 0;
end;

procedure TfrmPesqOST.edisubtotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqOST.cbxnfunKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'sVenda';
if key = vk_delete then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cfun').asInteger := 0;
   end;
//endi
end;

procedure TfrmPesqOST.cbxnrepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'sVenda';
if key = vk_delete then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cRep').asInteger := 0;
   end;
//endi

end;

procedure TfrmPesqOST.cbxclassificarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endi
  key := #0;

end;

procedure TfrmPesqOST.cbxclassificarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  key := 0;

end;

procedure TfrmPesqOST.edidescChange(Sender: TObject);
begin
try
if edidesc.Text <> '' then
   frmdados.cds_sVenda.Locate(frmpesqOst.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
except
edidesc.Clear;
if edidesc.Enabled then
   edidesc.SetFocus;
//endi     
end;
end;

procedure TfrmPesqOST.edidescKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi

end;

procedure TfrmPesqOST.cbxunidKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  key := #0;
end;


procedure TfrmPesqOST.cbxntranspKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'sVenda';
if key = vk_delete then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('ctransp').asInteger := 0;
   end;
//endi

end;

procedure TfrmPesqOST.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin

end;

procedure TfrmPesqOST.edisaidaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxnaturezaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edinproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqOST.edivolumesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediresuniKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediprazo_validadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edida8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.dbgdvendaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
  Icon: TBitmap;

begin

end;

procedure TfrmPesqOST.spdimpClick(Sender: TObject);
begin
  if frmdados.Cds_Indice.FieldByName('tpimpvi').asInteger = 2 then
     begin
       frmimpost := tfrmimpost.Create(self);
       frmimpost.relatorio.Preview;
       frmimpost.Free;
     end;
  //endi

  //frmimporcp := tfrmimporcp.Create(self);
  //frmimporcp.QuickRep1.Preview;
  //frmimporcp.Free;
end;

procedure TfrmPesqOST.spdimpnfClick(Sender: TObject);
begin

  frmdados.totalizafrmpesqvdprod;
  frmfecost := tfrmfecost.create(self);
  frmfecost.showmodal;
  frmfecost.free;

  //frmdados.totalizafrmpesqvdprod;
  //frmimpnf := tfrmimpnf.create(self);
  //frmimpnf.showmodal;
  //frmimpnf.free;
end;

procedure TfrmPesqOST.cbxnfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxnrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxncliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
end;

procedure TfrmPesqOST.edicfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmPesqOST.limpar;
begin
  ediid1.Text := '';
  //ediccli.Text := '';
end;

procedure tfrmPesqOST.mostrar;
begin
  //edicfun.Text := frmdados.Cds_Funcionarios.fieldbyname('codigo').asString;
  //edicrep.Text := frmdados.Cds_Representantes.fieldbyname('codigo').asString;
  //ediccli.Text := frmdados.Cds_clientes.fieldbyname('codigo').asString;


end;


procedure TfrmPesqOST.ediccliExit(Sender: TObject);
begin


if strtoint(ediccli.Text) = 0 then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('ccli').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Clientes.Locate('codigo',ediccli.text,[]) then
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_Clientes.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('ccli').asInteger := 0;
       //ediccli.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;



end;

procedure TfrmPesqOST.edicrepExit(Sender: TObject);
begin
{
if edicrep.Text = '' then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cRep').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Representantes.Locate('codigo',edicrep.text,[]) then
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cRep').asInteger := frmdados.Cds_Representantes.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cRep').asInteger := 0;
       edicRep.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;
}
end;

procedure TfrmPesqOST.edicfunExit(Sender: TObject);
begin
{
if edicfun.Text = '' then
   begin
     frmdados.Cds_sVenda.Edit;
     frmdados.Cds_sVenda.FieldByName('cfun').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Funcionarios.Locate('codigo',edicfun.text,[]) then
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cfun').asInteger := frmdados.Cds_Funcionarios.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_sVenda.Edit;
       frmdados.Cds_sVenda.FieldByName('cfun').asInteger := 0;
       edicfun.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

}
end;

procedure TfrmPesqOST.cbxcfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxcrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxnfantKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.spdlancaClick(Sender: TObject);
begin
frmdados.totalizafrmpesqvdprod;
frmfecost := tfrmfecost.create(self);
frmfecost.showmodal;
frmfecost.free;

end;

procedure TfrmPesqOST.spdemailClick(Sender: TObject);
begin
frmemailped := tfrmemailped.Create(self);
frmemailped.ShowModal;
frmemailped.Free;
end;

procedure TfrmPesqOST.spdprinterClick(Sender: TObject);
begin
  frmMRVD := tfrmMRVD.Create(self);
  frmMRVD.ShowModal;
  frmMRVD.Free;
end;

procedure TfrmPesqOST.bloqueiabotoesP;
begin
spdincluir171.Enabled := false;
spdalterar172.Enabled := false;
spdexcluir173.Enabled := false;
spdconsultar174.Enabled := false;
spdcodbar175.Enabled := false;
spdilustracao177.Enabled := false;
end;

procedure TfrmPesqOST.bloqueiabotoesF;
begin
spdgravar.Enabled := false;
spdcancelar2310.Enabled := false;
//spdrel.Enabled := false;
spdimpnf.Enabled := false;
spdconflan.Enabled := false;
spdcanclan.Enabled := false;
spdemail.Enabled := false;
spdimp.Enabled := false;
end;

procedure TfrmPesqOST.desbloqueiabotoesP;
begin
spdincluir171.Enabled := true;
spdalterar172.Enabled := true;
spdexcluir173.Enabled := true;
spdconsultar174.Enabled := true;
spdcodbar175.Enabled := true;
spdilustracao177.Enabled := true;
end;

procedure TfrmPesqOST.desbloqueiabotoesF;
begin
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
//spdrel.Enabled := true;
spdimpnf.Enabled := true;
spdconflan.Enabled := true;
spdcanclan.Enabled := true;
spdemail.Enabled := true;
spdconflan.Enabled := true;
spdlanca.Enabled := true;
spdimp.Enabled := true;
end;


procedure tfrmPesqOST.AtivaDbotoes;
begin
    {


    if sOpcao = 'C' then
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;
         bloqueiadet;
         spdcancelar2310.Enabled := true;
         exit;
       end;
    //endi


    }

    if frmdados.Cds_sVenda.FieldByName('lancado').asString = 'T' then
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;

         spdincluir171.Enabled := true;
         spdconsultar174.Enabled := true;
         spdcancelar2310.Enabled := true;
         spdcanclan.Enabled := true;
         //spdrel.Enabled := true;
         spdimpnf.Enabled := true;
         spdconflan.Enabled := false;
         spdlanca.Enabled := true;
         spdimp.Enabled := true;
         bloqueiadet;
       end
    else
       begin


         desbloqueiadet;
         if frmdados.cds_svenda.RecordCount > 0 then
            begin
              desbloqueiabotoesP;
              desbloqueiabotoesF;
            end
         else
            begin
              spdlanca.Enabled := false;
            end;
         //endi

         spdcanclan.Enabled := false;
         spdcancelar2310.Enabled := true;

       end;
    //endi


end;



procedure TfrmPesqOST.spdconflanClick(Sender: TObject);
begin

  with frmdados do
    begin

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select * from Vencimentos where c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
      dbx_exec.Active := true;
      if dbx_exec.RecordCount = 0 then
         begin
           Showmessage('Valores não foram digitados para posterior lançamento');
           exit;
         end;
      //endi

      if application.MessageBox('Deseja Realmente Lançar pedido?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
         begin
           exit;
         end;
      //endi

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      Cds_sVenda.Edit;
      Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
      Cds_sVenda.FieldByName('lancado').asString := 'T';
      Cds_sVenda.Post;

    end;
  //endi

end;

procedure TfrmPesqOST.spdcanclanClick(Sender: TObject);
begin
  with frmdados do
    begin

      tabela := 'sVenda';

      frmpesqost.mostrard;

      if application.MessageBox('Cancela Lançamento?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
         begin
           exit;
         end;
      //endi
      
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('F')+' where c_svenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from comissao where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from comissaor where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('delete from nf where codsvenda = '+cds_svenda.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      Cds_sVenda.Edit;
      Cds_sVenda.FieldByName('pdesc_p').asfloat := 0;
      Cds_sVenda.FieldByName('valdesc_p').asfloat := 0;
      Cds_sVenda.FieldByName('liquido_p').asfloat := 0;
      Cds_sVenda.FieldByName('din_p').asfloat := 0;
      Cds_sVenda.FieldByName('parc_p').asInteger := 0;
      Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
      Cds_sVenda.FieldByName('lancado').asString := 'F';
      Cds_sVenda.Post;

    end;
  //endi

end;

procedure TfrmPesqOST.spdantClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Prior;
mostrard;

if (not pnllista.Visible) and (pctficha.ActivePageIndex = 1) then
  begin
    habproduto;
  end;
//endi


end;

procedure TfrmPesqOST.spdproxClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Next;
mostrard;

if (not pnllista.Visible) and (pctficha.ActivePageIndex = 1) then
  begin
    habproduto;
  end;
//endi


end;

procedure TfrmPesqOST.bloqueiadet;
begin

spdalterarparcM.Enabled := false;
spdsalvarprodM.Enabled := false;
spdexcluirparcM.Enabled := false;

ediid1.Enabled := false;
ediid2.Enabled := false;
cbxdesc1.Enabled := false;
cbxdesc2.Enabled := false;
cbxdesc3.Enabled := false;
cbxdesc4.Enabled := false;
cbxdesc5.Enabled := false;
cbxdesc6.Enabled := false;
cbxdesc7.Enabled := false;
cbxdesc8.Enabled := false;
cbxdesc9.Enabled := false;
cbxdesc10.Enabled := false;
edidesc11.Enabled := false;
edidesc12.Enabled := false;
edidesc13.Enabled := false;
edidesc14.Enabled := false;
edidesc15.Enabled := false;
edidesc16.Enabled := false;
edidesc17.Enabled := false;
edidesc18.Enabled := false;
edidesc19.Enabled := false;
edidesc20.Enabled := false;
edidesc21.Enabled := false;
edidesc22.Enabled := false;
edidesc23.Enabled := false;
edidesc24.Enabled := false;
edidesc25.Enabled := false;
edidesc26.Enabled := false;
edidesc27.Enabled := false;
edidesc28.Enabled := false;
edidesc29.Enabled := false;
edidesc30.Enabled := false;
edidesc31.Enabled := false;
edidesc32.Enabled := false;
edidesc33.Enabled := false;
edidesc34.Enabled := false;
edidesc35.Enabled := false;
edidesc36.Enabled := false;
edidesc37.Enabled := false;
edidesc38.Enabled := false;
edincli.Enabled := false;
ediccli.Enabled := false;
edinfant.Enabled := false;
cbxncli.Enabled := false;
cbxnfant.Enabled := false;
edidddfs.Enabled := false;
editelefones.Enabled := false;
edicontato.Enabled := false;
cbxnprom.Enabled := false;
cbxidmat.Enabled := false;
ediqtdem.Enabled := false;
ediprvem.Enabled := false;
edisubtotalm.Enabled := false;
cbxnomefuns.Enabled := false;
spdalterarparcm.Enabled := false;
spdsalvarprodm.Enabled := false;
spdexcluirparcm.Enabled := false;

cbxoutinf1.Enabled := false;
cbxoutinf2.Enabled := false;
cbxoutinf3.Enabled := false;
cbxoutinf4.Enabled := false;
cbxoutinf5.Enabled := false;
edicpf.Enabled := false;

ediendent.Enabled := false;
edicomplent.Enabled := false;
edibairroent.Enabled := false;
edicidadeent.Enabled := false;
edicepent.Enabled := false;
ediresponsavelent.Enabled := false;
edidddeent.Enabled := false;
editelent.Enabled := false;
ediresponsavelrgent.Enabled := false;
ediresponsavelcpfent.Enabled := false;
edinroent.Enabled := false;


ediendcom.Enabled := false;
edicomplcom.Enabled := false;
edibairrocom.Enabled := false;
edicidadecom.Enabled := false;
edicepcom.Enabled := false;
ediresponsavelcom.Enabled := false;
edirgresponsavelcom.Enabled := false;
edicpfresponsavelcom.Enabled := false;
edidddecom.Enabled := false;
editelefonecom.Enabled := false;
edinrocom.Enabled := false;
ediestadocom.Enabled := false;

ediendcob.Enabled := false;
edicompcob.Enabled := false;
edibaicob.Enabled := false;
edicidcob.Enabled := false;
edicepcob.Enabled := false;
ediresponsavelcob.Enabled := false;
edirgresponsavelcob.Enabled := false;
edicpfresponsavelcob.Enabled := false;
edidddcob.Enabled := false;
editelefonecob.Enabled := false;
edinrocob.Enabled := false;
ediestcob.Enabled := false;

ediie.Enabled := false;
edidatanasc.Enabled := false;
edidtcad.Enabled := false;
edidtpespcerasa.Enabled := false;
cbxntabela.Enabled := false;

end;

procedure TfrmPesqOST.desbloqueiadet;
begin
spdalterarparcM.Enabled := true;
spdsalvarprodM.Enabled := true;
spdexcluirparcM.Enabled := true;

ediid1.Enabled := true;
ediid2.Enabled := true;
cbxdesc1.Enabled := true;
cbxdesc2.Enabled := true;
cbxdesc3.Enabled := true;
cbxdesc4.Enabled := true;
cbxdesc5.Enabled := true;
cbxdesc6.Enabled := true;
cbxdesc7.Enabled := true;
cbxdesc8.Enabled := true;
cbxdesc9.Enabled := true;
cbxdesc10.Enabled := true;
edidesc11.Enabled := true;
edidesc12.Enabled := true;
edidesc13.Enabled := true;
edidesc14.Enabled := true;
edidesc15.Enabled := true;
edidesc16.Enabled := true;
edidesc17.Enabled := true;
edidesc18.Enabled := true;
edidesc19.Enabled := true;
edidesc20.Enabled := true;
edidesc21.Enabled := true;
edidesc22.Enabled := true;
edidesc23.Enabled := true;
edidesc24.Enabled := true;
edidesc25.Enabled := true;
edidesc26.Enabled := true;
edidesc27.Enabled := true;
edidesc28.Enabled := true;
edidesc29.Enabled := true;
edidesc30.Enabled := true;
edidesc31.Enabled := true;
edidesc32.Enabled := true;
edidesc33.Enabled := true;
edidesc34.Enabled := true;
edidesc35.Enabled := true;
edidesc36.Enabled := true;
edidesc37.Enabled := true;
edidesc38.Enabled := true;
edincli.Enabled := true;
ediccli.Enabled := true;
edinfant.Enabled := true;
cbxncli.Enabled := true;
cbxnfant.Enabled := true;
edidddfs.Enabled := true;
editelefones.Enabled := true;
edicontato.Enabled := true;
cbxnprom.Enabled := true;
cbxidmat.Enabled := true;
ediqtdem.Enabled := true;
ediprvem.Enabled := true;
edisubtotalm.Enabled := true;
cbxnomefuns.Enabled := true;
spdalterarparcm.Enabled := true;
spdsalvarprodm.Enabled := true;
spdexcluirparcm.Enabled := true;

cbxoutinf1.Enabled := true;
cbxoutinf2.Enabled := true;
cbxoutinf3.Enabled := true;
cbxoutinf4.Enabled := true;
cbxoutinf5.Enabled := true;
edicpf.Enabled := true;

ediendent.Enabled := true;
edicomplent.Enabled := true;
edibairroent.Enabled := true;
edicidadeent.Enabled := true;
edicepent.Enabled := true;
ediresponsavelent.Enabled := true;
edidddeent.Enabled := true;
editelent.Enabled := true;
ediresponsavelrgent.Enabled := true;
ediresponsavelcpfent.Enabled := true;
edinroent.Enabled := true;


ediendcom.Enabled := true;
edicomplcom.Enabled := true;
edibairrocom.Enabled := true;
edicidadecom.Enabled := true;
edicepcom.Enabled := true;
ediresponsavelcom.Enabled := true;
edirgresponsavelcom.Enabled := true;
edicpfresponsavelcom.Enabled := true;
edidddecom.Enabled := true;
editelefonecom.Enabled := true;
edinrocom.Enabled := true;
ediestadocom.Enabled := true;

ediendcob.Enabled := true;
edicompcob.Enabled := true;
edibaicob.Enabled := true;
edicidcob.Enabled := true;
edicepcob.Enabled := true;
ediresponsavelcob.Enabled := true;
edirgresponsavelcob.Enabled := true;
edicpfresponsavelcob.Enabled := true;
edidddcob.Enabled := true;
editelefonecob.Enabled := true;
edinrocob.Enabled := true;
ediestcob.Enabled := true;

ediie.Enabled := true;
edidatanasc.Enabled := true;
edidtcad.Enabled := true;
edidtpespcerasa.Enabled := true;
cbxntabela.Enabled := true;
end;

procedure tfrmPesqOST.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Venda de'
   end;
//endi
if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := True;
     lbltitdatai.Caption := 'Venda de'
   end;
//endi
end;



procedure TfrmPesqOST.cbxclassificarClick(Sender: TObject);
begin
  spdfiltrar.Click;
  habdedidesc;
end;


procedure tfrmPesqOST.habproduto;
begin
{
tabela := 'Clientes';
if frmdados.Cds_clientes.State in [dsinsert, dsedit] then
   frmdados.Cds_clientes.Post;
//endi

tabela := 'sVenda';
if frmdados.Cds_svenda.State in [dsinsert, dsedit] then
   begin
     frmdados.cds_svenda.FieldByName('ccli').asinteger := frmdados.cds_clientes.fieldbyname('codigo').asInteger;
     frmdados.Cds_svenda.Post;
   end;
//endi
}

with frmdados do
  begin
    cds_cmobra.Active := false;
    dbx_cmobra.Active := false;
    dbx_cmobra.SQL.Clear;
    if cbxntabela.Text <> '' then
       dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
    else
       dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+')' );
    //endi
    dbx_cmobra.Active := true;
    cds_cmobra.Active := true;
  end;
//endi


salvaros;

limparprod;
filtraproduto;

//showmessage(inttostr(pctficha.ActivePageIndex));

end;

procedure TfrmPesqOST.dbgosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqOST.dbgdvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqOST.cbxnomecliEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOST.cbxnomefunEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOST.cbxnomerepEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOST.cbxncliExit(Sender: TObject);
begin
if cbxncli.Text <> '' then
   begin
     ediendent.DataField := 'endent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';
     edidddfs.DataField := 'dddfs';
     cbxoutinf1.DataField := 'outinf1';
     cbxoutinf2.DataField := 'outinf2';
     cbxoutinf3.DataField := 'outinf3';
     cbxoutinf4.DataField := 'outinf4';
     cbxoutinf5.DataField := 'outinf5';
     cbxoutinf6.DataField := 'outinf6';
     edinroent.DataField := 'nroent';
   end
else
   begin
     ediendent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';
     edidddfs.DataField := '';
     cbxoutinf1.DataField := '';
     cbxoutinf2.DataField := '';
     cbxoutinf3.DataField := '';
     cbxoutinf4.DataField := '';
     cbxoutinf5.DataField := '';
     cbxoutinf6.DataField := '';
     edinroent.DataField := '';
   end;
//endi
end;

procedure TfrmPesqOST.cbxnfantExit(Sender: TObject);
begin
if cbxnfant.Text <> '' then
   begin
     ediendent.DataField := 'endent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';
     edidddfs.DataField := 'dddfs';
     cbxoutinf1.DataField := 'outinf1';
     cbxoutinf2.DataField := 'outinf2';
     cbxoutinf3.DataField := 'outinf3';
     cbxoutinf4.DataField := 'outinf4';
     cbxoutinf5.DataField := 'outinf5';
     cbxoutinf6.DataField := 'outinf6';
     edinroent.DataField := 'nroent';
   end
else
   begin
     ediendent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';
     edidddfs.DataField := '';
     cbxoutinf1.DataField := '';
     cbxoutinf2.DataField := '';
     cbxoutinf3.DataField := '';
     cbxoutinf4.DataField := '';
     cbxoutinf5.DataField := '';
     cbxoutinf6.DataField := '';
     edinroent.DataField := '';
   end;
//endi

end;

procedure TfrmPesqOST.edidesc11KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc9KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidesc10KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edincliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edinfantKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediendentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicomplentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edibairroentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicidadeentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicepentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.editelefonesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicontatoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.tbsmaodeobraShow(Sender: TObject);
begin
habproduto;
if (ediqtdem.Enabled) then
   ediqtdem.SetFocus;
//endi
end;

procedure TfrmPesqOST.cbxnmoduloEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOST.cbxnmoduloExit(Sender: TObject);
begin
tabela := 'sVenda';

end;

procedure TfrmPesqOST.ediqtdeMKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi

end;

procedure TfrmPesqOST.ediprveMKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi

end;

procedure TfrmPesqOST.edisubtotalMKeyPress(Sender: TObject; var Key: Char);
begin


  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi

  key := #0;

end;

procedure TfrmPesqOST.edicproMExit(Sender: TObject);
begin
{

  try


    edisubtotalM.Text := formatfloat('',strtofloat(tirapontos(ediqtdeM.Text))*strtofloat(tirapontos(ediprveM.Text))   );
    edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

    ediqtdeM.Text := AlinEdNumD(ediqtdeM,3);

  except
    if edicproM.Enabled then
       edicproM.SetFocus;
    //end
  end;

}
end;

procedure TfrmPesqOST.ediqtdeMExit(Sender: TObject);
var fvalor:real;
begin
try

edisubtotalM.Text := formatfloat('',strtofloat(tirapontos(ediqtdeM.Text))*strtofloat(tirapontos(ediprveM.Text))   );
edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

//ediqtdeM.Text := AlinEdNumD(ediqtdeM,3);

fvalor := strtofloat(tirapontos(ediqtdeM.Text));
ediqtdeM.Text := AlinNumD0(14,fvalor);


except
  ediqtdeM.Text := '1';
  if ediqtdeM.Enabled then
     ediqtdeM.SetFocus;
  //endi
end;

end;

procedure TfrmPesqOST.ediprveMExit(Sender: TObject);
begin
try
edisubtotalM.Text := formatfloat('',strtofloat(tirapontos(ediqtdeM.Text))*strtofloat(tirapontos(ediprveM.Text))   );
edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

ediprveM.Text := AlinEdNumD(ediprveM,2);

except
  ediprveM.Text := '0,00';
  if ediprveM.Enabled then
     ediprveM.SetFocus;
  //endi
end;

end;

procedure TfrmPesqOST.edisubtotalMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
//SelectNext(ActiveControl,True,True);

end;

procedure TfrmPesqOST.spdalterarparcMClick(Sender: TObject);
var
  fvalor:real;
begin
sOpcaop                 := 'A';

dbgmao.Enabled          := false;
sCodigo                 := frmdados.Cds_dmobra.fieldbyname('codigo').asString;
ediqtdeM.Text           := formatfloat('###,###,##0.000',frmdados.Cds_dmobra.fieldbyname('qtde').asfloat);
//ediqtdeM.Text           := AlinEdNumD(ediqtdeM,3);

fvalor := strtofloat(tirapontos(ediqtdeM.Text));
ediqtdeM.Text := AlinNumD0(14,fvalor);



fquaa                   := frmdados.Cds_dmobra.fieldbyname('qtde').asfloat;

ediprveM.Text           := formatfloat('###,###,##0.00',frmdados.Cds_dmobra.fieldbyname('valor').asfloat);
ediprveM.Text := AlinEdNumD(ediprveM,2);

edisubtotalM.Text       := formatfloat('###,###,##0.00',frmdados.Cds_dmobra.fieldbyname('subtotal').asfloat);
edisubtotalM.Text       := AlinEdNumD(edisubtotalM,2);


frmdados.Cds_Temp.Edit;
frmdados.Cds_Temp.FieldByName('cod6').AsInteger := frmdados.Cds_dMobra.fieldbyname('cdesc').asInteger;
frmdados.Cds_Temp.FieldByName('cod5').AsInteger := frmdados.Cds_dMobra.fieldbyname('cfun').asInteger;
frmdados.Cds_Temp.FieldByName('cod4').AsInteger := frmdados.Cds_dMobra.fieldbyname('cmod').asInteger;
frmdados.Cds_Temp.FieldByName('cod10').AsInteger := frmdados.Cds_dMobra.fieldbyname('codmat_restaurar').asInteger;


with frmdados do
  begin

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

  end;
//endth

ediqtdeM.SetFocus;

end;


procedure TfrmPesqOST.spdsalvarprodMClick(Sender: TObject);
var
  sprveM, sQtdeM, sSubtotalM, sSubtotalcM, sEouS, sPrcuM, sData, sPcomM, sVcomM, sCfunM, scmodM:string;
  icodigo, itotreg:integer;

  svalsobra:string;
begin

if cbxnproM.Text = '' then
   exit;
//endi

tabela := 'DMOBRA';

sData := datetostr(date);
sPrveM := tirapontos(trim(ediprveM.Text));
sQtdeM := tirapontos(trim(ediqtdeM.Text));
sSubtotalM := tirapontos(trim(edisubtotalM.Text));
sCfunM := frmdados.Cds_temp.fieldbyname('cod5').asString;
sCmodM := frmdados.Cds_temp.fieldbyname('cod4').asString;

//spcomM := floattostr(frmdados.Cds_Funcionarios.fieldbyname('pcom').asfloat);
//svcomM := floattostr(strtofloat(tirapontos(edisubtotalM.text))*strtofloat(tirapontos(spcomM))/100  );

with frmdados do
  begin


    if sOpcaop = 'I' then
       begin


         dbx_Exec.Active := false;
         dbx_Exec.SQL.Clear;
         dbx_Exec.SQL.Add('Insert into dmobra(');

         if cds_cmobra.fieldbyname('codigo').asInteger > 0 then
            dbx_Exec.SQL.Add('cdesc, ');
         //endi

         if cbxnproM.Text <> '' then
            dbx_Exec.SQL.Add('ndesc, ');
         //endi

         if sQtdeM <> '' then
            dbx_Exec.SQL.Add('qtde, ');
         //endi

         if sPrveM <> '' then
            dbx_Exec.SQL.Add('valor, ');
         //endi

         if sSubtotalM <> '' then
            dbx_Exec.SQL.Add('subtotal, ');
         //endi

         if sPcomM <> '' then
            dbx_Exec.SQL.Add('pcom, ');
         //endi

         if sVcomM <> '' then
            dbx_Exec.SQL.Add('vcom, ');
         //endi

         if sCfunM <> '' then
            dbx_Exec.SQL.Add('cfun, ');
         //endi

         if sCmodM <> '' then
            dbx_Exec.SQL.Add('cmod, ');
         //endi

         if cds_temp.FieldByName('cod10').asInteger > 0 then
            dbx_Exec.SQL.Add('codmat_restaurar, ');
         //endi

         dbx_Exec.SQL.Add('codsvenda');

         dbx_Exec.SQL.Add(')');

         dbx_Exec.SQL.Add(' values (');

         if cds_cmobra.fieldbyname('codigo').asInteger > 0 then
            dbx_Exec.SQL.Add(inttostr(cds_cmobra.fieldbyname('codigo').asInteger)+',');
         //endi

         if cbxnproM.Text <> '' then
            dbx_Exec.SQL.Add(quotedstr(cbxnproM.Text)+',');
         //endi

         if sQtdeM <> '' then
            dbx_Exec.SQL.Add(decimal_is_pointf(sQtdeM)+',');
         //endi

         if sPrveM <> '' then
            dbx_Exec.SQL.Add(decimal_is_point(sPrveM)+',');
         //endi

         if sSubtotalM <> '' then
            dbx_Exec.SQL.Add(decimal_is_point(sSubtotalM)+',');
         //endi

         if sPcomM <> '' then
            dbx_Exec.SQL.Add(decimal_is_point(sPcomM)+',');
         //endi

         if sVcomM <> '' then
            dbx_Exec.SQL.Add(decimal_is_point(sVcomM)+',');
         //endi

         if sCfunM <> '' then
            dbx_Exec.SQL.Add(decimal_is_point(sCfunM)+',');
         //endi

         if sCmodM <> '' then
            dbx_Exec.SQL.Add(decimal_is_point(sCmodM)+',');
         //endi

         if cds_temp.FieldByName('cod10').asInteger > 0 then
            dbx_Exec.SQL.Add(inttostr(cds_temp.FieldByName('cod10').asInteger)+',');
         //endi

         dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

         dbx_Exec.SQL.Add(')');

         //showmessage(dbx_Exec.SQL.Text);

         dbx_Exec.ExecSQL;


       end
    else
       begin
         if sOpcaop = 'A' then
            begin

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  qtde = '+decimal_is_pointf(sQtdeM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  Valor = '+decimal_is_point(sPrveM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  Subtotal = '+decimal_is_point(sSubtotalM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  cfun = '+decimal_is_point(scfunM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  cmod = '+decimal_is_point(scmodM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_exec.Active := false;
              Dbx_exec.SQL.Clear;
              Dbx_exec.SQL.Add('Select * from dmobra where (codmat_restaurar = '+inttostr(cds_dmobra.fieldbyname('codmat_restaurar').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
              Dbx_exec.Active := true;
              if Dbx_exec.RecordCount <= 1 then
                 begin

                   cds_matrep.Active := false;
                   dbx_matrep.Active := false;
                   dbx_matrep.SQL.Clear;
                   dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_dmobra.fieldbyname('codmat_restaurar').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
                   dbx_matrep.Active := true;
                   cds_matrep.Active := true;

                   if dbx_matrep.RecordCount > 0 then
                      begin
                        icodigo := cds_matrep.fieldbyname('codigo').AsInteger;
                        dbx_exec.Active := false;
                        dbx_exec.SQL.Clear;
                        dbx_exec.SQL.Add('delete from matrep where (codigo = '+inttostr(icodigo)+')');
                        dbx_exec.ExecSQL;
                      end;
                   //endi

                 end;
              //endi

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  codmat_restaurar = '+inttostr(cds_temp.fieldbyname('cod10').asInteger) +' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;



            end;
         //endi
       end;
    //endi
    dbx_exec.Active := false;

    cds_matrep.Active := false;
    dbx_matrep.Active := false;
    dbx_matrep.SQL.Clear;
    dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_temp.fieldbyname('cod10').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
    dbx_matrep.Active := true;
    cds_matrep.Active := true;

    if dbx_matrep.RecordCount = 0 then
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('insert into matrep (codmat_restaurar, codsvenda) values (');
         dbx_exec.SQL.Add(inttostr(cds_mat_restaurar.fieldbyname('codigo').asInteger));
         dbx_exec.SQL.Add(',');
         dbx_exec.SQL.Add(inttostr(cds_svenda.fieldbyname('codigo').asInteger));
         dbx_exec.SQL.Add(')');
         dbx_exec.ExecSQL;
       end;
    //endi

    dbx_exec.Active := false;

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    totalizafrmpesqvdprod;
    cds_dmobra.Refresh;

    if sOpcaop = 'I' then
       cds_dmobra.Last;
    //endi

  end;
//endth

{

frmdados.cds_exec.Active := false;
frmdados.dbx_exec.Active := false;
frmdados.dbx_exec.SQL.Clear;
frmdados.dbx_exec.SQL.Add('Select sum(valor) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')' );
frmdados.cds_exec.Active := true;
frmdados.dbx_exec.Active := true;

ftvalor := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

frmdados.cds_exec.Active := false;
frmdados.dbx_exec.Active := false;
frmdados.dbx_exec.SQL.Clear;
frmdados.dbx_exec.SQL.Add('Select sum(valor) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger)+')' );
frmdados.cds_exec.Active := true;
frmdados.dbx_exec.Active := true;

ftvalliq := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

frmdados.cds_Exec.Active := false;
frmdados.dbx_Exec.Active := false;
frmdados.dbx_Exec.SQL.Clear;
frmdados.dbx_Exec.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
frmdados.dbx_Exec.Active := true;
frmdados.cds_Exec.Active := true;

icodigo := frmdados.Cds_Exec.fieldbyname('codigo').asInteger;

itotreg := frmdados.cds_Exec.RecordCount;

fvaltot := ftvalor + ftvalliq;

fvalsobra :=  strtofloat(tirapontos(lbltotalMg.caption)) - fvaltot;

svalsobra := tirapontos(trim(floattostr(fvalsobra)));

sdata := frmdados.cds_sVenda.fieldbyname('datacad').asString;
sdata := bar_is_point(sdata);

frmdados.Cds_Exec.Active := false;
frmdados.Dbx_Exec.Active := false;
frmdados.Dbx_Exec.SQL.Clear;

if itotreg = 0 then
   begin
     frmdados.Dbx_Exec.SQL.Add('insert into Vencimentos (');
     frmdados.Dbx_Exec.SQL.Add('ehvenda,');
     frmdados.Dbx_Exec.SQL.Add('c_svenda,');
     frmdados.Dbx_Exec.SQL.Add('descricao,');
     frmdados.Dbx_Exec.SQL.Add('originado,');
     frmdados.Dbx_Exec.SQL.Add('ccli,');
     frmdados.Dbx_Exec.SQL.Add('c_tipo_pgto,');
     frmdados.Dbx_Exec.SQL.Add('csit,');
     if sdata <> '' then
        frmdados.Dbx_Exec.SQL.Add('dte,');
     //endi
     frmdados.Dbx_Exec.SQL.Add('valor');
     frmdados.Dbx_Exec.SQL.Add(') values (');
     frmdados.Dbx_Exec.SQL.Add(quotedstr('F')+',');
     frmdados.Dbx_Exec.SQL.Add(quotedstr(frmdados.cds_sVenda.fieldbyname('codigo').asString)+',');
     frmdados.Dbx_Exec.SQL.Add(quotedstr('Parcela Tratamento')+',');
     frmdados.Dbx_Exec.SQL.Add(quotedstr('4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString)+',');
     frmdados.Dbx_Exec.SQL.Add(inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger)+',');
     frmdados.Dbx_Exec.SQL.Add(inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger)+',');
     frmdados.Dbx_Exec.SQL.Add(inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+',');
     if sdata <> '' then
        frmdados.Dbx_Exec.SQL.Add(quotedstr(sdata)+',');
     //endi
     frmdados.Dbx_Exec.SQL.Add( decimal_is_point( svalsobra ));
     frmdados.Dbx_Exec.SQL.Add(')');

     //provisório
     //frmdados.Dbx_Exec.ExecSQL;

   end
else
   begin

     frmdados.Dbx_Exec.SQL.Add('Update Vencimentos set valor = valor + ');
     frmdados.Dbx_Exec.SQL.Add(decimal_is_point( svalsobra ));
     frmdados.Dbx_Exec.SQL.Add('where codigo = '+inttostr(icodigo));

   end;
//endi

frmdados.Dbx_Exec.ExecSQL;

}




limparprod;
dbgmao.Enabled := true;

sOpcaop := 'I';
ediqtdeM.SetFocus;

dbgmat_rest.Refresh;




end;

procedure TfrmPesqOST.cbxnomefunsKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       spdsalvarprodM.Click;
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi

end;

procedure TfrmPesqOST.edivcomMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//key := 0;
end;

procedure TfrmPesqOST.cbxnmoduloClick(Sender: TObject);
begin
   filtraproduto;
end;

procedure TfrmPesqOST.cbxid2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc9KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxdesc10KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediid1Exit(Sender: TObject);
begin
with frmdados do
  begin
    if (ediid1.Text <> '') then
       begin
         //showmessage('');
         dbx_equipcli.Active := false;
         dbx_equipcli.SQL.Clear;
         dbx_equipcli.SQL.Add('Select * from equipcli where id1 = '+QuotedStr(ediid1.Text));
         dbx_equipcli.Active := true;
         if dbx_equipcli.RecordCount > 0 then
            begin

              cds_svenda.Edit;
              if (cds_indice.FieldByName('id2').AsString <> '') then
                 ediid2.Text  := dbx_equipcli.fieldbyname('id2').asString;
              //endi
              if (cds_indice.FieldByName('desc1').AsString <> '') and (cds_indice.FieldByName('tdesc1').AsString = 'T')then
                 cbxdesc1.Text := dbx_equipcli.fieldbyname('desc1').asString;
              //endi
              if (cds_indice.FieldByName('desc2').AsString <> '') and (cds_indice.FieldByName('tdesc2').AsString = 'T')then
                 cbxdesc2.Text  := dbx_equipcli.fieldbyname('desc2').asString;
              //endi
              if (cds_indice.FieldByName('desc3').AsString <> '') and (cds_indice.FieldByName('tdesc3').AsString = 'T')then
                 cbxdesc3.Text  := dbx_equipcli.fieldbyname('desc3').asString;
              //endi
              if (cds_indice.FieldByName('desc4').AsString <> '') and (cds_indice.FieldByName('tdesc4').AsString = 'T')then
                 cbxdesc4.Text  := dbx_equipcli.fieldbyname('desc4').asString;
              //endi
              if (cds_indice.FieldByName('desc5').AsString <> '') and (cds_indice.FieldByName('tdesc5').AsString = 'T')then
                 cbxdesc5.Text  := dbx_equipcli.fieldbyname('desc5').asString;
              //endi
              if (cds_indice.FieldByName('desc6').AsString <> '') and (cds_indice.FieldByName('tdesc6').AsString = 'T')then
                 cbxdesc6.Text  := dbx_equipcli.fieldbyname('desc6').asString;
              //endi
              if (cds_indice.FieldByName('desc7').AsString <> '') and (cds_indice.FieldByName('tdesc7').AsString = 'T')then
                 cbxdesc7.Text  := dbx_equipcli.fieldbyname('desc7').asString;
              //endi
              if (cds_indice.FieldByName('desc8').AsString <> '') and (cds_indice.FieldByName('tdesc8').AsString = 'T')then
                 cbxdesc8.Text  := dbx_equipcli.fieldbyname('desc8').asString;
              //endi
              if (cds_indice.FieldByName('desc9').AsString <> '') and (cds_indice.FieldByName('tdesc9').AsString = 'T')then
                 cbxdesc9.Text  := dbx_equipcli.fieldbyname('desc9').asString;
              //endi
              if (cds_indice.FieldByName('desc10').AsString <> '') and (cds_indice.FieldByName('tdesc10').AsString = 'T')then
                 cbxdesc10.Text  := dbx_equipcli.fieldbyname('desc10').asString;
              //endi
              if (cds_indice.FieldByName('desc11').AsString <> '') and (cds_indice.FieldByName('tdesc11').AsString = 'T')then
                 cds_svenda.FieldByName('desc11').asString := dbx_equipcli.fieldbyname('desc11').asString;
              //endi
              if (cds_indice.FieldByName('desc12').AsString <> '') and (cds_indice.FieldByName('tdesc12').AsString = 'T')then
                 cds_svenda.FieldByName('desc12').asString := dbx_equipcli.fieldbyname('desc12').asString;
              //endi
              if (cds_indice.FieldByName('desc13').AsString <> '') and (cds_indice.FieldByName('tdesc13').AsString = 'T')then
                 cds_svenda.FieldByName('desc13').asString := dbx_equipcli.fieldbyname('desc13').asString;
              //endi
              if (cds_indice.FieldByName('desc14').AsString <> '') and (cds_indice.FieldByName('tdesc14').AsString = 'T')then
                 cds_svenda.FieldByName('desc14').asString := dbx_equipcli.fieldbyname('desc14').asString;
              //endi
              if (cds_indice.FieldByName('desc15').AsString <> '') and (cds_indice.FieldByName('tdesc15').AsString = 'T')then
                 cds_svenda.FieldByName('desc15').asString := dbx_equipcli.fieldbyname('desc15').asString;
              //endi
              if (cds_indice.FieldByName('desc16').AsString <> '') and (cds_indice.FieldByName('tdesc16').AsString = 'T')then
                 cds_svenda.FieldByName('desc16').asString := dbx_equipcli.fieldbyname('desc16').asString;
              //endi
              if (cds_indice.FieldByName('desc17').AsString <> '') and (cds_indice.FieldByName('tdesc17').AsString = 'T')then
                 cds_svenda.FieldByName('desc17').asString := dbx_equipcli.fieldbyname('desc17').asString;
              //endi
              if (cds_indice.FieldByName('desc18').AsString <> '') and (cds_indice.FieldByName('tdesc18').AsString = 'T')then
                 cds_svenda.FieldByName('desc18').asString := dbx_equipcli.fieldbyname('desc18').asString;
              //endi
              if (cds_indice.FieldByName('desc19').AsString <> '') and (cds_indice.FieldByName('tdesc19').AsString = 'T')then
                 cds_svenda.FieldByName('desc19').asString := dbx_equipcli.fieldbyname('desc19').asString;
              //endi
              if (cds_indice.FieldByName('desc20').AsString <> '') and (cds_indice.FieldByName('tdesc20').AsString = 'T')then
                 cds_svenda.FieldByName('desc20').asString := dbx_equipcli.fieldbyname('desc20').asString;
              //endi
              if (cds_indice.FieldByName('desc21').AsString <> '') and (cds_indice.FieldByName('tdesc21').AsString = 'T')then
                 cds_svenda.FieldByName('desc21').asString := dbx_equipcli.fieldbyname('desc21').asString;
              //endi
              if (cds_indice.FieldByName('desc22').AsString <> '') and (cds_indice.FieldByName('tdesc22').AsString = 'T')then
                 cds_svenda.FieldByName('desc22').asString := dbx_equipcli.fieldbyname('desc22').asString;
              //endi
              if (cds_indice.FieldByName('desc23').AsString <> '') and (cds_indice.FieldByName('tdesc23').AsString = 'T')then
                 cds_svenda.FieldByName('desc23').asString := dbx_equipcli.fieldbyname('desc23').asString;
              //endi
              if (cds_indice.FieldByName('desc24').AsString <> '') and (cds_indice.FieldByName('tdesc24').AsString = 'T')then
                 cds_svenda.FieldByName('desc24').asString := dbx_equipcli.fieldbyname('desc24').asString;
              //endi
              if (cds_indice.FieldByName('desc25').AsString <> '') and (cds_indice.FieldByName('tdesc25').AsString = 'T')then
                 cds_svenda.FieldByName('desc25').asString := dbx_equipcli.fieldbyname('desc25').asString;
              //endi
              if (cds_indice.FieldByName('desc26').AsString <> '') and (cds_indice.FieldByName('tdesc26').AsString = 'T')then
                 cds_svenda.FieldByName('desc26').asString := dbx_equipcli.fieldbyname('desc26').asString;
              //endi
              if (cds_indice.FieldByName('desc27').AsString <> '') and (cds_indice.FieldByName('tdesc27').AsString = 'T')then
                 cds_svenda.FieldByName('desc27').asString := dbx_equipcli.fieldbyname('desc27').asString;
              //endi
              if (cds_indice.FieldByName('desc28').AsString <> '') and (cds_indice.FieldByName('tdesc28').AsString = 'T')then
                 cds_svenda.FieldByName('desc28').asString := dbx_equipcli.fieldbyname('desc28').asString;
              //endi
              if (cds_indice.FieldByName('desc29').AsString <> '') and (cds_indice.FieldByName('tdesc29').AsString = 'T')then
                 cds_svenda.FieldByName('desc29').asString := dbx_equipcli.fieldbyname('desc29').asString;
              //endi
              if (cds_indice.FieldByName('desc30').AsString <> '') and (cds_indice.FieldByName('tdesc30').AsString = 'T')then
                 cds_svenda.FieldByName('desc30').asString := dbx_equipcli.fieldbyname('desc30').asString;
              //endi
              if (cds_indice.FieldByName('desc31').AsString <> '') and (cds_indice.FieldByName('tdesc31').AsString = 'T')then
                 cds_svenda.FieldByName('desc31').asString := dbx_equipcli.fieldbyname('desc31').asString;
              //endi
              if (cds_indice.FieldByName('desc32').AsString <> '') and (cds_indice.FieldByName('tdesc32').AsString = 'T')then
                 cds_svenda.FieldByName('desc32').asString := dbx_equipcli.fieldbyname('desc32').asString;
              //endi
              if (cds_indice.FieldByName('desc33').AsString <> '') and (cds_indice.FieldByName('tdesc33').AsString = 'T')then
                 cds_svenda.FieldByName('desc33').asString := dbx_equipcli.fieldbyname('desc33').asString;
              //endi
              if (cds_indice.FieldByName('desc34').AsString <> '') and (cds_indice.FieldByName('tdesc34').AsString = 'T')then
                 cds_svenda.FieldByName('desc34').asString := dbx_equipcli.fieldbyname('desc34').asString;
              //endi
              if (cds_indice.FieldByName('desc35').AsString <> '') and (cds_indice.FieldByName('tdesc35').AsString = 'T')then
                 cds_svenda.FieldByName('desc35').asString := dbx_equipcli.fieldbyname('desc35').asString;
              //endi
              if (cds_indice.FieldByName('desc36').AsString <> '') and (cds_indice.FieldByName('tdesc36').AsString = 'T')then
                 cds_svenda.FieldByName('desc36').asString := dbx_equipcli.fieldbyname('desc36').asString;
              //endi
              if (cds_indice.FieldByName('desc37').AsString <> '') and (cds_indice.FieldByName('tdesc37').AsString = 'T')then
                 cds_svenda.FieldByName('desc37').asString := dbx_equipcli.fieldbyname('desc37').asString;
              //endi
              if (cds_indice.FieldByName('desc38').AsString <> '') and (cds_indice.FieldByName('tdesc38').AsString = 'T')then
                 cds_svenda.FieldByName('desc38').asString := dbx_equipcli.fieldbyname('desc38').asString;
              //endi

              //ediccli.Text  := dbx_equipcli.fieldbyname('ccli').asString;

              cds_svenda.FieldByName('ccli').asInteger := dbx_equipcli.fieldbyname('ccli').asInteger;

              ediendent.DataField := 'endent';
              edicomplent.DataField := 'complent';
              edibairroent.DataField := 'bairroent';
              edicidadeent.DataField := 'cidadeent';
              edicepent.DataField := 'cepent';
              editelefones.DataField := 'telefones';
              edicontato.DataField := 'contato';
              edidddfs.DataField := 'dddfs';
              cbxoutinf1.DataField := 'outinf1';
              cbxoutinf2.DataField := 'outinf2';
              cbxoutinf3.DataField := 'outinf3';
              cbxoutinf4.DataField := 'outinf4';
              cbxoutinf5.DataField := 'outinf5';
              cbxoutinf6.DataField := 'outinf6';
              edinroent.DataField := 'nroent';
            end;
         //endi
       end;
    //endi

  end;
//endi

end;

procedure TfrmPesqOST.ediid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediid2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;


procedure tfrmPesqOST.salvaros;
var
  iCodigoa:integer;
  sId1a:string;

begin

with frmdados do
  begin

    tabela := 'Clientes';

    if Cds_clientes.State in [dsinsert, dsedit] then
       begin
         Cds_clientes.Post;
       end;
    //endi

    tabela := 'sVenda';

    if Cds_svenda.State in [dsinsert, dsedit] then
       begin
         cds_svenda.FieldByName('ccli').asinteger := cds_clientes.fieldbyname('codigo').asInteger;
         Cds_svenda.Post;
       end;
    //endi

    if ediid1.Text <> '' then
       begin

         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('select * from equipcli where ID1 = '+quotedstr(ediid1.Text));
         dbx_exec.Active := true;

         if dbx_exec.RecordCount = 0 then
            begin
              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Insert into equipcli (');

              if (edidesc38.Text <> '' ) and (cds_indice.FieldByName('tdesc38').asString = 'T') then
                 dbx_exec.SQL.Add('desc38,');
              //endi
              if (ediid2.Text <> '' )then
                 dbx_exec.SQL.Add('id2,');
              //endi
              if (cbxdesc1.Text <> '' ) and (cds_indice.FieldByName('tdesc1').asString = 'T')then
                 dbx_exec.SQL.Add('desc1,');
              //endi
              if (cbxdesc2.Text <> '' ) and (cds_indice.FieldByName('tdesc2').asString = 'T')then
                 dbx_exec.SQL.Add('desc2,');
              //endi
              if (cbxdesc3.Text <> '' ) and (cds_indice.FieldByName('tdesc3').asString = 'T')then
                 dbx_exec.SQL.Add('desc3,');
              //endi
              if (cbxdesc4.Text <> '' ) and (cds_indice.FieldByName('tdesc4').asString = 'T')then
                 dbx_exec.SQL.Add('desc4,');
              //endi
              if (cbxdesc5.Text <> '' ) and (cds_indice.FieldByName('tdesc5').asString = 'T')then
                 dbx_exec.SQL.Add('desc5,');
              //endi
              if (cbxdesc6.Text <> '' ) and (cds_indice.FieldByName('tdesc6').asString = 'T')then
                 dbx_exec.SQL.Add('desc6,');
              //endi
              if (cbxdesc7.Text <> '' ) and (cds_indice.FieldByName('tdesc7').asString = 'T')then
                 dbx_exec.SQL.Add('desc7,');
              //endi
              if (cbxdesc8.Text <> '' ) and (cds_indice.FieldByName('tdesc8').asString = 'T')then
                 dbx_exec.SQL.Add('desc8,');
              //endi
              if (cbxdesc9.Text <> '' ) and (cds_indice.FieldByName('tdesc9').asString = 'T')then
                 dbx_exec.SQL.Add('desc9,');
              //endi
              if (cbxdesc10.Text <> '' ) and (cds_indice.FieldByName('tdesc10').asString = 'T')then
                 dbx_exec.SQL.Add('desc10,');
              //endi
              if (edidesc11.Text <> '' ) and (cds_indice.FieldByName('tdesc11').asString = 'T')then
                 dbx_exec.SQL.Add('desc11,');
              //endi
              if (edidesc12.Text <> '' ) and (cds_indice.FieldByName('tdesc12').asString = 'T')then
                 dbx_exec.SQL.Add('desc12,');
              //endi
              if (edidesc13.Text <> '' ) and (cds_indice.FieldByName('tdesc13').asString = 'T')then
                 dbx_exec.SQL.Add('desc13,');
              //endi
              if (edidesc14.Text <> '' ) and (cds_indice.FieldByName('tdesc14').asString = 'T')then
                 dbx_exec.SQL.Add('desc14');
              //endi
              if (edidesc15.Text <> '' ) and (cds_indice.FieldByName('tdesc15').asString = 'T')then
                 dbx_exec.SQL.Add('desc15,');
              //endi
              if (edidesc16.Text <> '' ) and (cds_indice.FieldByName('tdesc16').asString = 'T')then
                 dbx_exec.SQL.Add('desc16,');
              //endi
              if (edidesc17.Text <> '' ) and (cds_indice.FieldByName('tdesc17').asString = 'T')then
                 dbx_exec.SQL.Add('desc17,');
              //endi
              if (edidesc18.Text <> '' ) and (cds_indice.FieldByName('tdesc18').asString = 'T')then
                 dbx_exec.SQL.Add('desc18,');
              //endi
              if (edidesc19.Text <> '' ) and (cds_indice.FieldByName('tdesc19').asString = 'T')then
                 dbx_exec.SQL.Add('desc19,');
              //endi
              if (edidesc20.Text <> '')  and (cds_indice.FieldByName('tdesc20').asString = 'T')then
                 dbx_exec.SQL.Add('desc20,');
              //endi
              if (edidesc21.Text <> '' ) and (cds_indice.FieldByName('tdesc21').asString = 'T')then
                 dbx_exec.SQL.Add('desc21,');
              //endi
              if (edidesc22.Text <> '' ) and (cds_indice.FieldByName('tdesc22').asString = 'T')then
                 dbx_exec.SQL.Add('desc22,');
              //endi
              if (edidesc23.Text <> '' ) and (cds_indice.FieldByName('tdesc23').asString = 'T')then
                 dbx_exec.SQL.Add('desc23');
              //endi
              if (edidesc24.Text <> '' ) and (cds_indice.FieldByName('tdesc24').asString = 'T')then
                 dbx_exec.SQL.Add('desc24,');
              //endi
              if (edidesc25.Text <> '' ) and (cds_indice.FieldByName('tdesc25').asString = 'T')then
                 dbx_exec.SQL.Add('desc25,');
              //endi
              if (edidesc26.Text <> '' ) and (cds_indice.FieldByName('tdesc26').asString = 'T')then
                 dbx_exec.SQL.Add('desc26,');
              //endi
              if (edidesc27.Text <> '' ) and (cds_indice.FieldByName('tdesc27').asString = 'T')then
                 dbx_exec.SQL.Add('desc27,');
              //endi
              if (edidesc28.Text <> '' ) and (cds_indice.FieldByName('tdesc28').asString = 'T')then
                 dbx_exec.SQL.Add('desc28,');
              //endi
              if (edidesc29.Text <> '' ) and (cds_indice.FieldByName('tdesc29').asString = 'T')then
                 dbx_exec.SQL.Add('desc29,');
              //endi
              if (edidesc30.Text <> '' ) and (cds_indice.FieldByName('tdesc30').asString = 'T')then
                 dbx_exec.SQL.Add('desc30,');
              //endi
              if (edidesc31.Text <> '' ) and (cds_indice.FieldByName('tdesc31').asString = 'T')then
                 dbx_exec.SQL.Add('desc31,');
              //endi
              if (edidesc32.Text <> '' ) and (cds_indice.FieldByName('tdesc32').asString = 'T')then
                 dbx_exec.SQL.Add('desc32,');
              //endi
              if (edidesc33.Text <> '' ) and (cds_indice.FieldByName('tdesc33').asString = 'T')then
                 dbx_exec.SQL.Add('desc33,');
              //endi
              if (edidesc34.Text <> '' ) and (cds_indice.FieldByName('tdesc34').asString = 'T')then
                 dbx_exec.SQL.Add('desc34,');
              //endi
              if (edidesc35.Text <> '' ) and (cds_indice.FieldByName('tdesc35').asString = 'T')then
                 dbx_exec.SQL.Add('desc35,');
              //endi
              if (edidesc36.Text <> '' ) and (cds_indice.FieldByName('tdesc36').asString = 'T')then
                 dbx_exec.SQL.Add('desc36,');
              //endi
              if (edidesc37.Text <> '' ) and (cds_indice.FieldByName('tdesc37').asString = 'T')then
                 dbx_exec.SQL.Add('desc37,');
              //endi

              dbx_exec.SQL.Add('ccli,');

              dbx_exec.SQL.Add('id1');
              
              dbx_exec.SQL.Add(') values (');
              if (edidesc38.Text <> '' ) and (cds_indice.FieldByName('tdesc38').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc38.text)+',');
              //endi
              if (ediid2.Text <> '' )then
                 dbx_exec.SQL.Add(quotedstr(ediid2.text)+',');
              //endi
              if (cbxdesc1.Text <> '' ) and (cds_indice.FieldByName('tdesc1').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc1.text)+',');
              //endi
              if (cbxdesc2.Text <> '' ) and (cds_indice.FieldByName('tdesc2').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc2.text)+',');
              //endi
              if (cbxdesc3.Text <> '' ) and (cds_indice.FieldByName('tdesc3').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc3.text)+',');
              //endi
              if (cbxdesc4.Text <> '' ) and (cds_indice.FieldByName('tdesc4').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc4.text)+',');
              //endi
              if (cbxdesc5.Text <> '' ) and (cds_indice.FieldByName('tdesc5').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc5.text)+',');
              //endi
              if (cbxdesc6.Text <> '' ) and (cds_indice.FieldByName('tdesc6').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc6.text)+',');
              //endi
              if (cbxdesc7.Text <> '' ) and (cds_indice.FieldByName('tdesc7').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc7.text)+',');
              //endi
              if (cbxdesc8.Text <> '' ) and (cds_indice.FieldByName('tdesc8').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc8.text)+',');
              //endi
              if (cbxdesc9.Text <> '' ) and (cds_indice.FieldByName('tdesc9').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc9.text)+',');
              //endi
              if (cbxdesc10.Text <> '' ) and (cds_indice.FieldByName('tdesc10').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(cbxdesc10.text)+',');
              //endi
              if (edidesc11.Text <> '' ) and (cds_indice.FieldByName('tdesc11').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc11.text)+',');
              //endi
              if (edidesc12.Text <> '' ) and (cds_indice.FieldByName('tdesc12').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc12.text)+',');
              //endi
              if (edidesc13.Text <> '' ) and (cds_indice.FieldByName('tdesc13').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc13.text)+',');
              //endi
              if (edidesc14.Text <> '' ) and (cds_indice.FieldByName('tdesc14').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc14.text)+',');
              //endi
              if (edidesc15.Text <> '' ) and (cds_indice.FieldByName('tdesc15').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc15.text)+',');
              //endi
              if (edidesc16.Text <> '' ) and (cds_indice.FieldByName('tdesc16').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc16.text)+',');
              //endi
              if (edidesc17.Text <> '' ) and (cds_indice.FieldByName('tdesc17').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc17.text)+',');
              //endi
              if (edidesc18.Text <> '' ) and (cds_indice.FieldByName('tdesc18').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc18.text)+',');
              //endi
              if (edidesc19.Text <> '' ) and (cds_indice.FieldByName('tdesc19').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc19.text)+',');
              //endi
              if (edidesc20.Text <> '' ) and (cds_indice.FieldByName('tdesc20').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc20.text)+',');
              //endi
              if (edidesc21.Text <> '' ) and (cds_indice.FieldByName('tdesc21').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc21.text)+',');
              //endi
              if (edidesc22.Text <> '' ) and (cds_indice.FieldByName('tdesc22').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc22.text)+',');
              //endi
              if (edidesc23.Text <> '' ) and (cds_indice.FieldByName('tdesc23').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc23.text)+',');
              //endi
              if (edidesc24.Text <> '' ) and (cds_indice.FieldByName('tdesc24').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc24.text)+',');
              //endi
              if (edidesc25.Text <> '' ) and (cds_indice.FieldByName('tdesc25').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc25.text)+',');
              //endi
              if (edidesc26.Text <> '' ) and (cds_indice.FieldByName('tdesc26').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc26.text)+',');
              //endi
              if (edidesc27.Text <> '' ) and (cds_indice.FieldByName('tdesc27').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc27.text)+',');
              //endi
              if (edidesc28.Text <> '' ) and (cds_indice.FieldByName('tdesc28').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc28.text)+',');
              //endi
              if (edidesc29.Text <> '' ) and (cds_indice.FieldByName('tdesc29').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc29.text)+',');
              //endi
              if (edidesc30.Text <> '' ) and (cds_indice.FieldByName('tdesc30').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc30.text)+',');
              //endi
              if (edidesc31.Text <> '' ) and (cds_indice.FieldByName('tdesc31').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc31.text)+',');
              //endi
              if (edidesc32.Text <> '' ) and (cds_indice.FieldByName('tdesc32').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc32.text)+',');
              //endi
              if (edidesc33.Text <> '' ) and (cds_indice.FieldByName('tdesc33').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc33.text)+',');
              //endi
              if (edidesc34.Text <> '' ) and (cds_indice.FieldByName('tdesc34').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc34.text)+',');
              //endi
              if (edidesc35.Text <> '' ) and (cds_indice.FieldByName('tdesc35').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc35.text)+',');
              //endi
              if (edidesc36.Text <> '' ) and (cds_indice.FieldByName('tdesc36').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc36.text)+',');
              //endi
              if (edidesc37.Text <> '' ) and (cds_indice.FieldByName('tdesc37').asString = 'T')then
                 dbx_exec.SQL.Add(quotedstr(edidesc37.text)+',');
              //endi

              dbx_exec.SQL.Add(Cds_sVenda.FieldByName('ccli').asString+',');

              dbx_exec.SQL.Add(quotedstr(ediid1.text) );

              dbx_exec.SQL.Add(')');

              //showmessage(dbx_exec.SQL.Text);

              dbx_exec.ExecSQL;

            end
         else
            begin
              iCodigoa := dbx_exec.fieldbyname('codigo').asInteger;

              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Update equipcli set ccli = '+inttostr(Cds_sVenda.FieldByName('ccli').asInteger)+' where codigo = '+inttostr(iCodigoa));
              dbx_exec.ExecSQL;

              if (ediid2.Text <> '') then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set ID2 = '+quotedstr(ediid2.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc1.Text <> '') and (cds_indice.FieldByName('tdesc1').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc1 = '+quotedstr(cbxdesc1.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc2.Text <> '')  and (cds_indice.FieldByName('tdesc2').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc2 = '+quotedstr(cbxdesc2.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc3.Text <> '')  and (cds_indice.FieldByName('tdesc3').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc3 = '+quotedstr(cbxdesc3.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc4.Text <> '')  and (cds_indice.FieldByName('tdesc4').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc4 = '+quotedstr(cbxdesc4.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc5.Text <> '')  and (cds_indice.FieldByName('tdesc5').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc5 = '+quotedstr(cbxdesc5.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc6.Text <> '')  and (cds_indice.FieldByName('tdesc6').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc6 = '+quotedstr(cbxdesc6.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc7.Text <> '')  and (cds_indice.FieldByName('tdesc7').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc7 = '+quotedstr(cbxdesc7.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc8.Text <> '')  and (cds_indice.FieldByName('tdesc8').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc8 = '+quotedstr(cbxdesc8.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc9.Text <> '')  and (cds_indice.FieldByName('tdesc9').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc9 = '+quotedstr(cbxdesc9.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (cbxdesc10.Text <> '')  and (cds_indice.FieldByName('tdesc10').asString = 'T') then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc10 = '+quotedstr(cbxdesc10.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc11.Text <> '')  and (cds_indice.FieldByName('tdesc11').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc11 = '+quotedstr(edidesc11.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc12.Text <> '')  and (cds_indice.FieldByName('tdesc12').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc12 = '+quotedstr(edidesc12.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc13.Text <> '')  and (cds_indice.FieldByName('tdesc13').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc13 = '+quotedstr(edidesc13.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc14.Text <> '')  and (cds_indice.FieldByName('tdesc14').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc14 = '+quotedstr(edidesc14.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc15.Text <> '')  and (cds_indice.FieldByName('tdesc15').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc15 = '+quotedstr(edidesc15.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc16.Text <> '') and (cds_indice.FieldByName('tdesc16').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc16 = '+quotedstr(edidesc16.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc17.Text <> '')  and (cds_indice.FieldByName('tdesc17').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc17 = '+quotedstr(edidesc17.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc18.Text <> '')  and (cds_indice.FieldByName('tdesc18').asString = 'T') then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc18 = '+quotedstr(edidesc18.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc19.Text <> '')  and (cds_indice.FieldByName('tdesc19').asString = 'T') then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc19 = '+quotedstr(edidesc19.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc20.Text <> '') and (cds_indice.FieldByName('tdesc20').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc20 = '+quotedstr(edidesc20.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc21.Text <> '')  and (cds_indice.FieldByName('tdesc21').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc21 = '+quotedstr(edidesc21.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc22.Text <> '')  and (cds_indice.FieldByName('tdesc22').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc22 = '+quotedstr(edidesc22.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc23.Text <> '')  and (cds_indice.FieldByName('tdesc23').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc23 = '+quotedstr(edidesc23.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc24.Text <> '')  and (cds_indice.FieldByName('tdesc24').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc24 = '+quotedstr(edidesc24.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc25.Text <> '')  and (cds_indice.FieldByName('tdesc25').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc25 = '+quotedstr(edidesc25.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc26.Text <> '')  and (cds_indice.FieldByName('tdesc26').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc26 = '+quotedstr(edidesc26.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc27.Text <> '')  and (cds_indice.FieldByName('tdesc27').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc27 = '+quotedstr(edidesc27.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc28.Text <> '')  and (cds_indice.FieldByName('tdesc28').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc28 = '+quotedstr(edidesc28.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc29.Text <> '')  and (cds_indice.FieldByName('tdesc29').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc29 = '+quotedstr(edidesc29.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc30.Text <> '')  and (cds_indice.FieldByName('tdesc30').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc30 = '+quotedstr(edidesc30.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc31.Text <> '')  and (cds_indice.FieldByName('tdesc31').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc31 = '+quotedstr(edidesc31.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc32.Text <> '')  and (cds_indice.FieldByName('tdesc32').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc32 = '+quotedstr(edidesc32.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc33.Text <> '')  and (cds_indice.FieldByName('tdesc33').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc33 = '+quotedstr(edidesc33.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc34.Text <> '')  and (cds_indice.FieldByName('tdesc34').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc34 = '+quotedstr(edidesc34.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc35.Text <> '')  and (cds_indice.FieldByName('tdesc35').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc35 = '+quotedstr(edidesc35.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc36.Text <> '')  and (cds_indice.FieldByName('tdesc36').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc36 = '+quotedstr(edidesc36.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc37.Text <> '')  and (cds_indice.FieldByName('tdesc37').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc37 = '+quotedstr(edidesc37.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi
              if (edidesc38.Text <> '')  and (cds_indice.FieldByName('tdesc38').asString = 'T')then
                 begin
                   dbx_exec.Active := false;
                   dbx_exec.SQL.Clear;
                   dbx_exec.SQL.Add('Update equipcli set desc38 = '+quotedstr(edidesc38.Text)+' where codigo = '+inttostr(iCodigoa));
                   dbx_exec.ExecSQL;
                 end;
              //endi

            end;
         //endi


       end;
    //endi

    cds_dvenda.Active := false;
    dbx_dvenda.Active := false;
    dbx_dvenda.SQL.Clear;
    dbx_dvenda.SQL.Add('Select * from dvenda where codsvenda = ' + inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dvenda.Active := true;
    cds_dvenda.Active := true;

    cds_dmobra.Active := false;
    dbx_dmobra.Active := false;
    dbx_dmobra.SQL.Clear;
    dbx_dmobra.SQL.Add('Select * from dmobra where codsvenda = ' + inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
    dbx_dmobra.Active := true;
    cds_dmobra.Active := true;

  end;
//endth


end;

procedure tfrmPesqOST.mostrard;
begin
  with frmdados do
    begin
      ediid1.Text := cds_svenda.fieldbyname('id1').asString;
      ediid2.Text := cds_svenda.fieldbyname('id2').asString;
      cbxdesc1.Text := cds_svenda.fieldbyname('desc1').asString;
      cbxdesc2.Text := cds_svenda.fieldbyname('desc2').asString;
      cbxdesc3.Text := cds_svenda.fieldbyname('desc3').asString;
      cbxdesc4.Text := cds_svenda.fieldbyname('desc4').asString;
      cbxdesc5.Text := cds_svenda.fieldbyname('desc5').asString;
      cbxdesc6.Text := cds_svenda.fieldbyname('desc6').asString;
      cbxdesc7.Text := cds_svenda.fieldbyname('desc7').asString;
      cbxdesc8.Text := cds_svenda.fieldbyname('desc8').asString;
      cbxdesc9.Text := cds_svenda.fieldbyname('desc9').asString;
      cbxdesc10.Text := cds_svenda.fieldbyname('desc10').asString;
      //ediccli.Text := cds_svenda.fieldbyname('ccli').asString;
    end;
  //endi

end;

procedure tfrmPesqOST.limpard;
begin
  ediid1.Text := '';
  ediid2.Text := '';

  cbxdesc1.Text := '';
  cbxdesc2.Text := '';
  cbxdesc3.Text := '';
  cbxdesc4.Text := '';
  cbxdesc5.Text := '';
  cbxdesc6.Text := '';
  cbxdesc7.Text := '';
  cbxdesc8.Text := '';
  cbxdesc9.Text := '';
  cbxdesc10.Text := '';

end;

procedure TfrmPesqOST.cbxnmoduloKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqOST.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;


procedure tfrmPesqOST.mostrararq_ext;
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;
 vardir:string;
 pathbuf:array[0..255] of char;
 temppath:string;
 bmp:tbitmap;
 extensao:string;
 stream:tstream;
begin


 with frmdados do
   begin

      imgfoto1.Visible := false;

      if cds_Mat_Restaurarfoto1.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_Mat_Restaurarfilename1.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_Mat_Restaurarfilename1.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_Mat_Restaurar.CreateBlobStream(cds_Mat_Restaurarfoto1, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto1.Picture.Assign(figura)
                  finally
                    imgfoto1.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto1.Picture.Assign(j);
                  finally
                    imgfoto1.Visible := true;
                    j.Free
                  end;
                end;
             //endi
           finally
             stream.Free;
           end;
         end
      else
         begin
           //recupera o diretorio temp do windows
           gettemppath(sizeof(pathbuf),pathbuf);

           //monta path completo para o nosso diretório temporário
           temppath := strpas(pathbuf)+'\blobs';

           //Verifica se o diretório temporário já existe caso contrario cria
           if not directoryexists(temppath) then
              if not forcedirectories(temppath) then
                 begin
                   messagedlg('Não foi possível criar o diretório temporário!!!',mtError,[mbOK],0);
                   sysutils.Abort;
                 end;
              //endi
           //endi
           temppath := temppath + '\'+cds_Mat_Restaurarfoto1.AsString;

           //Grava bloco no arquivo temporário
           cds_Mat_Restaurarfoto1.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

  end;
//endi





procedure TfrmPesqOST.dbgmat_restPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);

  var
    vardir:string;

begin

  vardir := extractfilepath(application.ExeName);


  mostrararq_ext;


  with frmdados do
    begin
      cds_matrep.Active := false;
      dbx_matrep.Active := false;
      dbx_matrep.SQL.Clear;
      dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_mat_restaurar.fieldbyname('codigo').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
      dbx_matrep.Active := true;
      cds_matrep.Active := true;

      if cds_matrep.RecordCount > 0 then
         begin
           shape1.Visible := true;
         end
      else
         begin
           shape1.Visible := false;
         end;
      //endi
    end;
  //endi

end;

procedure TfrmPesqOST.cbxoutinf1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxoutinf2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxoutinf3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxoutinf4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxoutinf5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxoutinf6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.cbxnproMExit(Sender: TObject);
var
  fvalor:real;
begin
tabela := 'sVenda';
ediprveM.Text := formatfloat('###,###,##0.00',frmdados.cds_cmobra.fieldbyname('valor').asfloat);
ediprveM.Text := AlinEdNumD(ediprveM,2);

edisubtotalM.Text := formatfloat('',strtofloat(tirapontos(ediqtdeM.Text))*strtofloat(tirapontos(ediprveM.Text))   );
edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

//ediqtdeM.Text := AlinEdNumD(ediqtdeM,3);

fvalor := strtofloat(tirapontos(ediqtdeM.Text));
ediqtdeM.Text := AlinNumD0(14,fvalor);


end;

procedure TfrmPesqOST.cbxnproMEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOST.DBText1Click(Sender: TObject);
var
  icodigo:integer;

begin

end;

procedure TfrmPesqOST.tbsfinShow(Sender: TObject);
begin

  tabela := 'Vencimentos';


  pctcontacli.ActivePageIndex := 0;


  scoluna := 'n_tipo_pgto';
  edipdesc.DataField := 'pdesc_p';
  edivaldesc.DataField := 'valdesc_p';
  ediliquido.DataField := 'liquido_p';
  edidin.DataField := 'din_p';
  dbgpagar.DataSource := frmDados.Dts_vencto;

  with frmdados do
     begin

       //cds_exec.Active := false;
       //dbx_exec.Active := false;
       //dbx_exec.SQL.Clear;
       //dbx_exec.SQL.Add('Select sum(valor) as tvalor from vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')' );
       //cds_exec.Active := true;
       //dbx_exec.Active := true;

       //ftvalor := cds_exec.fieldbyname('tvalor').asfloat;

       //cds_exec.Active := false;
       //dbx_exec.Active := false;
       //dbx_exec.SQL.Clear;
       //dbx_exec.SQL.Add('Select sum(valor) as tvalor from vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger)+')' );
       //cds_exec.Active := true;
       //dbx_exec.Active := true;

       //ftvalliq := cds_exec.fieldbyname('tvalor').asfloat;

       Cds_comissao.Active := false;
       with  Dbx_Comissao do
           begin
             Active := false;
             SQL.Clear;
             SQL.Add('Select * from Comissao where codigo = 0');
             Active := true;
          end;
       //endth
       Cds_Comissao.Active := true;


       Cds_comissaor.Active := false;
       with  Dbx_Comissaor do
           begin
             Active := false;
             SQL.Clear;
             SQL.Add('Select * from Comissaor where codigo = 0');
             Active := true;
          end;
       //endth
       Cds_Comissaor.Active := true;

       cds_tipo_pgto.Active := false;
       with dbx_tipo_pgto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Tipo_Pgto where (codigo <> '+  inttostr( cds_indice.fieldbyname('codavista').asInteger ) +') and ( mosvd = '+quotedstr('T')+')');
           Active := true;
         end;
       //endth
       cds_tipo_pgto.Active := true;

       cds_vencto.Active := false;
       cds_venctoehvenda.DefaultExpression := quotedstr('F');
       cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
       cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
       cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
       cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
       cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger);
       if cds_sVenda.fieldbyname('datacad').asString <> '' then
          cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
       //endi
       dbx_vencto.Active := false;
       dbx_vencto.SQL.Clear;
       dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
       dbx_vencto.Active := true;
       cds_vencto.Active := true;

       //cds_vencto.Active := false;
       //cds_venctodescricao.DefaultExpression := QuotedStr('Parcela');
       //cds_venctoc_svenda.DefaultExpression := inttostr(cds_svenda.fieldbyname('codigo').asInteger);
       //cds_venctoccli.DefaultExpression := inttostr(cds_clientes.fieldbyname('codigo').asInteger);
       //cds_venctocsit.DefaultExpression := inttostr(cds_indice.fieldbyname('csitr').asInteger);
       //if cds_sVenda.fieldbyname('datacad').asString <> '' then
       //   cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
       //endi

       //with dbx_vencto do
       //  begin
       //    Active := false;
       //    SQL.Clear;
       //    SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger  ) +') and ( csit = '+ inttostr( cds_indice.fieldbyname('csitr').asInteger ) +')');
       //    Active := true;
       //  end;
       //endi
       //cds_vencto.Active := true;

    end;
  //endi

  lbltotG.Caption :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(lbltotalMg.Caption)));

  //fvaltot := ftvalor + ftvalliq;

  //fvalsobra :=  strtofloat(tirapontos(lbltotg.caption)) - fvaltot;

  //showmessage(floattostr(fvalsobra));

  //if  frmdados.cds_vencto.RecordCount = 0 then
  //    frmdados.cds_vencto.Append;
  //endi

  //frmdados.cds_vencto.Edit;
  //frmdados.cds_vencto.FieldByName('valor').AsFloat := frmdados.cds_vencto.FieldByName('valor').AsFloat + fvalsobra;
  //frmdados.cds_vencto.Post;

  //if (fvalsobra > 0) or (fvalsobra < 0) then
  //   begin
  //     frmdados.cds_vencto.Append;
  //     frmdados.cds_vencto.FieldByName('valor').AsFloat := fvalsobra;
  //     frmdados.cds_vencto.Post;
  //   end;
  //endi


end;

procedure TfrmPesqOST.tbspagarShow(Sender: TObject);

begin

  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';
  
end;

procedure TfrmPesqOST.tbspagasShow(Sender: TObject);
begin
  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('T');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';

end;

procedure TfrmPesqOST.dbgpagarEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqOST.dbgpagarExit(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqOST.cbxidmatClick(Sender: TObject);
begin
frmdados.cds_mat_restaurar.Locate('ID',cbxidmat.Text,[]);
end;

procedure TfrmPesqOST.dbgmat_restKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqOST.cbxidmatKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqOST.spdexcluirparcMClick(Sender: TObject);
var
  icodigo:integer;
begin

  tabela := 'DMOBRA';


  if dbgmao.Focused then
     begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin

           with frmdados do
             begin

               Dbx_exec.Active := false;
               Dbx_exec.SQL.Clear;
               Dbx_exec.SQL.Add('Select * from dmobra where (codmat_restaurar = '+inttostr(cds_dmobra.fieldbyname('codmat_restaurar').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
               Dbx_exec.Active := true;
               if Dbx_exec.RecordCount <= 1 then
                  begin

                    cds_matrep.Active := false;
                    dbx_matrep.Active := false;
                    dbx_matrep.SQL.Clear;
                    dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_dmobra.fieldbyname('codmat_restaurar').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
                    dbx_matrep.Active := true;
                    cds_matrep.Active := true;

                    if dbx_matrep.RecordCount > 0 then
                       begin
                         icodigo := cds_matrep.fieldbyname('codigo').AsInteger;
                         dbx_exec.Active := false;
                         dbx_exec.SQL.Clear;
                         dbx_exec.SQL.Add('delete from matrep where (codigo = '+inttostr(icodigo)+')');
                         dbx_exec.ExecSQL;

                         dbgmat_rest.Refresh;

                       end;
                    //endi



                  end;
               //endi

             end;
            //endi


            frmdados.Cds_dmobra.Delete;
            if frmdados.Cds_dmobra.RecordCount = 0 then
               begin
                 //desativabotoes;
                 //spdincluir231.Enabled := true;
                 //cbxnomefun.Enabled := true;
               end;
            //endi

            frmdados.totalizafrmpesqvdprod;









          end
       //endi
     end
  else
     begin
       Showmessage('Nenhum Item do Pedido não foi Selecionado');
     end;
  //endi











end;

procedure TfrmPesqOST.dbgmat_restClick(Sender: TObject);
begin
pctficha.ActivePageIndex := 5;
cbxnmodulo.SetFocus;
end;

procedure TfrmPesqOST.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.EDIDATANASCKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.EDIIEKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidddeentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidtcadKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.EDIDTPESPCERASAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediresponsavelentKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediresponsavelcpfentKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediresponsavelrgentKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edidddcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediresponsavelcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edirgresponsavelcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicpfresponsavelcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.tbsprocShow(Sender: TObject);
begin

with frmdados do
  begin

    cds_procedimentos.Active := false;
    cds_procedimentoscsvenda.DefaultExpression := inttostr(cds_svenda.fieldbyname('codigo').asInteger);
    cds_procedimentosdata.DefaultExpression := quotedstr(datetostr(date));
    dbx_procedimentos.Active := false;
    dbx_procedimentos.SQL.Clear;
    dbx_procedimentos.SQL.Add('select * from procedimentos where csvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger) );
    dbx_procedimentos.Active := true;
    cds_procedimentos.Active := true;

    cds_Mat_Rest_ID.Active := false;
    dbx_Mat_Rest_ID.Active := false;
    dbx_Mat_Rest_ID.SQL.Clear;
    dbx_Mat_Rest_ID.SQL.Add('select m.id, m.codigo from Mat_restaurar m inner join matrep p on m.codigo = p.codmat_restaurar where codsvenda = '+ inttostr(cds_svenda.fieldbyname('codigo').asInteger) +' order by m.codigo');
    dbx_Mat_Rest_ID.Active := true;
    cds_Mat_Rest_ID.Active := true;


  end;
//endi

tabela := 'procedimentos';

end;

procedure TfrmPesqOST.spdinsfotoClick(Sender: TObject);
begin
  if opdabrirfig.Execute then
     begin
       frmdados.cds_clientes.Edit;
       frmdados.cds_clientesfoto.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_clientesfilename.AsString := extractfilename(opdabrirfig.FileName);
       mostrararq_ext_cli;
     end;
  //endi

end;

procedure TfrmPesqOST.spdapafotoClick(Sender: TObject);
begin
  frmdados.Cds_clientes.Edit;
  frmdados.cds_clientesfoto.AsVariant := '';
  mostrararq_ext_cli;

end;


procedure tfrmPesqost.mostrararq_ext_cli;
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;
 vardir:string;
 pathbuf:array[0..255] of char;
 temppath:string;
 bmp:tbitmap;
 extensao:string;
 stream:tstream;
begin


 with frmdados do
   begin

      imgfoto.Visible := false;

      if cds_clientesfoto.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_clientesfilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_clientesfilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_clientes.CreateBlobStream(cds_clientesfoto, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto.Picture.Assign(figura)
                  finally
                    imgfoto.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto.Picture.Assign(j);
                  finally
                    imgfoto.Visible := true;
                    j.Free
                  end;
                end;
             //endi
           finally
             stream.Free;
           end;
         end
      else
         begin
           //recupera o diretorio temp do windows
           gettemppath(sizeof(pathbuf),pathbuf);

           //monta path completo para o nosso diretório temporário
           temppath := strpas(pathbuf)+'\blobs';

           //Verifica se o diretório temporário já existe caso contrario cria
           if not directoryexists(temppath) then
              if not forcedirectories(temppath) then
                 begin
                   messagedlg('Não foi possível criar o diretório temporário!!!',mtError,[mbOK],0);
                   sysutils.Abort;
                 end;
              //endi
           //endi
           temppath := temppath + '\'+cds_clientesfoto.AsString;

           //Grava bloco no arquivo temporário
           cds_clientesfoto.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

  end;
//endi



procedure TfrmPesqOST.edidddecomKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.ediresponsavelcomKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edirgresponsavelcomKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOST.edicpfresponsavelcomKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmpesqost.exibidadosadc;
  begin

    tbscob.Caption := frmdados.Cds_Indice.FieldByName('titendcob').asString;
    tbscom.Caption := frmdados.Cds_Indice.FieldByName('titendcom').asString;

    if frmdados.Cds_Indice.FieldByName('mostraendcob').asString = 'T' then
       begin
         tbscob.tabVisible := true;
       end
    else
       begin
         tbscob.tabVisible := false;
       end;
    //endi

    if frmdados.Cds_Indice.FieldByName('mostraendcom').asString = 'T' then
       begin
         tbscom.tabVisible := true;
       end
    else
       begin
         tbscom.tabVisible := false;
       end;
    //endi



end;



procedure TfrmPesqOST.DBGrid2Enter(Sender: TObject);
begin
tabela := 'procedimentos';
end;

procedure TfrmPesqOST.DBGrid2Exit(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqOST.dbgpagarColEnter(Sender: TObject);
begin
sColuna := dbgpagar.SelectedField.FieldName;
end;

procedure TfrmPesqOST.dbgpagarKeyPress(Sender: TObject; var Key: Char);
begin

if scoluna = 'n_tipo_pgto' then
   if ( key in['0'..'9',#8] ) then
      if frmdados.cds_Tipo_Pgto.Locate('codigo',key,[]) then
         begin
           frmdados.Cds_vencto.Edit;
           frmdados.Cds_vencto.FieldByName('c_tipo_pgto').AsString := key;
         end;
      //endi
   //endi
//endi

if key = #13 then
   begin
     if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
        begin
          frmdados.Cds_vencto.post
        end
     else
        begin
          key := #0;
          SelectNext(ActiveControl,True,True);
        end;
     //endif
   end;
//endi

end;

procedure TfrmPesqOST.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   begin
     if frmdados.Cds_Procedimentos.State in [dsinsert, dsedit] then
        begin
          frmdados.Cds_Procedimentos.post
        end;
     //endif
   end;
//endi

end;

procedure TfrmPesqOST.rgbtipoopClick(Sender: TObject);
begin
  //if frmdados.Cds_sVenda.FieldByName('tipoop').asInteger = 1 then




end;

procedure TfrmPesqOST.rgbtipoopChange(Sender: TObject);
begin



{


  if rgbtipoop.Value = '1' then
     begin
       with frmdados do
          begin

            if application.MessageBox('Deseja Realmente Alterar o Status dessa Ficha para Tratamento?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
               begin




               end
            else
               begin
                 rgbtipoop.Value := '0';

               end;
            //endi
          end;
       //endth
     end;
  //endi


}


end;

procedure TfrmPesqOST.btnbaixairClick(Sender: TObject);
begin
//frmliqost
end;

procedure TfrmPesqOST.btnBaixarClick(Sender: TObject);
begin
//frmliqost
end;

procedure TfrmPesqOST.tbspagtoShow(Sender: TObject);
begin

  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';

end;

procedure TfrmPesqOST.tbsparcelarShow(Sender: TObject);
begin
  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'sVenda';

end;

end.
