unit umrforc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Buttons, Db, DBTables, SayPrint, SqlExpr, Variants,
  ToolWin, ComCtrls, QPrinters;

type
  TfrmMRforc = class(TForm)
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
  frmMRforc: TfrmMRforc;

implementation

uses uGeral, uPrincipal, uDados, urelforc,urelforcs,uetiqforc ;

{$R *.DFM}

procedure TfrmMRforc.sPdGravarClick(Sender: TObject);
  var
    vardir:String;
begin
VarDir := Extractfilepath(application.exename);
if rgbtiporel.ItemIndex = -1 then
   begin
     Showmessage('Antes de clicar nesse botăo, selecione o relatório desejado');
     exit;
   end;
//endi

if rgbtiporel.ItemIndex = 0 then
   begin
     frmrelforc := tfrmrelforc.Create(self);
     frmrelforc.relatorio.Preview;
     frmrelforc.Free;
   end;
//endi

if rgbtiporel.ItemIndex = 3 then
   begin
   end;
//endi

if rgbtiporel.ItemIndex = 2 then
   begin
   frmetiqforc := tfrmetiqforc.create(self);
   frmetiqforc.etiqueta.preview;
   frmetiqforc.free;
   end;
//endi

if rgbtiporel.ItemIndex = 1 then
   begin
    frmrelforcs := tfrmrelforcs.Create(self);
    frmrelforcs.relatorio.Preview;
    frmrelforcs.free;
   end;
//endi

if rgbtiporel.ItemIndex = 4 then
   begin
   end;
//endi


end;

procedure TfrmMRforc.FormShow(Sender: TObject);
begin
imgdocno.Visible := true;
imgdocin.Visible := false;
spdgravar.Enabled := false;
timer1.Enabled := true;
end;

procedure TfrmMRforc.rgbtiporelClick(Sender: TObject);
begin
spdgravar.Enabled := true;

end;

procedure TfrmMRforc.spdSairClick(Sender: TObject);
begin
close;
end;

procedure TfrmMRforc.Timer1Timer(Sender: TObject);
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

procedure TfrmMRforc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
timer1.Enabled := false;
Action:=caFree;
frmMRforc:=nil;

end;

procedure tfrmMRforc.Impetq;
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

WriteLn(Etiqueta,'BláBláBláBláBláBláBlá');
Printer.Canvas.Font.Style:=[]; Writeln(Etiqueta,'');
Writeln(Etiqueta,'BláBláBláBláBláBláBlá');
Writeln(Etiqueta,'BláBláBláBláBláBláBlá');
Writeln(Etiqueta,'BláBláBláBláBláBláBlá');
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
WriteLn(Etiqueta,'BláBláBláBláBláBláBlá');
Printer.Canvas.Font.Style:=[];
Writeln(Etiqueta,'');
Writeln(Etiqueta,'BláBláBláBláBláBláBlá');
Writeln(Etiqueta,'BláBláBláBláBláBláBlá');
Writeln(Etiqueta,'BláBláBláBláBláBláBlá');
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
