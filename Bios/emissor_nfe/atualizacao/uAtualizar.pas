unit uAtualizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IniFiles, Buttons, Grids, Outline, DirOutln,
  xmldom, XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent,
  IdTCPConnection, IdTCPClient, IdHTTP;

type
  TBackupMySQL = class(TForm)
    EdtUsuario: TEdit;
    EdtSenha: TEdit;
    EdtNomeBancoDados: TEdit;
    EdtPastaBackup: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Executar: TButton;
    EdtCaminhoGbase: TEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Button1: TButton;
    edtArqAtu: TEdit;
    Label3: TLabel;
    SpeedButton3: TSpeedButton;
    dlgabrir: TOpenDialog;
    Label7: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    spdxp32: TSpeedButton;
    spd7x32bits: TSpeedButton;
    spdpadrao: TSpeedButton;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    spdpastabackup: TSpeedButton;
    spdcaminhogbase: TSpeedButton;
    Memo1: TMemo;
    procedure ExecutarClick(Sender: TObject);
    procedure ExecutarBackup;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GravaIniConfig(Topico:string ;  Campo:string; aTexto: string);
    procedure LerIniConfig;
    Function  cript(senha,chave,operacao : string) : string;
    procedure spdxp32Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure spd7x32bitsClick(Sender: TObject);
    procedure spdpadraoClick(Sender: TObject);
    procedure atualizacoes;
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure separaScript;
    procedure spdpastabackupClick(Sender: TObject);
    procedure spdcaminhogbaseClick(Sender: TObject);
    procedure Memo1KeyPress(Sender: TObject; var Key: Char);
    procedure executa;
    procedure carregainformacao;

  private
    { Private declarations }
    FUsuario: String;
    FSenha: String;
    FNomeArquivo: String;
    FNomeBancoDados: String;
    FPastaBackup : String;
    FCaminhoGbase:String;
    FArqAtu:String;
    sArquivo:string;

    ArqIni: TIniFile;
    Resultado, ResultadoTXT, script:String;

  public
    { Public declarations }
    tipo:integer;
  end;

var
  BackupMySQL: TBackupMySQL;
  vardir:string;


implementation
    uses udiretorios;
{$R *.dfm}

procedure TBackupMySQL.ExecutarClick(Sender: TObject);
begin

   carregainformacao;

   if not fileexists(FCaminhoGbase+'\mysql.exe') then
      begin
        showmessage('Não encontrei caminho do gerenciador da base de dados, operação abortada!');
        exit;
      end;
   //endi




  separaScript;
  executa;


end;

procedure TBackupMySQL.ExecutarBackup;
Var
  xArquivoBat : TStringList;

  vardir:string;
begin

  vardir := extractfilepath(application.ExeName);

  Try
    xArquivoBat := TStringList.Create;
    xArquivoBat.Add('@echo off');
    xArquivoBat.Add('@echo.');
    xArquivoBat.Add('echo #################################################');
    xArquivoBat.Add('echo #################################################');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### Backup ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo #################################################');
    xArquivoBat.Add('echo #################################################');
    xArquivoBat.Add('cd '+FCaminhoGbase);
    xArquivoBat.Add('mysqldump.exe -u'+ FUsuario + ' -p'+FSenha +' --databases '+ FNomeBancoDados+' > '+FPastaBackup+'\'+FNomeArquivo);
    xArquivoBat.Add('pause');


    if fileexists(FArqAtu) then
      begin

        xArquivoBat.Add('@echo off');
        xArquivoBat.Add('@echo.');
        xArquivoBat.Add('cd '+FCaminhoGbase);
        xArquivoBat.Add('mysql.exe -u'+ FUsuario + ' -p'+FSenha + '  ' +FNomeBancoDados+' < '+FArqAtu);
        xArquivoBat.Add('del '+FArqAtu);

        xArquivoBat.SaveToFile('BackupMySQL.bat');

        xArquivoBat.Add('pause');
        application.MessageBox(pchar('Antes da Atualização será realizada cópia de segurança na pasta '+FPastaBackup),'Aviso',mb_ok);

      end
    else
      begin
        application.MessageBox(pchar('Arquivo de atualização '+FArqAtu+' não foi encontrado. Somente será realizada cópia de segurança na pasta '+FPastaBackup),'Aviso',mb_ok);
      end;
    //endi

      xArquivoBat.SaveToFile(vardir+'BackupMySQL.bat');
      WinExec(pchar(vardir+'BackupMySQL.bat'), SW_NORMAL);


  Finally
    FreeAndNil(xArquivoBat);
    
  End;

end;


procedure TBackupMySQL.FormShow(Sender: TObject);
var sTopico, sCampo, sUsuario, sSenha, sNomeBancoDados, sPastaBackup, sCaminhogbase, sArqAtu:string;
begin

  LerIniConfig;

end;

procedure TBackupMySQL.Button1Click(Sender: TObject);
begin
   close;
end;


procedure tbackupMySQL.GravaIniConfig(Topico:string;  Campo:string; aTexto: string);

var

  ArqIni: TIniFile;

begin

  vardir := extractfilepath(application.ExeName);


  ArqIni := TIniFile.Create(vardir+'config.ini');

  try

    ArqIni.WriteString(Topico, Campo, aTexto);

  finally

    ArqIni.Free;

  end;

end;


procedure  tbackupMySQL.LerIniConfig;

var

  ArqIni: TIniFile;
  sSenha:string;

  vardir:string;
begin

  vardir := extractfilepath(application.ExeName);
  


  ArqIni := TIniFile.Create(vardir+'config.ini');

  try


    edtusuario.Text := ArqIni.ReadString('Backup', 'FUsuario', 'root');

    sSenha :=    cript(arqini.ReadString('Base','PassWord','sqlremoto'),'bios2805','descript');
    if sSenha = '' then
       sSenha := 'sqlremoto';
    //endi

    edtsenha.Text :=   sSenha ;

    edtnomebancodados.Text :=  ArqIni.ReadString('Backup', 'FNomeBancoDados', 'NFE');
    if edtnomebancodados.Text = '' then
       begin
         edtnomebancodados.Text := 'NFE';
       end;
    //endi



    edtpastabackup.Text :=  ArqIni.ReadString('Backup', 'FPastaBackup', 'C:\NFE\BACKUP');
    if edtpastabackup.Text = '' then
       begin
          edtpastabackup.Text := 'C:\NFE\BACKUP';
       end;
    //endi


    edtcaminhogbase.Text := ArqIni.ReadString('Backup', 'FCaminhoGbase', 'C:\Arquivos de programas\MySQL\MySQL Server 5.1\bin');
    if  edtcaminhogbase.Text = '' then
       begin
         edtcaminhogbase.Text := 'C:\Arquivos de programas\MySQL\MySQL Server 5.1\bin';

       end;
    //endif


    edtArqAtu.Text :=  ArqIni.ReadString('Backup', 'FArqAtu', 'script_nfe_v10.sql');
    if  edtArqAtu.Text = '' then
       begin
         edtArqAtu.Text :=  'script_nfe_v10.sql';
       end;
    //endi


    

  finally

    ArqIni.Free;

  end;

end;


function tbackupMySQL.Cript(senha,chave,operacao: string) : string;
var
   i, tamanhostring, pos, posletra, tamanhochave : integer;
begin
   result := '';
   result := senha;
   tamanhostring := length(senha);
   tamanhochave  := length(chave);
   for i := 1 to tamanhostring do
      begin
         pos := (i mod tamanhochave);
         if pos = 0 then pos := tamanhochave;
         pos := pos + 7;
         if operacao = 'descript' then
            begin
               posLetra := ord(result[i]) + pos;
            end
         else
            begin
               posLetra := ord(result[i]) - pos;
            end;
         //endif
         result[i] := chr(posletra);
      end;
   //endfor
end;



procedure TBackupMySQL.spdxp32Click(Sender: TObject);
begin
EdtCaminhoGbase.Text := 'C:\Arquivos de programas\MySQL\MySQL Server 5.1\bin';



end;

procedure TBackupMySQL.SpeedButton3Click(Sender: TObject);
  var vardir:string;
begin
  vardir := extractfilepath(application.ExeName);

  //dlgabrir.InitialDir  := DirectoryOutline1.Directory;

  dlgabrir.InitialDir := vardir;

  dlgabrir.Filter := '*.sql';
  dlgabrir.FileName := '*.sql';

  if dlgabrir.Execute then
     begin
       carregainformacao;
       edtarqatu.Text := dlgabrir.FileName;
       executa;
       
     end;

end;

procedure TBackupMySQL.spd7x32bitsClick(Sender: TObject);
begin
   EdtCaminhoGbase.Text := 'C:\Program Files\MySQL\MySQL Server 5.1\bin';
end;

procedure TBackupMySQL.spdpadraoClick(Sender: TObject);
begin
edtusuario.Text := 'root';
edtsenha.Text := 'sqlremoto';
end;

procedure TBackupMySQL.atualizacoes;
begin
 try

   XMLDocument1.Active := False;
   XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsatualizacoes.php?chave=17JBJpoO2tCCCsMwbqmEGVqcZEO3FL1&sistema=E_NFE_DESK');
   XMLDocument1.Active := True;

   script      := XMLDocument1.ChildNodes['wsatualizacoes'].ChildNodes['response'].ChildNodes['script'].Text;
   Resultado    := XMLDocument1.ChildNodes['wsatualizacoes'].ChildNodes['response'].ChildNodes['resultado'].Text;
   ResultadoTXT := XMLDocument1.ChildNodes['wsatualizacoes'].ChildNodes['response'].ChildNodes['resultadotxt'].Text;

 except
 end;


end;

procedure TBackupMySQL.SpeedButton1Click(Sender: TObject);
begin
  separaScript;
end;

procedure TBackupMySQL.FormCreate(Sender: TObject);
begin
  atualizacoes;
end;

procedure TBackupMySQL.separaScript;
var arq,vardir:string;
begin
 vardir := extractfilepath(application.ExeName);


 //arquivo para executar
 arq := copy(script,0,pos(';',script)-1);

 //restante dos arquivos até chegar ao fim
 script := copy(script,pos(';',script)+1,length(script)-1);

 edtarqatu.Text := vardir+arq;
end;

procedure TBackupMySQL.spdpastabackupClick(Sender: TObject);
begin
  tipo := 1;
  frmdiretorios := tfrmdiretorios.Create(self);
  frmdiretorios.ShowModal;
  frmdiretorios.Free;

end;

procedure TBackupMySQL.spdcaminhogbaseClick(Sender: TObject);
begin
  tipo := 2;
  frmdiretorios := tfrmdiretorios.Create(self);
  frmdiretorios.ShowModal;
  frmdiretorios.Free;

end;

procedure TBackupMySQL.Memo1KeyPress(Sender: TObject; var Key: Char);
begin
  key := #0;
end;

procedure TBackupMySQL.executa;
begin
Try
   //carregainformacao;
   GravaIniConfig('Backup', 'FUsuario', BackupMySQL.FUsuario);
   GravaIniConfig('Backup','FSenha',  cript(BackupMySQL.FSenha,'bios2805','cript')   );
   GravaIniConfig('Backup','FNomeBancoDados',BackupMySQL.FNomeBancoDados);
   GravaIniConfig('Backup','FPastaBackup',BackupMySQL.FPastaBackup);
   GravaIniConfig('Backup','FCaminhoGbase',BackupMySQL.FCaminhoGbase);
   GravaIniConfig('Backup','FArqAtu',BackupMySQL.FArqAtu);
   BackupMySQL.ExecutarBackup;
Finally
   { 
     FreeAndNil(BackupMySQL);}
End;



end;


procedure tbackupmysql.carregainformacao;
begin
   BackupMySQL.FUsuario := EdtUsuario.Text;
   BackupMySQL.FSenha :=  EdtSenha.Text;

   sArquivo := 'bkp'+formatdatetime('YYYYMMDDHHMMSS',now())+'.sql';
   BackupMySQL.FNomeArquivo := sArquivo;

   BackupMySQL.FPastaBackup := EdtPastaBackup.Text;
   BackupMySQL.FNomeBancoDados := EdtNomeBancoDados.Text;
   BackupMySQL.FCaminhoGbase := EdtCaminhoGbase.Text;
   BackupMySQL.FArqAtu := EdtArqAtu.Text;
end;

end.
