program pComanda;

uses
  Forms,
  uComanda in 'uComanda.pas' {frmcomanda},
  uGeral in 'ugeral.pas',
  uDados in 'udados.pas' {frmDados: TDataModule},
  uSplash in 'usplash.pas' {frmSplash},
  upesqprod in 'upesqprod.pas' {frmpesqprodD};

{$R *.res}

begin
  Application.Initialize;
  frmSplash :=tfrmSplash.Create(application);
  frmSplash.Show;
  frmSplash.Update;
  Application.Title := '- Systcom - Sistema de Informação';
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(TfrmComanda, frmComanda);
  Atualizar;
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
