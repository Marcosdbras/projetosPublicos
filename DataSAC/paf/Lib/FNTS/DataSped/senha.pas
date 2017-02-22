unit senha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, AdvOfficeImage, frxpngimage, ExtCtrls,
  AdvReflectionLabel, RzLabel, RzBckgnd, pngimage;

type
  Tfrmsenha = class(TForm)
    Label1: TLabel;
    ed_codigo: TRzEdit;
    ed_senha: TRzEdit;
    Label2: TLabel;
    AdvOfficeImage3: TAdvOfficeImage;
    Image1: TImage;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ed_senhaKeyPress(Sender: TObject; var Key: Char);
    procedure ed_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function GeraMD5PAFECF: String;
  public
    { Public declarations }
  end;

var
  frmsenha: Tfrmsenha;

implementation

uses funcoes, modulo, principal, md52, IniFiles; // unit de leitura do arquivo INI;

{$R *.dfm}

procedure Tfrmsenha.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmsenha.FormCreate(Sender: TObject);
begin
  busuario_autenticado := false;

end;

procedure Tfrmsenha.ed_senhaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ed_codigo.Text = '' then exit;
    if ed_senha.text = '' then exit;

    if not Executa_Login(ed_codigo.text,ed_senha.text,sfuncao_senha) then
    begin
      application.messagebox('Acesso não autorizado!','Erro',mb_ok+mb_iconerror);
      exit;
    end
    else
    begin
      busuario_Autenticado := true;
      close;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      close;
    end
    else
    begin

    end;
  end;
end;

procedure Tfrmsenha.ed_codigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if ed_codigo.text = '' then
    begin
      exit;
    end
    else
      Perform(wm_nextdlgctl,0,0);
  end
  else
    if key = #27 then close
    ELSE
     if ( key  in ['0'..'9']) then
     //
    else
      if (key = #7) or (key = #8) or (key = #32) then
       //
      else
        abort;
end;

procedure Tfrmsenha.FormShow(Sender: TObject);
begin
  Brush.Style := bsClear;
  GeraMD5PAFECF;
end;

function Tfrmsenha.GeraMD5PAFECF: String;
var Arquivo : TextFile;
    NomeArq, ArqTexto, aMD5 : String;
    F: TSearchRec;
    Ret: Integer;
      Arquivo_ini : TIniFile; // nome do arquivo .ini
begin
  try
    // Apaga arquivo anterior
    ArqTexto := ExtractFilePath(Application.ExeName)+'ArqMD5.txt';
    if FileExists(ArqTexto) then
       DeleteFile(ArqTexto);
    // cria o arquivo TXT na mesma pasta do sistema
    AssignFile(Arquivo,ArqTexto);
    ReWrite(Arquivo);
    // lista todos os arquivo exe da pasta do aplicativo e gera o MF5
    try
      // executáveis
      Ret := FindFirst(ExtractFilePath(Application.ExeName)+'\*.exe', faAnyFile, F);
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          NomeArq := ExtractFilePath(Application.ExeName)+F.Name;
          aMD5    := MD5Print(MD5File(NomeArq));
          WriteLn(Arquivo,NomeArq+' - '+aMD5);
        end;
        Ret := FindNext(F);
      end;
      // DLL's
      Ret := FindFirst(ExtractFilePath(Application.ExeName)+'\cfg\*.dll', faAnyFile, F);
      while Ret = 0 do
      begin
        if F.Attr and faDirectory <> faDirectory then
        begin
          NomeArq := ExtractFilePath(Application.ExeName)+F.Name;
          aMD5    := MD5Print(MD5File(NomeArq));
          WriteLn(Arquivo,NomeArq+' - '+aMD5);
        end;
        Ret := FindNext(F);
      end;
    finally
      FindClose(F);
    end;
    Closefile(Arquivo);
    // gera MD5 do arquivo texto
  finally
    Result := MD5Print(MD5File(ArqTexto));
  end;
    // abrir arquivo .ini
    Arquivo_ini := TIniFile.Create('c:\DATASAC\paf\cfg\DataPDV.ini');
    //MD5
    Arquivo_ini.WriteString('D37DEB63','2329383C',Cript('C',Result) );

end;

end.
