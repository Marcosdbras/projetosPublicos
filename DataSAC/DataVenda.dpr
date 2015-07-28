program DataVenda;

uses
  Forms,
  windows,
  principal in 'fnts\principal.pas' {frmprincipal},
  modulo in 'fnts\modulo.pas' {frmmodulo: TDataModule},
  loc_produto in 'fnts\loc_produto.pas' {frmloc_produto},
  menu in 'fnts\menu.pas' {frmmenu},
  item_cancelar in 'fnts\item_cancelar.pas' {frmitem_cancelar},
  consulta_preco in 'fnts\consulta_preco.pas' {frmconsulta_preco},
  venda_contasreceber in 'fnts\venda_contasreceber.pas' {frmvenda_contasreceber},
  troco in 'fnts\troco.pas' {frmvenda_troco},
  venda_fechamento in 'fnts\venda_fechamento.pas' {frmvenda_fechamento},
  senha_caixa in 'fnts\senha_caixa.pas' {frmsenha_caixa},
  senha in 'fnts\senha.pas' {frmsenha},
  consumidor in 'fnts\consumidor.pas' {frmConsumidor},
  loc_cliente in 'fnts\loc_cliente.pas' {frmloc_cliente},
  caixa_indisponivel in 'fnts\caixa_indisponivel.pas' {FRMCAIXA_INDISPONIVEL},
  sangriacaixa in 'fnts\sangriacaixa.pas' {frmsangriacaixa},
  leituraMemoria in 'fnts\leituraMemoria.pas' {frmLeituraMemoria},
  caixa_abertura_individual in 'fnts\caixa_abertura_individual.pas' {frmcaixa_abertura_individual},
  suprimentocaixa in 'fnts\suprimentocaixa.pas' {frmsuprimentocaixa},
  balanca in 'fnts\balanca.pas' {frmbalanca},
  filizola in 'fnts\filizola.pas' {frmfilizola},
  config in 'fnts\config.pas' {frmconfig},
  UConstantes in 'fnts\UConstantes.pas',
  toledo in 'fnts\toledo.pas' {frmToledo},
  venda_impressao in 'fnts\venda_impressao.pas' {frmvenda_impressao},
  caixa_fechado in 'fnts\caixa_fechado.pas' {frmcaixa_fechado},
  notas_venda in 'fnts\notas_venda.pas' {frmnotas_venda},
  notas_venda_impressao in 'fnts\notas_venda_impressao.pas' {frmnotas_venda_impressao},
  cliente_consulta in 'fnts\cliente_consulta.pas' {frmcliente_consulta},
  aviso in 'fnts\aviso.pas' {frmaviso},
  progresso in 'fnts\progresso.pas' {frmprogresso},
  fechamento_dinheiro in 'fnts\fechamento_dinheiro.pas' {frmfechamento_dinheiro},
  ecf_sweda in 'fnts\ecf_sweda.pas' {frmecf_Sweda},
  ecf_bematech in 'fnts\ecf_bematech.pas' {frmecf_Bematech},
  ecf_urano in 'fnts\ecf_urano.pas' {frmecf_Urano},
  ecf_yanco in 'fnts\ecf_yanco.pas' {frmecf_Yanco},
  ecf_daruma in 'fnts\ecf_daruma.pas' {frmecf_Daruma},
  veiculo_ident in 'fnts\veiculo_ident.pas' {frmveiculo_ident},
  cheque in 'fnts\cheque.pas' {frmcheque},
  cheque_conta in 'fnts\cheque_conta.pas' {frmcheque_conta},
  loc_banco in 'fnts\loc_banco.pas' {frmloc_banco},
  loc_contacorrent in 'fnts\loc_contacorrent.pas' {frmloc_contacorrente},
  contacorrente_lancamento2 in 'fnts\contacorrente_lancamento2.pas' {frmcontacorrente_lancamento2},
  loc_conta in 'fnts\loc_conta.pas' {frmloc_conta},
  xloc_cliente in 'fnts\xloc_cliente.pas' {frmxloc_cliente},
  cliente in 'fnts\cliente.pas' {frmcliente},
  loc_regiao in 'fnts\loc_regiao.pas' {frmloc_regiao},
  regiao in 'fnts\regiao.pas' {frmRegiao},
  loc_funci in 'fnts\loc_funci.pas' {frmloc_funci},
  lista_cliente2 in 'fnts\lista_cliente2.pas' {frmlista_cliente2},
  loc_convenio in 'fnts\loc_convenio.pas' {frmloc_convenio},
  lista_cheque2 in 'fnts\lista_cheque2.pas' {frmlista_cheque2},
  xloc_banco in 'fnts\xloc_banco.pas' {frmxloc_banco},
  ECF_REDUCAO in 'fnts\ECF_REDUCAO.pas' {FRMECF_REDUCAO},
  ecf_reducao_menu in 'fnts\ecf_reducao_menu.pas' {frmecf_reducao_menu},
  unFuncoesKoneKECF in 'FNTS\unFuncoesKoneKECF.pas',
  unMensagem in 'FNTS\unMensagem.pas' {frmMensagem},
  unFuncoesTEF in 'FNTS\unFuncoesTEF.pas',
  unCancelarTEF in 'FNTS\unCancelarTEF.pas' {frmCancelarTEF},
  msgcheque in 'FNTS\msgcheque.pas' {frmmsgcheque},
  msgcartao in 'FNTS\msgcartao.pas' {frmmsgcartao},
  consulta_cheque in 'FNTS\consulta_cheque.pas' {frmconsulta_cheque};

var
Hand : THandle;

{$R *.res}
begin
Hand := FindWindow('TApplication', 'DataVenda :: PDV');
// Localiza se já existe a aplicação.
if Hand = 0 then
// Se ainda não existe, inicializada
begin
  Application.Initialize;
  Application.Title := 'DataVenda :: PDV';
  Application.CreateForm(Tfrmprincipal, frmprincipal);
  Application.CreateForm(Tfrmmodulo, frmmodulo);
  Application.CreateForm(Tfrmaviso, frmaviso);
  Application.CreateForm(Tfrmconsulta_cheque, frmconsulta_cheque);
  Application.Run;
end
else
begin
  application.MessageBox('Já existe uma sessão aberta deste aplicativo!','Atenção',mb_ok+MB_ICONERROR );
  ShowWindow(Hand,SW_NORMAL);
  application.terminate;
end;
//caso contrario, apenas mostra na tela;

end.


