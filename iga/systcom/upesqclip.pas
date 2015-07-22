unit upesqclip;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, ExtDlgs, jpeg, clipbrd, dbiprocs,
  shellapi;

type
  TfrmPesqclip = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    imgfichadetalhe: TImageList;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;
    spdConsultar174: TSpeedButton;
    spdcodbar175: TSpeedButton;
    spdrelatorios176: TSpeedButton;
    spdilustracao177: TSpeedButton;
    Label4: TLabel;
    pnlficha: TPanel;
    pnlcab: TPanel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DBText1: TDBText;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    edicpf: TDBEdit;
    EDIIE: TDBEdit;
    EDINOME: TDBEdit;
    EDIFANT: TDBEdit;
    pctcli: TPageControl;
    tabinf: TTabSheet;
    lbltittel1: TLabel;
    lbltitemail: TLabel;
    lbltitsite: TLabel;
    lbltitcontato: TLabel;
    editelefones1: TDBEdit;
    ediemail: TDBEdit;
    edisite: TDBEdit;
    edicontato: TDBEdit;
    tabent: TTabSheet;
    lbltitendent: TLabel;
    lbltitcompent: TLabel;
    lbltitbaient: TLabel;
    lbltitcident: TLabel;
    lbltitestent: TLabel;
    lbltitcepent: TLabel;
    lbltittelent: TLabel;
    ediendent: TDBEdit;
    edicompent: TDBEdit;
    edibaient: TDBEdit;
    edicident: TDBEdit;
    ediestent: TDBEdit;
    edicepent: TDBEdit;
    editelent: TDBEdit;
    dbgClientes: TDBGrid;
    spdiconea: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    SpeedButton1: TSpeedButton;
    lblid1: TLabel;
    ediid1: TEdit;
    edidtcad: TDBEdit;
    CBXTIPOCLI: TDBLookupComboBox;
    Label5: TLabel;
    Label13: TLabel;
    CBXSITUCLI: TDBLookupComboBox;
    Label14: TLabel;
    EDIDATANASC: TDBEdit;
    Label15: TLabel;
    EDIDTPESPCERASA: TDBEdit;
    edidddeent: TDBEdit;
    cbxsituclib: TDBLookupComboBox;
    cbxtipoclib: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    tabobs: TTabSheet;
    Label16: TLabel;
    edimesani: TMaskEdit;
    Label20: TLabel;
    cbxnometransp: TDBLookupComboBox;
    Label21: TLabel;
    cbxntransp: TDBLookupComboBox;
    Label22: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label24: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    DBLookupComboBox5: TDBLookupComboBox;
    Label23: TLabel;
    DBLookupComboBox6: TDBLookupComboBox;
    edinroent: TDBEdit;
    lbltitnroent: TLabel;
    bvlfoto: TBevel;
    imgFoto: TImage;
    spdinsfoto: TSpeedButton;
    spdapafoto: TSpeedButton;
    opdAbrirfig: TOpenPictureDialog;
    Label25: TLabel;
    DBLookupComboBox7: TDBLookupComboBox;
    tabobscli: TTabSheet;
    Label17: TLabel;
    DBMemo1: TDBMemo;
    lbloutinf1: TLabel;
    cbxoutinf1: TComboBox;
    lbloutinf2: TLabel;
    CBXOUTINF2: TComboBox;
    lbloutinf3: TLabel;
    CBXOUTINF3: TComboBox;
    CBXOUTINF6: TComboBox;
    lbloutinf6: TLabel;
    CBXOUTINF5: TComboBox;
    lbloutinf5: TLabel;
    CBXOUTINF4: TComboBox;
    lbloutinf4: TLabel;
    lbloutinf7: TLabel;
    CBXOUTINF7: TComboBox;
    lbloutinf8: TLabel;
    CBXOUTINF8: TComboBox;
    lbloutinf9: TLabel;
    CBXOUTINF9: TComboBox;
    CBXOUTINF10: TComboBox;
    lbloutinf10: TLabel;
    lbltitresponsavelent: TLabel;
    ediresponsavelent: TDBEdit;
    lbltitresponsavelrgent: TLabel;
    ediresponsavelrgent: TDBEdit;
    lbltitresponsavelcpfent: TLabel;
    ediresponsavelcpfent: TDBEdit;
    Label26: TLabel;
    edifonecomercial: TDBEdit;
    Label27: TLabel;
    EDIDDDCOB1: TDBEdit;
    EDIFONECOB: TDBEdit;
    edidddecom: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlternaF;
    procedure AlternaL;
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure bloqueiacampos;
    procedure desbloqueiacampos;
    procedure spdConsultar174Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure spdcancelar2310Click(Sender: TObject);
    procedure edidescExit(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure edicodigoiChange(Sender: TObject);
    procedure cbxclassificarChange(Sender: TObject);
    procedure edicodigofChange(Sender: TObject);
    procedure edicodigoiEnter(Sender: TObject);
    procedure edicodigofEnter(Sender: TObject);
    procedure bloqueiabotoes;
    procedure desbloqueiabotoes;
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure EDIIEKeyPress(Sender: TObject; var Key: Char);
    procedure EDINOMEKeyPress(Sender: TObject; var Key: Char);
    procedure EDIFANTKeyPress(Sender: TObject; var Key: Char);
    procedure editelefones1KeyPress(Sender: TObject; var Key: Char);
    procedure ediendentKeyPress(Sender: TObject; var Key: Char);
    procedure ediendcobKeyPress(Sender: TObject; var Key: Char);
    procedure ediendcomKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ediid1KeyPress(Sender: TObject; var Key: Char);
    procedure edidtcadKeyPress(Sender: TObject; var Key: Char);
    procedure EDIDTPESPCERASAKeyPress(Sender: TObject; var Key: Char);
    procedure EDIDATANASCKeyPress(Sender: TObject; var Key: Char);
    procedure CBXTIPOCLIKeyPress(Sender: TObject; var Key: Char);
    procedure CBXSITUCLIKeyPress(Sender: TObject; var Key: Char);
    procedure edidddfsKeyPress(Sender: TObject; var Key: Char);
    procedure edidddeentKeyPress(Sender: TObject; var Key: Char);
    procedure edidddecobKeyPress(Sender: TObject; var Key: Char);
    procedure edidddecomKeyPress(Sender: TObject; var Key: Char);
    procedure dbgClientesDblClick(Sender: TObject);
    procedure spdincluir172Click(Sender: TObject);
    procedure spdexcluir174Click(Sender: TObject);
    procedure dbgequipcliEnter(Sender: TObject);
    procedure tabobjShow(Sender: TObject);
    procedure mostrarvc;
    procedure dbgequipcliKeyPress(Sender: TObject; var Key: Char);
    procedure cbxtipoclibEnter(Sender: TObject);
    procedure cbxsituclibEnter(Sender: TObject);
    procedure cbxsituclibExit(Sender: TObject);
    procedure cbxtipoclibExit(Sender: TObject);
    procedure spdrelatorios176Click(Sender: TObject);
    procedure cbxnometranspKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox4KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox5KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox6KeyPress(Sender: TObject; var Key: Char);
    procedure spdinsfotoClick(Sender: TObject);
    procedure spdapafotoClick(Sender: TObject);
    procedure mostrararq_ext;
    procedure exibidadosadc;
    procedure mostrard;
    procedure limpard;
    procedure cbxoutinf1KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF2KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF3KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF4KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF5KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF6KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF7KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF8KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF9KeyPress(Sender: TObject; var Key: Char);
    procedure CBXOUTINF10KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
    sClassificar:string;
    iSpdcancelar2310a, iSpdgravar, itcampo:integer;
    sOpcao:String;

  public
    { Public declarations }
    sTitRel:string;
  end;

var
  frmPesqclip: TfrmPesqclip;

implementation

uses uGeral, uDados, urelanip;

{$R *.DFM}

procedure TfrmPesqclip.FormShow(Sender: TObject);
var
   vardir: String;
   x:integer;
begin

  vardir := ExtractFilePath(Application.ExeName);
  x:=0;

  exibidadosadc;

  lbloutinf1.Visible := false;
  lbloutinf2.Visible := false;
  lbloutinf3.Visible := false;
  lbloutinf4.Visible := false;
  lbloutinf5.Visible := false;
  lbloutinf6.Visible := false;
  lbloutinf7.Visible := false;
  lbloutinf8.Visible := false;
  lbloutinf9.Visible := false;
  lbloutinf10.Visible := false;

  cbxoutinf1.Visible := false;
  cbxoutinf2.Visible := false;
  cbxoutinf3.Visible := false;
  cbxoutinf4.Visible := false;
  cbxoutinf5.Visible := false;
  cbxoutinf6.Visible := false;
  cbxoutinf7.Visible := false;
  cbxoutinf8.Visible := false;
  cbxoutinf9.Visible := false;
  cbxoutinf10.Visible := false;


  pctcli.ActivePageIndex := 0;

  with frmdados do
     begin

       cds_pais.Active := false;
       dbx_pais.Active := false;
       dbx_pais.SQL.Clear;
       dbx_pais.SQL.Add('Select * from pais');
       dbx_pais.Active := true;
       cds_pais.Active := true;

       cds_estados.Active := false;
       dbx_estados.Active := false;
       dbx_estados.SQL.Clear;
       dbx_estados.SQL.Add('Select * from estados');
       dbx_estados.Active := true;
       cds_estados.Active := true;

       cds_munic.Active := false;
       dbx_munic.Active := false;
       dbx_munic.SQL.Clear;
       dbx_munic.SQL.Add('Select * from munic');
       dbx_munic.Active := true;
       cds_munic.Active := true;

       cds_transportadores.Active := false;
       dbx_transportadores.Active := false;
       dbx_transportadores.SQL.Clear;
       dbx_transportadores.SQL.Add('Select * from transportador');
       dbx_transportadores.Active := true;
       cds_transportadores.Active := true;

       cds_situcadcli.Active := false;
       dbx_situcadcli.Active := false;
       dbx_situcadcli.SQL.Clear;
       dbx_situcadcli.SQL.Add('Select * from situcadcli');
       dbx_situcadcli.Active := true;
       cds_situcadcli.Active := true;

       cds_tipocli.Active := false;
       dbx_tipocli.Active := false;
       dbx_tipocli.SQL.Clear;
       dbx_tipocli.SQL.Add('Select * from tipocli');
       dbx_tipocli.Active := true;
       cds_tipocli.Active := true;

       cds_tipotab.Active := false;
       dbx_tipotab.Active := false;
       dbx_tipotab.SQL.Clear;
       dbx_tipotab.SQL.Add('Select * from tipotab');
       dbx_tipotab.Active := true;
       cds_tipotab.Active := true;


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

       if (cds_indice.FieldByName('outinfcli7').asString <> '') then
           begin
             lbloutinf7.Caption := cds_indice.FieldByName('outinfcli7').asString;
             lbloutinf7.Visible := true;
             cbxoutinf7.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli8').asString <> '') then
           begin
             lbloutinf8.Caption := cds_indice.FieldByName('outinfcli8').asString;
             lbloutinf8.Visible := true;
             cbxoutinf8.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli9').asString <> '') then
           begin
             lbloutinf9.Caption := cds_indice.FieldByName('outinfcli9').asString;
             lbloutinf9.Visible := true;
             cbxoutinf9.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli10').asString <> '') then
           begin
             lbloutinf10.Caption := cds_indice.FieldByName('outinfcli10').asString;
             lbloutinf10.Visible := true;
             cbxoutinf10.Visible := true;
           end;
       //endi

       if cds_indice.FieldByName('ID1').asString <> '' then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'ID1';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('ID1').asString;
            x := x + 1;
          end;
       //endi
       if cds_indice.FieldByName('ID2').asString <> '' then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'ID2';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('ID2').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC1').asString <> '') and (cds_indice.FieldByName('TDESC1').asString = 'T') then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC1';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC1').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '') and (cds_indice.FieldByName('TDESC2').asString = 'T') then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC2';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC2').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC3').asString <> '') and (cds_indice.FieldByName('TDESC3').asString = 'T') then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC3';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC3').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '') and (cds_indice.FieldByName('TDESC4').asString = 'T') then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC4';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC4').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC5').asString <> '') and (cds_indice.FieldByName('TDESC5').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC5';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC5').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') and (cds_indice.FieldByName('TDESC6').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC6';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC6').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') and (cds_indice.FieldByName('TDESC7').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC7';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC7').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC8').asString <> '') and (cds_indice.FieldByName('TDESC8').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC8';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC8').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC9').asString <> '') and (cds_indice.FieldByName('TDESC9').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC9';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC9').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC10').asString <> '') and (cds_indice.FieldByName('TDESC10').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC10';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC10').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC11').asString <> '') and (cds_indice.FieldByName('TDESC11').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC11';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC11').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC12').asString <> '') and (cds_indice.FieldByName('TDESC12').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC12';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC12').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC13').asString <> '') and (cds_indice.FieldByName('TDESC13').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC13';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC13').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC14').asString <> '') and (cds_indice.FieldByName('TDESC14').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC14';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC14').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC15').asString <> '') and (cds_indice.FieldByName('TDESC15').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC15';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC15').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC16').asString <> '') and (cds_indice.FieldByName('TDESC16').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC16';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC16').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC17').asString <> '') and (cds_indice.FieldByName('TDESC17').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC17';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC17').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC18').asString <> '') and (cds_indice.FieldByName('TDESC18').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC18';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC18').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC19').asString <> '') and (cds_indice.FieldByName('TDESC19').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC19';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC19').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC20').asString <> '') and (cds_indice.FieldByName('TDESC20').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC20';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC20').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC21').asString <> '') and (cds_indice.FieldByName('TDESC21').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC21';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC21').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC22').asString <> '') and (cds_indice.FieldByName('TDESC22').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC22';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC22').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC23').asString <> '') and (cds_indice.FieldByName('TDESC23').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC23';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC23').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC24').asString <> '') and (cds_indice.FieldByName('TDESC24').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC24';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC24').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC25').asString <> '') and (cds_indice.FieldByName('TDESC25').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC25';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC25').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC26').asString <> '') and (cds_indice.FieldByName('TDESC26').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC26';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC26').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC27').asString <> '') and (cds_indice.FieldByName('TDESC27').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC27';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC27').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC28').asString <> '') and (cds_indice.FieldByName('TDESC28').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC28';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC28').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC29').asString <> '') and (cds_indice.FieldByName('TDESC29').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC29';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC29').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC30').asString <> '') and (cds_indice.FieldByName('TDESC30').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC30';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC30').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC31').asString <> '') and (cds_indice.FieldByName('TDESC31').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC31';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC31').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC32').asString <> '') and (cds_indice.FieldByName('TDESC32').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC32';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC32').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC33').asString <> '') and (cds_indice.FieldByName('TDESC33').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC33';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC33').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC34').asString <> '') and (cds_indice.FieldByName('TDESC34').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC34';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC34').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC35').asString <> '') and (cds_indice.FieldByName('TDESC35').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC35';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC35').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC36').asString <> '') and (cds_indice.FieldByName('TDESC36').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC36';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC36').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC37').asString <> '') and (cds_indice.FieldByName('TDESC37').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC37';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC37').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC38').asString <> '') and (cds_indice.FieldByName('TDESC38').asString = 'T')then
          begin
            //dbgequipcli.Columns.Add;
            //dbgequipcli.Columns[x].FieldName  := 'DESC38';
            //dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC38').asString;
            x := x + 1;
          end;
       //endi
     end;
  //endi

  lblid1.Visible := false;
  ediid1.Visible := false;

  iSpdcancelar2310a := spdcancelar2310.Left;
  iSpdGravar := spdgravar.Left;
  spdiconea.Glyph := spdgravar.Glyph;

  //lbltitresponsavelcpfcob.Left := lbltitresponsavelcpfent.Left;
  //lbltitresponsavelcpfcob.top := lbltitresponsavelcpfent.top;
  //lbltitresponsavelcpfcob.width := lbltitresponsavelcpfent.width;
  //lbltitresponsavelcpfcob.Height := lbltitresponsavelcpfent.Height;

  //lbltitresponsavelrgcob.Left := lbltitresponsavelrgent.Left;
  //lbltitresponsavelrgcob.top := lbltitresponsavelrgent.top;
  //lbltitresponsavelrgcob.width := lbltitresponsavelrgent.width;
  //lbltitresponsavelrgcob.Height := lbltitresponsavelrgent.Height;

  //lbltitresponsavelcob.Left := lbltitresponsavelent.Left;
  //lbltitresponsavelcob.top := lbltitresponsavelent.top;
  //lbltitresponsavelcob.width := lbltitresponsavelent.width;
  //lbltitresponsavelcob.Height := lbltitresponsavelent.Height;

  //lbltitendcob.Left := lbltitendent.Left;
  //lbltitendcob.top := lbltitendent.top;
  //lbltitendcob.width := lbltitendent.width;
  //lbltitendcob.Height := lbltitendent.Height;

  //lbltitnrocob.Left := lbltitnroent.Left;
  //lbltitnrocob.top := lbltitnroent.top;
  //lbltitnrocob.width := lbltitnroent.width;
  //lbltitnrocob.Height := lbltitnroent.Height;

  //lbltitresponsavelcpfcom.Left := lbltitresponsavelcpfent.Left;
  //lbltitresponsavelcpfcom.top := lbltitresponsavelcpfent.top;
  //lbltitresponsavelcpfcom.width := lbltitresponsavelcpfent.width;
  //lbltitresponsavelcpfcom.Height := lbltitresponsavelcpfent.Height;

  //lbltitresponsavelrgcom.Left := lbltitresponsavelrgent.Left;
  //lbltitresponsavelrgcom.top := lbltitresponsavelrgent.top;
  //lbltitresponsavelrgcom.width := lbltitresponsavelrgent.width;
  //lbltitresponsavelrgcom.Height := lbltitresponsavelrgent.Height;

  //lbltitresponsavelcom.Left := lbltitresponsavelent.Left;
  //lbltitresponsavelcom.top := lbltitresponsavelent.top;
  //lbltitresponsavelcom.width := lbltitresponsavelent.width;
  //lbltitresponsavelcom.Height := lbltitresponsavelent.Height;

  //lbltitnrocom.Left := lbltitnroent.Left;
  //lbltitnrocom.top := lbltitnroent.top;
  //lbltitnrocom.width := lbltitnroent.width;
  //lbltitnrocom.Height := lbltitnroent.Height;

  //lbltitcompcob.Left := lbltitcompent.Left;
  //lbltitcompcob.top := lbltitcompent.top;
  //lbltitcompcob.width := lbltitcompent.width;
  //lbltitcompcob.Height := lbltitcompent.Height;

  //lbltitbaicob.Left := lbltitbaient.Left;
  //lbltitbaicob.top := lbltitbaient.top;
  //lbltitbaicob.width := lbltitbaient.width;
  //lbltitbaicob.Height := lbltitbaient.Height;

  //lbltitcidcob.Left := lbltitcident.Left;
  //lbltitcidcob.top := lbltitcident.top;
  //lbltitcidcob.width := lbltitcident.width;
  //lbltitcidcob.Height := lbltitcident.Height;

  //lbltitestcob.Left := lbltitestent.Left;
  //lbltitestcob.top := lbltitestent.top;
  //lbltitestcob.width := lbltitestent.width;
  //lbltitestcob.Height := lbltitestent.Height;

  //lbltitcepcob.Left := lbltitcepent.Left;
  //lbltitcepcob.top := lbltitcepent.top;
  //lbltitcepcob.width := lbltitcepent.width;
  //lbltitcepcob.Height := lbltitcepent.Height;

  //lbltittelcob.Left := lbltittelent.Left;
  //lbltittelcob.top := lbltittelent.top;
  //lbltittelcob.width := lbltittelent.width;
  //lbltittelcob.Height := lbltittelent.Height;

  //

  //edidddfs.Left := ediendent.Left;
  //edidddfs.top := ediendent.top;

  //editelefones.Left := ediendent.Left+50;
  //editelefones.top := ediendent.top;

  //edilimite.Left := ediendent.Left;
  //edilimite.top := ediendent.top;

  //ediemail.Left := edicompent.Left;
  //ediemail.top := edicompent.top;

  //ediprazo.Left := edicompent.Left;
  //ediprazo.top := edicompent.top;

  //edisite.Left := edicident.Left;
  //edisite.top := edicident.top;

  //ckbreducaoicms.Left := edicident.Left;
  //ckbreducaoicms.top := edicident.top;

  cbxoutinf1.Left := edisite.Left;
  cbxoutinf3.Left := edisite.Left;
  cbxoutinf5.Left := edisite.Left;

  //edicontato.top := editelent.top;

  //edicontato.Left := edidddeent.Left;
  //edicontato.top := edidddeent.top;

  //ediresponsavelcpfcob.Left := ediresponsavelcpfent.Left;
  //ediresponsavelcpfcob.top := ediresponsavelcpfent.top;
  //ediresponsavelcpfcob.width := ediresponsavelcpfent.width;
  //ediresponsavelcpfcob.Height := ediresponsavelcpfent.Height;

  //ediresponsavelrgcob.Left := ediresponsavelrgent.Left;
  //ediresponsavelrgcob.top := ediresponsavelrgent.top;
  //ediresponsavelrgcob.width := ediresponsavelrgent.width;
  //ediresponsavelrgcob.Height := ediresponsavelrgent.Height;

  //ediresponsavelcob.Left := ediresponsavelent.Left;
  //ediresponsavelcob.top := ediresponsavelent.top;
  //ediresponsavelcob.width := ediresponsavelent.width;
  //ediresponsavelcob.Height := ediresponsavelent.Height;

  //ediendcob.Left := ediendent.Left;
  //ediendcob.top := ediendent.top;
  //ediendcob.width := ediendent.width;
  //ediendcob.Height := ediendent.Height;

  //edinrocob.Left := edinroent.Left;
  //edinrocob.top := edinroent.top;
  //edinrocob.width := edinroent.width;
  //edinrocob.Height := edinroent.Height;

  //edicompcob.Left := edicompent.Left;
  //edicompcob.top := edicompent.top;
  //edicompcob.width := edicompent.width;
  //edicompcob.Height := edicompent.Height;

  //edibaicob.Left := edibaient.Left;
  //edibaicob.top := edibaient.top;
  //edibaicob.width := edibaient.width;
  //edibaicob.Height := edibaient.Height;

  //edicidcob.Left := edicident.Left;
  //edicidcob.top := edicident.top;
  //edicidcob.width := edicident.width;
  //edicidcob.Height := edicident.Height;

  //ediestcob.Left := ediestent.Left;
  //ediestcob.top := ediestent.top;
  //ediestcob.width := ediestent.width;
  //ediestcob.Height := ediestent.Height;

  //edicepcob.Left := edicepent.Left;
  //edicepcob.top := edicepent.top;
  //edicepcob.width := edicepent.width;
  //edicepcob.Height := edicepent.Height;

  //editelcob.Left := editelent.Left;
  //editelcob.top := editelent.top;
  //editelcob.width := editelent.width;
  //editelcob.Height := editelent.Height;

  //

  //ediresponsavelcpfcom.Left := ediresponsavelcpfent.Left;
  //ediresponsavelcpfcom.top  := ediresponsavelcpfent.top;
  //ediresponsavelcpfcom.width := ediresponsavelcpfent.width;
  //ediresponsavelcpfcom.Height := ediresponsavelcpfent.Height;

  //ediresponsavelrgcom.Left := ediresponsavelrgent.Left;
  //ediresponsavelrgcom.top  := ediresponsavelrgent.top;
  //ediresponsavelrgcom.width := ediresponsavelrgent.width;
  //ediresponsavelrgcom.Height := ediresponsavelrgent.Height;

  //ediresponsavelcom.Left := ediresponsavelent.Left;
  //ediresponsavelcom.top  := ediresponsavelent.top;
  //ediresponsavelcom.width := ediresponsavelent.width;
  //ediresponsavelcom.Height := ediresponsavelent.Height;

  //edinrocom.Left := edinroent.Left;
  //edinrocom.top := edinroent.top;
  //edinrocom.width := edinroent.width;
  //edinrocom.Height := edinroent.Height;


  //lbltitendcom.Left := lbltitendent.Left;
  //lbltitendcom.top := lbltitendent.top;
  //lbltitendcom.width := lbltitendent.width;
  //lbltitendcom.Height := lbltitendent.Height;

  //lbltitcompcom.Left := lbltitcompent.Left;
  //lbltitcompcom.top := lbltitcompent.top;
  //lbltitcompcom.width := lbltitcompent.width;
  //lbltitcompcom.Height := lbltitcompent.Height;

  //lbltitbaicom.Left := lbltitbaient.Left;
  //lbltitbaicom.top := lbltitbaient.top;
  //lbltitbaicom.width := lbltitbaient.width;
  //lbltitbaicom.Height := lbltitbaient.Height;

  //lbltitcidcom.Left := lbltitcident.Left;
  //lbltitcidcom.top := lbltitcident.top;
  //lbltitcidcom.width := lbltitcident.width;
  //lbltitcidcom.Height := lbltitcident.Height;

  //lbltitestcom.Left := lbltitestent.Left;
  //lbltitestcom.top := lbltitestent.top;
  //lbltitestcom.width := lbltitestent.width;
  //lbltitestcom.Height := lbltitestent.Height;

  //lbltitcepcom.Left := lbltitcepent.Left;
  //lbltitcepcom.top := lbltitcepent.top;
  //lbltitcepcom.width := lbltitcepent.width;
  //lbltitcepcom.Height := lbltitcepent.Height;

  //lbltittelcom.Left := lbltittelent.Left;
  //lbltittelcom.top := lbltittelent.top;
  //lbltittelcom.width := lbltittelent.width;
  //lbltittelcom.Height := lbltittelent.Height;

  //lbltittel.Left := lbltitendent.Left;
  //lbltittel.top := lbltitendent.top;

  //lbltitlimite.Left := lbltitendent.Left;
  //lbltitlimite.top := lbltitendent.top;

  //lbltitemail.Left := lbltitcompent.Left;
  //lbltitemail.top := lbltitcompent.top;

  //lbltitprazo.Left := lbltitcompent.Left;
  //lbltitprazo.top := lbltitcompent.top;
  //lbltitdia.Top := lbltitcompent.top;

  //lbltitsite.Left := lbltitcident.Left;
  //lbltitsite.top := lbltitcident.top;


  //lbltitcontato.Left := lbltittelent.Left;
  //lbltitcontato.top := lbltittelent.top;

  //

  //ediendcom.Left := ediendent.Left;
  //ediendcom.top := ediendent.top;
  //ediendcom.width := ediendent.width;
  //ediendcom.Height := ediendent.Height;

  //edicompcom.Left := edicompent.Left;
  //edicompcom.top := edicompent.top;
  //edicompcom.width := edicompent.width;
 // edicompcom.Height := edicompent.Height;

  //edibaicom.Left := edibaient.Left;
  //edibaicom.top := edibaient.top;
  //edibaicom.width := edibaient.width;
  //edibaicom.Height := edibaient.Height;

  //edicidcom.Left := edicident.Left;
  //edicidcom.top := edicident.top;
  //edicidcom.width := edicident.width;
  //edicidcom.Height := edicident.Height;

  //ediestcom.Left := ediestent.Left;
  //ediestcom.top := ediestent.top;
  //ediestcom.width := ediestent.width;
  //ediestcom.Height := ediestent.Height;

  //edicepcom.Left := edicepent.Left;
  //edicepcom.top := edicepent.top;
  //edicepcom.width := edicepent.width;
  //edicepcom.Height := edicepent.Height;

  //editelcom.Left := editelent.Left;
  //editelcom.top := editelent.top;
  //editelcom.width := editelent.width;
  //editelcom.Height := editelent.Height;

  //edidddecob.Left := edidddeent.Left;
  //edidddecob.top := edidddeent.top;
  //edidddecob.width := edidddeent.width;
  //edidddecob.Height := edidddeent.Height;

  //edidddecom.Left := edidddeent.Left;
  //edidddecom.top := edidddeent.top;
  //edidddecom.width := edidddeent.width;
  //edidddecom.Height := edidddeent.Height;

  pnlsalvarficha.Top := pnllista.Top;
  pnlsalvarficha.Left := pnllista.Left;
  dbgclientes.Align := alclient;
  pnlficha.Align := alclient;

   tabela := 'Clientes';

   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Nome');
   cbxclassificar.Items.Add('Código');
   cbxclassificar.Items.Add('Fantasia');

   //if frmdados.cds_indice.FieldByName('id1').asString  <> '' then
   //   begin
   //     lblid1.Caption :=  frmdados.cds_indice.FieldByName('id1').asString;
   //     lblid1.Visible := true;
   //     ediid1.Visible := true;
   //   end;
   //endi

   spdlimpar.Click;

end;

procedure TfrmPesqclip.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqclip.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqclip.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqclip.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqclip.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmPesqclip:=nil;
  form_ativo := '';

end;

procedure TfrmPesqclip.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqclip.dbgClientesKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
      frmdados.Cds_Clientes.Post;
   //endi
//endi
end;

procedure TfrmPesqclip.dbgClientesEnter(Sender: TObject);
begin
tabela := 'Clientes';
end;

procedure TfrmPesqclip.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqclip.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqclip.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc, smesani : String;
  iSituCadCli, iTipoCli, icTransp :integer;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_Clientes.Active := false;
      Cds_ClientesCsitCad.DefaultExpression := '1';
      Cds_ClientesDtCad.DefaultExpression := quotedstr(datetostr(date));
      Cds_Clientessohmarketing.DefaultExpression := QuotedStr('F');
    end;
  //end;

  if cbxclassificar.Text = 'Nome' then
     sClassificar := 'Nome';
  //endi
  if cbxclassificar.Text = 'Código' then
     sClassificar := 'Codigo';
  //endi
  if cbxclassificar.Text = 'Fantasia' then
     sClassificar := 'Fantasia';
  //endi

  // inicializando variáveis comuns
  sCompo := '(sohmarketing = '+quotedstr('F')+')';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';
  iSituCadCli := 0;
  iTipoCli := 0;
  smesani := '';
  ictransp := 0;


  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;

  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;

  iSituCadCli := frmdados.Cds_Temp.fieldbyname('cod1').asInteger;
  iTipoCli := frmdados.Cds_Temp.fieldbyname('cod2').asInteger;
  ictransp := frmdados.Cds_Temp.fieldbyname('cod3').asInteger;

  smesani := edimesani.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoI
  if ( sCodigoI <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / Código de.: ' + sCodigoI;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / Código de.: ' + sCodigoI;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sCodigoF <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / até: ' + sCodigoF;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / até: ' + sCodigoF;
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de Situação
  if ( iSituCadCli > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cSitCad = ' + inttostr( iSituCadCli ) + ')';
            sTitRel := sTitRel + ' / Situação.: ' + frmdados.Cds_SituCadCli.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cSitCad = ' + inttostr( iSituCadCli ) + ')';
            sTitRel := sTitRel + ' / Situação.: ' + frmdados.Cds_SituCadCli.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de Situação
  if ( iTipoCli > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cTipoCli = ' + inttostr( iTipoCli ) + ')';
            sTitRel := sTitRel + ' / Tipo Cliente.: ' + frmdados.Cds_TipoCli.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cTipoCli = ' + inttostr( iTipoCli ) + ')';
            sTitRel := sTitRel + ' / Tipo Cliente.: ' + frmdados.Cds_TipoCli.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de Situação
  if ( icTransp > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cTransp = ' + inttostr( icTransp ) + ')';
            sTitRel := sTitRel + ' / Transportador.: ' + frmdados.Cds_transportadores.fieldbyname('nome').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cTransp = ' + inttostr( icTransp ) + ')';
            sTitRel := sTitRel + ' / Transportador.: ' + frmdados.Cds_Transportadores.fieldbyname('nome').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if sClassificar <> 'Codigo' then
     begin
        if ( sDesc <> '' ) then
           begin
             if (sCompo = '') then
                begin
                  sCompo := '( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end
             else
                begin
                  sCompo := sCompo + 'and ( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end;
             //endif
           end;
        //endif
     end;
  //endi
  // executando o filtro

  //Bloco de filtro de data nasc
  if ( smesani <> '' ) then
     begin


       if (sCompo = '') then
          begin
            //sCompo := '( extract ( month from datanasc) = ' + copy(edipsqdatanasc.Text,4,2)+') and ( extract ( day from datanasc ) = '+  copy(edipsqdatanasc.Text,1,2)    + ')';
            sCompo := '( extract ( month from datanasc) = ' + edimesani.Text+')';
            sTitRel := sTitRel + ' / mês aniversário.: ' + edimesani.Text ;

          end
       else
          begin
            //sCompo := sCompo + 'and  (extract ( month from datanasc) = ' + copy(edipsqdatanasc.Text,4,2)+') and ( extract ( day from datanasc ) = '+  copy(edipsqdatanasc.Text,1,2)  + ')';
            sCompo := sCompo + 'and  (extract ( month from datanasc) = ' + edimesani.Text+')';
            sTitRel := sTitRel + ' / mês aniversário.: ' + edimesani.Text ;
          end;
       //endif


     end;
  //endif

  try
    with frmdados.Dbx_Clientes do
       begin



         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from Clientes where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from Clientes order by '+sClassificar);
         //endi

         //showmessage(sql.Text);

         active := true;



         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from Clientes where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   active := true;
                 end;
              //endi
            end;
         //endi
       end;
    //endi
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_Clientes.Active := true;

      if Cds_Clientes.RecordCount = 0 then
         begin
           bloqueiabotoes;
         end
      else
         begin
           desbloqueiabotoes;
         end;
      //endi

    end;
  //end;

end;

procedure TfrmPesqclip.spdlimparClick(Sender: TObject);
begin

  tabela := 'Temp';
  if frmdados.Cds_Temp.State in [dsinsert,dsedit] then
     begin
       frmdados.Cds_Temp.Cancel;  
     end;
  //endi
  frmdados.Cds_Temp.Append;


  edicodigoi.Text := '';
  edicodigof.Text := '';

  edimesani.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';

  cbxclassificar.Text := 'Nome';

  ediid1.Text := '';

  spdfiltrar.Click;

  tabela := 'Clientes';
end;

procedure TfrmPesqclip.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   begin
     frmdados.cds_Clientes.Locate(frmpesqclip.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
   end;
//endi
end;

procedure TfrmPesqclip.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqclip.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqclip.edidescKeyPress(Sender: TObject; var Key: Char);
begin
edicodigoi.Text := '';
edicodigof.Text := '';
edimesani.Text := '';


if sClassificar = 'Codigo' then
   If not( key in['0'..'9',#8] ) then
      begin
        beep;
        key:=#0;
        exit;
      end;
   //endi
//endi


if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi

if pctcli.TabIndex = 4 then
  mostrarvc;
//endi

end;

procedure TfrmPesqclip.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     frmdados.cds_Clientes.Locate('Codigo',ediCodigoi.text,[]);
     SelectNext(ActiveControl,True,True);
     key := #0;
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi
if itcampo > 9 then
   key := #0;
//endi

end;

procedure TfrmPesqclip.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi
if itcampo > 9 then
   key := #0;
//endi

end;

procedure TfrmPesqclip.dbgClientesExit(Sender: TObject);
begin
  if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
     frmdados.Cds_Clientes.Post;
  //endi
end;

procedure TfrmPesqclip.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqclip.AlternaF;
begin
dbgclientes.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;
pctcli.TabIndex := 0;
mostrararq_ext;
//if frmdados.Cds_clientes.FieldByName('reducaoicms').AsString = 'T' then
//   begin
//     ckbreducaoicms.Checked := true;
//   end
//else
//   begin
//     ckbreducaoicms.Checked := false;
//   end;
//endif

if (sopcao <> 'I') then
   begin
     mostrard;
   end
else
   begin
     limpard;
   end;
//endi

end;

procedure TfrmPesqclip.AlternaL;
begin
dbgclientes.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;


procedure TfrmPesqclip.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_Clientes.Append;
edidtcad.SetFocus;

end;

procedure TfrmPesqclip.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_Clientes.Edit;
edidtcad.SetFocus;

end;

procedure TfrmPesqclip.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
spdgravar.Glyph := spdexcluir173.Glyph;

spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;


bloqueiacampos;
spdant.Enabled := false;
spdprox.Enabled := false;
edidesc.Enabled := false;
cbxclassificar.Enabled := false;
edicodigoi.Enabled := false;
edicodigof.Enabled := false;
spdfiltrar.Enabled := false;
spdlimpar.Enabled  := false;
edimesani.Enabled := false;
AlternaF;

end;

procedure TfrmPesqclip.bloqueiacampos;
begin
pnlcab.Enabled := false;
tabinf.Enabled := false;
tabent.Enabled := false;
//tabcob.Enabled := false;
//tabcom.Enabled := false;
tabobs.Enabled := false;
end;

procedure TfrmPesqclip.desbloqueiacampos;
begin
pnlcab.Enabled := true;
tabinf.Enabled := true;
tabent.Enabled := true;
//tabcob.Enabled := true;
//tabcom.Enabled := true;
tabobs.Enabled := true;
spdant.Enabled := true;
spdprox.Enabled := true;
edidesc.Enabled := true;
cbxclassificar.Enabled := true;
edicodigoi.Enabled := true;
edicodigof.Enabled := true;
spdfiltrar.Enabled := true;
spdlimpar.Enabled  := true;
edimesani.Enabled := true;
end;

procedure TfrmPesqclip.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;

end;

procedure TfrmPesqclip.sPdGravarClick(Sender: TObject);
begin
if (edinome.Text = '') and (frmdados.Cds_Indice.FieldByName('nomecliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento do campo nome');
     edinome.SetFocus;
     exit;
   end;
//endi
if (ediie.Text = '') and (frmdados.Cds_Indice.FieldByName('rgcliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento do campo R.G. / Insc. Estadual');
     ediie.SetFocus;
     exit;
   end;
//endi
if (edicpf.Text = '') and (frmdados.Cds_Indice.FieldByName('cpfcliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento do campo C.P.F / C.N.P.J');
     edicpf.SetFocus;
     exit;
   end;
//endi
if (editelefones1.Text = '') and (frmdados.Cds_Indice.FieldByName('fonecliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento do campo telefones');
     editelefones1.SetFocus;
     exit;
   end;
//endi

frmdados.dbx_Exec.Active := false;
frmdados.dbx_Exec.SQL.Clear;
frmdados.dbx_Exec.SQL.Add('Select count(*) as totreg from equipcli where ccli = '+inttostr(frmdados.cds_clientes.fieldbyname('codigo').asInteger) );
frmdados.dbx_Exec.Active := true;

if (frmdados.Dbx_Exec.FieldByName('totreg').asInteger  = 0 ) and (frmdados.Cds_Indice.FieldByName('id1cliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento de pelo menos um(a) '+frmdados.Cds_Indice.fieldbyname('tpeqpos').asString);
     exit;
   end;
//endi

tabela := 'Clientes';
if sOpcao <> 'E' then
   begin
     if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
        frmdados.Cds_Clientes.Post;
     //endi
   end
else
   begin
     frmdados.Cds_Clientes.Delete;
   end;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_Clientes.RecordCount = 0 then
       begin
         bloqueiabotoes;
       end
    else
       begin
         desbloqueiabotoes;
       end;
    //endi
  end;
//end;


end;

procedure TfrmPesqclip.spdcancelar2310Click(Sender: TObject);
begin
tabela := 'Clientes';
if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
   frmdados.Cds_Clientes.Cancel;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_Clientes.RecordCount = 0 then
       begin
         bloqueiabotoes;
       end
    else
       begin
         desbloqueiabotoes;
       end;
    //endi
  end;
//end;

end;

procedure TfrmPesqclip.edidescExit(Sender: TObject);
begin
tabela := 'Clientes';
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Clientes.Edit;
//endi


end;

procedure TfrmPesqclip.spdantClick(Sender: TObject);
begin
tabela := 'Clientes';
frmdados.Cds_Clientes.Prior;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Clientes.Edit;
//endi
if pctcli.TabIndex = 4 then
  mostrarvc;
//endi
mostrard;
end;

procedure TfrmPesqclip.spdproxClick(Sender: TObject);
begin
tabela := 'Clientes';
frmdados.Cds_Clientes.Next;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Clientes.Edit;
//endi
if pctcli.TabIndex = 4 then
  mostrarvc;
//endi
mostrard;
end;

procedure TfrmPesqclip.edicodigoiChange(Sender: TObject);
begin
itcampo := length(edicodigoi.Text);
//if edicodigoi.Text <> '' then
//   frmdados.cds_Clientes.Locate('Codigo',ediCodigoi.text,[loPartialKey,loCaseInsensitive]);
//endi
//cbxclassificar.ItemIndex := 1;
end;

procedure TfrmPesqclip.cbxclassificarChange(Sender: TObject);
begin
if cbxclassificar.ItemIndex = 0 then
   begin
     sClassificar := 'Nome';
     spdfiltrar.Click;
   end;
//endi
if cbxclassificar.ItemIndex = 1 then
   begin
     sClassificar := 'Codigo';
     spdfiltrar.Click;
   end;
//endi
if cbxclassificar.ItemIndex = 2 then
   begin
     sClassificar := 'Fantasia';
     spdfiltrar.Click;
   end;
//endi


end;

procedure TfrmPesqclip.edicodigofChange(Sender: TObject);
begin
itcampo := length(edicodigof.Text);

end;

procedure TfrmPesqclip.edicodigoiEnter(Sender: TObject);
begin
itcampo := 0;
edicodigoi.Text := '';
end;

procedure TfrmPesqclip.edicodigofEnter(Sender: TObject);
begin
itcampo := 0;
edicodigof.Text := '';

end;

procedure tfrmPesqclip.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdcodbar175.Enabled := false;
  spdrelatorios176.Enabled := false;
  spdilustracao177.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
end;

procedure tfrmPesqclip.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdcodbar175.Enabled := true;
  spdrelatorios176.Enabled := true;
  spdilustracao177.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
end;

procedure TfrmPesqclip.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.EDIIEKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.EDINOMEKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.EDIFANTKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.editelefones1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.ediendentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.ediendcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.ediendcomKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.dbgClientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmPesqclip.SpeedButton1Click(Sender: TObject);
begin
//frmpesqeqp := tfrmpesqeqp.create(self);
//frmpesqeqp.showmodal;
//frmpesqeqp.free;
end;

procedure TfrmPesqclip.ediid1KeyPress(Sender: TObject; var Key: Char);
begin
if ediid1.Text = '' then
   exit;
//endi
if key = #13 then
   begin
     with frmdados do
        begin
          dbx_equipcli.Active := false;
          dbx_equipcli.SQL.Clear;
          dbx_equipcli.SQL.Add('Select * from equipcli where id1 = '+quotedstr(ediid1.Text));
          dbx_equipcli.Active := true;
          if dbx_equipcli.RecordCount = 0 then
             begin
               showmessage(frmdados.cds_indice.FieldByName('id1').asString+' '+  ediid1.Text  +' '+' Não está cadastrado');
             end
          else
             begin
               cds_Clientes.Locate('codigo', inttostr(dbx_equipcli.fieldbyname('ccli').asInteger),[]);
               if pctcli.TabIndex = 4 then
                  begin
                    mostrarvc;
                    cds_EquipCli.Locate('ID1', ediid1.Text ,[]);
                  end;
               //endi



             end;
          //endi
        end;
     //endi

   end;
//endi
end;

procedure TfrmPesqclip.edidtcadKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.EDIDTPESPCERASAKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.EDIDATANASCKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXTIPOCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXSITUCLIKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.edidddfsKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.edidddeentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.edidddecobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.edidddecomKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.dbgClientesDblClick(Sender: TObject);
begin

if spdalterar172.Enabled then
   spdalterar172.Click;
//endi

end;

procedure TfrmPesqclip.spdincluir172Click(Sender: TObject);
begin
//tabela := 'EquipCli';
//dbgequipcli.SetFocus;
//frmdados.Cds_equipcli.Append;

end;

procedure TfrmPesqclip.spdexcluir174Click(Sender: TObject);
begin
tabela := 'EquipCli';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_equipcli.Delete;

   end;
//endi

end;

procedure TfrmPesqclip.dbgequipcliEnter(Sender: TObject);
begin
tabela := 'EquipCli';
end;

procedure TfrmPesqclip.tabobjShow(Sender: TObject);
begin
  mostrarvc;
end;

procedure tfrmPesqclip.mostrarvc;
begin

with frmdados do
  begin
    cds_equipcli.Active := false;
    cds_equipcliccli.DefaultExpression := inttostr(cds_clientes.fieldbyname('codigo').asInteger);
    dbx_equipcli.Active := false;
    dbx_equipcli.SQL.Clear;
    dbx_equipcli.SQL.Add('Select * from equipcli where ccli = '+inttostr(cds_clientes.fieldbyname('codigo').asInteger) );
    dbx_equipcli.Active := true;
    cds_equipcli.Active := true;
  end;
//endi


end;


procedure TfrmPesqclip.dbgequipcliKeyPress(Sender: TObject; var Key: Char);
var
  caracter : string; // variável q vai receber a letra em maiúsculo

begin

caracter := UpperCase(key); // passa a letra para maiúsculo
key := caracter[1]; // passa a letra pra ser escrita no memo

if key = #13 then
   if frmdados.Cds_EquipCli.State in [dsinsert, dsedit] then
      frmdados.Cds_EquipCli.Post;
   //endi
//endi

end;

procedure TfrmPesqclip.cbxtipoclibEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqclip.cbxsituclibEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqclip.cbxsituclibExit(Sender: TObject);
begin
tabela := 'Clientes';
end;

procedure TfrmPesqclip.cbxtipoclibExit(Sender: TObject);
begin
tabela := 'Clientes';
end;

procedure TfrmPesqclip.spdrelatorios176Click(Sender: TObject);
begin


frmurelanip := tfrmurelanip.create(self);
frmurelanip.relatorio.preview;
frmurelanip.free;


end;

procedure TfrmPesqclip.cbxnometranspKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.DBLookupComboBox4KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.DBLookupComboBox5KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.DBLookupComboBox6KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.spdinsfotoClick(Sender: TObject);
begin
  if opdabrirfig.Execute then
     begin
       frmdados.cds_clientes.Edit;
       frmdados.cds_clientesfoto.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_clientesfilename.AsString := extractfilename(opdabrirfig.FileName);
       mostrararq_ext;
     end;
  //endi

end;

procedure TfrmPesqclip.spdapafotoClick(Sender: TObject);
begin
  frmdados.Cds_clientes.Edit;
  frmdados.cds_clientesfoto.AsVariant := '';
  mostrararq_ext;

end;


procedure tfrmPesqclip.mostrararq_ext;
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

procedure tfrmPesqclip.exibidadosadc;
  begin

    tabent.Caption := frmdados.Cds_Indice.FieldByName('titendent').asString;
    //tabcob.Caption := frmdados.Cds_Indice.FieldByName('titendcob').asString;
    //tabcom.Caption := frmdados.Cds_Indice.FieldByName('titendcom').asString;
    //tabobj.Caption := frmdados.Cds_Indice.fieldbyname('tpeqpos').asString;

    if frmdados.Cds_Indice.FieldByName('mostraendcob').asString = 'T' then
       begin
         //tabcob.tabVisible := true;
       end
    else
       begin
         //tabcob.tabVisible := false;
       end;
    //endi

    if frmdados.Cds_Indice.FieldByName('mostraendcom').asString = 'T' then
       begin
         //tabcom.tabVisible := true;
       end
    else
       begin
         //tabcom.tabVisible := false;
       end;
    //endi

    if frmdados.Cds_Indice.FieldByName('mostraendent').asString = 'T' then
       begin
         tabent.tabVisible := true;
       end
    else
       begin
         tabent.tabVisible := false;
       end;
    //endi

    if frmdados.Cds_Indice.FieldByName('mostrafotocli').asString = 'T' then
       begin
         bvlfoto.Visible := true;
         spdinsfoto.Visible := true;
         spdapafoto.Visible := true;
         imgfoto.Visible := true;
       end
    else
       begin
         bvlfoto.Visible := false;
         spdinsfoto.Visible := false;
         spdapafoto.Visible := false;
         imgfoto.Visible := false;
       end;
    //endi

    if frmdados.Cds_Indice.FieldByName('tpeqpos').asString = '' then
       begin
         //tabobj.TabVisible  := false
       end
    else
       begin
         //tabobj.TabVisible := true;
       end;
    //endi



  end;
//endi

procedure tfrmPesqclip.mostrard;
begin
  with frmdados do
    begin
      cbxoutinf1.Text := cds_clientes.fieldbyname('outinf1').asString;
      cbxoutinf2.Text := cds_clientes.fieldbyname('outinf2').asString;
      cbxoutinf3.Text := cds_clientes.fieldbyname('outinf3').asString;
      cbxoutinf4.Text := cds_clientes.fieldbyname('outinf4').asString;
      cbxoutinf5.Text := cds_clientes.fieldbyname('outinf5').asString;
      cbxoutinf6.Text := cds_clientes.fieldbyname('outinf6').asString;
      cbxoutinf7.Text := cds_clientes.fieldbyname('outinf7').asString;
      cbxoutinf8.Text := cds_clientes.fieldbyname('outinf8').asString;
      cbxoutinf9.Text := cds_clientes.fieldbyname('outinf9').asString;
      cbxoutinf10.Text := cds_clientes.fieldbyname('outinf10').asString;
    end;
  //endi

end;

procedure tfrmPesqclip.limpard;
begin
  cbxoutinf1.Text := '';
  cbxoutinf2.Text := '';
  cbxoutinf3.Text := '';
  cbxoutinf4.Text := '';
  cbxoutinf5.Text := '';
  cbxoutinf6.Text := '';
  cbxoutinf7.Text := '';
  cbxoutinf8.Text := '';
  cbxoutinf9.Text := '';
  cbxoutinf10.Text := '';

end;




procedure TfrmPesqclip.cbxoutinf1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF9KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqclip.CBXOUTINF10KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
