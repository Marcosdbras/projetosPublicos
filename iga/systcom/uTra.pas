unit uTra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, WinSkinData, ExtCtrls, Menus, StdCtrls, DBCtrls,
  dbcgrids, Mask, Buttons, ExtDlgs, Grids, DBGrids, DB, ImgList, jpeg,
  clipbrd, shellapi, SqlExpr, EditNum;

type
  Tfrmtra = class(TForm)
    OpenDialog1: TOpenDialog;
    pctcontrole: TPageControl;
    MainMenu1: TMainMenu;
    pnlsuperior: TPanel;
    StatusBar1: TStatusBar;
    pnldental: TPanel;
    dbgmat_rest: TDBCtrlGrid;
    Shape1: TShape;
    imgfundo: TImage;
    imgfoto1: TImage;
    lbldente: TDBText;
    tbscadastro: TTabSheet;
    tbstratamento: TTabSheet;
    lbloutinf1: TLabel;
    cbxoutinf1: TDBComboBox;
    lbloutinf2: TLabel;
    cbxoutinf2: TDBComboBox;
    lbloutinf3: TLabel;
    cbxoutinf3: TDBComboBox;
    Label41: TLabel;
    edidtcad: TDBEdit;
    Label42: TLabel;
    EDIDTPESPCERASA: TDBEdit;
    Label7: TLabel;
    cbxntabela: TDBLookupComboBox;
    lbloutinf5: TLabel;
    cbxoutinf5: TDBComboBox;
    lbltitresponsavelent: TLabel;
    ediresponsavelent: TDBEdit;
    lbltitresponsavelrgent: TLabel;
    ediresponsavelrgent: TDBEdit;
    lbltitresponsavelcpfent: TLabel;
    ediresponsavelcpfent: TDBEdit;
    lbltittelent: TLabel;
    edidddecob: TDBEdit;
    edifonecob: TDBEdit;
    pnlprincipal: TPanel;
    Label38: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edicpf: TDBEdit;
    ediccli: TDBEdit;
    edincli: TDBEdit;
    edinfant: TDBEdit;
    Label39: TLabel;
    Label5: TLabel;
    lbltitnroent: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    EDIIE: TDBEdit;
    ediendent: TDBEdit;
    edinroent: TDBEdit;
    edicomplent: TDBEdit;
    edibairroent: TDBEdit;
    Label8: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label40: TLabel;
    edicidadeent: TDBEdit;
    edicepent: TDBEdit;
    edidddeent: TDBEdit;
    editelefones: TDBEdit;
    edicontato: TDBEdit;
    EDIDATANASC: TDBEdit;
    imgFoto: TImage;
    spdinsfoto: TSpeedButton;
    spdapafoto: TSpeedButton;
    opdAbrirfig: TOpenPictureDialog;
    OpenDialog2: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
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
    lblid1: TLabel;
    ediid1: TEdit;
    lblid2: TLabel;
    ediid2: TEdit;
    lbloutinf4: TLabel;
    cbxoutinf4: TDBComboBox;
    lbloutinf6: TLabel;
    cbxoutinf6: TDBComboBox;
    dbgtratamento: TDBGrid;
    pnltotal: TPanel;
    tbsprocedimentos: TTabSheet;
    dbgprocedimentos: TDBGrid;
    spdsalvar: TSpeedButton;
    tbsinfcompl: TTabSheet;
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
    Label9: TLabel;
    lbltotorc: TLabel;
    Label14: TLabel;
    lbltotalt: TLabel;
    tbsdebitos: TTabSheet;
    tbscreditos: TTabSheet;
    DBGrid1: TDBGrid;
    imgfichadetalhe: TImageList;
    Lista_img: TImageList;
    spdnovocliente: TSpeedButton;
    pnlinstratamento: TPanel;
    Label15: TLabel;
    cbxnomemod: TDBLookupComboBox;
    Label16: TLabel;
    ediqtdeM: TEdit;
    Label17: TLabel;
    cbxdescricao: TDBLookupComboBox;
    Label18: TLabel;
    cbxdente: TDBLookupComboBox;
    Label21: TLabel;
    ediprveM: TEdit;
    Label22: TLabel;
    edisubtotalM: TEdit;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    ckbtratar: TCheckBox;
    btnacao: TButton;
    btnCancelar: TButton;
    spdcancelar: TSpeedButton;
    Label20: TLabel;
    lbltotg: TLabel;
    spdestorno: TSpeedButton;
    spdlancar: TSpeedButton;
    Label23: TLabel;
    ediemail: TDBEdit;
    Label24: TLabel;
    EDIFONECOM: TDBEdit;
    Label25: TLabel;
    EDIFONEENT: TDBEdit;
    spdnova: TSpeedButton;
    cbxncli: TDBLookupComboBox;
    cbxnfant: TDBLookupComboBox;
    spdimptra: TSpeedButton;
    PopupMenu1: TPopupMenu;
    Sinttico1: TMenuItem;
    Completo1: TMenuItem;
    Label26: TLabel;
    CBXSITUCLI: TDBLookupComboBox;
    edidddecom: TDBEdit;
    spdalterarparc: TSpeedButton;
    spdexcluirparc: TSpeedButton;
    tbsfinanceiro: TTabSheet;
    pctconta: TPageControl;
    lblnos: TLabel;
    lblnnf: TLabel;
    tbsfechamento: TTabSheet;
    Label30: TLabel;
    Label31: TLabel;
    Label34: TLabel;
    Label32: TLabel;
    tbsresumo: TTabSheet;
    tbslancamento: TTabSheet;
    btnlancarp: TBitBtn;
    PageControl1: TPageControl;
    tbsobs: TTabSheet;
    mmoobs: TDBMemo;
    Label28: TLabel;
    lbltotglan: TLabel;
    pctfin: TPageControl;
    tbspgto: TTabSheet;
    tbsbaixa: TTabSheet;
    Label44: TLabel;
    edicsit: TDBEdit;
    cbxnsit: TDBLookupComboBox;
    Label45: TLabel;
    edidtl: TDBEdit;
    Label46: TLabel;
    edidtb: TDBEdit;
    Label47: TLabel;
    edivalliq: TDBEdit;
    Label48: TLabel;
    cbxntipoop: TDBLookupComboBox;
    btnbaixar: TBitBtn;
    Label43: TLabel;
    lbltotalf: TLabel;
    tbsobsorc: TTabSheet;
    DBMemo1: TDBMemo;
    imprime: TPopupMenu;
    Label49: TLabel;
    DBText1: TDBText;
    Label51: TLabel;
    DBText3: TDBText;
    Label52: TLabel;
    DBText4: TDBText;
    dbg_livrocaixa: TDBGrid;
    btnestornar: TButton;
    Label33: TLabel;
    EDIPARC: TEdit;
    dbgvencto: TDBGrid;
    rchtipopgto: TRichEdit;
    edipdesc: TEdit;
    edivaldesc: TEdit;
    ediliquido: TEdit;
    tbsvenctos: TTabSheet;
    dbgfin: TDBGrid;
    Label27: TLabel;
    lbltotal: TLabel;
    Label35: TLabel;
    lblpdesc: TLabel;
    lblvdesc: TLabel;
    Label50: TLabel;
    lblliquido: TLabel;
    Label29: TLabel;
    lbltitdente: TLabel;
    cbxbaixapgtodentes: TDBLookupComboBox;
    ckbtodos: TCheckBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    DBLookupComboBox1: TDBLookupComboBox;
    Label36: TLabel;
    tbsbaixados: TTabSheet;
    DBGrid2: TDBGrid;
    BitBtn1: TBitBtn;
    tbsaliq: TTabSheet;
    DBGrid3: TDBGrid;
    procedure FormShow(Sender: TObject);
    procedure spdinsfotoClick(Sender: TObject);
    procedure tbstratamentoShow(Sender: TObject);
    procedure spdnovotratamentoClick(Sender: TObject);
    procedure tbsprocedimentosShow(Sender: TObject);
    procedure spdfecharClick(Sender: TObject);
    procedure tbsdebitosShow(Sender: TObject);
    procedure tbscreditosShow(Sender: TObject);
    procedure dbgtratamentoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgtratamentoDblClick(Sender: TObject);
    procedure dbgtratamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgtratamentoColEnter(Sender: TObject);
    procedure mostrararq_ext_cli;
    procedure spdapafotoClick(Sender: TObject);
    procedure spdnovoclienteClick(Sender: TObject);
    procedure spdsalvarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnacaoClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure lbldenteClick(Sender: TObject);
    procedure dbgmat_restEnter(Sender: TObject);
    procedure dbgtratamentoEnter(Sender: TObject);
    function  AlinEdNumD(texto:TEdit; idec:integer):string;
    procedure dbgmat_restPaintPanel(DBCtrlGrid: TDBCtrlGrid;
      Index: Integer);
    procedure mostrararq_ext;
    procedure spdcancelarClick(Sender: TObject);
    procedure cbxdescricaoExit(Sender: TObject);
    procedure ediqtdeMExit(Sender: TObject);
    procedure ediprveMExit(Sender: TObject);
    procedure dbgprocedimentosKeyPress(Sender: TObject; var Key: Char);
    procedure spdestornoClick(Sender: TObject);
    procedure spdlancarClick(Sender: TObject);
    procedure pnlsuperiorExit(Sender: TObject);
    procedure dbgprocedimentosDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure dbgprocedimentosDblClick(Sender: TObject);
    procedure dbgprocedimentosColEnter(Sender: TObject);
    procedure spdnovaClick(Sender: TObject);
    procedure gravar;
    procedure spdimptraClick(Sender: TObject);
    procedure Sinttico1Click(Sender: TObject);
    procedure Completo1Click(Sender: TObject);
    procedure spdalterarparcClick(Sender: TObject);
    procedure inseretra;
    procedure editatra;
    procedure spdexcluirparcClick(Sender: TObject);
    procedure desmarcadente(icodmatrest:integer);
    procedure marcadente;
    procedure limparmobra;
    procedure dbgtratamentoKeyPress(Sender: TObject; var Key: Char);
    procedure edipdesc1KeyPress(Sender: TObject; var Key: Char);
    procedure tbsfinanceiroShow(Sender: TObject);
    procedure criaparc;
    procedure apagaparc;
    procedure dbgvenctoColEnter(Sender: TObject);
    procedure dbgvenctoEnter(Sender: TObject);
    procedure dbgvenctoExit(Sender: TObject);
    procedure dbgvenctoKeyPress(Sender: TObject; var Key: Char);
    procedure limparT;
    procedure limparP;
    procedure mmoobsEnter(Sender: TObject);
    procedure mmoobsExit(Sender: TObject);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure edipdesc1Enter(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure tbslancamentoShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ediliquido1KeyPress(Sender: TObject; var Key: Char);
    procedure tbsfechamentoShow(Sender: TObject);
    procedure atualizavencto;
    procedure btnestornarClick(Sender: TObject);
    procedure btnlancarpClick(Sender: TObject);
    procedure btnbaixarClick(Sender: TObject);
    procedure tbsbaixaShow(Sender: TObject);
    procedure tbsobsorcShow(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure cbxoutinf1Exit(Sender: TObject);
    procedure cbxoutinf2Exit(Sender: TObject);
    procedure cbxoutinf3Exit(Sender: TObject);
    procedure cbxoutinf4Exit(Sender: TObject);
    procedure cbxoutinf5Exit(Sender: TObject);
    procedure cbxoutinf6Exit(Sender: TObject);
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
    procedure preenchecbxoutinf1;
    procedure preenchecbxoutinf2;
    procedure preenchecbxoutinf3;
    procedure preenchecbxoutinf4;
    procedure preenchecbxoutinf5;
    procedure preenchecbxoutinf6;
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
    procedure edipdesc1Exit(Sender: TObject);
    procedure edivaldesc1Exit(Sender: TObject);
    procedure ediliquido1Exit(Sender: TObject);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldesc1KeyPress(Sender: TObject; var Key: Char);
    procedure ediliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure edipdescExit(Sender: TObject);
    procedure edivaldescExit(Sender: TObject);
    procedure ediliquidoExit(Sender: TObject);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure tbsvenctosShow(Sender: TObject);
    procedure dbgfinDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbg_livrocaixaDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure inserecomissao;
    procedure cbxpgtodenteKeyPress(Sender: TObject; var Key: Char);
    procedure cbxpgtodenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure baixardentespagos;
    procedure ckbtodosClick(Sender: TObject);
    procedure habilitad;
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure ckbtodosKeyPress(Sender: TObject; var Key: Char);
    procedure cbxbaixapgtodentesKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbsbaixadosShow(Sender: TObject);
    procedure tbsaliqShow(Sender: TObject);





  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sCodigo, sTipocodM:string;
    icuni, iccf, icsita, icsitb, icicms, icipi, icMar,  iccfop,
    icpis, iccofins, icmodbc, icirii, icvii, icoimp, icmodbcst :integer;
    fQtdeEstq:real;
    bMostrar, bMostrarM:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf:boolean;
    ftvalor, ftvalliq, fvaltot, fvalsobra:real;
    sfoca:string;
    inos:integer;
    sOpcaoT:string;
    icodmata:integer;

    spdesc_PA,
    sValdesc_PA,
    sliquido_PA,
    spdesc_OA,
    sValdesc_OA,
    sliquido_OA,
    spdescA,
    sValdescA,
    sliquidoA :String;

    ftvaldesc,
    ftotg,
    ftot:real;




  public
    { Public declarations }
    sTitRel:string;
    scoluna:string;
    iccli:integer;
    icvenda:integer;
    fvalorrec:real;
  end;

var
  frmtra: Tfrmtra;

implementation
    uses ugeral, udados, uloginutradental, ufectra, uacao, upesqtra,
         upagto, uimptrat, uimptratd, uimporc, ulancomfun, uimprecpgto;
{$R *.dfm}

procedure Tfrmtra.FormShow(Sender: TObject);
var
  vardir:string;
  x:integer;


begin
  vardir := extractfilepath(application.ExeName);

  ediqtdem.Text := '1';
  ediprvem.Text := '0,00';
  edisubtotalm.Text := '0,00';

  //skin.SkinFile := vardir+'SKIN.SKN';
  //skin.Active := true;


  //frmpesqtra.Skin.SkinFile:=Skin.SkinStore;
  //frmpesqtra.Skin.Active := TRUE;
  //frmtra.Update;

  //frmloginutradental := tfrmloginutradental.create(self);
  //frmloginutradental.showmodal;
  //frmloginutradental.free;


  tabela := 'sVenda';


  if frmpesqtra.sOPcao = 'I' then
     begin
       spdnovocliente.Enabled := true;
       frmdados.cds_svenda.Append;
     end;
  //endi
  if frmpesqtra.sOPcao = 'A' then
     begin
       spdnovocliente.Enabled := false;
       frmdados.cds_svenda.Edit;
     end;
  //endi




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

  edincli.Top := cbxncli.Top;
  edincli.left := cbxncli.left;
  edincli.Height := cbxncli.Height;
  edincli.left := cbxncli.left;
  edincli.Width  := cbxncli.width;

  edinfant.Top := cbxnfant.Top;
  edinfant.left := cbxnfant.left;
  edinfant.Height := cbxnfant.Height;
  edinfant.left := cbxnfant.left;
  edinfant.width := cbxnfant.width;

  edincli.Visible := false;
  edinfant.Visible := false;

  //ediendent.DataField := '';
  //edicomplent.DataField := '';
  //edibairroent.DataField := '';
  //edicidadeent.DataField := '';
  //edicepent.DataField := '';
  //edidddfs.DataField := '';
  //editelefones.DataField := '';
  //edicontato.DataField := '';
  //cbxoutinf1.DataField := '';
  //cbxoutinf2.DataField := '';
  //cbxoutinf3.DataField := '';
  //cbxoutinf4.DataField := '';
  //cbxoutinf5.DataField := '';
  //cbxoutinf6.DataField := '';
  //edinroent.DataField := '';

  ediendent.DataField := 'endent';
  edicomplent.DataField := 'complent';
  edibairroent.DataField := 'bairroent';
  edicidadeent.DataField := 'cidadeent';
  ediemail.DataField := 'email';

  edicepent.DataField := 'cepent';
  editelefones.DataField := 'telefones';

  edifoneent.DataField := 'telefoneent';
  edifonecom.DataField := 'telefonecom';
  edifonecob.DataField := 'telefonecob';



  edicontato.DataField := 'contato';
  //edidddfs.DataField := 'dddfs';
  cbxoutinf1.DataField := 'outinf1';
  cbxoutinf2.DataField := 'outinf2';
  cbxoutinf3.DataField := 'outinf3';
  cbxoutinf4.DataField := 'outinf4';
  cbxoutinf5.DataField := 'outinf5';
  cbxoutinf6.DataField := 'outinf6';
  edinroent.DataField := 'nroent';

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

  pnlinstratamento.Visible := false;
  pnlinstratamento.Align := alclient;

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

     end;
   //endi

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

       Cds_SituCadCli.Active := false;
       Dbx_SituCadCli.Active := false;
       Dbx_SituCadCli.SQL.Clear;
       Dbx_SituCadCli.SQL.Add('Select * from SituCadCli');
       Dbx_SituCadCli.Active := true;
       Cds_SituCadCli.Active := true;

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

       //cds_cmobra.Active := false;
       //dbx_cmobra.Active := false;
       //dbx_cmobra.SQL.Clear;
       //if cbxntabela.Text <> '' then
       //   dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
       //else
       //   dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+')' );
       //endi
       //dbx_cmobra.Active := true;
       //cds_cmobra.Active := true;

       cds_dMobra.Active := false;
       cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       //cds_dmobracdesc.DefaultExpression := inttostr(cds_cmobra.fieldbyname('codigo').asInteger);
       dbx_dMobra.Active := false;
       dbx_dMobra.SQL.Clear;
       dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )'   );
       dbx_dMobra.Active := true;
       cds_dMobra.Active := true;

       cbxNomeMod.ListSource := dts_Modulo;   //  vai ler no
       cbxNomeMod.Keyfield   := 'codigo'; // o campo
       cbxNomeMod.DataSource := dts_Temp;  // vai gravar no
       cbxNomeMod.DataField  :='cod4';  // no campo
       cbxNomeMod.ListField  :='descricao';    // vai exibir o campo

       cbxdescricao.ListSource := dts_cmobra;   //  vai ler no
       cbxdescricao.Keyfield   := 'codigo'; // o campo
       cbxdescricao.DataSource := dts_Temp;  // vai gravar no
       cbxdescricao.DataField  :='cod5';  // no campo
       cbxdescricao.ListField  :='descr';    // vai exibir o campo

       cbxdente.ListSource := dts_mat_restaurar;   //  vai ler no
       cbxdente.Keyfield   := 'codigo'; // o campo
       cbxdente.DataSource := dts_Temp;  // vai gravar no
       cbxdente.DataField  :='cod6';  // no campo
       cbxdente.ListField  :='ID';    // vai exibir o campo

       cbxnomefun.ListSource := dst_funcionarios;   //  vai ler no
       cbxnomefun.Keyfield   := 'codigo'; // o campo
       cbxnomefun.DataSource := dts_Temp;  // vai gravar no
       cbxnomefun.DataField  :='cod7';  // no campo
       cbxnomefun.ListField  :='nome';    // vai exibir o campo

       tabela := 'Temp';

       cds_temp.Edit;
       cds_tempcod4.Value := 1;


     end;
   //endth

   if not edidesc13.Visible then
      tbsinfcompl.TabVisible := false
   else
      tbsinfcompl.TabVisible := true;
   //endi

   frmdados.cds_mat_restaurar.First;

   tabela := 'sVenda';

   mostrararq_ext_cli;

   frmdados.totalizafrmpesqvdprod;

   preenchecbxoutinf1;
   preenchecbxoutinf2;
   preenchecbxoutinf3;
   preenchecbxoutinf4;
   preenchecbxoutinf5;
   preenchecbxoutinf6;
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

procedure Tfrmtra.spdinsfotoClick(Sender: TObject);
var
  sSkin, vardir:string;

begin
sSkin := frmpesqtra.Skin.SkinStore;

vardir := extractfilepath(application.ExeName);

frmpesqtra.Skin.SkinFile:= '';
frmpesqtra.Skin.Active := TRUE;
if opdAbrirfig.Execute then
   begin
     if frmdados.Cds_Clientes.RecordCount > 0 then
        begin
          frmdados.cds_clientes.Edit;
          frmdados.cds_clientesfoto.LoadFromFile(opdabrirfig.FileName);
          frmdados.cds_clientesfilename.AsString := extractfilename(opdabrirfig.FileName);
          //frmdados.Cds_Clientes.post;
          mostrararq_ext_cli;
        end;
     //endi
   end;
//endi
//frmpesqtra.Skin.SkinFile:=frmpesqtra.Skin.SkinStore;

frmpesqtra.skin.SkinFile := vardir+'SKIN.SKN';
frmpesqtra.Skin.Active := TRUE;

end;

procedure Tfrmtra.tbstratamentoShow(Sender: TObject);
begin
//spdsalvar.Click;

gravar;

with frmdados do
  begin


    tabela := 'DMOBRA';

    //cds_cmobra.Active := false;
    //dbx_cmobra.Active := false;
    //dbx_cmobra.SQL.Clear;
    //if cbxntabela.Text <> '' then
    //   dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
    //else
    //   dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+')' );
    //endi
    //dbx_cmobra.Active := true;
    //cds_cmobra.Active := true;

    //cds_cmobra.First;

    cds_dMobra.Active := false;
    cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
    cds_dmobracdesc.DefaultExpression := inttostr(cds_cmobra.fieldbyname('codigo').asInteger);
    dbx_dMobra.Active := false;
    dbx_dMobra.SQL.Clear;
    dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )'   );
    dbx_dMobra.Active := true;
    cds_dMobra.Active := true;

    if Cds_dmobra.RecordCount = 0 then
       begin
         spdalterarparc.Enabled := false;
         spdexcluirparc.Enabled := false;
       end;
    //endi

    totalizafrmpesqvdprod;



  end;
//endi


end;

procedure Tfrmtra.spdnovotratamentoClick(Sender: TObject);
begin
//tabela := 'sVenda';
//frmdados.Cds_sVenda.Append;
//frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_clientes.fieldbyname('codigo').asInteger;

end;

procedure Tfrmtra.tbsprocedimentosShow(Sender: TObject);
begin
//spdsalvar.Click;

gravar;

with frmdados do
  begin

    tabela := 'sVenda';

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi


    tabela := 'procedimentos';

    cds_Mat_Rest_ID.Active := false;
    dbx_Mat_Rest_ID.Active := false;
    dbx_Mat_Rest_ID.SQL.Clear;
    dbx_Mat_Rest_ID.SQL.Add('select m.id, m.codigo from Mat_restaurar m inner join matrep p on m.codigo = p.codmat_restaurar where ( p.codsvenda = '+ inttostr(cds_svenda.fieldbyname('codigo').asInteger) +') and (p.selec = '+quotedstr('T')+') order by m.codigo');
    dbx_Mat_Rest_ID.Active := true;
    cds_Mat_Rest_ID.Active := true;

    cds_procedimentos.Active := false;
    cds_procedimentoscsvenda.DefaultExpression := inttostr(cds_svenda.fieldbyname('codigo').asInteger);
    cds_procedimentosdata.DefaultExpression := quotedstr(datetostr(date));
    cds_procedimentoscompleto.DefaultExpression := quotedstr('F');
    dbx_procedimentos.Active := false;
    dbx_procedimentos.SQL.Clear;
    dbx_procedimentos.SQL.Add('select * from procedimentos where csvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger) );
    dbx_procedimentos.Active := true;
    cds_procedimentos.Active := true;

  end;
//endi


end;

procedure Tfrmtra.spdfecharClick(Sender: TObject);
begin
//spdsalvar.Click;

//gravar;

//frmfectra := tfrmfectra.create(self);
//frmfectra.showmodal;
//frmfectra.free;

end;

procedure Tfrmtra.tbsdebitosShow(Sender: TObject);
begin
  //spdsalvar.Click;

  gravar;

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

procedure Tfrmtra.tbscreditosShow(Sender: TObject);
begin
  //spdsalvar.Click;

  gravar;

  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
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

procedure Tfrmtra.dbgtratamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;
  f:TextFile; Linha:String;
  bAut :boolean;

begin

  bAut := false;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'SELEC') then
     begin

       with dbgtratamento.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_dmobra.FieldByName('selec').asString = 'T'  then
            Lista_Img.GetBitmap(2, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;
     end;
  //endi

  if (Column.FieldName = 'PAGO') then
     begin

       with dbgtratamento.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_dmobra.FieldByName('PAGO').asString = 'T'  then
            Lista_Img.GetBitmap(2, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;
     end;
  //endi


  if (Column.FieldName = 'COMPLETO') then
     begin
       with dbgtratamento.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_dmobra.FieldByName('COMPLETO').asString = 'T'  then
            Lista_Img.GetBitmap(2, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;
     end;
  //endi

  if (Column.FieldName = 'LANCOM') then
     begin
       with dbgtratamento.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_dmobra.FieldByName('LANCOM').asString = 'T'  then
            Lista_Img.GetBitmap(2, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;
     end;
  //endi



end;

procedure Tfrmtra.dbgtratamentoDblClick(Sender: TObject);
  var
  fvalor:real;
  icodigo:integer;

begin
if frmdados.Cds_dmobra.RecordCount = 0 then
   exit;
//endi

if (dbgtratamento.SelectedField = frmdados.cds_dmobraselec )  then
   begin
     FrmDados.Cds_dmobra.Edit;
     if FrmDados.Cds_dmobra.FieldByName('SELEC').asString = 'F' then
        begin
          frmdados.Cds_Exec.Active := false;
          frmdados.Dbx_Exec.Active := false;
          frmdados.Dbx_Exec.SQL.Clear;
          frmdados.Dbx_Exec.SQL.Add('update matrep set selec = '+quotedstr('T')+'where (codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asinteger)+') and (codmat_restaurar = '+inttostr(frmdados.Cds_dMobra.fieldbyname('codmat_restaurar').asinteger)+')');
          frmdados.Dbx_Exec.ExecSQL;
          frmDados.Cds_dmobra.FieldByName('SELEC').asString := 'T';
          frmdados.Cds_dMobra.FieldByName('datainicio').asDateTime := date;
        end
     else
        begin
          frmdados.Cds_Exec.Active := false;
          frmdados.Dbx_Exec.Active := false;
          frmdados.Dbx_Exec.SQL.Clear;
          frmdados.Dbx_Exec.SQL.Add('update matrep set selec = '+quotedstr('F')+'where (codsvenda = '+inttostr(frmdados.Cds_sVenda.fieldbyname('codigo').asinteger)+') and (codmat_restaurar = '+inttostr(frmdados.Cds_dMobra.fieldbyname('codmat_restaurar').asinteger)+')');
          frmdados.Dbx_Exec.ExecSQL;
          FrmDados.Cds_dmobra.FieldByName('SELEC').asString := 'F';
          frmdados.Cds_dMobra.FieldByName('datainicio').asString := '';
        end;
     //endi
     FrmDados.Cds_dmobra.post;
     Frmdados.totalizafrmpesqvdprod;
   end
else
   begin
     if (dbgtratamento.SelectedField = frmdados.cds_dmobralan )  then
        begin
          FrmDados.Cds_dmobra.Edit;
          if FrmDados.Cds_dmobra.FieldByName('lan').asString = 'F' then
             begin
               frmDados.Cds_dmobra.FieldByName('lan').asString := 'T';
             end
          else
             begin
               FrmDados.Cds_dmobra.FieldByName('lan').asString := 'F';
             end;
          //endi
          FrmDados.Cds_dmobra.post;
        end
     else
        begin
          if (dbgtratamento.SelectedField = frmdados.cds_dmobracompleto )  then
             begin
               FrmDados.Cds_dmobra.Edit;
               if FrmDados.Cds_dmobra.FieldByName('completo').asString = 'F' then
                  begin
                    if frmDados.Cds_dMobra.FieldByName('pago').asString = 'T' then
                       begin
                         if frmdados.Cds_dMobra.FieldByName('cfunp').AsInteger > 0 then
                            begin
                              frmDados.Cds_dmobra.FieldByName('completo').asString := 'T';
                              frmdados.Cds_dMobra.FieldByName('datafim').asDateTime := date;
                              inserecomissao;
                            end
                         else
                            begin
                              showmessage('Dentita não está especificado...');
                            end;
                         //endi
                       end
                    else
                       begin
                         showmessage('Pagamentos não estão liquidados...');
                       end;
                    //endi
                  end
               else
                  begin
                    FrmDados.Cds_dmobra.FieldByName('completo').asString := 'F';
                    frmdados.Cds_dMobra.FieldByName('datafim').asString := '';
                    inserecomissao;
                  end;
               //endi
               FrmDados.Cds_dmobra.post;
             end
          else
             begin
               if (dbgtratamento.SelectedField = frmdados.cds_dmobrapago )  then
                  begin
                    //FrmDados.Cds_dmobra.Edit;
                    //if FrmDados.Cds_dmobra.FieldByName('pago').asString = 'F' then
                    //   begin
                    //     frmDados.Cds_dmobra.FieldByName('pago').asString := 'T';
                    //     inserecomissao;
                    //   end
                    //else
                    //   begin
                    //     FrmDados.Cds_dmobra.FieldByName('pago').asString := 'F';
                    //     inserecomissao;
                    ///   end;
                    //endi
                    //FrmDados.Cds_dmobra.post;
                  end
               else
                  begin
                    if (dbgtratamento.SelectedField = frmdados.cds_dmobralancom )  then
                       begin
                         {

                         frmlancomfun := tfrmlancomfun.create(self);
                         frmlancomfun.showmodal;
                         frmlancomfun.free;


                         FrmDados.Cds_dmobra.Edit;
                         if FrmDados.Cds_dmobra.FieldByName('lancom').asString = 'F' then
                            begin
                              frmDados.Cds_dmobra.FieldByName('lancom').asString := 'T';
                            end
                         else
                            begin
                              FrmDados.Cds_dmobra.FieldByName('lancom').asString := 'F';
                            end;
                         //endi
                         FrmDados.Cds_dmobra.post;

                         }
                       end
                    else
                       begin
                         spdalterarparc.Click;
                       end;
                    //endi
                  end;
               //endi
             end;
          //endi
        end;
     //endi
   end;
//endi


end;

procedure Tfrmtra.dbgtratamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi
if key = vk_delete then
   begin
     if dbgtratamento.SelectedField = frmdados.Cds_dMobraDATAINICIO then
        begin
          frmdados.Cds_dMobra.Edit;
          frmdados.Cds_dMobra.FieldByName('datainicio').asString := '';
          frmdados.Cds_dMobra.Post;
        end;
     //endi
     //if dbgtratamento.SelectedField = frmdados.Cds_dMobraDATAFIM then
     //   begin
     //     frmdados.Cds_dMobra.Edit;
     //     frmdados.Cds_dMobra.FieldByName('datafim').asString := '';
     //     frmdados.Cds_dMobra.Post;
     //   end;
     //endi



   end;
//endi

end;

procedure Tfrmtra.dbgtratamentoColEnter(Sender: TObject);
begin
if (dbgtratamento.SelectedField = frmdados.cds_dmobradatainicio )  then
    dbgtratamento.Options := dbgtratamento.Options + [dgEditing]
else
   if (dbgtratamento.SelectedField = frmdados.cds_dmobradatafim )  then
      dbgtratamento.Options := dbgtratamento.Options + [dgEditing]
   else
      if (dbgtratamento.SelectedField = frmdados.cds_dmobranfuncp )  then
         dbgtratamento.Options := dbgtratamento.Options + [dgEditing]
      else
         dbgtratamento.Options := dbgtratamento.Options - [dgEditing];
      //endi
   //endi
//endi

end;

procedure tfrmtra.mostrararq_ext_cli;
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





procedure Tfrmtra.spdapafotoClick(Sender: TObject);
begin
  frmdados.Cds_clientes.Edit;
  frmdados.cds_clientesfoto.AsVariant := '';
  mostrararq_ext_cli;

end;

procedure Tfrmtra.spdnovoclienteClick(Sender: TObject);
begin

if cbxncli.Visible then
   begin




     tabela := 'Clientes';

     edincli.Visible := true;
     edinfant.Visible := true;

     cbxncli.Visible := false;
     cbxnfant.Visible := false;

     frmdados.Cds_Clientes.Append;
     //frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_Clientes.fieldbyname('codigo').asInteger;

     //showmessage(frmdados.Cds_Clientes.fieldbyname('codigo').asstring);


     ediccli.DataField := '';
     ediccli.Enabled := false;

     spdnovocliente.Caption := 'P&ESQUISA PACIENTE';
     
   end
else
   begin

     tabela := 'sVenda';

     edincli.Visible := false;
     edinfant.Visible := false;

     cbxncli.Visible := true;
     cbxnfant.Visible := true;

     frmdados.Cds_Clientes.cancel;

     ediccli.DataField := 'codigo';
     ediccli.Enabled := true;

     spdnovocliente.Caption := '&NOVO PACIENTE';


   end;
//endi

edicpf.SetFocus;

end;

procedure Tfrmtra.spdsalvarClick(Sender: TObject);
begin
gravar;
close;


end;

procedure Tfrmtra.btnCancelarClick(Sender: TObject);
begin
pnlinstratamento.Visible := false;
dbgtratamento.Enabled := true;

if frmdados.Cds_dmobra.RecordCount >= 1 then
   begin
     spdalterarparc.Enabled := true;
     spdexcluirparc.Enabled := true;
   end;
//endi


end;

procedure Tfrmtra.btnacaoClick(Sender: TObject);
begin

  gravar;

  tabela := 'DMOBRA';

  if sOpcaoT = 'I' then
     inseretra;
  //endi

  if sOpcaoT = 'A' then
     editatra;
  //endi

  pnlinstratamento.Visible := false;

  dbgtratamento.Enabled := true;

  if frmdados.Cds_dmobra.RecordCount >= 1 then
     begin
       spdalterarparc.Enabled := true;
       spdexcluirparc.Enabled := true;
     end;
  //endi

  icodmata := 0;

end;

procedure Tfrmtra.FormClose(Sender: TObject; var Action: TCloseAction);
var
  ftvalliq,
  ftvaldesc,
  ftotg:real;

begin

atualizavencto;

frmdados.cds_exec.Active := false;
frmdados.dbx_exec.Active := false;
frmdados.dbx_exec.SQL.Clear;
frmdados.dbx_exec.SQL.Add('Select sum(valorreal) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
frmdados.cds_exec.Active := true;
frmdados.dbx_exec.Active := true;

ftvalliq := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

frmdados.cds_exec.Active := false;
frmdados.dbx_exec.Active := false;
frmdados.dbx_exec.SQL.Clear;
frmdados.dbx_exec.SQL.Add('Select sum(valdesc) as tvalor from livrocaixa where (codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
frmdados.cds_exec.Active := true;
frmdados.dbx_exec.Active := true;

ftvaldesc := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

ftotg := strtofloat(tirapontos(lbltotalt.Caption)) - ftvaldesc -  ftvalliq;

if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
   frmdados.Cds_Clientes.Cancel;
//endi
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.Cancel;
//endi


if ftotg > 0 then
   begin

     if application.MessageBox('Não foi realizado lançamento para contas a receber, deseja sair sem lançar?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
        begin
          abort;

        end;
     //endi

   end;
//endi

  Action:=caFree;
  frmtra:=nil;
  form_ativo := '';


end;

procedure Tfrmtra.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmtra.lbldenteClick(Sender: TObject);
begin
sOpcaoT := 'I';

pctcontrole.ActivePageIndex := 1;

frmdados.cds_cmobra.Active := false;
frmdados.dbx_cmobra.Active := false;
frmdados.dbx_cmobra.SQL.Clear;
if cbxntabela.Text <> '' then
   frmdados.dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(frmdados.cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( frmdados.cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
else
   frmdados.dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(frmdados.cds_modulo.fieldbyname('codigo').asInteger)+')' );
//endi
frmdados.dbx_cmobra.Active := true;
frmdados.cds_cmobra.Active := true;

tabela := 'Temp';
frmdados.cds_temp.Edit;
frmdados.cds_temp.FieldByName('cod6').asInteger := frmdados.cds_mat_restaurar.fieldbyname('codigo').asInteger;

ediqtdem.Text := '1';
ediprvem.Text := '0,00';
edisubtotalm.Text := '0,00';

btnacao.Caption := '&Inserir';

pnlinstratamento.Visible := true;

if cbxdescricao.Text <> '' then
   begin
     ediprveM.Text  := formatfloat('###,###,##0.00', frmdados.cds_cmobra.fieldbyname('valor').asfloat);
     edisubtotalM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediqtdeM.Text)) * strtofloat(tirapontos(ediPrveM.Text)));
   end
else
   begin
     ediprveM.Text  := '0,00';
     edisubtotalM.Text := '0,00';
   end;
//endi

if cbxnomemod.Enabled then
   cbxnomemod.SetFocus;
//endi

end;

procedure Tfrmtra.dbgmat_restEnter(Sender: TObject);
begin
sfoca := '1';
end;

procedure Tfrmtra.dbgtratamentoEnter(Sender: TObject);
begin
sfoca := '2';
end;


function Tfrmtra.AlinEdNumD(texto:TEdit; idec:integer):string;
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

procedure Tfrmtra.dbgmat_restPaintPanel(DBCtrlGrid: TDBCtrlGrid;
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


procedure tfrmtra.mostrararq_ext;
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



procedure Tfrmtra.spdcancelarClick(Sender: TObject);
begin
close;
end;

procedure Tfrmtra.cbxdescricaoExit(Sender: TObject);
begin
  if cbxdescricao.Text <> '' then
     begin
       ediprveM.Text  := formatfloat('###,###,##0.00', frmdados.cds_cmobra.fieldbyname('valor').asfloat);
       edisubtotalM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediqtdeM.Text)) * strtofloat(tirapontos(ediPrveM.Text)));
     end
  else
     begin
       ediprveM.Text  := '0,00';
       edisubtotalM.Text := '0,00';
     end;
  //endi

end;

procedure Tfrmtra.ediqtdeMExit(Sender: TObject);
begin
try
  ediQtdeM.Text  := formatfloat('0', strtofloat(tirapontos(ediqtdeM.Text))  );
  edisubtotalM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediqtdeM.Text)) * strtofloat(tirapontos(ediprveM.Text)) );
except
  ediprveM.Text  := '0,00';
  edisubtotalM.Text := '0,00';
end;
end;

procedure Tfrmtra.ediprveMExit(Sender: TObject);
begin
try
  ediPrveM.Text  := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediPrveM.Text))  );
  edisubtotalM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(ediqtdeM.Text)) * strtofloat(tirapontos(ediprveM.Text)) );
except
  ediprveM.Text  := '0,00';
  edisubtotalM.Text := '0,00';
end;

end;

procedure Tfrmtra.dbgprocedimentosKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_procedimentos.State in [dsinsert, dsedit] then
      frmdados.Cds_procedimentos.Post;
   //endi
//endi

end;

procedure Tfrmtra.spdestornoClick(Sender: TObject);
begin
  with frmdados do
    begin

      tabela := 'sVenda';

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

procedure Tfrmtra.spdlancarClick(Sender: TObject);
var ftotal:currency;
    ftotalprazo:integer;
    ResultSet : tCustomSqlDataSet;
    SqlStMt : String;
    x, codigo:integer;
begin
if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   frmdados.Cds_sVenda.post;
//endi

frmdados.cds_dVenda.Active := false;
frmdados.cds_dVendacodsvenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
frmdados.cds_dVendaImpNf.DefaultExpression := 'T';

frmdados.dbx_dVenda.Active := false;
frmdados.dbx_dVenda.SQL.Clear;
frmdados.dbx_dVenda.SQL.Add('Select * from dVenda where codsvenda = '+  inttostr(  frmdados.cds_sVenda.fieldbyname('codigo').asInteger )+' order by npro');
frmdados.dbx_dVenda.Active := true;
frmdados.cds_dVenda.Active := true;

     if frmdados.Cds_sVenda.FieldByName('nos').asInteger = 0 then
        begin
          SqlStMt := 'Select gen_id(Gen_nos,1) as Valor from RDB$DATABASE;';
          ResultSet := nil;
          frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
          if Assigned(ResultSet) then
             inos := ResultSet.fieldbyname('valor').asInteger;
          //endi

          with frmdados do
            begin

              Cds_sVenda.Edit;
              Cds_sVenda.FieldByName('nos').asInteger := inos;
              Cds_sVenda.Post;

            end;
          //endi

        end
     else
        begin
          inos := frmdados.Cds_sVenda.FieldByName('nos').asInteger;
        end;
     //endi

     with frmdados do
          begin

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('update Vencimentos set nos = '+inttostr(frmdados.Cds_sVenda.FieldByName('nos').asInteger)+' where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger)+')'  );
            dbx_exec.ExecSQL;

            if Cds_sVenda.FieldByName('lancado').asString = 'F' then
               begin
                 tabela := 'NF';
                 cds_nf.Append;
                 cds_nf.FieldByName('codsvenda').AsInteger := cds_svenda.fieldbyname('codigo').asInteger;
                 cds_nf.FieldByName('ccli').AsInteger := cds_svenda.fieldbyname('ccli').asInteger;
                 //cds_nf.FieldByName('pdesc').Asfloat := cds_svenda.fieldbyname('pdesc_p').asfloat;
                 //cds_nf.FieldByName('valdesc').Asfloat := cds_svenda.fieldbyname('valdesc_p').asfloat;
                 //cds_nf.FieldByName('liquido').Asfloat := cds_svenda.fieldbyname('liquido_p').asfloat;
                 cds_nf.FieldByName('total').Asfloat := cds_svenda.fieldbyname('total').asfloat;
                 cds_nf.FieldByName('frete').Asfloat := cds_svenda.fieldbyname('frete').asfloat;
                 cds_nf.FieldByName('din').Asfloat := cds_svenda.fieldbyname('din_p').asfloat;
                 cds_nf.FieldByName('crep').AsInteger := cds_svenda.fieldbyname('crep').asInteger;
                 cds_nf.FieldByName('troco').Asfloat := cds_svenda.fieldbyname('troco').asfloat;
                 cds_nf.FieldByName('totbruto').Asfloat := cds_svenda.fieldbyname('totbruto').asfloat;
                 cds_nf.FieldByName('outroavist').Asfloat := cds_svenda.fieldbyname('outroavist').asfloat;
                 cds_nf.FieldByName('parc').AsInteger := cds_svenda.fieldbyname('parc_p').asInteger;
                 cds_nf.FieldByName('nos').AsInteger := cds_svenda.fieldbyname('nos').asInteger;
                 cds_nf.FieldByName('priparc').AsString := cds_svenda.fieldbyname('priparc').asString;
                 cds_nf.FieldByName('tote').Asfloat := cds_svenda.fieldbyname('tote').asfloat;
                 cds_nf.FieldByName('em_caixa').Asfloat := cds_svenda.fieldbyname('em_caixa').asfloat;
                 cds_nf.FieldByName('custopecas').Asfloat := cds_svenda.fieldbyname('custopecas').asfloat;
                 cds_nf.FieldByName('custopecae').Asfloat := cds_svenda.fieldbyname('custopecae').asfloat;
                 cds_nf.FieldByName('cfun').AsInteger := cds_svenda.fieldbyname('cfun').asInteger;
                 cds_nf.FieldByName('tipoop').AsInteger := cds_svenda.fieldbyname('tipoop').asInteger;
                 cds_nf.FieldByName('absdesc').Asfloat := cds_svenda.fieldbyname('absdesc').asfloat;
                 cds_nf.FieldByName('totpagar').Asfloat := cds_svenda.fieldbyname('totpagar').asfloat;
                 cds_nf.FieldByName('totgpagar').Asfloat := cds_svenda.fieldbyname('totgpagar').asfloat;
                 cds_nf.FieldByName('totgprodd').Asfloat := cds_svenda.fieldbyname('totgprodd').asfloat;
                 cds_nf.FieldByName('tpnf').AsInteger := cds_svenda.fieldbyname('tpnf').asInteger;
                 cds_nf.FieldByName('cnat').AsInteger := cds_svenda.fieldbyname('cnat').asInteger;
                 cds_nf.FieldByName('baseicms').Asfloat := cds_svenda.fieldbyname('baseicms').asfloat;
                 cds_nf.FieldByName('valoricms').Asfloat := cds_svenda.fieldbyname('valoricms').asfloat;
                 cds_nf.FieldByName('basecalcicmssub').Asfloat := cds_svenda.fieldbyname('basecalcicmssub').asfloat;
                 cds_nf.FieldByName('vlricmssub').Asfloat := cds_svenda.fieldbyname('vlricmssub').asfloat;
                 cds_nf.FieldByName('vlrfrete').Asfloat := cds_svenda.fieldbyname('vlrfrete').asfloat;
                 cds_nf.FieldByName('vlrseguro').Asfloat := cds_svenda.fieldbyname('vlrseguro').asfloat;
                 cds_nf.FieldByName('outdesp').Asfloat := cds_svenda.fieldbyname('outdesp').asfloat;
                 cds_nf.FieldByName('vlripi').Asfloat := cds_svenda.fieldbyname('vlripi').asfloat;
                 cds_nf.FieldByName('vlrtotnf').Asfloat := cds_svenda.fieldbyname('vlrtotnf').asfloat;
                 cds_nf.FieldByName('quantidade').AsString := cds_svenda.fieldbyname('quantidade').asString;
                 cds_nf.FieldByName('especie').AsString := cds_svenda.fieldbyname('especie').asString;
                 cds_nf.FieldByName('marca').AsString := cds_svenda.fieldbyname('marca').asString;
                 cds_nf.FieldByName('numero').AsString := cds_svenda.fieldbyname('numero').asString;
                 cds_nf.FieldByName('pesob').AsString := cds_svenda.fieldbyname('pesob').asString;
                 cds_nf.FieldByName('pesol').AsString := cds_svenda.fieldbyname('pesol').asString;
                 cds_nf.FieldByName('fretepor').AsString := cds_svenda.fieldbyname('fretepor').asString;
                 cds_nf.FieldByName('placavei').AsString := cds_svenda.fieldbyname('placavei').asString;
                 cds_nf.FieldByName('ufvei').AsString := cds_svenda.fieldbyname('ufvei').asString;
                 cds_nf.FieldByName('fretep').AsInteger := cds_svenda.fieldbyname('fretep').asInteger;
                 cds_nf.FieldByName('DA1').AsString := cds_svenda.fieldbyname('DA1').asString;
                 cds_nf.FieldByName('DA2').AsString := cds_svenda.fieldbyname('DA2').asString;
                 cds_nf.FieldByName('DA3').AsString := cds_svenda.fieldbyname('DA3').asString;
                 cds_nf.FieldByName('DA4').AsString := cds_svenda.fieldbyname('DA4').asString;
                 cds_nf.FieldByName('DA5').AsString := cds_svenda.fieldbyname('DA5').asString;
                 cds_nf.FieldByName('DA6').AsString := cds_svenda.fieldbyname('DA6').asString;
                 cds_nf.FieldByName('DA7').AsString := cds_svenda.fieldbyname('DA7').asString;
                 cds_nf.FieldByName('DA8').AsString := cds_svenda.fieldbyname('DA8').asString;
                 cds_nf.FieldByName('ctransp').AsString := cds_svenda.fieldbyname('ctransp').asString;
                 cds_nf.FieldByName('impdestqcont').AsString := cds_svenda.fieldbyname('impdestqcont').asString;
                 cds_nf.FieldByName('originado').AsInteger := cds_svenda.fieldbyname('originado').asInteger;
                 cds_nf.Post;

                 cds_dvenda.First;
                 while not cds_dvenda.Eof do
                   begin
                     dbx_exec.Active := false;
                     dbx_exec.SQL.Clear;
                     dbx_exec.SQL.Add('select count(*) as treg from NFP where coddvenda = '+ inttostr(  cds_dvenda.fieldbyname('codigo').asInteger) );
                     dbx_exec.Active := true;

                     if dbx_exec.FieldByName('treg').AsInteger = 0 then
                        begin

                          tabela := 'NFP';

                          cds_nfp.Append;
                          cds_nfp.FieldByName('coddvenda').asInteger := cds_dvenda.fieldbyname('codigo').asInteger;
                          cds_nfp.FieldByName('codnf').asInteger := cds_nf.FieldByName('codigo').AsInteger;
                          cds_nfp.FieldByName('cpro').asInteger := cds_dvenda.fieldbyname('cpro').asInteger;
                          cds_nfp.FieldByName('qtde').asfloat := cds_dvenda.fieldbyname('qtde').asfloat;
                          cds_nfp.FieldByName('eous').asString := cds_dvenda.fieldbyname('eous').asString;
                          cds_nfp.FieldByName('prcu').asfloat := cds_dvenda.fieldbyname('prcu').asfloat;
                          cds_nfp.FieldByName('pcom').asfloat := cds_dvenda.fieldbyname('pcom').asfloat;
                          cds_nfp.FieldByName('ccli').asInteger := cds_dvenda.fieldbyname('ccli').asInteger;
                          cds_nfp.FieldByName('nserie').asString := cds_dvenda.fieldbyname('nserie').asString;
                          cds_nfp.FieldByName('obs').asString := cds_dvenda.fieldbyname('obs').asString;
                          cds_nfp.FieldByName('baixa').asString := cds_dvenda.fieldbyname('baixa').asString;
                          cds_nfp.FieldByName('referencia').asString := cds_dvenda.fieldbyname('referencia').asString;
                          cds_nfp.FieldByName('data_op').asDateTime := cds_dvenda.fieldbyname('data_op').asDateTime;
                          cds_nfp.FieldByName('comissao').asfloat := cds_dvenda.fieldbyname('comissao').asfloat;
                          cds_nfp.FieldByName('identst').asString := cds_dvenda.fieldbyname('identst').asString;
                          cds_nfp.FieldByName('tipost').asString := cds_dvenda.fieldbyname('tipost').asString;
                          cds_nfp.FieldByName('pdesc').asfloat := cds_dvenda.fieldbyname('pdesc').asfloat;
                          cds_nfp.FieldByName('cupom').asInteger := cds_dvenda.fieldbyname('cupom').asInteger;
                          cds_nfp.FieldByName('descricaost').asString := cds_dvenda.fieldbyname('descricaost').asString;
                          cds_nfp.FieldByName('undst').asString := cds_dvenda.fieldbyname('undst').asString;
                          cds_nfp.FieldByName('clientest').asString := cds_dvenda.fieldbyname('clientest').asString;
                          cds_nfp.FieldByName('vendedorst').asString := cds_dvenda.fieldbyname('vendedorst').asString;
                          cds_nfp.FieldByName('pgst').asString := cds_dvenda.fieldbyname('pgst').asString;
                          cds_nfp.FieldByName('cfun').asInteger := cds_dvenda.fieldbyname('cfun').asInteger;
                          cds_nfp.FieldByName('maxi').asInteger := cds_dvenda.fieldbyname('maxi').asInteger;
                          cds_nfp.FieldByName('vdesc').asfloat := cds_dvenda.fieldbyname('vdesc').asfloat;
                          cds_nfp.FieldByName('icm').asfloat := cds_dvenda.fieldbyname('icm').asfloat;
                          cds_nfp.FieldByName('iss').asfloat := cds_dvenda.fieldbyname('iss').asfloat;
                          cds_nfp.FieldByName('metragem').asfloat := cds_dvenda.fieldbyname('metragem').asfloat;
                          cds_nfp.FieldByName('metragem2').asfloat := cds_dvenda.fieldbyname('metragem2').asfloat;
                          cds_nfp.FieldByName('ehvenda').asString := cds_dvenda.fieldbyname('ehvenda').asString;
                          cds_nfp.FieldByName('tipov').asInteger := cds_dvenda.fieldbyname('tipov').asInteger;
                          cds_nfp.FieldByName('npro').asString := cds_dvenda.fieldbyname('npro').asString;
                          cds_nfp.FieldByName('controle').asInteger := cds_dvenda.fieldbyname('controle').asInteger;
                          cds_nfp.FieldByName('vcom').asfloat := cds_dvenda.fieldbyname('vcom').asfloat;
                          cds_nfp.FieldByName('especificacao').asString := cds_dvenda.fieldbyname('especificacao').asString;
                          cds_nfp.FieldByName('subtotalc').asfloat := cds_dvenda.fieldbyname('subtotalc').asfloat;
                          cds_nfp.FieldByName('actdesc').asString := cds_dvenda.fieldbyname('actdesc').asString;
                          cds_nfp.FieldByName('impnf').asString := cds_dvenda.fieldbyname('impnf').asString;

                          if cds_dvenda.fieldbyname('codcf').asInteger > 0 then
                             cds_nfp.FieldByName('codcf').asInteger := cds_dvenda.fieldbyname('codcf').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codsita').asInteger > 0 then
                             cds_nfp.FieldByName('codsita').asInteger := cds_dvenda.fieldbyname('codsita').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codsitb').asInteger > 0 then
                             cds_nfp.FieldByName('codsitb').asInteger := cds_dvenda.fieldbyname('codsitb').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codipi').asInteger > 0 then
                             cds_nfp.FieldByName('codipi').asInteger := cds_dvenda.fieldbyname('codipi').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codcfop').asInteger > 0 then
                             cds_nfp.FieldByName('codcfop').asInteger := cds_dvenda.fieldbyname('codcfop').asInteger;
                          //endi

                          // 14.04.2010
                          if cds_dvenda.fieldbyname('codpis').asInteger > 0 then
                             cds_nfp.FieldByName('codpis').asInteger := cds_dvenda.fieldbyname('codpis').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codcofins').asInteger > 0 then
                             cds_nfp.FieldByName('codcofins').asInteger := cds_dvenda.fieldbyname('codcofins').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codmodbc').asInteger > 0 then
                             cds_nfp.FieldByName('codmodbc').asInteger := cds_dvenda.fieldbyname('codmodbc').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codirii').asInteger > 0 then
                             cds_nfp.FieldByName('codirii').asInteger := cds_dvenda.fieldbyname('codirii').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codvii').asInteger > 0 then
                             cds_nfp.FieldByName('codvii').asInteger := cds_dvenda.fieldbyname('codvii').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codoimp').asInteger > 0 then
                             cds_nfp.FieldByName('codoimp').asInteger := cds_dvenda.fieldbyname('codoimp').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('codmodbcst').asInteger > 0 then
                             cds_nfp.FieldByName('codmodbcst').asInteger := cds_dvenda.fieldbyname('codmodbcst').asInteger;
                          //endi


                          if cds_dvenda.fieldbyname('codicms').asInteger > 0 then
                             cds_nfp.FieldByName('codicms').asInteger := cds_dvenda.fieldbyname('codicms').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('cuni').asInteger > 0 then
                             cds_nfp.FieldByName('cuni').asInteger := cds_dvenda.fieldbyname('cuni').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('crep').asInteger > 0 then
                             cds_nfp.FieldByName('crep').asInteger := cds_dvenda.fieldbyname('crep').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('cgru').asInteger > 0 then
                             cds_nfp.FieldByName('cgru').asInteger := cds_dvenda.fieldbyname('cgru').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('cmar').asInteger > 0 then
                             cds_nfp.FieldByName('cmar').asInteger := cds_dvenda.fieldbyname('cmar').asInteger;
                          //endi
                          if cds_dvenda.fieldbyname('cven').asInteger > 0 then
                             cds_nfp.FieldByName('cven').asInteger := cds_dvenda.fieldbyname('cven').asInteger;
                          //endi
                          //if ckbdescunit.Checked then
                          //   cds_nfp.FieldByName('prve').asfloat := (cds_dvenda.fieldbyname('prve').asfloat - (  cds_dvenda.fieldbyname('prve').asfloat *  cds_svenda.fieldbyname('pdesc_p').asfloat / 100 )  )
                          //else
                          //   cds_nfp.FieldByName('prve').asfloat := cds_dvenda.fieldbyname('prve').asfloat;
                          //endi
                          //if ckbdescunit.Checked then
                          //   cds_nfp.FieldByName('subtotal').asfloat := (cds_dvenda.fieldbyname('subtotal').asfloat - (  cds_dvenda.fieldbyname('subtotal').asfloat *  cds_svenda.fieldbyname('pdesc_p').asfloat / 100  )  )
                          //else
                          //   cds_nfp.FieldByName('subtotal').asfloat := cds_dvenda.fieldbyname('subtotal').asfloat;
                          //endi

                          cds_nfp.FieldByName('vlripi').asfloat := cds_dvenda.fieldbyname('vlripi').asfloat;
                          cds_nfp.Post;

                        end;
                     //endi


                     cds_dvenda.Next;
                   end;
                 //endi



                 cds_dMobra.First;
                 while not cds_dMobra.Eof do
                   begin
                     dbx_exec.Active := false;
                     dbx_exec.SQL.Clear;
                     dbx_exec.SQL.Add('select count(*) as treg from NFM where coddmobra = '+  inttostr(  cds_dmobra.fieldbyname('codigo').asInteger ) );
                     dbx_exec.Active := true;

                     if dbx_exec.FieldByName('treg').AsInteger = 0 then
                        begin

                          tabela := 'NFM';

                          cds_nfm.Append;
                          cds_nfm.FieldByName('coddmobra').asInteger := cds_dMobra.fieldbyname('codigo').asInteger;
                          cds_nfm.FieldByName('codnf').asInteger := cds_nf.FieldByName('codigo').AsInteger;
                          cds_nfm.FieldByName('cmod').asInteger := cds_dMobra.fieldbyname('cmod').asInteger;
                          cds_nfm.FieldByName('cdesc').asInteger := cds_dMobra.fieldbyname('cdesc').asInteger;
                          cds_nfm.FieldByName('ndesc').asString := cds_dMobra.fieldbyname('ndesc').asString;
                          cds_nfm.FieldByName('qtde').asfloat := cds_dMobra.fieldbyname('qtde').asfloat;
                          cds_nfm.FieldByName('piss').asfloat := cds_dMobra.fieldbyname('piss').asfloat;
                          cds_nfm.FieldByName('viss').asfloat := cds_dMobra.fieldbyname('viss').asfloat;
                          cds_nfm.FieldByName('cfun').asInteger := cds_dMobra.fieldbyname('cfun').asInteger;
                          cds_nfm.FieldByName('pcom').asfloat := cds_dMobra.fieldbyname('pcom').asfloat;
                          cds_nfm.FieldByName('vcom').asfloat := cds_dMobra.fieldbyname('vcom').asfloat;

                          //if ckbdescunit.Checked then
                          //   cds_nfm.FieldByName('valor').asfloat := (cds_dmobra.fieldbyname('valor').asfloat - (  cds_dmobra.fieldbyname('valor').asfloat * cds_svenda.fieldbyname('pdesc_p').asfloat / 100  )  )
                          //else
                          //   cds_nfm.FieldByName('valor').asfloat := cds_dmobra.fieldbyname('valor').asfloat;
                          //endi

                          //if ckbdescunit.Checked then
                          //   cds_nfm.FieldByName('subtotal').asfloat := (cds_dmobra.fieldbyname('subtotal').asfloat - (  cds_dmobra.fieldbyname('subtotal').asfloat * cds_svenda.fieldbyname('pdesc_p').asfloat / 100  )  )
                          //else
                          //   cds_nfm.FieldByName('subtotal').asfloat := cds_dmobra.fieldbyname('subtotal').asfloat;
                          //endi

                          cds_nfm.Post;
                        end;
                     //endi

                     cds_dMobra.Next;
                   end;
                 //endi




            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select codigo from nf where codsvenda = '+  inttostr(  cds_svenda.fieldbyname('codigo').asInteger ) );
            dbx_exec.Active := true;
            codigo :=  dbx_exec.fieldbyname('codigo').asInteger;

            tabela := 'Vencimentos_NF';

            Cds_Vencto_NF.Active := false;
            with  Dbx_Vencto_NF do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('Select * from Vencimentos_NF where codigo = 0');
                  Active := true;
               end;
            //endth
            Cds_Vencto_NF.Active := true;

            Cds_vencto.Active := false;
            with  Dbx_vencto do
                begin
                  Active := false;
                  SQL.Clear;
                  SQL.Add('Select * from Vencimentos where c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger));
                  Active := true;
               end;
            //endth
            Cds_vencto.Active := true;

            cds_vencto.First;
            while not cds_vencto.Eof do
              begin

                cds_vencto_nf.Append;
                cds_vencto_nf.FieldByName('codnf').asInteger := codigo;
                cds_vencto_nf.FieldByName('c_tipo_pgto').asInteger := cds_vencto.fieldbyname('c_tipo_pgto').asInteger;
                cds_vencto_nf.FieldByName('ccli').asInteger := cds_vencto.fieldbyname('ccli').asInteger;
                cds_vencto_nf.FieldByName('csit').asInteger := cds_vencto.fieldbyname('csit').asInteger;
                cds_vencto_nf.FieldByName('c_svenda').asInteger := cds_vencto.fieldbyname('c_svenda').asInteger;
                cds_vencto_nf.FieldByName('Dtl').asString := cds_vencto.fieldbyname('Dtl').asString;
                cds_vencto_nf.FieldByName('Dtv').asString := cds_vencto.fieldbyname('Dtv').asString;
                cds_vencto_nf.FieldByName('Valor').asfloat := cds_vencto.fieldbyname('Valorreal').asfloat;
                cds_vencto_nf.FieldByName('Valliq').asfloat := cds_vencto.fieldbyname('Valliq').asfloat;
                cds_vencto_nf.FieldByName('descricao').asString := cds_vencto.fieldbyname('descricao').asString;
                cds_vencto_nf.FieldByName('doc').asString := cds_vencto.fieldbyname('doc').asString;
                cds_vencto_nf.FieldByName('crec').asInteger := cds_vencto.fieldbyname('crec').asInteger;
                cds_vencto_nf.FieldByName('obs').asString := cds_vencto.fieldbyname('obs').asString;
                cds_vencto_nf.FieldByName('juros').asfloat := cds_vencto.fieldbyname('juros').asfloat;
                cds_vencto_nf.FieldByName('codtipop').asInteger := cds_vencto.fieldbyname('codtipop').asInteger;
                cds_vencto_nf.FieldByName('vparcsemj').asfloat := cds_vencto.fieldbyname('vparcsemj').asfloat;
                cds_vencto_nf.FieldByName('nco').asInteger := cds_vencto.fieldbyname('nco').asInteger;
                cds_vencto_nf.FieldByName('crt').asInteger := cds_vencto.fieldbyname('crt').asInteger;
                cds_vencto_nf.FieldByName('parc').asString := cds_vencto.fieldbyname('parc').asString;
                cds_vencto_nf.FieldByName('ehvenda').asString := cds_vencto.fieldbyname('ehvenda').asString;
                cds_vencto_nf.FieldByName('originado').asInteger := cds_vencto.fieldbyname('originado').asInteger;
                cds_vencto_nf.FieldByName('prazo').asInteger := cds_vencto.fieldbyname('prazo').asInteger;
                cds_vencto_nf.FieldByName('Dte').asString := cds_vencto.fieldbyname('Dte').asString;

                cds_vencto_nf.Post;
                cds_vencto.Next;

              end;
            //endi

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Select * from Vencimentos where c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger));
            dbx_exec.Active := true;

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ));
            dbx_exec.ExecSQL;

            dbx_exec.Active := false;
            dbx_exec.SQL.Clear;
            dbx_exec.SQL.Add('Update Vencimentos set valor = valorreal where c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ));
            dbx_exec.ExecSQL;

            tabela := 'sVenda';
            Cds_sVenda.Edit;
            Cds_sVenda.FieldByName('originado').asString := '2'+Cds_sVenda.fieldbyname('tipoop').asString;
            Cds_sVenda.FieldByName('lancado').asString := 'T';
            Cds_sVenda.FieldByName('datafec').asString := datetostr(date);
            Cds_sVenda.FieldByName('hrfec').asString := copy(timetostr(time),1,5);
            //Cds_sVenda.FieldByName('custopecas').asfloat := strtofloat(tirapontos(scustopecas));
            Cds_sVenda.Post;

          end;
     //endi

   end;
//endi

end;

procedure Tfrmtra.pnlsuperiorExit(Sender: TObject);
begin
if frmdados.cds_svenda.RecordCount > 0 then
   begin
     frmpesqtra.spdalterar.Enabled := true;
     frmpesqtra.spdexcluir.Enabled := true;
   end;
//endi

end;

procedure Tfrmtra.dbgprocedimentosDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;
  f:TextFile; Linha:String;
  bAut :boolean;

begin

  bAut := false;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'COMPLETO') then
     begin

       with dbgprocedimentos.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_procedimentos.FieldByName('COMPLETO').asString = 'T'  then
            Lista_Img.GetBitmap(2, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;




     end;
  //endi

end;


procedure Tfrmtra.dbgprocedimentosDblClick(Sender: TObject);
begin
if (dbgprocedimentos.SelectedField = frmdados.cds_procedimentoscompleto )  then
   begin
     FrmDados.Cds_procedimentos.Edit;
     if FrmDados.Cds_procedimentos.FieldByName('completo').asString = 'F' then
        begin
          frmDados.Cds_procedimentos.FieldByName('completo').asString := 'T';
        end
     else
        begin
          FrmDados.Cds_procedimentos.FieldByName('completo').asString := 'F';
        end;
     //endi
     FrmDados.Cds_procedimentos.post;


   end;
//endi
end;

procedure Tfrmtra.dbgprocedimentosColEnter(Sender: TObject);
begin
if (dbgprocedimentos.SelectedField = frmdados.cds_procedimentoscompleto )  then
    dbgprocedimentos.Options := dbgprocedimentos.Options - [dgEditing]
  else
    dbgprocedimentos.Options := dbgprocedimentos.Options + [dgEditing];
//endi

end;

procedure Tfrmtra.spdnovaClick(Sender: TObject);
//var
//  iccli:integer;
begin
  iccli := frmdados.Cds_sVenda.fieldbyname('ccli').asInteger;


  tabela := 'sVenda';
  frmpesqtra.sOPcao := 'I';

  frmdados.cds_svenda.Append;

  frmdados.Cds_sVenda.FieldByName('ccli').asInteger := iccli;

  pctcontrole.ActivePageIndex := 0;




end;



procedure tfrmtra.gravar;
begin

tabela := 'Clientes';
if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Clientes.Post;
   end;
//endi

tabela := 'sVenda';
frmdados.Cds_sVenda.Edit;
frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_clientes.fieldbyname('codigo').asInteger;

if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_sVenda.Post;
   end;
//endi


edincli.Visible := false;
edinfant.Visible := false;

cbxncli.Visible := true;
cbxnfant.Visible := true;

ediccli.DataField := 'ccli';
ediccli.Enabled := true;

spdnovocliente.Caption := '&NOVO PACIENTE';

end;



procedure Tfrmtra.spdimptraClick(Sender: TObject);
begin

pctconta.TabIndex := 0;

frmimporc := tfrmimporc.Create(self);
frmimporc.relatorio.Preview;
frmimporc.Free;

end;

procedure Tfrmtra.Sinttico1Click(Sender: TObject);
begin
frmimptrat := tfrmimptrat.Create(self);
frmimptrat.relatorio.Preview;
frmimptrat.Free;

end;

procedure Tfrmtra.Completo1Click(Sender: TObject);
begin
frmimptratd := tfrmimptratd.Create(self);
frmimptratd.relatorio.Preview;
frmimptratd.Free;

end;

procedure Tfrmtra.spdalterarparcClick(Sender: TObject);
begin
sOpcaoT := 'A';

btnacao.Caption := '&Salvar';

frmdados.Cds_temp.fieldbyname('cod4').asInteger := frmdados.Cds_dMobra.fieldbyname('cmod').asInteger;
frmdados.Cds_temp.fieldbyname('cod5').asInteger := frmdados.Cds_dMobra.fieldbyname('cdesc').asInteger;
frmdados.Cds_temp.fieldbyname('cod6').asInteger := frmdados.Cds_dMobra.fieldbyname('codmat_restaurar').asInteger;

icodmata := frmdados.Cds_dMobra.fieldbyname('codmat_restaurar').asInteger;

frmdados.Cds_temp.fieldbyname('cod7').asInteger := frmdados.Cds_dMobra.fieldbyname('cfun').asInteger;

ediprveM.Text :=     formatfloat('###,###,##0.00',frmdados.Cds_dMobra.fieldbyname('valor').asfloat);
ediqtdeM.Text :=     formatfloat('0',frmdados.Cds_dMobra.fieldbyname('qtde').asfloat);
edisubtotalM.Text := formatfloat('###,###,##0.00',frmdados.Cds_dMobra.fieldbyname('subtotal').asfloat);

dbgtratamento.Enabled := false;

pnlinstratamento.Visible := true;

if cbxnomemod.Enabled then
   cbxnomemod.SetFocus;
//endi

end;


procedure tfrmtra.inseretra;
var
  sprveM, sQtdeM, sSubtotalM, sSubtotalcM, sEouS, sPrcuM, sData, sPcomM, sVcomM, sCfunM, scmodM,
  sCnproM, sCmatrepM:string;
  icodigo, itotreg:integer;
  svalsobra:string;
begin
  sData := datetostr(date);
  sPrveM := tirapontos(trim(ediprveM.Text));
  sQtdeM := tirapontos(trim(ediqtdeM.Text));
  sSubtotalM := tirapontos(trim(edisubtotalM.Text));

  sCmodM :=    inttostr( frmdados.Cds_temp.fieldbyname('cod4').asInteger );
  sCnproM :=   inttostr( frmdados.Cds_temp.fieldbyname('cod5').asInteger );
  sCmatrepM := inttostr( frmdados.Cds_temp.fieldbyname('cod6').asInteger );
  sCfunM :=    inttostr( frmdados.Cds_temp.fieldbyname('cod7').asInteger );


  with frmdados do
       begin

         dbx_Exec.Active := false;
         dbx_Exec.SQL.Clear;
         dbx_Exec.SQL.Add('Insert into dmobra(');

         if sCnproM <> '' then
            dbx_Exec.SQL.Add('cdesc, ');
         //endi

         if cbxdescricao.Text <> '' then
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

         if sCmatrepM <> '' then
            dbx_Exec.SQL.Add('codmat_restaurar, ');
         //endi

         dbx_Exec.SQL.Add('SELEC, ');

         dbx_Exec.SQL.Add('codsvenda');

         dbx_Exec.SQL.Add(')');

         dbx_Exec.SQL.Add(' values (');

         if sCnproM <> '' then
            dbx_Exec.SQL.Add(sCnproM+',');
         //endi

         if cbxdescricao.Text <> '' then
            dbx_Exec.SQL.Add(quotedstr(cbxdescricao.Text)+',');
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

         if sCmatrepM <> ''then
            dbx_Exec.SQL.Add(sCmatrepM+',');
         //endi

         if ckbtratar.Checked then
            dbx_Exec.SQL.Add( quotedstr('T')+',')
         else
            dbx_Exec.SQL.Add( quotedstr('F')+',');
         //endi

         dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

         dbx_Exec.SQL.Add(')');

         //showmessage(dbx_exec.SQL.Text);

         dbx_Exec.ExecSQL;

         cds_dmobra.Refresh;

         marcadente;

         limparmobra;

         totalizafrmpesqvdprod;

         cds_dmobra.Refresh;

         cds_dmobra.Last;


       end;
  //endth

end;

procedure tfrmtra.editatra;
var
  sprveM, sQtdeM, sSubtotalM, sSubtotalcM, sEouS, sPrcuM, sData, sPcomM, sVcomM, sCfunM, scmodM,
  sCnproM, sCmatrepM, sNproM:string;
  icodigo, itotreg:integer;
  svalsobra:string;
begin
  sPrveM := tirapontos(trim(ediprveM.Text));
  sQtdeM := tirapontos(trim(ediqtdeM.Text));
  sSubtotalM := tirapontos(trim(edisubtotalM.Text));

  sCmodM :=     inttostr( frmdados.Cds_temp.fieldbyname('cod4').asInteger );
  sCnproM :=    inttostr( frmdados.Cds_temp.fieldbyname('cod5').asInteger );
  sCmatrepM :=  inttostr( frmdados.Cds_temp.fieldbyname('cod6').asInteger );
  sCfunM :=     inttostr( frmdados.Cds_temp.fieldbyname('cod7').asInteger );

  if icodmata <> strtoint(sCmatrepM) then
     desmarcadente(icodmata);
  //endi
  
  with frmdados do
    begin
      cds_dmobra.Edit;
      cds_dmobra.FieldByName('cfun').asInteger := strtoint(sCfunM);
      cds_dmobra.FieldByName('codmat_restaurar').asInteger := strtoint(sCmatrepM);
      cds_dmobra.FieldByName('cdesc').asInteger := strtoint(sCnproM);
      cds_dmobra.FieldByName('ndesc').asString := cbxdescricao.Text;
      cds_dmobra.FieldByName('cmod').asInteger := strtoint(sCmodM);
      cds_dmobra.FieldByName('valor').asfloat := strtofloat(sPrveM);
      cds_dmobra.FieldByName('qtde').asfloat := strtofloat(sQtdeM);
      cds_dmobra.FieldByName('Subtotal').asfloat := strtofloat(sSubtotalM);
      cds_dmobra.Post;

      totalizafrmpesqvdprod;
    end;
  //endi

  marcadente;

end;


procedure Tfrmtra.spdexcluirparcClick(Sender: TObject);
var
  icodmat:integer;
begin

    if dbgtratamento.Focused then
        begin
          if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
             begin

              icodmat := frmdados.cds_dmobra.fieldbyname('codmat_restaurar').asInteger;

              desmarcadente(icodmat);

              frmdados.Cds_dmobra.Delete;

              if frmdados.Cds_dmobra.RecordCount = 0 then
                 begin
                   spdalterarparc.Enabled := false;
                   spdexcluirparc.Enabled := false;
                 end;
              //endi


            end;
          //endi

          frmdados.totalizafrmpesqvdprod;

        end
     else
        begin
          Showmessage('Nenhum Item do Orçamento foi Selecionado');
        end;
     //endi

end;

procedure tfrmtra.desmarcadente(icodmatrest:integer);
var
  fvalor:real;
  icodigo:integer;


begin
  with frmdados do
     begin

       Dbx_exec.Active := false;

       Dbx_exec.SQL.Clear;

       //Dbx_exec.SQL.Add('Select * from dmobra where (codmat_restaurar = '+inttostr(cds_dmobra.fieldbyname('codmat_restaurar').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );

       Dbx_exec.SQL.Add('Select * from dmobra where (codmat_restaurar = '+inttostr(icodmatrest)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );

       Dbx_exec.Active := true;
       if Dbx_exec.RecordCount <= 1 then
          begin

            cds_matrep.Active := false;

            dbx_matrep.Active := false;

            dbx_matrep.SQL.Clear;

            //dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_dmobra.fieldbyname('codmat_restaurar').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );

            dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(icodmatrest)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );

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


end;

procedure tfrmtra.marcadente;
begin

  with frmdados do
    begin

      dbx_exec.Active := false;

      cds_matrep.Active := false;
      dbx_matrep.Active := false;
      dbx_matrep.SQL.Clear;
      dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_mat_restaurar.fieldbyname('codigo').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
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

    end;
  //endth

end;


procedure tfrmtra.limparmobra;
begin

  with frmdados do
    begin
      cds_cmobra.Active := false;
      dbx_cmobra.Active := false;
      dbx_cmobra.SQL.Clear;
      dbx_cmobra.SQL.Add('select * from cmobra order by descr');
      dbx_cmobra.Active := true;
      cds_cmobra.Active := true;
    end;
  //endi


end;


procedure Tfrmtra.dbgtratamentoKeyPress(Sender: TObject; var Key: Char);
begin
with frmdados do
  begin
    if key = #13 then
       begin
         if cds_dmobra.State in [dsinsert,dsedit] then
            begin
              cds_dmobra.Post;
            end;
         //endi
       end;
    //endi
  end;
//endi
end;

procedure Tfrmtra.edipdesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmtra.tbsfinanceiroShow(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt,
  stipopgto : String;

  sNomeCli,
  sCodCli,
  sFantasia,
  sEnderecoent,
  sTelefones:string;

  sComplent,
  sBairroent,
  sCidadeent,
  sEstadoent,
  sTelefoneent,
  sContato,
  sVendedor,
  sCepent,

  sid1,
  sid2,

  sdesc1,
  sdesc2,
  sdesc3,
  sdesc4,
  sdesc5,
  sdesc6,
  sdesc7,
  sdesc8,
  sdesc9,
  sdesc10,
  sdesc11,
  sdesc12,
  sdesc13,
  sdesc14,
  sdesc15,
  sdesc16,
  sdesc17,
  sdesc18,
  sdesc19,
  sdesc20,
  sdesc21,
  sdesc22,
  sdesc23,
  sdesc24,
  sdesc25,
  sdesc26,
  sdesc27,
  sdesc28,
  sdesc29,
  sdesc30,
  sdesc31,
  sdesc32,
  sdesc33,
  sdesc34,
  sdesc35,
  sdesc36,
  sdesc37,
  sdesc38:string;





begin
  scoluna := 'n_tipo_pgto';

  iultcod := 0;

  ediparc.Text := '1';

  frmdados.cds_exec.Active := false;
  frmdados.dbx_exec.Active := false;
  frmdados.dbx_exec.SQL.Clear;
  frmdados.dbx_exec.SQL.Add('Select sum(valorreal) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
  frmdados.cds_exec.Active := true;
  frmdados.dbx_exec.Active := true;

  ftvalliq := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

  frmdados.cds_exec.Active := false;
  frmdados.dbx_exec.Active := false;
  frmdados.dbx_exec.SQL.Clear;
  frmdados.dbx_exec.SQL.Add('Select sum(valdesc) as tvalor from livrocaixa where (codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
  frmdados.cds_exec.Active := true;
  frmdados.dbx_exec.Active := true;

  ftvaldesc := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

  SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnnf.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  SqlStMt := 'Select gen_id(Gen_nos,0) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
  if Assigned(ResultSet) then
     lblnos.Caption  := formatfloat('00000',ResultSet.fieldbyname('valor').asInteger+1);
  //endi

  if frmdados.Cds_sVenda.FieldByName('nos').asInteger <> 0 then
     begin
       lblnos.Caption := formatfloat('00000',frmdados.Cds_sVenda.FieldByName('nos').asfloat);
     end;
  //endi

  iccli := frmdados.cds_clientes.fieldbyname('codigo').asInteger;
  sNomeCli := frmdados.cds_clientes.fieldbyname('Nome').asString;
  sCodCli := formatfloat('00000',frmdados.cds_clientes.fieldbyname('Codigo').asfloat);
  sFantasia := frmdados.cds_clientes.fieldbyname('fantasia').asString;
  sTelefones :=  frmdados.cds_clientes.fieldbyname('dddfs').asString+' '+frmdados.cds_clientes.fieldbyname('Telefones').asString;
  sEnderecoent := frmdados.cds_clientes.fieldbyname('endent').asString;

  if frmdados.cds_clientes.fieldbyname('nroent').asString <> '' then
     sEnderecoent := sEnderecoent + 'N.o '+frmdados.cds_clientes.fieldbyname('nroent').asString;
  //endi

  sComplent := frmdados.cds_clientes.fieldbyname('Complent').asString;
  sBairroent := frmdados.cds_clientes.fieldbyname('Bairroent').asString;
  sCidadeent := frmdados.cds_clientes.fieldbyname('Cidadeent').asString;
  sEstadoent := frmdados.cds_clientes.fieldbyname('estadoent').asString;
  sTelefoneent := frmdados.cds_clientes.fieldbyname('dddeent').asString+' '+frmdados.cds_clientes.fieldbyname('telefoneent').asString;
  sContato := frmdados.cds_clientes.fieldbyname('contato').asString;
  sVendedor := frmdados.cds_Funcionarios.fieldbyname('nome').asString;
  sCepent := frmdados.cds_clientes.fieldbyname('cepent').asString;

  sid1 := frmdados.Cds_sVenda.fieldbyname('id1').asString;
  sid2 := frmdados.Cds_sVenda.fieldbyname('id2').asString;

  sdesc1 := frmdados.Cds_sVenda.fieldbyname('desc1').asString;
  sdesc2 := frmdados.Cds_sVenda.fieldbyname('desc2').asString;
  sdesc3 := frmdados.Cds_sVenda.fieldbyname('desc3').asString;
  sdesc4 := frmdados.Cds_sVenda.fieldbyname('desc4').asString;
  sdesc5 := frmdados.Cds_sVenda.fieldbyname('desc5').asString;
  sdesc6 := frmdados.Cds_sVenda.fieldbyname('desc6').asString;
  sdesc7 := frmdados.Cds_sVenda.fieldbyname('desc7').asString;
  sdesc8 := frmdados.Cds_sVenda.fieldbyname('desc8').asString;
  sdesc9 := frmdados.Cds_sVenda.fieldbyname('desc9').asString;
  sdesc10 := frmdados.Cds_sVenda.fieldbyname('desc10').asString;
  sdesc11 := frmdados.Cds_sVenda.fieldbyname('desc11').asString;
  sdesc12 := frmdados.Cds_sVenda.fieldbyname('desc12').asString;
  sdesc13 := frmdados.Cds_sVenda.fieldbyname('desc13').asString;
  sdesc14 := frmdados.Cds_sVenda.fieldbyname('desc14').asString;
  sdesc15 := frmdados.Cds_sVenda.fieldbyname('desc15').asString;
  sdesc16 := frmdados.Cds_sVenda.fieldbyname('desc16').asString;
  sdesc17 := frmdados.Cds_sVenda.fieldbyname('desc17').asString;
  sdesc18 := frmdados.Cds_sVenda.fieldbyname('desc18').asString;
  sdesc19 := frmdados.Cds_sVenda.fieldbyname('desc19').asString;
  sdesc20 := frmdados.Cds_sVenda.fieldbyname('desc20').asString;
  sdesc21 := frmdados.Cds_sVenda.fieldbyname('desc21').asString;
  sdesc22 := frmdados.Cds_sVenda.fieldbyname('desc22').asString;
  sdesc23 := frmdados.Cds_sVenda.fieldbyname('desc23').asString;
  sdesc24 := frmdados.Cds_sVenda.fieldbyname('desc24').asString;
  sdesc25 := frmdados.Cds_sVenda.fieldbyname('desc25').asString;
  sdesc26 := frmdados.Cds_sVenda.fieldbyname('desc26').asString;
  sdesc27 := frmdados.Cds_sVenda.fieldbyname('desc27').asString;
  sdesc28 := frmdados.Cds_sVenda.fieldbyname('desc28').asString;
  sdesc29 := frmdados.Cds_sVenda.fieldbyname('desc29').asString;
  sdesc30 := frmdados.Cds_sVenda.fieldbyname('desc30').asString;
  sdesc31 := frmdados.Cds_sVenda.fieldbyname('desc31').asString;
  sdesc32 := frmdados.Cds_sVenda.fieldbyname('desc32').asString;
  sdesc33 := frmdados.Cds_sVenda.fieldbyname('desc33').asString;
  sdesc34 := frmdados.Cds_sVenda.fieldbyname('desc34').asString;
  sdesc35 := frmdados.Cds_sVenda.fieldbyname('desc35').asString;
  sdesc36 := frmdados.Cds_sVenda.fieldbyname('desc36').asString;
  sdesc37 := frmdados.Cds_sVenda.fieldbyname('desc37').asString;
  sdesc38 := frmdados.Cds_sVenda.fieldbyname('desc38').asString;

  lbltotGlan.Caption :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(frmtra.lbltotalt.Caption)) - ftvaldesc -  ftvalliq  );

  mmoobs.Enabled := false;

  limpart;

  with frmdados do
     begin

       cds_livrocaixa.Active := false;
       dbx_livrocaixa.Active := false;
       dbx_livrocaixa.SQL.Clear;
       dbx_livrocaixa.SQL.Add('Select * from livrocaixa where codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
       dbx_livrocaixa.Active := true;
       cds_livrocaixa.Active := true;

       //Cds_livrocaixa.Active := false;
       //with  Dbx_livrocaixa do
       //   begin
       //     Active := false;
       //     SQL.Clear;
       //     SQL.Add('Select * from livrocaixa where codigo = 0');
       //     Active := true;
       //   end;
       //endth
       //Cds_livrocaixa.Active := true;

       Cds_NF.Active := false;
       with  Dbx_NF do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from NF where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_NF.Active := true;

       Cds_NFP.Active := false;
       with  Dbx_NFP do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from NFP where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_NFP.Active := true;

       Cds_NFM.Active := false;
       with  Dbx_NFM do
          begin
            Active := false;
            SQL.Clear;
            SQL.Add('Select * from NFM where codigo = 0');
            Active := true;
          end;
       //endth
       Cds_NFM.Active := true;

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

       stipopgto := '';
       while not Cds_Tipo_Pgto.Eof do
         begin
           stipopgto := stipopgto +' '+ Cds_Tipo_Pgto.fieldbyname('codigo').asString+') '+Cds_Tipo_Pgto.fieldbyname('Descricao').asString;

           Cds_tipo_Pgto.Next;
         end;
       //endi

       cds_vencto.Active := false;
       cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
       cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');

       if cds_sVenda.fieldbyname('datacad').asString <> '' then
          cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
       //endi

       with dbx_vencto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Vencimentos where (c_svenda = 0)');
           Active := true;
         end;
       //endi
       cds_vencto.Active := true;

       cds_Mat_Rest_ID.Active := false;
       dbx_Mat_Rest_ID.Active := false;
       dbx_Mat_Rest_ID.SQL.Clear;
       dbx_Mat_Rest_ID.SQL.Add('select m.id, m.codigo from Mat_restaurar m inner join matrep p on m.codigo = p.codmat_restaurar where ( p.codsvenda = '+ inttostr(cds_svenda.fieldbyname('codigo').asInteger) +') and (p.selec = '+quotedstr('T')+') order by m.codigo');
       dbx_Mat_Rest_ID.Active := true;
       cds_Mat_Rest_ID.Active := true;


    end;
  //endi



  rchtipopgto.Lines.Clear;
  rchtipopgto.Lines.Add('Forma Pgto: '+stipopgto);

  spdesc_PA := '0.00';
  sValdesc_PA := '0.00';
  sliquido_PA := '0.00';

  //ediliquido.Text :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(lbltotglan.Caption)) - ftvaldesc - ftvalliq  );
  //dbgvencto.DataSource := frmDados.Dts_vencto;

  ediliquido.Text :=  lbltotglan.Caption;


  ftotg := strtofloat(tirapontos(lbltotglan.Caption));


  if ftotg <= 0 then
     begin
       edipdesc.Enabled := false;
       edivaldesc.Enabled := false;
       ediliquido.Enabled := false;
       ediparc.Enabled := false;
       spdlancar.Enabled := false;
     end
  else
     begin
       edipdesc.Enabled := true;
       edivaldesc.Enabled := true;
       ediliquido.Enabled := true;
       ediparc.Enabled := true;
       spdlancar.Enabled := true;
     end;
  //endi

  frmdados.cds_svenda.Edit;
  frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat := 0;
  frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat := 0;
  //frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 1;

  tabela := 'Vencimentos';

  //showmessage(frmdados.dbx_vencto.Text);

  frmdados.cds_vencto.EnableControls;

  dbgvencto.DataSource := frmdados.dts_Vencto;

  pctconta.TabIndex := 0;

  ediliquido.Text :=  lbltotglan.Caption;

end;

procedure Tfrmtra.criaparc;
var x, iparc, iaprazo:integer;
    fvlrparc:currency;
    fvalor:currency;
    sdata:string;
    fsobra, ftotal:real;
    icodlivrocaixa:integer;


begin
try

x := 0;
iparc := strtoint(ediparc.Text);
sdata := datetostr(date);


if strtofloat(ediparc.Text) > 0 then
   begin
     fvlrparc :=   strtofloat(tirapontos(ediliquido.Text)) / strtofloat(tirapontos(ediparc.Text));

     sMsg := 'Apagando Dados';

     //tabela := 'livrocaixa';
     //frmdados.Cds_livrocaixa.Append;
     //frmdados.Cds_livrocaixa.FieldByName('codsvenda').asinteger := frmdados.Cds_sVenda.FieldByName('codigo').asinteger;
     //frmdados.Cds_livrocaixa.FieldByName('pdesc').asfloat := strtofloat(tirapontos(edipdesc.Text));
     //frmdados.Cds_livrocaixa.FieldByName('valdesc').asfloat := strtofloat(tirapontos(edivaldesc.Text));
     //frmdados.Cds_livrocaixa.FieldByName('liquido').asfloat := strtofloat(tirapontos(ediliquido.Text));
     //frmdados.Cds_livrocaixa.FieldByName('total').asfloat := strtofloat(tirapontos(lbltotglan.Caption));
     //frmdados.Cds_livrocaixa.FieldByName('ccli').asinteger := iccli;
     //frmdados.cds_livrocaixa.Post;

     tabela := 'Vencimentos';

     frmdados.Cds_Vencto.Active := false;
     frmdados.Cds_Venctocodlivrocaixa.DefaultExpression := inttostr(frmdados.Cds_livrocaixa.fieldbyname('codigo').asInteger);
     frmdados.Dbx_Vencto.Active := false;
     frmdados.Dbx_Vencto.SQL.Clear;
     frmdados.Dbx_Vencto.SQL.Add('Select * from vencimentos where codigo = 0');
     frmdados.Cds_Vencto.Active := true;
     frmdados.Cds_Vencto.Active := true;


     ftotal := 0;

     sMsg := 'Criando parcelas em branco';
     for x := 1 to iparc do
         begin
           frmdados.Cds_vencto.Append;
           if (frmdados.Cds_Clientes.FieldByName('prazo').asInteger > 0) and (x = 1) then
              begin
                frmdados.Cds_vencto.FieldByName('prazo').asInteger := frmdados.Cds_Clientes.FieldByName('prazo').asInteger;
                frmdados.Cds_vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_Clientes.FieldByName('prazo').asInteger);
              end
           else
              begin
                if frmdados.Cds_indice.FieldByName('prazo').asInteger > 0 then
                   begin
                     frmdados.Cds_vencto.FieldByName('prazo').asInteger := frmdados.Cds_indice.FieldByName('prazo').asInteger + iaprazo;
                     frmdados.Cds_vencto.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_vencto.FieldByName('prazo').asInteger);
                   end;
                //endi
             end;
           //endi

           frmdados.Cds_vencto.FieldByName('valorreal').asfloat := fvlrparc;
           frmdados.Cds_vencto.FieldByName('originado').asString := '2'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
           frmdados.Cds_vencto.FieldByName('ccli').asInteger := frmdados.Cds_sVenda.fieldbyname('ccli').asInteger;
           frmdados.Cds_vencto.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;
           frmdados.Cds_vencto.FieldByName('csit').asInteger := frmdados.Cds_Indice.fieldbyname('csitr').asInteger;
           //frmdados.Cds_vencto.FieldByName('codlivrocaixa').asInteger := iultcod;

           frmdados.Cds_vencto.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',frmdados.cds_svenda.fieldbyname('parc_p').asfloat);
           frmdados.Cds_vencto.FieldByName('doc').asstring := lblnos.Caption+'-'+chr(64+x);
           frmdados.Cds_vencto.FieldByName('parte').asstring := chr(64+x);
           frmdados.Cds_vencto.FieldByName('ehvenda').asstring := 'F';


           ftotal := ftotal + frmdados.Cds_vencto.FieldByName('valorreal').asfloat;
           iaprazo :=  frmdados.Cds_vencto.FieldByName('prazo').asInteger;

           frmdados.Cds_vencto.Post;
        end;
     //endw

     fsobra := strtofloat(tirapontos(ediliquido.Text)) - ftotal;
     if fsobra > 0 then
        begin
          frmdados.Cds_vencto.Edit;
          frmdados.Cds_vencto.FieldByName('valorreal').asfloat := frmdados.Cds_vencto.FieldByName('valorreal').asfloat + fsobra;
          frmdados.Cds_vencto.Post;
        end;
     //end

     frmdados.Cds_Vencto.Active := false;
     frmdados.cds_venctoc_svenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
     frmdados.cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Ordem de Serviço');
     if frmdados.cds_sVenda.fieldbyname('datacad').asString <> '' then
          frmdados.cds_venctodte.DefaultExpression := quotedstr(frmdados.cds_sVenda.fieldbyname('datacad').asString);
     //endi
     frmdados.Dbx_Vencto.Active := false;
     frmdados.Dbx_Vencto.SQL.Clear;
     //frmdados.Dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger  ) +')');
     frmdados.Dbx_vencto.SQL.Add('Select * from vencimentos where codlivrocaixa = '+ inttostr( frmdados.cds_livrocaixa.fieldbyname('codigo').asInteger ) );
     frmdados.Cds_Vencto.Active := true;
     frmdados.Cds_Vencto.Active := true;

     sMsg := 'Voltando para Inicio';
     frmdados.Cds_vencto.First;

     frmdados.cds_exec.Active := false;
     frmdados.dbx_exec.Active := false;
     frmdados.dbx_exec.SQL.Clear;
     frmdados.dbx_exec.SQL.Add('Select sum(valorreal) as tvalor from vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
     frmdados.cds_exec.Active := true;
     frmdados.dbx_exec.Active := true;

     ftvalliq := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

     frmdados.cds_exec.Active := false;
     frmdados.dbx_exec.Active := false;
     frmdados.dbx_exec.SQL.Clear;
     frmdados.dbx_exec.SQL.Add('Select sum(valdesc) as tvalor from livrocaixa where (codsvenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger ) +')' );
     frmdados.cds_exec.Active := true;
     frmdados.dbx_exec.Active := true;

     ftvaldesc := frmdados.cds_exec.fieldbyname('tvalor').asfloat;

     lbltotGlan.Caption :=  formatfloat('###,###,##0.00', strtofloat(tirapontos(frmtra.lbltotalt.Caption)) - ftvaldesc -  ftvalliq  );

     ediparc.Enabled := false;


     ediparc.Text := '1';

     if dbgvencto.Enabled then
        dbgvencto.SetFocus;
     //endi

   end
else
   begin
     if ediparc.Enabled then
        ediparc.SetFocus;
     //endi
   end;
//endi



except
  sMsg := 'Excessão quando criou parcela em branco';
end;

end;


procedure Tfrmtra.apagaparc;
begin
  with frmdados do
    begin
      cds_vencto.Active := false;
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_sVenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
      dbx_vencto.Active := true;
      cds_vencto.Active := true;
    end;
  //endth
end;


procedure Tfrmtra.dbgvenctoColEnter(Sender: TObject);
begin
  sColuna := dbgvencto.SelectedField.FieldName;

end;

procedure Tfrmtra.dbgvenctoEnter(Sender: TObject);
begin
  tabela := 'Vencimentos';

end;

procedure Tfrmtra.dbgvenctoExit(Sender: TObject);
begin

if frmdados.Cds_vencto.State in [dsinsert, dsedit] then
   frmdados.Cds_vencto.Post;
//endi

tabela := 'sVenda';

end;

procedure Tfrmtra.dbgvenctoKeyPress(Sender: TObject; var Key: Char);
begin
if ftotg <= 0 then
   begin
     key := #0;
     exit;
   end;
//endi

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

procedure Tfrmtra.limparT;
begin
  if (frmdados.Cds_sVenda.State <> dsinsert) or (frmdados.Cds_sVenda.State <> dsedit) then
     frmdados.Cds_sVenda.Edit;
  //endi

  if frmdados.Cds_sVenda.FieldByName('lancado').AsString <> 'T' then
     begin
       if frmdados.Cds_sVenda.FieldByName('liquido_p').AsFloat = 0 then
          frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat := strtofloat(tirapontos(lbltotglan.Caption)) ;
       //endi
       if frmdados.Cds_sVenda.FieldByName('pdesc_p').AsFloat = 0 then
          frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat := 0;
       //endi
       if frmdados.Cds_sVenda.FieldByName('valdesc_p').AsFloat = 0 then
          frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat := 0;
       //endi
       if frmdados.Cds_sVenda.FieldByName('din_p').AsFloat = 0 then
          frmdados.Cds_sVenda.FieldByName('din_p').asfloat := 0;
       //endi
       if frmdados.Cds_sVenda.FieldByName('parc_p').AsFloat = 0 then
          frmdados.Cds_sVenda.FieldByName('parc_p').asfloat := 0;
       //endi

     end;
  //endi



end;

procedure Tfrmtra.limparP;
begin
//
end;




procedure Tfrmtra.mmoobsEnter(Sender: TObject);
begin
tabela := 'Clientes';
end;

procedure Tfrmtra.mmoobsExit(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure Tfrmtra.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
If not( key in['0'..'9',#8] ) then
  begin
    beep;
    key:=#0;
  end;
//endi

end;

procedure Tfrmtra.edipdesc1Enter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure Tfrmtra.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
If not( key in['0'..'9',#8] ) then
  begin
    beep;
    key:=#0;
  end;
//endi

end;

procedure Tfrmtra.tbslancamentoShow(Sender: TObject);
begin
with frmdados do
   begin
     cds_livrocaixa.Active := false;
     dbx_livrocaixa.Active := false;
     dbx_livrocaixa.SQL.Clear;
     dbx_livrocaixa.SQL.Add('Select * from livrocaixa where codsvenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );
     dbx_livrocaixa.Active := true;
     cds_livrocaixa.Active := true;
   end;
//endth


end;

procedure Tfrmtra.FormCreate(Sender: TObject);
begin
lbltotalt.Caption := '0';
lbltotglan.Caption := '0';

pctcontrole.TabIndex := 0;
pctconta.TabIndex := 0;


end;

procedure Tfrmtra.ediliquido1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmtra.tbsfechamentoShow(Sender: TObject);
begin

tabela := 'Vencimentos';

ftotg := strtofloat(tirapontos(lbltotglan.Caption));
lbltotalf.Caption := formatfloat('###,###,##0.00',ftotg);
edipdesc.text := '0,00';
edivaldesc.text := '0,00';
ediliquido.text := formatfloat('###,###,##0.00',ftotg);

with frmdados do
  begin

     cds_vencto.Active := false;
     cds_venctocodlivrocaixa.DefaultExpression := inttostr(cds_livrocaixa.fieldbyname('codigo').asInteger);
     dbx_vencto.Active := false;
     dbx_vencto.SQL.Clear;
     dbx_vencto.SQL.Add('Select * from Vencimentos where (codlivrocaixa = 0)');
     dbx_vencto.Active := true;
     cds_vencto.Active := true;



  end;
//endth

frmdados.cds_vencto.EnableControls;

dbgvencto.DataSource := frmdados.dts_Vencto;

if ftotg <= 0 then
   begin
     edipdesc.Enabled := false;
     edivaldesc.Enabled := false;
     ediliquido.Enabled := false;
     ediparc.Enabled := false;
     spdlancar.Enabled := false;
     btnlancarp.Enabled := false;
     //btnestornar.Enabled := false;
   end
else
   begin
     edipdesc.Enabled := true;
     edivaldesc.Enabled := true;
     ediliquido.Enabled := true;
     ediparc.Enabled := true;
     spdlancar.Enabled := true;
     btnlancarp.Enabled := true;
     //btnestornar.Enabled := true;
   end;
//endi

tabela := 'sVenda';

frmdados.cds_svenda.Edit;
frmdados.Cds_sVenda.FieldByName('pdesc_p').asfloat := 0;
frmdados.Cds_sVenda.FieldByName('valdesc_p').asfloat := 0;
frmdados.Cds_sVenda.FieldByName('liquido_p').asfloat := ftotg;
//frmdados.Cds_sVenda.FieldByName('parc_p').asInteger := 1;

tabela := 'Vencimentos';

frmdados.cds_vencto.EnableControls;

dbgvencto.DataSource := frmdados.dts_Vencto;


if edipdesc.Enabled then
   begin
     //limpart;
     edipdesc.SetFocus;
   end;
//endi


end;

procedure tfrmtra.atualizavencto;
begin

     with frmdados do
       begin

         if iultcod  > 0 then
            begin

              dbx_exec.Active := false;
              dbx_exec.SQL.Clear;
              dbx_exec.SQL.Add('Update Vencimentos set valor = valorreal where codlivrocaixa = '+ inttostr( iultcod ));
              dbx_exec.ExecSQL;

              iultcod := 0;

            end;
         //endi

       end;
     //endth


end;

procedure Tfrmtra.btnestornarClick(Sender: TObject);
begin
  if application.MessageBox('Deseja Realmente Estornar Lançamento?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.Cds_livrocaixa.Delete;
     end;
  //endi

end;

procedure Tfrmtra.btnlancarpClick(Sender: TObject);
begin

  ftot :=  strtofloat(tirapontos(lbltotGlan.Caption));

  if ftot = 0 then
     begin
       exit;
     end;
  //endi



  tabela := 'livrocaixa';
  frmdados.Cds_livrocaixa.Append;
  frmdados.Cds_livrocaixa.FieldByName('codsvenda').asinteger := frmdados.Cds_sVenda.FieldByName('codigo').asinteger;
  frmdados.Cds_livrocaixa.FieldByName('pdesc').asfloat := strtofloat(tirapontos(edipdesc.Text));
  frmdados.Cds_livrocaixa.FieldByName('valdesc').asfloat := strtofloat(tirapontos(edivaldesc.Text));
  frmdados.Cds_livrocaixa.FieldByName('liquido').asfloat := strtofloat(tirapontos(ediliquido.Text));
  frmdados.Cds_livrocaixa.FieldByName('total').asfloat := strtofloat(tirapontos(lbltotglan.Caption));
  frmdados.Cds_livrocaixa.FieldByName('ccli').asinteger := iccli;
  frmdados.cds_livrocaixa.Post;

  iultcod :=  frmdados.Cds_livrocaixa.FieldByName('codigo').asinteger;

  criaparc;

  edipdesc.Enabled := false;
  edivaldesc.Enabled := false;
  ediliquido.Enabled := false;
  ediparc.Enabled := false;
  spdlancar.Enabled := false;
  btnlancarp.Enabled := false;

end;

procedure Tfrmtra.btnbaixarClick(Sender: TObject);
var
   sdescricao, sdte, sdoc, snumnf, sparte, sparc, sdtv, sdtl, sdtb, svalor, svalliq, sehvenda:string;
   iccli, iccla, inped, inos, ictipopgto, icodtipop, ic_svenda, icsit, iprazo:integer;
   fvalor, fvalliq:real;
   btodosdentes:boolean;
   ibaixapgtodentes:integer;


begin

     fvalorrec := strtofloat(tirapontos(edivalliq.Text));
     iccli := frmdados.Cds_Vencto.fieldbyname('ccli').asInteger;

     if (frmdados.Cds_Vencto.State in [dsinsert, dsedit])  then
        begin

          btodosdentes := ckbtodos.Checked;

          ibaixapgtodentes := 0;
          if cbxbaixapgtodentes.Text <> '' then
             ibaixapgtodentes := frmdados.cds_mat_rest_id.fieldbyname('codigo').asInteger;
          //endi

          if ( strtofloat( formatfloat('0.00', frmdados.Cds_Vencto.FieldByName('valor').asfloat) )  >   strtofloat(  formatfloat('0.00', strtofloat(tirapontos(edivalliq.Text)) ) )  )
             and (strtoint(edicsit.Text) = 2)
             and (strtofloat(tirapontos(edivalliq.Text)) > 0 )
             and ((edidtl.Text <> '') or (edidtl.Text <> '  /  /    ') )
             and ((edidtb.Text <> '') or (edidtb.Text <> '  /  /    ') )
          then
             begin
               sdte       := frmdados.Cds_Vencto.FieldByName('dte').asString;
               sdoc       := frmdados.Cds_Vencto.FieldByName('doc').asString;
               snumnf     := frmdados.Cds_Vencto.FieldByName('numnf').asString;
               sparte     := frmdados.Cds_Vencto.FieldByName('parte').asString;
               sparc      := ediparc.Text;
               sdtv       := frmdados.Cds_Vencto.FieldByName('dtv').asString;
               iccli      := strtoint(ediccli.Text);
               iccla      := frmdados.Cds_Vencto.fieldbyname('ccla').asInteger;
               inped      := frmdados.Cds_Vencto.fieldbyname('nped').asInteger;
               inos       := frmdados.Cds_Vencto.fieldbyname('nos').asInteger;
               ictipopgto := frmdados.Cds_Vencto.fieldbyname('c_tipo_pgto').asInteger;
               icodtipop  := frmdados.Cds_Vencto.fieldbyname('codtipop').asInteger;
               ic_svenda  := frmdados.Cds_Vencto.fieldbyname('c_svenda').asInteger;
               iprazo     := frmdados.Cds_Vencto.fieldbyname('prazo').asInteger;
               sehvenda     := frmdados.Cds_Vencto.fieldbyname('ehvenda').asString;

               fvalor     := frmdados.Cds_Vencto.FieldByName('valor').asfloat;
               fvalliq    := strtofloat(tirapontos(edivalliq.Text));
               svalor     := frmdados.Cds_Vencto.FieldByName('valor').asString;
               svalliq    := tirapontos(edivalliq.Text);

               sdtl       := edidtl.Text;
               sdtb       := edidtb.Text;
               sdescricao := frmdados.Cds_Vencto.FieldByName('descricao').asString;
               icsit :=  strtoint( edicsit.Text );
               //showmessage('1');

               //if sOPcao = 'A' then
               //   begin
               //     frmdados.Cds_Vencto.CancelUpdates;
               //   end;
               //endi

               //showmessage('2');

               //frmdados.Cds_Vencto.Edit;
               frmdados.Cds_Vencto.FieldByName('Valor').asfloat := frmdados.Cds_Vencto.FieldByName('Valor').asfloat - strtofloat(tirapontos(svalliq));
               frmdados.Cds_Vencto.FieldByName('Valliq').asfloat := 0;
               frmdados.Cds_Vencto.FieldByName('dtl').asString := '';
               frmdados.Cds_Vencto.FieldByName('dtb').asString := '';
               frmdados.Cds_Vencto.FieldByName('codtipop').asfloat := 0;
               frmdados.Cds_Vencto.FieldByName('csit').asInteger := 1;

               svalor :=  svalliq;

               //showmessage('3');

               with frmdados do
                 begin
                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Insert into Vencimentos(');

                   // 1
                   if (sdte <> '') or (sdte <> '  /  /    ') then
                      dbx_Exec.SQL.Add('dte, ');
                   //endi

                   // 2
                   if sdoc <> '' then
                      dbx_Exec.SQL.Add('doc, ');
                   //endi

                   // 3
                   if snumnf <> '' then
                      dbx_Exec.SQL.Add('numnf, ');
                   //endi

                   // 4
                   if sparte <> '' then
                      dbx_Exec.SQL.Add('parte, ');
                   //endi

                   // 5
                   if sParc <> '' then
                      dbx_Exec.SQL.Add('parc, ');
                   //endi

                   // 6
                   if sdtv <> '' then
                      dbx_Exec.SQL.Add('dtv, ');
                   //endi

                   // 7
                   if iccli > 0 then
                      dbx_Exec.SQL.Add('ccli, ');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add('ccla, ');
                   //endi

                   // 9
                   if inped > 0 then
                      dbx_Exec.SQL.Add('nped, ');
                   //endi

                   // 10
                   if inos > 0 then
                      dbx_Exec.SQL.Add('nos, ');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add('c_tipo_pgto, ');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add('codtipop, ');
                   //endi

                   // 13
                   if ic_svenda > 0 then
                      dbx_Exec.SQL.Add('c_svenda, ');
                   //endi

                   // 14
                   if svalor <> '' then
                      dbx_Exec.SQL.Add('valor, ');
                   //endi

                   // 15
                   if svalliq <> '' then
                      dbx_Exec.SQL.Add('valliq, ');
                   //endi

                   // 16
                   dbx_Exec.SQL.Add('dtl, ');

                   // 17
                   dbx_Exec.SQL.Add('dtb, ');

                   // 18
                   dbx_Exec.SQL.Add('csit, ');

                   // 19
                   if iprazo > 0 then
                      dbx_Exec.SQL.Add('prazo, ');
                   //endi

                   // 20
                   if sehvenda <> '' then
                      dbx_Exec.SQL.Add('ehvenda, ');
                   //endi

                   // 21
                   dbx_Exec.SQL.Add('baixartodos,');

                   // 22
                   if ibaixapgtodentes > 0 then
                      dbx_Exec.SQL.Add('codmat_restaurar,');
                   //endi

                   // fechamento
                   dbx_Exec.SQL.Add('Descricao');

                   dbx_Exec.SQL.Add(')');

                   dbx_Exec.SQL.Add(' values (');

                   // 1
                   if (sdte <> '') or (sdte <> '  /  /    ') then
                      begin
                        sdte := bar_is_point(sdte);
                        dbx_Exec.SQL.Add( quotedstr(sdte)+',');
                      end;
                   //endi

                   // 2
                   if sdoc <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sdoc)+',');
                   //endi

                   // 3
                   if snumnf <> '' then
                      dbx_Exec.SQL.Add(quotedstr(snumnf)+',');
                   //endi

                   // 4
                   if sparte <> ''then
                       dbx_Exec.SQL.Add(Quotedstr(sparte)+',');
                   //endi

                   // 5
                   if sparc <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sparc)+',');
                   //endi

                   // 6
                   if (sDTV <> '') or (sDtv <> '  /  /    ') then
                      begin
                        sdtv := bar_is_point(sdtv);
                        dbx_Exec.SQL.Add(quotedstr(sdtv)+',');
                      end;
                   //endi

                   // 7
                   if iccli > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccli)+',');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccla)+',');
                   //endi

                   // 9
                   if inped > 0 then
                      dbx_Exec.SQL.Add(inttostr(inped)+',');
                   //endi

                   // 10
                   if inos > 0 then
                      dbx_Exec.SQL.Add(inttostr(inos)+',');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add(inttostr(ictipopgto)+',');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add(inttostr(icodtipop)+',');
                   //endi

                   // 13
                   if ic_svenda > 0 then
                      dbx_Exec.SQL.Add(inttostr(ic_svenda)+',');
                   //endi

                   // 14
                   if svalor <> '' then
                      begin
                        dbx_Exec.SQL.Add(decimal_is_point(svalor)+',');
                      end;
                   //endi

                   // 15
                   if svalliq <> '' then
                      dbx_Exec.SQL.Add(decimal_is_point(svalliq)+',');
                   //endi

                   // 16
                   sdtl := bar_is_point(sdtl);
                   dbx_Exec.SQL.Add(quotedstr(sdtl)+',');

                   // 17
                   sdtb := bar_is_point(sdtb);
                   dbx_Exec.SQL.Add(quotedstr(sdtb)+',');

                   // 18
                   dbx_Exec.SQL.Add(inttostr(icsit)+',');

                   // 19
                   if iprazo > 0 then
                      dbx_Exec.SQL.Add(inttostr(iprazo)+',');
                   //endi

                   // 20
                   if sehvenda <> '' then
                      begin
                        dbx_Exec.SQL.Add(quotedstr(sehvenda)+',');
                      end;
                   //endi

                   // 21
                   if btodosdentes then
                      dbx_Exec.SQL.Add(quotedstr('T')+',')
                   else
                      dbx_Exec.SQL.Add(quotedstr('F')+',');
                   //endi

                   // 22
                   if ibaixapgtodentes > 0 then
                      dbx_Exec.SQL.Add(inttostr(ibaixapgtodentes)+',');
                   //endi

                   // fechamento
                   dbx_Exec.SQL.Add(Quotedstr(sdescricao));

                   dbx_Exec.SQL.Add(')');

                   //showmessage(dbx_exec.SQL.Text);

                   dbx_Exec.ExecSQL;


                 end;
               //endi


             end
          else
             begin
               edidtl.Enabled := false;
               edidtb.Enabled := false;
               edivalliq.Enabled := false;
               cbxntipoop.Enabled := false;
               btnbaixar.Enabled := false;
               edicsit.Enabled := false;
               cbxnsit.Enabled := false;
               baixardentespagos;
             end;
          //endi

          if btodosdentes then
             frmdados.Cds_Vencto.FieldByName('baixartodos').asString := 'T'
          else
             frmdados.Cds_Vencto.FieldByName('baixartodos').asString := 'F';
          //endi
          frmdados.Cds_Vencto.FieldByName('codmat_restaurar').asInteger := ibaixapgtodentes;

          frmdados.Cds_Vencto.Post;

        end;
     //endi

     //if application.MessageBox('Deseja Imprimir Recibo?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     //   begin

     //   end;
     //endi


end;

procedure Tfrmtra.tbsbaixaShow(Sender: TObject);
begin

atualizavencto;

tabela := 'Vencimentos';

if frmdados.cds_vencto.State in [dsinsert,dsedit] then
   begin
     frmdados.cds_vencto.Post;
   end;
//endi

habilitad;

frmdados.habdesabilitaedi;

frmdados.cds_vencto.Refresh;


end;

procedure Tfrmtra.tbsobsorcShow(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure Tfrmtra.TabSheet1Show(Sender: TObject);
begin
atualizavencto;

tabela := 'Vencimentos';

if frmdados.cds_vencto.State in [dsinsert,dsedit] then
   begin
     frmdados.cds_vencto.Post;
   end;
//endi

frmdados.habdesabilitaedi;

end;

procedure Tfrmtra.cbxoutinf1Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxoutinf1.Text = '' then
   exit;
//endi   

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from outinfcli where (id=1) and descricao = '+quotedstr(cbxoutinf1.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'outinfcli';
         cds_outinfcli.Append;
         cds_outinfcli.FieldByName('id').asInteger := 1;
         cds_outinfcli.FieldByName('descricao').asString := cbxoutinf1.text;
         cds_outinfcli.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi




end;

procedure Tfrmtra.cbxoutinf2Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxoutinf2.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from outinfcli where (id=2) and descricao = '+quotedstr(cbxoutinf2.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'outinfcli';
         cds_outinfcli.Append;
         cds_outinfcli.FieldByName('id').asInteger := 2;
         cds_outinfcli.FieldByName('descricao').asString := cbxoutinf2.text;
         cds_outinfcli.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi




end;

procedure Tfrmtra.cbxoutinf3Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxoutinf3.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from outinfcli where (id=3) and descricao = '+quotedstr(cbxoutinf3.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'outinfcli';
         cds_outinfcli.Append;
         cds_outinfcli.FieldByName('id').asInteger := 3;
         cds_outinfcli.FieldByName('descricao').asString := cbxoutinf3.text;
         cds_outinfcli.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;



procedure Tfrmtra.cbxoutinf4Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxoutinf4.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from outinfcli where (id=4) and descricao = '+quotedstr(cbxoutinf4.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'outinfcli';
         cds_outinfcli.Append;
         cds_outinfcli.FieldByName('id').asInteger := 4;
         cds_outinfcli.FieldByName('descricao').asString := cbxoutinf4.text;
         cds_outinfcli.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure Tfrmtra.cbxoutinf5Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxoutinf5.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from outinfcli where (id=5) and descricao = '+quotedstr(cbxoutinf5.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'outinfcli';
         cds_outinfcli.Append;
         cds_outinfcli.FieldByName('id').asInteger := 5;
         cds_outinfcli.FieldByName('descricao').asString := cbxoutinf5.text;
         cds_outinfcli.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure Tfrmtra.cbxoutinf6Exit(Sender: TObject);
var
  icont:integer;
begin
if cbxoutinf6.Text = '' then
   exit;
//endi

with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from outinfcli where (id=6) and descricao = '+quotedstr(cbxoutinf6.text));
    dbx_exec.Active := true;

    icont := dbx_exec.RecordCount;

    if icont = 0 then
       begin
         tabela := 'outinfcli';
         cds_outinfcli.Append;
         cds_outinfcli.FieldByName('id').asInteger := 6;
         cds_outinfcli.FieldByName('descricao').asString := cbxoutinf6.text;
         cds_outinfcli.Post;
         tabela := 'sVenda';
       end;
    //endi
  end;
//endi
end;

procedure Tfrmtra.cbxdesc1Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc2Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc3Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc4Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc5Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc6Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc7Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc8Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc9Exit(Sender: TObject);
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

procedure Tfrmtra.cbxdesc10Exit(Sender: TObject);
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

procedure Tfrmtra.preenchecbxoutinf1;
begin
  cbxoutinf1.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from outinfcli where id = 1');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxoutinf1.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmtra.preenchecbxoutinf2;
begin
  cbxoutinf2.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from outinfcli where id = 2');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxoutinf2.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmtra.preenchecbxoutinf3;
begin
  cbxoutinf3.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from outinfcli where id = 3');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxoutinf3.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmtra.preenchecbxoutinf4;
begin
  cbxoutinf4.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from outinfcli where id = 4');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxoutinf4.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmtra.preenchecbxoutinf5;
begin
  cbxoutinf5.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from outinfcli where id = 5');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxoutinf5.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;

procedure Tfrmtra.preenchecbxoutinf6;
begin
  cbxoutinf6.Items.Clear;

  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select * from outinfcli where id = 6');
      dbx_exec.Active := true;

      while not dbx_exec.Eof do
        begin
          cbxoutinf6.Items.Add(dbx_exec.fieldbyname('descricao').asString);
          dbx_exec.Next;
        end;
      //endw
    end;
  //endth

end;


procedure Tfrmtra.preenchecbxdesc1;
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

procedure Tfrmtra.preenchecbxdesc2;
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

procedure Tfrmtra.preenchecbxdesc3;
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


procedure Tfrmtra.preenchecbxdesc4;
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



procedure Tfrmtra.preenchecbxdesc5;
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

procedure Tfrmtra.preenchecbxdesc6;
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


procedure Tfrmtra.preenchecbxdesc7;
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

procedure Tfrmtra.preenchecbxdesc8;
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

procedure Tfrmtra.preenchecbxdesc9;
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


procedure Tfrmtra.preenchecbxdesc10;
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



procedure Tfrmtra.edipdesc1Exit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;
begin
try

  ftot :=  strtofloat(tirapontos(lbltotGlan.Caption));

  if edipdesc.Text <> spdesc_PA then
     begin

       fvaldesc := strtofloat(tirapontos(edipdesc.text)) / 100 * ftot;
       svaldesc := floattostr(fvaldesc);

       edivaldesc.Text := formatfloat('0.00',fvaldesc);
       ediliquido.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);

       spDesc_PA :=  edipdesc.Text;
       svaldesc_PA := formatfloat('0.00',fvaldesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);
     end;
  //endi


except
  if edipdesc.Enabled then
     edipdesc.SetFocus;
  //endi
end;

tabela := 'Vencimentos';
end;

procedure Tfrmtra.edivaldesc1Exit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotGlan.Caption));
  if edivaldesc.Text <> svaldesc_PA then
     begin

       fvaldesc := strtofloat(tirapontos(edivaldesc.text));
       fpdesc := fvaldesc / ftot * 100;
       spdesc := floattostr(fpdesc);

       edipdesc.Text := floattostr(fpdesc);
       ediliquido.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);

       svaldesc_PA := edivaldesc.Text;
       spdesc_PA := formatfloat('0.00',fpdesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);

     end;
  //endi


except
  if edivaldesc.Enabled then
     edivaldesc.SetFocus;
  //endi
end;
end;



procedure Tfrmtra.ediliquido1Exit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotGlan.Caption));

  if ediliquido.Text <>  sliquido_PA then
     begin

       edivaldesc.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-strtofloat(tirapontos(ediliquido.Text)));
       fpdesc                                               := strtofloat(tirapontos(edivaldesc.text)) / ftot * 100;
       edipdesc.Text   := floattostr(fpdesc);

       sliquido_PA := ediliquido.Text;
       svaldesc_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-strtofloat(tirapontos(ediliquido.text)));
       spdesc_PA   := formatfloat('0.00',strtofloat(tirapontos(edivaldesc.Text)) / ftot * 100);


     end;
   //endi



except
  if ediliquido.Enabled then
     ediliquido.SetFocus;
  //endi
end;

end;

procedure Tfrmtra.edipdescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmtra.edivaldesc1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmtra.ediliquidoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmtra.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;
begin
try

  ftot :=  strtofloat(tirapontos(lbltotGlan.Caption));

  if edipdesc.Text <> spdesc_PA then
     begin

       fvaldesc := strtofloat(tirapontos(edipdesc.text)) / 100 * ftot;
       svaldesc := floattostr(fvaldesc);

       edivaldesc.Text := formatfloat('0.00',fvaldesc);
       ediliquido.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);

       spDesc_PA :=  edipdesc.Text;
       svaldesc_PA := formatfloat('0.00',fvaldesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);
     end;
  //endi


except
  if edipdesc.Enabled then
     edipdesc.SetFocus;
  //endi
end;

tabela := 'Vencimentos';
end;

procedure Tfrmtra.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin
try
  ftot := strtofloat(tirapontos(lbltotGlan.Caption));
  if edivaldesc.Text <> svaldesc_PA then
     begin

       fvaldesc := strtofloat(tirapontos(edivaldesc.text));
       fpdesc := fvaldesc / ftot * 100;
       spdesc := floattostr(fpdesc);

       edipdesc.Text := floattostr(fpdesc);
       ediliquido.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);

       svaldesc_PA := edivaldesc.Text;
       spdesc_PA := formatfloat('0.00',fpdesc);
       sliquido_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-fvaldesc);

     end;
  //endi


except
  if edivaldesc.Enabled then
     edivaldesc.SetFocus;
  //endi
end;
end;

procedure Tfrmtra.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin
try
  ftot :=  strtofloat(tirapontos(lbltotGlan.Caption));

  if ediliquido.Text <>  sliquido_PA then
     begin

       edivaldesc.Text := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-strtofloat(tirapontos(ediliquido.Text)));
       fpdesc                                               := strtofloat(tirapontos(edivaldesc.text)) / ftot * 100;
       edipdesc.Text   := floattostr(fpdesc);

       sliquido_PA := ediliquido.Text;
       svaldesc_PA := formatfloat('0.00',strtofloat(tirapontos(lbltotglan.Caption))-strtofloat(tirapontos(ediliquido.text)));
       spdesc_PA   := formatfloat('0.00',strtofloat(tirapontos(edivaldesc.Text)) / ftot * 100);


     end;
   //endi



except
  if ediliquido.Enabled then
     ediliquido.SetFocus;
  //endi
end;

end;

procedure Tfrmtra.edivaldescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmtra.tbsvenctosShow(Sender: TObject);
begin
    lbltotal.Caption := formatfloat('###,###,##0.00',frmdados.Cds_livrocaixa.fieldbyname('total').asfloat);
    lblpdesc.Caption := formatfloat('###,###,##0.00',frmdados.Cds_livrocaixa.fieldbyname('pdesc').asfloat);
    lblvdesc.Caption := formatfloat('###,###,##0.00',frmdados.Cds_livrocaixa.fieldbyname('valdesc').asfloat);
    lblliquido.Caption := formatfloat('###,###,##0.00',frmdados.Cds_livrocaixa.fieldbyname('liquido').asfloat);

    frmdados.Cds_Vencto.Active := false;
    frmdados.Dbx_Vencto.Active := false;
    frmdados.Dbx_Vencto.SQL.Clear;
    //frmdados.Dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger  ) +')');
    frmdados.Dbx_vencto.SQL.Add('Select * from vencimentos where codlivrocaixa = '+ inttostr( frmdados.cds_livrocaixa.fieldbyname('codigo').asInteger ) );
    frmdados.Cds_Vencto.Active := true;
    frmdados.Cds_Vencto.Active := true;

end;

procedure Tfrmtra.dbgfinDrawColumnCell(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
var
  Icon: TBitmap;
  f:TextFile; Linha:String;
  bAut :boolean;
begin
  bAut := false;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'CSIT') then
     begin

       with dbgfin.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_Vencto.FieldByName('csit').asInteger = 2  then
            begin
              Lista_Img.GetBitmap(2, Icon)
            end
         else
            if (frmdados.Cds_Vencto.FieldByName('valor').asfloat < frmdados.Cds_Vencto.FieldByName('valorreal').asfloat) then
               begin
                 Lista_Img.GetBitmap(3, Icon);
               end
            else
               begin
                 Lista_Img.GetBitmap(1, Icon);
               end;
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;
     end;
  //endi




end;

procedure Tfrmtra.dbg_livrocaixaDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;
  f:TextFile; Linha:String;
  bAut :boolean;
begin
  {

  bAut := false;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'CSIT') then
     begin

       with dbgfin.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);

         frmdados


         if frmdados.Cds_livrocaixa.FieldByName('csit').asInteger = 2  then
            begin
              Lista_Img.GetBitmap(2, Icon)
            end
         else
            if (frmdados.Cds_Vencto.FieldByName('valor').asfloat < frmdados.Cds_Vencto.FieldByName('valorreal').asfloat) then
               begin
                 Lista_Img.GetBitmap(3, Icon);
               end
            else
               begin
                 Lista_Img.GetBitmap(1, Icon);
               end;
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;
     end;
  //endi


  }

end;

procedure tfrmtra.inserecomissao;
begin

  tabela := 'Comissao';

  frmdados.Cds_Comissao.Active := false;
  frmdados.Dbx_Comissao.Active := false;
  frmdados.Dbx_Comissao.SQL.Clear;
  frmdados.Dbx_Comissao.SQL.Add('select * from comissao where cdmobra = '+inttostr(frmdados.Cds_dMobra.fieldbyname('codigo').asInteger));
  frmdados.Dbx_Comissao.Active := true;
  frmdados.Cds_Comissao.Active := true;

  if frmdados.Cds_Comissao.RecordCount = 0 then
     begin
       //showmessage(frmdados.Dbx_Exec.SQL.Text);

       frmdados.Cds_Comissao.Append;
       frmdados.Cds_Comissao.FieldByName('cdmobra').asInteger := frmdados.Cds_dMobra.fieldbyname('codigo').asInteger;
       frmdados.Cds_Comissao.FieldByName('codsvenda').asInteger := frmdados.Cds_sVenda.fieldbyname('codigo').asInteger;
       frmdados.Cds_Comissao.FieldByName('descricao').asString := 'tratamento';
       frmdados.Cds_Comissao.FieldByName('dte').asDatetime := date;

     end;
  //endi

  frmdados.Cds_Comissao.Edit;

  frmdados.Dbx_Exec.Active := false;
  frmdados.Dbx_Exec.SQL.Clear;
  frmdados.Dbx_Exec.SQL.Add('select * from cmobra where codigo = '+ inttostr(frmdados.Cds_dMobra.fieldbyname('cdesc').asInteger)  );
  frmdados.Dbx_Exec.Active := true;
  if frmdados.Dbx_Exec.RecordCount > 0 then
     begin
       frmdados.Cds_Comissao.FieldByName('pcomf').asfloat := frmdados.cds_cmobra.fieldbyname('pcom').asfloat;
       frmdados.Cds_Comissao.FieldByName('vcomf').asfloat := frmdados.cds_dmobra.fieldbyname('subtotal').asfloat*frmdados.cds_cmobra.fieldbyname('pcom').asfloat/100;
     end;
  //endi

  if (frmdados.Cds_dMobra.FieldByName('pago').asString = 'T') then
     begin
       frmdados.Cds_Comissao.FieldByName('ehvenda').asString := 'T';
       frmdados.Cds_Comissao.FieldByName('datafec').asDatetime := date;
       frmdados.Cds_Comissao.FieldByName('cfun').asInteger := frmdados.Cds_dmobra.fieldbyname('cfunp').asInteger;
       frmdados.Cds_Comissao.FieldByName('valor').asfloat := frmdados.Cds_dmobra.fieldbyname('subtotal').asfloat;
       frmdados.Cds_Comissao.FieldByName('servico').asString := frmdados.Cds_dmobra.fieldbyname('nmod').asString+' '+frmdados.Cds_dmobra.fieldbyname('nlistaprod').asString;
     end
  else
     begin
       frmdados.Cds_Comissao.FieldByName('ehvenda').asString := 'F';
       frmdados.Cds_Comissao.FieldByName('datafec').asString := '';
     end;
  //endi
  frmdados.Cds_Comissao.Post;

  //showmessage(frmdados.Cds_Comissao.fieldbyname('codigo').asString);

  tabela := 'DMOBRA';

end;

procedure Tfrmtra.cbxpgtodenteKeyPress(Sender: TObject; var Key: Char);
begin
key := #0;
end;

procedure Tfrmtra.cbxpgtodenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure tfrmtra.baixardentespagos;
begin
  with frmdados do
    begin


      if (ckbtodos.Checked) or (cbxbaixapgtodentes.Text <> '') then
         begin
           cds_dMobra.Active := false;
           cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
           cds_dmobracdesc.DefaultExpression := inttostr(cds_cmobra.fieldbyname('codigo').asInteger);
           dbx_dMobra.Active := false;
           dbx_dMobra.SQL.Clear;
           if (ckbtodos.Checked) then
              dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' ) and (selec = '+quotedstr('T')+') and (pago = '+quotedstr('F')+')'   )
           else
              dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' ) and (selec = '+quotedstr('T')+') and (pago = '+quotedstr('F')+') and (codmat_restaurar = '+inttostr(Cds_Mat_Rest_ID.fieldbyname('codigo').asInteger)+')'   );
           //endi
           //showmessage(dbx_dMobra.SQL.Text);

           dbx_dMobra.Active := true;
           cds_dMobra.Active := true;


         end;
      //endi

      while not cds_dmobra.Eof do
        begin
          cds_dmobra.Edit;
          cds_dmobra.FieldByName('pago').asString := 'T';
          cds_dmobra.Post;
          inserecomissao;
          cds_dmobra.Next;
        end;
      //endi


    end;
  //endth

end;

procedure Tfrmtra.ckbtodosClick(Sender: TObject);
begin
if ckbtodos.Checked then
   cbxbaixapgtodentes.Enabled := false
else
   cbxbaixapgtodentes.Enabled := true;
//endi
end;

procedure tfrmtra.habilitad;
begin
if (frmdados.Cds_Vencto.FieldByName('baixartodos').AsString = 'T') or
   (frmdados.Cds_Vencto.FieldByName('csit').AsInteger = frmdados.Cds_Indice.fieldbyname('csitr').asInteger)
then
   ckbtodos.Checked := true
else
   begin
     cbxbaixapgtodentes.Enabled := false;

     frmdados.Cds_Temp.Edit;
     frmdados.Cds_Temp.FieldByName('cod8').asInteger := frmdados.Cds_Vencto.fieldbyname('codmat_restaurar').asInteger;

   end;
//endi
end;


procedure Tfrmtra.SpeedButton1Click(Sender: TObject);
begin
  frmdados.Cds_Vencto.Prior;
  habilitad;
  frmdados.habdesabilitaedi;
end;

procedure Tfrmtra.SpeedButton2Click(Sender: TObject);
begin
  frmdados.Cds_Vencto.next;
  habilitad;
  frmdados.habdesabilitaedi;
end;

procedure Tfrmtra.ckbtodosKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmtra.cbxbaixapgtodentesKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmtra.BitBtn1Click(Sender: TObject);
var
  ftotal:real;
begin
  ftotal := 0;
  if application.MessageBox('Imprimir para todas parcelas?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       while not frmdados.Cds_Vencto.Eof do
          begin
            ftotal := ftotal + frmdados.Cds_Vencto.FieldByName('valliq').asfloat;
            frmdados.Cds_Vencto.Next;
          end;
       //endw
     end
  else
     begin
       ftotal := frmdados.Cds_Vencto.FieldByName('valliq').asfloat;
     end;
  //endi

  fvalorrec := ftotal;

  frmimprecpgto := tfrmimprecpgto.create(self);
  frmimprecpgto.relatorio.preview;
  frmimprecpgto.free;

end;

procedure Tfrmtra.tbsbaixadosShow(Sender: TObject);
begin
    frmdados.Cds_Vencto.Active := false;
    frmdados.Dbx_Vencto.Active := false;
    frmdados.Dbx_Vencto.SQL.Clear;
    frmdados.Dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger  ) +') and (csit = '+inttostr( frmdados.Cds_Indice.fieldbyname('csitr1').asInteger )+')');
    //frmdados.Dbx_vencto.SQL.Add('Select * from vencimentos where codlivrocaixa = '+ inttostr( frmdados.cds_livrocaixa.fieldbyname('codigo').asInteger ) );
    frmdados.Cds_Vencto.Active := true;
    frmdados.Cds_Vencto.Active := true;

end;

procedure Tfrmtra.tbsaliqShow(Sender: TObject);
begin
    frmdados.Cds_Vencto.Active := false;
    frmdados.Dbx_Vencto.Active := false;
    frmdados.Dbx_Vencto.SQL.Clear;
    frmdados.Dbx_Vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( frmdados.cds_svenda.fieldbyname('codigo').asInteger  ) +') and (csit = '+inttostr( frmdados.Cds_Indice.fieldbyname('csitr').asInteger )+')');
    //frmdados.Dbx_vencto.SQL.Add('Select * from vencimentos where codlivrocaixa = '+ inttostr( frmdados.cds_livrocaixa.fieldbyname('codigo').asInteger ) );
    frmdados.Cds_Vencto.Active := true;
    frmdados.Cds_Vencto.Active := true;

end;

end.
