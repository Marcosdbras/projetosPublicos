unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;



  function genkkey( cChavePublica: String; cChavePrivada: String ): integer; stdcall; external 'sign_bema.dll';
  function setLibType( iTipo: integer ): integer; stdcall; external '’sign_bema.dll';
  function generateEAD( cNomeArquivo: String; cChavePublica: String; cChavePrivada: String; cEAD:String; iSign: Integer): integer; stdcall; external 'sign_bema.dll';
  function validateFile( cNomeArquivo: String; cChavePublica: String; cChavePrivada: String ): integer; stdcall; external 'sign_bema.dll';



type
  TForm1 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    GroupBox1: TGroupBox;
    Memo1: TMemo;
    GroupBox2: TGroupBox;
    Memo2: TMemo;
    GroupBox3: TGroupBox;
    Edit2: TEdit;
    GroupBox4: TGroupBox;
    Memo3: TMemo;
    Button3: TButton;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;



var
  Form1: TForm1;
  cchavepublica, cchaveprivada : string;
  iretorno : integer;

implementation

{$R *.dfm}




procedure TForm1.Button1Click(Sender: TObject);
var iretorno : integer;
cRegistroEAD, cNomeArquivo : string;

begin
  if opendialog1.Execute then
  begin
    setlength( cRegistroEAD, 256 );
    cNomeArquivo := OpenDialog1.FileName;

    iRetorno := generateEAD( cNomeArquivo, cChavePublica, cChavePrivada, cRegistroEAD, 1 );

    if ( iRetorno = 0) then
      application.MessageBox( 'Erro de execução!', 'ERRO', MB_ICONINFORMATION + MB_OK )
    else
      application.MessageBox( 'Sucesso!', 'Atenção', MB_ICONINFORMATION + MB_OK );
  end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
setlength( cChavePublica, 256 );
setlength( cChavePrivada, 256 );

iRetorno := genkkey( cChavePublica, cChavePrivada );

if ( iRetorno = 0 ) then
  application.MessageBox( 'Erro de execução!', 'ERRO', MB_ICONINFORMATION + MB_OK )
else
  application.MessageBox( 'Sucesso!', 'Atenção', MB_ICONINFORMATION + MB_OK );

  memo1.Text := cchavepublica;
  memo2.text := cchaveprivada;
  memo3.lines.Clear;
  memo3.lines.add('<?xml version="1.0"?>');
  memo3.lines.add('');
  memo3.lines.add('<empresa_desenvolvedora>');
  memo3.lines.add('');
  memo3.lines.add('<nome>'+edit2.text+'</nome>');
  memo3.lines.add('');
  memo3.lines.add('<chave>');
  memo3.lines.add('<modulo>'+cchavepublica+'</modulo>');
  memo3.lines.add('<expoente_publico>03</expoente_publico>');
  memo3.lines.add('</chave>');
  memo3.lines.add('');
  memo3.lines.add('</empresa_desenvolvedora>');
end;

procedure TForm1.Button3Click(Sender: TObject);
var txt : textfile;
begin
  savedialog1.Title := 'Chave pública';
  SaveDialog1.FileName:= 'chave_publica.key';
  if SaveDialog1.Execute then
  begin
    AssignFile(txt,SaveDialog1.FileName);
    rewrite(txt);
    writeln(txt,memo1.text);
    closefile(txt);
  end;
  savedialog1.Title := 'Chave privada';
  SaveDialog1.FileName:= 'chave_privada.key';
  if SaveDialog1.Execute then
  begin
    AssignFile(txt,SaveDialog1.FileName);
    rewrite(txt);
    writeln(txt,memo2.text);
    closefile(txt);
  end;
  savedialog1.Title := 'XML de validação';
  SaveDialog1.FileName:= edit2.text+'.xml';
  if SaveDialog1.Execute then
  begin
    AssignFile(txt,SaveDialog1.FileName);
    rewrite(txt);
    writeln(txt,memo3.text);
    closefile(txt);
  end;
end;

end.



