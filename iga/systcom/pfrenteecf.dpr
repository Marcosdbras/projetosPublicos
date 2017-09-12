program pfrenteecf;

uses
  Forms,
  ufrenteecf in 'ufrenteecf.pas' {frmfrente},
  uDados in 'udados.pas' {frmDados: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uGeral in 'Ugeral.pas',
  ufecha in 'ufecha.pas' {frmfecha},
  uloginecf in 'uloginecf.pas' {frmlogin},
  upesqprodecf in 'upesqprodecf.pas' {frmpesqprodD},
  upesqClicecf in 'upesqClicecf.pas' {frmpesqClic},
  uMensEstqecf in 'uMensEstqecf.pas' {frmmensestq},
  ucaixaap in 'ucaixaap.pas' {frmcaixaap},
  ualterap in 'ualterap.pas' {frmAlteraP},
  uMp20i in 'uMp20i.pas',
  usangriaecf in 'usangriaecf.pas' {frmsangria},
  uingestaoecf in 'uingestaoecf.pas' {frmingestao},
  ualterapecf in 'ualterapecf.pas' {frmAlteraPecf},
  ucaixaapecf in 'ucaixaapecf.pas' {frmcaixaapecf},
  ufimpf in 'ufimpf.pas' {frmfimpf},
  upedprazo in 'upedprazo.pas' {frmpedprazo},
  uajustevb in 'uajustevb.pas' {frmajustevb},
  uexcluirPecf in 'uexcluirPecf.pas' {frmExcluirPecf},
  uparcelar in 'uparcelar.pas' {frmparcelar},
  uabrircaixaind in 'uabrircaixaind.pas' {frmabrircaixaind},
  ucaixaapind in 'ucaixaapind.pas' {frmcaixaapind},
  uconfcaixaind in 'uconfcaixaind.pas' {frmconfcaixaind},
  ufechacaixaind in 'ufechacaixaind.pas' {frmfechacaixaind},
  udetcaixaind in 'udetcaixaind.pas' {frmdetcaixaind},
  upesqvfb in 'upesqvfb.pas' {frmPesqVfb},
  ucancelacaixaind in 'ucancelacaixaind.pas' {frmcancelacaixaind},
  funcoes_ibpt in 'funcoes_ibpt.pas',
  urespdevolucao in 'urespdevolucao.pas' {frmrespdevolucao};

{$R *.res}

begin
Application.Title := '';
Application.HelpFile := '';
//if HPrevInst = 0 then
//  begin

    Application.Initialize;
    frmSplash :=tfrmSplash.Create(application);
    frmSplash.Show;
    frmSplash.Update;

    Application.Title := 'Frente de Caixa';
    Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmfrenteecf, frmfrenteecf);
  Atualizar;
    frmSplash.Hide;
    frmSplash.Free;
    Application.Run;


//  end
//else
//  begin
    //messagedlg('O sistema já foi inicializado!',mtinformation,[mbok],0);
//    Application.Terminate;
//  end;
//endi


end.
