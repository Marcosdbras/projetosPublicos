program DataCOMM;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal};

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DataCOMM 2.0 - Comunicador Retaguarda x PDV';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
