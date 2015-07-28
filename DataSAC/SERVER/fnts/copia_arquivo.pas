unit copia_arquivo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs,
  TFlatGaugeUnit, ExtCtrls, StdCtrls;

type
  Tfrmcopia_arquivo = class(TForm)
    ga_copia: TFlatGauge;
    Label1: TLabel;
    Bevel1: TBevel;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    procedure CopyFile(Source, Destination: string);
    function RetornaDataHora(Arquivo: String): String;
    { Public declarations }
  end;

var
  frmcopia_arquivo: Tfrmcopia_arquivo;

implementation

uses modulo, principal;

{$R *.dfm}


procedure Tfrmcopia_arquivo.CopyFile(Source, Destination: string);
var
  FromF,ToF: file of byte;
  Buffer: array[0..4096] of char;
  NumRead: Integer;
  FileLength: LongInt;
  NewPath: string;
begin

  // Antes de copiar, verifica se já existe o diretório
  // Caso o diretório não exista, o mesmo vai ser criado
  NewPath := ExtractFilePath(Destination);
  if not DirectoryExists(NewPath) then
  begin
    CreateDir(NewPath);
  end
  else
  begin
    if FileExists(Destination) then
    begin
      if Application.MessageBox('O arquivo-destino da cópia de segurança já existe ' + #13#10 +
        'Deseja sobrepôr o mesmo com a nova cópia ?', 'Segurança',
        MB_YESNO + MB_ICONQUESTION) = MRNO then
        Exit;
    end;
  end;
  // Copia o arquivo
  // Abre o arquivo de origem e cria o arquivo destino
  AssignFile(FromF, Source);
  Reset(FromF);
  AssignFile(ToF, Destination);
  ReWrite(ToF);
  FileLength := FileSize(FromF);
  with ga_copia do
  begin
    MinValue := 0;
    MaxValue := FileLength;
    while FileLength > 0 do
    begin
      BlockRead(FromF, Buffer[0], SizeOf(Buffer), NumRead);
      FileLength := FileLength - NumRead;
      BlockWrite(ToF, Buffer[0], NumRead);
      ga_copia.Progress := ga_copia.Progress+NumRead;
    end;
    CloseFile(FromF);
    CloseFile(ToF);
  end;

end;

function Tfrmcopia_arquivo.RetornaDataHora(Arquivo: String): String;
var
  FHandle: integer;
begin
  FHandle := FileOpen(Arquivo, 0);
  try
    Result := DateTimeToStr(FileDateToDateTime(FileGetDate(FHandle)));
  finally
    FileClose(FHandle);
  end;
end;

procedure Tfrmcopia_arquivo.FormShow(Sender: TObject);
var
  origem,destino : string;
  datahora : TDateTime;

begin

  origem  := '\\'+conexao_sistema+'\c:\DATASAC\server\atualizacao\DataSAC.exe';
  destino := 'c:\DATASAC\server\atualizacao\DataSAC.exe';

  if frmprincipal.VersaoExe(destino) <> frmprincipal.VersaoExe(origem) then
    begin
      CopyFile(origem, destino);
      datahora := StrToDateTime(RetornaDataHora(origem));
      FileSetDate(destino,DateTimeToFileDate(datahora));
    end;

  //ga_copia.Progress := 0;

end;



procedure Tfrmcopia_arquivo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
