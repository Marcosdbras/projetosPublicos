program pUtraDental;

uses
  Forms,
  uTra in 'uTra.pas' {frmtra},
  uGeral in 'Ugeral.pas',
  uDados in 'udados.pas' {frmDados: TDataModule},
  uSplash in 'uSplash.pas' {frmSplash},
  uloginutradental in 'uloginutradental.pas' {frmloginutradental},
  ufectra in 'ufectra.pas' {frmfectra},
  uacao in 'uacao.pas' {frmacao},
  upesqtra in 'upesqtra.pas' {frmpesqtra},
  upagto in 'upagto.pas' {frmpagto},
  uinfo in 'uinfo.pas' {frminfo},
  uagenda in 'uagenda.pas' {frmagenda},
  udetage in 'udetage.pas' {frmdetage},
  ucli in 'ucli.pas' {frmcli},
  upesqrecbtop in 'upesqrecbtop.pas' {frmpesqrecbtop},
  umrrecp in 'umrrecp.pas' {frmMRrecp},
  urelrecp in 'urelrecp.pas' {frmrelrecp},
  ureltrat in 'ureltrat.pas' {frmreltrat},
  uimptrat in 'uimptrat.pas' {frmimptrat},
  uimptratd in 'uimptratd.pas' {frmimptratd},
  urelrecbtop in 'urelrecbtop.pas' {frmrelrecbtop},
  urelcomp in 'urelcomp.pas' {frmrelcomp},
  upesqclip in 'upesqclip.pas' {frmPesqclip},
  upesqfuncp in 'upesqfuncp.pas' {frmPesqFuncp},
  upesqforcp in 'upesqforcp.pas' {frmPesqforcp},
  upesqpagp in 'upesqpagp.pas' {frmPesqPagp},
  upesqclasp in 'upesqclasp.pas' {frmPesqclasp},
  urelanip in 'urelanip.pas' {frmurelanip},
  upesqcmobrap in 'upesqcmobrap.pas' {frmPesqcmobrap},
  uimporc in 'uimporc.pas' {frmimporc},
  uimpage in 'uimpage.pas' {frmimpage},
  upesqtipopgtovp in 'upesqtipopgtovp.pas' {frmPesqtipopgtovp},
  ulancomfun in 'ulancomfun.pas' {frmlancomfun},
  upesqcfunp in 'upesqcfunp.pas' {frmPesqcfunp},
  urelcfunsp in 'urelcfunsp.pas' {frmrelcfunsp},
  uimprecpgto in 'uimprecpgto.pas' {frmimprecpgto},
  ureltrageral in 'ureltrageral.pas' {frmreltrageral},
  umrger in 'umrger.pas' {frmmrger},
  utrageral in 'utrageral.pas' {frmtrageral},
  urelcden in 'urelcden.pas' {frmrelcden},
  ucaixaapap in 'ucaixaapap.pas' {frmCaixaApap};

{$R *.res}

begin
  Application.Initialize;
  frmSplash :=tfrmSplash.Create(application);
  frmSplash.Show;
  frmSplash.Update;
  Application.Title := '- Systcom - Sistema de Informação';
  Application.CreateForm(TfrmDados, frmDados);
  Application.CreateForm(Tfrmpesqtra, frmpesqtra);
  Atualizar;
  frmSplash.Hide;
  frmSplash.Free;
  Application.Run;
end.
