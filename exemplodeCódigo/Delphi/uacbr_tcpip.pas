unit uacbr_tcpip;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient;

type
  TForm1 = class(TForm)
    IdTCPClient1: TIdTCPClient;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation
    uses IdIOHandler, IdGlobal;
{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  Stream: TMemoryStream; 
  Size, i: Integer;
  S:string;
  var

  comando: string;

  var BufferArray : Array[0..512] of Byte;

  WordArray : array[0..5] of word;

  strResults: TStringStream;
begin
   Stream := TMemoryStream.Create;
   strResults := TStringStream.Create('');
  try


    IdTCPClient1.Host := '127.0.0.1';

    IdTCPClient1.Port := 3436;


    if not IdTCPClient1.Connected then
       IdTCPClient1.Connect;

    IdTCPClient1.IOHandler.DefStringEncoding := idglobal.IndyTextEncoding_UTF8;

    IdTCPClient1.Socket.Write( 'NFe.StatusServico'+sLineBreak+'.'+sLineBreak );


     memo1.Lines.Clear;
    while pos(#3,S) = 0 do

    //while length(S) > 0 do

    //while true do
       begin
       S:= IdTCPClient1.Socket.ReadLn;
       memo1.Lines.Add(S);
       //if (pos('ERRO',S)>0) or
       //    (pos('OK',S)>0) or
       //    (pos(#3,S) > 0)
       //then
       //   break;


       end;





    //IdTCPClient1.Disconnect;
  finally
    Stream.Free;

  end;
end;





end.
