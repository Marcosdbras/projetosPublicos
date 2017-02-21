unit unECF;

interface

uses
  Windows, SysUtils, Controls, Messages, Forms, Dialogs, Classes,
  Shellapi;


type
  // Matrizes (Records)
  tipo_parametro = Record
    Nome : string;
    Conteudo : string;
    Tipo : integer;
  end;
  // Totalizadores Parciais (aliquotas) retornado do ECF
  TTotalizador = Record
    Nome : String[20];
    Valor: Real;
  end;
var
  (* Retorno do ECF *)
    IRetorno : Integer;
    BRetorno : Boolean;
    iACK, iST1, iST2 : Integer;
    Handle : THandle;
    ecfMSG : string;
    nporta : integer;
    sMsg : string;

    (* Arrays Diversos*)
  tbTotalizador : array[1..50] of TTotalizador;

(***************************** FUNCOES ****************************************)
// Retornos
function cECF_Analisa_Retorno(COD_ECF:Integer):string;
function cECF_Retorno_Impressora(COD_ECF:Integer):string;
// Inicializacao

function cECF_Abre(COD_ECF:Integer;Porta:string):string;
function cECF_Fecha(COD_ECF:Integer):string;
// Informacoes e Status
function cECF_Ligada(COD_ECF:Integer):string;
function cECF_Numero_Serie(COD_ECF:Integer):string;
function cECF_Numero_Caixa(COD_ECF:Integer):string;
function cECF_Grande_Total(cod_ECF:integer):string;
// Relatorios
function cECF_LeituraX(COD_ECF:Integer):string;
(******************************************************************************)

(************************** IMPRESSORAS IMPLEMENTADAS *************************
1  - Bematech - Todos os Modelos
2  - Daruma
3  - SWEDA???
4  - EPSON

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

                      DECLARAÇÃO DAS FUNÇÕES DA BEMAFI32.DLL

********************************************************************************)

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

// Funções do PAF-ECF
function Bematech_FI_AbreDocumentoAuxiliarVenda(cIndiceGerencial: string; cTituloDAV: string; strNumeroDAV: String; strNomeEmitente: String; strCNPJ_CPFEmitente: String; strNomeDestinatario: String; strCNPJ_CPFDestinatario: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaDocumentoAuxiliarVenda(strMercadoria: String; strValorUnitario: String; strValorTotal: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaDocumentoAuxiliarVenda(strTotal: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupomPreVenda(strMD5: String; strNumeroPreVenda: String; strMensagemPromocional: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DAVEmitidosRelatorioGerencial(cIndiceGerencial: string; strDataInicial: String; strDataFinal: String): integer; StdCall; External 'BEMAFI32.DLL';
function genkkey(ChavePublica: String; ChavePrivada: String): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_DAVEmitidosArquivo(strNomeArquivo: String; strDataInicial: String; strDataFinal: String; strChavePublica: String; strChavePrivada: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataPAFECF(strDataInicial: String; strDataFinal: String; strTipoLeitura: String; strChavePublica: String; strChavePrivada: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoPAFECF(strCRZInicial: String; strCRZFinal: String; strTipoLeitura: String; strChavePublica: String; strChavePrivada: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EspelhoMFD(strNomeArquivo: String; strDadoInicial: String; strDadoFinal: String; strTipoDownload: String; strUsuario: String; strChavePublica: String; strChavePrivada: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ArquivoMFD( cNomeArquivoOrigem: String; cDadoInicial: String; cDadoFinal: String; cTipoDownload: String; cUsuario: String; iTipoGeracao: integer; cChavePublica: String; cChavePrivada: String; iUnicoArquivo: integer ): Integer;  StdCall; External'BEMAFI32.DLL';
function Bematech_FI_IdentificacaoPAFECF(cIndiceGerencial: string; strNumeroLaudo: String; strCNPJDesenvolvedor: String; strRazaoSocial: String; strEndereco: String; strTelefone: string; strContato: string; strNomeComercial: string; strVersao: string; strPrincipalExecutavel: string; strMD5PrincipalExecutavel: string; strDemaisArquivos: string; strMD5DemaisArquivos: string; strNumerosFabricacao: string): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalCriptografado(strGrandeTotalCriptografado: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotalDescriptografado(strGrandeTotalCriptografado: String; strGrandeTotalDescriptografado: String): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreRelatorioMeiosPagamento( cIndiceGerencial: string ): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_UsaRelatorioMeiosPagamento(strIdentificacao: string; strTipoDocumento: string; strValorAcumulado: string; strData: string; strSomaIndividual: string): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioMeiosPagamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioMeiosDePagamento: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioDocumentoAuxiliarDeVenda: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioDAVEmitidos: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatorioIdentificacaoPAFECF: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaRelatoriosPAFECF: Integer; StdCall; External 'BEMAFI32.DLL';
function md5FromFile(strFilename: string; strMD5: string): integer; stdcall; external 'BEMAFI32.DLL';

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
function Bematech_FI_FlagsFiscais3MFD( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
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

function BemaGeraRegistrosTipoE( cArqMFD: string; cArqTXT: string; cDataInicial: string; cDataFinal: string; cRazao: string; cEndereco: string; cPAR1: string; cCMD: string; cPAR2: string; cPAR3: string; cPAR4: string; cPAR5: string; cPAR6: string; cPAR7: string; cPAR8: string; cPAR9: string; cPAR10: string; cPAR11: string; cPAR12: string; cPAR13: string; cPAR14: string ): Integer; StdCall; External 'BemaMFD2.dll';
function Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario: string; dataSoftwareBasico: string; var letraAdicional: char ): integer; stdcall; external 'BEMAFI32.DLL';
function Bematech_FI_VerificaReducaoZAutomatica(flag:integer) : Integer; StdCall; External 'BEMAFI32.DLL';
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //


//Declaracao da Dll Integradora DarumaFramework.dll - Módulo Fiscal

//CUPOM FISCAL
//Abertura Cupom Fiscal
function iCFAbrir_ECF_Daruma(pszCPF: String; pszNome: String; pszEndereco: String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFAbrirPadrao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
//Registro de Item
function iCFVender_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszTipoDescAcresc:String; pszValorDescAcresc:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFVenderSemDesc_ECF_Daruma(pszCargaTributaria:String; pszQuantidade:String; pszPrecoUnitario:String; pszCodigoItem:String; pszUnidadeMedida:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFVenderResumido_ECF_Daruma(pszCargaTributaria:String; pszPrecoUnitario:String; pszCodigoItem:String; pszDescricaoItem:String): Integer; StdCall; External 'DarumaFramework.dll';
//Desconto ou Acréscimo em Item de Cupom Fiscal
function iCFLancarAcrescimoItem_ECF_Daruma(pszNumItem:String; pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFLancarDescontoItem_ECF_Daruma(pszNumItem:String; pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFLancarAcrescimoUltimoItem_ECF_Daruma(pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFLancarDescontoUltimoItem_ECF_Daruma(pszTipoDescAcresc: String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento Total de Item em Cupom Fiscal
function iCFCancelarItem_ECF_Daruma(pszNumItem: String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFCancelarUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento parcial de item em cupom fiscal
function iCFCancelarItemParcial_ECF_Daruma(pszNumItem:String;pszQuantidade: String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFCancelarUltimoItemParcial_ECF_Daruma(pszQuantidade: String): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de desconto e acrescimo em item
function iCFCancelarDescontoItem_ECF_Daruma(pszNumItem:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFCancelarDescontoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCFCancelarAcrescimoItem_ECF_Daruma(pszNumItem:string):Integer; StdCall; External 'DarumaFramework.dll';
function iCFCancelarAcrescimoUltimoItem_ECF_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
//Totalizacao de cupom fiscal
function iCFTotalizarCupom_ECF_Daruma(pszTipoDescAcresc:String; pszValorDescAcresc:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFTotalizarCupomPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de desconto e acrescimo em subtotal de cupom fiscal
function iCFCancelarDescontoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCFCancelarAcrescimoSubtotal_ECF(): Integer; StdCall; External 'DarumaFramework.dll';

//Descricao do meios de pagamento de cupom fiscal
function iCFEfetuarPagamentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCFEfetuarPagamentoFormatado_ECF_Daruma(pszFormaPgto:String; pszValor:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCFEfetuarPagamento_ECF_Daruma(pszFormaPgto:String;pszValor:String;pszInfoAdicional:String): Integer; StdCall; External 'DarumaFramework.dll';
//Encerramento de cupom fiscal
function iCFEncerrar_ECF_Daruma(pszCupomAdicional:string;pszMensagem:string):Integer; StdCall; External 'DarumaFramework.dll';
function iCFEncerrarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCFEncerrarConfigMsg_ECF_Daruma(pszMensagem:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCFEncerrarResumido_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCFEmitirCupomAdicional_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de cupom fiscal
function iCFCancelar_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
//Identificação Consumidor Cupom Fiscal
function iCFIdentificarConsumidor_ECF_Daruma(pszNome:string;pszEndereco:String; pszDoc:string): Integer; StdCall; External 'DarumaFramework.dll';
//Cupom Mania
function rCMEfetuarCalculo_ECF_Daruma(pszISS:string;pszICMS:string): Integer; StdCall; External 'DarumaFramework.dll';
//Estornar Meio Pagamento
function iEstornarPagamento_ECF_Daruma(pszFormaPgtoEstornado:string;pszFormaPgtoEfetivado:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';


//CCD - Comprovante de Crédito e Débito
function iCCDAbrir_ECF_Daruma(pszFormaPgto:String;pszParcelas:String;pszDocOrigem:String;pszValor:String;pszCPF:String;pszNome:String;pszEndereco:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCCDAbrirSimplificado_ECF_Daruma(pszFormaPgto:String; pszParcelas:String;pszDocOrigem:String;pszValor: String): Integer; StdCall; External 'DarumaFramework.dll';
function iCCDAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCCDImprimirTexto_ECF_Daruma(pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCCDImprimirArquivo_ECF_Daruma(pszArqOrigem:String): Integer; StdCall; External 'DarumaFramework.dll';
function iCCDFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//CCD - Segunda via
function iCCDSegundaVia_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Estorno CCD
function iCCDEstornarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCCDEstornar_ECF_Daruma(pszCOO:String;pszCPF:String; pszNome:String; pszEndereco:String): Integer; StdCall; External 'DarumaFramework.dll';
//TEF
function iTEF_ImprimirResposta_ECF_Daruma(szArquivo:String; bTravarTeclado:Boolean):Integer; StdCall; External 'DarumaFramework.dll';
function iTEF_ImprimirRespostaCartao_ECF_Daruma(szArquivo:string; bTravarTeclado:Boolean; szForma:string; szValor:string):Integer; StdCall; External 'DarumaFramework.dll';
function iTEF_Fechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eTEF_EsperarArquivo_ECF_Daruma(szArquivo: String; iTempo:integer; bTravar:Boolean): Integer; StdCall; External 'DarumaFramework.dll';
function eTEF_TravarTeclado_ECF_Daruma(bTravar:Boolean):Integer; StdCall; External 'DarumaFramework.dll';
function eTEF_SetarFoco_ECF_Daruma(szNomeTela:String):Integer; StdCall; External 'DarumaFramework.dll';

// CNF - Comprovante Não Fiscal
// Abertura de comprovante nao fiscal
function iCNFAbrir_ECF_Daruma(pszCPF:string; pszNome:string;pszEndereco:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
// Recebimento de itens
function iCNFReceber_ECF_Daruma(pszIndice:string;pszValor:string;pszTipoDescAcresc:string;pszValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFReceberSemDesc_ECF_Daruma(pszIndice:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de item
function iCNFCancelarItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFCancelarUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de acrescimo em item
function iCNFCancelarAcrescimoItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFCancelarAcrescimoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de desconto em item
function iCNFCancelarDescontoItem_ECF_Daruma(pszNumItem:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFCancelarDescontoUltimoItem_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Totalizacao de CNF
function iCNFTotalizarComprovante_ECF_Daruma(pszTipoDescAcresc:string;pszValorDescAcresc:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFTotalizarComprovantePadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de desconto e acrescimo em subtotal de CNF
function iCNFCancelarAcrescimoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFCancelarDescontoSubtotal_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Descricao do meios de pagamento de CNF
function iCNFEfetuarPagamento_ECF_Daruma(pszFormaPgto:string;pszValor:string;pszInfoAdicional:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFEfetuarPagamentoFormatado_ECF_Daruma(pszFormaPgto:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFEfetuarPagamentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Encerramento de CNF
function iCNFEncerrar_ECF_Daruma(pszMensagem:string): Integer; StdCall; External 'DarumaFramework.dll';
function iCNFEncerrarPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Cancelamento de CNF
function iCNFCancelar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Relatório Gerencial
function iRGAbrir_ECF_Daruma(pszNomeRG:String): Integer; StdCall; External 'DarumaFramework.dll';
function iRGAbrirIndice_ECF_Daruma(iIndiceRG:Integer): Integer; StdCall; External 'DarumaFramework.dll';
function iRGAbrirPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iRGImprimirTexto_ECF_Daruma(pszTexto:String): Integer; StdCall; External 'DarumaFramework.dll';
function iRGImprimirArquivo_ECF_Daruma(pszArquivo:String): Integer; StdCall; External 'DarumaFramework.dll';
function iRGFechar_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Relatórios Fiscais
//Leitura X
function iLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
function rLeituraX_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';
function rLeituraXCustomizada_ECF_Daruma(pszCaminho:String): Integer; StdCall; External 'DarumaFramework.dll';
//Redução Z
function iReducaoZ_ECF_Daruma(pszData:string; pszHora:String): Integer; StdCall; External 'DarumaFramework.dll';
//Sangria
function iSangriaPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iSangria_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
//Suprimento
function iSuprimentoPadrao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function iSuprimento_ECF_Daruma(pszValor:string; pszMensagem:String): Integer; StdCall; External 'DarumaFramework.dll';
//Leitura Memória Fiscal
function iMFLerSerial_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function iMFLer_ECF_Daruma(pszInicial:string; pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';

//Programação do ECF
function confCadastrarPadrao_ECF_Daruma(pszCadastrar:string;pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
function confCadastrar_ECF_Daruma(pszCadastrar:string;pszValor:string;pszSeparador:string): Integer; StdCall; External 'DarumaFramework.dll';
function confHabilitarHorarioVerao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function confDesabilitarHorarioVerao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function confProgramarOperador_ECF_Daruma(pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
function confProgramarIDLoja_ECF_Daruma(pszValor:string): Integer; StdCall; External 'DarumaFramework.dll';
function confProgramarAvancoPapel_ECF_Daruma(pszSepEntreLinhas:string;pszSepEntreDoc:string;pszLinhasGuilhotina:string;pszGuilhotina:string;pszImpClicheAntecipada:string): Integer; StdCall; External 'DarumaFramework.dll';
function confHabilitarModoPreVenda_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function confDesabilitarModoPreVenda_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';

//Metodos modo PAF
function confModoPAF_ECF_Daruma(pszAtivar:string; pszChaveRSA:string; pszArquivo:string): Integer; StdCall; External 'DarumaFramework.dll'
function ePAFCadastrar_ECF_Daruma(pszNomeArquivo:string; pszChave:string; pszNumSerieECF: string; pszGT:string): Integer; StdCall; External 'DarumaFramework.dll';
function ePAFAtualizarGT_ECF_Daruma(pszNomeArquivo:string; pszChave:string; pszNumSerieECF: string; pszGT:string): Integer; StdCall; External 'DarumaFramework.dll';
function ePAFValidarDados_ECF_Daruma(pszNomeArquivo:string; pszChave:string; pszNumSerieECF: string; pszGT:string): Integer; StdCall; External 'DarumaFramework.dll';

//Retornos e Status do ECF
//Retornos
function rRetornarInformacaoSeparador_ECF_Daruma(pszIndice:string; pszVSignificativo:string; pszRetornar:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRetornarInformacao_ECF_Daruma(pszIndice:string;pszRetornar:string): Integer; StdCall; External 'DarumaFramework.dll';
function rLerAliquotas_ECF_Daruma(cAliquotas:string): Integer; StdCall; External 'DarumaFramework.dll';
function rLerMeiosPagto_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
function rLerRG_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
function rLerCNF_ECF_Daruma(pszRelatorios:string): Integer; StdCall; External 'DarumaFramework.dll';
function rLerDecimais_ECF_Daruma(pszDecimalQtde:string;pszDecimalValor:string;var piDecimalQtde:Integer; var piDecimalValor:Integer): Integer; StdCall; External 'DarumaFramework.dll';
function rLerDecimaisInt_ECF_Daruma(piDecimalQtde:integer;piDecimalValor:integer): Integer; StdCall; External 'DarumaFramework.dll';
function LerDecimaisStr_ECF_Daruma(pszDecimalQtde:string;pszDecimalValor:string): Integer; StdCall; External 'DarumaFramework.dll';
function rDataHoraImpressora_ECF_Daruma(pszData:string;pszHora:string): Integer; StdCall; External 'DarumaFramework.dll';
function rVerificarImpressoraLigada_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function rVerificarReducaoZ_ECF_Daruma(zPendente:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRetornarDadosReducaoZ_ECF_Daruma(pszDados:string): Integer; StdCall; External 'DarumaFramework.dll';
function rTipoUltimoDocumentoInt_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
function rTipoUltimoDocumentoStr_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
function rUltimoCMDEnviado_ECF_Daruma(pszUltimoCMD:string): Integer; StdCall; External 'DarumaFramework.dll';
function rMinasLegal_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRetornarVendaBruta_ECF_Daruma(pszVendaBruta:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRetornarVendaLiquida_ECF_Daruma(pszVendaLiquida:string): Integer; StdCall; External 'DarumaFramework.dll';
function rCompararDataHora_ECF_Daruma(var piDiferenca:integer): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoCNF_ECF_Daruma(pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';

//Status
function rStatusImpressora_ECF_Daruma(pszStatus:string): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoEstendida_ECF_Daruma(int:integer; char:string): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoEstentida1_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoEstentida2_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoEstentida3_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoEstentida4_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
function rInfoEstentida5_ECF_Daruma(cInfoEx:string): Integer; StdCall; External 'DarumaFramework.dll';
function rStatusUltimoCmd_ECF_Daruma(pszErro:string;pszAviso:string;var piErro:integer;var piAviso:integer): Integer; StdCall; External 'DarumaFramework.dll';
function rStatusUltimoCmdInt_ECF_Daruma(var piErro:integer;var piAviso:integer): Integer; StdCall; External 'DarumaFramework.dll';
function rStatusUltimoCmdStr_ECF_Daruma(cErro:string;cAviso:string): Integer; StdCall; External 'DarumaFramework.dll';
function rStatusGaveta_ECF_Daruma(var piStatusGaveta:Integer): Integer; StdCall; External 'DarumaFramework.dll';
function rConsultaStatusImpressoraInt_ECF_Daruma(iIndice:Integer; var iRetorno:Integer):Integer; StdCall; External 'DarumaFramework.dll';
function rConsultaStatusImpressoraStr_ECF_Daruma(iIndice:Integer; szStatus:String):Integer; StdCall; External 'DarumaFramework.dll';
function rStatusImpressoraBinario_ECF_Daruma(pszStatus:String):Integer; StdCall; External 'DarumaFramework.dll';

//Status Cupom Fiscal
function rCFVerificarStatus_ECF_Daruma(pszStatus:string; var piStatus:Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
function rCFVerificarStatusInt_ECF_Daruma(var iStatusCF:Integer): Integer; StdCall; External 'DarumaFrameWork.dll';
function rCFVerificarStatusStr_ECF_Daruma(cStatusCF:string): Integer; StdCall; External 'DarumaFrameWork.dll';
//Saldo a Pagar
function rCFSaldoAPagar_ECF_Daruma(pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
//Subtotal Cupom Fiscal
function rCFSubTotal_ECF_Daruma(pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';

//Gaveta, Autentica e Outros
//Gaveta
function eAbrirGaveta_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
//Guilhotina
function eAcionarGuilhotina_ECF_Daruma(pszTipoCorte:string): Integer; StdCall; External 'DarumaFramework.dll';
//Relatorio de configuração
function iRelatorioConfiguracao_ECF_Daruma: Integer; StdCall; External 'DarumaFramework.dll';


//Cheque
function eEjetarCheque_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function confCorrigirGeometria_CHEQUE_Daruma(pszNumeroBanco: string; pszDistValorNumerico:string; pszColunaValorNumerico: string; pszDistPrimExtenso: string; pszColunaPrimExtenso:string; pszDistSegExtenso: string; pszColunaSegExtenso: string; pszDistFavorecido: string; pszColunaFavorecido: string; pszDistCidade: string; pszColunaCidade: string; pszColunaDia: string; pszColunaMes: string; pszColunaAno: string; pszLinhaAutenticacao: string; pszColunaAutenticacao: string): Integer; StdCall; External 'DarumaFramework.dll';
function iAtributo_CHEQUE_Daruma(pszModo:string): Integer; StdCall; External 'DarumaFramework.dll';
function iAutenticar_CHEQUE_Daruma(pszPosicao: string; pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
function iImprimir_CHEQUE_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';
function iImprimirVerso_CHEQUE_Daruma(pszTexto:string): Integer; StdCall; External 'DarumaFramework.dll';
function  iImprimirVertical_CHEQUE_Daruma(pszNumeroBanco:string; pszCidade:string; pszData:string; pszNomeFavorecido:string; pszTextoFrente:string; pszValorCheque:string): Integer; StdCall; External 'DarumaFramework.dll';

//Código de Barras
function iImprimirCodigoBarras_ECF_Daruma(pszTipo:string; pszLargura:string; pszAltura:string; pszImprTexto:string; pszCodigo:string; pszOrientacao:string; pszTextoLivre:string): Integer; StdCall; External 'DarumaFramework.dll';

//Registry
//Registry Sintegra
function regSintegra_ECF_Daruma(pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
//Registry Gerais
function regAlterarValor_Daruma(pszPathChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
function regRetornaValorChave_DarumaFramework(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';
function regRetornaValorChave(pszProduto:string;pszChave:string;pszValor:string):Integer; StdCall; External 'DarumaFramework.dll';

//Geração Arquivos
//Espelho MFD PAF-ECF
function rGerarEspelhoMFD_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
//Relatório PAF-ECF ON-line
function rGerarRelatorio_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarMFD_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarMF_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarTDM_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarSPED_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarSINTEGRA_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarNFP_ECF_Daruma(szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarRelatorioBaixoNivel_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarMapaResumo_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';


//Relatório PAF-ECF Off-line
function rGerarRelatorioOffline_ECF_Daruma(szRelatorio:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MF:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';
function rGerarRelatorioBaixoNivelOffLine_ECF_Daruma(szRegistro:string; szTipo:string; szInicial:string; szFinal:string; szArquivo_MFD:string; szArquivo_INF:string): Integer; StdCall; External 'DarumaFramework.dll';

//Download Memórias
function rEfetuarDownloadMFD_ECF_Daruma(pszTipo:string;pszInicial:string;pszFinal:string;pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';
function rEfetuarDownloadMF_ECF_Daruma(pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';
function rEfetuarDownloadTDM_ECF_Daruma(pszTipo:string; pszInicial:string;pszFinal:string;pszNomeArquivo:string): Integer; StdCall; External 'DarumaFramework.dll';


//PAF-ECF
//RSA - EAD PAF-ECF
function rAssinarRSA_ECF_Daruma(pszPathArquivo:string;pszChavePrivada:string;pszAssinaturaGerada:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRSAChavePublica_ECF_Daruma(pszPathArquivo:string;pszChavePublica:string;pszExpoente:string): Integer; StdCall; External 'DarumaFramework.dll';
function eRSAAssinarArquivo_ECF_Daruma(pszPathArquivo:string;pszChavePublica:string): Integer; StdCall; External 'DarumaFramework.dll';

//MD5
function rCalcularMD5_ECF_Daruma(pszPathArquivo:string;pszMD5GeradoHex:string;pszMD5GeradoAscii:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRetornarNumeroSerieCodificado_ECF_Daruma(pszSerialCriptografado:string): Integer; StdCall; External 'DarumaFramework.dll';
function rVerificarNumeroSerieCodificado_ECF_Daruma(pszSerialCriptografado:string): Integer; StdCall; External 'DarumaFramework.dll';
function rRetornarGTCodificado_ECF_Daruma(pszGTCodificado:string): Integer; StdCall; External 'DarumaFramework.dll';
function rVerificarGTCodificado_ECF_Daruma(pszGTCodificado:string): Integer; StdCall; External 'DarumaFramework.dll';
function rCodigoModeloFiscal_ECF_Daruma(szCodModelo:string): Integer; StdCall; External 'DarumaFramework.dll';

//MENU-FISCAL

//ESPECIAIS
function eAguardarCompactacao_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eBuscarPorta_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eBuscarPortaVelocidade_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eEnviarComando_ECF_Daruma(cComando:string;var intiTamanhoComando:integer; var intiType:integer): Integer; StdCall; External 'DarumaFramework.dll';
function eRetornarAviso_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eRetornarErro_ECF_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eAguardarRecepcao_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eAuditar_Daruma(cAuditoria:string;var intiFlag:integer): Integer; StdCall; External 'DarumaFramework.dll';
function eCancelaComunicacao_Daruma(): Integer; StdCall; External 'DarumaFramework.dll';
function eDefinirProduto_Daruma(pszProduto:string): Integer; StdCall; External 'DarumaFramework.dll';
function eDefinirModoRegistro_Daruma(intiTipo:integer): Integer; StdCall; External 'DarumaFramework.dll';
function eVerificarVersaoDLL_Daruma(pszRet:string): Integer; StdCall; External 'DarumaFramework.dll';
function eVerificarVersaoDLL(pszRet:string): Integer; StdCall; External 'DarumaFramework.dll';
function eInterpretarErro_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
function eInterpretarAviso_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
function eInterpretarRetorno_ECF_Daruma(iIndice:Integer; pszRetorno:string): Integer; StdCall; External 'DarumaFramework.dll';
function eCarregarBitmapPromocional_ECF_Daruma(pszPathLogotipo:string; pszNumBitmap:string; pszOrientacao:string):Integer; StdCall; External 'DarumaFramework.dll';
function eMemoriaFiscal_ECF_Daruma(pszInicial:string; pszFinal:string; pszCompleta: Boolean; pszTipo:string):Integer; StdCall; External 'DarumaFramework.dll';
function eRetornarPortasCOM_ECF_Daruma(pszCOM:string): Integer; StdCall; External 'DarumaFramework.dll';
function eRetornarAvisoErroUltimoCMD_ECF_Daruma(pszAviso:string; pszErro:string): Integer; StdCall; External 'DarumaFramework.dll';

//Comandos modo Generico
function eAbrirSerial_Daruma(pszPorta:string; pszVelocidade:string):Integer; StdCall; External 'DarumaFramework.dll';
function eFecharSerial_Daruma():Integer; StdCall; External 'DarumaFramework.dll';
function tEnviarDados_Daruma(pszBytes:string; iTamBytes:Integer):Integer; StdCall; External 'DarumaFramework.dll';
function rReceberDados_Daruma(pszBufferEntrada:string):Integer; StdCall; External 'DarumaFramework.dll';

//WebService
function eWsStatus_ECF_Daruma(var iRespostaWS:integer):Integer; StdCall; External 'DarumaFramework.dll';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

(**************************       SWEDA               *************************)
// Inicializacao
function ECF_AbrePortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaPortaSerial: Integer; StdCall; External 'CONVECF.dll';
// Retornos
function ECF_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'CONVECF.DLL';
// Informacoes e Status
function ECF_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMFD(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotal( SubTotal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaImpressoraLigada: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_VerificaImpressoraLigada';
function ECF_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FormatoDadosMFD( ArquivoOrigem : String;ArquivoDestino  : String;TipoFormato : String; TipoDownload : String;ParametroInicial: String; ParametroFinal  : String; UsuarioECF : String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60Analitico: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Analitico';
function ECF_RelatorioTipo60Mestre: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Mestre';
function ECF_DataMovimento(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RetornoAliquotas(Aliquotas:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoFirmwareMFD(Versao:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFormasPagamentoEx(FormasPag:string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, dataSWBasico, MFAdicional:string ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotal(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MapaResumoMFD:Integer;StdCall; External 'CONVECF.DLL';
function ECF_ContadorCupomFiscalMFD(Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorRelatoriosGerenciaisMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRelatorioGerencialMFD(Relats : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroOperacoesNaoFiscais(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorComprovantesCreditoMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MarcaModeloTipoImpressoraMFD(Marca:String; Modelo:String; Tipo:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Registry_RetornaValor( Produto: String; Chave: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaHorarioVerao( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscaisEx(Nomes:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_StatusCupomFiscal( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'CONVECF.DLL';
// Ato copete 17/04
function ECF_ReproduzirMemoriaFiscalMFD(tipo,FxaIni,FxaFim,PatTxt,PatBin:STRING): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DownloadMF( nome: String ): Integer; StdCall; External 'CONVECF.dll';

// Informacoes da ultima reducao z
function ECF_DadosUltimaReducaoMFD(Texto:PChar): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataHoraReducao(Data:String; Hora:String): Integer;StdCall; External 'CONVECF.DLL';

// Relatorios Gerenciais
function ECF_LeituraX: Integer; StdCall; External 'CONVECF.DLL' ;
function ECF_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';

function ECF_LeituraMemoriaFiscalReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
// Cupom
function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreCupomMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; Acrescimo: String; Desconto: String; IndiceDepto: String; UM:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaCupomResumido( FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
// Operações Não Fiscal
function ECF_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'CONVECF.DLL';
function ECF_Sangria( Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaRelatorioGerencial: Integer; StdCall; External 'CONVECF.DLL';

// Configuração / Programação
function ECF_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaHorarioVerao: Integer; StdCall; External 'CONVECF.DLL';
function ECF_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaFormasPagamento(formas:pchar): Integer; StdCall; External 'CONVECF.DLL';
// Outros
function ECF_AcionaGaveta: Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ZAUTO(flag: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LigaDesligaJanelas(papel:string;outros:string): Integer; StdCall; External 'CONVECF.DLL';

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //

//=================================================================================================
// EPSON_Serial
//=================================================================================================
function EPSON_Serial_Abrir_Porta(dwVelocidade:Integer; wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_Fechar_Porta_CMD(dwVelocidade:Integer;wPorta:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaAD(pszVelocidade:Pchar;pszPorta:Pchar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Abrir_PortaEx():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Fechar_Porta ():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Serial_Obter_Estado_Com():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Fiscal
//=================================================================================================
function EPSON_Fiscal_Abrir_Cupom(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Dados_Usuario(pszCGC:PChar; pszSocialReason:PChar; pszAddress1:PChar; pszAddress2:PChar; dwPosition:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Vender_Item(pszCodigo:PChar; pszDescricao:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer; pszUnidade:PChar; pszPrecoUnidade:PChar; dwPrecoCasasDecimais:Integer; pszAliquotas:PChar; dwLinhas:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Cupom():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item(pszNumeroItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Acrescimo_Desconto_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Cancelar_Item_Parcial(pszNumeroItem:PChar; pszQuantidade:PChar; dwQuantCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_Mensagem(pszLinhaTexto1:PChar; pszLinhaTexto2:PChar; pszLinhaTexto3:PChar; pszLinhaTexto4:PChar; pszLinhaTexto5:PChar; pszLinhaTexto6:PChar; pszLinhaTexto7:PChar; pszLinhaTexto8:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Imprimir_MensagemEX(pszText:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Configurar_Codigo_Barras_Mensagem(dwLinha:Integer; dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_CupomEx(pszTotalCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Fechar_Cupom(bCortarPapel:Boolean; bAdicional:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Fiscal_Mensagem_Aplicacao(pszLinha01:PChar; pszLinha02:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_NaoFiscal
//=================================================================================================
function EPSON_NaoFiscal_Abrir_Comprovante(pszCNPJ:PChar; pszRazaoSocial:PChar; pszEndereco1:PChar; pszEndereco2:PChar; dwPosicao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Vender_Item(pszNumeroOperacao:PChar; pszValorOperacao:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Obter_SubTotal(pszSubTotal:PChar):Integer;StdCall;External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Item(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall;External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Desconto_Acrescimo_Subtotal(pszValor:PChar; dwCasasDecimais:Integer; bDesconto:Boolean; bPercentagem:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Pagamento(pszNumeroPagamento:PChar; pszValorPagamento:PChar; dwCasasDecimais:Integer; pszDescricao1:PChar; pszDescricao2:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Item(pszItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Ultimo_Item():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Item(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Desconto_Acrescimo_Subtotal(bDesconto:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Comprovante():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Comprovante(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Abrir_Relatorio_Gerencial(pszNumeroRelatorio:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_LinhaEX(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Linha(pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_15Linhas(pszLinha00:PChar;pszLinha01:PChar;pszLinha02:PChar;pszLinha03:PChar;pszLinha04:PChar;pszLinha05:PChar;pszLinha06:PChar;pszLinha07:PChar;pszLinha08:PChar;pszLinha09:PChar;pszLinha10:PChar;pszLinha11:PChar;pszLinha12:PChar;pszLinha13:PChar;pszLinha014:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_CCD(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fechar_Relatorio_Gerencial(bCortarPapel:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_CCD(pszNumeroPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszParcelas:PChar; pszNumeroCupom:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Cancelar_Pagamento(pszFormaPagamento:PChar; pszNovaFormaPagamento:PChar; pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Parcela_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Nova_Via_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Reimprimir_CCD():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Sangria(pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Fundo_Troco(pszValor:PChar; dwCasasDecimais:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_NaoFiscal_Imprimir_Codigo_Barras(dwTipo:Integer; dwAltura:Integer; dwLargura:Integer; dwPosicao:Integer; dwCaracter:Integer; pszCodigo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_RelatorioFiscal
//=================================================================================================
function EPSON_RelatorioFiscal_LeituraX():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZ(pszData:PChar; pszHora:PChar; dwHorarioVerao:Integer; pszCRZ:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_RZEx(dwHorarioVerao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Leitura_MF(pszInicio:PChar; pszFim:PChar; dwTipoImpressao:Integer; pszBuffer:PChar; pszArquivo:PChar; pdwTamanhoBuffer:PInteger; dwTamBuffer:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Salvar_LeituraX(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Abrir_Dia():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_RelatorioFiscal_Abrir_Jornada():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Obter
//=================================================================================================
function EPSON_Obter_Dados_Usuario(pszDadosUsuario:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Aliquotas(pszTabelaAliquotas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Jornada(chOption:PChar; pszZnumber:PChar; pszData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Pagamentos(pszTabelaPagamentos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_NaoFiscais(pszTabelaNaoFiscais:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Tabela_Relatorios_Gerenciais(pszTabelaRelatoriosGerenciais:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Cancelado(pszTotalCancelado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Aliquotas(pszAliquotasTotal:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Bruto(pszVendaBruta:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Descontos(pszTotalDescontos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Troco(pszTotalTroco:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Acrescimos(pszTotalAcrescimos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Impressora(pszDadosImpressora:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Cliche_Usuario(pszDadosUsuario:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Data_Hora_Jornada(pszDataHora:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_ECF_Loja(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Hora_Relogio(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Simbolo_Moeda(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Casas_Decimais(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Contadores(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Impressora(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_ImpressoraEX(szEstadoImpressora:PChar;szEstadoFiscal:PChar;szRetornoComando:PChar;szMsgErro:PChar ):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_GT(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_RG(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_CCD(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Vendas(pszLinhasImpressas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Linhas_Impressas_Pagamentos(pszLinhasImpressas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Itens_Vendidos(pszItens:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Memoria_Fiscal(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_MFD(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_Leituras_X_Impressas(pszLeituras:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Jornada(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Caracteres_Linha(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Operador(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Numero_Ultimo_Item(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Item(pszNumeroItem:PChar; pszDadosItem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Cupom(pszEstado:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Informacao_Ultimo_Documento(pszInfo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Corte_Papel(Var bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Estado_Horario_Verao(Var bEstado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Venda_Bruta(pszBrutAmount:PChar; pszLastBrutAmount:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Mensagem_Erro(pszCodigoErro:PChar; pszMensagemErro:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_MF_MFD(pszInicio:PChar; pszFinal:PChar; dwTipoEntrada:Integer; dwEspelhos:Integer; dwAtoCotepe:Integer; dwSintegra:Integer; pszArquivoSaida:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_DLL(pszVersao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Total_JornadaEX(pszOption:Pchar;pszZnumber:PChar;pszData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Arquivos_MF_MFD(pszInicio:PChar;pszFim:Pchar;dwTipoEntrada:Integer;dwEspelhos:Integer;dwAtoCOTEPE:Integer;dwSintegra:Integer;pszArquivoSaida:PChar;pszArquivoMF:PChar;pszArquivoMFD:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Separar_AtoCOTEPE(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Salvar_Binario_MF(pszArquivo:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Arquivo_Binario_MFD(pszFileName:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Dados_Ultima_RZ(pszLastRZData:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Obter_Versao_SWBasicoEX(pszVersion:PChar; pszDate:PChar; pszTime:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Config
//=================================================================================================
function EPSON_Config_Aliquota(pszTaxa:PChar; bTipoISS:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Relatorio_Gerencial(pszReportDescription:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Forma_Pagamento(bVinculado:Boolean; pszNumeroMeio:PChar; pszDescricao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Forma_PagamentoEX(bVinculado:Boolean; pszDescricao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Totalizador_NaoFiscal(pszDescricao:PChar; Var pdwNumeroTotalizador:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Corte_Papel(bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Horario_Verao():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Documentos(pszLinhas:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Espaco_Entre_Linhas(pszEspacos:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Logotipo(pszDados:PChar; dwTamDados:Integer; pszLinha:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_Logotipo(bHabilita:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Operador(pszDados:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_OperadorEX(pszDados:PChar; dwReport:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Serial_Impressora(pszVelocidade:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Dados_Sintegra(pszRazaoSocial:PChar; pszLogradouro:PChar; pszNumero:PChar; pszComplemento:PChar; pszBairro:PChar; pszMunicipio:PChar; pszCEP:PChar; pszUF:PChar; pszFax:PChar; pszFone:PChar; pszNomeContato:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Download_Segmentado_MFD(bHabilita:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Habilita_EAD(bHabilitado:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Cheque
//=================================================================================================
function EPSON_Cheque_Configurar_Moeda(pszSingular:PChar; pszPlural:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros1(pszNumeroRegistro:PChar; pszValorX:PChar; pszValorY:PChar; pszDescricao1X:PChar; pszDescricao1Y:PChar; pszDescricao2X:PChar; pszDescricao2Y:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Configurar_Parametros2(pszNumeroRegistro:PChar; pszParaX:PChar; pszParaY:PChar; pszCidadeX:PChar; pszCidadeY:PChar; pszOffsetDia:PChar; pszOffsetMes:PChar; pszOffsetAno:PChar; pszAdicionalX:PChar; pszAdicionalY:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir(pszNumeroRegistro:PChar; pszValor:PChar; dwCasasDecimais:Integer; ByValpszPara:PChar; pszCidade:PChar; pszDados:PChar; pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_ImprimirEX(pszNumeroRegistro:PChar; pszValor:PChar; dwCasasDecimais:Integer; pszPara:PChar; pszCidade:PChar; pszDados:PChar; pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Preparar_Endosso():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_Cheque(pszToX:PChar;pszToY:PChar;dwHorizontal:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Imprimir_Endosso(pszLinhaTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Ejetar_Endosso():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Cancelar_Impressao():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Endosso_Estacao_ChequeEX(pszToX:PChar;pszToY:PChar;dwHorizontal:Integer;pszText:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Cheque_Ler_MICR(pszMICR:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Impressora
//=================================================================================================
function EPSON_Impressora_Abrir_Gaveta():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Impressora_Avancar_Papel(dwLines:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Impressora_Cortar_Papel():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Autenticar
//=================================================================================================
function EPSON_Autenticar_Imprimir(pszMensagem:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Autenticar_Reimprimir():Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Sys
//=================================================================================================
function EPSON_Sys_Informar_Handle_Janela(HWNDHandle:THandle):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Atualizar_Janela():Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Aguardar_Arquivo(pszArquivo:PChar; dwTimeout:Integer; bBloqueiaEntradas:Boolean; bSincrono:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Bloquear_Entradas(bBloqueiaEntradas:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Sys_Log(pszPath:PChar; dwAction:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================
// EPSON_Display
//=================================================================================================
function EPSON_Display_Enviar_Texto(pszTexto:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Set_Cursor(dwAcao:Integer; dwColuna:Integer; dwLinha:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Apagar_Texto(dwLinha:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Configurar(dwBrilho:Integer; dwLampejo:Integer; dwRolagem:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Display_Inicializar(dwAcao:Integer):Integer;StdCall; External 'InterfaceEpson.dll';
//=================================================================================================

// Funções diversas
function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): String;
function EPSON_ECFLigada: String;
function EPSON_NumeroSerie: String;
function EPSON_NumeroCaixa: String;

// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //
// -------------------------------------------------------------------------- //


implementation

  uses funcoes, Constantes, Principal;


// -------------------------------------------------------------------------- //
function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): String;
var
  I: Integer;
  sDecimais: String;

begin
  sDecimais := '';
  for I := 1 to piDecimais do
  begin
    sDecimais := sDecimais + '0';
  end;

  Result := FormatFloat('########0.' + sDecimais, peValor);

  if (sDecimais = '') or pbRemovePonto then
  begin
    if Pos(DecimalSeparator, Result) > 0 then
      Delete(Result, Pos(DecimalSeparator, Result), 1);
  end;
end;

// -------------------------------------------------------------------------- //
// Retorno de Comunicacao com ECF
function cECF_Analisa_Retorno(COD_ECF:Integer):string;
begin
  if COD_ECF = BEMATECH then
  begin
    Result := OK;
    if iRetorno =  0  THEN  Result := 'Erro de Comunicação!';
    If iRetorno = -1  THEN  Result := 'Erro de Execução na Função. Verifique!';
    if iRetorno = -2  THEN  Result := 'Parâmetro Inválido!';
    if iRetorno = -3  THEN  Result := 'Alíquota não programada!' ;
    If iRetorno = -4  THEN  Result := 'Arquivo BemaFI32.INI não encontrado. Verifique!';
    If iRetorno = -5  THEN  Result := 'Erro ao Abrir a Porta de Comunicação!';
    If iRetorno = -6  THEN  Result := 'Impressora Desligada ou Desconectada!';
    If iRetorno = -7  THEN  Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If iRetorno = -8  THEN  Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if iRetorno = -18 THEN  Result := 'Não foi possível abrir arquivo INTPOS.001';
    if iRetorno = -19 THEN  Result := 'Parâmetro diferentes!';
    if iRetorno = -20 THEN  Result := 'Transação cancelada pelo Operador!';
    if iRetorno = -21 THEN  Result := 'A Transação não foi aprovada!';
    if iRetorno = -22 THEN  Result := 'Não foi possível terminal a Impressão!';
    if iRetorno = -23 THEN  Result := 'Não foi possível terminal a Operação!';
    if iRetorno = -24 THEN  Result := 'Forma de pagamento não programada.';
    if iRetorno = -25 THEN  Result := 'Totalizador não fiscal não programado.';
    if iRetorno = -26 THEN  Result := 'Transação já Efetuada!';
    if iRetorno = -28 THEN  Result := 'Não há Informações para serem Impressas!';
  end
  else
  if COD_ECF = DARUMA then
  begin
    if iRetorno = 1 then
      Result := OK
    else
      Result := 'Erro de Comunicação!';
  end
  else
  if COD_ECF = SWEDA then
  begin
    Result := OK;
    if iRetorno =  0  THEN  Result := 'Erro de Comunicação!';
    If iRetorno = -1  THEN  Result := 'Erro de Execução na Função. Verifique!';
    if iRetorno = -2  THEN  Result := 'Parâmetro Inválido!';
    if iRetorno = -3  THEN  Result := 'Alíquota não programada!' ;
    If iRetorno = -4  THEN  Result := 'Arquivo INI não encontrado. Verifique!';
    If iRetorno = -5  THEN  Result := 'Erro ao Abrir a Porta de Comunicação!';
    If iRetorno = -6  THEN  Result := 'Impressora Desligada ou Desconectada!';
    If iRetorno = -7  THEN  Result := 'Banco Não Cadastrado no Arquivo BemaFI32.ini!';
    If iRetorno = -8  THEN  Result := 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt!';
    if iRetorno = -18 THEN  Result := 'Não foi possível abrir arquivo INTPOS.001';
    if iRetorno = -19 THEN  Result := 'Parâmetro diferentes!';
    if iRetorno = -20 THEN  Result := 'Transação cancelada pelo Operador!';
    if iRetorno = -21 THEN  Result := 'A Transação não foi aprovada!';
    if iRetorno = -22 THEN  Result := 'Não foi possível terminal a Impressão!';
    if iRetorno = -23 THEN  Result := 'Não foi possível terminal a Operação!';
    if iRetorno = -24 THEN  Result := 'Forma de pagamento não programada.';
    if iRetorno = -25 THEN  Result := 'Totalizador não fiscal não programado.';
    if iRetorno = -26 THEN  Result := 'Transação já Efetuada!';
    if iRetorno = -28 THEN  Result := 'Não há Informações para serem Impressas!';
  end
  else
  if COD_ECF = EPSON then
  begin
    if iRetorno = 0 then
      Result := OK
    else
      Result := cECF_Retorno_Impressora(COD_ECF);
  end
  else
  if COD_ECF = 5 then
  begin
    if iRetorno <  0 then
      Result := 'Erro de Comunicação!'
    else
      Result := OK;
  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := OK;
  end;

end;


// -------------------------------------------------------------------------- //
// Retorno de tratamento do comando
function cECF_Retorno_Impressora(COD_ECF:Integer):String;
var
  Mensagem : string;
  sErro : string;
  Str_Msg_NumErro,Str_Msg_NumAviso,Str_Msg_RetMetodo,Str_Erro,Str_Aviso:String;
  ST1err, ST1field,ST2, ST3, ST4, ST5, Temp: String;
  iST3, iST4, iST5, iConta,iRetorno,int_Retorno,int_NumErro,int_NumAviso: Integer;
  flagB15, flagB14, flagB12, flagB11, flagB10, flagB09, flagB07:Boolean;
  sMensagemErro: String;
  iPos: Integer;

begin
  if COD_ECF = BEMATECH then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK,iST1,iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    begin
      // Verifica ST1
      IF iST1 >= 128 Then begin iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'end;
      IF iST1 >= 64  Then begin iST1 := iST1 - 64;  end;
      IF iST1 >= 32  Then begin iST1 := iST1 - 32;  Mensagem := Mensagem+' '+ 'Erro no relógio!'end;
      IF iST1 >= 16  Then begin iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'end;
      IF iST1 >= 8   Then begin iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'end;
      IF iST1 >= 4   Then begin iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'end;
      IF iST1 >= 2   Then begin iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto' end;
      IF iST1 >= 1   Then begin iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'end;

      // Verifica ST2
      IF iST2 >= 128 Then begin iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'end;
      IF iST2 >= 64  Then begin iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'end;
      IF iST2 >= 32  Then begin iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'end;
      IF iST2 >= 16  Then begin iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'end;
      IF iST2 >= 8   Then begin iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'end;
      IF iST2 >= 4   Then begin iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'end;
      IF iST2 >= 2   Then begin iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'end;
      IF iST2 >= 1   Then begin iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'end;
    end;
    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;
  end
  else
  if COD_ECF = DARUMA then
  begin
  //Variaveis devem ser inicializadas
   Int_NumErro:= 0;
	 Int_NumAviso:= 0;
   Str_Msg_NumErro:=StringOFChar(' ',300);
   Str_Msg_NumAviso:=StringOFChar(' ',300);
   Str_Msg_RetMetodo:=StringOFChar(' ',300);

  // Retorna a mensagem referente ao erro e aviso do ultimo comando enviado
   iRetorno:=eRetornarAvisoErroUltimoCMD_ECF_Daruma(Str_Msg_NumAviso, Str_Msg_NumErro);

  // Retorno do método
   iRetorno:=eInterpretarRetorno_ECF_Daruma(int_Retorno, Str_Msg_RetMetodo);

   Str_Erro:=Str_Msg_NumErro;
   Str_Aviso:=Str_Msg_NumAviso;
   Mensagem := '';

   if iRetorno <> 0 then
     Mensagem:=''
   else
     Mensagem:=Str_Msg_RetMetodo;

    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := ECF_RetornoImpressora(iACK,iST1,iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    begin
      // Verifica ST1
      IF iST1 >= 128 Then begin iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'end;
      IF iST1 >= 64  Then begin iST1 := iST1 - 64;  end;
      IF iST1 >= 32  Then begin iST1 := iST1 - 32;  Mensagem := Mensagem+' '+ 'Erro no relógio!'end;
      IF iST1 >= 16  Then begin iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'end;
      IF iST1 >= 8   Then begin iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'end;
      IF iST1 >= 4   Then begin iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'end;
      IF iST1 >= 2   Then begin iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto'end;
      IF iST1 >= 1   Then begin iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'end;

      // Verifica ST2
      IF iST2 >= 128 Then begin iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'end;
      IF iST2 >= 64  Then begin iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'end;
      IF iST2 >= 32  Then begin iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'end;
      IF iST2 >= 16  Then begin iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'end;
      IF iST2 >= 8   Then begin iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'end;
      IF iST2 >= 4   Then begin iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'end;
      IF iST2 >= 2   Then begin iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'end;
      IF iST2 >= 1   Then begin iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'end;
    end;
    if Mensagem = '' then
      Result := OK
    else
      Result := Mensagem;
  end
  else
  if COD_ECF = EPSON then
  begin
    Mensagem := '';
    Result := OK;

    For iConta := 1 To 2 Do
      ST1err := ST1err + ' ';

    For iConta := 1 To 2 Do
      ST1field := ST1field + ' ';

    For iConta := 1 To 4 Do
      ST2 := ST2 + ' ';

    For iConta := 1 To 4 Do
      ST3 := ST3 + ' ';

    For iConta := 1 To 4 Do
      ST4 := ST4 + ' ';

    For iConta := 1 To 4 Do
      ST5 := ST5 + ' ';

    For iConta := 1 To 20 Do
      Temp := Temp + ' ';

    iRetorno := EPSON_Obter_Estado_Impressora(PChar(Temp));

    If iRetorno <> 0 Then
      Result := ERRO
    else
    begin
      If iRetorno <> 0 Then
        Result := ERRO
      Else
        Result := OK;

      ST1err := Copy(Temp,1,2);
      ST1field := Copy(Temp,3,2);
      ST2 := Copy(Temp,5,4);
      ST3 := Copy(Temp,9,4);
      ST4 := Copy(Temp,13,4);
      ST5 := Copy(Temp,17,4);

      //==============================================================================
      //Parâmetros do último comando
      //==============================================================================
      Case StrToInt(ST1err) of
        0:  Mensagem := Mensagem + '';
        1:  Mensagem := Mensagem + 'Campo deve ser um ponteiro para string.';
        2:  Mensagem := Mensagem + 'String com data inválida.';
        3:  Mensagem := Mensagem + 'String com hora inválida.';
        4:  Mensagem := Mensagem + 'String não está vazia ou contém data inválida.';
        5:  Mensagem := Mensagem + 'String não está vazia ou contém hora inválida.';
        6:  Mensagem := Mensagem + 'String não pode ser vazia.';
      else
        // Mensagem := Mensagem + 'Erro não mapeado.';
      end;

      //==============================================================================
      //Estado da Comunicação
      //==============================================================================
      Case StrToInt('$' + ST2) of
        0:  Mensagem := Mensagem + '';
        1:  Mensagem := Mensagem + 'Porta já está aberta.';
        2:  Mensagem := Mensagem + 'Porta usada por outra aplicação.';
        4:  Mensagem := Mensagem + 'Número de porta inválido.';
        5:  Mensagem := Mensagem + 'Velocidade inválida.';
        16: Mensagem := Mensagem + 'String não está vazia ou contém hora inválida.';
      else
        Mensagem := Mensagem + 'Erro interno da biblioteca.';
      end;

      //==============================================================================
      //Estado da Impressora
      //==============================================================================
      flagB09 := false;
      flagB10 := false;
      iST3 := StrToInt('$' + ST3);
      //****************************************************************************
      //                       TRATAMENTO DO BIT 15                                *
      //****************************************************************************
      If (iST3 >= 32768) Then
        begin
          Mensagem := Mensagem + 'Impressora Desligada.';
          iST3 := iST3 - 32768;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 14                                *
      //****************************************************************************
      If (iST3 >= 16384) Then
        begin
          Mensagem := Mensagem + 'Erro de impressão.';
          iST3 := iST3 - 16384;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 13                                *
      //****************************************************************************
      If (iST3 >= 8192) Then
        begin
          Mensagem := Mensagem + 'Tampa superior aberta.';
          iST3 := iST3 - 8192;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 12                                *
      //****************************************************************************
      If (iST3 >= 4096) Then
        begin
          Mensagem := Mensagem + 'Gaveta Aberta.';
          iST3 := iST3 - 4096;
        end;

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 10 E 9                          *
      //****************************************************************************
      If (iST3 >= 1024) Then
        begin
          flagB10 := true;
          iST3 := iST3 - 1024;
        end;

      If (iST3 >= 512) Then
        begin
          flagB09 := true;
          iST3 := iST3 - 512;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 8                                 *
      //****************************************************************************
      If (iST3 >= 256) Then
        begin
          // Mensagem := Mensagem + 'Aguardando retirada do papel.';
          iST3 := iST3 - 256;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 7                                 *
      //****************************************************************************
      If (iST3 >= 128) Then
        begin
          Mensagem := Mensagem + 'Aguardando inserção do papel.';
          iST3 := iST3 - 128;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 6                                 *
      //****************************************************************************
      If (iST3 >= 64) Then
        begin
          // T4.Text := T4.Text + 'Estado do sensor inferior da estação de cheque = 1 - ';
          iST3 := iST3 - 64;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 5                                 *
      //****************************************************************************
      If (iST3 >= 32) Then
        begin
          // T4.Text := T4.Text + 'Estado do sensor superior da estação do cheque = 1 - ';
          iST3 := iST3 - 32;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 4                                 *
      //****************************************************************************
      If (iST3 >= 16) Then
        begin
          // T4.Text := T4.Text + 'Estado do sensor de autenticação = 1 - ';
          iST3 := iST3 - 16;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 3                                 *
      //****************************************************************************
      If (iST3 >= 8) Then
        begin
          Mensagem := Mensagem + 'Impressora sem papel.';
          iST3 := iST3 - 8;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 2                                 *
      //****************************************************************************
      If (iST3 >= 4) Then
        begin
          // T4.Text := T4.Text + 'Pouco papel - ';
          iST3 := iST3 - 4;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 1                                 *
      //****************************************************************************
      If (iST3 >= 2) Then
        begin
          Mensagem := Mensagem + 'Impressora sem papel.';
          iST3 := iST3 - 2;
        end;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 0                                 *
      //****************************************************************************
      If (iST3 >= 1) Then
        begin
          // T4.Text := T4.Text + 'Pouco papel - ';
        end;

      //==============================================================================
      //Estado fiscal
      //==============================================================================
      flagB15 := false;
      flagB14 := false;
      flagB11 := false;
      flagB10 := false;

      iST4 := StrToInt('$' + ST4);

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 15 E 14                         *
      //****************************************************************************
      If (iST4 >= 32768) Then
        begin
          flagB15 := true;
          iST4 := iST4 - 32768;
        end;

      If (iST4 >= 16384) Then
        begin
          flagB14 := true;
          iST4 := iST4 - 16384;
        end;

      {
      If ((flagB15 = True) And (flagB14 = True)) Then
        T5.Text := T5.Text + 'Modo Fiscalizado - '
      Else If ((flagB15 = True) And (flagB14 = False)) Then
        T5.Text := T5.Text + 'Modo manufatura (Não-Fiscalizado) - '
      Else If ((flagB15 = False) And (flagB14 = False)) Then
          T5.Text := T5.Text + 'Modo bloqueado - ';


      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BITS 12                           *
      //****************************************************************************
      If (iST4 >= 4096) Then
        begin
          T5.Text := T5.Text + 'Modo de Intervenção Técnica - ';
          iST4 := iST4 - 4096;
        END
      Else
        T5.Text := T5.Text + 'Modo de operação normal - ';
      //****************************************************************************
      }

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 11 E 10                         *
      //****************************************************************************
      If (iST4 >= 2048) Then
        begin
          flagB11 := true;
          iST4 := iST4 - 2048;
        end;

      If (iST4 >= 1024) Then
        begin
          flagB10 := true;
          iST4 := iST4 - 1024;
        end;

      If ((flagB11 = True) And (flagB10 = True)) Then
        Mensagem := Mensagem + 'Erro de leitura/escrita da Memória Fiscal.'
      Else If ((flagB11 = True) And (flagB10 = False)) Then
        Mensagem := Mensagem + 'Memória Fiscal cheia.'
      Else If ((flagB11 = False) And (flagB10 = True)) Then
        Mensagem := Mensagem + 'Memória Fiscal em esgotamento.';

      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BIT7                              *
      //****************************************************************************
      If (iST4 >= 128) Then
      begin
          // Mensagem := Mensagem + 'Período de vendas aberto.';
          iST4 := iST4 - 128;
      END
      ELSE
        Mensagem := Mensagem + 'Período de vendas fechado.';

      //****************************************************************************

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 3,2,1 E 0                       *
      //****************************************************************************
      {If iST4 = 9 Then
        Mensagem := Mensagem + 'Cheque ou autenticação (TMH6000 e TMU675).'
      Else If iST4 = 8 Then
        T5.Text := T5.Text + 'Comprovante Não-Fiscal - '
      Else If iST4 = 4 Then
        T5.Text := T5.Text + 'Relatório Gerencial - '
      Else If iST4 = 3 Then
        T5.Text := T5.Text + 'Estorno de Comprovante de Crédito ou Débito - '
      Else If iST4 = 2 Then
        T5.Text := T5.Text + 'Comprovante de Crédito ou Débito - '
      Else If iST4 = 1 Then
        T5.Text := T5.Text + 'Cupom Fiscal aberto - '
      Else If iST4 = 0 Then
        T5.Text := T5.Text + 'Documento fechado - '; }

      //****************************************************************************

      //==============================================================================
      //Estado de execução do último comando
      //==============================================================================
      ST5 := UpperCase(ST5);
      iST5 := StrToInt('$' + ST5);
      Case iST5 of
        $0000: Mensagem := Mensagem + 'Resultado sem erro.';
        $0001: Mensagem := Mensagem + 'Erro interno.';
        $0002: Mensagem := Mensagem + 'Erro de iniciação do equipamento.';
        $0003: Mensagem := Mensagem + 'Erro de processo interno.';
        $0101: Mensagem := Mensagem + 'Comando inválido para o estado atual.';
        $0102: Mensagem := Mensagem + 'Comando inválido para o documento atual.';
        $0106: Mensagem := Mensagem + 'Comando aceito apenas fora de intervenção.';
        $0107: Mensagem := Mensagem + 'Comando aceito apenas dentro de intervenção.';
        $0108: Mensagem := Mensagem + 'Comando inválido durante processo de scan.';
        $0109: Mensagem := Mensagem + 'Excesso de intervenções.';
        $0201: Mensagem := Mensagem + 'Comando com frame inválido.';
        $0202: Mensagem := Mensagem + 'Comando inválido.';
        $0203: Mensagem := Mensagem + 'Campos em excesso.';
        $0204: Mensagem := Mensagem + 'Campos em falta.';
        $0205: Mensagem := Mensagem + 'Campo não opcional.';
        $0206: Mensagem := Mensagem + 'Campo alfanumérico inválido.';
        $0207: Mensagem := Mensagem + 'Campo alfabético inválido.';
        $0208: Mensagem := Mensagem + 'Campo numérico inválido.';
        $0209: Mensagem := Mensagem + 'Campo binário inválido.';
        $020A: Mensagem := Mensagem + 'Campo imprimível inválido.';
        $020B: Mensagem := Mensagem + 'Campo hexadecimal inválido.';
        $020C: Mensagem := Mensagem + 'Campo data inválido.';
        $020D: Mensagem := Mensagem + 'Campo hora inválido.';
        $020E: Mensagem := Mensagem + 'Campo com atributos de impressão inválidos.';
        $020F: Mensagem := Mensagem + 'Campo booleano inválido.';
        $0210: Mensagem := Mensagem + 'Campo com tamanho inválido.';
        $0211: Mensagem := Mensagem + 'Extensão de comando inválida.';
        $0212: Mensagem := Mensagem + 'Código de barra não permitido.';
        $0213: Mensagem := Mensagem + 'Atributos de impressão não permitidos.';
        $0214: Mensagem := Mensagem + 'Atributos de impressão inválidos.';
        $0215: Mensagem := Mensagem + 'Código de barras incorretamente definido.';
        $0217: Mensagem := Mensagem + 'Comando invalido para a porta selecionada.';
        $0301: Mensagem := Mensagem + 'Erro de hardware.';
        $0302: Mensagem := Mensagem + 'Impressora não está pronta.';
        $0303: Mensagem := Mensagem + 'Erro de Impressão.';
        $0304: Mensagem := Mensagem + 'Falta de papel.';
        $0305: Mensagem := Mensagem + 'Pouco papel disponível.';
        $0306: Mensagem := Mensagem + 'Erro em carga ou expulsão do papel.';
        $0307: Mensagem := Mensagem + 'Característica não suportada pela impressora.';
        $0308: Mensagem := Mensagem + 'Erro de display.';
        $0309: Mensagem := Mensagem + 'Seqüência de scan inválida.';
        $300A: Mensagem := Mensagem + 'Número de área de recorte inválido.';
        $300B: Mensagem := Mensagem + 'Scanner não preparado.';
        $300C: Mensagem := Mensagem + 'Qualidade de Logotipo não suportada pela impressora.';
        $030E: Mensagem := Mensagem + 'Erro de leitura do microcódigo.';
        $0401: Mensagem := Mensagem + 'Número de série inválido.';
        $0402: Mensagem := Mensagem + 'Requer dados de fiscalização já configurados.';
        $0501: Mensagem := Mensagem + 'Data / Hora não configurada.';
        $0502: Mensagem := Mensagem + 'Data inválida.';
        $0503: Mensagem := Mensagem + 'Data em intervalo inválido.';
        $0504: Mensagem := Mensagem + 'Nome operador inválido.';
        $0505: Mensagem := Mensagem + 'Número de caixa inválido.';
        $0508: Mensagem := Mensagem + 'Dados de Cabeçalho ou rodapé inválidos.';
        $0509: Mensagem := Mensagem + 'Excesso de fiscalização.';
        $500C: Mensagem := Mensagem + 'Número máximo de meios de pagamento já definidos.';
        $050D: Mensagem := Mensagem + 'Meio de pagamento já definido.';
        $050E: Mensagem := Mensagem + 'Meio de pagamento inválido.';
        $050F: Mensagem := Mensagem + 'Descrição do meio de pagamento inválido.';
        $0510: Mensagem := Mensagem + 'Valor máximo de desconto inválido.';
        $0513: Mensagem := Mensagem + 'Logotipo do usuário inválido.';
        $0514: Mensagem := Mensagem + 'Seqüência de logotipo inválido.';
        $0515: Mensagem := Mensagem + 'Configuração de display inválida.';
        $0516: Mensagem := Mensagem + 'Dados do MICR inválidos.';
        $0517: Mensagem := Mensagem + 'Campo de endereço inválido.';
        $0518: Mensagem := Mensagem + 'Nome da loja não definido.';
        $0519: Mensagem := Mensagem + 'Dados fiscais não definidos.';
        $510A: Mensagem := Mensagem + 'Número seqüencial do ECF inválido.';
        $510B: Mensagem := Mensagem + 'Simbologia do GT inválida, devem ser todos diferentes.';
        $510C: Mensagem := Mensagem + 'Número de CNPJ inválido.';
        $051D: Mensagem := Mensagem + 'Senha de fiscalização inválida.';
        $051E: Mensagem := Mensagem + 'Último documento deve ser uma redução Z.';
        $051F: Mensagem := Mensagem + 'Símbolo da moeda igual ao atualmente cadastrado.';
        $0520: Mensagem := Mensagem + 'Identificação da alíquota não cadastrada.';
        $0521: Mensagem := Mensagem + 'Alíquota não cadastrada.';
        $0601: Mensagem := Mensagem + 'Memória de Fita-detalhe esgotada.';
        $0605: Mensagem := Mensagem + 'Número de série invalido para a Memória de Fita-detalhe.';
        $0606: Mensagem := Mensagem + 'Memória de Fita-detalhe não iniciada.';
        $0607: Mensagem := Mensagem + 'Memória de Fita-detalhe não pode estar iniciada.';
        $0608: Mensagem := Mensagem + 'Número de série da Memória de Fita-detalhe não confere.';
        $0609: Mensagem := Mensagem + 'Erro Interno na Memória de Fita-detalhe.';
        $0701: Mensagem := Mensagem + 'Valor inválido para o número do registro.';
        $0702: Mensagem := Mensagem + 'Valor inválido para o número do item.';
        $0703: Mensagem := Mensagem + 'Intervalo inválido para a leitura da MFD.';
        $0704: Mensagem := Mensagem + 'Número de usuário inválido para MFD.';
        $0801: Mensagem := Mensagem + 'Comando inválido com jornada fiscal fechada.';
        $0802: Mensagem := Mensagem + 'Comando inválido com jornada fiscal aberta.';
        $0803: Mensagem := Mensagem + 'Memória Fiscal esgotada.';
        $0804: Mensagem := Mensagem + 'Jornada fiscal deve ser fechada.';
        $0805: Mensagem := Mensagem + 'Não há meios de pagamento definidos.';
        $0806: Mensagem := Mensagem + 'Excesso de meios de pagamento utilizados na jornada fiscal.';
        $0807: Mensagem := Mensagem + 'Jornada fiscal sem movimento de vendas.';
        $0808: Mensagem := Mensagem + 'Intervalo de jornada fiscal inválido.';
        $0809: Mensagem := Mensagem + 'Existem mais dados para serem lidos.';
        $800A: Mensagem := Mensagem + 'Não existem mais dados para serem lidos.';
        $800B: Mensagem := Mensagem + 'Não pode abrir jornada fiscal.';
        $800C: Mensagem := Mensagem + 'Não pode fechar jornada fiscal.';
        $080D: Mensagem := Mensagem + 'Limite máximo do período fiscal atingido.';
        $080E: Mensagem := Mensagem + 'Limite máximo do período fiscal não atingido.';
        $080F: Mensagem := Mensagem + 'Abertura da jornada fiscal não permitida.';
        $0901: Mensagem := Mensagem + 'Valor muito grande.';
        $0902: Mensagem := Mensagem + 'Valor muito pequeno.';
        $0903: Mensagem := Mensagem + 'Itens em excesso.';
        $0904: Mensagem := Mensagem + 'Alíquotas em excesso.';
        $0905: Mensagem := Mensagem + 'Desconto ou acréscimos em excesso.';
        $0906: Mensagem := Mensagem + 'Meios de pagamento em excesso.';
        $0907: Mensagem := Mensagem + 'Item não encontrado.';
        $0908: Mensagem := Mensagem + 'Meio de pagamento não encontrado.';
        $0909: Mensagem := Mensagem + 'Total nulo.';
        $900C: Mensagem := Mensagem + 'Tipo de pagamento não definido.';
        $090F: Mensagem := Mensagem + 'Alíquota não encontrada.';
        $0910: Mensagem := Mensagem + 'Alíquota inválida.';
        $0911: Mensagem := Mensagem + 'Excesso de meios de pagamento com CDC.';
        $0912: Mensagem := Mensagem + 'Meio de pagamento com CDC já emitido.';
        $0913: Mensagem := Mensagem + 'Meio de pagamento com CDC ainda não emitido.';
        $0914: Mensagem := Mensagem + 'Leitura da Memória Fiscal – intervalo CRZ inválido.';
        $0915: Mensagem := Mensagem + 'Leitura da Memória Fiscal – intervalo de data inválido.';
        $0A01: Mensagem := Mensagem + 'Operação não permitida após desconto / acréscimo.';
        $0A02: Mensagem := Mensagem + 'Operação não permitida após registro de pagamentos.';
        $0A03: Mensagem := Mensagem + 'Tipo de item inválido.';
        $0A04: Mensagem := Mensagem + 'Linha de descrição em branco.';
        $0A05: Mensagem := Mensagem + 'Quantidade muito pequena.';
        $0A06: Mensagem := Mensagem + 'Quantidade muito grande.';
        $0A07: Mensagem := Mensagem + 'Total do item com valor muito alto.';
        $0A08: Mensagem := Mensagem + 'Operação não permitida antes do registro de pagamentos.';
        $0A09: Mensagem := Mensagem + 'Registro de pagamento incompleto.';
        $0A0A: Mensagem := Mensagem + 'Registro de pagamento finalizado.';
        $0A0B: Mensagem := Mensagem + 'Valor pago inválido.';
        $0A0C: Mensagem := Mensagem + 'Valor de desconto ou acréscimo não permitido.';
        $0A0E: Mensagem := Mensagem + 'Valor não pode ser zero.';
        $0A0F: Mensagem := Mensagem + 'Operação não permitida antes do registro de itens.';
        $0A11: Mensagem := Mensagem + 'Cancelamento de desconto e acréscimo somente para item atual.';
        $0A12: Mensagem := Mensagem + 'Não foi possível cancelar último Cupom Fiscal.';
        $0A13: Mensagem := Mensagem + 'Último Cupom Fiscal não encontrado.';
        $0A14: Mensagem := Mensagem + 'Último Comprovante Não-Fiscal não encontrado.';
        $0A15: Mensagem := Mensagem + 'Cancelamento de CDC necessária.';
        $0A16: Mensagem := Mensagem + 'Número de item em Cupom Fiscal inválido.';
        $0A17: Mensagem := Mensagem + 'Operação somente permitida após subtotalização.';
        $0A18: Mensagem := Mensagem + 'Operação somente permitida durante a venda de itens.';
        $0A19: Mensagem := Mensagem + 'Operação não permitida em item com desconto ou acréscimo.';
        $0A1A: Mensagem := Mensagem + 'Dígitos de quantidade inválidos.';
        $0A1B: Mensagem := Mensagem + 'Dígitos de valor unitário inválido.';
        $0A1C: Mensagem := Mensagem + 'Não há desconto ou acréscimo a cancelar.';
        $0A1D: Mensagem := Mensagem + 'Não há item para cancelar.';
        $0A1E: Mensagem := Mensagem + 'Desconto ou acréscimo somente no item atual.';
        $0A1F: Mensagem := Mensagem + 'Desconto ou acréscimo já efetuado.';
        $0A20: Mensagem := Mensagem + 'Desconto ou acréscimo nulo não permitido.';
        $0A21: Mensagem := Mensagem + 'Valor unitário inválido.';
        $0A22: Mensagem := Mensagem + 'Quantidade inválida.';
        $0A23: Mensagem := Mensagem + 'Código de item inválido.';
        $0A24: Mensagem := Mensagem + 'Descrição inválida.';
        $0A25: Mensagem := Mensagem + 'Operação de desconto ou acréscimo não permitida.';
        $0A26: Mensagem := Mensagem + 'Mensagem promocional já impressa.';
        $0A27: Mensagem := Mensagem + 'Linhas adicionais não podem ser impressas.';
        $0A28: Mensagem := Mensagem + 'Dados do consumidor já impresso.';
        $0A29: Mensagem := Mensagem + 'Dados do consumidor somente no fim do documento.';
        $0A2A: Mensagem := Mensagem + 'Dados do consumidor somente no inicio do documento.';
        $0A2B: Mensagem := Mensagem + 'Comando Inválido para o item.';
        $0E01: Mensagem := Mensagem + 'Número de linhas em documento excedido.';
        $0E02: Mensagem := Mensagem + 'Número do relatório inválido.';
        $0E03: Mensagem := Mensagem + 'Operação não permitida após registro de itens.';
        $0E04: Mensagem := Mensagem + 'Registro de valor nulo não permitido.';
        $0E05: Mensagem := Mensagem + 'Não há desconto a cancelar.';
        $0E06: Mensagem := Mensagem + 'Não há acréscimo a cancelar.';
        $0E07: Mensagem := Mensagem + 'Operação somente permitida após subtotalização.';
        $0E08: Mensagem := Mensagem + 'Operação somente permitida durante registro de itens.';
        $0E09: Mensagem := Mensagem + 'Operação não-fiscal inválida.';
        $0E0A: Mensagem := Mensagem + 'Último comprovante Não-Fiscal não encontrado.';
        $0E0B: Mensagem := Mensagem + 'Meio de pagamento não encontrado.';
        $0E0C: Mensagem := Mensagem + 'Não foi possível imprimir nova via.';
        $0E0D: Mensagem := Mensagem + 'Não foi possível realizar reimpressão.';
        $0E0E: Mensagem := Mensagem + 'Não foi possível imprimir nova parcela.';
        $0E0F: Mensagem := Mensagem + 'Não há mais parcelas a imprimir.';
        $0E10: Mensagem := Mensagem + 'Registro de item Não-Fiscal inválido.';
        $0E11: Mensagem := Mensagem + 'Desconto ou acréscimo já efetuado.';
        $0E12: Mensagem := Mensagem + 'Valor de desconto ou acréscimo inválido.';
        $0E13: Mensagem := Mensagem + 'Não foi possível cancelar o item.';
        $0E14: Mensagem := Mensagem + 'Itens em excesso.';
        $0E15: Mensagem := Mensagem + 'Operação Não-Fiscal não cadastrada.';
        $0E16: Mensagem := Mensagem + 'Excesso de relatórios / operações não-fiscais cadastradas.';
        $0E17: Mensagem := Mensagem + 'Relatório não encontrado.';
        $0E18: Mensagem := Mensagem + 'Comando não permitido.';
        $0E19: Mensagem := Mensagem + 'Comando não permitido em operações não-fiscais para movimento de monetário.';
        $0E1A: Mensagem := Mensagem + 'Comando permitido apenas em operações não-fiscais para movimento de monetário.';
        $0E1B: Mensagem := Mensagem + 'Número de parcelas inválido para a emissão de CCD.';
        $0E1C: Mensagem := Mensagem + 'Operação não fiscal já cadastrada.';
        $0E1D: Mensagem := Mensagem + 'Relatório gerencial já cadastrado.';
        $0E1E: Mensagem := Mensagem + 'Relatório Gerencial Inválido.';
        $3001: Mensagem := Mensagem + 'Configuração de cheque não registrada.';
        $3002: Mensagem := Mensagem + 'Configuração de cheque não encontrada.';
        $3003: Mensagem := Mensagem + 'Valor do cheque já impresso.';
        $3004: Mensagem := Mensagem + 'Nominal ao cheque já impresso.';
        $3005: Mensagem := Mensagem + 'Linhas adicionais no cheque já impresso.';
        $3006: Mensagem := Mensagem + 'Autenticação já impressa.';
        $3007: Mensagem := Mensagem + 'Número máximo de autenticações já impresso.';
      else
        Mensagem := Mensagem + 'Erro desconhecido.';
      end;



    end;


    if Mensagem <> '' then
      Result := Mensagem;
  end
  else
  if COD_ECF = NENHUMA then
  begin
    Mensagem := '';
    Result := OK;



  end;



end;

// -------------------------------------------------------------------------- //
// Abrir porta Serial do ECF
function cECF_Abre(COD_ECF:Integer;Porta:string):string;
var
 sVelocidade: String;
 sPorta: String;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
    Result := OK
  else
  if COD_ECF = DARUMA then
    Result := OK
  else
  if COD_ECF = SWEDA then
    Result := OK
  else
  if COD_ECF = EPSON then
  begin
    Result := OK;

    SetLength(sVelocidade, 8);
    SetLength(sPorta, 4);
    iRetorno := EPSON_Serial_Abrir_PortaAD(pchar(sVelocidade), pchar(sPorta));

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON);
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := OK;

    SetLength(sVelocidade, 8);
    SetLength(sPorta, 4);
    iRetorno := EPSON_Serial_Abrir_PortaAD(pchar(sVelocidade), pchar(sPorta));

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON);

  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := OK;
  end;



end;

// -------------------------------------------------------------------------- //
// Fechar porta Serial do ECF
function cECF_Fecha(COD_ECF:Integer):string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
    Result := OK
  else
  if COD_ECF = DARUMA then
    Result := OK
  else
  if COD_ECF = SWEDA then
    iRetorno := ECF_FechaPortaSerial()
  else
  if COD_ECF = EPSON then
  begin
    iRetorno := EPSON_Serial_Fechar_Porta;
    Result := cECF_Analisa_Retorno(EPSON);
  end
  else
  if COD_ECF = EPSON then
  begin
    iRetorno := EPSON_Serial_Fechar_Porta;

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;
  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := OK;
  end;


end;

// -------------------------------------------------------------------------- //
// INFORMACAOES
// Verificar Impressora Ligada
function cECF_Ligada(COD_ECF:Integer):string;
begin
  Result := ERRO;
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
   // iRetorno := Daruma_FI_VerificaImpressoraLigada();

    iRetorno:=rVerificarImpressoraLigada_ECF_Daruma();  //Daruma_FrameWork

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := EPSON_ECFLigada;
  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := OK;
  end;


end;


// -------------------------------------------------------------------------- //
// Retornar o numero de Serie do ECF
function cECF_Numero_Serie(COD_ECF:Integer):string;
var
  sRet : string;
  i: integer;
  Numero : string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    // no arquivo bemafi.ini mude a chave da impressora para 1
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin
        if Pos(#0, Numero) > 0 then
          Numero := copy(Numero, 1, Pos(#0, Numero));

        Result := trim(Numero)
      end
      else
      begin
        Result := sRet;
      end;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';

    iRetorno := rRetornarInformacao_ECF_Daruma('78',numero); // Daruma_FrameWork

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Numero
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := EPSON_NumeroSerie;
  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := '0000000000000001';
  end;

end;

// -------------------------------------------------------------------------- //
// Verificar Numero do Caixa
function cECF_Numero_Caixa(COD_ECF:Integer):string;
var
  sRet: string;
  i: integer;
  Numero: string;

begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := copy(Numero,2,3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    For i := 1 To 3 Do Numero := Numero + ' ';

    iRetorno := rRetornarInformacao_ECF_Daruma('107',numero); // Daruma_FrameWork

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := Trim(Numero)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
        Result := copy(Numero,2,3)
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := EPSON_NumeroCaixa;
  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := '001';
  end;



end;

/// -------------------------------------------------------------------------- //
// Retorna o totalizador geral
function cECF_Grande_Total(cod_ECF:integer):string;
var
  sContador, sRet: string;
  i: integer;
  rvalor: real;

begin
  if COD_ECF = BEMATECH then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';

//    iRetorno := Daruma_FI_GrandeTotal(sContador);
    iRetorno := rRetornarInformacao_ECF_Daruma('1',sContador);  // Daruma_FrameWork

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin
        rvalor :=  strtofloat(sContador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';
      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := ECF_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = OK then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          Result := floattostr( rvalor/100)
        else
          Result := '0';

      end
      else
        Result := sRet;
    end
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    SetLength(sContador, 18);

    iRetorno := EPSON_Obter_GT(pchar(sContador));

    if iRetorno = 0 then
    begin
      rValor := StrToFloat(sContador);
      if rValor > 0 then
        Result := FloatToStr(rValor/100)
      else
        Result := '0';
    end
    else
      Result := ERRO;

  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := '0';
  end;



end;


// -------------------------------------------------------------------------- //
// LEITURA X
function cECF_LeituraX(COD_ECF:Integer):string;
begin
  Result := ERRO;

  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf) // retorna OK ou a Mensagem de Erro;
    ELSE
      Result := ecfMSG;  // retorna o Erro de falha de comunicação com o ECF
  end
  else
  if COD_ECF = DARUMA then
  begin
//    iRetorno := Daruma_FI_LeituraX();

    iRetorno:= iLeituraX_ECF_Daruma();  // Daruma_Framework

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = OK then
      Result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      Result := ecfMSG;

  end
  else
  if COD_ECF = EPSON then
  begin
//    iRetorno := EPSON_RelatorioFiscal_Abrir_Dia();

    iRetorno := EPSON_RelatorioFiscal_Abrir_Jornada();

    // CGT: Se houve falha na abertura do dia, executa apenas a leitura X
    if iRetorno <> 0 then
      iRetorno := EPSON_RelatorioFiscal_LeituraX();

    if iRetorno <> 0 then
      Result := cECF_Analisa_Retorno(EPSON)
    else
      Result := OK;

  end
  else
  if COD_ECF = NENHUMA then
  begin
    Result := OK;
  end;


end;

// -------------------------------------------------------------------------- //
function EPSON_ECFLigada: String;
var
  ST3: String;
  iST3: Integer;
  sDados: String;
  I: Integer;

begin
  Result := OK;

  for I := 1 to 20 do
    sDados := sDados + ' ';

  iRetorno := EPSON_Obter_Estado_Impressora(PChar(sDados));

  ST3 := Copy(sDados, 9, 4);
  iST3 := StrToInt('$' + ST3);

  if (iST3 >= 32768) Then
    Result := 'Impressora Desligada!'
  else
  if iRetorno <> 0 then
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_NumeroSerie: String;
var
  sDados: String;

begin
  SetLength(sDados, 108);

  iRetorno := EPSON_Obter_Dados_Impressora(pchar(sDados));

  if iRetorno = 0 then
    Result := copy(sDados, 1, 20)
  else
    Result := cECF_Analisa_Retorno(EPSON);

end;

// -------------------------------------------------------------------------- //
function EPSON_NumeroCaixa: String;
var
  sDados: String;

begin
  SetLength(sDados, 8);

  iRetorno := EPSON_Obter_Numero_ECF_Loja(pchar(sDados));

  if iRetorno = 0 then
    Result := copy(sDados, 1, 3)
  else
    Result := cECF_Analisa_Retorno(EPSON);

end;

end.


