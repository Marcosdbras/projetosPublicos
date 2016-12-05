unit ubkp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Buttons, jpeg, shellapi;

type
  TForm1 = class(TForm)
    Image1: TImage;
    spdbackup: TSpeedButton;
    spdrestore: TSpeedButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SpeedButton1: TSpeedButton;
    procedure spdbackupClick(Sender: TObject);
    procedure spdrestoreClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.spdbackupClick(Sender: TObject);
var HORA, DATA, SOURCE, PATCH, NOME, VARDIR : String;
begin

  vardir := ExtractFilePath(Application.ExeName);
  HORA   := FormatDateTime('HHMM', Time);
  DATA   := FormatDateTime('DDMMYYYY', Date);
  SOURCE := vardir+'\fbdados.fdb';     //'C:Docume~1richardMeusdo~1*.txt'; //arquivo a ser feito backup
  PATCH  := vardir;                   //'C:Temp';                           //pasta destino
  NOME   := DATA+'-'+HORA+'.rar';
  SaveDialog1.FileName := NOME;
  SaveDialog1.InitialDir := PATCH;


  if SaveDialog1.Execute then
     begin
       NOME:= SaveDialog1.FileName;
       //chama Winrar e começa a compactar. O nome do arquivo será DDMMAAA-HHMM.rar(dia,mes,ano/hora,min)
       ShellExecute(0,nil,'winrar.exe', Pchar ('a -ep -ibck '+NOME+' '+SOURCE), nil,sw_show);
       //fecha o winrar após o términino da compactação
       //Exit;
     end;
  //endi

end;

procedure TForm1.spdrestoreClick(Sender: TObject);
var PATCH, PATCH1, NOME, VARDIR : String;
begin
  vardir := ExtractFilePath(Application.ExeName);
  if OpenDialog1.Execute then
     begin
       PATCH  := OpenDialog1.FileName;
       PATCH1 := 'C:\Temp'; //'C:Docume~1richardMeusdo~1';
       ShellExecute(0,nil,'Winrar.exe', Pchar ('e -ibck '+PATCH+NOME+' '+PATCH1),nil,sw_show);
       //restaura os arquivos e fecha o winrar
       //Exit;
     end;
  //endi
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
begin
close;
end;

end.
