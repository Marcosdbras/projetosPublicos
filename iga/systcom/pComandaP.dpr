program pComandaP;

uses
  Forms,
  uComandaP in 'uComandaP.pas' {frmcomandaP},
  uGeral in 'Ugeral.pas',
  uDados in 'udados.pas' {frmDados: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  upesqprod in 'upesqprod.pas' {frmpesqprodD},
  upesqcomanda in 'upesqcomanda.pas' {frmpesqcomanda};

{$R *.res}

begin
  Application.Initialize;
  frmSplash :=tfrmSplash.Create(application);
  frmSplash.Show;
  frmSplash.Update;
  Application.Title := '- Systcom - Sistema de Informação';
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(TfrmcomandaP, frmcomandaP);
  Atualizar;
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
