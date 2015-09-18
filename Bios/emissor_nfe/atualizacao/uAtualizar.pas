unit uAtualizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, IniFiles;

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
    procedure ExecutarClick(Sender: TObject);
    procedure ExecutarBackup;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure GravaIniConfig(Topico:string ;  Campo:string; aTexto: string);
    procedure LerIniConfig;
    Function  cript(senha,chave,operacao : string) : string;

  private
    { Private declarations }
    FUsuario: String;
    FSenha: String;
    FNomeArquivo: String;
    FNomeBancoDados: String;
    FPastaBackup : String;
    FCaminhoGbase:String;
    FArqAtu:String;

    ArqIni: TIniFile;

  public
    { Public declarations }
  end;

var
  BackupMySQL: TBackupMySQL;
  vardir:string;

implementation

{$R *.dfm}

procedure TBackupMySQL.ExecutarClick(Sender: TObject);
Var
BackupMySQL : TBackupMySQL;
sArquivo:string;
begin

Try
   BackupMySQL := TBackupMySQL.Create(self);
   BackupMySQL.FUsuario := EdtUsuario.Text;
   BackupMySQL.FSenha :=  EdtSenha.Text;
   //BackupMySQL.FNomeArquivo := EdtNomeArquivo.Text;

   sArquivo := 'bkp'+formatdatetime('YYYYMMDDHHMMSS',now())+'.sql';
   BackupMySQL.FNomeArquivo := sArquivo;
   BackupMySQL.FPastaBackup := EdtPastaBackup.Text;
   BackupMySQL.FNomeBancoDados := EdtNomeBancoDados.Text;
   BackupMySQL.FCaminhoGbase := EdtCaminhoGbase.Text;
   BackupMySQL.FArqAtu := EdtArqAtu.Text;


   GravaIniConfig('Backup', 'FUsuario', BackupMySQL.FUsuario);
   GravaIniConfig('Backup','FSenha',  cript(BackupMySQL.FSenha,'amex2642america','cript')   );
   GravaIniConfig('Backup','FNomeBancoDados',BackupMySQL.FNomeBancoDados);
   GravaIniConfig('Backup','FPastaBackup',BackupMySQL.FPastaBackup);
   GravaIniConfig('Backup','FCaminhoGbase',BackupMySQL.FCaminhoGbase);
   GravaIniConfig('Backup','FArqAtu',BackupMySQL.FArqAtu);

   BackupMySQL.ExecutarBackup;
Finally
   FreeAndNil(BackupMySQL);
End;



end;

procedure TBackupMySQL.ExecutarBackup;
Var
  xArquivoBat : TStringList;
begin
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
    xArquivoBat.Add('mysqldump.exe -u'+ FUsuario + ' -p'+FSenha +' --databases '+ FNomeBancoDados+' > '+FPastaBackup+FNomeArquivo);
    xArquivoBat.Add('pause');


    if fileexists(FPastaBackup+FArqAtu) then
      begin

        xArquivoBat.Add('@echo off');
        xArquivoBat.Add('@echo.');
        xArquivoBat.Add('cd '+FCaminhoGbase);
        xArquivoBat.Add('mysql.exe -u'+ FUsuario + ' -p'+FSenha + '  ' +FNomeBancoDados+' < '+FPastaBackup+FArqAtu);
        xArquivoBat.Add('del '+FPastaBackup+FArqAtu);

        xArquivoBat.SaveToFile('BackupMySQL.bat');

        xArquivoBat.Add('pause');
        application.MessageBox(pchar('Antes da Atualiza��o ser� realizada c�pia de seguran�a na pasta '+FPastaBackup),'Aviso',mb_ok);

      end
    else
      begin
        application.MessageBox(pchar('N�o encontrei atualiza��es, somente ser� realizada c�pia de seguran�a na pasta '+FPastaBackup),'Aviso',mb_ok);
      end;
    //endi

    xArquivoBat.SaveToFile('BackupMySQL.bat');
      WinExec('BackupMySQL.bat', SW_NORMAL);


  Finally
    FreeAndNil(xArquivoBat);
    
  End;

end;


procedure TBackupMySQL.FormShow(Sender: TObject);
var sTopico, sCampo, sUsuario, sSenha, sNomeBancoDados, sPastaBackup, sCaminhogbase, sArqAtu:string;
begin
  vardir := extractfilepath(application.ExeName);
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
begin

  ArqIni := TIniFile.Create(vardir+'config.ini');

  try


  edtusuario.Text := ArqIni.ReadString('Backup', 'FUsuario', 'root');


  sSenha :=    ArqIni.ReadString('Backup', 'FSenha',     cript('khbgY`ae_' , 'amex2642america', 'descript')    );


  edtsenha.Text :=   sSenha ;

  edtnomebancodados.Text :=  ArqIni.ReadString('Backup', 'FNomeBancoDados', 'NFE');

  edtpastabackup.Text :=  ArqIni.ReadString('Backup', 'FPastaBackup', 'C:\NFE\');

  edtcaminhogbase.Text := ArqIni.ReadString('Backup', 'FCaminhoGbase', 'C:\Arquivos de programas\MySQL\MySQL Server 5.1\bin');

  edtArqAtu.Text :=  ArqIni.ReadString('Backup', 'FArqAtu', 'script_nfe_v10.sql');






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



end.
