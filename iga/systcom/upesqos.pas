{$A8,B-,C+,D+,E-,F-,G+,H+,I+,J-,K-,L+,M-,N+,O+,P+,Q-,R-,S-,T-,U-,V+,W-,X+,Y+,Z1}
{$MINSTACKSIZE $00004000}
{$MAXSTACKSIZE $00100000}
{$IMAGEBASE $00400000}
{$APPTYPE GUI}
{$WARN SYMBOL_DEPRECATED ON}
{$WARN SYMBOL_LIBRARY ON}
{$WARN SYMBOL_PLATFORM ON}
{$WARN UNIT_LIBRARY ON}
{$WARN UNIT_PLATFORM ON}
{$WARN UNIT_DEPRECATED ON}
{$WARN HRESULT_COMPAT ON}
{$WARN HIDING_MEMBER ON}
{$WARN HIDDEN_VIRTUAL ON}
{$WARN GARBAGE ON}
{$WARN BOUNDS_ERROR ON}
{$WARN ZERO_NIL_COMPAT ON}
{$WARN STRING_CONST_TRUNCED ON}
{$WARN FOR_LOOP_VAR_VARPAR ON}
{$WARN TYPED_CONST_VARPAR ON}
{$WARN ASG_TO_TYPED_CONST ON}
{$WARN CASE_LABEL_RANGE ON}
{$WARN FOR_VARIABLE ON}
{$WARN CONSTRUCTING_ABSTRACT ON}
{$WARN COMPARISON_FALSE ON}
{$WARN COMPARISON_TRUE ON}
{$WARN COMPARING_SIGNED_UNSIGNED ON}
{$WARN COMBINING_SIGNED_UNSIGNED ON}
{$WARN UNSUPPORTED_CONSTRUCT ON}
{$WARN FILE_OPEN ON}
{$WARN FILE_OPEN_UNITSRC ON}
{$WARN BAD_GLOBAL_SYMBOL ON}
{$WARN DUPLICATE_CTOR_DTOR ON}
{$WARN INVALID_DIRECTIVE ON}
{$WARN PACKAGE_NO_LINK ON}
{$WARN PACKAGED_THREADVAR ON}
{$WARN IMPLICIT_IMPORT ON}
{$WARN HPPEMIT_IGNORED ON}
{$WARN NO_RETVAL ON}
{$WARN USE_BEFORE_DEF ON}
{$WARN FOR_LOOP_VAR_UNDEF ON}
{$WARN UNIT_NAME_MISMATCH ON}
{$WARN NO_CFG_FILE_FOUND ON}
{$WARN MESSAGE_DIRECTIVE ON}
{$WARN IMPLICIT_VARIANTS ON}
{$WARN UNICODE_TO_LOCALE ON}
{$WARN LOCALE_TO_UNICODE ON}
{$WARN IMAGEBASE_MULTIPLE ON}
{$WARN SUSPICIOUS_TYPECAST ON}
{$WARN PRIVATE_PROPACCESSOR ON}
{$WARN UNSAFE_TYPE OFF}
{$WARN UNSAFE_CODE OFF}
{$WARN UNSAFE_CAST OFF}
unit upesqos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus, dbcgrids, jpeg, clipbrd,
  shellapi, ExtDlgs, Variants;

type
  TfrmPesqOS = class(TForm)
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
    pctficha: TPageControl;
    tbsDadosG: TTabSheet;
    Bevel5: TBevel;
    TbsProdutos: TTabSheet;
    Bevel4: TBevel;
    spdconsultaproduto: TSpeedButton;
    lbltotal: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lblnuni: TLabel;
    Label29: TLabel;
    spdalterarparc: TSpeedButton;
    spdsalvarprod: TSpeedButton;
    spdexcluirparc: TSpeedButton;
    dbgdvenda: TDBGrid;
    edicpro: TEdit;
    ediqtde: TEdit;
    edinpro: TEdit;
    ediprve: TEdit;
    edisubtotal: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    cbxunid: TComboBox;
    dbgos: TDBGrid;
    Bevel3: TBevel;
    ckbimpnf: TCheckBox;
    Lista_img: TImageList;
    Label7: TLabel;
    DBGrid1: TDBGrid;
    cbxnomecli: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomerep: TDBLookupComboBox;
    pnlop: TPanel;
    spdimp: TSpeedButton;
    spdimpnf: TSpeedButton;
    spdlanca: TSpeedButton;
    spdemail: TSpeedButton;
    spdconflan: TSpeedButton;
    spdcanclan: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    lblid1: TLabel;
    lblid2: TLabel;
    lbldesc1: TLabel;
    lbldesc2: TLabel;
    lbldesc3: TLabel;
    lbldesc4: TLabel;
    tbsmaodeobra: TTabSheet;
    tbsoutrasinf: TTabSheet;
    Bevel6: TBevel;
    Bevel7: TBevel;
    lbldesc11: TLabel;
    edidesc11: TDBEdit;
    lbldesc12: TLabel;
    edidesc12: TDBEdit;
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
    Label4: TLabel;
    cbxncli: TDBLookupComboBox;
    cbxnfant: TDBLookupComboBox;
    Label5: TLabel;
    ediendent: TDBEdit;
    Label6: TLabel;
    edicomplent: TDBEdit;
    Label8: TLabel;
    edicidadeent: TDBEdit;
    Label10: TLabel;
    edibairroent: TDBEdit;
    Label11: TLabel;
    edicepent: TDBEdit;
    Label12: TLabel;
    editelefones: TDBEdit;
    Label13: TLabel;
    edicontato: TDBEdit;
    edincli: TDBEdit;
    edinfant: TDBEdit;
    cbxnmodulo: TDBLookupComboBox;
    Label14: TLabel;
    edicproM: TEdit;
    spdconsultaprodutoM: TSpeedButton;
    ediqtdeM: TEdit;
    Label15: TLabel;
    edinproM: TEdit;
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
    edipcomM: TEdit;
    edivcomM: TEdit;
    Label31: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    lbltotalMG: TLabel;
    Label36: TLabel;
    cbxdesc1: TComboBox;
    cbxdesc2: TComboBox;
    cbxdesc3: TComboBox;
    cbxdesc4: TComboBox;
    ediid1: TEdit;
    ediid2: TEdit;
    ediccli: TDBEdit;
    edidddfs: TDBEdit;
    lbltotalc: TLabel;
    SpeedButton1: TSpeedButton;
    tbsimg: TTabSheet;
    dbgimg: TDBCtrlGrid;
    spdimportarfig: TSpeedButton;
    spdapagarfig: TSpeedButton;
    opdAbrirfig: TOpenPictureDialog;
    imgfoto1: TImage;
    spdampliafig: TSpeedButton;
    Label30: TLabel;
    Label35: TLabel;
    Label1: TLabel;
    edinroent: TDBEdit;
    spdfolha: TSpeedButton;
    lbltittipo: TLabel;
    cbxtipo: TComboBox;
    lbltipo_cob: TLabel;
    CBXTIPO_COB: TComboBox;
    pnldadoscliente: TPanel;
    Label38: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    Label39: TLabel;
    DBText3: TDBText;
    DBText4: TDBText;
    Label40: TLabel;
    Label41: TLabel;
    DBText5: TDBText;
    Label42: TLabel;
    DBText6: TDBText;
    Label43: TLabel;
    DBText7: TDBText;
    Label44: TLabel;
    DBText8: TDBText;
    Label45: TLabel;
    DBText9: TDBText;
    DBText10: TDBText;
    Label46: TLabel;
    DBText11: TDBText;
    tbsobs: TTabSheet;
    mmoobs: TDBMemo;
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
    tbsobs2: TTabSheet;
    mmoobs1: TDBMemo;
    TabSheet1: TTabSheet;
    Label47: TLabel;
    DBText12: TDBText;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
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
    procedure TbsProdutosShow(Sender: TObject);
    procedure limparprod;
    procedure edicproKeyPress(Sender: TObject; var Key: Char);
    procedure buscarproduto;
    procedure vestoqNv;
    procedure vestoqv;
    procedure ediqtdeExit(Sender: TObject);
    procedure edicproExit(Sender: TObject);
    procedure ediprveExit(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalKeyPress(Sender: TObject; var Key: Char);
    function  AlinEdNumD(texto:TEdit; idec:integer):string;

    procedure ediprveEnter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure spdsalvarprodClick(Sender: TObject);
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
    procedure spdalterarparcClick(Sender: TObject);
    procedure cbxnfunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnrepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescChange(Sender: TObject);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure verifestq;
    procedure edivaldescExit(Sender: TObject);
    procedure spdconsultaprodutoClick(Sender: TObject);
    
    procedure cbxunidKeyPress(Sender: TObject; var Key: Char);
    procedure cbxunidExit(Sender: TObject);
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
    procedure ckbimpnfClick(Sender: TObject);
    procedure dbgdvendaDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgdvendaDblClick(Sender: TObject);
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
    procedure spdexcluirparcClick(Sender: TObject);
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
    procedure edicproChange(Sender: TObject);
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
    procedure spdconsultaprodutoMClick(Sender: TObject);
    procedure edicproMExit(Sender: TObject);
    procedure edicproMChange(Sender: TObject);
    procedure ediqtdeMExit(Sender: TObject);
    procedure ediprveMExit(Sender: TObject);
    procedure edisubtotalMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdalterarparcMClick(Sender: TObject);
    procedure spdsalvarprodMClick(Sender: TObject);
    procedure cbxnomefunsExit(Sender: TObject);
    procedure edivcomMKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomefunsKeyPress(Sender: TObject; var Key: Char);
    procedure edipcomMKeyPress(Sender: TObject; var Key: Char);
    procedure edivcomMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edipcomMExit(Sender: TObject);
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
    procedure spdexcluirparcMClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure edincliChange(Sender: TObject);
    procedure edincliExit(Sender: TObject);
    procedure tbsimgShow(Sender: TObject);
    procedure mostrararq_ext;
    procedure spdimportarfigClick(Sender: TObject);
    procedure spdapagarfigClick(Sender: TObject);
    procedure dbgimgPaintPanel(DBCtrlGrid: TDBCtrlGrid; Index: Integer);
    procedure ampliafoto;
    procedure dbgimgDblClick(Sender: TObject);
    procedure spdampliafigClick(Sender: TObject);
    procedure spdfolhaClick(Sender: TObject);
    procedure cbxtipoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxdesc1Exit(Sender: TObject);
    procedure cbxdesc2Exit(Sender: TObject);
    procedure cbxdesc3Exit(Sender: TObject);
    procedure cbxdesc4Exit(Sender: TObject);
    procedure cbxdesc5Exit(Sender: TObject);
    procedure cbxdesc6Exit(Sender: TObject);
    procedure cbxdesc7Exit(Sender: TObject);
    procedure cbxdesc8Exit(Sender: TObject);
    procedure cbxdesc9Exit(Sender: TObject);
    procedure cbxdesc10Exit(Sender: TObject);

    procedure preenchecbxdesc1;
    procedure preenchecbxdesc2;
    procedure preenchecbxdesc3;
    procedure preenchecbxdesc4;
    procedure preenchecbxdesc5;
    procedure preenchecbxdesc6;
    procedure preenchecbxdesc7;
    procedure preenchecbxdesc8;
    procedure preenchecbxdesc9;
    procedure preenchecbxdesc10;
    procedure CBXTIPO_COBKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);




  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sOpcaoP, sCodigo, sOPcao, sTipocodM:string;
    icpro, icuni, iccf, icsita, icsitb, icicms, icipi, icMar, icproM, iccfop,
    icpis, iccofins, icmodbc, icirii, icvii, icoimp, icmodbcst :integer;
    fQtdeEstq:real;
    bMostrar, bMostrarM:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf:boolean;

  public
    { Public declarations }
    sTitRel:string;
  end;

var
  frmPesqOS: TfrmPesqOS;

implementation

uses uGeral, uPrincipal, uDados, uImpOrcp, upesqprod, uimpnf, uFecOs, uemailped,
  uMRVD, upesqcmobrad, uImpOS, uMROS, uampliafoto, uimpfolha, uimpproducao,
  uimpfolha2;

{$R *.DFM}

procedure TfrmPesqOS.FormShow(Sender: TObject);
var
   vardir: String;
   x:integer;
begin

  cbxtipo.Clear;
  cbxtipo.Items.Add('ORÇAMENTO');
  cbxtipo.Items.Add('AUTORIZADA');
  cbxtipo.Items.Add('EM MANUTENÇÃO');
  cbxtipo.Items.Add('CONSERTADO');
  cbxtipo.Items.Add('ENTREGUE');
  cbxtipo.Items.Add('DEVOLUÇÃO S/ CONSERTO');

  cbxtipo.Items.Add('NÃO AUTORIZADA');


  cbxtipo_cob.Clear;
  cbxtipo_cob.Items.Add('NORMAL');
  cbxtipo_cob.Items.Add('GARANTIA LOJA');
  cbxtipo_cob.Items.Add('GARANTIA FAB.');


   tabela := 'sVenda';
   sOpcaoP := 'I';
   sOpcao := 'I';

   x:=0;


   pctficha.ActivePageIndex := 0;


   edincli.Top := cbxncli.Top;
   edincli.left := cbxncli.left;
   edincli.Height := cbxncli.Height;
   edincli.left := cbxncli.left;
   edincli.Width := cbxncli.Width;


   edinfant.Top := cbxnfant.Top;
   edinfant.left := cbxnfant.left;
   edinfant.Height := cbxnfant.Height;
   edinfant.left := cbxnfant.left;
   edincli.Width := cbxncli.Width;

   edincli.Visible := false;
   edinfant.Visible := false;

   ediendent.DataField := '';
   edinroent.DataField := '';
   edicomplent.DataField := '';
   edibairroent.DataField := '';
   edicidadeent.DataField := '';
   edicepent.DataField := '';
   edidddfs.DataField := '';
   editelefones.DataField := '';
   edicontato.DataField := '';

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

   if frmDados.Cds_Indice.FieldByName('ordem_producao').AsString = 'T' then
   begin
      cbxclassificar.Items.Add('N.o O.P.');
      cbxtipo.Visible := false;
      cbxtipo_cob.Visible := false;
      lbltittipo.Visible := false;
      lbltipo_cob.Visible := false;
      cbxdesc1.Width := 329;
      cbxdesc4.Width := 329;
      spdfolha.Caption :=  'Imp.';
   end
   else
   begin
     cbxclassificar.Items.Add('N.o O.S.');
   end;

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
   pnldadoscliente.Align := albottom;
   pnlficha.Align := alclient;
   pctficha.Align := alclient;


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

       cds_Funcionarios.Active := false;
       dbx_Funcionarios.Active := false;
       dbx_Funcionarios.SQL.Clear;
       dbx_Funcionarios.SQL.Add('select * from Funcionarios order by nome');
       dbx_Funcionarios.Active := true;
       cds_Funcionarios.Active := true;

       cds_modulo.Active := false;
       dbx_modulo.Active := false;
       dbx_modulo.SQL.Clear;
       dbx_modulo.SQL.Add('select * from modulo order by codigo');
       dbx_modulo.Active := true;
       cds_modulo.Active := true;

       while not cds_unidade.Eof do
         begin
           cbxunid.Items.Add(cds_Unidade.fieldbyname('descricao').asString);
           cds_unidade.Next;
         end;
       //endw

       tabela := 'Temp';

       cds_temp.Edit;
       cds_tempcod4.Value := 1;

       Tabela := 'sVenda';

     end;
   //endth

   spdlimpar.Click;
   //bloqueiabotoesP;
   //bloqueiabotoesF;


   preenchecbxdesc1;
   preenchecbxdesc2;
   preenchecbxdesc3;
   preenchecbxdesc4;
   preenchecbxdesc5;
   preenchecbxdesc6;
   preenchecbxdesc7;
   preenchecbxdesc8;
   preenchecbxdesc9;
   preenchecbxdesc10;



end;

procedure TfrmPesqOS.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqOS.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqOS.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqOS.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqOS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqos:=nil;
  form_ativo := '';

end;

procedure TfrmPesqOS.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqOS.dbgosKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
      frmdados.Cds_sVenda.Post;
   //endi
//endi
end;

procedure TfrmPesqOS.dbgosEnter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqOS.dbgdvendaEnter(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmPesqOS.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqOS.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqOS.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqOS.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sDesc : String;
  ftotcusto, ftotpreco:real;
  iccli, icfun, icrep, inorc, inos:integer;
begin

  with frmdados do
    begin
      Cds_sVenda.Active := false;
      Cds_sVendatpo.DefaultExpression := '1';
      Cds_sVendadatacad.DefaultExpression := quotedstr( datetostr( date ) );
      Cds_sVendahrcad.DefaultExpression := quotedstr(copy(timetostr(time),1,5));
      //cds_sVendaobs.DefaultExpression := quotedstr(frmdados.Cds_Indice.fieldbyname('obs').asString);
      //cds_sVendaobs1.DefaultExpression := quotedstr(frmdados.Cds_Indice.fieldbyname('obs1').asString);
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
  sDesc  := '';
  iccli  := 0;
  icfun  := 0;
  icrep  := 0;
  inorc  := 0;
  inos   := 0;


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

procedure TfrmPesqOS.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;
  limparprod;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqOS.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   if edincli.Visible then
      begin
        edincli.Visible := false;
        edinfant.Visible := false;

        frmdados.Cds_Clientes.Cancel;

        cbxncli.Visible := true;
        cbxnfant.Visible := true;
        ediccli.Visible := true;

        if cbxncli.Enabled then
           cbxncli.SetFocus;
        //endi


      end
   else
      begin
        close;
      end;
   //endi
//endi
if (key = 45)          and
   (not dbgos.Visible) and
   ((cbxncli.Focused)  or (cbxnfant.Focused) or (ediccli.Focused))
then
   begin
     if cbxncli.Text = '' then
        begin
          showmessage('Localize o cliente antes de inseri-lo, para que não haja duplicidade de registro!');
          exit;
        end;
     //endi

     edincli.Visible := true;
     edinfant.Visible := true;

     if edincli.Enabled then
        edincli.SetFocus;
     //endi

     tabela := 'Clientes';
     frmdados.Cds_Clientes.Append;
     tabela := 'sVenda';

     cbxncli.Visible := false;
     cbxnfant.Visible := false;
     ediccli.Visible := false;

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

procedure TfrmPesqOS.DBEdit1Exit(Sender: TObject);
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

procedure TfrmPesqOS.DBEdit1Enter(Sender: TObject);
begin
frmdados.cds_ClientesCPF.EditMask := '';
end;

procedure TfrmPesqOS.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
end;

procedure TfrmPesqOS.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';

AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'sVenda';
limpar;
frmdados.Cds_sVenda.Append;
if ediid1.Enabled then
   ediid1.SetFocus;
//endi
end;

procedure tfrmPesqOS.filtraproduto;
begin
  with frmdados do
    begin

      if Cds_svenda.State in [dsinsert, dsedit] then
         Cds_svenda.Post;
      //endi

      cds_imgequipcli.Active := false;
      cds_imgequipclicsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      dbx_imgequipcli.Active := false;
      dbx_imgequipcli.SQL.Clear;
      dbx_imgequipcli.SQL.Add('Select * from imgequipcli where csvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) );
      dbx_imgequipcli.Active := true;
      cds_imgequipcli.Active := true;

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

procedure TfrmPesqOS.TbsProdutosShow(Sender: TObject);
begin
  habproduto;

  if (edicpro.Enabled) then
     edicpro.SetFocus;
  //endi

end;



procedure tfrmPesqOS.limparprod;
begin
  edicpro.Text := '';
  ediqtde.Text := '0,000';
  fquaa        := 0;

  ediqtde.Text := AlinEdNumD(ediqtde,3);

  ediprve.Text := '0,00';
  ediprve.Text := AlinEdNumD(ediprve,2);

  edisubtotal.Text := '0,00';
  edisubtotal.Text := AlinEdNumD(edisubtotal,2);

  edinpro.Text := '';
  cbxunid.Text := '';
  //ediespecificacao.Text := '';
  lblnuni.Caption := '';

  edicproM.Text := '';
  ediqtdeM.Text := '0,000';

  ediqtdeM.Text := AlinEdNumD(ediqtdeM,3);

  ediprveM.Text := '0,00';
  ediprveM.Text := AlinEdNumD(ediprveM,2);

  edisubtotalM.Text := '0,00';
  edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

  edinproM.Text := '';

  edipcomM.Text := '0,00';
  edipcomM.Text := AlinEdNumD(edipcomM,2);

  edivcomM.Text := '0,00';
  edivcomM.Text := AlinEdNumD(edivcomM,2);

  ckbimpnf.Checked := true;
  bimpnf := true;
  icpro := 0;
  icproM := 0;

end;

procedure TfrmPesqOS.edicproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;


procedure tfrmPesqOS.buscarproduto;
begin
if pctficha.ActivePage = TbsProdutos then
   begin
     if edicpro.Text = '' then
        begin
          icpro := 0;
          exit;
        end;
     //endi
     with frmdados do
       begin
         dbx_vProdutos.Active := false;
         dbx_vProdutos.SQL.Clear;
         dbx_vProdutos.SQL.Add('Select * from vProdutos Where cBar = '+Quotedstr(edicpro.text));
         dbx_vProdutos.Active := true;
         if dbx_vProdutos.RecordCount = 0 then
            begin
              dbx_vProdutos.Active := false;
              dbx_vProdutos.SQL.Clear;
              dbx_vProdutos.SQL.Add('Select * from vProdutos Where cAux = '+Quotedstr(edicpro.text));
              dbx_vProdutos.Active := true;
              if dbx_vProdutos.RecordCount = 0 then
                 begin
                   dbx_vProdutos.Active := false;
                   dbx_vProdutos.SQL.Clear;
                   dbx_vProdutos.SQL.Add('Select * from vProdutos Where Descricao = '+Quotedstr(edicpro.Text));
                   dbx_vProdutos.Active := true;
                   if dbx_vProdutos.RecordCount = 0 then
                      begin
                        try
                          dbx_vProdutos.Active := false;
                          dbx_vProdutos.SQL.Clear;
                          dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+edicpro.Text);
                          dbx_vProdutos.Active := true;
                          if dbx_vProdutos.RecordCount = 0 then
                             begin
                               limparprod;
                               showmessage('Código Não Existe!!!');
                               icpro := 0;
                               icuni := 0;
                               bimpnf := true;

                               iccf   := 0;
                               icsita := 0;
                               icMar  := 0;
                               icsitb := 0;
                               icicms := 0;
                               icipi  := 0;
                               iccfop  := 0;


                               icpis  := 0;
                               iccofins  := 0;
                               icmodbc  := 0;
                               icirii  := 0;
                               icvii  := 0;
                               icoimp  := 0;
                               icmodbcst  := 0;



                               fQtdeEstq := 0;
                               sActDesc := 'T';
                               bMostrar := false;
                               sTipoCod := '';
                               if edicpro.Enabled then
                                  edicpro.SetFocus
                               else
                                  ediqtde.SetFocus;
                               //endi
                             end
                          else
                             begin
                               edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                               //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                               icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                               icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                               bimpnf := true;

                               iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                               icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                               icMar := dbx_vProdutos.fieldbyname('cmar').asInteger;

                               icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                               icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                               icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                               iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

                               icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                               iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                               icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
                               icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                               icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                               icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                               icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;
                               
                               ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                               ediprve.Text := AlinEdNumD(ediprve,2);

                               fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                               fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                               sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                               bMostrar := true;
                               sTipoCod := 'Codigo';

                               dbx_Exec.Active := false;
                               dbx_Exec.SQL.Clear;
                               dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                               dbx_Exec.Active := true;
                               cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                             end
                          //endi
                        except
                          begin
                            icpro := 0;
                            icuni := 0;
                            bimpnf := true;

                            iccf   := 0;
                            icsita := 0;
                            icMar  := 0;
                            icsitb := 0;
                            icicms := 0;
                            icipi  := 0;
                            iccfop  := 0;

                            icpis  := 0;
                            iccofins  := 0;
                            icmodbc  := 0;
                            icirii  := 0;
                            icvii  := 0;
                            icoimp  := 0;
                            icmodbcst  := 0;
                            
                            fQtdeEstq := 0;
                            sActDesc := 'T';
                            bMostrar := false;
                            sTipoCod := '';
                          end;
                        end
                      end
                   else
                      begin
                        edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                        //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                        icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                        icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                        bimpnf := true;

                        iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                        icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                        icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;

                        icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                        icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                        icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                        iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

                        icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                        iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                        icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
                        icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                        icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                        icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                        icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;
                        

                        ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                        ediprve.Text := AlinEdNumD(ediprve,2);

                        fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                        fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                        sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                        bMostrar := true;
                        sTipoCod := 'Desc';

                        dbx_Exec.Active := false;
                        dbx_Exec.SQL.Clear;
                        dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                        dbx_Exec.Active := true;
                        cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                      end
                   //endi
                 end
              else
                 begin
                   edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                   //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                   icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                   icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                   bimpnf := true;

                   iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                   icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                   icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;

                   icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                   icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                   icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                   iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

                   icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                   iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                   icmodbc  := dbx_vProdutos.fieldbyname('modbc').asInteger;
                   icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                   icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                   icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                   icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;


                   ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                   ediprve.Text := AlinEdNumD(ediprve,2);

                   fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                   fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                   sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                   bMostrar := true;
                   sTipoCod := 'cAux';

                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                   dbx_Exec.Active := true;
                   cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                 end
              //endi
            end
         else
            begin
              edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
              //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
              icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
              icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
              bimpnf := true;

              iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
              icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
              icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;


              icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
              icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
              icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
              iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

              icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
              iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
              icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
              icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
              icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
              icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
              icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;


              ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
              ediprve.Text := AlinEdNumD(ediprve,2);


              fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
              fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
              sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
              bMostrar := true;
              sTipoCod := 'cBar';

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
              dbx_Exec.Active := true;
              cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

            end;
         //endi
         dbx_vProdutos.Active := false;
         dbx_exec.Active := false;
       end;
     //endi
   end;
//endi

if pctficha.ActivePage = tbsmaodeobra then
   begin

     if edicproM.Text = '' then
        begin
          icproM := 0;
          exit;
        end;
     //endi
     with frmdados do
       begin
         dbx_cmobra.Active := false;
         dbx_cmobra.SQL.Clear;
         dbx_cmobra.SQL.Add('Select * from cmobra Where ( cBar = '+Quotedstr(edicproM.text) + ') and ( cmod = '+ inttostr( cds_temp.fieldbyname('cod4').asInteger )+')'  )  ;
         dbx_cmobra.Active := true;
         if dbx_cmobra.RecordCount = 0 then
            begin
              dbx_cmobra.Active := false;
              dbx_cmobra.SQL.Clear;
              dbx_cmobra.SQL.Add('Select * from cmobra Where ( cAux = '+Quotedstr(edicproM.text) + ') and ( cmod = '+ inttostr( cds_temp.fieldbyname('cod4').asInteger )+')');
              dbx_cmobra.Active := true;
              if dbx_cmobra.RecordCount = 0 then
                 begin
                   dbx_cmobra.Active := false;
                   dbx_cmobra.SQL.Clear;
                   dbx_cmobra.SQL.Add('Select * from cmobra Where ( Descr = '+Quotedstr(edicproM.text) + ') and ( cmod = '+ inttostr( cds_temp.fieldbyname('cod4').asInteger )+')');

                   dbx_cmobra.Active := true;
                   if dbx_cmobra.RecordCount = 0 then
                      begin
                        try
                          dbx_cmobra.Active := false;
                          dbx_cmobra.SQL.Clear;
                          dbx_cmobra.SQL.Add('Select * from cmobra Where ( Codigo = '+Quotedstr(edicproM.text) + ') and ( cmod = '+ inttostr( cds_temp.fieldbyname('cod4').asInteger )+')');
                          dbx_cmobra.Active := true;
                          if dbx_cmobra.RecordCount = 0 then
                             begin
                               limparprod;
                               showmessage('Código Não Existe!!!');
                               icproM := 0;

                               bMostrarM := false;
                               sTipoCodM := '';
                               if edicproM.Enabled then
                                  edicproM.SetFocus
                               else
                                  ediqtdeM.SetFocus;
                               //endi
                             end
                          else
                             begin
                               edinproM.Text := dbx_cmobra.fieldbyname('descr').asString;
                               icproM := dbx_cmobra.fieldbyname('codigo').asInteger;

                               ediprveM.Text := formatfloat('###,###,##0.00',dbx_cmobra.fieldbyname('valor').asfloat);
                               ediprveM.Text := AlinEdNumD(ediprveM,2);

                               bMostrarM := true;
                               sTipoCodM := 'Codigo';
                             end
                          //endi
                        except
                          begin
                            icproM := 0;
                            bMostrarM := false;
                            sTipoCodM := '';
                          end;
                        end
                      end
                   else
                      begin
                        edinproM.Text := dbx_cmobra.fieldbyname('descr').asString;
                        icproM := dbx_cmobra.fieldbyname('codigo').asInteger;

                        ediprveM.Text := formatfloat('###,###,##0.00',dbx_cmobra.fieldbyname('valor').asfloat);
                        ediprveM.Text := AlinEdNumD(ediprveM,2);

                        bMostrarM := true;
                        sTipoCodM := 'Desc';


                      end
                   //endi
                 end
              else
                 begin
                   edinproM.Text := dbx_cmobra.fieldbyname('descr').asString;
                   icproM := dbx_cmobra.fieldbyname('codigo').asInteger;

                   ediprveM.Text := formatfloat('###,###,##0.00',dbx_cmobra.fieldbyname('valor').asfloat);
                   ediprveM.Text := AlinEdNumD(ediprveM,2);

                   bMostrarM := true;
                   sTipoCodM := 'cAux';

                 end
              //endi
            end
         else
            begin
              edinproM.Text := dbx_cmobra.fieldbyname('descr').asString;
              icproM := dbx_cmobra.fieldbyname('codigo').asInteger;

              ediprveM.Text := formatfloat('###,###,##0.00',dbx_cmobra.fieldbyname('valor').asfloat);
              ediprveM.Text := AlinEdNumD(ediprveM,2);

              bMostrarM := true;
              sTipoCodM := 'cBar';

            end;
         //endi
         dbx_cmobra.Active := false;
         dbx_exec.Active := false;
       end;
     //endi



   end;
//endi

end;

procedure tfrmPesqOS.vestoqNv;
var
  fprojecao, fqtde:real;
  icod:integer;

begin
    fqtde := strtofloat(tirapontos(ediqtde.Text));
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from dvenda where (cpro = '+inttostr(icpro)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger )  +')');
        dbx_exec.Active := true;
        if sOpcaop = 'I' then
           begin
             //fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat
             fprojecao := fQtde;

           end
        else
           begin
             if sOpcaop = 'A' then
                fprojecao := fQtde;
             //endi
           end;
        //endi
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         icod := icpro;
         limparprod;

         sActDesc := 'T';
         bMostrar := false;
         sTipoCod := '';
         showmessage('Estoque Insuficiente, Contate o Gerente!!! Quantidade Atual No Estoque: '+Formatfloat('###,###,##0.000',fQtdeEstq));
         fQtdeEstq := 0;
         icpro := 0;
         icuni := 0;
         bimpnf := true;

         iccf   := 0;
         icsita := 0;
         iCMar  := 0;

         icsitb := 0;
         icicms := 0;
         icipi  := 0;
         iccfop  := 0;

         icpis  := 0;
         iccofins  := 0;
         icmodbc  := 0;
         icirii  := 0;
         icvii  := 0;
         icoimp  := 0;
         icmodbcst  := 0;


         if sOpcaop = 'I' then
            edicpro.Text := inttostr(icod);
         //endi

         edicpro.Enabled := true;
         spdconsultaproduto.Enabled := true;

         dbgdvenda.Enabled := true;
         sOpcaop := 'I';

         if edicpro.Enabled then
             edicpro.SetFocus;
         //endi

       end;
    //endi
end;

procedure tfrmPesqOS.vestoqV;
var
  fprojecao, fqtde:real;

begin
    fqtde := strtofloat(tirapontos(ediqtde.Text));
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from dvenda where (cpro = '+inttostr(icpro)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +')');
        dbx_exec.Active := true;
        //fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        fprojecao := fQtde;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         //gera relatorio venda com estoque insuficiente
         //com programação da entrega
       end;
    //endi
end;

procedure TfrmPesqOS.ediqtdeExit(Sender: TObject);
begin
try
verifestq;

edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
edisubtotal.Text := AlinEdNumD(edisubtotal,2);

fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
ediqtde.Text := AlinEdNumD(ediqtde,3);

except
  ediqtde.Text := '0,00';
  if ediqtde.Enabled then
     ediqtde.SetFocus;
  //endi   
end;

end;

procedure TfrmPesqOS.edicproExit(Sender: TObject);
begin
  try

    buscarproduto;

    edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
    edisubtotal.Text := AlinEdNumD(edisubtotal,2);

    fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
    ediqtde.Text := AlinEdNumD(ediqtde,3);

  except
    if edicpro.Enabled then
       edicpro.SetFocus;
    //end   
  end;
end;

procedure TfrmPesqOS.ediprveExit(Sender: TObject);
begin
try
edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
edisubtotal.Text := AlinEdNumD(edisubtotal,2);

fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
ediprve.Text := AlinEdNumD(ediprve,2);

except
  ediprve.Text := '0,00';
  if ediprve.Enabled then
     ediprve.SetFocus;
  //endi   
end;

end;

procedure TfrmPesqOS.ediqtdeKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.ediprveKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.edisubtotalKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       //SelectNext(ActiveControl,True,True);
       spdsalvarprod.Click;
       exit;
     end;
  //endif

  key := #0;

end;


function TfrmPesqOS.AlinEdNumD(texto:TEdit; idec:integer):string;
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


procedure TfrmPesqOS.ediprveEnter(Sender: TObject);
begin
//ediprve.Text := trim(ediprve.text);
end;

procedure TfrmPesqOS.DBLookupComboBox4Enter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOS.DBLookupComboBox4Exit(Sender: TObject);
begin
tabela := 'dVenda';
end;

procedure TfrmPesqOS.spdsalvarprodClick(Sender: TObject);
var
  sprve, sQtde, sSubtotal, sSubtotalc, sEouS, sPrcu, sData:string;
begin

verifestq;


if edicpro.Text = '' then
   if edinpro.Text = '' then
      exit;
   //endi
//endi

tabela := 'dVenda';

sData := datetostr(date);
sPrve := tirapontos(trim(ediprve.Text));
sQtde := tirapontos(trim(ediqtde.Text));
sSubtotal := tirapontos(trim(edisubtotal.Text));
sPrcu := floattostr(fPrcu);
sSubtotalc := floattostr(fsubtotalc);
sEouS := 'S';


with frmdados do
  begin


    if sOpcaop = 'I' then
       begin

         Dbx_Exec.Active := false;
         Dbx_Exec.SQL.Clear;
         Dbx_Exec.SQL.Add('Select * from dvenda where (cpro = '+inttostr(icpro)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +') and (prve = '+decimal_is_point(sPrve)+')' );
         Dbx_Exec.Active := true;
         if dbx_Exec.RecordCount = 0 then
            begin

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Insert into dVenda(');


              // 1
              if icpro > 0 then
                 dbx_Exec.SQL.Add('cpro, ');
              //endi

              //2
              if edinpro.Text <> '' then
                 dbx_Exec.SQL.Add('npro, ');
              //endi

              //3
              if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or ((cbxtipo.ItemIndex > 0) and (cbxtipo.ItemIndex < 6)) then
                 dbx_Exec.SQL.Add('ehvenda, ');
              //endi

              //4
              if sQtde <> '' then
                 dbx_Exec.SQL.Add('qtde, ');
              //endi

              //5
              if sPrve <> '' then
                 dbx_Exec.SQL.Add('prve, ');
              //endi

              //6
              if sSubtotal <> '' then
                 dbx_Exec.SQL.Add('subtotal, ');
              //endi

              //7
              if sEouS <> '' then
                 dbx_Exec.SQL.Add('EouS, ');
              //endi

              //8
              if icuni > 0 then
                 dbx_Exec.SQL.Add('cuni, ');
              //endi

              //9
              if iccf > 0 then
                 dbx_Exec.SQL.Add('codcf, ');
              //endi

              //10
              if icsita > 0 then
                 dbx_Exec.SQL.Add('codsita, ');
              //endi

              //11
              if icMar > 0 then
                 dbx_Exec.SQL.Add('cMar, ');
              //endi

              //12
              if icsitb > 0 then
                 dbx_Exec.SQL.Add('codsitb, ');
              //endi

              //13
              if icicms > 0 then
                 dbx_Exec.SQL.Add('codicms, ');
              //endi

              //14
              if icipi > 0 then
                 dbx_Exec.SQL.Add('codipi, ');
              //endi

              //15
              if iccfop > 0 then
                 dbx_Exec.SQL.Add('codcfop, ');
              //endi


              // 14.04.2010

              //16
              if icpis > 0 then
                 dbx_Exec.SQL.Add('codpis, ');
              //endi

              //17
              if iccofins > 0 then
                 dbx_Exec.SQL.Add('codcofins, ');
              //endi

              //18
              if icmodbc > 0 then
                 dbx_Exec.SQL.Add('codmodbc, ');
              //endi

              //19
              if icirii > 0 then
                 dbx_Exec.SQL.Add('codirii, ');
              //endi

              //20
              if icvii > 0 then
                 dbx_Exec.SQL.Add('codvii, ');
              //endi

              //21
              if icoimp > 0 then
                 dbx_Exec.SQL.Add('codoimp, ');
              //endi

              //22
              if icmodbcst > 0 then
                 dbx_Exec.SQL.Add('codmodbcst, ');
              //endi

              //23
              if sActDesc <> '' then
                 dbx_Exec.SQL.Add('ActDesc, ');
              //endi

              //24
              if sPrcu <> '' then
                 dbx_Exec.SQL.Add('prcu, ');
              //endi

              //25
              if sSubtotalC <> '' then
                 dbx_Exec.SQL.Add('SubtotalC, ');
              //endi

              //26
              dbx_Exec.SQL.Add('Data_OP, ');

              //27
              dbx_Exec.SQL.Add('impnf, ');

              //28
              dbx_Exec.SQL.Add('codsvenda');

              dbx_Exec.SQL.Add(')');

              dbx_Exec.SQL.Add(' values (');

              //1
              if icpro > 0 then
                 dbx_Exec.SQL.Add(inttostr(icpro)+',');
              //endi

              //2
              if edinpro.Text <> '' then
                 dbx_Exec.SQL.Add(quotedstr(edinpro.Text)+',');
              //endi

              //3
              if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or ((cbxtipo.ItemIndex > 0) and (cbxtipo.ItemIndex < 6)) then
                  dbx_Exec.SQL.Add(Quotedstr('T')+',');
              //endi

              //4
              if sQtde <> '' then
                 dbx_Exec.SQL.Add(decimal_is_pointf(sQtde)+',');
              //endi

              //5
              if sPrve <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
              //endi

              //6
              if sSubtotal <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
              //endi

              //7
              if sEouS <> '' then
                 dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
              //endi

              //8
              if icuni > 0 then
                 dbx_Exec.SQL.Add(inttostr(icuni)+',');
              //endi

              //9
              if iccf > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccf)+',');
              //endi

              //10
              if icsita > 0 then
                 dbx_Exec.SQL.Add(inttostr(icsita)+',');
              //endi

              //11
              if icMar > 0 then
                 dbx_Exec.SQL.Add(inttostr(icMar)+',');
              //endi

              //12
              if icsitb > 0 then
                 dbx_Exec.SQL.Add(inttostr(icsitb)+',');
              //endi

              //13
              if icicms > 0 then
                 dbx_Exec.SQL.Add(inttostr(icicms)+',');
              //endi

              //14
              if icipi > 0 then
                 dbx_Exec.SQL.Add(inttostr(icipi)+',');
              //endi

              //15
              if iccfop > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccfop)+',');
              //endi


              // 14.04.2010

              //16
              if icpis > 0 then
                 dbx_Exec.SQL.Add(inttostr(icpis)+',');
              //endi

              //17
              if iccofins > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccofins)+',');
              //endi

              //18
              if icmodbc > 0 then
                 dbx_Exec.SQL.Add(inttostr(icmodbc)+',');
              //endi

              //19
              if icirii > 0 then
                 dbx_Exec.SQL.Add(inttostr(icirii)+',');
              //endi

              //20
              if icvii > 0 then
                 dbx_Exec.SQL.Add(inttostr(icvii)+',');
              //endi

              //21
              if icoimp > 0 then
                 dbx_Exec.SQL.Add(inttostr(icoimp)+',');
              //endi

              //22
              if icmodbcst > 0 then
                 dbx_Exec.SQL.Add(inttostr(icmodbcst)+',');
              //endi

              //23
              if sActDesc <> '' then
                 dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
              //endi

              //24
              if sPrcu <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
              //endi

              //25
              if sSubtotalC <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
              //endi

              //26
              dbx_exec.SQL.Add(quotedstr(bar_is_point(sdata))+',');

              //27
              if bimpnf then
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('T')+',');
                 end
              else
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('F')+',');
                 end;
              //endi

              //28
              dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

              dbx_Exec.SQL.Add(')');

              //showmessage(dbx_exec.SQL.Text);

              dbx_Exec.ExecSQL;

            end
         else
            begin

              if frmDados.Cds_Indice.FieldByName('ordem_producao').AsString = 'T' then
                 begin

                    dbx_Exec.Active := false;
                    dbx_Exec.SQL.Clear;
                    dbx_Exec.SQL.Add('Insert into dVenda(');


                    // 1
                    if icpro > 0 then
                       dbx_Exec.SQL.Add('cpro, ');
                    //endi

                    //2
                    if edinpro.Text <> '' then
                       dbx_Exec.SQL.Add('npro, ');
                    //endi

                    //3
                    if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or ((cbxtipo.ItemIndex > 0) and (cbxtipo.ItemIndex < 6)) then
                       dbx_Exec.SQL.Add('ehvenda, ');
                    //endi

                    //4
                    if sQtde <> '' then
                       dbx_Exec.SQL.Add('qtde, ');
                    //endi

                    //5
                    if sPrve <> '' then
                       dbx_Exec.SQL.Add('prve, ');
                    //endi

                    //6
                    if sSubtotal <> '' then
                       dbx_Exec.SQL.Add('subtotal, ');
                    //endi

                    //7
                    if sEouS <> '' then
                       dbx_Exec.SQL.Add('EouS, ');
                    //endi

                    //8
                    if icuni > 0 then
                       dbx_Exec.SQL.Add('cuni, ');
                    //endi

                    //9
                    if iccf > 0 then
                       dbx_Exec.SQL.Add('codcf, ');
                    //endi

                    //10
                    if icsita > 0 then
                       dbx_Exec.SQL.Add('codsita, ');
                    //endi

                    //11
                    if icMar > 0 then
                       dbx_Exec.SQL.Add('cMar, ');
                    //endi

                    //12
                    if icsitb > 0 then
                       dbx_Exec.SQL.Add('codsitb, ');
                    //endi

                    //13
                    if icicms > 0 then
                       dbx_Exec.SQL.Add('codicms, ');
                    //endi

                    //14
                    if icipi > 0 then
                       dbx_Exec.SQL.Add('codipi, ');
                    //endi

                    //15
                    if iccfop > 0 then
                       dbx_Exec.SQL.Add('codcfop, ');
                    //endi


                    // 14.04.2010

                    //16
                    if icpis > 0 then
                       dbx_Exec.SQL.Add('codpis, ');
                    //endi

                    //17
                    if iccofins > 0 then
                       dbx_Exec.SQL.Add('codcofins, ');
                    //endi

                    //18
                    if icmodbc > 0 then
                       dbx_Exec.SQL.Add('codmodbc, ');
                    //endi

                    //19
                    if icirii > 0 then
                       dbx_Exec.SQL.Add('codirii, ');
                    //endi

                    //20
                    if icvii > 0 then
                       dbx_Exec.SQL.Add('codvii, ');
                    //endi

                    //21
                    if icoimp > 0 then
                       dbx_Exec.SQL.Add('codoimp, ');
                    //endi

                    //22
                    if icmodbcst > 0 then
                       dbx_Exec.SQL.Add('codmodbcst, ');
                    //endi

                    //23
                    if sActDesc <> '' then
                       dbx_Exec.SQL.Add('ActDesc, ');
                    //endi

                    //24
                    if sPrcu <> '' then
                       dbx_Exec.SQL.Add('prcu, ');
                    //endi

                    //25
                    if sSubtotalC <> '' then
                       dbx_Exec.SQL.Add('SubtotalC, ');
                    //endi

                    //26
                    dbx_Exec.SQL.Add('Data_OP, ');

                    //27
                    dbx_Exec.SQL.Add('impnf, ');

                    //28
                    dbx_Exec.SQL.Add('codsvenda');

                    dbx_Exec.SQL.Add(')');

                    dbx_Exec.SQL.Add(' values (');

                    //1
                    if icpro > 0 then
                       dbx_Exec.SQL.Add(inttostr(icpro)+',');
                    //endi

                    //2
                    if edinpro.Text <> '' then
                       dbx_Exec.SQL.Add(quotedstr(edinpro.Text)+',');
                    //endi

                    //3
                    if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or ((cbxtipo.ItemIndex > 0) and (cbxtipo.ItemIndex < 6)) then
                        dbx_Exec.SQL.Add(Quotedstr('T')+',');
                    //endi

                    //4
                    if sQtde <> '' then
                       dbx_Exec.SQL.Add(decimal_is_pointf(sQtde)+',');
                    //endi

                    //5
                    if sPrve <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
                    //endi

                    //6
                    if sSubtotal <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
                    //endi

                    //7
                    if sEouS <> '' then
                       dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
                    //endi

                    //8
                    if icuni > 0 then
                       dbx_Exec.SQL.Add(inttostr(icuni)+',');
                    //endi

                    //9
                    if iccf > 0 then
                       dbx_Exec.SQL.Add(inttostr(iccf)+',');
                    //endi

                    //10
                    if icsita > 0 then
                       dbx_Exec.SQL.Add(inttostr(icsita)+',');
                    //endi

                    //11
                    if icMar > 0 then
                       dbx_Exec.SQL.Add(inttostr(icMar)+',');
                    //endi

                    //12
                    if icsitb > 0 then
                       dbx_Exec.SQL.Add(inttostr(icsitb)+',');
                    //endi

                    //13
                    if icicms > 0 then
                       dbx_Exec.SQL.Add(inttostr(icicms)+',');
                    //endi

                    //14
                    if icipi > 0 then
                       dbx_Exec.SQL.Add(inttostr(icipi)+',');
                    //endi

                    //15
                    if iccfop > 0 then
                       dbx_Exec.SQL.Add(inttostr(iccfop)+',');
                    //endi


                    // 14.04.2010

                    //16
                    if icpis > 0 then
                       dbx_Exec.SQL.Add(inttostr(icpis)+',');
                    //endi

                    //17
                    if iccofins > 0 then
                       dbx_Exec.SQL.Add(inttostr(iccofins)+',');
                    //endi

                    //18
                    if icmodbc > 0 then
                       dbx_Exec.SQL.Add(inttostr(icmodbc)+',');
                    //endi

                    //19
                    if icirii > 0 then
                       dbx_Exec.SQL.Add(inttostr(icirii)+',');
                    //endi

                    //20
                    if icvii > 0 then
                       dbx_Exec.SQL.Add(inttostr(icvii)+',');
                    //endi

                    //21
                    if icoimp > 0 then
                       dbx_Exec.SQL.Add(inttostr(icoimp)+',');
                    //endi

                    //22
                    if icmodbcst > 0 then
                       dbx_Exec.SQL.Add(inttostr(icmodbcst)+',');
                    //endi

                    //23
                    if sActDesc <> '' then
                       dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
                    //endi

                    //24
                    if sPrcu <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
                    //endi

                    //25
                    if sSubtotalC <> '' then
                       dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
                    //endi

                    //26
                    dbx_exec.SQL.Add(quotedstr(bar_is_point(sdata))+',');

                    //27
                    if bimpnf then
                       begin
                         dbx_Exec.SQL.Add(Quotedstr('T')+',');
                       end
                    else
                       begin
                         dbx_Exec.SQL.Add(Quotedstr('F')+',');
                       end;
                    //endi

                    //28
                    dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

                    dbx_Exec.SQL.Add(')');

                    //showmessage(dbx_exec.SQL.Text);

                    dbx_Exec.ExecSQL;



                 end
              else
                 begin

                    Dbx_Exec.Active := false;
                    Dbx_Exec.SQL.Clear;
                    Dbx_Exec.SQL.Add('Update dvenda set  qtde = qtde + '+decimal_is_pointf(sQtde)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')');
                    Dbx_Exec.ExecSQL;

                    Dbx_Exec.Active := false;
                    Dbx_Exec.SQL.Clear;
                    Dbx_Exec.SQL.Add('Update dvenda set  Subtotal = Subtotal + '+decimal_is_point(sSubtotal)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')');
                    Dbx_Exec.ExecSQL;

                    Dbx_Exec.Active := false;
                    Dbx_Exec.SQL.Clear;
                    Dbx_Exec.SQL.Add('Update dvenda set  SubtotalC = SubtotalC + '+decimal_is_point(sSubtotalC)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
                    Dbx_Exec.ExecSQL;

                    Dbx_Exec.Active := false;
                    Dbx_Exec.SQL.Clear;
                    Dbx_Exec.SQL.Add('Update dvenda set  cuni = '+inttostr(icuni)+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
                    Dbx_Exec.ExecSQL;

                    Dbx_Exec.Active := false;
                    Dbx_Exec.SQL.Clear;
                    if bimpnf then
                       Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+Quotedstr('T')+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  )
                    else
                       Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+Quotedstr('F')+' where (cpro = '+inttostr(icpro)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
                    //endi

                    Dbx_Exec.ExecSQL;

                 end;











            end;
         //endi

       end
    else
       begin
         if sOpcaop = 'A' then
            begin

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  npro = '+quotedstr(edinpro.Text)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              //Dbx_Exec.Active := false;
              //Dbx_Exec.SQL.Clear;
              //Dbx_Exec.SQL.Add('Update dvenda set  Especificacao = '+quotedstr(ediEspecificacao.Text)+' where (codigo = '+sCodigo+')');
              //Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  qtde = '+decimal_is_pointf(sQtde)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Prve = '+decimal_is_point(sPrve)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Subtotal = '+decimal_is_point(sSubtotal)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  EouS = '+quotedstr(sEous)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  cuni = '+inttostr(icuni)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codcf = '+inttostr(iccf)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codsita = '+inttostr(icsita)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  cMar = '+inttostr(icMar)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codsitb = '+inttostr(icsitb)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codicms = '+inttostr(icicms)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codipi = '+inttostr(icipi)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codcfop = '+inttostr(iccfop)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              // 14.04.2010

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codpis = '+inttostr(icpis)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codcofins = '+inttostr(iccofins)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codmodbc = '+inttostr(icmodbc)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codirii = '+inttostr(icirii)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codvii = '+inttostr(icvii)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codoimp = '+inttostr(icoimp)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  codmodbcst = '+inttostr(icmodbcst)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  ActDesc = '+QuotedStr(sActDesc)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  Prcu = '+decimal_is_point(sPrcu)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dvenda set  SubtotalC = '+decimal_is_point(sSubtotalC)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if bimpnf then
                 Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+Quotedstr('T')+' where (codigo = '+sCodigo+')')
              else
                 Dbx_Exec.SQL.Add('Update dvenda set  impnf = '+quotedstr('F')+' where (codigo = '+sCodigo+')');
              //endii
              Dbx_Exec.ExecSQL;





            end;
         //endi
       end;
    //endi
    dbx_exec.Active := false;

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    totalizafrmpesqvdprod;
    cds_dVenda.Refresh;

    if sOpcaop = 'I' then
       cds_dVenda.Last;
    //endi

  end;
//endth
limparprod;
edicpro.Enabled := true;
dbgdvenda.Enabled := true;
spdconsultaproduto.Enabled := true;

sOpcaop := 'I';
if edicpro.Enabled then
   edicpro.SetFocus
else
   ediqtde.SetFocus;
//endi

end;



procedure TfrmPesqOS.spdAlterar172Click(Sender: TObject);
begin
AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'sVenda';
Mostrar;
if ediid1.Enabled then
   ediid1.SetFocus;
//endi   

end;

procedure TfrmPesqOS.spdExcluir173Click(Sender: TObject);
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

procedure TfrmPesqOS.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
tabela  := 'sVenda';
AlternaF;
Mostrar;
end;

procedure TfrmPesqOS.sPdGravarClick(Sender: TObject);
begin

with frmdados do
  begin

    //if Cds_sVenda.FieldByName('ccli').asInteger = 0 then
    //   exit;
    //endi



    if (ediid1.Text = '') and
       (frmDados.Cds_Indice.FieldByName('ordem_producao').AsString <> 'T')
    then
       exit;
    //endi
    
    salvaros;

    AtivaDbotoes;

    //Cds_sVenda.Refresh;

    alternaL;

    if dbgos.Enabled then
       dbgos.SetFocus;
    //endi

    sOpcao := '';

  end;
//endth

end;

procedure TfrmPesqOS.AlternaF;
begin
if frmdados.Cds_sVenda.recordcount > 0 then
   begin
     filtraproduto;
   end;
//endi
cbxncli.Visible := true;
cbxnfant.Visible := true;

dbgos.Visible := false;
pnldadoscliente.Visible := false;

pnllista.Visible := false;
pnlsalvarficha.Visible := true;
pctficha.ActivePageIndex := 0;
edincli.Visible := false;
edinfant.Visible := false;

if (sopcao <> 'I') then
   begin
     ediendent.DataField := 'endent';
     edinroent.DataField := 'nroent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     edidddfs.DataField := 'dddfs';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';

     mostrard;

   end
else
   begin
     ediendent.DataField := '';
     edinroent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     edidddfs.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';

     limpard;

   end;
//endi


if ediid1.Enabled then
   ediid1.SetFocus;
//endi

end;

procedure TfrmPesqOS.AlternaL;
begin
dbgos.Visible := true;
pnldadoscliente.Visible := true;

pnllista.Visible := true;
pnlsalvarficha.Visible := false;

ediendent.DataField := '';
edinroent.DataField := '';
edicomplent.DataField := '';
edibairroent.DataField := '';
edicidadeent.DataField := '';
edicepent.DataField := '';
edidddfs.DataField := '';
editelefones.DataField := '';
edicontato.DataField := '';


end;


procedure TfrmPesqOS.spdcancelar2310Click(Sender: TObject);
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
         spdfolha.Enabled := true;
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
              spdfolha.Enabled := true;
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

procedure TfrmPesqOS.FormCreate(Sender: TObject);
begin
pctficha.ActivePage.PageIndex := 0;
end;

procedure TfrmPesqOS.edisubtotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqOS.spdalterarparcClick(Sender: TObject);
begin
sOpcaop                := 'A';
edicpro.Enabled        := false;
spdconsultaproduto.Enabled := false;


dbgdvenda.Enabled       := false;
if frmdados.Cds_dVenda.fieldbyname('cpro').asInteger > 0 then
   begin
     icpro        := frmdados.Cds_dVenda.fieldbyname('cpro').asInteger;
     edicpro.Text       := frmdados.Cds_dVenda.fieldbyname('cpro').asString;
   end;
//endi
edinpro.Text           := frmdados.Cds_dVenda.fieldbyname('npro').asString;
//ediEspecificacao.Text  := frmdados.Cds_dVenda.fieldbyname('especificacao').asString;
ediqtde.Text           := formatfloat('###,###,##0.000',frmdados.Cds_dVenda.fieldbyname('qtde').asfloat);
ediqtde.Text := AlinEdNumD(ediqtde,3);
sCodigo      := frmdados.Cds_dVenda.fieldbyname('codigo').asString;

fquaa           := frmdados.Cds_dVenda.fieldbyname('qtde').asfloat;

ediprve.Text           := formatfloat('###,###,##0.00',frmdados.Cds_dVenda.fieldbyname('prve').asfloat);
ediprve.Text := AlinEdNumD(ediprve,2);
edisubtotal.Text       := formatfloat('###,###,##0.00',frmdados.Cds_dVenda.fieldbyname('subtotal').asfloat);
edisubtotal.Text := AlinEdNumD(edisubtotal,2);
icuni                   := frmdados.Cds_dVenda.fieldbyname('cuni').asInteger;

if frmdados.Cds_dVenda.fieldbyname('impnf').asString = 'T' then
   begin
     ckbimpnf.Checked := true
   end
else
   begin
     ckbimpnf.Checked := false;
   end;
//endi

iccf                    := frmdados.Cds_dVenda.fieldbyname('codcf').asInteger;
icsita                  := frmdados.Cds_dVenda.fieldbyname('codsita').asInteger;
icMar                   := frmdados.Cds_dVenda.fieldbyname('cMar').asInteger;

icsitb                  := frmdados.Cds_dVenda.fieldbyname('codsitb').asInteger;
icicms                  := frmdados.Cds_dVenda.fieldbyname('codicms').asInteger;
icipi                   := frmdados.Cds_dVenda.fieldbyname('codipi').asInteger;
iccfop                  := frmdados.Cds_dVenda.fieldbyname('codcfop').asInteger;


icpis                   := frmdados.Cds_dVenda.fieldbyname('codpis').asInteger;
iccofins                := frmdados.Cds_dVenda.fieldbyname('codcofins').asInteger;
icmodbc                 := frmdados.Cds_dVenda.fieldbyname('codmodbc').asInteger;
icirii                  := frmdados.Cds_dVenda.fieldbyname('codirii').asInteger;
icvii                   := frmdados.Cds_dVenda.fieldbyname('codvii').asInteger;
icoimp                  := frmdados.Cds_dVenda.fieldbyname('codoimp').asInteger;
icmodbcst               := frmdados.Cds_dVenda.fieldbyname('codmodbcst').asInteger;



sActDesc               := frmdados.Cds_dVenda.fieldbyname('ActDesc').asString;
fPrcu                  := frmdados.Cds_dVenda.fieldbyname('prcu').asfloat;
fSubTotalc             := frmdados.Cds_dVenda.fieldbyname('Subtotalc').asfloat;


with frmdados do
  begin

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    if frmdados.Cds_dVenda.fieldbyname('cpro').asInteger > 0 then
       begin



         dbx_vProdutos.Active := false;
         dbx_vProdutos.SQL.Clear;
         dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+edicpro.Text);
         dbx_vProdutos.Active := true;
         if dbx_vProdutos.RecordCount > 0 then
            begin
              fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
            end;
         //endi
         dbx_vProdutos.Active := false;

       end;
    //endi


    dbx_Exec.Active := false;
    dbx_Exec.SQL.Clear;
    dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
    dbx_Exec.Active := true;
    cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;
    dbx_Exec.Active := false;



  end;
//endth

if ediqtde.Enabled then
   ediqtde.SetFocus;
//endi

end;

procedure TfrmPesqOS.cbxnfunKeyDown(Sender: TObject;
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

procedure TfrmPesqOS.cbxnrepKeyDown(Sender: TObject;
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

procedure TfrmPesqOS.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqOS.cbxclassificarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  key := 0;

end;

procedure TfrmPesqOS.edidescChange(Sender: TObject);
begin
try
if edidesc.Text <> '' then
   frmdados.cds_sVenda.Locate(frmpesqOs.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
except
edidesc.Clear;
if edidesc.Enabled then
   edidesc.SetFocus;
//endi     
end;
end;

procedure TfrmPesqOS.edidescKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi

end;

procedure tfrmPesqOS.verifestq;
var
  fquat:real;
begin
fquat := strtofloat(tirapontos(ediqtde.Text));

if sOpcaop = 'A' then
   if fquaa >= fquat then
      exit;
   //endi
//endi

if (not bVSEstq) and ((cbxtipo.ItemIndex > 0) and (cbxtipo.ItemIndex < 6)) then
   begin
     if (icpro > 0) then
        begin
          vestoqNv;
        end;
     //endi
   end
else
   begin
     if (icpro > 0) then
        begin
          vestoqv;
        end;
     //endi
   end;
//endi

end;
procedure TfrmPesqOS.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin

end;

procedure TfrmPesqOS.spdconsultaprodutoClick(Sender: TObject);
begin
frmpesqprodd := tfrmpesqprodd.create(self);
frmpesqprodd.showmodal;
frmpesqprodd.free;
if edicpro.Enabled then
   edicpro.SetFocus;
//endi   
end;

procedure TfrmPesqOS.cbxunidKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  key := #0;
end;


procedure TfrmPesqOS.cbxunidExit(Sender: TObject);
begin
  if cbxunid.Text = '' then
     begin
       icuni :=0;
       exit;
     end;
  //endi

  with frmdados do
    begin
      dbx_Exec.Active := false;
      dbx_Exec.SQL.Clear;
      dbx_Exec.SQL.Add('Select * from unidade where Descricao = '+Quotedstr(cbxunid.text));
      dbx_Exec.Active := true;
      icuni := dbx_Exec.Fieldbyname('codigo').asInteger;
      dbx_Exec.Active := false;
    end;
  //endth

end;

procedure TfrmPesqOS.cbxntranspKeyDown(Sender: TObject;
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

procedure TfrmPesqOS.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin

end;

procedure TfrmPesqOS.edisaidaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxnaturezaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edinproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqOS.edivolumesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediresuniKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediprazo_validadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edida8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ckbimpnfClick(Sender: TObject);
begin
bimpnf := ckbimpnf.Checked;

end;

procedure TfrmPesqOS.dbgdvendaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
  Icon: TBitmap;

begin
  Icon := TBitmap.Create;
  if (Column.FieldName = 'IMPNF') then
  begin
    with dbgdvenda.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_dVenda.FieldByName('IMPNF').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

end;

procedure TfrmPesqOS.dbgdvendaDblClick(Sender: TObject);
begin
  if frmdados.Cds_dVenda.RecordCount = 0 then
     exit;
  //endi
  FrmDados.Cds_dVenda.Edit;
  if FrmDados.Cds_dVenda.FieldByName('IMPNF').asString = 'F' then
     FrmDados.Cds_dVenda.FieldByName('IMPNF').asString := 'T'
  else
     FrmDados.Cds_dVenda.FieldByName('IMPNF').asString := 'F';
  //endi
  FrmDados.Cds_dVenda.post;

end;

procedure TfrmPesqOS.spdimpClick(Sender: TObject);
begin
  if frmdados.Cds_Indice.FieldByName('tpimpvi').asInteger = 2 then
     begin
       frmimpos := tfrmimpos.Create(self);
       frmimpos.relatorio.Preview;
       frmimpos.Free;
     end;
  //endi

  //frmimporcp := tfrmimporcp.Create(self);
  //frmimporcp.QuickRep1.Preview;
  //frmimporcp.Free;
end;

procedure TfrmPesqOS.spdimpnfClick(Sender: TObject);
begin

  frmdados.totalizafrmpesqvdprod;
  frmfecos := tfrmfecos.create(self);
  frmfecos.showmodal;
  frmfecos.free;

  //frmdados.totalizafrmpesqvdprod;
  //frmimpnf := tfrmimpnf.create(self);
  //frmimpnf.showmodal;
  //frmimpnf.free;
end;

procedure TfrmPesqOS.cbxnfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxnrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxncliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
end;

procedure TfrmPesqOS.edicfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edicrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmPesqOS.limpar;
begin
  ediid1.Text := '';
  //ediccli.Text := '';
end;

procedure tfrmPesqOS.mostrar;
begin
  //edicfun.Text := frmdados.Cds_Funcionarios.fieldbyname('codigo').asString;
  //edicrep.Text := frmdados.Cds_Representantes.fieldbyname('codigo').asString;
  //ediccli.Text := frmdados.Cds_clientes.fieldbyname('codigo').asString;


end;


procedure TfrmPesqOS.ediccliExit(Sender: TObject);
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

procedure TfrmPesqOS.edicrepExit(Sender: TObject);
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

procedure TfrmPesqOS.edicfunExit(Sender: TObject);
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

procedure TfrmPesqOS.cbxcfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxcrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.spdexcluirparcClick(Sender: TObject);
begin
  //if dbgmao.Focused then
  //   begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            frmdados.Cds_dvenda.Delete;
            frmdados.totalizafrmpesqvdprod;
            if frmdados.Cds_dvenda.RecordCount = 0 then
               begin
                 //desativabotoes;
                 //spdincluir231.Enabled := true;
                 //cbxnomefun.Enabled := true;
               end;
            //endi
          end;
       //endi
  //   end
  //else
  //   begin
  //     Showmessage('Nenhum Item do Pedido não foi Selecionado');
  //   end;
  //endi

end;

procedure TfrmPesqOS.cbxnfantKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.spdlancaClick(Sender: TObject);
begin
frmdados.totalizafrmpesqvdprod;
frmfecos := tfrmfecos.create(self);
frmfecos.showmodal;
frmfecos.free;

end;

procedure TfrmPesqOS.spdemailClick(Sender: TObject);
begin
frmemailped := tfrmemailped.Create(self);
frmemailped.ShowModal;
frmemailped.Free;
end;

procedure TfrmPesqOS.spdprinterClick(Sender: TObject);
begin
  frmMROS := tfrmMROS.Create(self);
  frmMROS.ShowModal;
  frmMROS.Free;
end;

procedure TfrmPesqOS.bloqueiabotoesP;
begin
spdincluir171.Enabled := false;
spdalterar172.Enabled := false;
spdexcluir173.Enabled := false;
spdconsultar174.Enabled := false;
spdcodbar175.Enabled := false;
spdilustracao177.Enabled := false;
end;

procedure TfrmPesqOS.bloqueiabotoesF;
begin
spdgravar.Enabled := false;
spdcancelar2310.Enabled := false;
//spdrel.Enabled := false;
spdimpnf.Enabled := false;

spdconflan.Enabled := false;
spdcanclan.Enabled := false;
spdemail.Enabled := false;
spdimp.Enabled := false;
spdfolha.Enabled := false;

end;

procedure TfrmPesqOS.desbloqueiabotoesP;
begin
spdincluir171.Enabled := true;
spdalterar172.Enabled := true;
spdexcluir173.Enabled := true;
spdconsultar174.Enabled := true;
spdcodbar175.Enabled := true;
spdilustracao177.Enabled := true;
end;

procedure TfrmPesqOS.desbloqueiabotoesF;
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
spdfolha.Enabled := true;
end;


procedure tfrmPesqOS.AtivaDbotoes;
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
         spdfolha.Enabled := true;
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



procedure TfrmPesqOS.spdconflanClick(Sender: TObject);
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

procedure TfrmPesqOS.spdcanclanClick(Sender: TObject);
begin
  with frmdados do
    begin

      tabela := 'sVenda';

      frmpesqos.mostrard;

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

procedure TfrmPesqOS.spdantClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Prior;
mostrard;

if (not pnllista.Visible) and
   ((pctficha.ActivePageIndex = 2) or
    (pctficha.ActivePageIndex = 3) or
    (pctficha.ActivePageIndex = 5) )
then
  begin
    habproduto;
  end;
//endi


end;

procedure TfrmPesqOS.spdproxClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Next;
mostrard;

if (not pnllista.Visible) and
   ((pctficha.ActivePageIndex = 2) or
    (pctficha.ActivePageIndex = 3) or
    (pctficha.ActivePageIndex = 5) )
then
  begin
    habproduto;
  end;
//endi


end;

procedure TfrmPesqOS.bloqueiadet;
begin
edicpro.Enabled := false;
ediqtde.Enabled := false;
cbxunid.Enabled := false;
edinpro.Enabled := false;
ediprve.Enabled := false;
edisubtotal.Enabled := false;
ckbimpnf.Enabled := false;
spdconsultaproduto.Enabled := false;
spdalterarparc.Enabled := false;

spdimportarfig.Enabled := false;
spdapagarfig.Enabled := false;
spdampliafig.Enabled := false;

spdsalvarprod.Enabled := false;
spdexcluirparc.Enabled := false;
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
ediendent.Enabled := false;
cbxtipo.Enabled := false;
cbxtipo_cob.Enabled := false;
edinroent.Enabled := false;
edicomplent.Enabled := false;
edibairroent.Enabled := false;
edicidadeent.Enabled := false;
edicepent.Enabled := false;
edidddfs.Enabled := false;
editelefones.Enabled := false;
edicontato.Enabled := false;
edicprom.Enabled := false;
ediqtdem.Enabled := false;
edinprom.Enabled := false;
ediprvem.Enabled := false;
edisubtotalm.Enabled := false;
cbxnomefuns.Enabled := false;
edipcomm.Enabled := false;
edivcomm.Enabled := false;
spdconsultaproduto.Enabled := false;
spdconsultaprodutom.Enabled := false;
spdalterarparc.Enabled := false;
spdsalvarprod.Enabled := false;
spdexcluirparc.Enabled := false;
spdalterarparcm.Enabled := false;
spdsalvarprodm.Enabled := false;
spdexcluirparcm.Enabled := false;


end;

procedure TfrmPesqOS.desbloqueiadet;
begin
edicpro.Enabled := true;
ediqtde.Enabled := true;
cbxunid.Enabled := true;
edinpro.Enabled := true;
ediprve.Enabled := true;
edisubtotal.Enabled := true;
ckbimpnf.Enabled := true;
spdconsultaproduto.Enabled := true;

spdimportarfig.Enabled := true;
spdapagarfig.Enabled := true;
spdampliafig.Enabled := true;

spdalterarparc.Enabled := true;
spdsalvarprod.Enabled := true;
spdexcluirparc.Enabled := true;
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
ediendent.Enabled := true;
cbxtipo.Enabled := true;
cbxtipo_cob.Enabled := true;
edinroent.Enabled := true;
edicomplent.Enabled := true;
edibairroent.Enabled := true;
edicidadeent.Enabled := true;
edicepent.Enabled := true;
edidddfs.Enabled := true;
editelefones.Enabled := true;
edicontato.Enabled := true;
edicprom.Enabled := true;
ediqtdem.Enabled := true;
edinprom.Enabled := true;
ediprvem.Enabled := true;
edisubtotalm.Enabled := true;
cbxnomefuns.Enabled := true;
edipcomm.Enabled := true;
edivcomm.Enabled := true;
spdconsultaproduto.Enabled := true;
spdconsultaprodutom.Enabled := true;
spdalterarparc.Enabled := true;
spdsalvarprod.Enabled := true;
spdexcluirparc.Enabled := true;
spdalterarparcm.Enabled := true;
spdsalvarprodm.Enabled := true;
spdexcluirparcm.Enabled := true;



end;

procedure tfrmPesqOS.habdedidesc;
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



procedure TfrmPesqOS.cbxclassificarClick(Sender: TObject);
begin
  spdfiltrar.Click;
  habdedidesc;
end;


procedure tfrmPesqOS.habproduto;
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
salvaros;

limparprod;
filtraproduto;

//showmessage(inttostr(pctficha.ActivePageIndex));

end;

procedure TfrmPesqOS.dbgosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqOS.dbgdvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqOS.cbxnomecliEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOS.cbxnomefunEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOS.cbxnomerepEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOS.edicproChange(Sender: TObject);
begin
if edicpro.Text <> '' then
   frmdados.cds_dvenda.Locate('cpro',edicpro.text,[loPartialKey,loCaseInsensitive]);
//endi

end;


procedure TfrmPesqOS.cbxncliExit(Sender: TObject);
begin
if cbxncli.Text <> '' then
   begin
     ediendent.DataField := 'endent';
     edinroent.DataField := 'nroent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';
     edidddfs.DataField := 'dddfs';
   end
else
   begin
     ediendent.DataField := '';
     edinroent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';
     edidddfs.DataField := '';

   end;
//endi
end;

procedure TfrmPesqOS.cbxnfantExit(Sender: TObject);
begin
if cbxncli.Text <> '' then
   begin
     ediendent.DataField := 'endent';
     edinroent.DataField := 'nroent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';
     edidddfs.DataField := 'dddfs';
   end
else
   begin
     ediendent.DataField := '';
     edinroent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';
     edidddfs.DataField := '';
   end;
//endi

end;

procedure TfrmPesqOS.edidesc11KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc9KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edidesc10KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edincliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edinfantKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediendentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edicomplentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edibairroentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edicidadeentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edicepentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.editelefonesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.edicontatoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.tbsmaodeobraShow(Sender: TObject);
begin
habproduto;
if (edicproM.Enabled) then
   edicproM.SetFocus;
//endi

end;

procedure TfrmPesqOS.cbxnmoduloEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqOS.cbxnmoduloExit(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqOS.ediqtdeMKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.ediprveMKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.edisubtotalMKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.spdconsultaprodutoMClick(Sender: TObject);
begin
frmpesqcmobrad := tfrmpesqcmobrad.create(self);
frmpesqcmobrad.showmodal;
frmpesqcmobrad.free;
if edicprom.Enabled then
   edicproM.SetFocus;
//endi   

end;

procedure TfrmPesqOS.edicproMExit(Sender: TObject);
begin
  try

    buscarproduto;

    edisubtotalM.Text := formatfloat('',strtofloat(tirapontos(ediqtdeM.Text))*strtofloat(tirapontos(ediprveM.Text))   );
    edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

    ediqtdeM.Text := AlinEdNumD(ediqtdeM,3);

  except
    if edicproM.Enabled then
       edicproM.SetFocus;
    //end
  end;

end;

procedure TfrmPesqOS.edicproMChange(Sender: TObject);
begin
if edicproM.Text <> '' then
   frmdados.cds_dmobra.Locate('cdesc',edicproM.text,[loPartialKey,loCaseInsensitive]);
//endi

end;

procedure TfrmPesqOS.ediqtdeMExit(Sender: TObject);
begin
try

edisubtotalM.Text := formatfloat('',strtofloat(tirapontos(ediqtdeM.Text))*strtofloat(tirapontos(ediprveM.Text))   );
edisubtotalM.Text := AlinEdNumD(edisubtotalM,2);

ediqtdeM.Text := AlinEdNumD(ediqtdeM,3);

except
  ediqtdeM.Text := '0,00';
  if ediqtdeM.Enabled then
     ediqtdeM.SetFocus;
  //endi
end;

end;

procedure TfrmPesqOS.ediprveMExit(Sender: TObject);
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

procedure TfrmPesqOS.edisubtotalMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
//SelectNext(ActiveControl,True,True);

end;

procedure TfrmPesqOS.spdalterarparcMClick(Sender: TObject);
begin
sOpcaop                 := 'A';
edicproM.Enabled        := false;
spdconsultaprodutoM.Enabled := false;

dbgmao.Enabled          := false;

if frmdados.Cds_dmobra.fieldbyname('cdesc').asInteger > 0 then
   begin
     icproM  := frmdados.Cds_dmobra.fieldbyname('cdesc').asInteger;
     edicproM.Text := frmdados.Cds_dmobra.fieldbyname('cdesc').asString;
   end;
//endi


sCodigo                 := frmdados.Cds_dmobra.fieldbyname('codigo').asString;
edinproM.Text           := frmdados.Cds_dmobra.fieldbyname('ndesc').asString;
ediqtdeM.Text           := formatfloat('###,###,##0.000',frmdados.Cds_dmobra.fieldbyname('qtde').asfloat);
ediqtdeM.Text           := AlinEdNumD(ediqtdeM,3);

fquaa                   := frmdados.Cds_dmobra.fieldbyname('qtde').asfloat;

ediprveM.Text           := formatfloat('###,###,##0.00',frmdados.Cds_dmobra.fieldbyname('valor').asfloat);
ediprveM.Text := AlinEdNumD(ediprveM,2);

edisubtotalM.Text       := formatfloat('###,###,##0.00',frmdados.Cds_dmobra.fieldbyname('subtotal').asfloat);
edisubtotalM.Text       := AlinEdNumD(edisubtotalM,2);

edipcomM.Text       := formatfloat('###,###,##0.00',frmdados.Cds_dmobra.fieldbyname('pcom').asfloat);
edipcomM.Text       := AlinEdNumD(edipcomM,2);

edivcomM.Text       := formatfloat('###,###,##0.00',frmdados.Cds_dmobra.fieldbyname('vcom').asfloat);
edivcomM.Text       := AlinEdNumD(edivcomM,2);

frmdados.Cds_Temp.Edit;
frmdados.Cds_Temp.FieldByName('cod5').AsInteger := frmdados.Cds_dMobra.fieldbyname('cfun').asInteger;
frmdados.Cds_Temp.FieldByName('cod4').AsInteger := frmdados.Cds_dMobra.fieldbyname('cmod').asInteger;

with frmdados do
  begin

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

  end;
//endth
if ediqtdem.Enabled then
   ediqtdeM.SetFocus;
//endi

end;


procedure TfrmPesqOS.spdsalvarprodMClick(Sender: TObject);
var
  sprveM, sQtdeM, sSubtotalM, sSubtotalcM, sEouS, sPrcuM, sData, sPcomM, sVcomM, sCfunM, scmodM:string;
begin

if edicproM.Text = '' then
   if edinproM.Text = '' then
      exit;
   //endi
//endi

tabela := 'DMOBRA';

sData := datetostr(date);
sPrveM := tirapontos(trim(ediprveM.Text));
sQtdeM := tirapontos(trim(ediqtdeM.Text));
sSubtotalM := tirapontos(trim(edisubtotalM.Text));
sCfunM := frmdados.Cds_temp.fieldbyname('cod5').asString;
sPcomM := tirapontos(trim(edipcomM.Text));
sVcomM := tirapontos(trim(ediVcomM.Text));
sCmodM := frmdados.Cds_temp.fieldbyname('cod4').asString;


with frmdados do
  begin


    if sOpcaop = 'I' then
       begin

         Dbx_Exec.Active := false;
         Dbx_Exec.SQL.Clear;
         Dbx_Exec.SQL.Add('Select * from dmobra where (cdesc = '+inttostr(icproM)+') and (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +') and (Valor = '+decimal_is_point(sPrveM)+')' );
         Dbx_Exec.Active := true;
         if dbx_Exec.RecordCount = 0 then
            begin

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Insert into dmobra(');

              if icproM > 0 then
                 dbx_Exec.SQL.Add('cdesc, ');
              //endi

              if edinproM.Text <> '' then
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

              dbx_Exec.SQL.Add('codsvenda');

              dbx_Exec.SQL.Add(')');

              dbx_Exec.SQL.Add(' values (');

              if icproM > 0 then
                 dbx_Exec.SQL.Add(inttostr(icproM)+',');
              //endi

              if edinproM.Text <> '' then
                 dbx_Exec.SQL.Add(quotedstr(edinproM.Text)+',');
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

              dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

              dbx_Exec.SQL.Add(')');

              dbx_Exec.ExecSQL;

            end
         else
            begin

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  qtde = qtde + '+decimal_is_pointf(sQtdeM)+' where (cdesc = '+inttostr(icproM)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (valor = '+decimal_is_point(sPrveM)+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  Subtotal = Subtotal + '+decimal_is_point(sSubtotalM)+' where (cdesc = '+inttostr(icproM)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (valor = '+decimal_is_point(sPrveM)+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  vcom = vcom + '+decimal_is_point(svComM)+' where (cdesc = '+inttostr(icproM)+') and (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+') and (valor = '+decimal_is_point(sPrveM)+')');
              Dbx_Exec.ExecSQL;

            end;
         //endi

       end
    else
       begin
         if sOpcaop = 'A' then
            begin

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  ndesc = '+quotedstr(edinproM.Text)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

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
              Dbx_Exec.SQL.Add('Update dmobra set  vcom = '+decimal_is_point(svcomM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  pcom = '+decimal_is_point(spcomM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  cfun = '+decimal_is_point(scfunM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update dmobra set  cmod = '+decimal_is_point(scmodM)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

            end;
         //endi
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
limparprod;
edicproM.Enabled := true;
dbgmao.Enabled := true;
spdconsultaprodutoM.Enabled := true;

sOpcaop := 'I';
if edicproM.Enabled then
   edicproM.SetFocus
else
   ediqtdeM.SetFocus;
//endi

end;

procedure TfrmPesqOS.cbxnomefunsExit(Sender: TObject);
begin
if cbxnomefuns.Text <> '' then
   begin
     edipcomM.Text := formatfloat('###,###,##0.00',frmdados.Cds_Funcionarios.fieldbyname('pcom').asfloat);
     edivcomM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edisubtotalM.text))*strtofloat(tirapontos(edipcomM.text))/100  );
   end;
//endi
end;

procedure TfrmPesqOS.edivcomMKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       //SelectNext(ActiveControl,True,True);

       if cbxnomefuns.Text <> '' then
          begin
            //edivcom.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edisubtotalM.text))*strtofloat(tirapontos(edipcom.text))/100  );
            edipcomM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edivcomM.text)) / strtofloat(tirapontos(edisubtotalM.text)) * 100  );
          end;
       //endi
       
       spdsalvarprodM.Click;

     end;
  //endif


end;

procedure TfrmPesqOS.cbxnomefunsKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.edipcomMKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqOS.edivcomMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//key := 0;
end;

procedure TfrmPesqOS.edipcomMExit(Sender: TObject);
begin
if cbxnomefuns.Text <> '' then
   begin
     edivcomM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(edisubtotalM.text))*strtofloat(tirapontos(edipcomM.text))/100  );
   end;
//endi

end;

procedure TfrmPesqOS.cbxnmoduloClick(Sender: TObject);
begin
   filtraproduto;
end;

procedure TfrmPesqOS.cbxid2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure TfrmPesqOS.cbxdesc2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif



end;

procedure TfrmPesqOS.cbxdesc5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif



end;

procedure TfrmPesqOS.cbxdesc8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc9KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.cbxdesc10KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediid1Exit(Sender: TObject);
begin
if dbgos.Visible then
   exit;
//endi   
if frmDados.Cds_Indice.FieldByName('ordem_producao').AsString <> 'T' then
   exit;
//endi   

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
              edinroent.DataField := 'nroent';
              edicomplent.DataField := 'complent';
              edibairroent.DataField := 'bairroent';
              edicidadeent.DataField := 'cidadeent';
              edicepent.DataField := 'cepent';
              editelefones.DataField := 'telefones';
              edicontato.DataField := 'contato';
              edidddfs.DataField := 'dddfs';

            end;
         //endi
       end;
    //endi

  end;
//endi

end;

procedure TfrmPesqOS.ediid1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.ediid2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;


procedure tfrmpesqos.salvaros;
var
  iCodigoa, iNorc:integer;
  sId1a:string;
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;

begin

iNOrc := 0;

with frmdados do
  begin

    tabela := 'Clientes';

    if Cds_clientes.State in [dsinsert, dsedit] then
       begin
         Cds_clientes.Post;
       end;
    //endi

    tabela := 'sVenda';

    if cds_svenda.FieldByName('norc').AsInteger = 0 then
       begin

         SqlStMt := 'Select gen_id(Gen_nOrc,1) as Valor from RDB$DATABASE;';
         ResultSet := nil;
         Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
         if Assigned(ResultSet) then
            iNorc := ResultSet.fieldbyname('valor').asInteger;
         //endi

       end;
    //endi

    if Cds_svenda.State in [dsinsert, dsedit] then
       begin


         if iNorc > 0 then
            begin
              cds_svenda.FieldByName('norc').asinteger := iNorc;
            end;
         //endi
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

procedure tfrmpesqos.mostrard;
begin
  with frmdados do
    begin

      cbxtipo.ItemIndex := cds_svenda.fieldbyname('tipoop').asInteger;
      cbxtipo_cob.ItemIndex := cds_svenda.fieldbyname('tipo_cobertura').asInteger;

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

procedure tfrmpesqos.limpard;
begin

  cbxtipo.ItemIndex := 0;
  cbxtipo_cob.ItemIndex := 0;

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

procedure TfrmPesqOS.cbxnmoduloKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqOS.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.spdexcluirparcMClick(Sender: TObject);
begin
  //if dbgmao.Focused then
  //   begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            frmdados.Cds_dmobra.Delete;
            frmdados.totalizafrmpesqvdprod;
            if frmdados.Cds_dmobra.RecordCount = 0 then
               begin
                 //desativabotoes;
                 //spdincluir231.Enabled := true;
                 //cbxnomefun.Enabled := true;
               end;
            //endi
          end;
       //endi
  //   end
  //else
  //   begin
  //     Showmessage('Nenhum Item do Pedido não foi Selecionado');
  //   end;
  //endi

end;

procedure TfrmPesqOS.SpeedButton1Click(Sender: TObject);
begin
   frmMROS := tfrmMROS.Create(self);
  frmMROS.ShowModal;
  frmMROS.Free;
end;

procedure TfrmPesqOS.edincliChange(Sender: TObject);
begin
//frmdados.cds_clientes.Locate('nome',edincli.text,[loPartialKey,loCaseInsensitive]);
end;

procedure TfrmPesqOS.edincliExit(Sender: TObject);
begin
if cbxncli.Text <> '' then
   begin
     ediendent.DataField := 'endent';
     edinroent.DataField := 'nroent';
     edicomplent.DataField := 'complent';
     edibairroent.DataField := 'bairroent';
     edicidadeent.DataField := 'cidadeent';
     edicepent.DataField := 'cepent';
     editelefones.DataField := 'telefones';
     edicontato.DataField := 'contato';
     edidddfs.DataField := 'dddfs';
   end
else
   begin
     ediendent.DataField := '';
     edinroent.DataField := '';
     edicomplent.DataField := '';
     edibairroent.DataField := '';
     edicidadeent.DataField := '';
     edicepent.DataField := '';
     editelefones.DataField := '';
     edicontato.DataField := '';
     edidddfs.DataField := '';
   end;
//endi

end;

procedure TfrmPesqOS.tbsimgShow(Sender: TObject);
begin
tabela := 'ImgEquipCli';

habproduto;
//if (edicproM.Enabled) then
//   edicproM.SetFocus;
//endi

end;


procedure tfrmpesqos.mostrararq_ext;
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

      if cds_ImgEquipCliimagem.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_ImgEquipClifilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_ImgEquipClifilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_ImgEquipCli.CreateBlobStream(cds_ImgEquipCliimagem, bmread);
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
           temppath := temppath + '\'+cds_ImgEquipCliimagem.AsString;

           //Grava bloco no arquivo temporário
           cds_ImgEquipCliimagem.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

end;



procedure TfrmPesqOS.spdimportarfigClick(Sender: TObject);
begin
  if opdabrirfig.Execute then
     begin
       tabela := 'ImgEquipCli';
       frmdados.cds_imgEquipCli.Append;
       frmdados.cds_imgEquipCliimagem.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_imgEquipClifilename.AsString := extractfilename(opdabrirfig.FileName);
       //mostrararq_ext;
       frmdados.cds_imgEquipCli.Post;
     end;
  //endi

end;

procedure TfrmPesqOS.spdapagarfigClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       tabela := 'ImgEquipCli';
       frmdados.Cds_ImgEquipCli.Delete;
     end;
  //endi

end;

procedure TfrmPesqOS.dbgimgPaintPanel(DBCtrlGrid: TDBCtrlGrid;
  Index: Integer);
begin
mostrararq_ext;
end;


procedure tfrmpesqos.ampliafoto;
begin
  frmampliafoto := tfrmampliafoto.create(self);
  frmampliafoto.showmodal;
  frmampliafoto.free;

end;


procedure TfrmPesqOS.dbgimgDblClick(Sender: TObject);
begin
ampliafoto;
end;

procedure TfrmPesqOS.spdampliafigClick(Sender: TObject);
begin
ampliafoto;
end;

procedure TfrmPesqOS.spdfolhaClick(Sender: TObject);
begin
  if frmDados.Cds_Indice.FieldByName('ordem_producao').AsString = 'T' then
     begin

       frmimpproducao := tfrmimpproducao.Create(self);
       frmimpproducao.relatorio.Preview;
       frmimpproducao.Free;


     end
  else
     begin

        if frmdados.Cds_Indice.FieldByName('tpimpvi').asInteger = 2 then
           begin
             frmimpfolha := tfrmimpfolha.Create(self);
             frmimpfolha.relatorio.Preview;
             frmimpfolha.Free;
           end;
        //endi

        if frmdados.Cds_Indice.FieldByName('tpimpvi').asInteger = 5 then
           begin
             frmimpfolha2 := tfrmimpfolha2.Create(self);
             frmimpfolha2.relatorio.Preview;
             frmimpfolha2.Free;
           end;
        //endi


     end




end;

procedure TfrmPesqOS.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

key := #0;

end;

procedure TfrmPesqOS.cbxdesc1Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc1.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=1) and descricao = '+quotedstr(cbxdesc1.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 1;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc1.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc2Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc2.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=2) and descricao = '+quotedstr(cbxdesc2.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 2;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc2.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc3Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc3.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=3) and descricao = '+quotedstr(cbxdesc3.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 3;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc3.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc4Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc4.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=4) and descricao = '+quotedstr(cbxdesc4.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 4;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc4.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc5Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc5.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=5) and descricao = '+quotedstr(cbxdesc5.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 5;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc5.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc6Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc6.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=6) and descricao = '+quotedstr(cbxdesc6.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 6;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc6.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc7Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc7.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=7) and descricao = '+quotedstr(cbxdesc7.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 7;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc7.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc8Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc8.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=8) and descricao = '+quotedstr(cbxdesc8.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 8;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc8.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc9Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc9.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=9) and descricao = '+quotedstr(cbxdesc9.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 9;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc9.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure TfrmPesqOS.cbxdesc10Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxdesc10.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from tabdesc where (id=10) and descricao = '+quotedstr(cbxdesc10.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'tabdesc';
         cds_tabdesc.Append;
         cds_tabdesc.FieldByName('id').asInteger := 10;
         cds_tabdesc.FieldByName('descricao').asString := cbxdesc10.text;
         cds_tabdesc.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;


procedure Tfrmpesqos.preenchecbxdesc1;
begin
  cbxdesc1.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 1');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc1.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmpesqos.preenchecbxdesc2;
begin
  cbxdesc2.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 2');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc2.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmpesqos.preenchecbxdesc3;
begin
  cbxdesc3.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 3');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc3.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmpesqos.preenchecbxdesc4;
begin
  cbxdesc4.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 4');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc4.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;



procedure Tfrmpesqos.preenchecbxdesc5;
begin
  cbxdesc5.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 5');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc5.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmpesqos.preenchecbxdesc6;
begin
  cbxdesc6.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 6');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc6.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmpesqos.preenchecbxdesc7;
begin
  cbxdesc7.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 7');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc7.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmpesqos.preenchecbxdesc8;
begin
  cbxdesc8.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 8');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc8.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmpesqos.preenchecbxdesc9;
begin
  cbxdesc9.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 9');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc9.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmpesqos.preenchecbxdesc10;
begin
  cbxdesc10.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from tabdesc where id = 10');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxdesc10.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure TfrmPesqOS.CBXTIPO_COBKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

key := #0;

end;

procedure TfrmPesqOS.BitBtn1Click(Sender: TObject);
begin
frmdados.Cds_dVenda.Next;
end;

procedure TfrmPesqOS.BitBtn2Click(Sender: TObject);
begin
frmdados.Cds_dVenda.Prior;
end;

procedure TfrmPesqOS.BitBtn3Click(Sender: TObject);
begin
if frmdados.Cds_dVenda.State = dsedit then
   begin
     frmdados.Cds_dVenda.Post;
   end;


end;

procedure TfrmPesqOS.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqOS.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
