program ECFComando;

uses
  Forms,
  Principal in 'Principal.pas' {frmPrincipal},
  Leitura_Memoria_Fiscal in 'Leitura_Memoria_Fiscal.pas' {frmLeitura_Memoria_Fiscal},
  Download_MFD in 'Download_MFD.pas' {frmDownload_MFD},
  funcoes in 'funcoes.pas',
  unECF in 'unECF.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.Title := 'ECFComando';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmDownload_MFD, frmDownload_MFD);
  Application.Run;
end.
