unit upesqeqp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqEQP = class(TForm)
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
    dbgequipcli: TDBGrid;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    edicodprod: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    imgfichadetalhe: TImageList;
    spdIncluir171: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    spdExcluir173: TSpeedButton;
    spdrelatorios176: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgequipcliKeyPress(Sender: TObject; var Key: Char);
    procedure dbgequipcliEnter(Sender: TObject);
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
    procedure dbgequipcliExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure dbgequipcliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdrelatorios176Click(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:String;
  end;

var
  frmPesqEQP: TfrmPesqEQP;

implementation

uses uGeral, uPrincipal, uDados , uMReqp;

{$R *.DFM}

procedure TfrmPesqEQP.FormShow(Sender: TObject);
var
   vardir: String;
   x:integer;
begin
   vardir := ExtractFilePath(Application.ExeName);
   x:=0;
   with frmdados do
     begin
       if cds_indice.FieldByName('ID1').asString <> '' then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'ID1';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('ID1').asString;
            x := x + 1;
          end;
       //endi
       if cds_indice.FieldByName('ID2').asString <> '' then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'ID2';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('ID2').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC1').asString <> '') and (cds_indice.FieldByName('TDESC1').asString = 'T') then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC1';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC1').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '') and (cds_indice.FieldByName('TDESC2').asString = 'T') then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC2';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC2').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC3').asString <> '') and (cds_indice.FieldByName('TDESC3').asString = 'T') then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC3';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC3').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '') and (cds_indice.FieldByName('TDESC4').asString = 'T') then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC4';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC4').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC5').asString <> '') and (cds_indice.FieldByName('TDESC5').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC5';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC5').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') and (cds_indice.FieldByName('TDESC6').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC6';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC6').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') and (cds_indice.FieldByName('TDESC7').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC7';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC7').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC8').asString <> '') and (cds_indice.FieldByName('TDESC8').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC8';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC8').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC9').asString <> '') and (cds_indice.FieldByName('TDESC9').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC9';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC9').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC10').asString <> '') and (cds_indice.FieldByName('TDESC10').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC10';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC10').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC11').asString <> '') and (cds_indice.FieldByName('TDESC11').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC11';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC11').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC12').asString <> '') and (cds_indice.FieldByName('TDESC12').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC12';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC12').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC13').asString <> '') and (cds_indice.FieldByName('TDESC13').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC13';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC13').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC14').asString <> '') and (cds_indice.FieldByName('TDESC14').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC14';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC14').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC15').asString <> '') and (cds_indice.FieldByName('TDESC15').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC15';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC15').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC16').asString <> '') and (cds_indice.FieldByName('TDESC16').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC16';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC16').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC17').asString <> '') and (cds_indice.FieldByName('TDESC17').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC17';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC17').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC18').asString <> '') and (cds_indice.FieldByName('TDESC18').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC18';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC18').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC19').asString <> '') and (cds_indice.FieldByName('TDESC19').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC19';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC19').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC20').asString <> '') and (cds_indice.FieldByName('TDESC20').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC20';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC20').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC21').asString <> '') and (cds_indice.FieldByName('TDESC21').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC21';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC21').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC22').asString <> '') and (cds_indice.FieldByName('TDESC22').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC22';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC22').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC23').asString <> '') and (cds_indice.FieldByName('TDESC23').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC23';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC23').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC24').asString <> '') and (cds_indice.FieldByName('TDESC24').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC24';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC24').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC25').asString <> '') and (cds_indice.FieldByName('TDESC25').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC25';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC25').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC26').asString <> '') and (cds_indice.FieldByName('TDESC26').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC26';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC26').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC27').asString <> '') and (cds_indice.FieldByName('TDESC27').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC27';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC27').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC28').asString <> '') and (cds_indice.FieldByName('TDESC28').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC28';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC28').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC29').asString <> '') and (cds_indice.FieldByName('TDESC29').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC29';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC29').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC30').asString <> '') and (cds_indice.FieldByName('TDESC30').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC30';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC30').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC31').asString <> '') and (cds_indice.FieldByName('TDESC31').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC31';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC31').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC32').asString <> '') and (cds_indice.FieldByName('TDESC32').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC32';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC32').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC33').asString <> '') and (cds_indice.FieldByName('TDESC33').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC33';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC33').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC34').asString <> '') and (cds_indice.FieldByName('TDESC34').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC34';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC34').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC35').asString <> '') and (cds_indice.FieldByName('TDESC35').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC35';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC35').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC36').asString <> '') and (cds_indice.FieldByName('TDESC36').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC36';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC36').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC37').asString <> '') and (cds_indice.FieldByName('TDESC37').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC37';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC37').asString;
            x := x + 1;
          end;
       //endi
       if (cds_indice.FieldByName('DESC38').asString <> '') and (cds_indice.FieldByName('TDESC38').asString = 'T')then
          begin
            dbgequipcli.Columns.Add;
            dbgequipcli.Columns[x].FieldName  := 'DESC38';
            dbgequipcli.Columns[x].Title.caption     := cds_indice.FieldByName('DESC38').asString;
            x := x + 1;
          end;
       //endi
     end;
   //endi



   {

   for x := 0 to dbgequipcli.Columns.Count - 1 do
     begin
       dbgequipcli.Columns[x].Visible := false;

     end;
   //endi


   dbgequipcli.Columns[dbgequipcli.Columns.Count - 1].Visible := true;

   }



   cbxclassificar.Items.Clear;

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
       if (cds_indice.FieldByName('DESC1').asString <> '') and (cds_indice.FieldByName('TDESC1').asString = 'T') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC1').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC2').asString <> '') and (cds_indice.FieldByName('TDESC2').asString = 'T') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC2').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC3').asString <> '') and (cds_indice.FieldByName('TDESC3').asString = 'T') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC3').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC4').asString <> '') and (cds_indice.FieldByName('TDESC4').asString = 'T') then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC4').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC5').asString <> '') and (cds_indice.FieldByName('TDESC5').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC5').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC6').asString <> '') and (cds_indice.FieldByName('TDESC6').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC6').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC7').asString <> '') and (cds_indice.FieldByName('TDESC7').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC7').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC8').asString <> '') and (cds_indice.FieldByName('TDESC8').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC8').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC9').asString <> '') and (cds_indice.FieldByName('TDESC9').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC9').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC10').asString <> '') and (cds_indice.FieldByName('TDESC10').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC10').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC11').asString <> '') and (cds_indice.FieldByName('TDESC11').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC11').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC12').asString <> '') and (cds_indice.FieldByName('TDESC12').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC12').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC13').asString <> '') and (cds_indice.FieldByName('TDESC13').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC13').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC14').asString <> '') and (cds_indice.FieldByName('TDESC14').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC14').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC15').asString <> '') and (cds_indice.FieldByName('TDESC15').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC15').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC16').asString <> '') and (cds_indice.FieldByName('TDESC16').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC16').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC17').asString <> '') and (cds_indice.FieldByName('TDESC17').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC17').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC18').asString <> '') and (cds_indice.FieldByName('TDESC18').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC18').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC19').asString <> '') and (cds_indice.FieldByName('TDESC19').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC19').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC20').asString <> '') and (cds_indice.FieldByName('TDESC20').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC20').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC21').asString <> '') and (cds_indice.FieldByName('TDESC21').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC21').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC22').asString <> '') and (cds_indice.FieldByName('TDESC22').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC22').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC23').asString <> '') and (cds_indice.FieldByName('TDESC23').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC23').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC24').asString <> '') and (cds_indice.FieldByName('TDESC24').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC24').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC25').asString <> '') and (cds_indice.FieldByName('TDESC25').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC25').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC26').asString <> '') and (cds_indice.FieldByName('TDESC26').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC26').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC27').asString <> '') and (cds_indice.FieldByName('TDESC27').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC27').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC28').asString <> '') and (cds_indice.FieldByName('TDESC28').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC28').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC29').asString <> '') and (cds_indice.FieldByName('TDESC29').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC29').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC30').asString <> '') and (cds_indice.FieldByName('TDESC30').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC30').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC31').asString <> '') and (cds_indice.FieldByName('TDESC31').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC31').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC32').asString <> '') and (cds_indice.FieldByName('TDESC32').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC32').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC33').asString <> '') and (cds_indice.FieldByName('TDESC33').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC33').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC34').asString <> '') and (cds_indice.FieldByName('TDESC34').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC34').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC35').asString <> '') and (cds_indice.FieldByName('TDESC35').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC35').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC36').asString <> '') and (cds_indice.FieldByName('TDESC36').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC36').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC37').asString <> '') and (cds_indice.FieldByName('TDESC37').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC37').asString);
          end;
       //endi
       if (cds_indice.FieldByName('DESC38').asString <> '') and (cds_indice.FieldByName('TDESC38').asString = 'T')then
          begin
            cbxclassificar.Items.Add(cds_indice.FieldByName('DESC38').asString);
          end;
       //endi
     end;
   //endi





   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqEQP.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqEQP.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqEQP.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqEQP.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqEQP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmPesqeqp:=nil;
  form_ativo := '';

end;

procedure TfrmPesqEQP.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqEQP.dbgequipcliKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_equipcli.State in [dsinsert, dsedit] then
      frmdados.Cds_equipcli.Post;
   //endi
//endi
end;

procedure TfrmPesqEQP.dbgequipcliEnter(Sender: TObject);
begin
tabela := 'EquipCli';
end;

procedure TfrmPesqEQP.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqEQP.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqEQP.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
  x:integer;
begin

  with frmdados do
    begin
      Cds_equipcli.Active := false;
      cds_equipcliccli.DefaultExpression := inttostr(cds_clientes.fieldbyname('codigo').asInteger);
    end;
  //end;

  //showmessage(cbxclassificar.text);

  //if cbxclassificar.ItemIndex = 0   then
  //   sClassificar := 'ID1';
  //endi
  //if cbxclassificar.ItemIndex = 1   then
  //   sClassificar := 'ID2';
  //endi

  //for x := 0 to cbxclassificar.Items.Count - 1 do
  //  begin


  //  end;
  //endi


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






  //if cbxclassificar.ItemIndex = 2 then
  //   sClassificar := 'DESC1';
  //endi

  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi

  // inicializando variáveis comuns
  sCompo := '(ccli = '+inttostr(frmdados.cds_clientes.fieldbyname('codigo').asInteger)+')';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;


  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;


  sDesc := edidesc.Text;

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

  try
    with frmdados.Dbx_equipcli do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from equipcli where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from equipcli order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from equipcli where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_equipcli.Active := true;
    end;
  //end;
end;

procedure TfrmPesqEQP.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqEQP.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_equipcli.Locate(frmpesqeqp.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqEQP.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqEQP.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqEQP.edidescKeyPress(Sender: TObject; var Key: Char);
begin
edicodigoi.Text := '';
edicodigof.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi
end;

procedure TfrmPesqEQP.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
//   end;
//endi


if key = #13 then
   begin

     if edicodigoi.Text <> '' then
        if not frmdados.cds_equipcli.Locate('codigo',edicodigoi.text,[])then
           showmessage('Código não Encontrado...');
        //endi
     //endi



//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
   end;
//endi




If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqEQP.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
//if key = #13 then
//   begin
//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
//   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqEQP.dbgequipcliExit(Sender: TObject);
begin
  if frmdados.Cds_equipcli.State in [dsinsert, dsedit] then
     frmdados.Cds_equipcli.Post;
  //endi
end;

procedure TfrmPesqEQP.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqEQP.spdIncluir171Click(Sender: TObject);
begin
tabela := 'EquipCli';
dbgequipcli.SetFocus;
frmdados.Cds_equipcli.Append;
end;

procedure TfrmPesqEQP.spdantClick(Sender: TObject);
begin
  frmdados.Cds_equipcli.Prior;

end;

procedure TfrmPesqEQP.spdproxClick(Sender: TObject);
begin
frmdados.Cds_equipcli.Next;
end;

procedure TfrmPesqEQP.spdExcluir173Click(Sender: TObject);
begin
tabela := 'EquipCli';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin

     frmdados.Cds_equipcli.Delete;

   end;
//endi

end;

procedure TfrmPesqEQP.dbgequipcliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqEQP.spdrelatorios176Click(Sender: TObject);
begin
    frmMReqp:=tfrmMReqp.create(self);
    frmMReqp.Showmodal;
    frmMReqp.Free;
end;

end.
