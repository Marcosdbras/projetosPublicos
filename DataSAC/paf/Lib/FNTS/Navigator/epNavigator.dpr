program epNavigator;

uses
  Forms,
  uFrmPrincipal in 'uFrmPrincipal.pas' {frmPrincipal},
  uFrmCadastroLayout in 'uFrmCadastroLayout.pas' {frmCadastroLayout};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DataSAC Navigator';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
