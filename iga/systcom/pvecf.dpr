program pvecf;

uses
  Forms,
  uloginecf in 'uloginecf.pas' {frmloginecf},
  ufrenteecf in 'ufrenteecf.pas' {frmfrenteecf},
  uGeral in 'Ugeral.pas',
  uMp20i in 'uMp20i.pas',
  uDados in 'udados.pas' {frmDados: TDataModule},
  upesqprodecf in 'upesqprodecf.pas' {frmpesqprodDecf},
  upesqClicecf in 'upesqClicecf.pas' {frmpesqClicecf},
  ucaixaapecf in 'ucaixaapecf.pas' {frmcaixaapecf};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmfrenteecf, frmfrenteecf);
  Application.Run;
end.
