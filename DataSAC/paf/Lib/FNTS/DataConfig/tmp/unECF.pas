unit unECF;

interface

uses
  Windows,
  SysUtils,
  Controls,                                                                        
  messages,
  Forms,
  Dialogs,
  Classes,
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

function Executa_programa(const FileName, Params: string; const WindowState: Word): boolean;
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
function cECF_Numero_Cupom(COD_ECF:Integer):string;
function cECF_COO_Nao_Fiscal(COD_ECF:Integer):string;
function cECF_Numero_Contador_Cupom(COD_ECF:Integer):string;
function cECF_Numero_Contador_Relatorio_Gerencial(COD_ECF:integer):string;
function cECF_Numero_Contador_Operacao_NF(COD_ECF:integer):string;
function cECF_Numero_Contador_Comprovante_CD(COD_ECF:integer):string;
function cECF_Numero_Contador_Gerencial(COD_ECF:integer):string;
function cECF_Data_Hora(COD_ECF:Integer):string;
function cECF_Download(COD_ECF:Integer;tipo:string;Inicio:String;Fim:string):string;
function cECF_Registro60A(COD_ECF:Integer):string;
function cECF_Registro60M(COD_ECF:Integer):string;
function cECF_Le_Formas_Pgto(COD_ECF:Integer):string;
function cECF_Arquivo_Fiscal_CAT52(COD_ECF:integer;tipo,inicio,fim:string):string;
function cECF_Marca_ECF(COD_ECF:integer):string;
function cECF_Modelo_ECF(COD_ECF:integer):string;
function cECF_Tipo_ECF(COD_ECF:integer):string;
function cECF_MF_Adicional(COD_ECF:integer):string;
function cECF_Versao_SB(COD_ECF:integer):string;
function cECF_Data_Hora_SB(COD_ECF:integer):string;
function cECF_Total_Cupom(COD_ECF:integer):real;
function cECF_Verifica_Z_automatico(COD_ECF:integer):string;
function cECF_Verifica_Horario_Verao(COD_ECF:integer):string;
function cECF_Verifica_Aliquotas(COD_ecf:integer):string;
function cECF_Verifica_Totalizadores_NF(COD_ECF:integer):string;
function cECF_Data_Movimento(cod_ECF:integer):string;
function cECF_Cupom_Fiscal_Aberto(cod_ECF:integer):string;
function cECF_Grande_Total(cod_ECF:integer):string;

// Informacoes ref. reducao Z
function cECF_ReducaoZ_Contador_CRZ(COD_ECF:integer):string;
function cECF_ReducaoZ_Contador_COO(COD_ECF:integer):string;
function cECF_ReducaoZ_Contador_CRO(COD_ECF:integer):string;
function cECF_ReducaoZ_DataHora(COD_ECF:integer):string;
function cECF_ReducaoZ_Data_Movimento(COD_ECF:integer):string;
function cECF_ReducaoZ_Venda_Bruta(COD_ECF:integer):string;
function cECF_ReducaoZ_Total_ISS(COD_ECF:integer):string;
function cECF_ReducaoZ_Totalizador_Geral(COD_ECF:integer):string;
function cECF_ReducaoZ_Totalizador_Parcial(COD_ECF:Integer):string;
// Relatorios
function cECF_LeituraX(COD_ECF:Integer):string;
function cECF_ReducaoZ(COD_ECF:Integer):string;
function cECF_Leitura_Memoria_Fiscal(COD_ECF:INTEGER;
                                     Tipo:STRING; // DATA ou CRZ
                                     Analitica_ou_Sintetica : STRING; // A ou S
                                     Ecf_ou_Arquivo : String; // ECF ou ARQUIVO
                                     Inicio:string;Fim:STRING):STRING;
// Cupom
function cECF_Abre_Cupom(COD_ECF:Integer;CPF,Nome,Endereco:String):string;
function cECF_Vende_item(COD_ECF:Integer;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;valor_acrescimo:real;tipo_desconto_acrescimo:string;total:real):string;
function cECF_Inicia_Fechamento(COD_ECF:Integer;Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;
function cECF_Forma_Pgto(COD_ECF:Integer;forma_pgto:string;valor:real):string;
function cECF_Termina_Fechamento(COD_ECF:Integer;mensagem:string):string;
function cECF_Fecha_Cupom_Resumido(COD_ECF:Integer;forma_pgto:string;mensagem:string):string;
function cECF_Cancela_Cupom(COD_ECF:Integer):string;
function cECF_Cancela_Item(COD_ECF:Integer;Item:string):string;
// Operações Não Fiscal
function cECF_Abre_Gerencial(COD_ECF:Integer;Texto:String):string;
function cECF_Usa_Gerencial(COD_ECF:Integer;Texto:String):string;
function cECF_Fecha_Gerencial(COD_ECF:Integer):string;
function cECF_Abre_CNFV(COD_ECF:Integer;Forma_Pgto:string;Valor:real;Numero_Cupom:string):string;
function cECF_Usa_CNFV(COD_ECF:Integer;Texto:string):string;
function cECF_Fecha_CNFV(COD_ECF:Integer):string;
function cECF_Sangria(COD_ECF:Integer;Valor:real):string;
function cECF_Suprimento(COD_ECF:Integer;Valor:real;Forma_Pgto:String):string;
function cECF_Recebimento(COD_ECF:Integer;Totalizador:string;Valor:real;Forma_Pgto:string):string;
// Programacao
function cECF_Programa_Horario_Verao(COD_ECF:integer):string;
function cECF_Programa_Aliquota(COD_ECF:integer;aliquota:real;ICMS_ou_ISS:string):string;
function cECF_Programa_Totalizador(COD_ECF:Integer;Indice:integer;descricao:string):string;
function cECF_Programa_Forma_Pgto(COD_ECF:Integer;Forma_Pgto:string;Vinculado:string):string;
function cECF_Daruma_Libera_Porta(SIM_NAO:STRING):string;
function cECF_Programa_Z_Automatico(COD_ECF:INTEGER;SIM_NAO:string):string;
// Outros
function cECF_Status_Gaveta(COD_ECF:integer):string;
function cECF_Abre_Gaveta(COD_ECF:integer):string;
function cECF_Desliga_Janelas(COD_ECF:integer):string;
(******************************************************************************)


implementation

uses funcoes, principal;



(************************** IMPRESSORAS IMPLEMENTADAS *************************
1  - Bematech - Todos os Modelos
2  - Daruma


(**************************        bematech           *************************)
// Retornos
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
// Informacoes e Status
function Bematech_FI_NumeroSerieMFD(NumeroSerie : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorCupomFiscalMFD(CuponsEmitidos : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorRelatoriosGerenciaisMFD (Relatorios : String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroOperacoesNaoFiscais( NumeroOperacoes: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ContadorComprovantesCreditoMFD(Comprovantes : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaRelatorioGerencialMFD(Relatorios : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaImpressoraLigada: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_VerificaImpressoraLigada';
function Bematech_FI_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FormatoDadosMFD( ArquivoOrigem : String;ArquivoDestino  : String;TipoFormato : String; TipoDownload : String;ParametroInicial: String; ParametroFinal  : String; UsuarioECF : String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Analitico';
function Bematech_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_RelatorioTipo60Mestre';
function Bematech_FI_MarcaModeloTipoImpressoraMFD(Marca, Modelo, Tipo : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, dataSWBasico, MFAdicional:string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VersaoFirmwareMFD(VersaoFirmware : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DadosUltimaReducaoMFD(DadosReducao : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaFormasPagamentoMFD(FormasPagamento : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendaBruta( Valor:string ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_MapaResumoMFD:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_MapaResumoMFD';
function Bematech_FI_VerificaAliquotasIss( Flag: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaReducaoZAutomatica( Flag:SHORT ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FlagsFiscais( Var Flag: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataMovimento( Data: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
// Ato Cotepe
function Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(FlagRetorno : string): Integer; StdCall; External 'BEMAFI32.DLL';
function BemaGeraRegistrosTipoE( cArqMFD: string; cArqTXT: string; cDataInicial: string; cDataFinal: string; cRazao: string; cEndereco: string; cPAR1: string; cCMD: string; cPAR2: string; cPAR3: string; cPAR4: string; cPAR5: string; cPAR6: string; cPAR7: string; cPAR8: string; cPAR9: string; cPAR10: string; cPAR11: string; cPAR12: string; cPAR13: string; cPAR14: string ): Integer; StdCall; External 'BemaMFD2.dll';
function Bematech_FI_RetornoImpressoraMFD( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer; Var ST3: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
// Relatorios Gerenciais
function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_LeituraMemoriaFiscalDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'BEMAFI32.DLL';

function Bematech_FI_GeraRegistrosCAT52MFDEx(Arquivo: String; Data: String;cArqDestino:string): Integer; StdCall; External 'BEMAFI32.DLL';
// Cupom
function Bematech_FI_AbreCupomMFD(CGC: string; Nome: string; Endereco : string): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; ValorUnitario: String; Quantidade: String; Acrescimo: String; Desconto: String; IndiceDepartamento: String; UnidadeMedida: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaCupomResumido( FormaPagamento: String; Mensagem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
// Operações Não Fiscal
function Bematech_FI_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Sangria( Valor: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_FechaRelatorioGerencial: Integer; StdCall; External 'BEMAFI32.DLL';

// Configuração / Programação
function Bematech_FI_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaHorarioVerao: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_ProgramaFormaPagamentoMFD(FormaPagto, OperacaoTef: String) : Integer; StdCall; External 'BEMAFI32.DLL';


// Outros
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';


(**************************        daruma             *************************)
//Inicializacao
function Daruma_FI_AbrePortaSerial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaPortaSerial: Integer; StdCall; External 'Daruma32.dll'
// Retornos
function Daruma_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornaErroExtendido( ErroExtendido: String ): Integer; StdCall; External 'Daruma32.dll';
// Informacoes e Status
function Daruma_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaImpressoraLigada: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FIMFD_DownloadDaMFD(CoInicial: String; CoFinal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioTipo60Analitico: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Analitico';
function Daruma_FI_RelatorioTipo60Mestre: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_RelatorioTipo60Mestre';
function Daruma_FI_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RetornaInformacao( Indice: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_SaldoAPagar( SaldoAPagar: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_RetornaValor( Produto: String; Chave: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaHorarioVerao( HoraioVerao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RetornoAliquotas( Aliquotas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaTotalizadoresNaoFiscais( Totalizadores: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataMovimento( Data: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_StatusCupomFiscal( StatusCupomFiscal: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_GrandeTotal( GrandeTotal: String ): Integer; StdCall; External 'Daruma32.dll';
// Relatorios Gerenciais
function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_MFD_LeituraMFCompleta( Valor: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_MapaResumo: Integer; StdCall; External 'Daruma32.dll' Name 'Daruma_FI_MapaResumo';
// Cupom
function Daruma_FI_AbreCupom( CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico( Numero_Item: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IdentificaConsumidor( Nome_do_Consumidor: String; Endereco: String; CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaCupomResumido( Descricao_da_Forma_de_Pagamento: String; Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
// Operações Não Fiscal
function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RecebimentoNaoFiscal( Indice_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';

// Configuração / Programação
function Daruma_FI_ProgramaAliquota( Valor_Aliquota: String; Tipo_Aliquota: Integer ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaHorarioVerao: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms( Indice_do_Totalizador: Integer; Nome_do_Totalizador: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_AlteraRegistry( Chave: String; ValorChave: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_ZAutomatica( ZAutomatica: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgRedZAutomatico( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ProgramaFormasPagamento( Descricao_das_Formas_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';

// Outros
function Daruma_FI_AcionaGaveta: Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_VerificaEstadoGaveta( Var Estado_Gaveta: Integer ): Integer; StdCall; External 'Daruma32.dll';
// RSA
function Daruma_RSA_CarregaChavePrivada_Arquivo(Arquivo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_RetornaChavePublica(N: String; E: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CodificaInformacao(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CodificaInformacao_Hexa(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao_Hexa(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string ; sMD5: String; sAssinaturaEletronica: string): Integer; StdCall; External 'Daruma32.dll';


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

(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)


function Executa_programa(const FileName, Params: string;
const WindowState: Word): boolean;
var
SUInfo: TStartupInfo;
ProcInfo: TProcessInformation;
CmdLine: string;
begin
  { Coloca o nome do arquivo entre aspas. Isto é necessário devido aos espaços contidos em nomes longos }
  CmdLine := '"' + Filename + '"' + Params;
  FillChar(SUInfo, SizeOf(SUInfo), #0);
  with SUInfo do begin
  cb := SizeOf(SUInfo);
  dwFlags := STARTF_USESHOWWINDOW;
  wShowWindow := WindowState;
  end;
  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
  CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
  PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);
  { Aguarda até ser finalizado }
  if Result then begin
  WaitForSingleObject(ProcInfo.hProcess, INFINITE);
  { Libera os Handles }
  CloseHandle(ProcInfo.hProcess);
  CloseHandle(ProcInfo.hThread);
  end;
end;

// Retorno de Comunicacao com ECF
function cECF_Analisa_Retorno(COD_ECF:Integer):string;
begin

  if COD_ECF = 1 then
  begin
    Result := 'OK';
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
  end;


  if COD_ECF = 2 then
  begin
    if iRetorno = 1 then
      Result := 'OK'
    else
      Result := 'Erro de Comunicação!';
  end;


  if COD_ECF = 3 then
  begin
    Result := 'OK';
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
  end;
  if COD_ECF = 4 then
  begin
    Result := 'OK';
    if iRetorno =  0  THEN  Result := 'Erro de Comunicação!';
    If iRetorno = -1  THEN  Result := 'Erro de Execução na Função. Verifique!';
    if iRetorno = -2  THEN  Result := 'Parâmetro Inválido!';
    if iRetorno = -3  THEN  Result := 'Alíquota não programada!' ;
    If iRetorno = -4  THEN  Result := 'Arquivo ELGIN.INI não encontrado. Verifique!';
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
  end;
  if COD_ECF = 5 then
  begin
    if iRetorno <  0  THEN  Result := 'Erro de Comunicação!' else Result := 'OK';
  end;
end;


// Retorno de tratamento do comando
function cECF_Retorno_Impressora(COD_ECF:Integer):String;
var Mensagem : string;
sErro : string;
begin
  if COD_ECF = 1 then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Bematech_FI_RetornoImpressora(iACK,iST1,iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    BEGIN
      // Verifica ST1
      IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'END;
      IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  END;
      IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  Mensagem := Mensagem+' '+ 'Erro no relógio!'END;
      IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'END;
      IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'END;
      IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'END;
      IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto' END;
      IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'END;

      // Verifica ST2
      IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'END;
      IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'END;
      IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'END;
      IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'END;
      IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'END;
      IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'END;
      IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'END;
      IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'END;
    End;
    if Mensagem = '' then
      Result := 'OK'
    else
      Result := Mensagem;
  end;

  if cod_ECF = 2 then
  begin
   iACK := 0; iST1 := 0; iST2 := 0;
   IRetorno := Daruma_FI_RetornoImpressora(iACK,iST1,iST2);
   SetLength(sErro,4);
   IRetorno := Daruma_FI_RetornaErroExtendido(sErro);

   sErro := TrimLeft(TrimRight(serro));

   Mensagem := '';
   if sErro = '00' then Mensagem :=  'IF em modo Manutenção. Foi ligada sem o Jumper de Operação.';
   if sErro = '01' then Mensagem :=  'Método disponível somente em modo Manutenção.';
   if sErro = '02' then Mensagem :=  'Erro durante a gravação da Memória Fiscal.';
   if sErro = '03' then Mensagem :=  'Memória Fiscal esgotada.';
   if sErro = '04' then Mensagem :=  'Erro no relógio interno da IF.';
   if sErro = '05' then Mensagem :=  'Falha mecânica na IF.';
   if sErro = '06' then Mensagem :=  'Erro durante a leitura da Memória Fiscal.';
   if sErro = '07' then Mensagem :=  'Metodo permitido apenas em modo fiscal (IF sem jmper).';
   if sErro = '10' then Mensagem :=  'Documento sendo emitido.';
   if sErro = '11' then Mensagem :=  'Documento não foi aberto.';
   if sErro = '12' then Mensagem :=  'Não existe documento a cancelar.';
   if sErro = '13' then Mensagem :=  'Dígito não numérico não esperado, foi encontrado nos Parâmetros do Método.';
   if sErro = '14' then Mensagem :=  'Não há mais memória disponível para esta operação.';
   if sErro = '15' then Mensagem :=  'Item a cancelar não foi encontrado.';
   if sErro = '16' then Mensagem :=  'Erro de sintaxe no método.';
   if sErro = '17' then Mensagem :=  '"Estouro" de capacidade numérica (overflow).';
   if sErro = '18' then Mensagem :=  'Selecionado totalizador tributado com alíquota de imposto não definida.';
   if sErro = '19' then Mensagem :=  'Memória Fiscal vazia.';
   if sErro = '20' then Mensagem :=  'Não existem campos que requerem atualização.';
//   if sErro = '21' then Mensagem :=  'Detectado proximidade do final da bobina de papel';
   if sErro = '22' then Mensagem :=  'Cupom de Redução Z já foi emitido. IF inoperante até 0:00h do próximo dia.';
   if sErro = '23' then Mensagem :=  'Redução Z do período anterior ainda pendente. IF inoperante.';
   if sErro = '24' then Mensagem :=  'Valor de desconto ou acréscimo inválido (limitado a 100%).';
   if sErro = '25' then Mensagem :=  'Caráctere inválido foi encontrado nos Parâmetros do Métodos.';
   if sErro = '26' then Mensagem :=  'Médoto não pode ser executado.';
   if sErro = '27' then Mensagem :=  'Nenhum periférico conectado a interface auxiliar.';
   if sErro = '28' then Mensagem :=  'Foi encontrado um campo em zero.';
   if sErro = '29' then Mensagem :=  'Documento anterior não foi Cupom Fiscal. Não pode emitir Cupom Adicional.';
   if sErro = '30' then Mensagem :=  'Acumulador Não Fiscal selecionado não é válido ou não está disponível.';
   if sErro = '31' then Mensagem :=  'Não pode autenticar. Excedeu 4 repetições ou não é permitida nesta fase.';
   if sErro = '32' then Mensagem :=  'Cupom adicional inibido por configuração.';
   if sErro = '35' then Mensagem :=  'Relógio Interno Inoperante.';
   if sErro = '36' then Mensagem :=  'Versão do firmware gravada na Memória Fiscal não é a esperada.';
   if sErro = '37' then Mensagem :=  'Alíquota de imposto informada já está carregada na memória.';
   if sErro = '38' then Mensagem :=  'Forma de pagamento selecionada não é válida.';
   if sErro = '39' then Mensagem :=  'Erro na seqüência de fechamento do Cupom Fiscal.';
   if sErro = '40' then Mensagem :=  'IF em Jornada Fiscal. Alteração da configuração não é permitida.';
   if sErro = '41' then Mensagem :=  'Data inválida. Data fornecida é inferior à última gravada na Memória Fiscal.';
   if sErro = '42' then Mensagem :=  'Leitura X inicial ainda não foi emitida.';
   if sErro = '43' then Mensagem :=  'Não pode emitir Comprovante Vinculado.';
   if sErro = '44' then Mensagem :=  'Cupom de Orçamento não permitido para este estabelecimento.';
   if sErro = '45' then Mensagem :=  'Campo obrigatório em branco.';
   if sErro = '48' then Mensagem :=  'Não pode estornar.';
   if sErro = '49' then Mensagem :=  'Forma de pagamento indicada não encontrada.';
   if sErro = '50' then Mensagem :=  'Fim da bobina de papel.';
   if sErro = '51' then Mensagem :=  'Nenhum usuário cadastrado na MF.';
   if sErro = '52' then Mensagem :=  'MF não instalada ou não inicializada.';
   if sErro = '56' then Mensagem :=  'Documento já aberto.';
   if sErro = '61' then Mensagem :=  'Queda de energia durante a emissão de Cupom Fiscal.';
   if sErro = '76' then Mensagem :=  'Desconto em ISS não permitido neste ECF (a programação deverá ser feita por meio de intervenção técnica e caso o Estado permita).';
   if sErro = '75' then Mensagem :=  'Operação com ISS não permitida (se a sua impressora for uma FS600 ou FS2100T, então será preciso ter uma inscrição municipal gravada em sua impressora para que seja possível programar/utilizar alíquota de serviço).';
   if sErro = '77' then Mensagem :=  'Acréscimo em IOF inibido.';
   if sErro = '80' then Mensagem :=  'Periférico na interface auxiliar não pode ser reconhecido.';
   if sErro = '81' then Mensagem :=  'Solicitado preenchimento de cheque de banco desconhecido.';
   if sErro = '82' then Mensagem :=  'Solicitado transmissão de mensagem nula pela interface auxiliar.';
   if sErro = '83' then Mensagem :=  'Extenso do cheque não cabe no espaço disponível.';
   if sErro = '84' then Mensagem :=  'Erro na comunicação com a interface auxiliar.';
   if sErro = '85' then Mensagem :=  'Erro no dígito verificador durante comunicação com a PertoCheck.';
   if sErro = '86' then Mensagem :=  'Falha na carga de geometria de folha de cheque.';
   if sErro = '87' then Mensagem :=  'Parâmetros do Método: invállido para o campo de data do cheque.';
   if sErro = '90' then Mensagem :=  'Sequência de validação de número de série inválida.';
   if sErro = '180' then Mensagem :=  'Mensagem do aplicativo não programada. (Esta mensagem não é opcional e sim uma exigência da legislação e deverá ser programada para que o ECF seja liberado para a emissão de documentos fiscais.';
   if sErro = '181' then Mensagem :=  'Não é possivel realizar Redução Z entre 00:00am e 02:00am (Meia Noite e Duas da Manhã) nesta versão de firmware da FS600 (está limitação existe nas versões 1.1 pra baixo.';
   if sErro = '999' then Mensagem :=  'Impressora Fiscal não responde. Verifique se está ligada ou o cabo está conectado corretamente.';
    if Mensagem = '' then
      Result := 'OK'
    else
      Result := Mensagem;
  end;

  if COD_ECF = 3 then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := ECF_RetornoImpressora(iACK,iST1,iST2);
    Mensagem := '';
    If iACK = 21 Then  Result := 'A Impressora retornou NAK. O programa será abortado!';
    If iACK = 6  then
    BEGIN
      // Verifica ST1
      IF iST1 >= 128 Then BEGIN iST1 := iST1 - 128; Mensagem := Mensagem+' '+ 'Fim do Papel!'END;
      IF iST1 >= 64  Then BEGIN iST1 := iST1 - 64;  END;
      IF iST1 >= 32  Then BEGIN iST1 := iST1 - 32;  Mensagem := Mensagem+' '+ 'Erro no relógio!'END;
      IF iST1 >= 16  Then BEGIN iST1 := iST1 - 16;  Mensagem := Mensagem+' '+ 'Impressora em ERRO!'END;
      IF iST1 >= 8   Then BEGIN iST1 := iST1 - 8;   Mensagem := Mensagem+' '+ 'CMD não iniciado com ESC!'END;
      IF iST1 >= 4   Then BEGIN iST1 := iST1 - 4;   Mensagem := Mensagem+' '+ 'Comando Inexistente!'END;
      IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto'END;
      IF iST1 >= 1   Then BEGIN iST1 := iST1 - 1;   Mensagem := Mensagem+' '+ 'Nº de Parâmetros Inválidos!'END;

      // Verifica ST2
      IF iST2 >= 128 Then BEGIN iST2 := iST2 - 128; Mensagem := Mensagem+' '+ 'Tipo de Parâmetro Inválido!'END;
      IF iST2 >= 64  Then BEGIN iST2 := iST2 - 64;  Mensagem := Mensagem+' '+ 'Memória Fiscal Lotada.'END;
      IF iST2 >= 32  Then BEGIN iST2 := iST2 - 32;  Mensagem := Mensagem+' '+ 'CMOS não Volátil!'END;
      IF iST2 >= 16  Then BEGIN iST2 := iST2 - 16;  Mensagem := Mensagem+' '+ 'Alíquota Não Programada.'END;
      IF iST2 >= 8   Then BEGIN iST2 := iST2 - 8;   Mensagem := Mensagem+' '+ 'Alíquotas lotadas.'END;
      IF iST2 >= 4   Then BEGIN iST2 := iST2 - 4;   Mensagem := Mensagem+' '+ 'Cancelamento não Permitido.'END;
      IF iST2 >= 2   Then BEGIN iST2 := iST2 - 2;   Mensagem := Mensagem+' '+ 'CGC/IE não Programados.'END;
      IF iST2 >= 1   Then BEGIN iST2 := iST2 - 1;   Mensagem := Mensagem+' '+ 'Comando não Executado.'END;
    End;
    if Mensagem = '' then
      Result := 'OK'
    else
      Result := Mensagem;
  end;

end;

// Abrir porta Serial do ECF
// 1 - Bematech --> Nao tem
// 2 - Daruma   --> Nao tem
// 3 - Sweda    --> Nao tem

function cECF_Abre(COD_ECF:Integer;Porta:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 Then result := 'OK';
  if COD_ECF = 2 Then result := 'OK';
  if COD_ECF = 3 then result := 'OK';
{  begin
    iRetorno := ECF_AbrePortaSerial();
    sMSG := cECF_Analisa_Retorno(cod_ecf);
    if sMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := sMSG;
  end;}
end;
// Fechar porta Serial do ECF
// 1 - Bematech --> Nao tem
// 2 - Daruma   --> Nao tem
// 3 - Sweda    --> OK
function cECF_Fecha(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 Then result := 'OK';
  if COD_ECF = 2 Then result := 'OK';
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_FechaPortaSerial();
  end;
end;

// INFORMACAOES
// Verificar Impressora Ligada
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Ligada(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;


// Retornar o numero de Serie do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Numero_Serie(COD_ECF:Integer):string;
var sRet : string;
i : integer;
Numero : string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    // no arquivo bemafi.ini mude a chave da impressora para 1
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('78',numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroSerieMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;
// Verificar Numero do Caixa
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Numero_Caixa(COD_ECF:Integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(Numero,2,3)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(Numero,2,3)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCaixa(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(Numero,2,3)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;
// Retornar Numero do Cupom Fiscal (COO)
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Numero_Cupom(COD_ECF:Integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;
// Retornar Numero do COO para comprovantes nao fiscal SUPRIMENTO, SANGRIA, RECEBIMENTO....
// devido a diferenca da posicao que o comando eh acionado pelo aplicativo
// bematech e sweda acrescentar 1
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_COO_Nao_Fiscal(COD_ECF:Integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        i := strtoint(numero)+1;
        numero := zerar(IntToStr(i),6);
        result := Numero;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCupom(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        i := strtoint(numero)+1;
        numero := zerar(IntToStr(i),6);
        result := Numero;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;


// Retornar numero do contador de cupom fiscal - CCF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Numero_Contador_Cupom(COD_ECF:Integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_ContadorCupomFiscalMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('30',Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := ECF_ContadorCupomFiscalMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
        result := Numero
    end
    ELSE
      result := ecfMSG;
  end;
end;
// Retornar numero do contador de relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Numero_Contador_Relatorio_Gerencial(COD_ECF:integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_ContadorRelatoriosGerenciaisMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('33',Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := ECF_ContadorRelatoriosGerenciaisMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;


// Retornar numero do contador de operacoes nao fiscais - CNF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Numero_Contador_Operacao_NF(COD_ECF:integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroOperacoesNaoFiscais(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('28',Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroOperacoesNaoFiscais(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;
// Retornar numero do contador de comprovante de credito
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Numero_Contador_Comprovante_CD(COD_ECF:integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_ContadorComprovantesCreditoMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('45',Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := ECF_ContadorComprovantesCreditoMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;


function cECF_Numero_Contador_Gerencial(COD_ECF:integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    For i := 1 To 659 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_VerificaRelatorioGerencialMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(Numero,1,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 20 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('44',Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(Numero,1,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    For i := 3 To 659 Do Numero := Numero + ' ';
    iRetorno := ECF_VerificaRelatorioGerencialMFD(Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(Numero,1,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;

// Retornar DATA e HORA impressora
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Data_Hora(COD_ECF:Integer):string;
var sRet : string;
i : integer;
data, hora : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do Data := Data + ' ';
    For i := 1 To 6 Do Hora := Hora + ' ';
     iRetorno := Bematech_FI_DataHoraImpressora(data,hora);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        insert('/',data,3);
        insert('/20',data,6);
        insert(':',hora,3);
        insert(':',hora,6);
        result := data+' '+hora;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Data := Data + ' ';
    For i := 1 To 6 Do Hora := Hora + ' ';
     iRetorno := Daruma_FI_DataHoraImpressora(data,hora);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        insert('/',data,3);
        insert('/20',data,6);
        insert(':',hora,3);
        insert(':',hora,6);
        result := data+' '+hora;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Data := Data + ' ';
    For i := 1 To 6 Do Hora := Hora + ' ';
     iRetorno := ECF_DataHoraImpressora(data,hora);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        insert('/',data,3);
        insert('/20',data,6);
        insert(':',hora,3);
        insert(':',hora,6);
        result := data+' '+hora;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;

// Fazer o Download da MFD
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Download(COD_ECF:Integer;tipo:string;Inicio:String;Fim:string):string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    if tipo = 'DATA' THEN tipo := '1';
    if tipo = 'COO'  THEN tipo := '2';
    iRetorno := Bematech_FI_DownloadMFD(pchar('C:\DOWNLOAD.MFD'),pchar(tipo),pchar(inicio),pchar(fim),pchar('01'));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      iretorno :=  Bematech_FI_FormatoDadosMFD( pchar('C:\DOWNLOAD.MFD'),
                                                pchar('C:\RETORNO.TXT'),
                                                '0',
                                                pchar(tipo),
                                                pchar(inicio),
                                                pchar(fim),
                                                pchar(sECF_usuario));
      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
        result := cECF_Retorno_Impressora(cod_ecf)
      ELSE
        result := ecfMSG;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    if tipo = 'DATA' then
    begin
      // formatar a data para: dd/mm/aa
      if length(inicio) = 10 then inicio := copy(inicio,1,6)+copy(inicio,9,2);
      if length(fim) = 10 then fim := copy(fim,1,6)+copy(fim,9,2);
    end;

    iRetorno := Daruma_FIMFD_DownloadDaMFD(pchar(inicio),pchar(fim));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = 'OK' then
    begin
       result := cECF_Retorno_Impressora(cod_ecf)
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    if tipo = 'DATA' THEN tipo := '1';
    if tipo = 'COO'  THEN tipo := '2';
    iRetorno := ECF_DownloadMFD(pchar('DOWNLOAD.MFD'),pchar(tipo),pchar(inicio),pchar(fim),pchar('01'));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      ecfMSG := cECF_Retorno_Impressora(cod_ecf);
      IF ecfMSG = 'OK' then
      begin
        iretorno :=  ECF_FormatoDadosMFD( pchar('DOWNLOAD.MFD'),
                                                  pchar('RETORNO.TXT'),
                                                  '0',
                                                  pchar(tipo),
                                                  pchar(inicio),
                                                  pchar(fim),
                                                  pchar('01'));
        ecfMSG := cECF_Analisa_Retorno(cod_ecf);
        if ecfMSG = 'OK' then
          result := cECF_Retorno_Impressora(cod_ecf)
        ELSE
          result := ecfMSG;
      end
      else
        result := ecfMSG;
    end
    ELSE
      result := ecfMSG;
  end;
end;

// Criar o registro 60A (sintegra)
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Registro60A(COD_ECF:Integer):string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// Criar o registro 60M (sintegra)
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Registro60M(COD_ECF:Integer):string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// Lê as formas de pagamento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Le_Formas_Pgto(COD_ECF:Integer):string;
begin


end;

// Criar o registro 60A (sintegra)
// 1 - Bematech --> OK
// 2 - Daruma   --> utiliza sistema UDECODER.exe
// 3 - Sweda    --> utiliza sistema SWmfd.exe

function cECF_Arquivo_Fiscal_CAT52(COD_ECF:integer;tipo,inicio,fim:string):string;

begin
//
end;
// Retorna a MARCA do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Marca_ECF(COD_ECF:integer):string;
var sMarca, sRet, sModelo, sTipo : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    for i := 1 to 15 do sMarca  := sMarca  + ' ';
    for i := 1 to 20 do sModelo := sModelo + ' ';
    for i := 1 to 7  do sTipo   := sTipo   + ' ';

    iRetorno := Bematech_FI_MarcaModeloTipoImpressoraMFD(sMarca,sModelo,sTipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sMarca
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 20 Do smarca := smarca + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '80', smarca);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := smarca
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    for i := 1 to 15 do sMarca  := sMarca  + ' ';
    for i := 1 to 20 do sModelo := sModelo + ' ';
    for i := 1 to 7  do sTipo   := sTipo   + ' ';

    iRetorno := ECF_MarcaModeloTipoImpressoraMFD(sMarca,sModelo,sTipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sMarca
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



end;

// Retorna a MODELO do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Modelo_ECF(COD_ECF:integer):string;
var sMarca, sRet, sModelo, sTipo : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    for i := 1 to 15 do sMarca  := sMarca  + ' ';
    for i := 1 to 20 do sModelo := sModelo + ' ';
    for i := 1 to 7  do sTipo   := sTipo   + ' ';

    iRetorno := Bematech_FI_MarcaModeloTipoImpressoraMFD(sMarca,sModelo,sTipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sModelo
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 20 Do sModelo := sModelo + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '81', sModelo);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sModelo
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    for i := 1 to 15 do sMarca  := sMarca  + ' ';
    for i := 1 to 20 do sModelo := sModelo + ' ';
    for i := 1 to 7  do sTipo   := sTipo   + ' ';

    iRetorno := ECF_MarcaModeloTipoImpressoraMFD(sMarca,sModelo,sTipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sModelo
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;

// Retorna o TIPO do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Tipo_ECF(COD_ECF:integer):string;
var sMarca, sRet, sModelo, sTipo : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    for i := 1 to 15 do sMarca  := sMarca  + ' ';
    for i := 1 to 20 do sModelo := sModelo + ' ';
    for i := 1 to 7  do sTipo   := sTipo   + ' ';

    iRetorno := Bematech_FI_MarcaModeloTipoImpressoraMFD(sMarca,sModelo,sTipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sTipo
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 7 Do stipo := stipo + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '79', stipo);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := stipo
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    for i := 1 to 15 do sMarca  := sMarca  + ' ';
    for i := 1 to 20 do sModelo := sModelo + ' ';
    for i := 1 to 7  do sTipo   := sTipo   + ' ';

    iRetorno := ECF_MarcaModeloTipoImpressoraMFD(sMarca,sModelo,sTipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sTipo
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;
// Retorna o numero da Memoria fiscal adicional
// 1 - Bematech --> OK
// 2 - Daruma   --> retorna em branco
// 3 - Sweda    --> OK

function cECF_MF_Adicional(COD_ECF:integer):string;
var i : integer;
  dataUsuario,
  dataSWBasico,
  MFAdicional,
  sRet : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    SetLength( dataUsuario, 20 );
    SetLength( dataSWBasico, 20 );
    SetLength(MFAdicional,5);
    iRetorno := Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, dataSWBasico,
                                                                        MFAdicional );
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := COPY(MFAdicional,1,1)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
     // Daruma retorna em branco
      result := ' ';
  end;
  if COD_ECF = 3 then
  begin
    SetLength( dataUsuario, 20 );
    SetLength( dataSWBasico, 20 );
    SetLength(MFAdicional,5);
    iRetorno := ecf_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, dataSWBasico,
                                                                        MFAdicional );
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := COPY(MFAdicional,1,1)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;

// Retorna a versao do software basico
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Versao_SB(COD_ECF:integer):string;
var sVersao, sRet : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    for i := 1 to 6 do sVersao  := sVersao  + ' ';
    iRetorno := Bematech_FI_VersaoFirmwareMFD( sVersao );
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sVersao
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do sVersao := sVersao + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '84', sVersao);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sVersao
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    for i := 1 to 6 do sVersao  := sVersao  + ' ';
    iRetorno := ECF_VersaoFirmwareMFD( sVersao );
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sVersao
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;

// Retorna a data e hora da gravacao do software basico
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Data_Hora_SB(COD_ECF:integer):string;
var i : integer;
  dataUsuario,
  sdataHora,
  MFAdicional,
  sRet : string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    SetLength( dataUsuario, 20 );
    SetLength( sDataHora, 20 );
    SetLength( MFAdicional,5);
    iRetorno := Bematech_FI_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, sdataHora,
                                                                        MFAdicional );
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := somenteNumero(sDataHora)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 14 Do sDataHora := sDataHora + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '85', sDataHora);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sDataHora+'00'
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    SetLength( dataUsuario, 20 );
    SetLength( sDataHora, 20 );
    SetLength( MFAdicional,5);
    iRetorno := ecf_DataHoraGravacaoUsuarioSWBasicoMFAdicional( dataUsuario, sdataHora,
                                                                        MFAdicional );
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := somenteNumero(sDataHora)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;
// Retornar o total do cupom
// 1 - Bematech --> nao foi feito
// 2 - Daruma   --> OK
// 3 - Sweda    --> nao foi feito

function cECF_Total_Cupom(COD_ECF:integer):real;
var sValor : string;
i : integer;
rValor : real;
sRet : string;
begin
  if COD_ECF = 2 then
  begin
    For i := 1 To 18 Do sValor := sValor + ' ';
    iRetorno := Daruma_FI_SaldoAPagar(sValor);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        rValor := strtofloat(svalor);
        if rvalor > 0 then rvalor := rvalor/100;
        result := rvalor;
      end
      else
        result := 0;
    end
    ELSE
      result := 0;
  end;
end;

// vERIFICAR se a reducao z estah automatica
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Verifica_Z_automatico(COD_ECF:integer):string;
var sValor : string;
i : integer;
sRet : string;
begin
  if COD_ECF = 1 then
  begin
    i := 0;
    iRetorno := Bematech_FI_VerificaReducaoZAutomatica(i);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if i = 1 then
         result := 'SIM'
        else
         result := 'NAO';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    sValor := StringOFChar(#0,50);
    iRetorno := Daruma_Registry_RetornaValor('ECF','ZAutomatica', sValor);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if copy(sValor,1,1) = '1' then
         result := 'SIM'
        else
         result := 'NAO';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMsg;
  end;
  if COD_ECF = 3 then
  begin
    SetLength(svalor,50);
    iRetorno := ECF_Registry_RetornaValor('ECF','Zauto', sValor);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      if copy(sValor,1,1) = '1' then
       result := 'SIM'
      else
       result := 'NAO';
    end
    ELSE
      result := ecfMsg;
  end;



end;


// verificar se impressora esta com horario de verao programado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function CECF_verifica_horario_verao(COD_ecf:INTEGER):STRING;
var sValor : string;
i : integer;
sRet : string;
begin
  if COD_ECF = 1 then
  begin
    i := 0;
    iRetorno := Bematech_FI_FlagsFiscais(i);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if i >= 128 then i := i - 128;
        if i >= 64  then i := i - 64;
        if i >= 32  then i := i - 32;
        if i >= 16  then i := i - 16;
        if i >= 8   then i := i - 8;
        if i IN [4,5,6,7] then
          result := 'SIM'
        else
        begin
         result := 'NAO';
        end;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    SetLength(svalor,2);
    iRetorno := Daruma_FI_VerificaHorarioVerao(svalor);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if copy(sValor,1,1) = '1' then
         result := 'SIM'
        else
         result := 'NAO';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMsg;
  end;

  if COD_ECF = 3 then
  begin
    SetLength(svalor,2);
    iRetorno := ecf_VerificaHorarioVerao(svalor);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      if copy(sValor,1,1) = '1' then
        result := 'SIM'
      else
        result := 'NAO';
    end
    ELSE
      result := ecfMsg;
  end;

end;

// retornar as aliquotas cadastradas
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Verifica_Aliquotas(COD_ecf:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 79 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_RetornoAliquotas(sContador);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 79 Do sContador := sContador + ' ';
    iRetorno := Daruma_FI_RetornoAliquotas(sContador) ;
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 79 Do sContador := sContador + ' ';
    iRetorno := ECF_RetornoAliquotas(PCHAR(sContador)) ;
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



end;

// retorna os totalizadores nao fiscais
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Verifica_Totalizadores_NF(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 179 Do sContador := sContador + ' ';
    iRetorno :=  Bematech_FI_VerificaTotalizadoresNaoFiscais(sContador);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 300 Do sContador := sContador + ' ';
    iRetorno := Daruma_FI_VerificaTotalizadoresNaoFiscais(scontador);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 300 Do sContador := sContador + ' ';
    iRetorno := ecf_VerificaTotalizadoresNaoFiscaisEX(pchar(scontador));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;
// Retorna a data do Movimento do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Data_Movimento(cod_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 6 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DataMovimento(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
        result := copy(scontador,1,2)+'/'+
                  copy(scontador,3,2)+'/'+
                  '20'+copy(scontador,5,2);
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do sContador := sContador + ' ';
    iRetorno := Daruma_FI_DataMovimento( sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = 'OK' then
    begin
        result := copy(scontador,1,2)+'/'+
                  copy(scontador,3,2)+'/'+
                  '20'+copy(scontador,5,2);
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do sContador := sContador + ' ';
    iRetorno := ECF_DataMovimento(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = 'OK' then
    begin
        result := copy(scontador,1,2)+'/'+
                  copy(scontador,3,2)+'/'+
                  '20'+copy(scontador,5,2);
    end
    ELSE
      result := ecfMSG;
  end;
end;

// Verificar se existe cupom fiscal aberto
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Cupom_Fiscal_Aberto(cod_ECF:integer):string;
var sValor : string;
sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    i := 0;
    iRetorno := Bematech_FI_FlagsFiscais(i);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if i >= 128 then i := i - 128;
        if i >= 64  then i := i - 64;
        if i >= 32  then i := i - 32;
        if i >= 16  then i := i - 16;
        if i >= 8   then i := i - 8;
        if i = 1 then
          result := 'SIM'
        else
        begin
         result := 'NAO';
        end;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    SetLength(svalor,2);
    iRetorno := Daruma_FI_StatusCupomFiscal(svalor);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if copy(sValor,1,1) = '1' then
         result := 'SIM'
        else
         result := 'NAO';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMsg;
  end;

  if COD_ECF = 3 then
  begin
    SetLength(svalor,2);
    iRetorno := ECF_StatusCupomFiscal(svalor);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      if copy(sValor,1,1) = '1' then
       result := 'SIM'
      else
       result := 'NAO';
    end
    ELSE
      result := ecfMsg;
  end;

end;
// Retorna o totalizador geral
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Grande_Total(cod_ECF:integer):string;
var sContador, sRet : string;
i : integer;
rvalor : real;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          result := floattostr( rvalor/100)
        else
          result := '0';

      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := Daruma_FI_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        rvalor :=  strtofloat(sContador) ;
        if rvalor > 0 then
          result := floattostr( rvalor/100)
        else
          result := '0';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    For i := 1 To 18 Do sContador := sContador + ' ';
    iRetorno := ECF_GrandeTotal(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin

        rvalor :=  strtofloat(scontador) ;
        if rvalor > 0 then
          result := floattostr( rvalor/100)
        else
          result := '0';

      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;


// Informacoes referente a ultima reducao Z

// Contador de Reducoes impresso na ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Contador_CRZ(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),7,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 4 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '24', sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := ECF_DadosUltimaReducaoMFD(pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),7,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;
// Contador de COO impresso na ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Contador_COO(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin

  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),11,6)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy(sContador,935,6)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 3 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := ecf_DadosUltimaReducaoMFD(PCHAR(sContador));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),11,6)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;

// Contador de CRO (REINICIO DE OPERACOES) impresso na ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Contador_CRO(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin

  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),3,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 3 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '23', sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := SContador
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := ECF_DadosUltimaReducaoMFD(pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),3,4)
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;

// DATA E HORA da emissao da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_DataHora(COD_ECF:integer):string;
var sHora, sData, sRet : string;
i : integer;
begin

  if COD_ECF = 1 then
  begin
    SetLength (SData,6);
    SetLength (SHora,6);
    IRetorno := Bematech_FI_DataHoraReducao(SData, SHora);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sData+' '+sHora
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = 2 then
  begin
    SetLength (SData,6);
    SetLength (SHora,6);
    IRetorno := Daruma_FI_DataHoraReducao(SData, SHora);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sData+' '+sHora
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    SetLength (SData,6);
    SetLength (SHora,6);
    IRetorno := ECF_DataHoraReducao(SData, SHora);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
        result := sData+' '+sHora
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;

// DATA do movimento da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_ReducaoZ_Data_Movimento(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        sRet := copy( somenteNumero(sContador),1237,6);
        if sret = '000000' then
        // caso o ecf retorne a data zerada, informar a data do sistema
          result := copy(DateToStr(dData_Sistema),1,2)+
                    copy(DateToStr(dData_Sistema),4,2)+
                    copy(DateToStr(dData_Sistema),9,2)
        else
          result := copy(sRet,1,4)+'20'+copy(sRet,5,2);
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);

    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if sret = '00000000' then
          result := copy(DateToStr(dData_Sistema),1,2)+
                    copy(DateToStr(dData_Sistema),4,2)+
                    copy(DateToStr(dData_Sistema),7,4)
        else
          result := copy(sContador,1,8);
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = 3 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := ECF_DadosUltimaReducaoMFD(pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        sRet := copy( somenteNumero(sContador),1237,6);

        if sret = '000000' then
        // caso o ecf retorne a data zerada, informar a data do sistema
          result := copy(DateToStr(dData_Sistema),1,2)+
                    copy(DateToStr(dData_Sistema),4,2)+
                    copy(DateToStr(dData_Sistema),9,2)
        else
          result := copy(sRet,1,4)+'20'+copy(sRet,5,2);

      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;

// valor da venda bruta da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Venda_Bruta(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
txt : textfile;
begin
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if FileExists('c:\Retorno.txt') then
        begin
          sret := '0';
          assignfile(txt,'c:\Retorno.txt');
          reset(txt);
          while not eof(txt) do
          begin
            readln(txt,sRet);
            if copy(sRet,1,10)='Venda Brut' then
            begin
              sRet := somenteNumero(copy(sRet,34,16));
              break;
            end;
          end;
          closefile(txt);
          sRet := FLOATTOSTR(STRTOFLOAT(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sret)/100);
          result := sRet;
        end
        else
          result := 'Arquivo c:\Retorno.txt não encontrado!';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        // Pegar o Totalizador Geral Atual - Totalizador Geral Inicial
        sRet := FLOATTOSTR(STRTOFLOAT(COPY(sContador,9,18))- STRTOFLOAT(COPY(sContador,27,18)));
        if sRet <> '0' then
          sRet := floattostr(strtofloat(sret)/100);
        result := sRet;
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if FileExists('c:\Retorno.txt') then
        begin
          sret := '0';
          assignfile(txt,'c:\Retorno.txt');
          reset(txt);
          while not eof(txt) do
          begin
            readln(txt,sRet);
            if copy(sRet,1,10)='Venda Brut' then
            begin
              sRet := somenteNumero(copy(sRet,45,16));
              break;
            end;
          end;
          closefile(txt);
          sRet := FLOATTOSTR(STRTOFLOAT(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sret)/100);
          result := sRet;
        end
        else
          result := 'Arquivo c:\Retorno.txt não encontrado!';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;
end;
// total do iss da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Total_ISS(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
txt : textfile;
begin
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if FileExists('c:\Retorno.txt') then
        begin
          sret := '0';
          assignfile(txt,'c:\Retorno.txt');
          reset(txt);
          while not eof(txt) do
          begin
            readln(txt,sRet);
            if copy(sRet,1,3)='ISS' then
            begin
              sRet := somenteNumero(copy(sRet,34,16));
              break;
            end;
          end;
          closefile(txt);
          sRet := FLOATTOSTR(STRTOFLOAT(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sret)/100);
          result := sRet;
        end
        else
          result := 'Arquivo c:\Retorno.txt não encontrado!';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_MapaResumo();

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if FileExists('c:\Retorno.txt') then
        begin
          sret := '0';
          assignfile(txt,'c:\Retorno.txt');
          reset(txt);
          while not eof(txt) do
          begin
            readln(txt,sRet);
            if copy(sRet,1,3)='ISS' then
            begin
              sRet := somenteNumero(copy(sRet,25,16));
              break;
            end;
          end;
          closefile(txt);
          sRet := FLOATTOSTR(STRTOFLOAT(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sret)/100);
          result := sRet;
        end
        else
          result := 'Arquivo c:\Retorno.txt não encontrado!';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ecf_MapaResumoMFD();

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        if FileExists('c:\Retorno.txt') then
        begin
          sret := '0';
          assignfile(txt,'c:\Retorno.txt');
          reset(txt);
          while not eof(txt) do
          begin
            readln(txt,sRet);
            if copy(sRet,1,3)='ISS' then
            begin
              sRet := somenteNumero(copy(sRet,45,16));
              break;
            end;
          end;
          closefile(txt);
          sRet := FLOATTOSTR(STRTOFLOAT(sRet));
          if sRet <> '0' then
            sRet := floattostr(strtofloat(sret)/100);
          result := sRet;
        end
        else
          result := 'Arquivo c:\Retorno.txt não encontrado!';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

end;

// totalizador geral da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Totalizador_Geral(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
rvalor : real;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin

        rvalor :=  strtofloat(copy( somenteNumero(sContador),301,18) ) ;
        if rvalor > 0 then
          result := floattostr( rvalor/100)
        else
          result := '0';

      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        rvalor :=  strtofloat(copy( sContador,9,18) ) ;
        if rvalor > 0 then
          result := floattostr( rvalor/100)
        else
          result := '0';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := ecf_DadosUltimaReducaoMFD(pchar(sContador));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin

        rvalor :=  strtofloat(copy( somenteNumero(sContador),301,18) ) ;
        if rvalor > 0 then
          result := floattostr( rvalor/100)
        else
          result := '0';

      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;

// totalizadores parciais da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_ReducaoZ_Totalizador_Parcial(COD_ECF:Integer):string;
var sRet : string;
i, x, Y, w : integer;
sTotalizador, svalor, sTexto : string;
sAliquota, sIss : string;
rSoma : real;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    // LER A RELACAO DE ALIQUOTAS DE ISS
    For i := 1 to 79 do sISS := sIss + ' ';
    iRetorno := Bematech_FI_VerificaAliquotasIss(sIss);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        For i := 1 To 1278 Do sTotalizador := sTotalizador + ' ';
        iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sTotalizador);
        ecfMSG := cECF_Analisa_Retorno(cod_ecf);
        if ecfMSG = 'OK' then
        begin
          sRet := cECF_Retorno_Impressora(cod_ecf);
          if sRet = 'OK' then
          begin
            sTotalizador := somentenumero(sTotalizador);
            sAliquota := copy(sTotalizador,1173,64);
            sValor    := copy(sTotalizador,319,224);


                 X:= 1;
                 w:= 1;
                // rodar as 16 posicoes de aliquotas e alimentar o Array
                for i := 1 to 16 do
                begin
                  sTexto := copy(sAliquota,X,4);
                  // Aliquota de Icms Tributado valido
                  if sTexto <> '0000' then
                  begin
                    if pos(sTexto,sIss) = 0 then
                    begin
                      sTexto := Zerar(IntToStr(i),2)+'T'+sTexto;
                    end
                    else
                    begin
                      sTexto := Zerar(IntToStr(i),2)+'S'+sTexto;
                    end;
                  end;
                  TbTotalizador[i].Nome := sTexto;

                  sTexto := floattostr(strtofloat(copy(sValor,w,14)));
                  if strtofloat(sTexto) > 0 then
                    sTexto := floattostr(strtofloat(sTexto)/100);

                  tbTotalizador[i].valor := strtofloat(sTexto);
                  X := X+4;
                  w := w+14;
                end;



                // copiar a aliquota de substituicao tributaria

                sTexto := floattostr(strtofloat(copy(sTotalizador,571,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'F1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'F2';
                TbTotalizador[i].valor := 0;




                // copiar a aliquota Isento
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,543,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'I1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'I2';
                TbTotalizador[i].valor := 0;


                // copiar a aliquota Nao Tributado
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,557,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'N1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'N2';
                TbTotalizador[i].valor := 0;





                //----- I S S Q N



                // copiar a aliquota de substituicao tributaria

                sTexto := floattostr(strtofloat(copy(sTotalizador,613,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'FS1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'FS2';
                TbTotalizador[i].valor := 0;

                // copiar a aliquota Isento
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,585,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'IS1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'IS2';
                TbTotalizador[i].valor := 0;


                // copiar a aliquota Nao Tributado
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,599,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'NS1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'NS2';
                TbTotalizador[i].valor := 0;

                // N A O   F I S C A L
                i := i + 1;
                rSoma := 0;
                x := 711;
                for w := 1 to 28 do
                begin
                  rSoma := rSoma + strtofloat(copy(sTotalizador,x,14));
                  x := x + 14;
                end;
                // sangria +
                rSoma := rSoma + strtofloat(copy(sTotalizador,1103,14));
                // suprimento +
                rSoma := rSoma + strtofloat(copy(sTotalizador,1117,14));

                if rsoma > 0 then rsoma := rsoma/100;
                TbTotalizador[i].Nome := 'OPNF';
                TbTotalizador[i].valor := rSoma;

                // Desconto ICMS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,627,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'DT';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                // Desconto ISS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,641,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'DS';
                TbTotalizador[i].valor := StrToFloat(sTexto);


                // Acrescimo ICMS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,655,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'AT';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                // Acrescimo ISS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,669,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'AS';
                TbTotalizador[i].valor := StrToFloat(sTexto);


                // CAncelamento ICMS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,683,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'Can-T';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                // Cancelamento ISS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,697,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'Can-S';
                TbTotalizador[i].valor := StrToFloat(sTexto);

            result := 'OK';



          end
          else
            result := sRet;
        end
        else
          result := ecfMSG;








      end
      else
        result := sRet;
    end
    else
      result := ecfMSG;

  end;




  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sTotalizador := sTotalizador + ' ';
    iRetorno :=  Daruma_FIMFD_RetornaInformacao( '140', sTotalizador);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        sAliquota := copy(sTotalizador,843,80);
        sValor    := copy(sTotalizador,129,224);

             X:= 1;
             w:= 1;
            // rodar as 16 posicoes de aliquotas e alimentar o Array
            for i := 1 to 16 do
            begin
              sTexto := copy(sAliquota,X,5);
              // Aliquota de Icms Tributado valido
              if copy(sTexto,1,1) = '1' then
              begin
                sTexto := Zerar(IntToStr(i),2)+'T'+copy(sTexto,2,4);
              end;
              // Aliquota de ISS Tributado valido
              if copy(sTexto,1,1) = '2' then
              begin
                sTexto := Zerar(IntToStr(i),2)+'S'+copy(sTexto,2,4);
              end;
              TbTotalizador[i].Nome := sTexto;

              sTexto := floattostr(strtofloat(copy(sValor,w,14)));
              if strtofloat(sTexto) > 0 then
                sTexto := floattostr(strtofloat(sTexto)/100);

              tbTotalizador[i].valor := strtofloat(sTexto);
              X := X+5;
              w := w+14;
            end;
            // copiar a aliquota de substituicao tributaria

            sTexto := floattostr(strtofloat(copy(sTotalizador,353,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'F1';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,367,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'F2';
            TbTotalizador[i].valor := StrToFloat(sTexto);




            // copiar a aliquota Isento
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,381,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'I1';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,395,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'I2';
            TbTotalizador[i].valor := StrToFloat(sTexto);


            // copiar a aliquota Nao Tributado
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,409,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'N1';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,423,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'N2';
            TbTotalizador[i].valor := StrToFloat(sTexto);





            //----- I S S Q N



            // copiar a aliquota de substituicao tributaria

            sTexto := floattostr(strtofloat(copy(sTotalizador,437,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'FS1';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,451,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'FS2';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            // copiar a aliquota Isento
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,465,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'IS1';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,479,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'IS2';
            TbTotalizador[i].valor := StrToFloat(sTexto);


            // copiar a aliquota Nao Tributado
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,493,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'NS1';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,507,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'NS2';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            // N A O   F I S C A L
            i := i + 1;
            rSoma := 0;
            x := 521;
            for w := 1 to 20 do
            begin
              rSoma := rSoma + strtofloat(copy(sTotalizador,x,14));
              x := x + 14;
            end;
            if rsoma > 0 then rsoma := rsoma/100;
            TbTotalizador[i].Nome := 'OPNF';
            TbTotalizador[i].valor := rSoma;

            // Desconto ICMS
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,45,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'DT';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            // Desconto ISS
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,59,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'DS';
            TbTotalizador[i].valor := StrToFloat(sTexto);


            // Acrescimo ICMS
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,101,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'AT';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            // Acrescimo ISS
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,115,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'AS';
            TbTotalizador[i].valor := StrToFloat(sTexto);


            // CAncelamento ICMS
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,73,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'Can-T';
            TbTotalizador[i].valor := StrToFloat(sTexto);

            // Cancelamento ISS
            i := i + 1;
            sTexto := floattostr(strtofloat(copy(sTotalizador,87,14)));
            if strtofloat(sTexto) > 0 then
              sTexto := floattostr(strtofloat(sTexto)/100);
            TbTotalizador[i].Nome := 'Can-S';
            TbTotalizador[i].valor := StrToFloat(sTexto);



        result := 'OK';
      end
      else
        result := sRet;
    end
    else
      result := ecfMSG;
  end;



  if COD_ECF = 3 then
  begin
    // LER A RELACAO DE ALIQUOTAS DE ISS
    For i := 1 to 79 do sISS := sIss + ' ';
    iRetorno := ecf_VerificaAliquotasIss(sIss);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
        For i := 1 To 1278 Do sTotalizador := sTotalizador + ' ';
        iRetorno := ECF_DadosUltimaReducaoMFD(pchar(sTotalizador));
        ecfMSG := cECF_Analisa_Retorno(cod_ecf);
        if ecfMSG = 'OK' then
        begin
          sRet := cECF_Retorno_Impressora(cod_ecf);
          if sRet = 'OK' then
          begin
            sTotalizador := somentenumero(sTotalizador);
            sAliquota := copy(sTotalizador,1173,64);
            sValor    := copy(sTotalizador,319,224);


                 X:= 1;
                 w:= 1;
                // rodar as 16 posicoes de aliquotas e alimentar o Array
                for i := 1 to 16 do
                begin
                  sTexto := copy(sAliquota,X,4);
                  // Aliquota de Icms Tributado valido
                  if sTexto <> '0000' then
                  begin
                    if pos(sTexto,sIss) = 0 then
                    begin
                      sTexto := Zerar(IntToStr(i),2)+'T'+sTexto;
                    end
                    else
                    begin
                      sTexto := Zerar(IntToStr(i),2)+'S'+sTexto;
                    end;
                  end;
                  TbTotalizador[i].Nome := sTexto;

                  sTexto := floattostr(strtofloat(copy(sValor,w,14)));
                  if strtofloat(sTexto) > 0 then
                    sTexto := floattostr(strtofloat(sTexto)/100);

                  tbTotalizador[i].valor := strtofloat(sTexto);
                  X := X+4;
                  w := w+14;
                end;



                // copiar a aliquota de substituicao tributaria

                sTexto := floattostr(strtofloat(copy(sTotalizador,571,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'F1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'F2';
                TbTotalizador[i].valor := 0;




                // copiar a aliquota Isento
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,543,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'I1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'I2';
                TbTotalizador[i].valor := 0;


                // copiar a aliquota Nao Tributado
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,557,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'N1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'N2';
                TbTotalizador[i].valor := 0;





                //----- I S S Q N



                // copiar a aliquota de substituicao tributaria

                sTexto := floattostr(strtofloat(copy(sTotalizador,613,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'FS1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'FS2';
                TbTotalizador[i].valor := 0;

                // copiar a aliquota Isento
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,585,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'IS1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'IS2';
                TbTotalizador[i].valor := 0;


                // copiar a aliquota Nao Tributado
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,599,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'NS1';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                i := i + 1;
                TbTotalizador[i].Nome := 'NS2';
                TbTotalizador[i].valor := 0;

                // N A O   F I S C A L
                i := i + 1;
                rSoma := 0;
                x := 711;
                for w := 1 to 28 do
                begin
                  rSoma := rSoma + strtofloat(copy(sTotalizador,x,14));
                  x := x + 14;
                end;
                // sangria +
                rSoma := rSoma + strtofloat(copy(sTotalizador,1103,14));
                // suprimento +
                rSoma := rSoma + strtofloat(copy(sTotalizador,1117,14));

                if rsoma > 0 then rsoma := rsoma/100;
                TbTotalizador[i].Nome := 'OPNF';
                TbTotalizador[i].valor := rSoma;

                // Desconto ICMS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,627,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'DT';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                // Desconto ISS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,641,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'DS';
                TbTotalizador[i].valor := StrToFloat(sTexto);


                // Acrescimo ICMS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,655,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'AT';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                // Acrescimo ISS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,669,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'AS';
                TbTotalizador[i].valor := StrToFloat(sTexto);


                // CAncelamento ICMS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,683,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'Can-T';
                TbTotalizador[i].valor := StrToFloat(sTexto);

                // Cancelamento ISS
                i := i + 1;
                sTexto := floattostr(strtofloat(copy(sTotalizador,697,14)));
                if strtofloat(sTexto) > 0 then
                  sTexto := floattostr(strtofloat(sTexto)/100);
                TbTotalizador[i].Nome := 'Can-S';
                TbTotalizador[i].valor := StrToFloat(sTexto);

            result := 'OK';



          end
          else
            result := sRet;
        end
        else
          result := ecfMSG;
      end
      else
        result := sRet;
    end
    else
      result := ecfMSG;

  end;




end;


// LEITURA X
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_LeituraX(COD_ECF:Integer):string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf) // retorna OK ou a Mensagem de Erro;
    ELSE
      result := ecfMSG;  // retorna o Erro de falha de comunicação com o ECF
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// REDUCAO Z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_ReducaoZ(pchar(''),pchar(''));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_ReducaoZ(pchar(''),pchar(''));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_ReducaoZ(pchar(''),pchar(''));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;



function  cECF_Leitura_Memoria_Fiscal(COD_ECF:INTEGER;
                                       Tipo:STRING; // DATA ou CRZ
                                       Analitica_ou_Sintetica : STRING; // A ou S
                                       Ecf_ou_Arquivo : String; // ECF ou ARQUIVO
                                       Inicio:string;Fim:STRING):STRING;
var stipo : string;
begin

  stipo := AnsiLowerCase(Analitica_ou_Sintetica);

  if tipo = 'DATA' then
  begin
    Result := 'ERRO';
    if COD_ECF = 1 then
    begin
      if stipo = 'a' then stipo := 'c';

      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := Bematech_FI_LeituraMemoriaFiscalDataMFD(pchar(Inicio),pchar(Fim),pchar(stipo))
      else
        iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialDataMFD(pchar(Inicio),pchar(Fim),pchar(stipo));

      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
        result := cECF_Retorno_Impressora(cod_ecf)
      ELSE
        result := ecfMSG;
    end;


    if COD_ECF = 2 then
    begin
      if Analitica_ou_Sintetica = 'A' then
        Daruma_Registry_MFD_LeituraMFCompleta('1') // analitica
      else
        Daruma_Registry_MFD_LeituraMFCompleta('0'); // sintetica


      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := Daruma_FI_LeituraMemoriaFiscalData(pchar(Inicio),pchar(Fim))
      else
        iRetorno := Daruma_FI_LeituraMemoriaFiscalSerialData(pchar(Inicio),pchar(Fim));

      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
      begin
        result := cECF_Retorno_Impressora(cod_ecf);
      end
      ELSE
        result := ecfMSG;
    end;

    if COD_ECF = 3 then
    begin
      if stipo = 'a' then stipo := 'c';

      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := ECF_LeituraMemoriaFiscalDataMFD(pchar(Inicio),pchar(Fim),pchar(stipo))
      else
        iRetorno := ECF_LeituraMemoriaFiscalSerialDataMFD(pchar(Inicio),pchar(Fim),pchar(stipo));

      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
        result := cECF_Retorno_Impressora(cod_ecf)
      ELSE
        result := ecfMSG;
    end;



  end
  else
  begin
    Result := 'ERRO';
    if COD_ECF = 1 then
    begin
      if stipo = 'a' then stipo := 'c';
      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := Bematech_FI_LeituraMemoriaFiscalReducaoMFD(pchar(Inicio),pchar(Fim),pchar(stipo))
      else
        iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialReducaoMFD(pchar(Inicio),pchar(Fim),pchar(stipo));
      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
        result := cECF_Retorno_Impressora(cod_ecf)
      ELSE
        result := ecfMSG;
    end;

    if COD_ECF = 2 then
    begin
      if Analitica_ou_Sintetica = 'A' then
        Daruma_Registry_MFD_LeituraMFCompleta('1') // analitica
      else
        Daruma_Registry_MFD_LeituraMFCompleta('0'); // sintecica
      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := Daruma_FI_LeituraMemoriaFiscalReducao(pchar(Inicio),pchar(Fim))
      else
        iRetorno := Daruma_FI_LeituraMemoriaFiscalSerialReducao(pchar(Inicio),pchar(Fim));
      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
        result := cECF_Retorno_Impressora(cod_ecf)
      ELSE
        result := ecfMSG;
    end;

    if COD_ECF = 3 then
    begin
      if stipo = 'a' then stipo := 'c';
      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := ECF_LeituraMemoriaFiscalReducaoMFD(pchar(Inicio),pchar(Fim),pchar(stipo))
      else
        iRetorno := ECF_LeituraMemoriaFiscalSerialReducaoMFD(pchar(Inicio),pchar(Fim),pchar(stipo));
      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
        result := cECF_Retorno_Impressora(cod_ecf)
      ELSE
        result := ecfMSG;
    end;

  end;


end;





// CUPOM FISCAL

// ABRIR CUPOM FISCAL
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Abre_Cupom(COD_ECF:Integer;CPF,Nome,Endereco:string):string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_AbreCupomMFD(pchar(copy(cpf,1,29)),
                                         pchar(copy(Nome,1,30)),
                                         pchar(copy(Endereco,1,80)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_AbreCupom(pchar(copy(cpf,1,29)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      if cpf <> '' then
      begin
        IRetorno := Daruma_FI_IdentificaConsumidor(pchar(copy(nome,1,48)),
                                                   pchar(copy(endereco,1,48)),
                                                   pchar(copy(cpf,1,42)));
        ecfMSG := cECF_Analisa_Retorno(cod_ecf);
        if ecfMSG = 'OK' then
          result := cECF_Retorno_Impressora(cod_ecf)
        ELSE
         result := ecfMSG;
      end
      else
        result := cECF_Retorno_Impressora(cod_ecf)
    end
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ecf_AbreCupomMFD(pchar(copy(cpf,1,29)),
                                         pchar(copy(Nome,1,30)),
                                         pchar(copy(Endereco,1,80)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;


// VENDE ITEM
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Vende_item(COD_ECF:Integer;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;valor_acrescimo:real;tipo_desconto_acrescimo:string;total:real):string;
var Sqtde, Svalor, Sdesconto, stipo_qtde, sacrescimo : string;
begin
try
  Result := 'ERRO';

  if unidade = '' then unidade := 'UN';

  if COD_ECF = 1 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sacrescimo := formatfloat('########0.00',valor_acrescimo);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sTipo_qtde:= 'F';


    iRetorno := Bematech_FI_VendeItemDepartamento(pchar(codigo),
                                                pchar(produto),
                                                pchar(aliquota),
                                                pchar(svalor),
                                                pchar(sqtde),
                                                pchar(sacrescimo),
                                                pchar(sdesconto),
                                                '01',
                                                pchar(unidade));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sacrescimo := formatfloat('########0.00',valor_acrescimo);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sTipo_qtde:= 'F';



    iRetorno := Daruma_FI_VendeItemDepartamento(pchar(codigo),
                                                pchar(produto),
                                                pchar(aliquota),
                                                pchar(svalor),
                                                pchar(sqtde),
                                                pchar(sacrescimo),
                                                pchar(sdesconto),
                                                '01',
                                                pchar(unidade));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sacrescimo := formatfloat('########0.00',valor_acrescimo);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sTipo_qtde:= 'F';
    iRetorno := ECF_VendeItemDepartamento(pchar(codigo),
                                                pchar(produto),
                                                pchar(aliquota),
                                                pchar(svalor),
                                                pchar(sqtde),
                                                pchar(sacrescimo),
                                                pchar(sdesconto),
                                               '01',
                                                pchar(unidade));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

except
  result := 'ERRO';
end;
end;

// incio do fechamento do cupom
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Inicia_Fechamento(COD_ECF:Integer;Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Bematech_FI_IniciaFechamentoCupom(pchar(Acrescimo_ou_Desconto),
                                                  pchar(Tipo),
                                                  pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Daruma_FI_IniciaFechamentoCupom(pchar(Acrescimo_ou_Desconto),
                                                  pchar(Tipo),
                                                  pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := ECF_IniciaFechamentoCupom(pchar(Acrescimo_ou_Desconto),
                                                  pchar(Tipo),
                                                  pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// lancamento do pagamento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Forma_Pgto(COD_ECF:Integer;forma_pgto:string;valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Bematech_FI_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Daruma_FI_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := ECF_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// termina o fechamento do cupom
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Termina_Fechamento(COD_ECF:Integer;mensagem:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_TerminaFechamentoCupom(pchar(Mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_TerminaFechamentoCupom(pchar(Mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_TerminaFechamentoCupom(pchar(Mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// fechamento do cupom resumido
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Fecha_Cupom_Resumido(cod_ecf:integer;forma_pgto:string;mensagem:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    IRetorno := Bematech_FI_FechaCupomResumido(pchar(forma_pgto),pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_FechaCupomResumido(pchar(forma_pgto),pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    IRetorno := ECF_FechaCupomResumido(pchar(forma_pgto),pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

end;
// cancelar cupom
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Cancela_Cupom(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// cancelar item
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Cancela_Item(COD_ECF:Integer;Item:string):string;
begin
  Result := 'ERRO';

  item := inttostr(strtoint(item));

  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_CancelaItemGenerico(pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_CancelaItemGenerico(pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_CancelaItemGenerico(pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;


// OPERACOES NAO FISCAL

// abertura do relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Abre_Gerencial(COD_ECF:Integer;Texto:String):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioGerencial(pchar(texto+char(10)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// usar o relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Usa_Gerencial(COD_ECF:Integer;Texto:String):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := {Bematech_FI_RelatorioGerencial(pchar(texto));//}Bematech_FI_RelatorioGerencial(pchar(texto+chr(10)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// fechamento do relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Fecha_Gerencial(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// abertura do CNFV - Comprovante nao fiscal vinculado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Abre_CNFV(COD_ECF:Integer;Forma_Pgto:string;Valor:real;Numero_Cupom:string):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    if valor > 0 then
      svalor := formatfloat('#############0.00',valor)
    else
      svalor := '';
    iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    if valor > 0 then
      svalor := formatfloat('#############0.00',valor)
    else
      svalor := '';
    iRetorno := Daruma_FI_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    if valor > 0 then
      svalor := formatfloat('#############0.00',valor)
    else
      svalor := '';
    iRetorno := ECF_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// usar o CNFV - Comprovante nao fiscal vinculado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Usa_CNFV(COD_ECF:Integer;Texto:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(texto+chr(10)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// fechar o CNFV - Comprovante nao fiscal vinculado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Fecha_CNFV(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// Sangria
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Sangria(COD_ECF:Integer;Valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_Sangria(pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_Sangria(pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_Sangria(pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// Suprimento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Suprimento(COD_ECF:Integer;Valor:real;Forma_Pgto:String):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// recebimento nao fiscal
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Recebimento(COD_ECF:Integer;Totalizador:string;Valor:real;Forma_Pgto:string):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// programar horario de verao
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Horario_Verao(COD_ECF:integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// programar aliquota
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Aliquota(COD_ECF:integer;aliquota:real;ICMS_OU_ISS:STRING):string;
VAR Itipo : integer;
saliquota : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    if ICMS_OU_ISS = 'ICMS' then itipo := 0;
    if ICMS_OU_ISS = 'ISS'  then itipo := 1;

    saliquota := somenteNumero( formatfloat('#0.00',aliquota) );
    iRetorno := Bematech_FI_ProgramaAliquota(pchar(saliquota),itipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    if ICMS_OU_ISS = 'ICMS' then itipo := 0;
    if ICMS_OU_ISS = 'ISS'  then itipo := 1;

    saliquota := somenteNumero( formatfloat('#0.00',aliquota) );
    iRetorno := Daruma_FI_ProgramaAliquota(pchar(saliquota),itipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    if ICMS_OU_ISS = 'ICMS' then itipo := 0;
    if ICMS_OU_ISS = 'ISS'  then itipo := 1;

    saliquota := somenteNumero( formatfloat('#0.00',aliquota) );
    iRetorno := ECF_ProgramaAliquota(pchar(saliquota),itipo);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// abrir gaveta
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Abre_Gaveta(COD_ECF:integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;
// status da gaveta
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Status_Gaveta(COD_ECF:integer):string;
var iEstado : integer;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := ecfMSG;
  end;
end;
// programar totalizador nao fiscal
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Totalizador(COD_ECF:Integer;Indice:integer;descricao:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// programar forma de pagamento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Programa_Forma_Pgto(COD_ECF:Integer;Forma_Pgto:string;Vinculado:string):string;
var sVinc : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    if vinculado = 'SIM' then sVinc := '1' else sVinc := '0';

    iRetorno := Bematech_FI_ProgramaFormaPagamentoMFD(pchar(Forma_Pgto),pchar(sVinc));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_ProgramaFormasPagamento(pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_ProgramaFormasPagamento(pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// liberar porta serial
// 1 - Bematech --> na tem
// 2 - Daruma   --> OK
// 3 - Sweda    --> nao tem
function cECF_Daruma_Libera_Porta(SIM_NAO:STRING):string;
begin
  IF SIM_NAO = 'SIM' THEN
  BEGIN
    // QTDE de instancias serah permitido na porta utilizada pela daruma
    iRetorno := Daruma_Registry_AlteraRegistry('ControlePorta','0');
    // bloquear a porta pela dll
    iRetorno := Daruma_Registry_AlteraRegistry('ThreadNoStartup','0');
  END
  ELSE
  BEGIN
    iRetorno := Daruma_Registry_AlteraRegistry('ControlePorta','2');
    iRetorno := Daruma_Registry_AlteraRegistry('ThreadNoStartup','0');
  END;
end;

// programar z automatico
// 1 - Bematech --> somente em mit
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Z_Automatico(COD_ECF:INTEGER;SIM_NAO:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 2 then
  begin
    if SIM_NAO = 'SIM' then
    begin
      iRetorno := Daruma_Registry_ZAutomatica('1');
      IRetorno := Daruma_FI_CfgRedZAutomatico('1');
    end
    else
    begin
      iRetorno := Daruma_Registry_ZAutomatica('0');
      iRetorno := Daruma_FI_CfgRedZAutomatico('0');
    end;
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = 3 then
  begin
    if SIM_NAO = 'SIM' then
      iRetorno := ECF_ZAUTO('1')
    else
      iRetorno := ECF_ZAUTO('0');

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

function cECF_Desliga_Janelas(COD_ECF:integer):string;
begin
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_LigaDesligaJanelas('0','0');
    result := 'OK';
  end;
end;

end.


