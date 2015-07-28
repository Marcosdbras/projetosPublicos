unit ecf_bematech;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  Tfrmecf_Bematech = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
//******************  COMANDOS ECF DO COMERCIO PLUS *************************\\


(*------------------------------ COMANDOS PRA O SINTEGRA --------------------*)
function ecf_registro_60A(ecf:string):string;
function ecf_registro_60M(ecf:string):string;
(*----------------------------- COMANDOS DE LEITURAS E PARAMETROS ------------------------------*)
function ecf_numero_serie(ecf:string):string;
function ecf_arredondamento(ecf:string;tipo:string):string;
function ecf_leitura_x(ecf:string):string;
function ecf_reducao_z(ecf:string):string;
function ecf_leitura_memoria_fiscal(ecf:string;data_inicial:string;data_final:string):string;
function ecf_abre_gaveta(ecf:string):string;
function ecf_suprimentoX(ecf:string;valor:string;forma_pgto:string):string;
function ecf_sangriaX(ecf:string;valor:string):string;
function ecf_operador(ecf:string;operador:string):string;


(*----------------------------- COMANDOS DE INFORMACOES ---------------------------*)
function ecf_numero_cupom(ecf:string):string;
function ecf_numero_caixa(ecf:string):string;
function ecf_data_hora(ecf:string):string;
function ecf_ligada(ecf:string):string;
function ecf_modeloecf(ecf:string):string;

(*----------------------------- COMANDOS DE CUPOM ---------------------------------*)
function ecf_cancela_cupom(ecf:string):string;
function ecf_abre_cupom(ecf:string;CPF:string):string;
function ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
function ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
function ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
function ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
function ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real):string;
function ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
function ecf_termina_fechamento(ecf:string;mensagem:string):string;
function ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
function ecf_cancela_item(ecf:string;item:string):string;

(*----------------------------- COMPROVANTE NAO FISCAL VINCULADO ------------------*)

function ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
function ecf_usa_CNFV(ecf:string;texto:string):string;
function ecf_fecha_CNFV(ecf:string):string;
  end;
{===============================================================================
********************************************************************************

                      DECLARAÇÃO DAS FUNÇÕES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

Procedure Analisa_iRetorno;
Procedure Retorno_Impressora;


// Funções de Inicialização

function Bematech_FI_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaArredondamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaTruncamento: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ProgramaTruncamento';
function Bematech_FI_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções do Cupom Fiscal

function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemAnterior: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ResetaImpressora: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoImpAntiga( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções dos Relatórios Fiscais

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções das Operações Não Fiscais

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções de Informações da Impressora 

function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_LeituraXSerial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ContadorBilhetePassagem( ContadorPassagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaDepartamentos( Departamentos: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções de Autenticação e Gaveta de Dinheiro 

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao'; 
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta'; 
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções para a Impressora Restaurante 

function Bematech_FIR_AbreCupomRestaurante( Mesa: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistraVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_CancelaVenda( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ConferenciaMesa( Mesa: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_AbreConferenciaMesa( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaConferenciaMesa( FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaMesa( MesaOrigem: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ContaDividida( NumeroCupons: String; ValorPago: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomContaDividida( NumeroCupons: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; FormasPagamento: String; ValorFormasPagamento: String; ValorPagoCliente: String; CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_TransferenciaItem( MesaOrigem: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; FlagAcrescimoDesconto: String; ValorAcrescimoDesconto: String; MesaDestino: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_RelatorioMesasAbertas( TipoRelatorio: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_ImprimeCardapio: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_CardapioPelaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_RegistroVendaSerial( Mesa: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FIR_VerificaMemoriaLivre( Bytes: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomRestaurante( FormaPagamento: String; FlagAcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorFormaPagto: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FIR_FechaCupomResumidoRestaurante( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Função para a Impressora Bilhete de Passagem

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Funções de Impressão de Cheques 

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque';

// Outras Funções 

function Bematech_FI_AbrePortaSerial: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_FechaPortaSerial: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechaPortaSerial'; 
function Bematech_FI_MapaResumo:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumo'; 
function Bematech_FI_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechamentoDoDia: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FechamentoDoDia';
function Bematech_FI_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeConfiguracoesImpressora';
function Bematech_FI_ImprimeDepartamentos: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeDepartamentos';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
//function Bematech_FI_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'BEMAFI32.DLL';

// Funções da Impressora Fiscal MFD

function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupomMFD(CGC, Nome, Endereco: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CupomAdicionalMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioGerencialMFD (Indice, Descricao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AutenticacaoMFD(Linhas, Texto : string) : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRecebimentoNaoFiscalMFD(Mensagem : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioGerencialMFD(Indice : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioGerencialMFD(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CNPJMFD(CNPJ : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoEstadualMFD(InscricaoEstadual : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InscricaoMunicipalMFD(InscricaoMunicipal : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoOperacionalMFD(TempoOperacional : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MinutosEmitindoDocumentosFiscaisMFD(Minutos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRecebimentoNaoFiscalMFD(Recebimentos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorFitaDetalheMFD(ContadorFita : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ReducoesRestantesMFD(Reducoes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresParciaisMFD(Totalizadores : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraChequeMFD(CodigoCMC7 : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoImpressoraMFD(var ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TamanhoTotalMFD( cTamanhoMFD: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalMFD( cFlag: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaCupomMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TotalizaRecebimentoMFD: integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_PercentualLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraUltimoDocumentoMFD( cDataHora: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60AnaliticoMFD';
function Bematech_FI_ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioSintegraMFD( iRelatorios : Integer; 
                                           cArquivo    : String;
                                           cMes        : String; 
                                           cAno        : String;
                                           cRazaoSocial: String;
                                           cEndereco   : String;
                                           cNumero     : String;
                                           cComplemento: String;
                                           cBairro     : String;
                                           cCidade     : String;
                                           cCEP        : String;
                                           cTelefone   : String;
                                           cFax        : String;
                                           cContato    : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMF( Arquivo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem   : String;
                                      ArquivoDestino  : String;
                                      TipoFormato     : String;
                                      TipoDownload    : String;
                                      ParametroInicial: String;
                                      ParametroFinal  : String;
                                      UsuarioECF      : String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções disponíveis somente na impressora fiscal MP-2000 TH FI versão 01.00.02
function Bematech_FI_AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaCorteProximoMFD(): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AtivaDesativaTratamentoONOFFLineMFD( iFlag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_StatusEstendidoMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFlagCorteMFD( Var iStatus: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TempoRestanteComprovanteMFD( cTempo: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UFProprietarioMFD( cUF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalUltimaReducaoMFD( cGT: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimentoUltimaReducaoMFD( cData: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimCOOsMFD( cCOOIni, cCOOFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_InicioFimGTsMFD( cGTIni, cGTFim: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções para a impressão de Código de Barras

function Bematech_FI_TerminaFechamentoCupomCodigoBarrasMFD( cMensagem: string;
                                                            cTipoCodigo: string;
                                                            cCodigo: string;
                                                            iAltura: integer;
                                                            iLargura: integer;
                                                            iPosicaoCaracteres: integer;
                                                            iFonte: integer;
                                                            iMargem: integer;
                                                            iCorrecaoErros: integer;
                                                            iColunas: integer ): Integer; StdCall; External 'BEMAFI32.DLL';







var
  frmecf_Bematech: Tfrmecf_Bematech;
  IRETORNO, i : INTEGER;
  bRetornoEstendido : BOOLEAN;
  continuacao : string;


implementation

{$R *.dfm}



Procedure Analisa_iRetorno();
Begin
  if iRetorno = 0 then BEGIN Application.MessageBox( 'Erro de Comunicação !', 'Erro',MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -1 THEN BEGIN
    Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro', MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -2  THEN BEGIN
    Application.MessageBox( 'Parâmetro Inválido !', 'Erro',MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -3  THEN BEGIN
    Application.MessageBox( 'Alíquota não programada !', 'Atenção',MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -4 THEN BEGIN
    Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -5 THEN BEGIN
    Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro',
                                MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -6 THEN BEGIN
    Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -7 THEN BEGIN
    Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -8 THEN BEGIN
    Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -18 THEN BEGIN
    Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -19 THEN BEGIN
    Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -20 THEN BEGIN
    Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -21 THEN BEGIN
    Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -22 THEN BEGIN
    Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -23 THEN BEGIN
    Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -24 THEN BEGIN
    Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -25 THEN BEGIN
    Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -26 THEN BEGIN
    Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -28 THEN BEGIN
    Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;
End;

// ------------------- Analisa Retorno da Impressora --------------------

Procedure Retorno_Impressora;
  Var iACK, iST1, iST2, iST3: Integer;
Begin
  iACK := 0; iST1 := 0; iST2 := 0; iST3 := 0;
  if ( bRetornoEstendido = true ) then
     iRetorno := Bematech_FI_RetornoImpressoraMFD( iACK, iST1, iST2, iST3 )
  else
     iRetorno := Bematech_FI_RetornoImpressora( iACK, iST1, iST2 );

  If iACK = 21 Then
     BEGIN
       Application.MessageBox( 'A Impressora retornou NAK. O programa será abortado!', 'Erro', MB_IconError + MB_OK );
       continuacao := 'ERRO';
     End
  else
  BEGIN
     if ( bRetornoEstendido = true ) then
        Application.MessageBox( pchar( 'ACK = 6, ST1 = ' + inttostr( iSt1 ) +
                                              ', ST2 = ' + inttostr( iSt2 ) +
                                              ', ST3 = ' + inttostr( iSt3 ) ), 'Retorno da Impressora', MB_IconInformation + MB_OK );
  END;
  If ( iACK = 6 ) then
  BEGIN
    // Verifica ST1
    IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; APPLICATION.MESSAGEBOX('Fim do Papel!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  APPLICATION.MESSAGEBOX('Papel está terminando!','Erro',mb_ok+mb_iconwarning) END;
    IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  APPLICATION.MESSAGEBOX('Erro no relógio!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  APPLICATION.MESSAGEBOX('Impressora em ERRO!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   APPLICATION.MESSAGEBOX('CMD não iniciado com ESC','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   APPLICATION.MESSAGEBOX('Comando Inexistente','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   APPLICATION.MESSAGEBOX('Cupom Aberto','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   APPLICATION.MESSAGEBOX('Nº de Parâmetros Inválidos!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;

    // Verifica ST2
    IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; APPLICATION.MESSAGEBOX('Tipo de Parâmetro Inválido','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  APPLICATION.MESSAGEBOX('Memória Fiscal Lotada','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  APPLICATION.MESSAGEBOX('CMOS não Volátil!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  APPLICATION.MESSAGEBOX('Alíquota Não Programada','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   APPLICATION.MESSAGEBOX('Alíquotas lotadas','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   APPLICATION.MESSAGEBOX('Cancelamento ñ Permitido','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   APPLICATION.MESSAGEBOX('CGC/IE não Programados','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   APPLICATION.MESSAGEBOX('Comando não Executado','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
  End;
End;




function tfrmecf_bematech.ecf_registro_60A(ecf:string):string;
begin
    iRetorno := Bematech_FI_RelatorioTipo60Analitico();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;

end;


function tfrmecf_bematech.ecf_registro_60M(ecf:string):string;
begin
    iRetorno := Bematech_FI_RelatorioTipo60Mestre();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;

end;


function tfrmecf_bematech.ecf_numero_serie(ecf:string):string;
  var cNumeroSerie : String;
      iConta       : Integer;
Begin

    For iConta := 1 To 15 Do cNumeroSerie := cNumeroSerie + ' ';
    iRetorno := Bematech_FI_NumeroSerie( cNumeroSerie );
    Analisa_iRetorno();
    Retorno_Impressora();
    result :=  cNumeroSerie;

end;


function tfrmecf_bematech.ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
begin
    iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(forma_pgto,valor,numero_cupom);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;

end;

function tfrmecf_bematech.ecf_usa_CNFV(ecf:string;texto:string):string;
begin
    iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado(texto);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_fecha_CNFV(ecf:string):string;
begin
    iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_arredondamento(ecf:string;tipo:string):string;
begin
end;
function tfrmecf_bematech.ecf_leitura_x(ecf:string):string;
begin
    iRetorno := Bematech_FI_LeituraX();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_reducao_z(ecf:string):string;
begin
    iRetorno := Bematech_FI_ReducaoZ('', '');
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_leitura_memoria_fiscal(ecf:string;data_inicial:string;data_final:string):string;
begin

    iRetorno := Bematech_FI_LeituraMemoriaFiscalData( pchar( DATA_INICIAL ), pchar( DATA_FINAL));
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;

end;

function tfrmecf_bematech.ecf_suprimentoX(ecf:string;valor:string;forma_pgto:string):string;
begin
    iRetorno :=  Bematech_FI_Suprimento( pchar( VALOR ), pchar( FORMA_PGTO) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_sangriaX(ecf:string;valor:string):string;
begin
    iRetorno :=  Bematech_FI_Sangria( pchar( VALOR ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_operador(ecf:string;operador:string):string;
begin
    result := '00';
end;

function tfrmecf_bematech.ecf_ligada(ecf:string):string;
begin
 iRetorno := Bematech_FI_VerificaImpressoraLigada();
 continuacao := 'OK';
 Analisa_iRetorno();
 Retorno_Impressora();
 result := continuacao;
end;

function tfrmecf_bematech.ecf_modeloecf(ecf:string):string;
begin
end;

function tfrmecf_bematech.ecf_abre_gaveta(ecf:string):string;
begin
    iRetorno := Bematech_FI_AcionaGaveta();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_numero_cupom(ecf:string):string;
var numero_cupom: String;
iconta : integer;
begin
    For iConta := 1 To 6 Do numero_cupom := Numero_Cupom + ' ';
    iRetorno := Bematech_FI_NumeroCupom( Numero_Cupom );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    if continuacao = 'ERRO' THEN
    begin
      result := 'ERRO';
      exit;
    end
    else
    begin
     result := numero_cupom;
    end;

end;
function tfrmecf_bematech.ecf_numero_caixa(ecf:string):string;
var numero_caixa: String;
iconta : integer;
begin
    For iConta := 1 To 4 Do numero_caixa := Numero_caixa + ' ';
    iRetorno := Bematech_FI_NumeroCaixa( numero_caixa );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    if continuacao = 'ERRO' THEN
    begin
      result := 'ERRO';
      exit;
    end
    else
    begin
     result := numero_caixa;
    end;
end;
function tfrmecf_bematech.ecf_data_hora(ecf:string):string;
var data, hora: String;
iconta : integer;
begin
    for iConta := 1 to 6 do  Data := Data + ' ';
    for iConta := 1 to 6 do  Hora := Hora + ' ';
    iRetorno := Bematech_FI_DataHoraImpressora( Data, Hora );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    if continuacao = 'ERRO' THEN
    begin
      result := 'ERRO';
      exit;
    end
    else
    begin
     insert('/',data,3);
     insert('/',data,6);
     insert(':',hora,3);
     insert(':',hora,6);
     RESULT := data+'   '+hora;
    end;
end;

function tfrmecf_bematech.ecf_cancela_cupom(ecf:string):string;
begin
    iRetorno :=  Bematech_FI_CancelaCupom();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_abre_cupom(ecf:string;cpf:string):string;
begin
    iRetorno := Bematech_FI_AbreCupom( Pchar( '' ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
var posicao : integer;
quantidade_string, unitario_string, texto, total_string, ST : string;
begin
  if codigo = ''  then codigo := '999999';
  if codigo = '0' then codigo := '999999';
  if codigo = '00000' then codigo := '999999';
    IF ALIQUOTA = '07' THEN ALIQUOTA := '0700';
    IF ALIQUOTA = '12' THEN ALIQUOTA := '1200';
    IF ALIQUOTA = '17' THEN ALIQUOTA := '1700';
    IF ALIQUOTA = '19' THEN ALIQUOTA := '1900';
    IF ALIQUOTA = '25' THEN ALIQUOTA := '2500';
    IF ALIQUOTA = '26' THEN ALIQUOTA := '2600';
    IF ALIQUOTA = '27' THEN ALIQUOTA := '2700';
    IF ALIQUOTA = '33' THEN ALIQUOTA := '3300';
    IF ALIQUOTA = '41' THEN ALIQUOTA := '4100';
    IF ALIQUOTA = 'F' THEN ALIQUOTA := 'FF';
    IF ALIQUOTA = 'I' THEN ALIQUOTA := 'II';
    IF ALIQUOTA = 'N' THEN ALIQUOTA := 'NN';
    IF ALIQUOTA = '' THEN ALIQUOTA := '1900';


      iretorno := Bematech_FI_VendeItemDepartamento(codigo,
                                                    produto,
                                                    aliquota,
                                                    formatfloat('###############0.00',Unitario*10),
                                                    formatfloat('###############0.00',quantidade*10),
                                                    formatfloat('###############0.00',Valor_ACRESCIMO),
                                                    formatfloat('###############0.00',Valor_DESCONTO),
                                                    '01',
                                                    UNIDADE);



    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;

function tfrmecf_bematech.ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
var posicao : integer;
quantidade_string, unitario_string, texto, total_string, ST : string;
begin
  if codigo = ''  then codigo := '999999';
  if codigo = '0' then codigo := '999999';
  if codigo = '00000' then codigo := '999999';
    IF ALIQUOTA = '07' THEN ALIQUOTA := '0700';
    IF ALIQUOTA = '12' THEN ALIQUOTA := '1200';
    IF ALIQUOTA = '17' THEN ALIQUOTA := '1700';
    IF ALIQUOTA = '19' THEN ALIQUOTA := '1900';
    IF ALIQUOTA = '25' THEN ALIQUOTA := '2500';
    IF ALIQUOTA = '26' THEN ALIQUOTA := '2600';
    IF ALIQUOTA = '27' THEN ALIQUOTA := '2700';
    IF ALIQUOTA = '33' THEN ALIQUOTA := '3300';
    IF ALIQUOTA = '41' THEN ALIQUOTA := '4100';
    IF ALIQUOTA = 'F' THEN ALIQUOTA := 'FF';
    IF ALIQUOTA = 'I' THEN ALIQUOTA := 'II';
    IF ALIQUOTA = 'N' THEN ALIQUOTA := 'NN';
    IF ALIQUOTA = '' THEN ALIQUOTA := '1900';


    if length(produto) > 29 then
    begin
      iretorno := Bematech_FI_VendeItemDepartamento(codigo,
                                                    produto,
                                                    aliquota,
                                                    formatfloat('###############0.00',Unitario*10),
                                                    formatfloat('###############0.000',quantidade*10),
                                                    '0',
                                                    formatfloat('###############0.00',Valor_Desconto*10 ),
                                                    '01',
                                                    'UN');


    end
    else
    begin
      iRetorno := Bematech_FI_VendeItem( codigo,
                                       produto,
                                       aliquota,
                                       tipo_quantidade,
                                       formatfloat('###############0.000',quantidade ),
                                       casas_decimais,
                                       formatfloat('###############0.00',Unitario),
                                       tipo_Desconto,
                                       formatfloat('###############0.00',Valor_Desconto ) );
    end;

    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
VAR DESCONTO_STRING, ACRESCIMO_STRING : STRING;
posicao : integer;
begin

    iRetorno := Bematech_FI_IniciaFechamentoCupom(acrescimo_ou_desconto, Tipo_Acrescimo_Desconto, formatfloat('###############0.00',Valor_Acrescimo_Desconto));
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
begin
    iRetorno :=   Bematech_FI_EfetuaFormaPagamento( forma_Pgto, formatfloat('##############0.00',valor ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real):string;
begin
end;

function tfrmecf_bematech.ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
begin
end;
function tfrmecf_bematech.ecf_termina_fechamento(ecf:string;mensagem:string):string;
begin
    iRetorno :=  Bematech_FI_TerminaFechamentoCupom(MENSAGEM);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;
function tfrmecf_bematech.ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
begin
end;


function tfrmecf_bematech.ecf_cancela_item(ecf:string;item:string):string;
begin
    iRetorno := Bematech_FI_CancelaItemGenerico( ITEM );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
end;


end.
