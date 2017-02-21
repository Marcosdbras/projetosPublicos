{ Projeto     : Comercio Plus+ 7
  Unit        : ECF
  Vers�o      : 1.0
  Fun��o      : Unifica fun��es de todas as ecf's
  Autor       : Eleno B. Oliveira
  Data        : 28/11/2006
}



unit ecf;

interface

uses
  Windows,
  SysUtils,
  Controls,
  messages,
  Forms,
  {$IFDEF VER130}
    FileCtrl,
  {$ELSE}
    IdGlobal,
    DateUtils,
  {$ENDIF}
  Dialogs;

var
  com,a:integer;
  Resp:String;
  Retorno_sweda:Integer;
  Comando: array[0..512] of Char;
  Status:array[0..512] of Char;
  Extensao:LongInt;
  RETORNO : INTEGER;

  { Declaracao da DLL Sweda swecf}


  function  ECFOpen(numero:longint;tempo:longint;log:longint;mostra:longint):integer; stdcall; external 'SWECF.DLL' index 1;
  procedure ECFClose; stdcall; external 'SWECF.DLL' index 2;
  function  ECFWrite(Comando:PChar):longint; stdcall; external 'SWECF.DLL' index 3;
  Function  ECFRead(Status:PChar;Extensao:longint):Longint;stdcall; external 'SWECF.DLL' index 4;



{Declaracao da Dll Integradora Daruma32.dll}

// M�todos do Cupom Fiscal

function Daruma_FI_AbreCupom( CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; Tipo_de_Quantidade: String; Quantidade: String; Casas_Decimais: Integer; Valor_Unitario: String; Tipo_de_Desconto: String; Valor_do_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemTresDecimais( Codigo: String; Descricao: String; Aliquota: String; Quantidade: String;  Valor_Unitario: String; Acrescimo_ou_Desconto: String; Percentual_Acrescimo_ou_Desconto : String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaCupomResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamentoDescricaoForma( Descricao_da_Forma_Pagamento: string; Valor_da_Forma_Pagamento: string; Texto_Livre: string ): integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IdentificaConsumidor( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaCupom( Forma_de_Pagamento: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_Pago: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemAnterior: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico( Numero_Item: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AumentaDescricaoItem( Descricao_Extendida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaUnidadeMedida( Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EmitirCupomAdicional: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EstornoFormasPagamento( Forma_de_Origem: String; Nova_Forma: String; Valor_Total_Pago: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos para Recebimentos e Relat�rios

function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AbreRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EnviarTextoCNF( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RecebimentoNaoFiscal( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FundoCaixa( Valor_do_Fundo_Caixa: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ReducaoZAjustaDataHora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos Gaveta, Autentica e Outras

function Daruma_FI_VerificaDocAutenticacao: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_Autenticacao: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_Autenticacao';
function Daruma_FI_AutenticacaoStr( Autenticacao_Str :string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_VerificaEstadoGaveta( Var Estado_Gaveta: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoGavetaStr( Estado_Gaveta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AcionaGaveta: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_AbrePortaSerial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaPortaSerial: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_AberturaDoDia( Valor_do_Suprimento: string; Forma_de_Pagamento: string ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechamentoDoDia: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_FechamentoDoDia';
function Daruma_FI_ImprimeConfiguracoesImpressora: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_RegistraNumeroSerie: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_VerificaNumeroSerie: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_RetornaSerialCriptografado( SerialCriptografado :string; NumeroSerial: string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_ConfiguraHorarioVerao( DataEntrada: string; DataSaida: string ; controle: string): Integer; StdCall; External 'Daruma32.dll' ;



// M�todos Prog e Config

function Daruma_FI_ProgramaAliquota( Valor_Aliquota: String; Tipo_Aliquota: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice_do_Totalizador: Integer; Nome_do_Totalizador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaFormasPagamento( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaOperador( Nome_do_Operador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaArredondamento: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaTruncamento: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_ProgramaTruncamento';
function Daruma_FI_LinhasEntreCupons( Linhas_Entre_Cupons: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EspacoEntreLinhas( Espaco_Entre_Linhas: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaHorarioVerao: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EqualizaFormasPgto: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaVinculados( Vinculado: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgFormasPagtoSemVincular( Descricao_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';

// M�todos de Configura��o e Registry

function Daruma_FI_CfgFechaAutomaticoCupom( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgRedZAutomatico( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgImpEstGavVendas( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgLeituraXAuto( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgCalcArredondamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgHorarioVerao( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgSensorAut( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgCupomAdicional( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgPermMensPromCNF( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgEspacamentoCupons( DistanciaCupons: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgHoraMinReducaoZ( Hora_Min_para_ReducaoZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgLimiarNearEnd( NumeroLinhas: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_Registry_AlteraRegistry( Chave: String; ValorChave: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Porta( Porta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Path( Path: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Status( Status: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_StatusFuncao( StatusFuncao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Retorno( Retorno: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ControlePorta( ControlePorta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ModoGaveta( ModoGaveta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Log( Log: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_NomeLog( NomeLog: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Separador( Separador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_SeparaMsgPromo( SeparaMsgPromo: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ZAutomatica( ZAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_XAutomatica( XAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_VendeItemUmaLinha( VendeItemUmaLinha: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_Default: Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_RetornaValor( Produto: String; Chave: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TerminalServer( TerminalServer: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ErroExtendidoOk( ValorErro: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_AbrirDiaFiscal( AbrirDiaFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_VendaAutomatica( VendaAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_IgnorarPoucoPapel( IgnorarPoucoPapel: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ImprimeRegistry( Produto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TEF_NumeroLinhasImpressao( NumeroLinhasImpressao: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_MFD_ArredondaValor( Valor: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_MFD_ArredondaQuantidade( Quantidade: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_MFD_ProgramarSinalSonoro( NomeChave: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_MFD_LeituraMFCompleta( Valor: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_NumeroSerieNaoFormatado( Formatado: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_CupomAdicionalDll( AdicionalDll: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_CupomAdicionalDllConfig( ConfigAdicionalDll: String ): Integer; StdCall; External 'Daruma32.dll'


// M�todos de Informa��es e Status

function Daruma_FI_StatusCupomFiscal( StatusCupomFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusRelatorioGerencial( StatusRelGerencial: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusComprovanteNaoFiscalVinculado( StatusCNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusComprovanteNaoFiscalNaoVinculado( StatusCNFNV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaImpressoraLigada: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscaisEx( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTruncamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaStatusCheque( StatusCheque: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaModeloECF: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaDescricaoFormasPagamento( Descricao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaXPendente( XPendente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaZPendente( ZPendente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaDiaAberto( DiaAberto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaHorarioVerao( HoraioVerao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ClicheProprietarioEx( ClicheEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_COO(Inicial: String; Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_MinutosLigada( Minutos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataMovimento( Data: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_VendaBruta( VendaBruta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendaBrutaAcumulada( VendaBrutaAcumulada: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Descontos( ValorDescontos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SaldoAPagar( SaldoAPagar: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Troco( Troco: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UltimaFormaPagamento( Descricao_da_Forma: String; Valor_da_Forma: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TipoUltimoDocumento(TipoUltimoDoc: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI_MapaResumo: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_MapaResumo';
function Daruma_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Analitico';
function Daruma_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Mestre';
function Daruma_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FlagsFiscaisStr(Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_PalavraStatus( PalavraStatus: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_PalavraStatusBinario( PalavraStatusBinario: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaErroExtendido( ErroExtendido: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaAcrescimoNF( AcrescimoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCFCancelados( CFCancelados: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCNFCancelados( CNFCancelados: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCLX(CLX: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCNFNV(CNFNV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCNFV(CNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaDescricaoCNFV(CNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCRO(CRO: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCRZ(CRZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCRZRestante( CRZRestante: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaCancelamentoNF( CancelamentoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaDescontoNF( DescontoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaGNF( GNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTempoImprimindo( TempoImprimindo: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTempoLigado( TempoLigado: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTotalPagamentos( TotalPagamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaTroco( Troco: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaValorComprovanteNaoFiscal( Indice_CNF: String; Informacao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaIndiceComprovanteNaoFiscal( DescricaoRegistrCNF: String; RefIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaRegistradoresNaoFiscais( RegistrNaoFiscais: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaRegistradoresFiscais( RegistrFiscais: String ): Integer; StdCall; External 'Daruma32.dll';


// M�todos para TEF

function Daruma_TEF_EsperarArquivo( Path_Resp_TEF: String; Tempo_Espera: String; Travar: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TEF_ImprimirResposta( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_ImprimirRespostaCartao( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_FechaRelatorio: Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_SetFocus( TituloJanela: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_TravarTeclado( Travar: String ): Integer; StdCall; External 'Daruma32.dll'


// M�todos para FS2000
function Daruma_Registry_FS2000_CupomAdicional( CupomAdicional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_FS2000_TempoEsperaCheque( TempodeEspera: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_DescontoSobreItemVendido( NumeroItem: String; TipoDesconto: String; ValorDesconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_AcrescimosICMSISS( AcrescICMS: String; AcrescISS: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_CancelamentosICMSISS( CancelICMS: String; CancelISS: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_DescontosICMSISS( DescICMS: String; DescISS: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_LeituraInformacaoUltimosCNF( UltimosCNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_LeituraInformacaoUltimoDoc( TipoUltimoDoc: String; ValorUltimoDoc: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_VerificaRelatorioGerencial( Gerencial: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_CriaRelatorioGerencial( NomeGerencial: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_AbreRelatorioGerencial( Indice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_CancelamentoCNFV( COO_CNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_SegundaViaCNFVinculado: Integer; StdCall; External 'Daruma32.dll';

function Daruma_FI2000_StatusCheque( StatusCheque: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_ImprimirCheque( Banco: String; Cidade: String; Data: String; Favorecido: String; Valor: String; PosicaoCheque: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_ImprimirVersoCheque( VersoCheque: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_LiberarCheque: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_LeituraCodigoMICR( CodigoMICR: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_CancelarCheque: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_LeituraTabelaCheque( TabelaCheque: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_CarregarCheque(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI2000_CorrigirGeometriaCheque( NumeroBanco: String; GeometriaCheque: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_StatusCupomFiscal( StatusCupomFiscal_Mfd: String ): Integer; StdCall; External 'Daruma32.dll';

// Metodos exclusivos para MFD

function Daruma_FIMFD_ImprimeCodigoBarras( Tipo: String; Codigo: String; Largura: String; Altura: String; Posicao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RetornaInformacao( Indice: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_DownloadDaMFD(CoInicial: String; CoFinal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_CasasDecimaisProgramada( Quantidade: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_IndicePrimeiroVinculado( Indice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_TerminaFechamentoCupomCodigoBarras( Mensagem: String; Tipo: String ;Codigo: String ; Largura: String ; Altura: String ;Posicao: String  ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_SinalSonoro( NumeroBeeps: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_AbreRelatorioGerencial( NomeRelatorio: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_VerificaRelatoriosGerenciais( Relatorios: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_ProgramaRelatoriosGerenciais( NomeRelatorio: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_EmitirCupomAdicional(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_AcionarGuilhotina: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIMFD_EqualizarVelocidade(Valor: String ): Integer; StdCall; External 'Daruma32.dll';



//Metodos FIB

function Daruma_FIB_AbreBilhetePassagem (Origem: String; Destino: String; UF: String; Percurso:String; Prestadora:  String; Plataforma:String; Poltrona: String; Modalidade: String; Categoria:  String; DataEmbarque:  String; PassRg: String; PassNome: String; PassEndereco: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIB_VendeItem  (Descricao: String; St: String; Valor:String;  DescontoAcrescimo: String; TipoDesconto: String; ValorDesconto: String) : Integer; StdCall; External 'Daruma32.dll';


// Metodos Para TA1000

function Daruma_Registry_TA1000_Porta( Porta: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_PathProdutos( PathProdutos: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_PathUsuarios( PathUsuarios: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_NumeroItensEnviados( NumeroItensEnviados: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_PathRelatorios( PathRelatorios: String): Integer; StdCall; External 'Daruma32.dll';

function Daruma_TA1000_CadastrarProdutos(Descricao: String; Codigo: String; DecimaisPreco: String; DecimaisQuantidade: String; Preco: String; DescontoAcrescimo: String; ValorDescontoAcrescimo: String; UnidadeMedida: String;Aliquota: String; ProximoProduto: String; ProdutoAnterior: String; Estoque: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_LerProdutos( Indice: integer; Descricao: String; Codigo: String; DecimaisPreco: String; DecimaisQuantidade: String; Preco: String; DescontoAcrescimo: String; ValorDescontoAcrescimo: String; UnidadeMedida: String; Aliquota: String; ProximoProduto: String; ProdutoAnterior: String; Estoque: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ConsultarProdutos( Descricao: String; Codigo: String; DecimaisPreco: String; DecimaisQuantidade: String; Preco: String; DescontoAcrescimo: String; ValorDescontoAcrescimo: String; UnidadeMedida: String; Aliquota: String; ProximoProduto: String; ProdutoAnterior: String; Estoque: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_AlterarProdutos(Codigo_Consultar: String; Descricao: String; Codigo: String; DecimaisPreco: String; DecimaisQuantidade: String; Preco: String; DescontoAcrescimo: String; ValorDescontoAcrescimo: String; UnidadeMedida: String; Aliquota: String; ProximoProduto: String; ProdutoAnterior: String; Estoque: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_EliminarProdutos(Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_EnviarBancoProdutos(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ReceberBancoProdutos(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ReceberProdutosVendidos(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ZerarProdutos(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ZerarProdutosVendidos(): Integer; StdCall; External 'Daruma32.dll';

function Daruma_TA1000_EnviarBancoUsuarios(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ReceberBancoUsuarios(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ZerarUsuarios(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_CadastrarUsuarios(Nome: String; CPF: String; CodigoConvenio: String; CodigoUsuario: String; UsuarioAnterior: String; ProximoUsuario: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ConsultarUsuarios(Codigo_Consultar : String; Nome: String; CPF: String; CodigoConvenio: String; CodigoUsuario: String; UsuarioAnterior: String; ProximoUsuario: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_AlterarUsuarios(Codigo_Consultar : String; Nome: String; CPF: String; CodigoConvenio: String; CodigoUsuario: String; UsuarioAnterior: String; ProximoUsuario: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_EliminarUsuarios(Codigo: String): Integer; StdCall; External 'Daruma32.dll';

function Daruma_TA1000_LeStatusTransferencia(): Integer; StdCall; External 'Daruma32.dll';

// Metodos para Impressora Restaurante

function Daruma_FIR_ProgramaAliquota( Valor_Aliquota: String; Tipo_Aliquota: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NomeiaTotalizadorNaoSujeitoIcms( Indice_do_Totalizador: Integer; Nome_do_Totalizador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaFormasPagamento( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaRelatorioGerencial( Titulo_Relatorio_Gerencial: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaOperador( Nome_do_Operador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaArredondamento: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaTruncamento: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_ProgramaTruncamento';
function Daruma_FIR_LinhasEntreCupons( Linhas_Entre_Cupons: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EspacoEntreLinhas( Espaco_Entre_Linhas: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaHorarioVerao: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EqualizaFormasPgto: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaVinculados( Vinculado: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgFormasPagtoSemVincular( Descricao_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ProgramaMsgTaxaServico( Mensagem_da_Taxa_de_Servico: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AdicionaProdutoCardapio( Codigo: String; Valor_Unitario: String; Aliquota: String; Descricao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CfgEspacamentoCupons( DistanciaCupons: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CfgHoraMinReducaoZ( Hora_Min_para_ReducaoZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CfgLimiarNearEnd( NumeroLinhas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CfgHorarioVerao( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CfgLegProdutos( Flag: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FIR_AbreCupom( Numero_da_Mesa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AbreCupomRestaurante( Numero_da_Mesa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AbreCupomBalcao: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VendeItem( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; Valor_Unitario: String; Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VendeItemBalcao( Codigo: String; Quantidade: String; Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RegistrarVenda( Numero_da_Mesa: String; Codigo: String; Quantidade: String; Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RegistroVendaSerial( Numero_da_Mesa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FechaCupomRestauranteResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_IniciaFechamentoCupomComServico( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String; Indicador_da_Operacao: String; Taxa_de_Servico: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EfetuaFormaPagamentoDescricaoForma( Descricao_da_Forma_Pagamento: string; Valor_da_Forma_Pagamento: string; Texto_Livre: string ): integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_IdentificaConsumidor( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FechaCupomResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_TerminaFechamentoCupomID( Mensagem_Promocional: String; Nome_do_Cliente: String; Endereco_do_Cliente: String; Documento_do_Cliente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FechaCupomRestaurante( Forma_de_Pagamento: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_Pago: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CancelaItem( Mesa: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; Valor_Unitario: String; Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CancelaItemBalcao( Codigo_do_Item: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CancelarVenda( Numero_da_Mesa: String; Codigo: String; Quantidade: String; Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_TranferirVenda( Numero_da_Mesa_Origem: String; Numero_da_Mesa_Destino: String; Codigo: String; Quantidade: String; Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_TransfereItem( Mesa_Origem: String; Mesa_Destino: String; Codigo: String; Descricao: String; Aliquota: String; Quantidade: String; Valor_Unitario: String; Acrescimo_ou_Desconto: String; Desconto_Percentual: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_TranferirMesa( Mesa_Origem: String; Mesa_Destino: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ConferenciaMesa( Numero_da_Mesa: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LimparMesa( Numero_da_Mesa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ImprimePrimeiroCupomDividido( Numero_da_Mesa: String; Quantidade_Divisoria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RestanteCupomDividido: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AumentaDescricaoItem( Descricao_Extendida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_UsaUnidadeMedida( Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EmitirCupomAdicional: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EstornoFormasPagamento( Forma_de_Origem: String; Nova_Forma: String; Valor_Total_Pago: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FIR_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AbreRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EnviarTextoCNF( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RecebimentoNaoFiscal( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AbreRecebimentoNaoFiscal( Indice_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FundoCaixa( Valor_do_Fundo_Caixa: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIR_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ReducaoZAjustaDataHora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RelatorioMesasAbertas: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIR_RelatorioMesasAbertasSerial: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIR_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LeituraMemoriaTrabalho: Integer; StdCall; External 'Daruma32.dll' ;

function Daruma_FIR_StatusCupomFiscal( StatusCupomFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_StatusRelatorioGerencial( StatusRelGerencial: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_StatusComprovanteNaoFiscalVinculado( StatusCNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_StatusComprovanteNaoFiscalNaoVinculado( StatusCNFNV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaImpressoraLigada: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaTotalizadoresNaoFiscaisEx( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaTruncamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaStatusCheque( StatusCheque: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaModeloECF: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaDescricaoFormasPagamento( Descricao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaXPendente( XPendente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaZPendente( ZPendente: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaDiaAberto( DiaAberto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaHorarioVerao( HoraioVerao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FIR_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ClicheProprietarioEx( ClicheEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_COO(Inicial: String; Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_MinutosLigada( Minutos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_DataMovimento( Data: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FIR_VendaBruta( VendaBruta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_Descontos( ValorDescontos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_SubTotal( SubTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ValorPagoUltimoCupomFormatado( ValorCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_UltimoItemVendidoValor( NumeroItem: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_UltimaFormaPagamento( Descricao_da_Forma: String; Valor_da_Forma: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_TipoUltimoDocumento(TipoUltimoDoc: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FIR_MapaResumo: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_MapaResumo';
function Daruma_FIR_RelatorioTipo60Analitico: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Analitico';
function Daruma_FIR_RelatorioTipo60Mestre: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Mestre';
function Daruma_FIR_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_PalavraStatus( PalavraStatus: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_PalavraStatusBinario( PalavraStatusBinario: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaErroExtendido( ErroExtendido: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaAcrescimoNF( AcrescimoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCFCancelados( CFCancelados: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCNFCancelados( CNFCancelados: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCLX(CLX: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCNFNV(CNFNV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCNFV(CNFV: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCRO(CRO: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCRZ(CRZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCRZRestante( CRZRestante: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaCancelamentoNF( CancelamentoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaDescontoNF( DescontoNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaGNF( GNF: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaTempoImprimindo( TempoImprimindo: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaTempoLigado( TempoLigado: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaTotalPagamentos( TotalPagamentos: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaTroco( Troco: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaZeros( Zeros: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaValorComprovanteNaoFiscal( Indice_CNF: String; Informacao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaIndiceComprovanteNaoFiscal( DescricaoRegistrCNF: String; RefIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaRegistradoresNaoFiscais( RegistrNaoFiscais: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_RetornaRegistradoresFiscais( RegistrFiscais: String ): Integer; StdCall; External 'Daruma32.dll';

function Daruma_FIR_VerificaDocAutenticacao: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_Autenticacao: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_Autenticacao';
function Daruma_FIR_AutenticacaoStr( Autenticacao_Str :string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_VerificaEstadoGaveta( Var Estado_Gaveta: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_VerificaEstadoGavetaStr( Estado_Gaveta: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AcionaGaveta: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_AbrePortaSerial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FechaPortaSerial: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_AberturaDoDia( Valor_do_Suprimento: string; Forma_de_Pagamento: string ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_FechamentoDoDia: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_FechamentoDoDia';
function Daruma_FIR_ImprimeConfiguracoesImpressora: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_RegistraNumeroSerie: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIR_VerificaNumeroSerie: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIR_RetornaSerialCriptografado( SerialCriptografado :string; NumeroSerial: string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_ConfiguraHorarioVerao( DataEntrada: string; DataSaida: string ; controle: string): Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FIR_ZeraCardapio: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_ImprimeCardapio: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIR_CardapioSerial: Integer; StdCall; External 'Daruma32.dll'



{===============================================================================
********************************************************************************

                      DECLARA��O DAS FUN��ES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

Procedure Analisa_iRetorno;
Procedure Retorno_Impressora;


// Fun��es de Inicializa��o

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

// Fun��es do Cupom Fiscal

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

// Fun��es dos Relat�rios Fiscais

function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';

// Fun��es das Opera��es N�o Fiscais

function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
//function Bematech_FI_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Informa��es da Impressora 

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

// Fun��es de Autentica��o e Gaveta de Dinheiro 

function Bematech_FI_Autenticacao:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_Autenticacao'; 
function Bematech_FI_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta'; 
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es para a Impressora Restaurante 

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

// Fun��o para a Impressora Bilhete de Passagem

function Bematech_FI_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'BEMAFI32.DLL'; 

// Fun��es de Impress�o de Cheques 

function Bematech_FI_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_CancelaImpressaoCheque: Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'BEMAFI32.DLL'; 
function Bematech_FI_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ImprimeCopiaCheque: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_ImprimeCopiaCheque';

// Outras Fun��es 

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

// Fun��es da Impressora Fiscal MFD

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

// Fun��es dispon�veis somente na impressora fiscal MP-2000 TH FI vers�o 01.00.02
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

// Fun��es para a impress�o de C�digo de Barras

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









// SWEDA -------------@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@

{


function ECF_AbrePortaSerial: Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaPortaSerial: Integer; StdCall; External 'CONVECF.dll';

// Fun��es do Cupom Fiscal

function ECF_LeituraX: Integer; StdCall; External 'CONVECF.dll';
function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.dll';
                         //function ECF_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.dll';

   function ECF_EfetuaFormaPagamento(FormaPag : String; ValorFormPag : String ): Integer; StdCall; External 'CONVECF.dll';
   function ECF_TerminaFechamentoCupom(Mensagem : String): Integer; StdCall; External 'CONVECF.dll';
  // function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.dll';

// Fun��es das Opera��es N�o Fiscais

function ECF_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'CONVECF.dll';
function ECF_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'CONVECF.dll';
function ECF_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'CONVECF.dll';
function ECF_ZAUTO(zauto: String): Integer; StdCall; External 'CONVECF.dll';
function ECF_RelatorioTipo60Analitico(): Integer; StdCall; External 'CONVECF.dll';
function ECF_RelatorioTipo60Mestre(): Integer; StdCall; External 'CONVECF.dll';
function ECF_NumeroSerie(NumeroSerie:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_NumeroCaixa(NumeroCaixa:string ): Integer; StdCall; External 'CONVECF.dll';
function ECF_ReducaoZ(Data:String;Hora:String): Integer; StdCall; External 'CONVECF.dll';
function ECF_LeituraMemoriaFiscalData(DataInicial:string;DataFinal:string): Integer; StdCall; External 'CONVECF.dll';
function ECF_Sangria(Valor:string): Integer; StdCall; External 'CONVECF.dll';

}

function ECF_AlteraSimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaHorarioVerao: Integer; StdCall; External 'CONVECF.DLL';
function ECF_NomeiaDepartamento( Indice: Integer; Departamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaArredondamento: Integer; StdCall; External 'CONVECF.DLL';
function ECF_LinhasEntreCupons( Linhas: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EspacoEntreLinhas( Dots: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ForcaImpactoAgulhas( ForcaImpacto: Integer ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es do Cupom Fiscal

function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaItemAnterior: Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaCupom( FormaPagamento: String; AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String; ValorPago: String; Mensagem: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ResetaImpressora: Integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamentoDescricaoForma( FormaPagamento: string; ValorFormaPagamento: string; DescricaoFormaPagto: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EstornoFormasPagamento( FormaOrigem: String; FormaDestino: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UsaUnidadeMedida( UnidadeMedida: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AumentaDescricaoItem( Descricao: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamentoImpAntiga( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es dos Relat�rios Fiscais

function ECF_LeituraX: Integer; StdCall; External 'CONVECF.DLL' ;
function ECF_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
//function ECF_RelatorioGerencialTEF( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaRelatorioGerencial: Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es das Opera��es N�o Fiscais

function ECF_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
//function ECF_UsaComprovanteNaoFiscalVinculadoTEF( Texto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'CONVECF.DLL';
function ECF_Sangria( Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es de Informa��es da Impressora

function ECF_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotal( SubTotal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraXSerial: Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoFirmware( VersaoFirmware: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CGC_IE( CGC: String; IE: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Cancelamentos( ValorCancelamentos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Descontos( ValorDescontos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCuponsCancelados( NumeroCancelamentos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroIntervencoes( NumeroIntervencoes: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroReducoes( NumeroReducoes: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSubstituicoesProprietario( NumeroSubstituicoes: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UltimoItemVendido( NumeroItem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ClicheProprietario( Cliche: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroLoja( NumeroLoja: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SimboloMoeda( SimboloMoeda: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MinutosLigada( Minutos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MinutosImprimindo( Minutos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaModoOperacao( Modo: string ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEpromConectada( Flag: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorPagoUltimoCupom( ValorCupom: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadoresTotalizadoresNaoFiscais( Contadores: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataMovimento( Data: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTruncamento( Flag: string ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_Acrescimos( ValorAcrescimos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorBilhetePassagem( ContadorPassagem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFormasPagamento( Formas: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRecebimentoNaoFiscal( Recebimentos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaDepartamentos( Departamentos: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTipoImpressora( Var TipoImpressora: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresParciais( Totalizadores: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DadosUltimaReducao( DadosReducao: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MonitoramentoPapel( Var Linhas: Integer): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaIndiceAliquotasIss( Flag: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorFormaPagamento( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorTotalizadorNaoFiscal( Totalizador: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es de Autentica��o e Gaveta de Dinheiro

function ECF_Autenticacao:Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_Autenticacao';
function ECF_ProgramaCaracterAutenticacao( Parametros: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AcionaGaveta:Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_AcionaGaveta';
function ECF_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreBilhetePassagem( ImprimeValorFinal: string; ImprimeEnfatizado: string; Embarque: string; Destino: string; Linha: string; Prefixo: string; Agente: string; Agencia: string; Data: string; Hora: string; Poltrona: string; Plataforma: string ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es de Impress�o de Cheques

function ECF_ProgramaMoedaSingular( MoedaSingular: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaMoedaPlural( MoedaPlural: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaImpressaoCheque: Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaStatusCheque( Var StatusCheque: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ImprimeCheque( Banco: String; Valor: String; Favorecido: String; Cidade: String; Data: String; Mensagem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_IncluiCidadeFavorecido( Cidade: String; Favorecido: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ImprimeCopiaCheque: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_ImprimeCopiaCheque';

// Outras Fun��es

function ECF_AbrePortaSerial: Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaPortaSerial: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_FechaPortaSerial';
function ECF_MapaResumo:Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_MapaResumo';
function ECF_AberturaDoDia( ValorCompra: string; FormaPagamento: string ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechamentoDoDia: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_FechamentoDoDia';
function ECF_ImprimeConfiguracoesImpressora:Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_ImprimeConfiguracoesImpressora';
function ECF_ImprimeDepartamentos: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_ImprimeDepartamentos';
function ECF_RelatorioTipo60Analitico: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Analitico';
function ECF_RelatorioTipo60Mestre: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60Mestre';
function ECF_VerificaImpressoraLigada: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_VerificaImpressoraLigada';
//function ECF_DadosSintegra( DataInicial: string; DataFinal: string ): integer; StdCall; External 'CONVECF.DLL';

// Fun��es da Impressora Fiscal MFD

function ECF_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaCupomMFD(CGC, Nome, Endereco: string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamentoMFD(FormaPagamento, ValorFormaPagamento, Parcelas, DescricaoFormaPagto: string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CupomAdicionalMFD(): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AcrescimoDescontoItemMFD (Item, AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimoDesconto: string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NomeiaRelatorioGerencialMFD (Indice, Descricao : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AutenticacaoMFD(Linhas, Texto : string) : Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreComprovanteNaoFiscalVinculadoMFD(FormaPagamento, Valor, NumeroCupom, CGC, nome, Endereco : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ReimpressaoNaoFiscalVinculadoMFD() : Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaRecebimentoNaoFiscalMFD(IndiceTotalizador, ValorRecebimento : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoCupomMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoRecebimentoNaoFiscalMFD(AcrescimoDesconto,TipoAcrescimoDesconto, ValorAcrescimo, ValorDesconto : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_FechaRecebimentoNaoFiscalMFD(Mensagem : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaRecebimentoNaoFiscalMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreRelatorioGerencialMFD(Indice : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UsaRelatorioGerencialMFD(Texto : string): Integer; StdCall; External 'CONVECF.DLL';
//function ECF_UsaRelatorioGerencialMFDTEF(Texto : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SegundaViaNaoFiscalVinculadoMFD(): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EstornoNaoFiscalVinculadoMFD(CGC, Nome, Endereco : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CNPJMFD(CNPJ : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_InscricaoEstadualMFD(InscricaoEstadual : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_InscricaoMunicipalMFD(InscricaoMunicipal : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TempoOperacionalMFD(TempoOperacional : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MinutosEmitindoDocumentosFiscaisMFD(Minutos : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadoresTotalizadoresNaoFiscaisMFD(Contadores : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresNaoFiscaisMFD(Totalizadores : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRecebimentoNaoFiscalMFD(Recebimentos : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorOperacoesNaoFiscaisCanceladasMFD(OperacoesCanceladas : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ContadorFitaDetalheMFD(ContadorFita : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ComprovantesNaoFiscaisNaoEmitidosMFD(Comprovantes : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_NumeroSerieMemoriaMFD(NumeroSerieMFD : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ReducoesRestantesMFD(Reducoes : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaTotalizadoresParciaisMFD(Totalizadores : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraChequeMFD(CodigoCMC7 : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ImprimeChequeMFD(NumeroBanco, Valor, Favorecido, Cidade, Data, Mensagem, ImpressaoVerso, Linhas : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RetornoImpressoraMFD(var ACK, ST1, ST2, ST3 : Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AbreBilhetePassagemMFD(Embarque, Destino, Linha, Agencia, Data, Hora, Poltrona, Plataforma, TipoPassagem: string ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaAcrescimoDescontoItemMFD( cFlag, cItem: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotalizaCupomMFD: integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotalizaRecebimentoMFD: integer; StdCall; External 'CONVECF.DLL';
function ECF_TotalLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_TamanhoTotalMFD( cTamanhoMFD: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_AcrescimoDescontoSubtotalRecebimentoMFD( cFlag, cTipo, cValor: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_AcrescimoDescontoSubtotalMFD( cFlag, cTipo, cValor: string): integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaAcrescimoDescontoSubtotalMFD( cFlag: string): integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaAcrescimoDescontoSubtotalRecebimentoMFD( cFlag: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_TotalizaCupomMFD: integer; StdCall; External 'CONVECF.DLL';
function ECF_TotalizaRecebimentoMFD: integer; StdCall; External 'CONVECF.DLL';
function ECF_PercentualLivreMFD( cMemoriaLivre: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_DataHoraUltimoDocumentoMFD( cDataHora: string ): integer; StdCall; External 'CONVECF.DLL';
function ECF_MapaResumoMFD:Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_MapaResumoMFD';
function ECF_RelatorioTipo60AnaliticoMFD: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RelatorioTipo60AnaliticoMFD';
function ECF_ValorFormaPagamentoMFD( FormaPagamento: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_ValorTotalizadorNaoFiscalMFD( Totalizador: String; Valor: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaEstadoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RelatorioSintegraMFD( iRelatorios : Integer;
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
                                           cContato    : String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DownloadMF( Arquivo: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_RegistrosTipo60: Integer; StdCall; External 'CONVECF.DLL' Name 'ECF_RegistrosTipo60';
function ECF_FormatoDadosMFD( ArquivoOrigem   : String;
                                      ArquivoDestino  : String;
                                      TipoFormato     : String;
                                      TipoDownload    : String;
                                      ParametroInicial: String;
                                      ParametroFinal  : String;
                                      UsuarioECF      : String ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es dispon�veis somente na impressora fiscal MP-2000 TH FI vers�o 01.00.02
function ECF_AtivaDesativaVendaUmaLinhaMFD( iFlag: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AtivaDesativaAlinhamentoEsquerdaMFD( iFlag: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AtivaDesativaCorteProximoMFD(): Integer; StdCall; External 'CONVECF.DLL';
function ECF_AtivaDesativaTratamentoONOFFLineMFD( iFlag: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_StatusEstendidoMFD( Var iStatus: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VerificaFlagCorteMFD( Var iStatus: Integer ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TempoRestanteComprovanteMFD( cTempo: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_UFProprietarioMFD( cUF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_GrandeTotalUltimaReducaoMFD( cGT: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_DataMovimentoUltimaReducaoMFD( cData: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_SubTotalComprovanteNaoFiscalMFD( cSubTotal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_InicioFimCOOsMFD( cCOOIni, cCOOFim: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_InicioFimGTsMFD( cGTIni, cGTFim: String ): Integer; StdCall; External 'CONVECF.DLL';

// Fun��es para a impress�o de C�digo de Barras

function ECF_TerminaFechamentoCupomCodigoBarrasMFD( cMensagem: string;
                                                            cTipoCodigo: string;
                                                            cCodigo: string;
                                                            iAltura: integer;
                                                            iLargura: integer;
                                                            iPosicaoCaracteres: integer;
                                                            iFonte: integer;
                                                            iMargem: integer;
                                                            iCorrecaoErros: integer;
                                                            iColunas: integer ): Integer; StdCall; External 'CONVECF.DLL';




{ Fim da Declara��o }



(******************* URANO **********************)



function InicializaDLL(Porta: String): Integer; stdcall; external 'Dll1efc3';
function FinalizaDLL: Integer; stdcall; external 'Dll1efc3';
function Relatorio_XZ(Tipo: String): Integer; stdcall; external 'Dll1efc3';
function FinalizaRelatorio: Integer; stdcall; external 'Dll1efc3';
function ImprimeCabecalho: Integer; stdcall; external 'Dll1efc3';
function VendaItem(Cod, Descr, Qtde, VUnit, Ident, Unid, Tipo: String): Integer; stdcall; external 'Dll1efc3';
function Pagamento(Cod, Descr, Valor, Acumular: String): Integer; stdcall; external 'Dll1efc3';
function FechaCupom(Oper: String): Integer; stdcall; external 'Dll1efc3';
function AvancaLinhas(NLinhas: String): Integer; stdcall; external 'Dll1efc3';
function CancelaCupom(Operador : String): Integer; stdcall; external 'Dll1efc3';
function AbreGaveta : Integer ; stdcall; external 'Dll1efc3';
function EstadoImpressora : Integer ; stdcall; external 'Dll1efc3';
function IdComprador(Nome, Tipo, CPF, Endereco, Entrega : String) : Integer ; stdcall; external 'Dll1efc3';
function Propaganda(Linha1 : String) : Integer ; stdcall; external 'Dll1efc3';
function LeSensor(Sensor : String) : Integer ; stdcall; external 'Dll1efc3';
function CancelaVenda(Operador : String): Integer; stdcall; external 'Dll1efc3';
function CancelaItem(Descricao, Item : String): Integer; stdcall; external 'Dll1efc3';
function AcrescimoSubtotal(Operacao, Descricao, Valor : String): Integer; stdcall; external 'Dll1efc3';
function DescontoSubtotal(Operacao, Descricao, Valor : String): Integer; stdcall; external 'Dll1efc3';
function DescontoItem(Funcao, Descricao, Valor : String): Integer; stdcall; external 'Dll1efc3';
function CargaAliquota(Aliquota, Valor : String): Integer; stdcall; external 'Dll1efc3';
function FormaPagamento(Forma, Descricao : String): Integer; stdcall; external 'Dll1efc3';
function LeRegistrador(NumeroRegistrador, Valor : String): Integer; stdcall; external 'Dll1efc3';

function LeituraMF(Tipo,inicio,fim,Arquivo : string):integer; stdcall; external 'Dll1efc3';










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
function ecf_cancela_cupom(ecf:string;TIPO:STRING):string;
function ecf_abre_cupom(ecf:string;CPF:string):string;
function ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
function ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
function ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
function ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
function ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real;forma_pgto7:string;valor7:real):string;
function ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
function ecf_termina_fechamento(ecf:string;mensagem:string):string;
function ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
function ecf_cancela_item(ecf:string;item:string):string;

(*----------------------------- COMPROVANTE NAO FISCAL VINCULADO ------------------*)

function ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
function ecf_usa_CNFV(ecf:string;texto:string):string;
function ecf_fecha_CNFV(ecf:string):string;




(*----------------------------- TRATAMENTO DE ERROS  ------------------------------*)
function analisa_retorno(retorno:string;ecf:string):string;

//procedure BlockInput(ABlockInput : boolean); stdcall; external 'USER32.DLL';



var ret : string;
IRETORNO, i : INTEGER;
bRetornoEstendido : BOOLEAN;
continuacao : string;

implementation



uses modulo, principal;


function ecf_registro_60A(ecf:string):string;
var f : textfile;
texto,TEXTO1, TEXTO2, TEXTO3, DESC1, DESC2 : string;
DESCONTO : REAL;
ICONTA : INTEGER;
begin

  IF FileExists('C:\RETORNO.TXT') THEN DeleteFile('C:\RETORNO.TXT');

  if ecf = 'BEMATECH' then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Analitico();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'SWEDA_MFD' then
  begin
    iRetorno := ECF_RelatorioTipo60Analitico();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf = 'DARUMA' then
  begin
    Daruma_FI_RelatorioTipo60Analitico();
  end;
  if ecf = 'URANO' then
  begin

    For iConta := 1 To 25 Do TEXTO1 := TEXTO1 + ' ';LeRegistrador('27',texto1); TEXTO1 := frmprincipal.texto_justifica(trim(texto1), 25, ' ', 'E'); // DATA_EMISSAO
    For iConta := 1 To 25 Do TEXTO2 := TEXTO2 + ' ';LeRegistrador('25',texto2); TEXTO2 := frmprincipal.texto_justifica(trim(texto2), 25, ' ', 'E'); // NUMERO_SERIE
    For iConta := 1 To 25 Do TEXTO3 := TEXTO3 + ' '; TEXTO3 := frmprincipal.texto_justifica(trim(texto3), 25, ' ', 'E'); // CANCELAMENTOS



    assignfile(f,'c:\retorno.txt');
    rewrite(f);
    writeln(F,'Tipo do relat�rio.........:                       60');
    writeln(F,'Subtipo...................:                        A');
    writeln(F,'Data de emiss�o...........:'+TEXTO1);
    writeln(F,'N�mero de s�rie...........:'+TEXTO2);
    writeln(F,'Cancelamentos.............:'+TEXTO3);

    SetLength(DESC1,25);LeRegistrador('03',DESC1);
    SetLength(DESC2,25);LeRegistrador('04',DESC2);
    DESCONTO := STRTOFLOAT(TRIM(DESC1))+STRTOFLOAT(TRIM(DESC2));
    TEXTO := FORMATFLOAT('#############0.00',DESCONTO);
    writeln(F,'Descontos.................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('13',texto);
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    writeln(F,'F.........................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('14',texto);
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    writeln(F,'I.........................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('15',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    writeln(F,'N.........................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));


    SetLength(texto,25);LeRegistrador('07',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    if ALIQUOTA_ECF[7]  = '01' then writeln(F,'0700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[12] = '01' then writeln(F,'1200......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[17] = '01' then writeln(F,'1700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[25] = '01' then writeln(F,'2500......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[27] = '01' then writeln(F,'2700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('08',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    if ALIQUOTA_ECF[7]  = '02' then writeln(F,'0700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[12] = '02' then writeln(F,'1200......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[17] = '02' then writeln(F,'1700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[25] = '02' then writeln(F,'2500......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[27] = '02' then writeln(F,'2700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('09',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    if ALIQUOTA_ECF[7]  = '03' then writeln(F,'0700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[12] = '03' then writeln(F,'1200......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[17] = '03' then writeln(F,'1700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[25] = '03' then writeln(F,'2500......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[27] = '03' then writeln(F,'2700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('10',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    if ALIQUOTA_ECF[7]  = '04' then writeln(F,'0700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[12] = '04' then writeln(F,'1200......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[17] = '04' then writeln(F,'1700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[25] = '04' then writeln(F,'2500......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[27] = '04' then writeln(F,'2700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('11',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    if ALIQUOTA_ECF[7]  = '05' then writeln(F,'0700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[12] = '05' then writeln(F,'1200......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[17] = '05' then writeln(F,'1700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[25] = '05' then writeln(F,'2500......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[27] = '05' then writeln(F,'2700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    SetLength(texto,25);LeRegistrador('12',texto); //13
    while pos('.',texto) > 0 do Delete(texto,pos('.',texto),1);while pos('(',texto) > 0 do Delete(texto,pos('(',texto),1);
    if ALIQUOTA_ECF[7]  = '06' then writeln(F,'0700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[12] = '06' then writeln(F,'1200......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[17] = '06' then writeln(F,'1700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[25] = '06' then writeln(F,'2500......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    if ALIQUOTA_ECF[27] = '06' then writeln(F,'2700......................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));


    writeln(F,'ISS.......................:                     0,00');
    closefile(f);
  end;

end;


function ecf_registro_60M(ecf:string):string;
var f : textfile;
texto, DESC1, DESC2 : string;
DESCONTO : REAL;
begin
  IF FileExists('C:\RETORNO.TXT') THEN DeleteFile('C:\RETORNO.TXT');
  if ecf = 'BEMATECH' then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Mestre();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'SWEDA_MFD' then
  begin
    iRetorno := ECF_RelatorioTipo60Mestre();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_RelatorioTipo60Mestre();
  end;

  if ecf = 'URANO' then
  begin
    assignfile(f,'c:\retorno.txt');
    rewrite(f);
    writeln(F,'Tipo do relat�rio.........:                       60');
    writeln(F,'Subtipo...................:                        M');
    SetLength(texto,25);LeRegistrador('27',texto);
    writeln(F,'Data de emiss�o...........:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    SetLength(texto,25);LeRegistrador('25',texto);
    writeln(F,'N�mero de s�rie...........:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    SetLength(texto,25);LeRegistrador('26',texto);
    writeln(F,'N�mero do equipamento.....:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    writeln(F,'Modelo do documento fiscal:                       2D');
    SetLength(texto,25);LeRegistrador('17',texto);
    writeln(F,'COO inicial...............:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    SetLength(texto,25);LeRegistrador('18',texto);
    writeln(F,'COO final.................:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    SetLength(texto,25);LeRegistrador('24',texto);
    writeln(F,'Contador de redu��es......:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    SetLength(texto,25);LeRegistrador('23',texto);
    writeln(F,'Reinicio de Opera��o......:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));


    SetLength(texto,25);TEXTO := '0,00';
    writeln(F,'Venda Bruta...............:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));
    SetLength(texto,25);LeRegistrador('01',texto);
    writeln(F,'Totalizador geral.........:'+frmprincipal.texto_justifica(trim(texto), 25, ' ', 'E'));

    closefile(f);
  end;

end;


function ecf_numero_serie(ecf:string):string;
  var cNumeroSerie : String;
      iConta       : Integer;
Begin

  if ecf = 'BEMATECH' then
  begin
    For iConta := 1 To 20 Do cNumeroSerie := cNumeroSerie + ' ';
    iRetorno := Bematech_FI_NumeroSerie( cNumeroSerie );
    Analisa_iRetorno();
    Retorno_Impressora();
    result :=  cNumeroSerie;
  end;
  if ecf = 'DARUMA' THEN
  begin
    SetLength (cnumeroserie,15);
    Daruma_FI_NumeroSerie(cnumeroserie);
    Daruma_FI_RetornaErroExtendido(ret);
    if ANALISA_RETORNO(RET,'DARUMA') = 'ERRO' then exit;
    result := cnumeroserie;
  end;
  if ecf = 'SWEDA_MFD' THEN
  begin
    For iConta := 1 To 15 Do cNumeroSerie := cNumeroSerie + ' ';
    iRetorno := ECF_NumeroSerie( cNumeroSerie );
    Analisa_iRetorno();
    Retorno_Impressora();
    result :=  cNumeroSerie;
  end;
  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.273}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
      result := COPY(status,13,9)
    ELSE
      RESULT := 'ERRO';
  end;
  if ecf = 'URANO' then
  begin
    SetLength (cnumeroserie,25);
    retorno := LeRegistrador('25',cnumeroSerie);
    if analisa_retorno(inttostr(retorno),'URANO') = 'ERRO' then exit;
    result := trim(cnumeroserie);
  end;
end;


function ecf_abre_CNFV(ecf:string;forma_pgto:string;valor:string;numero_cupom:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_AbreComprovanteNaoFiscalVinculado(forma_pgto,valor,numero_cupom);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(forma_pgto,valor,numero_cupom);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_AbreComprovanteNaoFiscalVinculado(forma_pgto,valor,numero_cupom);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;




end;

function ecf_usa_CNFV(ecf:string;texto:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_UsaComprovanteNaoFiscalVinculado(texto);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado(texto);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_UsaComprovanteNaoFiscalVinculado(texto);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
end;

function ecf_fecha_CNFV(ecf:string):string;
begin
  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_FechaComprovanteNaoFiscalVinculado();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf = 'DARUMA' then
  begin
    Daruma_FI_FechaComprovanteNaoFiscalVinculado();
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
end;

function ecf_arredondamento(ecf:string;tipo:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_CfgCalcArredondamento(tipo);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
end;
function ecf_leitura_x(ecf:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_LeituraX();
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.13N}';
    EcfWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
  end;


  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_LeituraX();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_LeituraX();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'URANO' then
  begin
    retorno := Relatorio_XZ('0');
    result := analisa_retorno(inttostr(retorno),'URANO');
    AvancaLinhas('07');
  end;


  if ecf = '' then
  begin
    result := '00';
  end;
end;

function ecf_reducao_z(ecf:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_ReducaoZ('', '');
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);

    RESULT := ANALISA_RETORNO(RET,'DARUMA');
    Application.ProcessMessages;
  end;

  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.14N}';
    EcfWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
  end;
  if ecf = 'SWEDA_MFD' then
  begin
    iRetorno := ECF_ReducaoZ('', '');
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;

  end;


  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_ReducaoZ('', '');
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'URANO' then
  begin
    retorno := Relatorio_XZ('1');
    result := analisa_retorno(inttostr(retorno),'URANO');
    AvancaLinhas('07');
  end;

end;

function ecf_leitura_memoria_fiscal(ecf:string;data_inicial:string;data_final:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_LeituraMemoriaFiscalData(pchar(data_inicial), pchar(data_final));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;


  if ecf = 'SWEDA' then
  begin
    DATA_INICIAL := copy(data_inicial,1,2)+copy(data_inicial,4,2)+copy(data_inicial,9,2);
    DATA_FINAL :=   copy(data_final,1,2)+copy(data_final,4,2)+copy(data_final,9,2);

    StrPCopy(Comando, #27+'.16'+data_inicial+data_final+'}');

    EcfWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');
  end;

  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_LeituraMemoriaFiscalData( pchar( DATA_INICIAL ), pchar( DATA_FINAL));
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'SWEDA_MFD' then
  begin
    iRetorno := ECF_LeituraMemoriaFiscalData( pchar( DATA_INICIAL ), pchar( DATA_FINAL));
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf = 'URANO' then
  begin
    DATA_INICIAL := copy(data_inicial,1,2)+copy(data_inicial,4,2)+copy(data_inicial,9,2);
    DATA_FINAL :=   copy(data_final,1,2)+copy(data_final,4,2)+copy(data_final,9,2);
    retorno := LeituraMF('0',data_inicial,data_final,'x');
    result := analisa_retorno(inttostr(retorno),'URANO');
    AvancaLinhas('07');
  end;

end;

function ecf_suprimentoX(ecf:string;valor:string;forma_pgto:string):string;
begin

  if ecf = 'DARUMA' then
  begin
    Daruma_FI_Suprimento(pchar( valor ), pchar(forma_pgto));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = '' then
  begin
    result := 'OK';
  end;
  if ecf = 'SWEDA' then
  begin
    RESULT := 'OK';
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno :=  Bematech_FI_Suprimento( pchar( VALOR ), pchar( FORMA_PGTO) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno :=  ECF_Suprimento( pchar( VALOR ), pchar( FORMA_PGTO) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;






end;
function ecf_sangriaX(ecf:string;valor:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_Sangria(pchar( valor ));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = 'SWEDA' then
  begin
    RESULT := '00';
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno :=  Bematech_FI_Sangria( pchar( VALOR ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno :=  ECF_Sangria( pchar( VALOR ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;



end;
function ecf_operador(ecf:string;operador:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_ProgramaOperador(pchar( operador ));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = '' then
  begin
    result := '00';
  end;
  if ecf = 'SWEDA' then
  begin
    RESULT := '00';
  end;
  IF ECF = 'BEMATECH' then
  begin
    result := '00';
  end;
  IF ECF = 'SWEDA_MFD' then
  begin
    result := '00';
  end;

end;

function ecf_ligada(ecf:string):string;
begin

  if ecf = 'DARUMA' then
  begin
    Daruma_FI_VerificaImpressoraLigada();
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = '' then
  begin
    result := '00';
  end;
  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.23}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');
  end;
end;

function ecf_modeloecf(ecf:string):string;
begin
   if ecf = 'DARUMA' then RESULT := inttostr(Daruma_FI_VerificaModeloEcf());

end;

function ecf_abre_gaveta(ecf:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_AcionaGaveta();
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.42}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_AcionaGaveta();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = '' then
  begin
    Result := 'OK';
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_AcionaGaveta();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'URANO' then
  begin
    retorno := AbreGaveta;
    result := analisa_retorno(inttostr(retorno),'URANO');
  end;

end;
function ecf_numero_cupom(ecf:string):string;
var numero_cupom: String;
iconta : integer;
begin
  if ecf = 'DARUMA' then
  begin
     SetLength (numero_cupom,6);
     Daruma_FI_NumeroCupom(numero_cupom);
     SetLength(RET,4);
     Daruma_FI_RetornaErroExtendido(ret);
     if ANALISA_RETORNO(RET,'DARUMA') = 'ERRO' then exit;
     RESULT := NUMERO_CUPOM;
  end;
  if ecf =  'BEMATECH' then
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

  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.271}';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
      result := COPY(status,14,4)
    ELSE
      RESULT := 'ERRO';
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    For iConta := 1 To 6 Do numero_cupom := Numero_Cupom + ' ';
    iRetorno := ECF_NumeroCupom( Numero_Cupom );
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

  if ecf = 'URANO' then
  begin
    SetLength (numero_cupom,25);
    retorno := LeRegistrador('18',numero_cupom);
    if analisa_retorno(inttostr(retorno),'URANO') = 'ERRO' then exit;
    result := trim(numero_cupom);
  end;
  if ecf = '' then
  begin
    result := '000000';
  end;

end;
function ecf_numero_caixa(ecf:string):string;
var numero_caixa: String;
iconta : integer;
begin
  if ecf = 'DARUMA' then
  begin
     SetLength (numero_caixa,4);
     Daruma_FI_NumeroCaixa(numero_caixa);
     SetLength(RET,4);
     Daruma_FI_RetornaErroExtendido(ret);
     if ANALISA_RETORNO(RET,'DARUMA') = 'ERRO' then exit;
     RESULT := NUMERO_caixa;
  end;
  if ecf =  'BEMATECH' then
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
  if ecf = 'SWEDA_MFD' then
  begin
    For iConta := 1 To 4 Do numero_caixa := Numero_caixa + ' ';
    iRetorno := ECF_NumeroCaixa( numero_caixa );
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

  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.273}';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
      result := COPY(status,4,3)
    ELSE
      RESULT := 'ERRO';
  end;
  if ecf = 'URANO' then
  begin
    SetLength (numero_caixa,25);
    retorno := LeRegistrador('26',numero_caixa);
    if analisa_retorno(inttostr(retorno),'URANO') = 'ERRO' then exit;
    result := trim(numero_caixa);
  end;





  if ecf = '' then
  begin
    result := '00';
  end;
end;


function ecf_data_hora(ecf:string):string;
var data, hora: String;
iconta : integer;
begin
  if ecf = 'DARUMA' then
  begin
     SetLength (data,6);
     SetLength (hora,6);
     Daruma_FI_DataHoraImpressora(Data,Hora);
     SetLength(RET,4);
     Daruma_FI_RetornaErroExtendido(ret);
     if ANALISA_RETORNO(RET,'DARUMA') = 'ERRO' then exit;
     insert('/',data,3);
     insert('/',data,6);
     insert(':',hora,3);
     insert(':',hora,6);

     RESULT := data+'   '+hora;
  end;
  if ecf = 'BEMATECH' then
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
  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.271}';
    Retorno := ECFWrite(Comando);
    ECFRead(STATUS,512);
    IF analisa_retorno(STATUS,'SWEDA') = 'OK' THEN
    begin
      DATA := COPY(STATUS,8,6);
      insert('/',data,3);
      insert('/',data,6);
      ReSULT := DATA;
    end
    ELSE
      RESULT := 'ERRO';
  end;


  if ecf = 'URANO' then
  begin
    retorno := LeRegistrador('27',data);
    if analisa_retorno(inttostr(retorno),'URANO') = 'ERRO' then exit;

    retorno := LeRegistrador('28',hora);
    if analisa_retorno(inttostr(retorno),'URANO') = 'ERRO' then exit;


     insert('/',data,3);
     insert('/',data,6);
     insert(':',hora,3);
     insert(':',hora,6);
     RESULT := data+'   '+hora;
  end;



  if ecf = '' then
  begin
    result := copy(datetostr(frmmodulo.qrcaixa_operador.FIELDBYNAME('data').ASdatetime),1,6)+copy(datetostr(frmmodulo.qrcaixa_operador.FIELDBYNAME('data').ASdatetime),9,2)+'   '+copy(timetostr(time),1,5);
  end;

  if ecf = 'SWEDA_MFD' then
  begin
    for iConta := 1 to 6 do  Data := Data + ' ';
    for iConta := 1 to 6 do  Hora := Hora + ' ';
    iRetorno := ECF_DataHoraImpressora( Data, Hora );
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


end;

function ecf_cancela_cupom(ecf:string;TIPO:STRING):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_CancelaCupom();
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = '' THEN
  BEGIN
    RESULT := 'OK';
  END;
  if ecf = 'SWEDA' then
  begin
    Comando := #27+'.05}';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno :=  Bematech_FI_CancelaCupom();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno :=  ECF_CancelaCupom();
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf = 'URANO' then
  begin
    if TIPO = 'V' then
    begin
      retorno := CancelaVenda('1');
      result :=  analisa_retorno(inttostr(retorno),'URANO');
    end
    else
    begin
      retorno := CancelaCupom('1');
      result :=  analisa_retorno(inttostr(retorno),'URANO');
    end;
    AvancaLinhas('07');
  end;





end;
function ecf_abre_cupom(ecf:string;cpf:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_AbreCupom(pchar(cpf));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;

  if ecf = 'SWEDA' then
  begin
    Comando:=#27+'.17                    }';
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_AbreCupom( Pchar( '' ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_AbreCupom( Pchar( '' ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'URANO' then
  begin
//    retorno := ImprimeCabecalho;
//    result :=  analisa_retorno(inttostr(retorno),'URANO');
  end;

end;

function ecf_vende_item_completo(ecf: string;Codigo: String; produto: String; Aliquota: String; Unitario: real; quantidade: real; Valor_Desconto: real; Valor_Acrescimo: real; Unidade:string;total:real ):string;
var posicao : integer;
quantidade_string, unitario_string, texto, total_string, ST, tipo_quantidade : string;
begin
  if codigo = ''  then codigo := '999999';
  if codigo = '0' then codigo := '999999';
  if codigo = '00000' then codigo := '999999';
  if ecf = 'DARUMA' then
  begin
      Daruma_FI_VendeItemDepartamento(pchar( codigo ),
                                      pchar( produto ),
                                      pchar( aliquota ),
                                      pchar( formatfloat('###############0.00',unitario )),
                                      pchar( formatfloat('###############0.000',quantidade) ),
                                      pchar( formatfloat('###############0.00',Valor_ACRESCIMO )),
                                      pchar( formatfloat('###############0.00',Valor_DESCONTO )),
                                      PCHAR( '01'),
                                      pchar( unidade ));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf =  'BEMATECH' then
  begin
    IF ALIQUOTA = '07' THEN ALIQUOTA := '0700';
    IF ALIQUOTA = '12' THEN ALIQUOTA := '1200';
    IF ALIQUOTA = '17' THEN ALIQUOTA := '1700';
    IF ALIQUOTA = '25' THEN ALIQUOTA := '2500';
    IF ALIQUOTA = '27' THEN ALIQUOTA := '2700';
    IF ALIQUOTA = 'F' THEN ALIQUOTA := 'FF';
    IF ALIQUOTA = 'I' THEN ALIQUOTA := 'II';
    IF ALIQUOTA = 'N' THEN ALIQUOTA := 'NN';
    IF ALIQUOTA = '' THEN ALIQUOTA := '1700';

      if ecf_bematech_yanco = '2' then
      begin
        iRetorno := Bematech_FI_VendeItem( codigo,
                                         produto,
                                         aliquota,
                                         'F',
                                         formatfloat('###############0.000',quantidade ),
                                         2,
                                         formatfloat('###############0.00',Unitario),
                                         '$',
                                         formatfloat('###############0.00',Valor_Desconto ) );

      end
      else
      begin
        iretorno := Bematech_FI_VendeItemDepartamento(codigo,
                                                      produto,
                                                      aliquota,
                                                      formatfloat('###############0.00',Unitario*10),
                                                      formatfloat('###############0.00',quantidade*10),
                                                      formatfloat('###############0.00',Valor_ACRESCIMO),
                                                      formatfloat('###############0.00',Valor_DESCONTO),
                                                      '01',
                                                      UNIDADE);



      end;



    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf =  'SWEDA_MFD' then
  begin
    IF ALIQUOTA = '07' THEN ALIQUOTA := '0700';
    IF ALIQUOTA = '12' THEN ALIQUOTA := '1200';
    IF ALIQUOTA = '17' THEN ALIQUOTA := '1700';
    IF ALIQUOTA = '25' THEN ALIQUOTA := '2500';
    IF ALIQUOTA = '27' THEN ALIQUOTA := '2700';
    IF ALIQUOTA = 'F' THEN ALIQUOTA := 'FF';
    IF ALIQUOTA = 'I' THEN ALIQUOTA := 'II';
    IF ALIQUOTA = 'N' THEN ALIQUOTA := 'NN';
    IF ALIQUOTA = '' THEN ALIQUOTA := '1700';


      iretorno := ECF_VendeItemDepartamento(codigo,
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



  if ecf = 'SWEDA' then
  begin
        quantidade_string := formatfloat('###############0.000',quantidade);
        unitario_string := formatfloat('###############0.00',unitario);


        if arredonda then
          total_string := formatfloat('###############0.00',total)
        else
        begin
          texto := floattostr(unitario * quantidade);
          i := pos(',',texto);
          if i > 0 then
          begin
            delete(texto,i+3,99);
          end;
           total_string := texto;
        end;






    posicao := pos(',',quantidade_STRING); if posicao > 0 then delete(quantidade_STRING,posicao,1); quantidade_string := frmprincipal.texto_justifica(quantidade_string,7,'0','E');
    posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1); unitario_string := frmprincipal.texto_justifica(unitario_string,9,'0','E');
    posicao := pos(',',total_STRING);      if posicao > 0 then delete(total_STRING,posicao,1); total_string := frmprincipal.texto_justifica(total_string,12,'0','E');
    ST := copy(aliquota,1,1);
    IF (ST <> 'F' )AND (ST <> 'I' )AND( ST <> 'N') THEN
    BEGIN
      ST := 'T'+COPY(ALIQUOTA,1,2);
    END
    ELSE
    BEGIN
      ST := ST+'  ';
    END;
    PRODUTO := frmprincipal.texto_justifica(produto,24,' ','D');
    CODIGO := frmprincipal.texto_justifica(codigo,13,'0','E');

    StrPCopy(Comando,#27+'.01'+CODIGO+quantidade_string+unitario_string+total_string+PRODUTO+ST+'}');
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');
  end;


  if ecf =  'URANO' then
  begin
    IF ALIQUOTA = '03,00'  THEN ALIQUOTA := ALIQUOTA_ECF[3];
    IF ALIQUOTA = '07,00'  THEN ALIQUOTA := ALIQUOTA_ECF[7];
    IF ALIQUOTA = '12,00'  THEN ALIQUOTA := ALIQUOTA_ECF[12];
    IF ALIQUOTA = '17,00'  THEN ALIQUOTA := ALIQUOTA_ECF[17];
    IF ALIQUOTA = '25,00'  THEN ALIQUOTA := ALIQUOTA_ECF[25];
    IF ALIQUOTA = '27,00'  THEN ALIQUOTA := ALIQUOTA_ECF[27];
    IF (ALIQUOTA = 'F') OR (ALIQUOTA = 'FF') THEN ALIQUOTA := '16';
    IF (ALIQUOTA = 'I') OR (ALIQUOTA = 'II') THEN ALIQUOTA := '17';
    IF (ALIQUOTA = 'N') OR (ALIQUOTA = 'NN') THEN ALIQUOTA := '18';
    IF ALIQUOTA = '' THEN ALIQUOTA := '01';



    IF (QUANTIDADE - TRUNC(QUANTIDADE)) > 0 THEN
      quantidade_string := FRMPRINCIPAL.zerarcodigo(formatfloat('###############0.000',quantidade),7)
    ELSE
      quantidade_string := FRMPRINCIPAL.zerarcodigo(formatfloat('###############0',quantidade),7);




    unitario_string :=   formatfloat('###############0.00',unitario);
    posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1);



    RETORNO := VendaItem(CODIGO,
                          PRODUTO,
                          quantidade_string,
                          unitario_string,
                          aliquota,
                          Unidade,
                          '1');
    IF analisa_retorno(inttostr(retorno),'URANO') = 'OK' THEN
    BEGIN
      IF VALOR_DESCONTO > 0 THEN
      BEGIN
        unitario_string :=   formatfloat('###############0.00',VALOR_DESCONTO);
        posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1);
        RETORNO := DescontoItem('0','(-)',UNITARIO_STRING);
        RESULT := analisa_retorno(inttostr(retorno),'URANO')
      END;
    END
    ELSE
      RESULT := 'ERRO';
  end;





end;

function ecf_vende_item(ecf:string;codigo:string;produto:string;aliquota:string;tipo_quantidade:string;quantidade:real;casas_decimais:integer;unitario:real;tipo_desconto:string;valor_desconto:real;Desconto_Acrescimo:string;total:real):string;
var posicao : integer;
quantidade_string, unitario_string, texto, total_string, ST : string;
begin
  if codigo = ''  then codigo := '999999';
  if codigo = '0' then codigo := '999999';
  if codigo = '00000' then codigo := '999999';
  if ecf = 'DARUMA' then
  begin

      Daruma_FI_VendeItem(pchar( codigo ),
                                    pchar( produto ),
                                    pchar( aliquota ),
                                    pchar( tipo_quantidade ),
                                    pchar( formatfloat('###############0.000',quantidade )),
                                    casas_decimais,
                                    pchar( formatfloat('###############0.000',Unitario) ),
                                    pchar( tipo_Desconto ),
                                    pchar( formatfloat('###############0.00',Valor_Desconto )));

    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf =  'BEMATECH' then
  begin
    IF ALIQUOTA = '07' THEN ALIQUOTA := '0700';
    IF ALIQUOTA = '12' THEN ALIQUOTA := '1200';
    IF ALIQUOTA = '17' THEN ALIQUOTA := '1700';
    IF ALIQUOTA = '25' THEN ALIQUOTA := '2500';
    IF ALIQUOTA = '27' THEN ALIQUOTA := '2700';
    IF ALIQUOTA = 'F' THEN ALIQUOTA := 'FF';
    IF ALIQUOTA = 'I' THEN ALIQUOTA := 'II';
    IF ALIQUOTA = 'N' THEN ALIQUOTA := 'NN';
    IF ALIQUOTA = '' THEN ALIQUOTA := '1700';



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

  if ecf =  'SWEDA_MFD' then
  begin
    IF ALIQUOTA = '07' THEN ALIQUOTA := '0700';
    IF ALIQUOTA = '12' THEN ALIQUOTA := '1200';
    IF ALIQUOTA = '17' THEN ALIQUOTA := '1700';
    IF ALIQUOTA = '25' THEN ALIQUOTA := '2500';
    IF ALIQUOTA = '27' THEN ALIQUOTA := '2700';
    IF ALIQUOTA = 'F' THEN ALIQUOTA := 'FF';
    IF ALIQUOTA = 'I' THEN ALIQUOTA := 'II';
    IF ALIQUOTA = 'N' THEN ALIQUOTA := 'NN';
    IF ALIQUOTA = '' THEN ALIQUOTA := '1700';



    if length(produto) > 29 then
    begin
      iretorno := ECF_VendeItemDepartamento(codigo,
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
      iRetorno := ECF_VendeItem( codigo,
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



  if ecf = 'SWEDA' then
  begin
    quantidade_string := formatfloat('###############0.000',quantidade);
    unitario_string := formatfloat('###############0.000',unitario);
    total_string := formatfloat('###############0.00',total);

    posicao := pos(',',quantidade_STRING); if posicao > 0 then delete(quantidade_STRING,posicao,1); quantidade_string := frmprincipal.texto_justifica(quantidade_string,7,'0','E');
    posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1); unitario_string := frmprincipal.texto_justifica(unitario_string,9,'0','E');
    posicao := pos(',',total_STRING);      if posicao > 0 then delete(total_STRING,posicao,1); total_string := frmprincipal.texto_justifica(total_string,12,'0','E');

    IF ALIQUOTA = '02,00' THEN ALIQUOTA := 'T'+aliquota_ecf[2];
    IF ALIQUOTA = '03,00' THEN ALIQUOTA := 'T'+aliquota_ecf[3];
    IF ALIQUOTA = '04,00' THEN ALIQUOTA := 'T'+aliquota_ecf[4];
    IF ALIQUOTA = '07,00' THEN ALIQUOTA := 'T'+aliquota_ecf[7];
    IF ALIQUOTA = '12,00' THEN ALIQUOTA := 'T'+aliquota_ecf[12];
    IF ALIQUOTA = '17,00' THEN ALIQUOTA := 'T'+aliquota_ecf[17];
    IF ALIQUOTA = '25,00' THEN ALIQUOTA := 'T'+aliquota_ecf[25];
    IF ALIQUOTA = '27,00' THEN ALIQUOTA := 'T'+aliquota_ecf[27];
    IF ALIQUOTA = 'II'    THEN ALIQUOTA := 'I  ';
    IF ALIQUOTA = 'FF'    THEN ALIQUOTA := 'F  ';
    IF ALIQUOTA = 'NN'    THEN ALIQUOTA := 'N  ';



    PRODUTO := '~'+frmprincipal.texto_justifica(produto,23,' ','D');
    CODIGO := frmprincipal.texto_justifica(codigo,13,'0','E');
    StrPCopy(Comando,#27+'.01'+CODIGO+quantidade_string+unitario_string+total_string+PRODUTO+ALIQUOTA+'}');

    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result :=  analisa_retorno(STATUS,'SWEDA');
  end;

  if ecf =  'URANO' then
  begin
    IF ALIQUOTA = '03,00'  THEN ALIQUOTA := ALIQUOTA_ECF[3];
    IF ALIQUOTA = '07,00'  THEN ALIQUOTA := ALIQUOTA_ECF[7];
    IF ALIQUOTA = '12,00'  THEN ALIQUOTA := ALIQUOTA_ECF[12];
    IF ALIQUOTA = '17,00'  THEN ALIQUOTA := ALIQUOTA_ECF[17];
    IF ALIQUOTA = '25,00'  THEN ALIQUOTA := ALIQUOTA_ECF[25];
    IF ALIQUOTA = '27,00'  THEN ALIQUOTA := ALIQUOTA_ECF[27];
    IF (ALIQUOTA = 'F') OR (ALIQUOTA = 'FF') THEN ALIQUOTA := '16';
    IF (ALIQUOTA = 'I') OR (ALIQUOTA = 'II') THEN ALIQUOTA := '17';
    IF (ALIQUOTA = 'N') OR (ALIQUOTA = 'NN') THEN ALIQUOTA := '18';
    IF ALIQUOTA = '' THEN ALIQUOTA := '01';



    IF (QUANTIDADE - TRUNC(QUANTIDADE)) > 0 THEN
      quantidade_string := FRMPRINCIPAL.zerarcodigo(formatfloat('###############0.000',quantidade),7)
    ELSE
      quantidade_string := FRMPRINCIPAL.zerarcodigo(formatfloat('###############0',quantidade),7);

    unitario_string :=   formatfloat('###############0.00',unitario);
    posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1);



    RETORNO := VendaItem(CODIGO,
                          PRODUTO,
                          quantidade_string,
                          unitario_string,
                          aliquota,
                          'UN',
                          '1');
    IF analisa_retorno(inttostr(retorno),'URANO') = 'OK' THEN
    BEGIN
      IF VALOR_DESCONTO > 0 THEN
      BEGIN
        unitario_string :=   formatfloat('###############0.00',VALOR_DESCONTO);
        posicao := pos(',',unitario_STRING);   if posicao > 0 then delete(uniTario_STRING,posicao,1);
        RETORNO := DescontoItem('0','(-)',UNITARIO_STRING);
        RESULT := analisa_retorno(inttostr(retorno),'URANO')
      END;
    END
    ELSE
      RESULT := 'ERRO';

  end;
end;
function ecf_inicia_fechamento_cupom(ecf:string;Acrescimo_ou_desconto:string;tipo_acrescimo_desconto:string;valor_acrescimo_desconto:real;valor_total:real):string;
VAR DESCONTO_STRING, ACRESCIMO_STRING : STRING;
posicao : integer;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_IniciaFechamentoCupom( pchar( acrescimo_ou_desconto ),
                                     pchar( Tipo_Acrescimo_Desconto ),
                                     pchar( formatfloat('###############0.00',Valor_Acrescimo_Desconto) ) );
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;

  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_IniciaFechamentoCupom(acrescimo_ou_desconto, Tipo_Acrescimo_Desconto, formatfloat('###############0.00',Valor_Acrescimo_Desconto));
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_IniciaFechamentoCupom(acrescimo_ou_desconto, Tipo_Acrescimo_Desconto, formatfloat('###############0.00',Valor_Acrescimo_Desconto));
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;

  if ecf = 'SWEDA' then
  begin
    if acrescimo_ou_desconto = 'D' then
    begin
      IF valor_acrescimo_DESCONTO > 0 THEN
      BEGIN
        DESCONTO_STRING := formatfloat('###############0.00',valor_acrescimo_DESCONTO);
        posicao := pos(',',DESCONTO_STRING); if posicao > 0 then delete(DESCONTO_STRING,posicao,1); DESCONTO_string := frmprincipal.texto_justifica(DESCONTO_string,12,'0','E');

        StrPCopy(Comando,#27+'.03'+'          '+DESCONTO_STRING+'S}');

        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');
      END;
    end
    else
    begin
      IF valor_acrescimo_DESCONTO > 0 THEN
      BEGIN
        ACRESCIMO_STRING := formatfloat('###############0.000',valor_acrescimo_DESCONTO);
        posicao := pos(',',ACRESCIMO_STRING); if posicao > 0 then delete(ACRESCIMO_STRING,posicao,1); ACRESCIMO_string := frmprincipal.texto_justifica(ACRESCIMO_string,12,'0','E');
        showmessage(acrescimo_string);
        StrPCopy(Comando,#27+'.11'+'51'+'0000'+ACRESCIMO_STRING+'S}');

        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');
      END;
    end;
  end;

  if ecf = 'URANO' then
  begin
    acrescimo_string := formatfloat('###############0.00',valor_acrescimo_DESCONTO);
    posicao := pos(',',ACRESCIMO_STRING); if posicao > 0 then delete(ACRESCIMO_STRING,posicao,1);
    if (Acrescimo_ou_desconto = 'D') and (valor_acrescimo_desconto > 0) then
    begin
      retorno := DescontoSubtotal('0','(-)',acrescimo_string);
      result :=  analisa_retorno(inttostr(retorno),'URANO');
    end
    else
    begin
      if (Acrescimo_ou_desconto = 'A') and (valor_acrescimo_desconto > 0) then
      begin
        retorno := AcrescimoSubtotal('0','(+)',acrescimo_string);
        result :=  analisa_retorno(inttostr(retorno),'URANO');
      end;
    end;
  end;




end;
function ecf_efetua_forma_pgto(ecf:string;forma_pgto:string;valor:real):string;
var valor_string : string;
POSICAO : INTEGER;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_EfetuaFormaPagamento( pchar( forma_Pgto ), pchar( formatfloat('##############0.00',valor )) );
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;

  if ecf =  'BEMATECH' then
  begin
    iRetorno :=   Bematech_FI_EfetuaFormaPagamento( forma_Pgto, formatfloat('##############0.00',valor ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno :=   ECF_EfetuaFormaPagamento( forma_Pgto, formatfloat('##############0.00',valor ) );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'URANO' then
  begin
    valor_string := formatfloat('###############0.00',valor);
    posicao := pos(',',valor_STRING); if posicao > 0 then delete(valor_STRING,posicao,1);
    retorno := Pagamento(FORMA_PGTO,'-->',valor_STRING, '0');
    result :=  analisa_retorno(inttostr(retorno),'URANO');
  end;




end;
function ecf_efetua_forma_pgto_especial(ecf:string;forma_pgto1:string;valor1:real;forma_pgto2:string;valor2:real;forma_pgto3:string;valor3:real;forma_pgto4:string;valor4:real;forma_pgto5:string;valor5:real;forma_pgto6:string;valor6:real;forma_pgto7:string;valor7:real):string;
var posicao : integer;
begin

  if ecf = 'SWEDA' then
  begin
    if valor1 > 0 then
    begin
       forma_pgto1 := formatfloat('###############0.00',valor1);
       posicao := pos(',',forma_pgto1); if posicao > 0 then delete(forma_pgto1,posicao,1); forma_pgto1 := frmprincipal.texto_justifica(forma_pgto1,12,'0','E');
       forma_pgto1 := '01'+forma_pgto1;
    end;
    if (valor2 > 0) or (valor3 > 0) then
    begin
       forma_pgto2 := formatfloat('###############0.00',valor2+valor3);
       posicao := pos(',',forma_pgto2); if posicao > 0 then delete(forma_pgto2,posicao,1); forma_pgto2 := frmprincipal.texto_justifica(forma_pgto2,12,'0','E');
       forma_pgto2 := '02'+forma_pgto2;
    end;
    if (valor4 > 0) or (valor5 > 0) then
    begin
       forma_pgto4 := formatfloat('###############0.00',valor4+valor5);
       posicao := pos(',',forma_pgto4); if posicao > 0 then delete(forma_pgto4,posicao,1); forma_pgto4 := frmprincipal.texto_justifica(forma_pgto4,12,'0','E');
       forma_pgto4 := '03'+forma_pgto4;
    end;
    if valor6 > 0 then
    begin
       forma_pgto6 := formatfloat('###############0.00',valor6);
       posicao := pos(',',forma_pgto6); if posicao > 0 then delete(forma_pgto6,posicao,1); forma_pgto6 := frmprincipal.texto_justifica(forma_pgto6,12,'0','E');
       forma_pgto6 := '06'+forma_pgto6;
    end;

    if valor7 > 0 then
    begin
       forma_pgto7 := formatfloat('###############0.00',valor7);
       posicao := pos(',',forma_pgto7); if posicao > 0 then delete(forma_pgto7,posicao,1); forma_pgto7 := frmprincipal.texto_justifica(forma_pgto7,12,'0','E');
       forma_pgto7 := '07'+forma_pgto7;
    end;

    StrPCopy(Comando,#27+'.10'+forma_pgto1+forma_pgto2+forma_pgto4+forma_pgto6+forma_pgto7+'}');
    RETORNO := ECFWrite(Comando);
    ECFRead(STATUS,512);
    result := analisa_retorno(STATUS,'SWEDA');
  end;




end;

function ecf_identifica_consumidor(ecf:string;nome:string;endereco:string;cpf:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_IdentificaConsumidor( pchar( nome ), pchar(endereco ), pchar( cpf ) );
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
end;
function ecf_termina_fechamento(ecf:string;mensagem:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_TerminaFechamentoCupom( pchar( mensagem ) );
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno :=  Bematech_FI_TerminaFechamentoCupom(MENSAGEM);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno :=  ECF_TerminaFechamentoCupom(MENSAGEM);
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;




end;
function ecf_termina_fechamento_especial(ecf:string;cliente:string;endereco:string;cpf:string):string;
var operador : string;
begin
  if ecf = 'SWEDA' then
  begin
    cliente := 'Cliente..: '+frmprincipal.texto_justifica(cliente,29,' ','D');
    cpf :=     'CPF/CNPJ.: '+frmprincipal.texto_justifica(CPF,29,' ','D');
    endereco :='Endereco.: '+frmprincipal.texto_justifica(endereco,29,' ','D');
    operador := frmprincipal.texto_justifica(FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING + ' '+ FRMMODULO.QRCAIXA_OPERADOR.FIELDBYNAME('NOME').ASSTRING,29,' ','D');

    application.ProcessMessages;


    StrPCopy(Comando,#27+'.12NN0'+cliente+'0'+cpf+'}');
    
        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');

  end;
  if ecf = 'URANO' then
  begin
    retorno := IdComprador(cliente,'0',cpf,endereco,'----------------------------------------------------');
    if   analisa_retorno(inttostr(retorno),'URANO') = 'OK' then
    begin
      retorno := FechaCupom('');
      result := analisa_retorno(inttostr(retorno),'URANO');
      AvancaLinhas('7');
    end
    else
      result := 'ERRO';

  end;

end;


function ecf_cancela_item(ecf:string;item:string):string;
begin
  if ecf = 'DARUMA' then
  begin
    Daruma_FI_CancelaItemGenerico(pchar(item));
    SetLength(RET,4);
    Daruma_FI_RetornaErroExtendido(ret);
    RESULT := ANALISA_RETORNO(RET,'DARUMA');
  end;
  if ecf = 'SWEDA' then
  begin
    StrPCopy(Comando,#27+'.04'+ITEM+'}');
        RETORNO := ECFWrite(Comando);
        ECFRead(STATUS,512);
        result := analisa_retorno(STATUS,'SWEDA');

  end;
  if ecf =  'BEMATECH' then
  begin
    iRetorno := Bematech_FI_CancelaItemGenerico( ITEM );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf =  'SWEDA_MFD' then
  begin
    iRetorno := ECF_CancelaItemGenerico( ITEM );
    continuacao := 'OK';
    Analisa_iRetorno();
    Retorno_Impressora();
    result := continuacao;
  end;
  if ecf = 'URANO' then
  begin
    retorno := CancelaItem('(-)',item);
    result := analisa_retorno(inttostr(retorno),'URANO');
  end;



end;

function analisa_retorno(retorno:string;ecf:string):string;
VAR RT : STRING;
TEXTO : PANSICHAR;
begin

 texto := '';

  RT := TRIM(RETORNO);


  if ECF = 'SWEDA' then
  begin
       if copy(rt,1,2) = '.-' Then
       begin
         if (copy(rt,1,3) = '.-P') then
         begin
           texto := pansichar('N�o foi poss�vel executar o comando!'+#13+'Motivo: '+'Impressora Fiscal n�o responde.');
           APPLICATION.MESSAGEBOX(texto,'Aten��o',mb_ok+MB_ICONerror);
           RESULT := 'ERRO';
         end
         else
         begin
           texto := pansichar('N�o foi poss�vel executar o comando!'+#13+'Motivo: '+copy(rt,11,100)+'.');
           APPLICATION.MESSAGEBOX(texto,'Aten��o',mb_ok+MB_ICONerror);
           RESULT := 'ERRO';
         end;
       end
       else
       begin
         RESULT := 'OK';
       end;

  end;






 if ecf = 'URANO' Then
 begin
  case strtoint(Retorno) of
    1 : texto  := 'DLL j� inicializada.';
    2 : texto  := 'DLL n�o inicializada.';
    3 :	texto  := 'Falha no acesso a porta serial.';
    4 :	texto  := 'Falha na configura��o da porta serial.';
    5 :	texto  := 'Porta serial n�o inicializada';
    6 :	texto  := 'Falha na transmiss�o: outra transmiss�o em andamento.';
    7 :	texto  := 'Tamanho do comando muito grande para a DLL';
    8 :	texto  := 'Impressora fora de linha, desligada ou desconectada.';
    9 :	texto  := 'Falha geral na transmiss�o do comando.';
   10 : texto  := 'Timeout na recep��o da resposta da impressora.';
   11 : texto  := 'Falha geral na recep��o da resposta.';
   12 : texto  := 'Falha no acesso aos buffers internos da porta serial.';
   13 : texto  := 'Erro de frame na comunica��o';
   14 : texto  := 'Erro de overrun na comunica��o';
   15 : texto  := 'Break detectado na comunica��o';
   16 : texto  := 'Erro de acesso a porta serial durante a recep��o';
   17 : texto  := 'Tamanho do buffer de recep��o da porta serial insuficiente para recep��o dos dados.';
   18 : texto  := 'Erro de paridade na comunica��o';
   19 : texto  := 'Tamanho do buffer de transmiss�o da porta serial insuficiente para comunica��o.';
   20 : texto  := 'Falha no acesso ao arquivo referenciado como par�metro';
   21 : texto  := 'Banco inexistente';
   22 : texto  := 'Coordenada(s) do campo Valor inv�lida(s).';
   23 : texto  := 'Coordenada(s) do campo Extenso inv�lida(s).';
   24 : texto  := 'Coordenada(s) do campo Favorecido inv�lida(s).';
   25 : texto  := 'Coordenada(s) do campo Cidade inv�lida(s).';
   26 : texto  := 'Coordenada(s) do campo Mensagem inv�lida(s).';
   27 : texto  := 'Coordenada(s) do campo Data inv�lida(s).';
   28 : texto  := 'Valor do campo Espa�amento inv�lido.';
   29 : texto  := 'Erro interno na comunica��o com a impressora.';
   34 : texto  := 'Cancelamento invalido';
   35 : texto  := 'Abertura do dia invalida';
   36 : texto  := 'Aliquota nao carregada';
   37 : texto  := 'Erro na gravacao da memoria fiscal';
   38 : texto  := 'Numero Maximo de Troca de Estabelecimento alcancado';
   39 : texto  := 'Impressora em intervencao tecnica';
   40 : texto  := 'Memoria Fiscal desconectada';
   41 : texto  := 'Indice da Aliquota invalido';
   42 : texto  := 'Nao houve desconto anterior';
   43 : texto  := 'Desconto invalido';
   44 : texto  := 'Retorno desconhecido 44';
   45 : texto  := 'Perda da memoria RAM';
   46 : texto  := 'Comando aceito apenas em intervencao tecnica';
   47 : texto  := 'Retorno desconhecido 47';
   48 : texto  := 'Fechamento nao realizado';
   49 : texto  := 'Fechamento ja realizado';
   50 : texto  := 'Comando fora de sequencia';
   51 : texto  := 'Comando inexistente';
   52 : texto  := 'Impressora retornou timeout RX';
   53 : texto  := 'Retorno desconhecido 53';
   54 : texto  := 'Valor de desconto invalido';
   55 : texto  := 'Aliquota indisponivel';
   56 : texto  := 'Troca de proprietario apenas apos fechamento';
   57 : texto  := 'Memoria Fiscal cheia';
   58 : texto  := 'Troca de aliquota apenas apos fechamento';
   59 : texto  := 'Codigo de mercadoria invalida';
   60 : texto  := 'Cabecalho ja impresso';
   61 : texto  := 'Acerto de horario de verao somente apos fechamento';
   62 : texto  := 'Data nao pode ser menor que a data da ultima reducao gravada na MF';
   63 : texto  := 'Falta papel para autenticacao';
   64 : texto  := 'Memoria fiscal nao apagada';
   65 : texto  := 'Desconto no subtotal invalido';
   66 : texto  := 'Indice invalido';
   67 : texto  := 'Forma de pagamento indisponivel';
   68 : texto  := 'Troca de forma de pagamento apenas apos fechamento';
   69 : texto  := 'Limite de autenticacao alcancado';
   70 : texto  := 'Finalizadora nao habilitada';
   71 : texto  := 'Papel perto do fim';
   72 : texto  := 'Campo do cheque invalido';
   73 : texto  := 'Insc Estadual ou CGC invalido';
   74 : texto  := 'Montante da operacao igual a zero';
   75 : texto  := 'Falta Memoria RAM';
   76 : texto  := 'Sem cartucho instalado';
   77 : texto  := 'Sem resposta';
   78 : texto  := 'Dados do cliche somente devem ser carregados apos CGC';
   79 : texto  := 'CPF/CGC invalido';
   80 : texto  := 'Cartucho inexistente ou invalido';
   81 : texto  := 'Cartucho apenas para leitura';
   82 : texto  := 'Mecanismo nao selecionado';
   83 : texto  := 'Sequencia pagamento invalida';
   84 : texto  := 'Pagamento incompleto';
   85 : texto  := 'Troca de dados cadastrais apenas apos fechamento';
   86 : texto  := 'Troca CGC apenas apos fechamento';
   87 : texto  := 'Cupom Totalizado em Zero';
   88 : texto  := 'Retorno desconhecido 88';
   89 : texto  := 'Nao vinculado indisponivel';
   90 : texto  := 'Troca de doc nao vinculado apenas apos o fechamento';
   91 : texto  := 'Erro na gravacao da E2PROM';
   92 : texto  := 'Nao vinculado invalido: somente entrada ou somente saida';
   93 : texto  := 'Retorno desconhecido 93';
   94 : texto  := 'Retorno desconhecido 94';
   95 : texto  := 'Retorno desconhecido 95';
   96 : texto  := 'Retorno desconhecido 96';
   97 : texto  := 'Retorno desconhecido 97';
   98 : texto  := 'Retorno desconhecido 98';
   99 : texto  := 'Retorno desconhecido 99';
  100 : texto  := 'Retorno desconhecido 100';
  101 : texto  := 'Retorno desconhecido 101';
  102 : texto  := 'Retorno desconhecido 102';
  103 : texto  := 'Retorno desconhecido 103';
  104 : texto  := 'Retorno desconhecido 104';
  105 : texto  := 'Valor do relogio invalido';
  106 : texto  := 'Acerto horario de verao apenas uma vez ao dia';
  107 : texto  := 'Data invalida';
  108 : texto  := 'Cartucho logger cheio';
  109 : texto  := 'Impressora nao esta pronta p/ imprimir (tampa aberta)';
  110 : texto  := 'Descricao invalida';
  111 : texto  := 'Sem papel';
  112 : texto  := 'Quantidade invalida';
  113 : texto  := 'Valor do item invalido';
  114 : texto  := 'Problema relogio';
  115 : texto  := 'Cheque nao posicionado';
  116 : texto  := 'Caracter invalido';
  117 : texto  := 'Numero de operacoes excedidas';
  118 : texto  := 'Retorno desconhecido 118';
  119 : texto  := 'Necessita troca de usu�rio';
  120 : texto  := 'Erro desconhecido ';
  121 : texto  := 'Impressora retornou caracter desconhecido ';
  200 : texto  := 'Em per�odo de venda';
  201 : texto  := 'Em venda de item';
  202 : texto  := 'Interven��o t�cnica';
  203 : texto  := 'Em pagamento';
  204 : texto  := 'Em comercial';
  205 : texto  := 'Dia fechado';
  206 : texto  := 'Em acr�scimo/desconto subtotal';
  207 : texto  := 'Fechamento n�o realizado';
  208 : texto  := 'Perda da mem�ria RAM';
  209 : texto  := 'Papel perto do fim';
  210 : texto  := 'Mem�ria Fiscal desconectada';
  211 : texto  := 'Sem Cartucho';
  212 : texto  := 'Cartucho apenas para leitura';
  213 : texto  := 'Mecanismo n�o configurado';
  214 : texto  := 'Cartucho Virgem';
  215 : texto  := 'Fim papel';
  216 : texto  := 'Em N�o Vinculado Entrada';
  217 : texto  := 'Em N�o Vinculado Sa�da';
  218 : texto  := 'Em Relat�rio Gerencial';
  219 : texto  := 'Rel�gio inconsistente';
  220 : texto  := 'Overflow COO';
  end;
   IF TEXTO = pansichar('') THEN
   BEGIN
    RESULT := 'OK';
    END
   ELSE
   BEGIN
    texto := pansichar('N�o foi poss�vel executar o comando!'+#13+'Motivo: '+texto+'.');
    APPLICATION.MESSAGEBOX(texto,'Aten��o',mb_ok+MB_ICONerror);
    RESULT := 'ERRO';
   END;

  end;





















 IF ECF = 'DARUMA' then
 begin
   TEXTO := pansichar('');
   if RT = '00' then TEXTO :=  'IF em modo Manuten��o. Foi ligada sem o Jumper de Opera��o';
   if RT = '01' then TEXTO :=  'M�todo dispon�vel somente em modo Manuten��o';
   if RT = '02' then TEXTO :=  'Erro durante a grava��o da Mem�ria Fiscal';
   if RT = '03' then TEXTO :=  'Mem�ria Fiscal esgotada';
   if RT = '04' then TEXTO :=  'Erro no rel�gio interno da IF';
   if RT = '05' then TEXTO :=  'Falha mec�nica na IF';
   if RT = '06' then TEXTO :=  'Erro durante a leitura da Mem�ria Fiscal';
   if RT = '07' then TEXTO :=  'Metodo permitido apenas em modo fiscal (IF sem jmper)';
   if rT = '10' then TEXTO :=  'Documento sendo emitido';
   if RT = '11' then TEXTO :=  'Documento n�o foi aberto';
   if RT = '12' then TEXTO :=  'N�o existe documento a cancelar';
   if RT = '13' then TEXTO :=  'D�gito n�o num�rico n�o esperado, foi encontrado nos Par�metros do M�todo';
   if RT = '14' then TEXTO :=  'N�o h� mais mem�ria dispon�vel para esta opera��o';
   if RT = '15' then TEXTO :=  'Item a cancelar n�o foi encontrado';
   if RT = '16' then TEXTO :=  'Erro de sintaxe no m�todo';
   if RT = '17' then TEXTO :=  '"Estouro" de capacidade num�rica (overflow)';
   if RT = '18' then TEXTO :=  'Selecionado totalizador tributado com al�quota de imposto n�o definida';
   if RT = '19' then TEXTO :=  'Mem�ria Fiscal vazia';
   if RT = '20' then TEXTO :=  'N�o existem campos que requerem atualiza��o';
//   if RT = '21' then TEXTO :=  'Detectado proximidade do final da bobina de papel';
   if RT = '22' then TEXTO :=  'Cupom de Redu��o Z j� foi emitido. IF inoperante at� 0:00h do pr�ximo dia';
   if RT = '23' then TEXTO :=  'Redu��o Z do per�odo anterior ainda pendente. IF inoperante';
   if RT = '24' then TEXTO :=  'Valor de desconto ou acr�scimo inv�lido (limitado a 100%)';
   if RT = '25' then TEXTO :=  'Car�ctere inv�lido foi encontrado nos Par�metros do M�todos';
   if RT = '26' then TEXTO :=  'M�doto n�o pode ser executado';
   if RT = '27' then TEXTO :=  'Nenhum perif�rico conectado a interface auxiliar';
   if RT = '28' then TEXTO :=  'Foi encontrado um campo em zero';
   if RT = '29' then TEXTO :=  'Documento anterior n�o foi Cupom Fiscal. N�o pode emitir Cupom Adicional';
   if RT = '30' then TEXTO :=  'Acumulador N�o Fiscal selecionado n�o � v�lido ou n�o est� dispon�vel';
   if RT = '31' then TEXTO :=  'N�o pode autenticar. Excedeu 4 repeti��es ou n�o � permitida nesta fase';
   if RT = '32' then TEXTO :=  'Cupom adicional inibido por configura��o';
   if RT = '35' then TEXTO :=  'Rel�gio Interno Inoperante';
   if RT = '36' then TEXTO :=  'Vers�o do firmware gravada na Mem�ria Fiscal n�o � a esperada';
   if RT = '37' then TEXTO :=  'Al�quota de imposto informada j� est� carregada na mem�ria';
   if RT = '38' then TEXTO :=  'Forma de pagamento selecionada n�o � v�lida';
   if RT = '39' then TEXTO :=  'Erro na seq��ncia de fechamento do Cupom Fiscal';
   if RT = '40' then TEXTO :=  'IF em Jornada Fiscal. Altera��o da configura��o n�o � permitida';
   if RT = '41' then TEXTO :=  'Data inv�lida. Data fornecida � inferior � �ltima gravada na Mem�ria Fiscal';
   if RT = '42' then TEXTO :=  'Leitura X inicial ainda n�o foi emitida';
   if RT = '43' then TEXTO :=  'N�o pode emitir Comprovante Vinculado';
   if RT = '44' then TEXTO :=  'Cupom de Or�amento n�o permitido para este estabelecimento';
   if RT = '45' then TEXTO :=  'Campo obrigat�rio em branco';
   if RT = '48' then TEXTO :=  'N�o pode estornar';
   if RT = '49' then TEXTO :=  'Forma de pagamento indicada n�o encontrada';
   if RT = '50' then TEXTO :=  'Fim da bobina de papel';
   if RT = '51' then TEXTO :=  'Nenhum usu�rio cadastrado na MF';
   if RT = '52' then TEXTO :=  'MF n�o instalada ou n�o inicializada';
   if RT = '56' then TEXTO :=  'Documento j� aberto';
   if RT = '61' then TEXTO :=  'Queda de energia durante a emiss�o de Cupom Fiscal';
   if RT = '76' then TEXTO :=  'Desconto em ISS n�o permitido neste ECF (a programa��o dever� ser feita por meio de interven��o t�cnica e caso o Estado permita)';
   if RT = '77' then TEXTO :=  'Acr�scimo em IOF inibido';
   if RT = '80' then TEXTO :=  'Perif�rico na interface auxiliar n�o pode ser reconhecido';
   if RT = '81' then TEXTO :=  'Solicitado preenchimento de cheque de banco desconhecido';
   if RT = '82' then TEXTO :=  'Solicitado transmiss�o de mensagem nula pela interface auxiliar';
   if RT = '83' then TEXTO :=  'Extenso do cheque n�o cabe no espa�o dispon�vel';
   if RT = '84' then TEXTO :=  'Erro na comunica��o com a interface auxiliar';
   if RT = '85' then TEXTO :=  'Erro no d�gito verificador durante comunica��o com a PertoCheck';
   if RT = '86' then TEXTO :=  'Falha na carga de geometria de folha de cheque';
   if RT = '87' then TEXTO :=  'Par�metros do M�todo: inv�llido para o campo de data do cheque';
   if RT = '90' then TEXTO :=  'Sequ�ncia de valida��o de n�mero de s�rie inv�lida';
   if RT = '180' then TEXTO :=  'Mensagem do aplicativo n�o programada. (Esta mensagem n�o � opcional e sim uma exig�ncia da legisla��o e dever� ser programada para que o ECF seja liberado para a emiss�o de documentos fiscais';
   if RT = '181' then TEXTO :=  'N�o � possivel realizar Redu��o Z entre 00:00am e 02:00am (Meia Noite e Duas da Manh�) nesta vers�o de firmware da FS600 (est� limita��o existe nas vers�es 1.1 pra baixo';
   if RT = '999' then TEXTO :=  'Impressora Fiscal n�o responde. Verifique se est� ligada ou o cabo est� conectado corretamente';
   IF TEXTO = pansichar('') THEN
   BEGIN
    RESULT := 'OK';
    END
   ELSE
   BEGIN
    texto := pansichar('N�o foi poss�vel executar o comando!'+#13+'Motivo: '+texto+'.');
    APPLICATION.MESSAGEBOX(texto,'Aten��o',mb_ok+MB_ICONerror);
    RESULT := 'ERRO';
   END;
 end;



end;
// **********************************************************************
// -------------------- Analisa a Vari�vel iRetorno ---------------------

Procedure Analisa_iRetorno();
Begin
  if iRetorno = 0 then BEGIN Application.MessageBox( 'Erro de Comunica��o !', 'Erro',MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -1 THEN BEGIN
    Application.MessageBox( 'Erro de Execu��o na Fun��o. Verifique!', 'Erro', MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -2  THEN BEGIN
    Application.MessageBox( 'Par�metro Inv�lido !', 'Erro',MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -3  THEN BEGIN
    Application.MessageBox( 'Al�quota n�o programada !', 'Aten��o',MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -4 THEN BEGIN
    Application.MessageBox( 'Arquivo BemaFI32.INI n�o encontrado. Verifique!', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -5 THEN BEGIN
    Application.MessageBox( 'Erro ao Abrir a Porta de Comunica��o', 'Erro',
                                MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -6 THEN BEGIN
    Application.MessageBox( 'Impressora Desligada ou Desconectada', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -7 THEN BEGIN
    Application.MessageBox( 'Banco N�o Cadastrado no Arquivo BemaFI32.ini', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  If iRetorno = -8 THEN BEGIN
    Application.MessageBox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt', 'Erro',
                                MB_IconError + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -18 THEN BEGIN
    Application.MessageBox( 'N�o foi poss�vel abrir arquivo INTPOS.001 !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -19 THEN BEGIN
    Application.MessageBox( 'Par�metro diferentes !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -20 THEN BEGIN
    Application.MessageBox( 'Transa��o cancelada pelo Operador !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -21 THEN BEGIN
    Application.MessageBox( 'A Transa��o n�o foi aprovada !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -22 THEN BEGIN
    Application.MessageBox( 'N�o foi poss�vel terminal a Impress�o !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -23 THEN BEGIN
    Application.MessageBox( 'N�o foi poss�vel terminal a Opera��o !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -24 THEN BEGIN
    Application.MessageBox( 'Forma de pagamento n�o programada.', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -25 THEN BEGIN
    Application.MessageBox( 'Totalizador n�o fiscal n�o programado.', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -26 THEN BEGIN
    Application.MessageBox( 'Transa��o j� Efetuada !', 'Aten��o',
                                MB_IconInformation + MB_OK); continuacao := 'ERRO'; END;

  if iRetorno = -28 THEN BEGIN
    Application.MessageBox( 'N�o h� Informa��es para serem Impressas !', 'Aten��o',
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
       Application.MessageBox( 'A Impressora retornou NAK. O programa ser� abortado!', 'Erro', MB_IconError + MB_OK );
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
    IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  END;
    IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  APPLICATION.MESSAGEBOX('Erro no rel�gio!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  APPLICATION.MESSAGEBOX('Impressora em ERRO!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   APPLICATION.MESSAGEBOX('CMD n�o iniciado com ESC','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   APPLICATION.MESSAGEBOX('Comando Inexistente','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   APPLICATION.MESSAGEBOX('Cupom Aberto','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   APPLICATION.MESSAGEBOX('N� de Par�metros Inv�lidos!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;

    // Verifica ST2
    IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; APPLICATION.MESSAGEBOX('Tipo de Par�metro Inv�lido','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  APPLICATION.MESSAGEBOX('Mem�ria Fiscal Lotada','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  APPLICATION.MESSAGEBOX('CMOS n�o Vol�til!','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  APPLICATION.MESSAGEBOX('Al�quota N�o Programada','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   APPLICATION.MESSAGEBOX('Al�quotas lotadas','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   APPLICATION.MESSAGEBOX('Cancelamento � Permitido','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   APPLICATION.MESSAGEBOX('CGC/IE n�o Programados','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
    IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   APPLICATION.MESSAGEBOX('Comando n�o Executado','Erro',mb_ok+mb_iconerror); continuacao := 'ERRO';END;
  End;

  frmPrincipal.Refresh;
End;

end.





