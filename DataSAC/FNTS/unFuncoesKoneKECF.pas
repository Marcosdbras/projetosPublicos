{ Projeto     : KoneKECF - Funções para ECF
  Versão      : 1.5.0
  Unit        : unFuncoesKoneKECF
  Função      : Define as funções do KoneKECF
  Autor       : Kohl em 21/04/2003
  Alterações  : Kohl em 02/11/2003
}
unit unFuncoesKoneKECF;

interface

uses
  Windows,
  Sysutils,
  Messages,
  Forms,
  Dialogs,
  IniFiles;

// =================================
// =====< Funções da KoneKECF >=====
// =================================

// =====< Funções Generéricas da DLL >=====
// -----------------------------------------

function KnK_LeECF(): integer; stdcall; external 'KoneKECF.Dll';
function KnK_DefineECF(ecf:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_ExibeErros(exibirErro:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_ExibeAguarde(exibirAguarde:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_AnalisaRetornoComando(retorno:integer): integer; stdcall; external 'KoneKECF.Dll';
function KnK_AnalisaRetornoECF(): integer; stdcall; external 'KoneKECF.Dll';
function KnK_AnalisaRetorno(retorno:integer): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ECFOk(): integer; stdcall; external 'KoneKECF.Dll';

// =====< Funções do Grupo Cupom Fiscal >=====
// -------------------------------------------

function KnK_AbrirCupom(cnpj_cpf:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_VenderItem(codigo,descricao,quantidade,vrUnitario,acresDesc,percValor,vrAcresDesc,aliquota,unidade,forcarImpressaoUmaLinha:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_AcrescimoDescontoItem(acresDesc,percValor,valor,descricao:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_CancelarItem(item:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_AcrescimoDescontoCupom(acresDesc,percValor,valor:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_FecharAcrescimoDesconto(padraoDesc,padraoAcres,valorLiquido:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_FormaPagamento(descricao,indice,valor,mensagem:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarCNPJ(CNPJ:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarRazaoSocial(razaoSocial:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_InformarInscricao(inscricao:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarEndereco(endereco:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarGerente(gerente:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarOperador(operador:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarVendedor(vendedor:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_InformarMensagemCupom(mensagem:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_FecharCupom(vinculado,cupomAdcional:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_CancelarCupom(): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Operações Não Fiscais >=====
// ----------------------------------------------------

function KnK_AbrirVinculado(cupomAssociado,formaPagto,valor:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ImprimirVinculado(linha1,linha2:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_FecharVinculado(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_CancelarVinculado(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_AbrirNaoFiscalNaoVinculado(): integer; stdcall; external 'KoneKECF.Dll';
function KnK_RegistrarNaoFiscal(indice,valor,formaPagto,mensagem:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_CancelarNaoVinculado(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_AbrirRelatorioGerencial(indice:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ImprimirRelatorioGerencial(linha:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_FecharRelatorioGerencial(): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Relatórios Fiscais >=====
// -------------------------------------------------

function KnK_LeituraX(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ReducaoZ(data:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_EmitirLeituraMemoriaFiscal(tipo,inicio,final:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_GravarLeituraX(arquivo:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_GravarLeituraMemoriaFiscal(tipo,inicio,final,arquivo:pChar): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Autenticação >=====
// -------------------------------------------

function KnK_Autenticar(linha,mensagem:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_RepetirAutenticacao(): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Gaveta >=====
// -------------------------------------

function KnK_AbrirGaveta(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_VerificarGaveta(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Impressão de Cheques >=====
// ---------------------------------------------------

function KnK_ChequeProgramarMoeda(moedaSingular,moedaPlural:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_ChequeImprimir(numeroBanco,valor,favorecido,cidade,data,texto:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ChequeConfigurarFormatacao(valor,extenso,favorecido,cidade,data,bomPara,cruzarCheque:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ChequeImprimirVerso(linha1,linha2:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ChequeLerCMC7(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ChequeExpulsar(): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Inicialização >=====
// --------------------------------------------

function KnK_ProgramarTributacao(tributacao:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_EntrarHorarioVerao(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_SairHorarioVerao(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_AjustarRelogio(hora:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ArredondarTruncar(metodo:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ForcarImpactoAgulhas(forcar:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ConfigurarLinhasEntreCupons(quantLinhas:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ProgramarTotalizadorNaoSujeitoICMS(indice,totalizador,tipoOperacao,vinculado,aceitaFormaPagto,indiceFormaPagto:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ProgramarRelatorioGerencial(indice,descricao:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_LerIndiceRelatorioGerencial(indice,descricao:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_ProgramarFormasDePagamento(indice,descricao,vinculado:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_LerFormaDePagamento(indice,descricao:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_AbrirDia(data:pChar): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Informações da Impressora >=====
// --------------------------------------------------------

function KnK_LerInformacaoImpressora(codigo,retorno:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_LerAliquotas(aliquotas:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_LerValorTotalAliquotas(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_LerTotalizadoresNSICMS(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_LerTodasFormasPagamentos(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_LerValorTotalizadorNSICMS(indice,descricao,valor:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_LerValorFormaPagamento(indice,descricao,valor:pChar): integer; stdcall; external 'KoneKECF.Dll'; 

// =====< Funções do Grupo Outras >=====
// -------------------------------------

function KnK_AbrirPorta(porta:pChar): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_FecharPorta(): integer; stdcall; external 'KoneKECF.Dll'; 
function KnK_VerificarEstado(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_RetornarFeatures(retorno:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_PegarCodigoErro(erro:integer;mensagem,acao:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_ConfigurarFonte(fonte:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_InformarFonte(fonte:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_Configura(): integer; stdcall; external 'KoneKECF.Dll';

// =====< Funções do Grupo Fabricante >=====
// -----------------------------------------

function KnK_Fabricante(entrada,retorno:pChar): integer; stdcall; external 'KoneKECF.Dll';

// =====< Funções do Grupo Restaurantes >=====
// -------------------------------------------

function KnK_RegistrarItem(mesa,codigo,descricao,descExtendida,trunca,quantidade,vrUnitario,acresDesc,percValor,vrAcresDesc,valorTotal,aliquota,unidade,detalhado:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_CancelarRegistroItem(mesa,codigo,descricao,quantidade,vrUnitario,acresDesc,percValor,vrAcresDesc,valorTotal,aliquota:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_AbrirConferencia(mesa:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_FecharConferencia(mesa,acresDesc,percValor,vrAcresDesc:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_TransferirMesa(mesaOrigem,mesaDestino:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_TransferirItem(mesaOrigem,codigo,descricao,quantidade,vrUnitario,acresDesc,percValor,vrAcresDesc,valorTotal,aliquota,mesaDestino:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_AbrirCupomR(mesa:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_DividirCupom(numeroClientes:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_FormaDividida(numeroClientes,descricao,valor,mensagem:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_FecharCupomDividido(vinculado:pChar): integer; external 'KoneKECF.Dll'
function KnK_ImprimirMesasAbertas(tipo:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_GravarMesasAbertas(arquivo:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_ImprimirCardapio(): integer; stdcall; external 'KoneKECF.Dll';
function KnK_GravarCardapio(arquivo:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_GravarRegistroVenda(mesa,arquivo:pChar): integer; stdcall; external 'KoneKECF.Dll';
function KnK_VerificarMemoriaLivre(memoria:pChar): integer; stdcall; external 'KoneKECF.Dll';

implementation

end.
