program pfrentecaixa;

uses
  Forms,
  ufrentecaixa in 'ufrentecaixa.pas' {frmfrentecaixa};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(Tfrmfrentecaixa, frmfrentecaixa);
  Application.Run;
end.
