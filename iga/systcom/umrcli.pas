unit umrcli;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, SayPrint, SqlExpr, Variants,
  ToolWin, ComCtrls, QPrinters;

type
  TfrmMRcli = class(TForm)
    rgbtiporel: TRadioGroup;
    sPdGravar: TSpeedButton;
    spdSair: TSpeedButton;
    tabprodutos: TTable;
    tabEstCri: TTable;
    tabEstCricodigo: TFloatField;
    tabEstCrinome: TStringField;
    tabEstCriQUA: TFloatField;
    tabEstCriUNI: TStringField;
    tabEstCriCBAR: TStringField;
    tabEstCriCAUX: TStringField;
    tabEstCriCFAB: TStringField;
    tabEstCriESTMIN: TFloatField;
    tabEstCriESTMAX: TFloatField;
    tabEstCriRESERVA: TFloatField;
    tabEstCriSALDOEST: TFloatField;
    tabEstCriCOMPRA: TFloatField;
    tabmarcas: TTable;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    imgdocno: TImage;
    imgdocin: TImage;
    Timer1: TTimer;
    Label8: TLabel;
    Bevel1: TBevel;
    SayPrint: TSayPrint;
    procedure sPdGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rgbtiporelClick(Sender: TObject);
    procedure spdSairClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Impetq;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMRcli: TfrmMRcli;

implementation

uses uGeral, uPrincipal, uDados, urelani, urelcli ,urelclis ,uetiqcli ;

{$R *.DFM}

procedure TfrmMRcli.sPdGravarClick(Sender: TObject);
  var
    vardir:String;
begin
VarDir := Extractfilepath(application.exename);
if rgbtiporel.ItemIndex = -1 then
   begin
     Showmessage('Antes de clicar nesse bot„o, selecione o relatÛrio desejado');
     exit;
   end;
//endi

if rgbtiporel.ItemIndex = 0 then
   begin
     frmrelani := tfrmrelani.Create(self);
     frmrelani.relatorio.Preview;
     frmrelani.Free;
   end;
//endi

if rgbtiporel.ItemIndex = 3 then
   begin
   frmetiqcli:=tfrmetiqcli.create(self);
   frmetiqcli.etiqueta.preview;
   frmetiqcli.free
   end;
//endi

if rgbtiporel.ItemIndex = 2 then
   begin
   frmrelclis := tfrmrelclis.create(self);
   frmrelclis.relatorio.preview;
   frmrelclis.free;
   end;
//endi

if rgbtiporel.ItemIndex = 1 then
   begin
     frmrelcli := tfrmrelcli.create(self);
     frmrelcli.relatorio.preview;
     frmrelcli.free;
   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin
   end;
//endi


end;

procedure TfrmMRcli.FormShow(Sender: TObject);
begin
imgdocno.Visible := true;
imgdocin.Visible := false;
spdgravar.Enabled := false;
timer1.Enabled := true;
end;

procedure TfrmMRcli.rgbtiporelClick(Sender: TObject);
begin
spdgravar.Enabled := true;

end;

procedure TfrmMRcli.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMRcli.Timer1Timer(Sender: TObject);
begin
if imgdocno.Visible then
   begin
     imgdocno.Visible := false;
     imgdocin.Visible := true;
   end
else
   begin
     imgdocno.Visible := true;
     imgdocin.Visible := false;
   end;
//endi

end;

procedure TfrmMRcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
timer1.Enabled := false;
Action:=caFree;
frmMRcli:=nil;

end;

procedure tfrmmrcli.Impetq;
var I , J : longint;
Etiqueta : System.Text;
begin
Try
If true then
begin AssignPrn(Etiqueta);
Rewrite(Etiqueta);
Printer.Canvas.Font.Name:='Times New Roman';
Printer.Canvas.Font.Size:=8;
//Printer.Canvas.Font.Style:=[fsBold,fsItalic,fsUnderline];
//Printer.Canvas.Font.Style:=[fsBold];

WriteLn(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Printer.Canvas.Font.Style:=[]; Writeln(Etiqueta,'');
Writeln(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Writeln(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Writeln(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Writeln(Etiqueta,'');
Writeln(Etiqueta,'');
System.Close(Etiqueta);
end
Else
begin
AssignPrn(Etiqueta);
Rewrite(Etiqueta);
//For I:=1 to SpinEdit1.Value do
For I:=1 to 7 do
begin
Printer.Canvas.Font.Name:='Times New Roman';
Printer.Canvas.Font.Size:=8;
//Printer.Canvas.Font.Style:=[fsBold,fsItalic,fsUnderline];
WriteLn(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Printer.Canvas.Font.Style:=[];
Writeln(Etiqueta,'');
Writeln(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Writeln(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Writeln(Etiqueta,'Bl·Bl·Bl·Bl·Bl·Bl·Bl·');
Writeln(Etiqueta,'');
Writeln(Etiqueta,'');
End;
System.Close(Etiqueta);
end;
except
System.Close(Etiqueta);
end;
end;
end.
