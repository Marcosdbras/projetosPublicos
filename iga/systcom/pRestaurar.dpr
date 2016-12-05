program pRestaurar;

uses
  Forms,
  uRestaurar in 'uRestaurar.pas' {frmRestaurar};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmRestaurar, frmRestaurar);
  Application.Run;
end.
