program AtualizarBase;

uses
  Forms,
  uAtualizar in 'uAtualizar.pas' {BackupMySQL};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBackupMySQL, BackupMySQL);
  Application.Run;
end.
