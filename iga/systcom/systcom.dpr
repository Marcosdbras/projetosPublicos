program systcom;

uses
  Forms,
  ufrente in 'ufrente.pas' {frmfrente},
  uecf in 'uecf.pas',
  uDados in 'uDados.pas' {frmDados: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uGeral in 'Ugeral.pas';

{$R *.res}

begin
  Application.Initialize;
  frmSplash :=tfrmSplash.Create(application);
  frmSplash.Show;
  frmSplash.Update;

  Application.Title := 'Frente de Caixa';
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmfrente, frmfrente);
  Atualizar;
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
