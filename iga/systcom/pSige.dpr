program pSige;

uses
  Forms,
  usige in 'usige.pas' {frmsige},
  uGeral in 'Ugeral.pas',
  uSplash in 'uSplash.pas' {frmSplash},
  uDados in 'udados.pas' {frmDados: TDataModule},
  upesq in 'upesq.pas' {frmpesq},
  ufiltro in 'ufiltro.pas' {frmfiltro},
  ulogar in 'ulogar.pas' {frmlogar},
  ufigura in 'ufigura.pas' {frmfigura};

{$R *.res}

begin
  Application.Initialize;
  frmSplash :=tfrmSplash.Create(application);
  frmSplash.Show;
  frmSplash.Update;

  Application.Title := '- Systcom - Sistema de Informação';
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmsige, frmsige);
  Atualizar;
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
