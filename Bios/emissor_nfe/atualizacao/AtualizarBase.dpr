program AtualizarBase;

uses
  Forms,
  uAtualizar in 'uAtualizar.pas' {BackupMySQL},
  udiretorios in 'udiretorios.pas' {frmdiretorios};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TBackupMySQL, BackupMySQL);
  Application.Run;
end.
