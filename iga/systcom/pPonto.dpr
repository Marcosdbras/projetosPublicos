program pPonto;

uses
  Forms,
  uPonto in 'uPonto.pas' {frmponto},
  uDados in 'uDados.pas' {frmDados: TDataModule},
  uGeral in 'ugeral.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmponto, frmponto);
  Application.Run;
end.
