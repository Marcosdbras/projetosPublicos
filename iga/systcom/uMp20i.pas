unit uMp20i;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Menus, StdCtrls;
  
function IniciaPorta(Porta:string):integer; stdcall; far; external 'Mp2032.dll';
function FechaPorta: integer	;  stdcall; far; external 'Mp2032.dll';
function BematechTX(BufTrans:string):integer; stdcall; far; external 'Mp2032.dll';
function FormataTX(BufTras:string; TpoLtra:integer; Italic:integer; Sublin:integer; expand:integer; enfat:integer):integer; stdcall; far; external 'Mp2032.dll';
function ComandoTX (BufTrans:string;TamBufTrans:integer):integer; stdcall; far; external 'Mp2032.dll';
function Status_Porta:integer; stdcall; far; external 'Mp2032.dll';
function AutenticaDoc(BufTras:string;Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function Le_Status:integer; stdcall; far; external 'Mp2032.dll';
function Le_Status_Gaveta:integer; stdcall; far; external 'Mp2032.dll';
function DocumentInserted:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraTamanhoExtrato(NumeroLinhas:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaExtratoLongo(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaEsperaImpressao(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function EsperaImpressao:integer; stdcall; far; external 'Mp2032.dll';
function ConfiguraModeloImpressora(ModeloImpressora:integer):integer; stdcall; far; external 'Mp2032.dll';
function AcionaGuilhotina(Modo:integer):integer; stdcall; far; external 'Mp2032.dll';
function HabilitaPresenterRetratil(Flag:Integer):integer; stdcall; far; external 'Mp2032.dll';
function ProgramaPresenterRetratil(Tempo:Integer):integer; stdcall; far; external 'Mp2032.dll';
function CaracterGrafico(Buffer: string; TamBuffer: integer):integer; stdcall; far; external 'Mp2032.dll';
function VerificaPapelPresenter():integer; stdcall; far; external 'Mp2032.dll';

{FUNÇÃO PARA CODIGO DE BARRAS}

//funções para impressão dos códigos de barras
Function ImprimeCodigoBarrasUPCA(Codigo : String) :Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasUPCE(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN13(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasEAN8(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE39(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE93(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODE128(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasITF(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasCODABAR(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasISBN(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasMSI(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPLESSEY(Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ImprimeCodigoBarrasPDF417(NivelCorrecaoErros , Altura , Largura , Colunas : Integer; Codigo : String) : Integer; stdcall; far; external 'Mp2032.dll';
Function ConfiguraCodigoBarras(Altura, Largura, PosicaoCaracteres, Fonte, Margem : Integer) : Integer; stdcall; far; external 'Mp2032.dll';

//Função para bitmaps
function ImprimeBmpEspecial(Nome: string; xScale : integer; yScale : integer; angle : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimeBitmap(Nome: string; mode : integer) : Integer; stdcall; far; external 'Mp2032.dll';
function AjustaLarguraPapel(PaperWidth :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function SelectDithering (DitherType :  integer) : Integer; stdcall; far; external 'Mp2032.dll';
function ImprimePrn (nome : string; sleep :  integer) : Integer; stdcall; far; external 'Mp2032.dll';

// SWEDA

// Funções de Comunicação  ---------------------------------------------------------------------------------------------------------------
function ECF_AbrePortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaPortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_MsgLog(Conteudo:Pchar):Integer; StdCall; External 'CONVECF.dll';
//Funções de Início de Dia
function ECF_AberturaDoDia( ValorInicioDia:String ; Pagto:String): Integer; StdCall; External 'CONVECF.dll';

// Funções de Leituras Fiscais  ---------------------------------------------------------------------------------------------------------------
function ECF_LeituraX: Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalData( cDatai: String; cDataf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalReducao( cCRZi: String; cCRZf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';

// Funções do Cupom Fiscal  ---------------------------------------------------------------------------------------------------------------
function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreCupomMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_IdentificaConsumidor( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AumentaDescricaoItem( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaUnidadeMedida ( unidade: String ):Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItemTresDecimais( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; TipoDesconto: String; Taxa: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; ValorUnitario: String; Acrescimo: String; Desconto: String; IndiceDepto: String; UM:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_DescontoSobreItemVendido(Item:String; TipoDesc:String; ValorDesc:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoDescontoItemMFD(Item:String; TipoDescAcres:String; TipoDesc:String; ValorDesc:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemAnterior: Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaAcrescimoDescontoItemMFD( Tipo: String ; Item:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_IniciaFechamentoCupom(DescAcres:String ; TipoDescontoACres:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_IniciaFechamentoCupomMFD(DescAcres:String ; TipoDescontoACres:String; ValorAcrescimo:String; ValorDesconto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoDescontoSubtotalMFD(DescAcres:String ; TipoDescontoACres:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaAcrescimoDescontoSubtotalMFD( Tipo: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_TotalizaCupomMFD: Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamento( Pagto:String;Valor:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamentoDescricaoForma( Pagto:String;Valor:String ;Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamentoMFD( Pagto:String;Valor:String ;Parcelas:String; Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TerminaFechamentoCupom(Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaCupomResumido( FormaPagamento: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_AtivaDesativaCorteProximoMFD(tipocorte:Integer): Integer; StdCall; External 'CONVECF.dll';
function ECF_CupomAdicionalMFD: Integer; StdCall; External 'CONVECF.dll';
function ECF_ProgramaArredondamento: Integer; StdCall; External 'CONVECF.dll';
function ECF_ProgramaTruncamento: Integer; StdCall; External 'CONVECF.dll';
function ECF_EstornoFormasPagamento(Oritem:String; Destino:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'CONVECF.DLL';

// Funções de Cancelamento  ---------------------------------------------------------------------------------------------------------------
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaCupomMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de COmprovante Crédito e Débito (TEF) ---------------------------------------------------------------------------------------------------------------
function ECF_IniciaModoTEF:Integer;StdCall; External 'CONVECF.dll';
function ECF_FinalizaModoTEF:Integer;StdCall; External 'CONVECF.dll';
function ECF_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreComprovanteNaoFiscalVinculadoMFD( FormaPagamento: String; Valor: String; NumeroCupom: String ; CPF:String; Nome:String; Endereco: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'CONVECF.dll';
function ECF_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'CONVECF.dll';
function ECF_ReimpressaoNaoFiscalVinculadoMFD(): Integer; StdCall; External 'CONVECF.dll';
function ECF_EstornoNaoFiscalVinculadoMFD(CPF:String ;NomeConsumidor:String ;EnderecoCOnsumidor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TEF_ImprimirRespostaCartao(NomeArquivo:String; Pagto:String; Trava:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TEF_FechaRelatorio(): Integer; StdCall; External 'CONVECF.dll';
function ECF_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaRelatorioGerencialMFDTEF( Texto: String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de Comprovantes  ---------------------------------------------------------------------------------------------------------------
function ECF_Suprimento( ValorInicioDia:String ; Pagto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_Sangria( ValorInicioDia:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreRecebimentoNaoFiscalMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreRecebimentoNaoFiscal(Item:String; TipoDesc:String; AcresDesconto:String; ValorDesc:String ;ValorReceb:String; texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_RecebimentoNaoFiscal( Totalizador:String; Valor:String ; Pagto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaRecebimentoNaoFiscalMFD( Totalizador:String; Valor:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemNaoFiscalMFD( NumeroItem: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoItemNaoFiscalMFD(Item:String; TipoDescAcres:String; TipoDesc:String; ValorDesc:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_AcrescimoDescontoSubtotalRecebimentoMFD(DescAcres:String ; TipoDescontoACres:String; Valor:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_TotalizaRecebimentoMFD: Integer; StdCall; External 'CONVECF.dll';
function ECF_IniciaFechamentoRecebimentoNaoFiscalMFD(DescAcres:String ; TipoDescontoACres:String; ValorAcrescimo:String; ValorDesconto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaRecebimentoNaoFiscalMFD(Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaRecebimentoNaoFiscalMFD( CGC_CPF, Nome, Endereco: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_EfetuaFormaPagamentoNaoFiscal( Pagto:String;Valor:String; Texto:String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de Relatório Gerencial  ---------------------------------------------------------------------------------------------------------------

function ECF_AbreRelatorioGerencial: Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreRelatorioGerencialMFD(Indice:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_EnviarTextoCNF( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_RelatorioGerencial( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaRelatorioGerencialMFD( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaRelatorioGerencial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaRelatorioXouZ: Integer; StdCall; External 'CONVECF.dll';


// Funções de Fechamento do dia ---------------------------------------------------------------------------------------------------------------
function ECF_FechamentoDoDia: Integer; StdCall; External 'CONVECF.dll';
function ECF_ReducaoZ( cData: String; cHora: String ): Integer; StdCall; External 'CONVECF.dll';

// Funções de Autenticações ---------------------------------------------------------------------------------------------------------------
function ECF_Autenticacao: Integer; StdCall; External 'CONVECF.dll';
function ECF_AutenticacaoMFD(Linha: String; Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_AutenticacaoStr(Texto:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaDocAutenticacao: Integer; StdCall; External 'CONVECF.dll';

// Funções de Gaveta ---------------------------------------------------------------------------------------------------------------
function ECF_AcionaGaveta: Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGaveta(Var Estado:Integer): Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGavetaStr(Var Estado:String): Integer; StdCall; External 'CONVECF.dll';

//Funções de Cheque ---------------------------------------------------------------------------------------------------------------
function ECF_ProgramaMoedaSingular(Nome:String):integer;StdCall; External 'CONVECF.dll';
function ECF_ProgramaMoedaPlural(Nome:String):integer;StdCall; External 'CONVECF.dll';
function ECF_IncluiCidadeFavorecido(Cidade:String; Favorecido:String):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaStatusCheque(Var Estado:Integer): Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaStatusChequeStr(Var Estado:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_ImprimeCheque(Banco:String; Valor:String;Favorecido:String;Cidade:String; Data:String; Texto:String):integer;StdCall; External 'CONVECF.dll';
function ECF_ImprimeChequeMFD(Banco:String; Valor:String;Favorecido:String;Cidade:String; Data:String; Texto:String; Verso:String):integer;StdCall; External 'CONVECF.dll';
function ECF_LeituraChequeMFD(CMC7: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraLeiautesCheques: Integer; StdCall; External 'CONVECF.dll';

//Funções de Status ---------------------------------------------------------------------------------------------------------------
function ECF_RetornaTipoEcf(Tipo:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoDll(Versao:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoFirmware(Versao:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerie(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMFD(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMemoriaMFD(NumeroSerie:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MarcaModeloTipoImpressoraMFD(Marca:String; Modelo:String; Tipo:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CGC_IE(CGC:String; IE:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_CNPJMFD(CGC:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InscricaoEstadualMFD(IE:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InscricaoMunicipalMFD(IM:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_NumeroSubstituicoesProprietario(Proprietario:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_SimboloMoeda(Moeda:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_ClicheProprietario(Linhas:pchar): Integer;StdCall; External 'CONVECF.DLL';
function ECF_NumeroLoja(Loja:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_NumeroCaixa(Caixa:String):integer;StdCall; External 'CONVECF.dll';
function ECF_DataHoraImpressora(Data:String; Hora:String):integer;StdCall; External 'CONVECF.dll';
function ECF_LerAliquotasComIndice(Tribut:Pchar ):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaTotalizadoresNaoFiscaisMFD(Nome:Pchar ):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaModoOperacao(Modo:String):integer;StdCall; External 'CONVECF.dll';
function ECF_VerificaDescricaoFormasPagamento(Pagtos:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscaisEx(Nomes:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRelatorioGerencialProgMFD(Nomes:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CasasDecimaisProgramada(Unitario:String; Quantidade:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTruncamento(Status:String ): Integer; StdCall; External 'CONVECF.DLL';

function ECF_VerificaEstadoImpressoraMFD( ACK: Integer;  ST1: Integer;  ST2: Integer; ST3: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RetornoImpressoraMFD(Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornoAliquotas(Aliquotas:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ImprimeCopiaCheque: Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaImpressaoCheque: Integer; StdCall; External 'CONVECF.dll';

//Funções de Status Ultima Transacao ---------------------------------------------------------------------------------------------------------------
function ECF_TipoUltimoDocumento(Tipo:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotal(Subt:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotalComprovanteNaoFiscalMFD(Subt:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorPagoUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCupom(COO:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFormasPagamento(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TotaisVenda(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorAcrescimosUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorDescontosUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorCancelamentosUltimoCupom(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorCancelamentosUltimoCupomISS(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';

//Funções de Status Acumuladores Diários ---------------------------------------------------------------------------------------------------------------
function ECF_Acrescimos(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Descontos(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRecebimentoNaoFiscal(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRecebimentoNaoFiscalMFD(Texto:Pchar ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Cancelamentos(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotal(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VendaBruta(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaAcrescimoNF(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaDescontoNF(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaCancelamentoNF(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaTroco(Texto:String ): Integer; StdCall; External 'CONVECF.DLL';

//Funções de Staus Contadores  ---------------------------------------------------------------------------------------------------------------
function ECF_NumeroIntervencoes(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorCupomFiscalMFD(Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCuponsCancelados(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroOperacoesNaoFiscais(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorComprovantesCreditoMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ComprovantesNaoFiscaisNaoEmitidosMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorOperacoesNaoFiscaisCanceladasMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorFitaDetalheMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorRelatoriosGerenciaisMFD(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroReducoes(Valor:String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornaCOO(Valor:String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_COO(ValorIni:String;Valor:String ): Integer; StdCall; External 'CONVECF.DLL';

//Funções de Staus do ECF  ---------------------------------------------------------------------------------------------------------------
function ECF_FlagsFiscais(Var Valor:Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressora( var ACK: Integer;  var ST1: Integer;  var ST2: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RetornoImpressora( var ACK: Integer;  var ST1: Integer;  var ST2: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaTipoImpressora( var Tipo: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusEstendidoMFD( var Tipo: Integer ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusCupomFiscal( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusRelatorioGerencial( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusComprovanteNaoFiscalVinculado( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_StatusComprovanteNaoFiscalNaoVinculado( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaModeloEcf: Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaHorarioVerao( Tipo: String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaZPendente( Tipo: String ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaDiaAberto( Tipo: String ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_VerificaFlagCorteMFD( Tipo: String ): Integer;StdCall; External 'CONVECF.DLL';
function ECF_GeraRFD( Texto: Pchar ): Integer;StdCall; External 'CONVECF.DLL';

// Funções Status Diversos---------------------------------------------------------------------
function ECF_PercentualLivreMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_TotalLivreMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_ReducoesRestantesMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_TamanhoTotalMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_TempoRestanteComprovanteMFD(Livre:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataMovimento(Livre:String): Integer;StdCall; External 'CONVECF.DLL';

// Status de Valores após a Redução Z ---------------------------------------------------------------
function ECF_DataHoraUltimoDocumentoMFD(DAtaHora:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataHoraReducao(Data:String; Hora:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DataMovimentoUltimaReducaoMFD(Data:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InicioFimCOOsMFD(Inicial:String; Final:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_InicioFimGTsMFD(Inicial:String; Final:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotalUltimaReducaoMFD(GT:String): Integer;StdCall; External 'CONVECF.DLL';
function ECF_DadosUltimaReducaoMFD(Texto:PChar): Integer;StdCall; External 'CONVECF.DLL';
function ECF_MapaResumoMFD:Integer;StdCall; External 'CONVECF.DLL';

// Funções SINTEGRA ---------------------------------------------------------------------
function ECF_RelatorioSintegraMFD(TipoRel:Integer; Arquivo:String;MesInic:String;AnoInic:String;Razao:String;Endereco:String; numero:String;Complemento:String;Bairro:String;Cidade:String; Cep:String; telefone:String; fax:String; Contato:string): Integer;StdCall; External 'CONVECF.DLL';
function ECF_RegistrosTipo60: Integer;StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60Mestre: Integer;StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60Analitico: Integer;StdCall; External 'CONVECF.DLL';
function ECF_RelatorioTipo60AnaliticoMFD: Integer;StdCall; External 'CONVECF.DLL';

// Funções CAptura Movimento Gravado ECF ---------------------------------------------------------------------
function ECF_LeituraXSerial: Integer;StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalSerialData( cDatai: String; cDataf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialDataMFD( cDatai: String; cDataf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducao( cCRZi: String; cCRZf: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalSerialReducaoMFD( cCRZi: String; cCRZf: String; tipo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_DownloadSB( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_DownloadMF( nome: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_DownloadMFD( nome: String ; tipo: String; inicio: String ; fim: String ; usuario: String  ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FormatoDadosMFD(Origem:String; Destino:String; Formato:String;Tipo:String; Inicio:String; Fim:String; Usuario:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CapturaDocumentos(Tipo:String; Destino:String; Inicio:String; Fim:String; Exibe:String): Integer; StdCall; External 'CONVECF.dll';

// Funções COTEPE --------------------------------------------------------------------------------------------------------------
function ECF_TabelaMercadoriasServicos3404(Arquivo:String; Inicio:String; Fim:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_ReproduzirMemoriaFiscalMFD(Tipo:String; Inicio:String; Fim:String; Binario:String; Arquivo:String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_GeraRegistrosCAT52MFD(Binario:String; Data:String ): Integer; StdCall; External 'CONVECF.dll';

//Funções Código de Barras--------------------------------------------------------------------
function ECF_ConfiguraCodigoBarrasMFD( Altura:String; largura:String; posicao:String; fonte:String; Margem:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasCODABARMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasCODE39MFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasEAN13MFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasEAN8MFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasITFMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasUPCAMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CodigoBarrasUPCEMFD( Codigo :String): Integer; StdCall; External 'CONVECF.dll';


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
//Function Bematech_FI_StatusCupomFiscal(cupa: string): Integer; StdCall; External 'BEMAFI32.DLL';


// Funções dos Relatórios Fiscais

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Funções das Operações Não Fiscais

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
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
function Bematech_FI_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaModoTEF                            : Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_IniciaModoTEF';
function Bematech_FI_FinalizaModoTEF                          : Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_FinalizaModoTEF';
function Bematech_FI_AcionaGuilhotinaMFD( iTipoCorte:integer ): Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGuilhotinaMFD';

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
function Bematech_FI_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'BEMAFI32.DLL';
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
function Bematech_FI_RetornoImpressoraMFD(ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
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

function Bematech_FI_RegistrosTipo60: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RegistrosTipo60';


//Funções DATAREGIS
function  DLLG2_Versao (Versao: Pchar;
                     TamVersao: Integer): Pchar;
        stdcall; external 'DLLG2.DLL' name 'DLLG2_Versao';

function  DLLG2_ConfiguraDriver (CanalSerial: Integer;
                                       Speed: Integer;
                                       Paridade: Char): Integer;
        stdcall; external 'DLLG2.DLL' name 'DLLG2_ConfiguraDriver';

function  DLLG2_IniciaDriver (CanalSerial: String): Integer;
        stdcall; external 'DLLG2.DLL' name 'DLLG2_IniciaDriver';

function  DLLG2_EncerraDriver (CanalSerial: Integer): Integer;
        stdcall; external 'DLLG2.DLL' name 'DLLG2_EncerraDriver';

function  DLLG2_ObtemNomeLog (NomeArquivo: Pchar;
                             BytesRetorno: Integer): Pchar;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ObtemNomeLog';

function  DLLG2_LeTimeout (CanalSerial: Integer): Integer;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_LeTimeout';

function DLLG2_ListaParams (CanalSerial: Integer;
                              NomeParam: Pchar;
                         TamListaParams: Integer): Pchar;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ListaParams';

function DLLG2_ExecutaComando (CanalSerial: Integer;
                                   Comando: Pchar): Integer;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ExecutaComando';

function DLLG2_LeRegistrador (CanalSerial: Integer;
                          NomeRegistrador: Pchar;
                              NomeComando: Pchar;
                           TamNomeComando: Integer): Integer;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_LeRegistrador';

function  DLLG2_ObtemCodErro (CanalSerial: Integer): Integer;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ObtemCodErro';

function  DLLG2_ObtemNomeErro (CanalSerial: Integer;
                                  NomeErro: Pchar;
                 TamanhoNomeErro: Integer): Pchar;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ObtemNomeErro';

function  DLLG2_ObtemCircunstancia (CanalSerial: Integer;
                                  Circunstancia: Pchar;
                                TamanhoNomeErro: Integer): Pchar;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ObtemCircunstancia';


function  DLLG2_TotalRetornos (CanalSerial: Integer): Integer;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_TotalRetornos';

function  DLLG2_Retorno (CanalSerial: Integer;
                              Indice: Integer;
                         NomeRetorno: Pchar;
                      TamNomeRetorno: Integer;
                        ValorRetorno: Pchar;
                     TamvalorRetorno: integer): Integer;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_Retorno';

function  DLLG2_ObtemRetornos (CanalSerial: Integer;
                                  Retornos: Pchar;
                               TamRetornos: Integer): Pchar;
    stdcall; external 'DLLG2.DLL' name 'DLLG2_ObtemRetornos';

procedure DLLG2_DefineTimeout (CanalSerial: Integer;
                                   Timeout: Integer);
    stdcall; external 'DLLG2.DLL' name 'DLLG2_DefineTimeout';

procedure DLLG2_SetaArquivoLog (NomeArquivo: Pchar);
    stdcall; external 'DLLG2.DLL' name 'DLLG2_SetaArquivoLog';

procedure DLLG2_LimpaParams (CanalSerial: Integer);
    stdcall; external 'DLLG2.DLL' name 'DLLG2_LimpaParams';

procedure DLLG2_AdicionaParam (CanalAberto: Integer;
                                 NomeParam: String;
                                ValorParam: String;
                                 TipoParam: Integer);
    stdcall; external 'DLLG2.DLL' name 'DLLG2_AdicionaParam';









Procedure Analisa_Resposta_bema();
Procedure Retorno_Impressora_bema;

Procedure Analisa_Resposta_sweda();
Procedure Retorno_Impressora_sweda;

// Funções do Gerenciamento do TEF

function VerificaGerenciadorPadrao: boolean;
function RealizaTransacao( cIdentificacao: TDateTime; cNumeroCupom: string; cValorPago: string; iConta: integer ): integer;

function ImprimeTransacao_bema( cFormaPGTO: string; cValorPago: string; cCOO: string; cIdentificacao: TDateTime; iConta: integer ): boolean;
function ImprimeTransacao_sweda( cFormaPGTO: string; cValorPago: string; cCOO: string; cIdentificacao: TDateTime; iConta: integer ): boolean;

function ConfirmaTransacao( iConta: integer ): boolean;
function NaoConfirmaTransacao( iConta: integer ): boolean;
function CancelaTransacaoTEF( cNSU: string; cValor: string; cNomeRede: string; cNumeroDOC: string; cData: string; cHora: string; iVezes: integer ): boolean;

function ImprimeGerencial_bema( iConta: integer ): integer;
function ImprimeGerencial_sweda( iConta: integer ): integer;

function FuncaoAdministrativaTEF( cIdentificacao: TDateTime ): integer;

function VerificaRetornoFuncaoImpressora_bema( iRetorno: integer ): boolean;
function VerificaRetornoFuncaoImpressora_sweda( iRetorno: integer ): boolean;

var
   iSubTotal, iConta, iTransacao, iQuantasTransacoes, iValorRestante: integer;
   cFormaPgto, cNumeroCupom: string;
   cValorPago: TStrings;
   cIdentificacao: TDateTime;
   Gerencial: boolean;
   bCupomAberto:boolean;



implementation

uses ugeral, ufrente, ufrenteecf, udados;


////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    VerificaGerenciadorPadrao
// Objetivo:
//    Verificar se o Gerenciador Padrão está ativo
// Parâmetro:
//    não há
// Retorno:
//    True para Gerenciador Padrão ATIVO
//    False para Gerenciador Padrão INATIVO
//
////////////////////////////////////////////////////////////////////////////////
function VerificaGerenciadorPadrao: boolean;
var
   cConteudoArquivo: string;
   cIdentificacao  : TDateTime;
   cArquivo        : TextFile;
   iTentativas     : integer;
   lFlag           : longbool;
begin
   AssignFile( cArquivo, 'INTPOS.001');
   cConteudoArquivo := '';
   cIdentificacao   := Time;
   cConteudoArquivo := '000-000 = ATV' + #13 + #10 +
                       '001-000 = ' + FormatDateTime( 'hhmmss', cIdentificacao ) + #13 + #10 +
                       '999-999 = 0';
   ReWrite( cArquivo );
   WriteLn( cArquivo, cConteudoArquivo );
   CloseFile( cArquivo );

   CopyFile( pchar( 'INTPOS.001' ), pchar( 'C:\TEF_DIAL\REQ\INTPOS.001' ), lFlag );
   DeleteFile( 'INTPOS.001' );

   for iTentativas := 1 to 7 do
      begin
         if ( FileExists( 'C:\TEF_DIAL\RESP\ATIVO.001' ) ) or ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) ) then
            begin
               result := True;
               break;
            end;

         Sleep( 1000 );
         if ( iTentativas = 7 ) then
            begin
               result := False;
               Break;
            end;
      end;
end;

////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    RealizaTransacao
// Objetivo:
//    Realiza a transação TEF
// Parâmetros:
//   TDateTime para identificar o número da transação
//   String para o Número do Cupom Fiscal (COO)
//   String para a Valor da Forma de Pagamento
//   Integer com o número da transação
// Retorno:
//    True para OK
//    False para não OK
//
////////////////////////////////////////////////////////////////////////////////
function RealizaTransacao( cIdentificacao: TDateTime; cNumeroCupom: string;
                           cValorPago: string; iConta: integer ): integer;
var
   cConteudoArquivo, cLinhaArquivo, cLinha, cCampoArquivo: string;
   cArquivo  : TextFile;
   lFlag     : longbool;
   iTentativas, iVezes: integer;
   cMensagem : TForm;
   bTransacao: boolean;
begin

   AssignFile( cArquivo, 'INTPOS.001');

   // Conteúdo do arquivo INTPOS.001 para solicitar a transação TEF.

   cConteudoArquivo := '';
   cConteudoArquivo := '000-000 = CRT' + #13 + #10 +
                       '001-000 = ' + FormatDateTime( 'hhmmss', cIdentificacao ) + #13 + #10 +
                       '002-000 = ' + cNumeroCupom + #13 + #10 +
                       '003-000 = ' + cValorPago + #13 + #10 +
                       '999-999 = 0';
   ReWrite( cArquivo );
   WriteLn( cArquivo, cConteudoArquivo );
   CloseFile( cArquivo );

   CopyFile( pchar( 'INTPOS.001' ), pchar( 'C:\TEF_DIAL\REQ\INTPOS.001' ), lFlag );
   DeleteFile( 'INTPOS.001' );

   if FileExists( 'IMPRIME' + inttostr( iConta ) + '.TXT' ) then
      DeleteFile( 'IMPRIME' + inttostr( iConta ) + '.TXT' );

   result := -2;

   for iTentativas := 1 to 7 do
      begin

         // Verifica se o Gerenciador Padrão recebeu o INTPOS.001 da solicitação.
         if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) ) then
            begin
               cLinhaArquivo := '';
               cLinha := '';

               while ( result = -2 ) do
                  begin
                     if FileExists( 'C:\TEF_DIAL\RESP\INTPOS.001' ) then // Verifica o arquivo INTPOS.001 de resposta.
                        begin

                           AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\INTPOS.001' );
                           Reset( cArquivo );

                           while not EOF( cArquivo ) do
                              begin

                                 ReadLn( cArquivo, cLinhaArquivo );
                                 cCampoArquivo := copy( cLinhaArquivo, 1, 3 );

                                 case StrToInt( cCampoArquivo ) of

                                    1: // Verifica se o campo de identificação é o mesmo do solicitado.
                                       if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) <> FormatDateTime( 'hhmmss', cIdentificacao ) ) then
                                          begin
                                             CloseFile( cArquivo );
                                             break;
                                          end;

                                    9: // Verifica se a Transação foi Aprovada.
                                       begin
                                          if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) = '0' then
                                             begin
                                                bTransacao := True;
                                                result := 1;
                                             end;
                                          if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) <> '0' then
                                             begin
                                                bTransacao := False;
                                                result := -1;
                                             end;
                                          end;

                                    28: // Verifica se existem linhas para serem impressas.
                                       if ( StrToInt( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) <> 0 ) and ( bTransacao = True ) then
                                          begin

                                             // É realizada uma cópia temporária do arquivo INTPOS.001 para cada transação efetuada.
                                             // Caso a transação necessite ser cancelada, as informações estarão neste arquivo.
                                             CopyFile( pchar( 'C:\TEF_DIAL\RESP\INTPOS.001' ), pchar( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iConta ) + '.001' ), lFlag );

                                             result := 1;
                                             for iVezes := 1 to StrToInt( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) do
                                                begin
                                                   ReadLn( cArquivo, cLinhaArquivo );
                                                   if copy( cLinhaArquivo, 1, 3 ) = '029' then
                                                      cLinha := cLinha + copy( cLinhaArquivo, 12, Length( cLinhaArquivo ) - 12 ) + #13 + #10;
                                                end;
                                          end;

                                    30: // Verifica se o campo é o 030 para mostrar a mensagem para o operador
                                       if cLinha <> '' then
                                          begin
                                             //frmfrenteecf.memostatus.Lines.Clear;
                                             //frmfrenteecf.memostatus.Lines.Add( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) );
                                             frmfrenteecf.pnlnpro.Caption := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                                             frmfrenteecf.Refresh;
                                          end
                                       else
                                          begin
                                             while not FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) do sleep( 1000 );
                                             if ( FileExists( 'C:\TEF_DIAL\REQ\INTPOS.001' ) ) then
                                                   DeleteFile( 'C:\TEF_DIAL\REQ\INTPOS.001' );

                                             //frmfrenteecf.memostatus.Lines.Clear;
                                             //frmfrenteecf.memostatus.Lines.Add( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) );
                                             frmfrenteecf.pnlnpro.Caption := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                                             frmfrenteecf.Refresh;
                                             result := -1;
                                          end;

                                 end;
                              end;
                        end;
                  end;

                  // Cria o arquivo temporário IMPRIME.TXT com a imagem do comprovante
                  if ( cLinha <> '' ) then
                     begin
                        CloseFile( cArquivo );
                        AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
                        ReWrite( cArquivo );
                        WriteLn( cArquivo, cLinha );
                        CloseFile( cArquivo );
                        Break;
                     end;
            end;

         Sleep( 1000 );

         // O arquivo INTPOS.STS não retornou em 7 segundos, então o operador é informado.
         if ( iTentativas = 7 ) then
            begin
               if ( FileExists( 'C:\TEF_DIAL\REQ\INTPOS.001' ) ) then
                  DeleteFile( 'C:\TEF_DIAL\REQ\INTPOS.001' );

               //frmfrenteecf.memostatus.Lines.Clear;
               //frmfrenteecf.memostatus.Lines.Add( 'Gerenciador Padrão não está ativo!' );
               frmfrenteecf.pnlnpro.Caption := 'Gerenciador Padrão não está ativo!';
               frmfrenteecf.Refresh;
               result := 0;
               break;
            end;
         if ( result = 0 ) or ( result = -1 )then
            begin
               CloseFile( cArquivo );
               break;
            end;
       end;
       if ( result = 1 ) then
          begin
             result := 1;
             AssignFile( cArquivo, 'PENDENTE.TXT' );
             ReWrite( cArquivo );
             WriteLn( cArquivo, inttostr( iConta ) );
             CloseFile( cArquivo );
          end;

   if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) ) then
      DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );

   if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.001' ) ) then
      DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.001' );

end;

////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    ImprimeTransacao
// Objetivo:
//    Realiza a impressão da Transação TEF
// Parâmetros:
//   String para a Forma de Pagamento
//   String para a Valor da Forma de Pagamento
//   String para o Número do Cupom Fiscal (COO)
//   TDateTime para identificar o número da transação
//   Integer com o número da transação
// Retorno:
//    True para OK
//    False para não OK
//
////////////////////////////////////////////////////////////////////////////////
function ImprimeTransacao_bema( cFormaPGTO: string; cValorPago: string;
                           cCOO: string; cIdentificacao: TDateTime; iConta: integer ): boolean;
var
   cLinhaArquivo, cLinha, cSaltaLinha: string;
   cMensagem: TForm;
   cArquivo : TextFile;
   iVezes, iRetorno, iVias, iTipoImpressora, iErro: integer;
begin

   //showmessage(cformapgto);
   //showmessage(cvalorpago);
   //showmessage(ccoo);
   //showmessage(timetostr(cIdentificacao));
   //showmessage(inttostr(iconta));

   // Neste ponto é criado o arquivo TEF.TXT, indicando que há uma
   // operação de TEF sendo realizada. Caso ocorra uma queda de energia,
   // no momento da impressão do TEF, e a aplicação for inicializada,
   // ao identificar a existência deste arquivo, a transação do TEF
   // deverá ser concelada.
   AssignFile( cArquivo, 'TEF.TXT');
   ReWrite( cArquivo );
   WriteLn( cArquivo, IntToStr( iTransacao ) );
   CloseFile( cArquivo );

   result := true;
   if FileExists( 'IMPRIME' + inttostr( iConta ) + '.TXT' ) then
      begin

         // Função que realiza o bloqueio do teclado e do mouse para a impressão do TEF
         iRetorno := Bematech_FI_IniciaModoTEF();

         // Função que realiza a abertura do comprovante não fiscal vinculado.
         if not Gerencial then
               iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPGTO ), pchar( cValorPago ), pchar( cCOO ) );


            for iVias := 1 to 2 do
                begin
                   AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
                   Reset( cArquivo );
                   cLinha := '';
                   while not EOF( cArquivo ) do
                      begin
                         ReadLn( cArquivo, cLinha );

                         // Função que realiza a impressão no comprovante não fiscal vinculado.


                         if not Gerencial then
                            iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( cLinha ) + #13 + #10 )
                         else
                            iRetorno := Bematech_FI_RelatorioGerencial( pchar( cLinha ) + #13 + #10 );

                            if not ( VerificaRetornoFuncaoImpressora_bema( iRetorno ) ) then
                                 begin
                                    result := False;
                                    iErro  := 1;
                                    break;
                                 end
                         else
                            if ( EOF( cArquivo ) ) and ( iVias <> 2 ) then
                                begin
                                   cSaltaLinha := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;

                                   // Função que realiza a impressão no comprovante não fiscal vinculado.
                                   iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado( pchar( cSaltaLinha) );


                                   VerificaRetornoFuncaoImpressora_bema( iRetorno );

                                  // Função que verifica o tipo da impressora fiscal.
                                  // Se for a impressora com cutter, é acionado o corte do papel (guilhotina).
                                  iTipoImpressora := 0;
                                  iRetorno := Bematech_FI_VerificaTipoImpressora( iTipoImpressora );
                                  if ( ( iTipoImpressora = 2 ) or
                                       ( iTipoImpressora = 4 ) or
                                       ( iTipoImpressora = 6 ) or
                                       ( iTipoImpressora = 8 ) ) then
                                      iRetorno := Bematech_FI_AcionaGuilhotinaMFD( 0 );


                                   //frmfrenteecf.memostatus.Lines.Clear;
                                   //frmfrenteecf.memostatus.Lines.Add('Por favor, destaque a 1ª via.');
                                   frmfrenteecf.pnlnpro.Caption := 'Por favor, destaque a 1ª via.';
                                   frmfrenteecf.Refresh;

                                   Sleep( 5000 );
                                   //frmfrenteecf.memostatus.Lines.Clear;
                                   frmfrenteecf.pnlnpro.Caption := '';
                                   frmfrenteecf.Refresh;
                                end;
                      end;
                      CloseFile( cArquivo );
                      if iErro = 1 then
                         break;

                end;

         // Função que realiza o desbloqueio do teclado e do mouse.
         iRetorno := Bematech_FI_FinalizaModoTEF();

         // Função que realiza o fechamento do comprovante não fiscal vinculado.
         iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();


      end;
end;



function ImprimeTransacao_sweda( cFormaPGTO: string; cValorPago: string;
                           cCOO: string; cIdentificacao: TDateTime; iConta: integer ): boolean;
var
   cLinhaArquivo, cLinha, cSaltaLinha: string;
   cMensagem: TForm;
   cArquivo : TextFile;
   iVezes, iRetorno, iVias, iTipoImpressora, iErro: integer;
begin

   // Neste ponto é criado o arquivo TEF.TXT, indicando que há uma
   // operação de TEF sendo realizada. Caso ocorra uma queda de energia,
   // no momento da impressão do TEF, e a aplicação for inicializada,
   // ao identificar a existência deste arquivo, a transação do TEF
   // deverá ser concelada.
   AssignFile( cArquivo, 'TEF.TXT');
   ReWrite( cArquivo );
   WriteLn( cArquivo, IntToStr( iTransacao ) );
   CloseFile( cArquivo );

   result := true;
   if FileExists( 'IMPRIME' + inttostr( iConta ) + '.TXT' ) then
      begin

         // Função que realiza o bloqueio do teclado e do mouse para a impressão do TEF
         iRetorno := ECF_IniciaModoTEF();

         // Função que realiza a abertura do comprovante não fiscal vinculado.
         if not Gerencial then
               iRetorno := ECF_AbreComprovanteNaoFiscalVinculado( pchar( cFormaPGTO ), pchar( cValorPago ), pchar( cCOO ) );

            for iVias := 1 to 2 do
                begin
                   AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
                   Reset( cArquivo );
                   cLinha := '';
                   while not EOF( cArquivo ) do
                      begin
                         ReadLn( cArquivo, cLinha );

                         // Função que realiza a impressão no comprovante não fiscal vinculado.
                         if not Gerencial then
                            iRetorno := ECF_UsaComprovanteNaoFiscalVinculado( pchar( cLinha ) + #13 + #10 )
                         else
                            iRetorno := ECF_RelatorioGerencial( pchar( cLinha ) + #13 + #10 );

                            if not ( VerificaRetornoFuncaoImpressora_sweda( iRetorno ) ) then
                                 begin
                                    result := False;
                                    iErro  := 1;
                                    break;
                                 end
                         else
                            if ( EOF( cArquivo ) ) and ( iVias <> 2 ) then
                                begin
                                   cSaltaLinha := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;

                                   // Função que realiza a impressão no comprovante não fiscal vinculado.
                                   iRetorno := ECF_UsaComprovanteNaoFiscalVinculado( pchar( cSaltaLinha) );
                                   VerificaRetornoFuncaoImpressora_sweda( iRetorno );

                                  // Função que verifica o tipo da impressora fiscal.
                                  // Se for a impressora com cutter, é acionado o corte do papel (guilhotina).
                                  iTipoImpressora := 0;
                                  iRetorno := ECF_VerificaTipoImpressora( iTipoImpressora );
                                  if ( ( iTipoImpressora = 2 ) or
                                       ( iTipoImpressora = 4 ) or
                                       ( iTipoImpressora = 6 ) or
                                       ( iTipoImpressora = 8 ) ) then
                                      //iRetorno := ECF_AcionaGuilhotinaMFD( 0 );


                                   //frmfrenteecf.memostatus.Lines.Clear;
                                   //frmfrenteecf.memostatus.Lines.Add('Por favor, destaque a 1ª via.');
                                   frmfrenteecf.pnlnpro.Caption := 'Por favor, destaque a 1ª via.';
                                   frmfrenteecf.Refresh;
                                   Sleep( 5000 );
                                   //frmfrenteecf.memostatus.Lines.Clear;
                                   frmfrenteecf.pnlnpro.Caption := '';
                                   frmfrenteecf.Refresh;
                                end;
                      end;
                      CloseFile( cArquivo );
                      if iErro = 1 then
                         break;

                end;

         // Função que realiza o desbloqueio do teclado e do mouse.
         iRetorno := ECF_FinalizaModoTEF();

         // Função que realiza o fechamento do comprovante não fiscal vinculado.
         iRetorno := ECF_FechaComprovanteNaoFiscalVinculado();
      end;
end;




////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    ConfirmaTransacao
// Objetivo:
//    Confirmar a Transação TEF
// Parâmetros:
//   Integer com o número da transação
// Retorno:
//    True para OK
//    False para não OK
//
////////////////////////////////////////////////////////////////////////////////
function ConfirmaTransacao( iConta: integer ): boolean;
var
   cLinhaArquivo, cConteudo: string;
   cArquivo: TextFile;
   lFlag   : longbool;
   iVezes  : integer;
begin
   cLinhaArquivo := '';
   cConteudo     := '';

   if FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iConta ) + '.001' ) then
      begin

         if ( iConta <> 0 ) then
            AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iConta ) + '.001' )
         else
            AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\INTPOS.001' );

         Reset( cArquivo );
         while not EOF( cArquivo ) do
            begin
               ReadLn( cArquivo, cLinhaArquivo );
               if ( copy( cLinhaArquivo, 1, 3 ) = '001' ) or
                  ( copy( cLinhaArquivo, 1, 3 ) = '002' ) or
                  ( copy( cLinhaArquivo, 1, 3 ) = '010' ) or
                  ( copy( cLinhaArquivo, 1, 3 ) = '012' ) or
                  ( copy( cLinhaArquivo, 1, 3 ) = '027' ) then
                     cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
               if ( copy( cLinhaArquivo, 1, 3 ) = '999' ) then
                  cConteudo := cConteudo + cLinhaArquivo;
            end;
         CloseFile( cArquivo );

         cConteudo := '000-000 = CNF' + #13 + #10 + cConteudo;

         AssignFile( cArquivo, 'INTPOS.001' );
         ReWrite( cArquivo );
         WriteLn( cArquivo, cConteudo );
         CloseFile( cArquivo );
         CopyFile( pchar( 'INTPOS.001' ), pchar( 'C:\TEF_DIAL\REQ\INTPOS.001' ), lFlag );

         DeleteFile( 'INTPOS.001' );

         while not FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) do sleep( 1000 );

         DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );
      end;

   // Se o arquivo TEF.TXT, que identifica que houve uma transação impressa
   // existir, o mesmo será exluído.
   if ( FileExists( 'TEF.TXT' ) ) then
      DeleteFile( 'TEF.TXT' );
end;

////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    NaoConfirmaTransacao
// Objetivo:
//    Não Confirmar a Transação TEF
// Parâmetros:
//   Integer com o número da transação
// Retorno:
//    True para OK
//    False para não OK
//
////////////////////////////////////////////////////////////////////////////////
function NaoConfirmaTransacao( iConta: integer ): boolean;
var cLinhaArquivo, cConteudo, cCampoArquivo: string;
    cArquivo: TextFile;
    lFlag   : longbool;
    cValor, cNomeRede, cNSU, cIdent, cData, cHora: string;
    iVezes: integer;
begin

   DeleteFile( 'IMPRIME' + IntToStr( iConta ) + '.TXT' );

   cLinhaArquivo := '';
   cConteudo     := '';

   if FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iConta ) + '.001' ) then
      begin

         AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iConta ) + '.001' );
         Reset( cArquivo );

         while not EOF( cArquivo ) do
            begin
               ReadLn( cArquivo, cLinhaArquivo );
               cCampoArquivo := copy( cLinhaArquivo, 1, 3 );
               case StrToInt( cCampoArquivo ) of
                  1: cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
                  3: cValor := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                  10:
                     begin
                        cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
                        cNomeRede := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                     end;
                  12:
                     begin
                        cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
                        cNSU := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                     end;
                  27:  cConteudo := cConteudo + cLinhaArquivo + #13 + #10;
                  999: cConteudo := cConteudo + cLinhaArquivo;
               end;
            end;

         CloseFile( cArquivo );

         cConteudo := '000-000 = NCN' + #13 + #10 + cConteudo;

         AssignFile( cArquivo, 'INTPOS.001' );
         ReWrite( cArquivo );
         WriteLn( cArquivo, cConteudo );
         CloseFile( cArquivo );
         CopyFile( pchar( 'INTPOS.001' ), pchar( 'C:\TEF_DIAL\REQ\INTPOS.001' ), lFlag );

         DeleteFile( 'INTPOS.001' );

         while not FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) do sleep( 1000 );

         DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );

         // Se o arquivo TEF.TXT, que identifica que houve uma transação impressa
         // existir, o mesmo será exluído.

         if ( FileExists( 'TEF.TXT' ) ) then
            DeleteFile( 'TEF.TXT' );

         Application.MessageBox( pchar( 'Cancelada a Transação' + #13 + #13 + 'Rede: ' +
                                 cNomeRede + #13 + 'Doc Nº: ' + cNSU + #13 + 'Valor: ' +
                                 FormatFloat( '#,##0.00', StrToFloat( cValor ) / 100 ) ),
                                 'Atenção', MB_IconInformation + MB_OK );

         DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iConta ) + '.001' );
      end;

   iConta := iConta - 1;
   if iConta > 0 then
      begin
         for iVezes := 1 to iConta do
            begin
               if FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' ) then
                  begin
                     cLinhaArquivo := '';
                     cConteudo     := '';

                     AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' );

                     Reset( cArquivo );
                     while not EOF( cArquivo ) do
                        begin
                           ReadLn( cArquivo, cLinhaArquivo );
                           cCampoArquivo := copy( cLinhaArquivo, 1, 3 );
                           case StrToInt( cCampoArquivo ) of
                              1:  cIdent    := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                              3:  cValor    := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                              10: cNomeRede := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                              12: cNSU      := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                              22: cData     := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                              23: cHora     := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                           end;
                        end;

                     CloseFile( cArquivo );

                     DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );

                     CancelaTransacaoTEF( cNSU, cValor, cNomeRede, cNSU, cData, cHora, iVezes );

                     ConfirmaTransacao( iVezes );

                     if frmdados.cds_Tipo_Pgto.FieldByName('tipoimpf').asInteger = 1 then
                        ImprimeGerencial_sweda( iVezes );
                     //endi

                     if frmdados.cds_Tipo_Pgto.FieldByName('tipoimpf').asInteger = 2 then
                        ImprimeGerencial_bema( iVezes );
                     //endi

                     DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );

                     // Se o arquivo TEF.TXT, que identifica que houve uma transação impressa
                     // existir, o mesmo será excluído.
                     if ( FileExists( 'TEF.TXT' ) ) then
                        DeleteFile( 'TEF.TXT' );

                     Application.MessageBox( pchar( 'Cancelada a Transação' + #13 + #13 + 'Rede: ' +
                                             cNomeRede + #13 + 'Doc Nº: ' + cNSU + #13 + 'Valor: ' +
                                             FormatFloat( '#,##0.00', StrToFloat( cValor ) / 100 ) ),
                                             'Atenção', MB_IconInformation + MB_OK );
                  end;
            end;
      end;

   if iConta > 0 then
      begin
         for iVezes := 1 to iConta do
            begin
               if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' ) ) then
               DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS' + inttostr( iVezes ) + '.001' );
               DeleteFile( 'C:\TEF_DIAL\RESP\CANCEL' + inttostr( iVezes ) + '.001' );
               DeleteFile( 'IMPRIME' + inttostr( iConta ) + '.TXT' );
               DeleteFile( 'PENDENTE.TXT' );
            end;
       end;
end;

////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    CancelaTransacaoTEF
// Objetivo:
//    Cancelar uma transação já confirmada
// Parâmetros:
//    String com o número de identificação (NSU)
//    String com o valor da transação
//    String com o valor da transação
//    String com o nome e bandeira (REDE)
//    String com o número do documento
//    String com a data da transação no formato DDMMAAAA
//    String com a hora da transação no formato HHSMMSS
//    Integer com o número da transação
// Retorno:
//    True para OK
//    False para não OK
//
////////////////////////////////////////////////////////////////////////////////
function CancelaTransacaoTEF( cNSU: string; cValor: string; cNomeRede: string;
         cNumeroDOC: string; cData: string; cHora: string; iVezes: integer ): boolean;
var cConteudo: string;
    cArquivo: TextFile;
    lFlag   : longbool;
begin

   cConteudo := '';
   cConteudo := '000-000 = CNC'           + #13 + #10 +
                '001-000 = ' + cNSU       + #13 + #10 +
                '003-000 = ' + cValor     + #13 + #10 +
                '010-000 = ' + cNomeRede  + #13 + #10 +
                '012-000 = ' + cNumeroDOC + #13 + #10 +
                '022-000 = ' + cData      + #13 + #10 +
                '023-000 = ' + cHora      + #13 + #10 +
                '999-999 = 0';
   AssignFile( cArquivo, 'INTPOS.001' );
   ReWrite( cArquivo );
   WriteLn( cArquivo, cConteudo );
   CloseFile( cArquivo );
   CopyFile( pchar( 'INTPOS.001' ), pchar( 'C:\TEF_DIAL\REQ\INTPOS.001' ), lFlag );
   DeleteFile( 'INTPOS.001' );

   while not FileExists( 'C:\TEF_DIAL\RESP\INTPOS.001' ) do sleep( 1000 );

   DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );
   CopyFile( pchar( 'C:\TEF_DIAL\RESP\INTPOS.001' ), pchar( 'C:\TEF_DIAL\RESP\CANCEL' + inttostr( iVezes ) +'.001' ), lFlag );

   DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.001' );

end;

////////////////////////////////////////////////////////////////////////////////
// Função:
//    FuncaoAdministrativaTEF
// Objetivo:
//    Chamar o módulo administrativo da bandeira
// Parâmetro:
//    String com o identificador
// Retorno:
//    1 para OK
//    diferente de 1 para não OK
////////////////////////////////////////////////////////////////////////////////
function FuncaoAdministrativaTEF( cIdentificacao: TDateTime ): integer;
var cArquivo        : TextFile;
    lFlag           : longbool;
    cConteudoArquivo: string;
begin

   AssignFile( cArquivo, 'INTPOS.001');

   // Conteúdo do arquivo INTPOS.001 para solicitar a transação TEF

   cConteudoArquivo := '';
   cConteudoArquivo := '000-000 = ADM' + #13 + #10 +
                       '001-000 = ' + FormatDateTime( 'hhmmss', cIdentificacao ) + #13 + #10 +
                       '999-999 = 0';
   ReWrite( cArquivo );
   WriteLn( cArquivo, cConteudoArquivo );
   CloseFile( cArquivo );

   CopyFile( pchar( 'INTPOS.001' ), pchar( 'C:\TEF_DIAL\REQ\INTPOS.001' ), lFlag );
   DeleteFile( 'INTPOS.001' );

end;




////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    ImprimeGerencial
// Objetivo:
//    Imprimir através do Relatório Gerencial a transação efetuada.
// Parâmetro:
//    Integer com o número da transação
// Retorno:
//    1 para OK
//    diferente de 1 para não OK
//
////////////////////////////////////////////////////////////////////////////////
function ImprimeGerencial_bema( iConta: integer ): integer;
var
   cConteudo, cConteudoAux, cLinha, cSaltaLinha, cLinhaArquivo: string;
   cArquivo: TextFile;
   iTentativas, iVezes, iRetorno, iVias, iTipoImpressora: integer;
   cMensagem: TForm;
   bTransacao: boolean;
   cArquivoTexto, cArquivoIntPos, cArquivoCancel, cCampoArquivo: string;
begin

   frmfrenteecf.Refresh;

   if ( iConta = 0 ) then
      begin
         cArquivoTexto  := 'IMPRIME.TXT';
         cArquivoIntPos := 'INTPOS.001';
      end
   else
      begin
         cArquivoTexto  := 'IMPRIME' + IntToStr( iConta ) + '.TXT';
         cArquivoIntPos := 'INTPOS'  + IntToStr( iConta ) + '.001';
         cArquivoCancel := 'CANCEL'  + IntToStr( iConta ) + '.001';
      end;

   if FileExists( cArquivoTexto ) then DeleteFile( cArquivoTexto );

   if ( FileExists( 'C:\TEF_DIAL\RESP\' + cArquivoCancel ) ) then
      cArquivoIntPos := 'CANCEL'  + IntToStr( iConta ) + '.001';

   result := -2;

   for iTentativas := 1 to 7 do
      begin

         cLinhaArquivo := '';
         cLinha := '';
         while ( result = -2 ) do
            begin
               if FileExists( 'C:\TEF_DIAL\RESP\' + cArquivoIntPos ) then
                  begin
                     AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\' + cArquivoIntPos );
                     Reset( cArquivo );
                     while not EOF( cArquivo ) do
                        begin

                           ReadLn( cArquivo, cLinhaArquivo );
                           cCampoArquivo := copy( cLinhaArquivo, 1, 3 );

                           case StrToInt( cCampoArquivo ) of

                              9: // Verifica se a Transação foi Aprovada
                                 begin
                                    if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) = '0' then
                                       begin
                                          bTransacao := True;
                                          result := 1;
                                       end;
                                    if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) <> '0' then
                                       begin
                                          bTransacao := False;
                                          result := -1;
                                       end;
                                    end;

                              28: // Verifica se existem linhas para serem impressas
                                 if ( StrToInt( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) <> 0 ) and ( bTransacao = True ) then
                                    begin
                                       result := 1;
                                       for iVezes := 1 to StrToInt( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) do
                                          begin
                                             ReadLn( cArquivo, cLinhaArquivo );
                                             if copy( cLinhaArquivo, 1, 3 ) = '029' then
                                                cLinha := cLinha + copy( cLinhaArquivo, 12, Length( cLinhaArquivo ) - 12 ) + #13 + #10;
                                          end;
                                    end;

                              30: // Verifica se o campo é o 030 para mostrar a mensagem para o operador
                                 if cLinha <> '' then
                                    begin
                                       //frmfrenteecf.memostatus.Lines.Clear;
                                       //frmfrenteecf.memostatus.Lines.Add( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) );
                                       frmfrenteecf.pnlnpro.Caption := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                                       frmfrenteecf.Refresh;
                                    end
                                 else
                                    begin
                                       if ( FileExists( 'C:\TEF_DIAL\REQ\INTPOS.001' ) ) then
                                          DeleteFile( 'C:\TEF_DIAL\REQ\INTPOS.001' );

                                       //frmfrenteecf.memostatus.Lines.Clear;
                                       //frmfrenteecf.memostatus.Lines.Add( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) );
                                       frmfrenteecf.pnlnpro.Caption := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                                       frmfrenteecf.Refresh;
                                       result := -1;
                                    end;

                           end;
                        end;
                  end;
            end;

            // Cria o arquivo temporário IMPRIME.TXT com a imagem do comprovante
            if ( cLinha <> '' ) then
               begin
                  CloseFile( cArquivo );
                  AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
                  ReWrite( cArquivo );
                  WriteLn( cArquivo, cLinha );
                  CloseFile( cArquivo );
                  Break;
               end;

         Sleep( 1000 );

         // O arquivo INTPOS.STS não retornou em 7 segundos, então o operador é informado.
         if ( iTentativas = 7 ) then
            begin
               if ( FileExists( 'C:\TEF_DIAL\REQ\INTPOS.001' ) ) then
                  DeleteFile( 'C:\TEF_DIAL\REQ\INTPOS.001' );


               //frmfrenteecf.memostatus.Lines.Clear;
               //frmfrenteecf.memostatus.Lines.Add( 'Gerenciador Padrão não está ativo!' );
               frmfrenteecf.pnlnpro.Caption := 'Gerenciador Padrão não está ativo!';
               frmfrenteecf.Refresh;
               result := 0;
               break;
            end;
         if ( result = 0 ) or ( result = -1 )then
            begin
               CloseFile( cArquivo );
               break;
            end;
      end;

   if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) ) then
      DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );

   if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.001' ) ) then
      DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.001' );

   if FileExists( 'IMPRIME' + inttostr( iConta ) + '.TXT' ) then
      begin

         // Bloqueia o teclado e o mouse para a impressão do TEF
         iRetorno := Bematech_FI_IniciaModoTEF();

         for iVias := 1 to 2 do
            begin
               AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
               Reset( cArquivo );
               while not EOF( cArquivo ) do
                  begin
                     cConteudo := ''; cLinha := '';
                     ReadLn( cArquivo, cLinha );
                     //cConteudo := cConteudo + cLinha + #13 + #10;
                     iRetorno := Bematech_FI_RelatorioGerencial( pchar( cLinha ) + #13 + #10 );

                     // Aqui é feito o tratamento de erro de comunicação com a impressora
                     // (desligamento da impressora durante a impressão do comprovante).
                     if not ( VerificaRetornoFuncaoImpressora_bema( iRetorno ) ) then
                        begin
                           iRetorno := Bematech_FI_FinalizaModoTEF();
                           if ( Application.MessageBox( 'A impressora não responde!' + #13 +
                                                        'Deseja imprimir novamente?', 'Atenção',
                                                        MB_IconInformation + MB_YESNO ) = IDYES ) then
                              begin
                                 CloseFile( cArquivo );
                                 iRetorno := Bematech_FI_FechaRelatorioGerencial;
                                 ImprimeGerencial_bema( iConta );
                                 exit;
                              end
                           else
                              begin
                                 CloseFile( cArquivo );
                                 iRetorno := Bematech_FI_FechaRelatorioGerencial;
                                 result := 0;
                                 exit;
                              end;
                        end;

                     if ( EOF( cArquivo ) ) and ( iVias <> 2 ) then
                        begin
                           cSaltaLinha := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
                           iRetorno := Bematech_FI_RelatorioGerencial( pchar( cSaltaLinha) );
                           VerificaRetornoFuncaoImpressora_bema( iRetorno );

                           // Função que verifica o tipo da impressora fiscal.
                           // Se for a impressora com cutter, é acionado o corte do papel (guilhotina).
                           iTipoImpressora := 0;
                           iRetorno := Bematech_FI_VerificaTipoImpressora( iTipoImpressora );
                           if ( ( iTipoImpressora = 2 ) or
                                ( iTipoImpressora = 4 ) or
                                ( iTipoImpressora = 6 ) or
                                ( iTipoImpressora = 8 ) ) then
                               iRetorno := Bematech_FI_AcionaGuilhotinaMFD( 0 );

                           //frmfrenteecf.memostatus.Lines.Clear;
                           //frmfrenteecf.memostatus.Lines.Add( 'Por favor, destaque a 1ª via.' );

                           frmfrenteecf.pnlnpro.Caption := 'Por favor, destaque a 1ª via.' ;
                           frmfrenteecf.Refresh;
                           Sleep( 5000 );
                           //frmfrenteecf.memostatus.Lines.Clear;

                           frmfrenteecf.pnlnpro.Caption := '';
                           frmfrenteecf.Refresh;
                        end;
                  end;
            CloseFile( cArquivo );
            end;
         iRetorno := Bematech_FI_FechaRelatorioGerencial();
         VerificaRetornoFuncaoImpressora_bema( iRetorno );
      end;

   // Desbloqeia o teclado e o mouse
   iRetorno := Bematech_FI_FinalizaModoTEF();
   DeleteFile( 'IMPRIME' + inttostr( iConta ) + '.TXT' );
end;


function ImprimeGerencial_sweda( iConta: integer ): integer;
var
   cConteudo, cConteudoAux, cLinha, cSaltaLinha, cLinhaArquivo: string;
   cArquivo: TextFile;
   iTentativas, iVezes, iRetorno, iVias, iTipoImpressora: integer;
   cMensagem: TForm;
   bTransacao: boolean;
   cArquivoTexto, cArquivoIntPos, cArquivoCancel, cCampoArquivo: string;
begin

   frmfrenteecf.Refresh;

   if ( iConta = 0 ) then
      begin
         cArquivoTexto  := 'IMPRIME.TXT';
         cArquivoIntPos := 'INTPOS.001';
      end
   else
      begin
         cArquivoTexto  := 'IMPRIME' + IntToStr( iConta ) + '.TXT';
         cArquivoIntPos := 'INTPOS'  + IntToStr( iConta ) + '.001';
         cArquivoCancel := 'CANCEL'  + IntToStr( iConta ) + '.001';
      end;

   if FileExists( cArquivoTexto ) then DeleteFile( cArquivoTexto );

   if ( FileExists( 'C:\TEF_DIAL\RESP\' + cArquivoCancel ) ) then
      cArquivoIntPos := 'CANCEL'  + IntToStr( iConta ) + '.001';

   result := -2;

   for iTentativas := 1 to 7 do
      begin

         cLinhaArquivo := '';
         cLinha := '';
         while ( result = -2 ) do
            begin
               if FileExists( 'C:\TEF_DIAL\RESP\' + cArquivoIntPos ) then
                  begin
                     AssignFile( cArquivo, 'C:\TEF_DIAL\RESP\' + cArquivoIntPos );
                     Reset( cArquivo );
                     while not EOF( cArquivo ) do
                        begin

                           ReadLn( cArquivo, cLinhaArquivo );
                           cCampoArquivo := copy( cLinhaArquivo, 1, 3 );

                           case StrToInt( cCampoArquivo ) of

                              9: // Verifica se a Transação foi Aprovada
                                 begin
                                    if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) = '0' then
                                       begin
                                          bTransacao := True;
                                          result := 1;
                                       end;
                                    if ( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) <> '0' then
                                       begin
                                          bTransacao := False;
                                          result := -1;
                                       end;
                                    end;

                              28: // Verifica se existem linhas para serem impressas
                                 if ( StrToInt( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) <> 0 ) and ( bTransacao = True ) then
                                    begin
                                       result := 1;
                                       for iVezes := 1 to StrToInt( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) ) do
                                          begin
                                             ReadLn( cArquivo, cLinhaArquivo );
                                             if copy( cLinhaArquivo, 1, 3 ) = '029' then
                                                cLinha := cLinha + copy( cLinhaArquivo, 12, Length( cLinhaArquivo ) - 12 ) + #13 + #10;
                                          end;
                                    end;

                              30: // Verifica se o campo é o 030 para mostrar a mensagem para o operador
                                 if cLinha <> '' then
                                    begin
                                       //frmfrenteecf.memostatus.Lines.Clear;
                                       //frmfrenteecf.memostatus.Lines.Add( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) );

                                       frmfrenteecf.pnlnpro.Caption := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                                       frmfrenteecf.Refresh;

                                    end
                                 else
                                    begin
                                       if ( FileExists( 'C:\TEF_DIAL\REQ\INTPOS.001' ) ) then
                                          DeleteFile( 'C:\TEF_DIAL\REQ\INTPOS.001' );

                                       //frmfrenteecf.memostatus.Lines.Clear;
                                       //frmfrenteecf.memostatus.Lines.Add( copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 ) );

                                       frmfrenteecf.pnlnpro.Caption := copy( cLinhaArquivo, 11, Length( cLinhaArquivo ) - 10 );
                                       frmfrenteecf.Refresh;
                                       result := -1;
                                    end;

                           end;
                        end;
                  end;
            end;

            // Cria o arquivo temporário IMPRIME.TXT com a imagem do comprovante
            if ( cLinha <> '' ) then
               begin
                  CloseFile( cArquivo );
                  AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
                  ReWrite( cArquivo );
                  WriteLn( cArquivo, cLinha );
                  CloseFile( cArquivo );
                  Break;
               end;

         Sleep( 1000 );

         // O arquivo INTPOS.STS não retornou em 7 segundos, então o operador é informado.
         if ( iTentativas = 7 ) then
            begin
               if ( FileExists( 'C:\TEF_DIAL\REQ\INTPOS.001' ) ) then
                  DeleteFile( 'C:\TEF_DIAL\REQ\INTPOS.001' );


               //frmfrenteecf.memostatus.Lines.Clear;
               //frmfrenteecf.memostatus.Lines.Add( 'Gerenciador Padrão não está ativo!' );

               frmfrenteecf.pnlnpro.Caption := 'Gerenciador Padrão não está ativo!';
               frmfrenteecf.Refresh;
               result := 0;
               break;
            end;
         if ( result = 0 ) or ( result = -1 )then
            begin
               CloseFile( cArquivo );
               break;
            end;
      end;

   if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.STS' ) ) then
      DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.STS' );

   if ( FileExists( 'C:\TEF_DIAL\RESP\INTPOS.001' ) ) then
      DeleteFile( 'C:\TEF_DIAL\RESP\INTPOS.001' );

   if FileExists( 'IMPRIME' + inttostr( iConta ) + '.TXT' ) then
      begin

         // Bloqueia o teclado e o mouse para a impressão do TEF
         iRetorno := ECF_IniciaModoTEF();

         for iVias := 1 to 2 do
            begin
               AssignFile( cArquivo, 'IMPRIME' + inttostr( iConta ) + '.TXT' );
               Reset( cArquivo );
               while not EOF( cArquivo ) do
                  begin
                     cConteudo := ''; cLinha := '';
                     ReadLn( cArquivo, cLinha );
                     //cConteudo := cConteudo + cLinha + #13 + #10;
                     iRetorno := ECF_RelatorioGerencial( pchar( cLinha ) + #13 + #10 );

                     // Aqui é feito o tratamento de erro de comunicação com a impressora
                     // (desligamento da impressora durante a impressão do comprovante).
                     if not ( VerificaRetornoFuncaoImpressora_sweda( iRetorno ) ) then
                        begin
                           iRetorno := ECF_FinalizaModoTEF();
                           if ( Application.MessageBox( 'A impressora não responde!' + #13 +
                                                        'Deseja imprimir novamente?', 'Atenção',
                                                        MB_IconInformation + MB_YESNO ) = IDYES ) then
                              begin
                                 CloseFile( cArquivo );
                                 iRetorno := ECF_FechaRelatorioGerencial;
                                 ImprimeGerencial_sweda( iConta );
                                 exit;
                              end
                           else
                              begin
                                 CloseFile( cArquivo );
                                 iRetorno := ECF_FechaRelatorioGerencial;
                                 result := 0;
                                 exit;
                              end;
                        end;

                     if ( EOF( cArquivo ) ) and ( iVias <> 2 ) then
                        begin
                           cSaltaLinha := #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10 + #13 + #10;
                           iRetorno := ECF_RelatorioGerencial( pchar( cSaltaLinha) );
                           VerificaRetornoFuncaoImpressora_sweda( iRetorno );

                           // Função que verifica o tipo da impressora fiscal.
                           // Se for a impressora com cutter, é acionado o corte do papel (guilhotina).
                           iTipoImpressora := 0;
                           iRetorno := ECF_VerificaTipoImpressora( iTipoImpressora );
                           if ( ( iTipoImpressora = 2 ) or
                                ( iTipoImpressora = 4 ) or
                                ( iTipoImpressora = 6 ) or
                                ( iTipoImpressora = 8 ) ) then
                               //iRetorno := ECF_AcionaGuilhotinaMFD( 0 );

                           //frmfrenteecf.memostatus.Lines.Clear;
                           //frmfrenteecf.memostatus.Lines.Add( 'Por favor, destaque a 1ª via.' );

                           frmfrenteecf.pnlnpro.Caption := 'Por favor, destaque a 1ª via.';
                           frmfrenteecf.Refresh;
                           Sleep( 5000 );
                           //frmfrenteecf.memostatus.Lines.Clear;

                           frmfrenteecf.pnlnpro.Caption := '';
                           frmfrenteecf.Refresh;
                           
                        end;
                  end;
            CloseFile( cArquivo );
            end;
         iRetorno := ECF_FechaRelatorioGerencial();
         VerificaRetornoFuncaoImpressora_sweda( iRetorno );
      end;

   // Desbloqeia o teclado e o mouse
   iRetorno := ECF_FinalizaModoTEF();
   DeleteFile( 'IMPRIME' + inttostr( iConta ) + '.TXT' );
end;

////////////////////////////////////////////////////////////////////////////////
//
// Função:
//    VerificaRetornoFuncaoImpressora
// Objetivo:
//    Verificar o retorno da impressora e da função utilizada
// Retorno:
//    True para OK
//    False para não OK
//
////////////////////////////////////////////////////////////////////////////////
function VerificaRetornoFuncaoImpressora_bema( iRetorno: integer ): boolean;
var
   cMSGErro: string;
   iACK, iST1, iST2: integer;
begin
   iACK := 0; iST1 := 0; iST2 := 0;
   cMSGErro := '';
   result   := False;
   bcupomaberto := false;

   case iRetorno of
        0: cMSGErro := 'Erro de Comunicação !';
       -1: cMSGErro := 'Erro de execução na Função !';
       -2: cMSGErro := 'Parâmetro inválido na Função !';
       -3: cMSGErro := 'Alíquota não Programada !';
       -4: cMSGErro := 'Arquivo BEMAFI32.INI não Encontrado !';
       -5: cMSGErro := 'Erro ao abrir a Porta de Comunicação !';
       -6: cMSGErro := 'Impressora Desligada ou Cabo de Comunicação Desconectado !';
       -7: cMSGErro := 'Código do Banco não encontrado no arquivo BEMAFI32.INI !';
       -8: cMSGErro := 'Erro ao criar ou gravar arquivo STATUS.TXT ou RETORNO.TXT !';
      -27: cMSGErro := 'Status diferente de 6, 0, 0 !';
      -30: cMSGErro := 'Função incompatível com a impressora fiscal YANCO !';
   end;

   cMSGErro := '';
   if ( iRetorno = 1 ) then
      begin
         Bematech_FI_RetornoImpressora( iACK, iST1, iST2 );
         if ( iACK = 21 ) then
            begin
               Bematech_FI_FinalizaModoTEF();
               Application.MessageBox( 'A Impressora retornou NAK !' + #13 +
                                       'Erro de Protocolo de Comunicação !',
                                       'Atenção', MB_IconError + MB_OK );
               result := False;
            end
         else
            if ( iST1 <> 0 ) or ( iST2 <> 0 ) then
               begin

                  // Analisa ST1
                  if ( iST1 >= 128 ) then
                     begin
                        iST1 := iST1 - 128;
                        cMSGErro := cMSGErro + 'Fim de Papel' + #13;
                     end;
                  if ( iST1 >= 64 ) then
                     begin
                        iST1 := iST1 - 64;
                        cMSGErro := cMSGErro + 'Pouco Papel' + #13;
                     end;
                  if ( iST1 >= 32 ) then
                     begin
                        iST1 := iST1 - 32;
                        cMSGErro := cMSGErro + 'Erro no Relógio' + #13;
                     end;
                  if ( iST1 >= 16 ) then
                     begin
                        iST1 := iST1 - 16;
                        cMSGErro := cMSGErro + 'Impressora em Erro' + #13;
                     end;
                  if ( iST1 >= 8 ) then
                     begin
                        iST1 := iST1 - 8;
                        cMSGErro := cMSGErro + 'Primeiro Dado do Comando não foi ESC' + #13;
                     end;
                  if iST1 >= 4 then
                     begin
                        iST1 := iST1 - 4;
                        cMSGErro := cMSGErro + 'Comando Inexistente' + #13;
                     end;
                  if iST1 >= 2 then
                     begin
                        iST1 := iST1 - 2;
                        //cMSGErro := cMSGErro + 'Cupom Fiscal Aberto' + #13;
                        bcupomaberto := true;
                     end;
                  if iST1 >= 1 then
                     begin
                        iST1 := iST1 - 1;
                        cMSGErro := cMSGErro + 'Número de Parâmetros Inválidos' + #13;
                     end;

                  // Analisa ST2
                  if iST2 >= 128 then
                     begin
                        iST2 := iST2 - 128;
                        cMSGErro := cMSGErro + 'Tipo de Parâmetro de Comando Inválido' + #13;
                     end;
                  if iST2 >= 64 then
                     begin
                        iST2 := iST2 - 64;
                        cMSGErro := cMSGErro + 'Memória Fiscal Lotada' + #13;
                     end;
                  if iST2 >= 32 then
                     begin
                        iST2 := iST2 - 32;
                        cMSGErro := cMSGErro + 'Erro na CMOS' + #13;
                     end;
                  if iST2 >= 16 then
                     begin
                        iST2 := iST2 - 16;
                        cMSGErro := cMSGErro + 'Alíquota não Programada' + #13;
                     end;
                  if iST2 >= 8 then
                     begin
                        iST2 := iST2 - 8;
                        cMSGErro := cMSGErro + 'Capacidade de Alíquota Programáveis Lotada' + #13;
                     end;
                  if iST2 >= 4 then
                     begin
                        iST2 := iST2 - 4;
                        cMSGErro := cMSGErro + 'Cancelamento não permitido' + #13;
                     end;
                  if iST2 >= 2 then
                     begin
                        iST2 := iST2 - 2;
                        cMSGErro := cMSGErro + 'CGC/IE do Proprietário não Programados' + #13;
                     end;
                  if iST2 >= 1 then
                     begin
                        iST2 := iST2 - 1;
                        cMSGErro := cMSGErro + 'Comando não executado' + #13;
                     end;
                  if ( cMSGErro <> '' ) then
                     begin
                        Bematech_FI_FinalizaModoTEF();
                        Application.MessageBox( pchar( cMSGErro ), 'Atenção', MB_IconError + MB_OK );
                        result := False;
                     end;
               end
            else
               result := True;
      end;
end;

function VerificaRetornoFuncaoImpressora_sweda( iRetorno: integer ): boolean;
var
   cMSGErro: string;
   iACK, iST1, iST2: integer;
begin
   iACK := 0; iST1 := 0; iST2 := 0;
   cMSGErro := '';
   result   := False;

   bcupomaberto := false;

   case iRetorno of
        0: cMSGErro := 'Erro de Comunicação !';
       -1: cMSGErro := 'Erro de execução na Função !';
       -2: cMSGErro := 'Parâmetro inválido na Função !';
       -3: cMSGErro := 'Alíquota não Programada !';
       -4: cMSGErro := 'Arquivo BEMAFI32.INI não Encontrado !';
       -5: cMSGErro := 'Erro ao abrir a Porta de Comunicação !';
       -6: cMSGErro := 'Impressora Desligada ou Cabo de Comunicação Desconectado !';
       -7: cMSGErro := 'Código do Banco não encontrado no arquivo BEMAFI32.INI !';
       -8: cMSGErro := 'Erro ao criar ou gravar arquivo STATUS.TXT ou RETORNO.TXT !';
      -27: cMSGErro := 'Status diferente de 6, 0, 0 !';
      -30: cMSGErro := 'Função incompatível com a impressora fiscal YANCO !';
   end;

   cMSGErro := '';
   if ( iRetorno = 1 ) then
      begin
         ECF_RetornoImpressora( iACK, iST1, iST2 );
         if ( iACK = 21 ) then
            begin
               ECF_FinalizaModoTEF();
               Application.MessageBox( 'A Impressora retornou NAK !' + #13 +
                                       'Erro de Protocolo de Comunicação !',
                                       'Atenção', MB_IconError + MB_OK );
               result := False;
            end
         else
            if ( iST1 <> 0 ) or ( iST2 <> 0 ) then
               begin

                  // Analisa ST1
                  if ( iST1 >= 128 ) then
                     begin
                        iST1 := iST1 - 128;
                        cMSGErro := cMSGErro + 'Fim de Papel' + #13;
                     end;
                  if ( iST1 >= 64 ) then
                     begin
                        iST1 := iST1 - 64;
                        cMSGErro := cMSGErro + 'Pouco Papel' + #13;
                     end;
                  if ( iST1 >= 32 ) then
                     begin
                        iST1 := iST1 - 32;
                        cMSGErro := cMSGErro + 'Erro no Relógio' + #13;
                     end;
                  if ( iST1 >= 16 ) then
                     begin
                        iST1 := iST1 - 16;
                        cMSGErro := cMSGErro + 'Impressora em Erro' + #13;
                     end;
                  if ( iST1 >= 8 ) then
                     begin
                        iST1 := iST1 - 8;
                        cMSGErro := cMSGErro + 'Primeiro Dado do Comando não foi ESC' + #13;
                     end;
                  if iST1 >= 4 then
                     begin
                        iST1 := iST1 - 4;
                        cMSGErro := cMSGErro + 'Comando Inexistente' + #13;
                     end;
                  if iST1 >= 2 then
                     begin
                        iST1 := iST1 - 2;
                        cMSGErro := cMSGErro + 'Cupom Fiscal Aberto' + #13;
                        showmessage(cMSGErro);

                        bcupomaberto := true;
                     end;
                  if iST1 >= 1 then
                     begin
                        iST1 := iST1 - 1;
                        cMSGErro := cMSGErro + 'Número de Parâmetros Inválidos' + #13;
                     end;

                  // Analisa ST2
                  if iST2 >= 128 then
                     begin
                        iST2 := iST2 - 128;
                        cMSGErro := cMSGErro + 'Tipo de Parâmetro de Comando Inválido' + #13;
                     end;
                  if iST2 >= 64 then
                     begin
                        iST2 := iST2 - 64;
                        cMSGErro := cMSGErro + 'Memória Fiscal Lotada' + #13;
                     end;
                  if iST2 >= 32 then
                     begin
                        iST2 := iST2 - 32;
                        cMSGErro := cMSGErro + 'Erro na CMOS' + #13;
                     end;
                  if iST2 >= 16 then
                     begin
                        iST2 := iST2 - 16;
                        cMSGErro := cMSGErro + 'Alíquota não Programada' + #13;
                     end;
                  if iST2 >= 8 then
                     begin
                        iST2 := iST2 - 8;
                        cMSGErro := cMSGErro + 'Capacidade de Alíquota Programáveis Lotada' + #13;
                     end;
                  if iST2 >= 4 then
                     begin
                        iST2 := iST2 - 4;
                        cMSGErro := cMSGErro + 'Cancelamento não permitido' + #13;
                     end;
                  if iST2 >= 2 then
                     begin
                        iST2 := iST2 - 2;
                        cMSGErro := cMSGErro + 'CGC/IE do Proprietário não Programados' + #13;
                     end;
                  if iST2 >= 1 then
                     begin
                        iST2 := iST2 - 1;
                        cMSGErro := cMSGErro + 'Comando não executado' + #13;
                        result := false;
                     end;
                  if ( cMSGErro <> '' ) then
                     begin
                        Bematech_FI_FinalizaModoTEF();
                        Application.MessageBox( pchar( cMSGErro ), 'Atenção', MB_IconError + MB_OK );
                        result := False;
                     end;
               end
            else
               result := True;
      end;
end;

Procedure Retorno_Impressora_bema;
  Var iACK, iST1, iST2: Integer;
Begin
  iACK := 0; iST1 := 0; iST2 := 0;
  iResposta := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);

  If iACK = 6 then
  BEGIN

    // Verifica ST1
    IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; showmessage('Fim do Papel')  END;
    IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  showmessage('Pouco Papel') END;
    IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  showmessage('Erro no Relógio') END;
    IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  showmessage('Impressora em Erro') END;
    IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   showmessage('CMD não iniciado com ESC') END;
    IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   showmessage('Comando Inexistente') END;
    IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   showmessage('Cupom Aberto') END;
    IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   showmessage('N.o de Parâmetro Inválido') END;

    // Verifica ST2
    IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; showmessage('Tipo de Parâmetro Inválido') END;
    IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  showmessage('Memória Fiscal Lotada') END;
    IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  showmessage('CMOS não Volátil') END;
    IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  showmessage('Alíquota Não Pogramada') END;
    IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   showmessage('Alíquotas Lotadas')END;
    IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   showmessage('Cancelamento não Permitido') END;
    IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   showmessage('CNPJ/IE não Programados') END;
    IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   showmessage('Comando não Executado') END;
  End;

  If iACK = 21 Then
  BEGIN
    showmessage( 'Atenção!!!' + #13 + #10 +
                 'A Impressora retornou erro não catalogado. O programa será abortado.');
    Application.Terminate;
    Exit;
  End;
End;

Procedure Analisa_Resposta_bema();
Begin
  if iResposta = 0 then
    begin
      Application.MessageBox( 'Erro de Comunicação !', 'Erro',MB_IconError + MB_OK);
    end;
  //endi

  If iResposta = -1 Then
    Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro', MB_IconError + MB_OK);
  //endi

  if iResposta = -2  then
    Application.MessageBox( 'Parâmetro Inválido !', 'Erro',MB_IconError + MB_OK);
  //endi

  if iResposta = -3  then
    Application.MessageBox( 'Alíquota não programada !', 'Atenção',MB_IconInformation + MB_OK);
  //endi

  If iResposta = -4 Then
    Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi

  If iResposta = -5 Then
     begin
       //Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro', MB_IconError + MB_OK);
       showmessage('Problema de conexão com impressora fiscal,'+#13+' esse programa será finalizado');
       iaborta := 1;
     end;
  //endi

  If iResposta = -6 Then
    Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  If iResposta = -7 Then
    Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  If iResposta = -8 Then
    Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK);
  //endi
  if iResposta = -18 then
    Application.MessageBox( 'Não foi possível abrir arquivo INTPOS.001 !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -19 then
    Application.MessageBox( 'Parâmetro diferentes !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -20 then
    Application.MessageBox( 'Transação cancelada pelo Operador !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -21 then
    Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -22 then
    Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -23 then
    Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -24 then
    Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -25 then
    Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -26 then
    Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
  if iResposta = -28 then
    Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi
End;

procedure Analisa_resposta_sweda();
begin

  if iResposta = 0 then
    begin
      begin
        Application.MessageBox( 'Erro de Comunicação !', 'Erro',MB_IconError + MB_OK);
        iaborta := 1;
      end;
    end;
  //endi

  if iResposta = -2  then
    Application.MessageBox( 'Parâmetro Inválido !', 'Erro',MB_IconError + MB_OK);
  //endi

  If iResposta = -6 Then
    Application.MessageBox( 'O mês selecionado ainda não está terminado', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi

  If iResposta = -8 Then
    Application.MessageBox( 'Erro ao criar ou gravar no arquivo RETORNO.TXT.', 'Erro',
                                MB_IconError + MB_OK);
  //endi

  if iResposta = -11 then
    Application.MessageBox( 'Existe um documento aberto !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi

  if iResposta = -24 then
    Application.MessageBox( 'Forma de pagamento não programada.', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi

  if iResposta = -27 then
    Application.MessageBox( 'Status do ECF diferente de 6,0,0,0 (ACK,ST1,ST2 e ST3)', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi

  if iResposta = -30 then
    Application.MessageBox( 'Função não compatível com a impressora !', 'Atenção',
                                MB_IconInformation + MB_OK);
  //endi




  //If iResposta = -1 Then
  //  Application.MessageBox( 'Erro de Execução na Função. Verifique!', 'Erro', MB_IconError + MB_OK);
  //endi

  //if iResposta = -3  then
  //  Application.MessageBox( 'Alíquota não programada !', 'Atenção',MB_IconInformation + MB_OK);
  //endi

  //If iResposta = -4 Then
  //  Application.MessageBox( 'Arquivo BemaFI32.INI não encontrado. Verifique!', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi

  //If iResposta = -5 Then
  //   begin
       //Application.MessageBox( 'Erro ao Abrir a Porta de Comunicação', 'Erro', MB_IconError + MB_OK);
 //      showmessage('Problema de conexão com impressora fiscal,'+#13+' esse programa será finalizado');
 //      iaborta := 1;
 //    end;
  //endi

 // If iResposta = -7 Then
 //   Application.MessageBox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini', 'Atenção',
 //                               MB_IconInformation + MB_OK);
  //endi

  //if iResposta = -21 then
  //  Application.MessageBox( 'A Transação não foi aprovada !', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi
  //if iResposta = -22 then
  //  Application.MessageBox( 'Não foi possível terminal a Impressão !', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi
  //if iResposta = -23 then
  //  Application.MessageBox( 'Não foi possível terminal a Operação !', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi
  //if iResposta = -25 then
  //  Application.MessageBox( 'Totalizador não fiscal não programado.', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi
  //if iResposta = -26 then
  //  Application.MessageBox( 'Transação já Efetuada !', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi
  //if iResposta = -28 then
  //  Application.MessageBox( 'Não há Informações para serem Impressas !', 'Atenção',
  //                              MB_IconInformation + MB_OK);
  //endi

  //if iResposta <> 1 then
  //  begin
  //    Application.MessageBox( 'Houve um erro ao acionar impressora !', 'Erro',MB_IconError + MB_OK);
  //    iaborta := 1;
  //  end;
  //endi


end;

procedure Retorno_Impressora_sweda;
  Var iACK, iST1, iST2: Integer;
Begin
  iACK := 0; iST1 := 0; iST2 := 0;
  iResposta := ECF_RetornoImpressora(iACK, iST1, iST2);

  If iACK = 6 then
  BEGIN

    // Verifica ST1
    IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; showmessage('Fim do Papel')  END;
    IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  showmessage('Pouco Papel') END;
    IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  showmessage('Erro no Relógio') END;
    IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  showmessage('Impressora em Erro') END;
    IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   showmessage('Erro no envio do comando') END;
    IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   showmessage('Comando Inexistente') END;
    IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   showmessage('Cupom Aberto') END;
    IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   showmessage('N.o de Parâmetro Inválido') END;

    // Verifica ST2
    IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; showmessage('Tipo de Comando Inválido') END;
    IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  showmessage('Memória Fiscal Lotada') END;
    IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  showmessage('CMOS não Volátil') END;
    IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  showmessage('Alíquota Não Pogramada') END;
    IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   showmessage('Alíquotas Lotadas')END;
    IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   showmessage('Cancelamento não Permitido') END;
    IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   showmessage('CNPJ/IE não Programados') END;
    IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   showmessage('Comando não Executado') END;
  End;

  If iACK <> 6 Then
  BEGIN
    showmessage( 'Atenção!!!' + #13 + #10 +
                 'A Impressora retornou erro não catalogado. O programa será abortado.');
    Application.Terminate;
    Exit;
  End;
End;





end.
