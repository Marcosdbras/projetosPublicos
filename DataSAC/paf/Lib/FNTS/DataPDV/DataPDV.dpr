program DataPDV;

uses
  Forms,
  Windows,
  principal in 'principal.pas' {frmPrincipal},
  modulo in 'modulo.pas' {frmModulo: TDataModule},
  funcoes in 'funcoes.pas',
  venda in 'venda.pas' {frmVenda},
  mesas in 'mesas.pas' {frmMesas},
  VendedorConsulta in 'VendedorConsulta.pas' {frmVendedorConsulta},
  produto_consulta_normal in 'produto_consulta_normal.pas' {frmProduto_consulta_normal},
  protetor_tela in 'protetor_tela.pas' {frmProtetor_tela},
  venda_crediario in 'venda_crediario.pas' {frmVenda_Crediario},
  Vendedor in 'Vendedor.pas' {frmVendedor},
  UtiSplash in 'UtiSplash.pas' {frmUtiSplash},
  unECF in 'unECF.pas',
  msg_Operador in 'msg_Operador.pas' {frmMsg_Operador},
  Leitura_Memoria_Fiscal in 'Leitura_Memoria_Fiscal.pas' {frmLeitura_Memoria_Fiscal},
  Download_MFD in 'Download_MFD.pas' {frmDownload_MFD},
  Lista_Vendas_Periodo in 'Lista_Vendas_Periodo.pas' {frmLista_Vendas_Periodo},
  Identifica in 'Identifica.pas' {frmIdentifica},
  config_ecf in 'config_ecf.pas' {frmConfig_ECF},
  unTEF in 'unTEF.pas',
  mensagem in 'mensagem.pas' {frmMensagem},
  TEF_Cancelamento in 'TEF_Cancelamento.pas' {frmTEF_cancelamento},
  Tef_bandeira in 'Tef_bandeira.pas' {frmTef_Bandeira},
  caixa_fechamento in 'caixa_fechamento.pas' {frmCaixa_Fechamento},
  senha_supervisor in 'senha_supervisor.pas' {frmSenha_Supervisor},
  suprimento in 'suprimento.pas' {frmSuprimento},
  sangria in 'sangria.pas' {frmSangria},
  menu_cupom in 'menu_cupom.pas' {frmCupom_Menu},
  cupom_impressao in 'cupom_impressao.pas' {frmcupom_impressao},
  OpenSSLUtils in 'OpenSSLUtils.pas',
  md5 in 'MD5.pas',
  libeay32 in 'libeay32.pas',
  Orcamento in 'Orcamento.pas' {frmOrcamento},
  Orcamento_Abrir in 'Orcamento_Abrir.pas' {frmOrcamento_Abrir},
  Orcamento_Item in 'Orcamento_Item.pas' {frmOrcamento_Item},
  produto_consulta in 'produto_consulta.pas' {frmProduto_consulta},
  Meios_pagamento in 'Meios_pagamento.pas' {frmMeios_Pagamento},
  Arquivo_Fiscal in 'Arquivo_Fiscal.pas' {frmArquivo_Fiscal},
  consulta_estoque in 'consulta_estoque.pas' {frmConsulta_Estoque},
  menu_fiscal in 'menu_fiscal.pas' {frmMenu_Fiscal},
  contasreceber_boleto_achado in 'util\contasreceber_boleto_achado.pas' {frmcontasreceber_boleto_achado},
  xloc_cliente in 'util\xloc_cliente.pas' {frmxloc_cliente},
  contasreceber_pgto in 'util\contasreceber_pgto.pas' {frmcontasreceber_pgto},
  contasreceber_banco in 'util\contasreceber_banco.pas' {frmContasreceber_banco},
  loc_contacorrent in 'util\loc_contacorrent.pas' {frmloc_contacorrente},
  extenso1 in 'util\extenso1.pas',
  pre_venda in 'pre_venda.pas' {frmPre_Venda},
  caixa_abertura in 'caixa_abertura.pas' {frmCaixa_Abertura},
  notafiscal_menu in 'notafiscal_menu.pas' {frmnotafiscal_menu},
  notafiscal_item2 in 'notafiscal_item2.pas' {frmNotaFiscal_Item2},
  loc_filial in 'loc_filial.pas' {frmloc_filial},
  loc_cfop in 'loc_cfop.pas' {frmloc_cfop},
  xloc_cfop in 'xloc_cfop.pas' {frmxloc_cfop},
  xloc_servico in 'xloc_servico.pas' {frmxloc_servico},
  NotaFiscal_Item_grade in 'NotaFiscal_Item_grade.pas' {frmNotaFiscal_Item_grade},
  NotaFiscal_Item_Serial in 'NotaFiscal_Item_Serial.pas' {frmNotaFiscal_Item_Serial},
  xloc_cst in 'xloc_cst.pas' {frmxloc_cst},
  xloc_produto in 'xloc_produto.pas' {frmxloc_produto},
  xloc_modelo in '..\..\..\..\SERVER\fnts\xloc_modelo.pas' {frmxloc_modelo},
  os in 'os.pas' {frmOS},
  Lista_DAV in 'Lista_DAV.pas' {frmLista_DAV},
  tabela_indice in 'tabela_indice.pas' {frmTabela_Indice},
  prevenda_conciliar in 'prevenda_conciliar.pas' {frmPrevenda_conciliar},
  fabricacao in 'fabricacao.pas' {frmFabricacao},
  unSintegra in '..\sintegra\unSintegra.pas',
  Unit_Validacao_Sintegra in '..\sintegra\Validacao_Sintegra\Unit_Validacao_Sintegra.pas',
  Valida_CFOP in '..\sintegra\Validacao_CFOP\Valida_CFOP.pas',
  Valida_NCM in '..\sintegra\Validacao_NCM\Valida_NCM.pas',
  config_balanca in 'config_balanca.pas' {frmconfig_balanca},
  Config in 'Config.pas' {frmConfig},
  senha in 'senha.pas' {frmsenha},
  Constantes in 'Constantes.pas',
  consumidor in 'consumidor.pas' {frmConsumidor},
  cliente_consulta in 'cliente_consulta.pas' {frmCliente_consulta},
  loc_produto_servidor in '..\..\..\..\SERVER\fnts\loc_produto_servidor.pas' {frmLoc_Produto_Servidor},
  EspelhoMFD in 'EspelhoMFD.pas' {frmEspelhoMFD},
  preco_consultap in 'img\preco_consultap.pas' {frmPreco_consultap},
  ContasReceberNovo in 'ContasReceberNovo.pas' {frmContasReceberNovo},
  notafiscalNova in 'notafiscalNova.pas' {frmNotaFiscalNova},
  funcoes_ibpt in 'funcoes_ibpt.pas',
  conexao_ibpt in 'conexao_ibpt.pas' {frmconexao_ibpt: TDataModule},
  comanda in 'comanda.pas' {frmcomanda};

var
  Hand : THandle;

{$R *.res}

begin
  // GUIO: 04/03/2010 - Verificação se o aplicativo já está carregado
  Hand := FindWindow('TApplication', 'DataPDV 2.0');

  // GUIO: 04/03/2010 - Caso não esteja, cria o formulário entra normalmente
  if Hand = 0 then
  begin
    Application.Initialize;
    Application.Title := 'DataPDV 2.0';
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmMsg_Operador, frmMsg_Operador);
  Application.CreateForm(TfrmLoc_Produto_Servidor, frmLoc_Produto_Servidor);
  Application.CreateForm(Tfrmconexao_ibpt, frmconexao_ibpt);
  Application.Run;
  end
  // GUIO: 04/03/2010 - Se já estiver carregado, somente mostra o formulário
  else
  begin
    application.MessageBox('Já existe uma sessão aberta deste aplicativo!','Atenção',mb_ok+MB_ICONERROR );
    ShowWindow(Hand,SW_NORMAL);
    Application.terminate;
  end;
end.
