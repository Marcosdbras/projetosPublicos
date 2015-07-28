program DataConfig;

uses
  Forms,
  principal in 'principal.pas' {frmPrincipal},
  funcoes in 'funcoes.pas',
  cnif in 'cnif.pas' {frmCNIF},
  Constantes in '..\DataPDV\Constantes.pas',
  unECF in 'unECF.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'DataConfig 2.0';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
