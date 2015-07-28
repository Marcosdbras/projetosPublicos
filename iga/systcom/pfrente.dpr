program pfrente;

uses
  Forms,
  ufrente in 'ufrente.pas' {frmfrente},
  uecf in 'uecf.pas',
  uDados in 'udados.pas' {frmDados: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uGeral in 'Ugeral.pas',
  ufecha in 'ufecha.pas' {frmfecha},
  ulogin in 'ulogin.pas' {frmlogin},
  upesqprod in 'upesqProd.pas' {frmpesqprodD},
  upesqClic in 'upesqClic.pas' {frmpesqClic},
  uMensEstq in 'uMensEstq.pas' {frmmensestq},
  ucaixaap in 'ucaixaap.pas' {frmcaixaap},
  ualterap in 'ualterap.pas' {frmAlteraP},
  uMp20i in 'uMp20i.pas',
  usangria in 'usangria.pas' {frmsangria},
  uingestao in 'uingestao.pas' {frmingestao},
  upesqtipotabvb in 'upesqtipotabvb.pas' {frmpesqtipotabvb};

{$R *.res}

begin
Application.Title := '';
Application.HelpFile := '';
if HPrevInst = 0 then
  begin

    Application.Initialize;
    frmSplash :=tfrmSplash.Create(application);
    frmSplash.Show;
    frmSplash.Update;

    Application.Title := 'Frente de Caixa';
    Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmfrente, frmfrente);
  Atualizar;
    frmSplash.Hide;
    frmSplash.Free;
    Application.Run;


  end
else
  begin
    //messagedlg('O sistema já foi inicializado!',mtinformation,[mbok],0);
    Application.Terminate;
  end;
//endi


end.
