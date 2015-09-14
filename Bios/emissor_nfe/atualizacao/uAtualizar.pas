unit uAtualizar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

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
    Atualizacao: TButton;
    EdtCaminhoGbase: TEdit;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Button1: TButton;
    procedure ExecutarClick(Sender: TObject);
    procedure ExecutarBackup;
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ExecutaAtualizacao;
  private
    { Private declarations }
    FUsuario: String;
    FSenha: String;
    FNomeArquivo: String;
    FNomeBancoDados: String;
    FPastaBackup : String;
    FCaminhoGbase:String;

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


    xArquivoBat.Add('@echo off');
    xArquivoBat.Add('@echo.');
    xArquivoBat.Add('cd '+FCaminhoGbase);
    xArquivoBat.Add('mysql.exe -u'+ FUsuario + ' -p'+FSenha + '  ' +FNomeBancoDados+' < '+FPastaBackup+'script_nfe.sql');
    xArquivoBat.SaveToFile('BackupMySQL.bat');

    xArquivoBat.Add('pause');


    xArquivoBat.SaveToFile('BackupMySQL.bat');
      WinExec('BackupMySQL.bat', SW_NORMAL);


  Finally
    FreeAndNil(xArquivoBat);
     Atualizacao.Enabled := true;
  End;

end;


procedure TBackupMySQL.FormShow(Sender: TObject);
begin
  vardir := extractfilepath(application.ExeName);

  edtpastabackup.Text := vardir;

end;

procedure TBackupMySQL.Button1Click(Sender: TObject);
begin
   close;
end;

procedure tbackupmysql.ExecutaAtualizacao;
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
    xArquivoBat.Add('echo ### Atualiza base de dados ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo ### ###');
    xArquivoBat.Add('echo #################################################');
    xArquivoBat.Add('echo #################################################');
    xArquivoBat.Add('cd '+FCaminhoGbase);




    xArquivoBat.Add('pause');


    xArquivoBat.Add('@echo off');
    xArquivoBat.Add('@echo.');
    xArquivoBat.Add('cd '+FCaminhoGbase);
    xArquivoBat.Add('mysql.exe -u'+ FUsuario + ' -p'+FSenha + '  ' +FNomeBancoDados+' < '+FPastaBackup+'script_nfe.sql');
    xArquivoBat.SaveToFile('BackupMySQL.bat');

    xArquivoBat.Add('pause');


    xArquivoBat.SaveToFile('BackupMySQL.bat');

    showmessage(xArquivoBat.Text);
    WinExec('BackupMySQL.bat', SW_NORMAL);


    //xArquivoBat.Clear;
    //xArquivoBat.Add('@echo off');
    //xArquivoBat.Add('@echo.');
    //xArquivoBat.Add('cd '+FCaminhoGbase);
    //xArquivoBat.Add('mysql.exe -u'+ FUsuario + ' -p'+FSenha + '  ' +FNomeBancoDados+' < script_nfe.sql');
    //xArquivoBat.SaveToFile('BackupMySQL.bat');
    //WinExec('BackupMySQL.bat', SW_NORMAL);


  Finally
    FreeAndNil(xArquivoBat);
  End;


end;

end.
