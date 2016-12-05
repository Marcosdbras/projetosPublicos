unit Backup;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons;

type
  TForm1 = class(TForm)
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
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);

begin
vardir := extractfilepath(application.ExeName);
       AssignFile(f,vardir+'backup.bat');
       Rewrite(f); //abre o arquivo para escrita
       writeln(f,'cd\'+Edit3.text);
       Writeln(f,'gbak '+Edit1.text+' '+Edit2.text);
       Closefile(f); //fecha o handle de arquivo
       WinExec(pchar(vardir+'backup.bat'), SW_HIDE);

end;

procedure TForm1.FormActivate(Sender: TObject);
begin
Edit1.text:='C:\auxsystcom\FBDADOS.FDB';
Edit2.text:='C:\auxsystcom\D'+formatfloat('00', strtofloat( copy(datetostr(date),1,1)) )+formatfloat('00', strtofloat(copy(datetostr(date),3,1)))+formatfloat('00', strtofloat(copy(datetostr(date),7,2)))+'H'+formatfloat('00', strtofloat(copy(timetostr(time),1,2)))+formatfloat('00', strtofloat(copy(timetostr(time),4,2)))+'.FDK';
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
if OpenDialog1.Execute  then
begin
Edit3.Text:=OpenDialog1.FileName;
end;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
if OpenDialog1.Execute  then
begin
Edit1.Text:=OpenDialog1.FileName;
end;
end;

procedure TForm1.SpeedButton3Click(Sender: TObject);
begin
if OpenDialog1.Execute  then
begin
Edit2.Text:=OpenDialog1.FileName;
end;
end;

end.
