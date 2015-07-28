program DataREG;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DataREG - Registro de PAF-ECF';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
