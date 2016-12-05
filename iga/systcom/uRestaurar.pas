unit uRestaurar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TfrmRestaurar = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Label3: TLabel;
    OpenDialog1: TOpenDialog;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
  private
    { Private declarations }
     f:TextFile;
  vardir:String;
  public
    { Public declarations }
  end;

var
  frmRestaurar: TfrmRestaurar;

implementation

{$R *.dfm}

procedure TfrmRestaurar.Button1Click(Sender: TObject);

begin
vardir := extractfilepath(application.ExeName);
       AssignFile(f,vardir+'restaurar.bat');
       Rewrite(f); //abre o arquivo para escrita
       writeln(f,'cd\'+Edit3.text);
       Writeln(f,'gbak -rep '+Edit1.text+' '+Edit2.text);
       Closefile(f); //fecha o handle de arquivo
       WinExec(pchar(vardir+'restaurar.bat'), SW_HIDE);

end;

procedure TfrmRestaurar.FormActivate(Sender: TObject);
begin
Edit1.text:='C:\auxsystcom\';
Edit2.text:='C:\auxsystcom\FBDADOS.FDB';
end;

procedure TfrmRestaurar.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute  then
begin
Edit3.Text:=OpenDialog1.FileName;
end;
end;

procedure TfrmRestaurar.SpeedButton2Click(Sender: TObject);
begin
if OpenDialog1.Execute  then
begin
Edit1.Text:=OpenDialog1.FileName;
end;
end;

procedure TfrmRestaurar.SpeedButton3Click(Sender: TObject);
begin
if OpenDialog1.Execute  then
begin
Edit2.Text:=OpenDialog1.FileName;
end;
end;

end.
