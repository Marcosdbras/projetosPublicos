unit unECF;

interface

uses
  Windows, SysUtils, Controls, messages, Forms, Dialogs, Classes, Shellapi;

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

uses funcoes, modulo, principal, Constantes;



(************************** IMPRESSORAS IMPLEMENTADAS *************************
1  - Bematech - Todos os Modelos
2  - Daruma
3  - Sweda 
4  - Epson    - Testado apenas com a TM-T81 FB II


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

// -------------------------------------------------------------------------- //
//                                                                            //
//                                                                            //
//                         E P S O N                                          //
//                                                                            //
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
//=================================================================================================
// EPSON_Config
//=================================================================================================
function EPSON_Config_Aliquota(pszTaxa:PChar; bTipoISS:Boolean):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Relatorio_Gerencial(pszReportDescription:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
function EPSON_Config_Forma_Pagamento(bVinculado:Boolean; pszNumeroMeio:PChar; pszDescricao:PChar):Integer;StdCall; External 'InterfaceEpson.dll';
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
// Analisa Erros
//=================================================================================================
function EPSON_AnalisarRetorno: String;
//=================================================================================================

// Funções diversas
function FormatarValor(peValor: Currency; piDecimais: Integer; pbRemovePonto: Boolean = True): String;
function EPSON_CupomNaoFiscalAberto: Boolean;
function EPSON_CupomFiscalAberto: Boolean;

(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)
(******************************************************************************)


// -------------------------------------------------------------------------- //
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

  with SUInfo do
  begin
    cb := SizeOf(SUInfo);
    dwFlags := STARTF_USESHOWWINDOW;
    wShowWindow := WindowState;
  end;

  Result := CreateProcess(nil, PChar(CmdLine), nil, nil, false,
  CREATE_NEW_CONSOLE or NORMAL_PRIORITY_CLASS, nil,
  PChar(ExtractFilePath(Filename)), SUInfo, ProcInfo);

  { Aguarda até ser finalizado }
  if Result then
  begin
    WaitForSingleObject(ProcInfo.hProcess, INFINITE);

    { Libera os Handles }
    CloseHandle(ProcInfo.hProcess);
    CloseHandle(ProcInfo.hThread);
  end;
end;

// -------------------------------------------------------------------------- //
// Retorno de Comunicacao com ECF
function cECF_Analisa_Retorno(COD_ECF:Integer):string;
begin
  {if COD_ECF = BEMATECH then
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
  end
  else
  if COD_ECF = DARUMA then
  begin
    if iRetorno = 1 then
      Result := 'OK'
    else
      Result := 'Erro de Comunicação!';
  end
  else
  if COD_ECF = SWEDA then
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
  end
  else
  if COD_ECF = EPSON then
  begin
    Result := cECF_Retorno_Impressora(COD_ECF);
  end
  else
  if COD_ECF = 5 then
  begin
    if iRetorno < 0 then
      Result := 'Erro de Comunicação!'
    else
      Result := 'OK';
  end;}
end;


// -------------------------------------------------------------------------- //
// Retorno de tratamento do comando
function cECF_Retorno_Impressora(COD_ECF:Integer):String;
var
  Mensagem : string;
  sErro : string;
  ST1err, ST1field,ST2, ST3, ST4, ST5, Temp: String;
  iST3, iST4, iST5, iConta: Integer;
  flagB15, flagB14, flagB12, flagB11, flagB10, flagB09, flagB07:Boolean;


begin
  if COD_ECF = BEMATECH then
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
  end
  else
  if cod_ECF = DARUMA then
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
  end
  else
  if COD_ECF = SWEDA then
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
  end
  else
  if COD_ECF = EPSON then
  begin
    Mensagem := '';
    Result := 'OK';

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

    if iRetorno <> 0 Then
    begin
      Result := 'ERRO'
    end
    else
    begin
      if iRetorno <> 0 Then
        Result := 'ERRO'
      else
        Result := 'OK';

      ST1err := Copy(Temp,1,2);
      ST1field := Copy(Temp,3,2);
      ST2 := Copy(Temp,5,4);
      ST3 := Copy(Temp,9,4);
      ST4 := Copy(Temp,13,4);
      ST5 := Copy(Temp,17,4);

      //==============================================================================
      //Parâmetros do último comando
      //==============================================================================
      case StrToInt(ST1err) of
        0:  Mensagem := '';
        1:  Mensagem := 'Campo deve ser um ponteiro para string.';
        2:  Mensagem := 'String com data inválida.';
        3:  Mensagem := 'String com hora inválida.';
        4:  Mensagem := 'String não está vazia ou contém data inválida.';
        5:  Mensagem := 'String não está vazia ou contém hora inválida.';
        6:  Mensagem := 'String não pode ser vazia.';
      else
        // Mensagem := 'Erro não mapeado.';
      end;

      //==============================================================================
      //Estado da Comunicação
      //==============================================================================
      Case StrToInt('$' + ST2) of
        0:  Mensagem := '';
        1:  Mensagem := 'Porta já está aberta.';
        2:  Mensagem := 'Porta usada por outra aplicação.';
        4:  Mensagem := 'Número de porta inválido.';
        5:  Mensagem := 'Velocidade inválida.';
        16: Mensagem := 'String não está vazia ou contém hora inválida.';
      else
        Mensagem := 'Erro interno da biblioteca.';
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
        BEGIN
          Mensagem := 'Impressora Desligada.';
          iST3 := iST3 - 32768;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 14                                *
      //****************************************************************************
      If (iST3 >= 16384) Then
        BEGIN
          Mensagem := 'Erro de impressão.';
          iST3 := iST3 - 16384;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 13                                *
      //****************************************************************************
      If (iST3 >= 8192) Then
        BEGIN
          Mensagem := 'Tampa superior aberta.';
          iST3 := iST3 - 8192;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 12                                *
      //****************************************************************************
      If (iST3 >= 4096) Then
        BEGIN
          Mensagem := 'Gaveta Aberta.';
          iST3 := iST3 - 4096;
        END;

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 10 E 9                          *
      //****************************************************************************
      If (iST3 >= 1024) Then
        BEGIN
          flagB10 := true;
          iST3 := iST3 - 1024;
        END;

      If (iST3 >= 512) Then
        BEGIN
          flagB09 := true;
          iST3 := iST3 - 512;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 8                                 *
      //****************************************************************************
      If (iST3 >= 256) Then
        BEGIN
          Mensagem := 'Aguardando retirada do papel.';
          iST3 := iST3 - 256;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 7                                 *
      //****************************************************************************
      If (iST3 >= 128) Then
        BEGIN
          Mensagem := 'Aguardando inserção do papel.';
          iST3 := iST3 - 128;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 6                                 *
      //****************************************************************************
      If (iST3 >= 64) Then
        BEGIN
          // T4.Text := T4.Text + 'Estado do sensor inferior da estação de cheque = 1 - ';
          iST3 := iST3 - 64;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 5                                 *
      //****************************************************************************
      If (iST3 >= 32) Then
        BEGIN
          // T4.Text := T4.Text + 'Estado do sensor superior da estação do cheque = 1 - ';
          iST3 := iST3 - 32;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 4                                 *
      //****************************************************************************
      If (iST3 >= 16) Then
        BEGIN
          // T4.Text := T4.Text + 'Estado do sensor de autenticação = 1 - ';
          iST3 := iST3 - 16;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 3                                 *
      //****************************************************************************
      If (iST3 >= 8) Then
        BEGIN
          Mensagem := 'Impressora sem papel.';
          iST3 := iST3 - 8;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 2                                 *
      //****************************************************************************
      If (iST3 >= 4) Then
        BEGIN
          // T4.Text := T4.Text + 'Pouco papel - ';
          iST3 := iST3 - 4;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 1                                 *
      //****************************************************************************
      If (iST3 >= 2) Then
        BEGIN
          Mensagem := 'Impressora sem papel.';
          iST3 := iST3 - 2;
        END;

      //****************************************************************************
      //                       TRATAMENTO DO BIT 0                                 *
      //****************************************************************************
      If (iST3 >= 1) Then
        BEGIN
          // T4.Text := T4.Text + 'Pouco papel - ';
        END;

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
        BEGIN
          flagB15 := true;
          iST4 := iST4 - 32768;
        END;

      If (iST4 >= 16384) Then
        BEGIN
          flagB14 := true;
          iST4 := iST4 - 16384;
        END;

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
        BEGIN
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
        BEGIN
          flagB11 := true;
          iST4 := iST4 - 2048;
        END;

      If (iST4 >= 1024) Then
        BEGIN
          flagB10 := true;
          iST4 := iST4 - 1024;
        END;

      If ((flagB11 = True) And (flagB10 = True)) Then
        Mensagem := 'Erro de leitura/escrita da Memória Fiscal.'
      Else If ((flagB11 = True) And (flagB10 = False)) Then
        Mensagem := 'Memória Fiscal cheia.'
      Else If ((flagB11 = False) And (flagB10 = True)) Then
        Mensagem := 'Memória Fiscal em esgotamento.';

      //****************************************************************************

      //****************************************************************************
      //                           TRATAMENTO DO BIT7                              *
      //****************************************************************************
      If (iST4 >= 128) Then
      BEGIN
          // Mensagem := 'Período de vendas aberto.';
          iST4 := iST4 - 128;
      END
      ELSE
        Mensagem := 'Período de vendas fechado.';

      //****************************************************************************

      //****************************************************************************
      //                       TRATAMENTO DOS BITS 3,2,1 E 0                       *
      //****************************************************************************
      {If iST4 = 9 Then
        Mensagem := 'Cheque ou autenticação (TMH6000 e TMU675).'
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
        $0000: Mensagem := 'Resultado sem erro..';
        $0001: Mensagem := 'Erro interno.';
        $0002: Mensagem := 'Erro de iniciação do equipamento.';
        $0003: Mensagem := 'Erro de processo interno.';
        $0101: Mensagem := 'Comando inválido para o estado atual.';
        $0102: Mensagem := 'Comando inválido para o documento atual.';
        $0106: Mensagem := 'Comando aceito apenas fora de intervenção.';
        $0107: Mensagem := 'Comando aceito apenas dentro de intervenção.';
        $0108: Mensagem := 'Comando inválido durante processo de scan.';
        $0109: Mensagem := 'Excesso de intervenções.';
        $0201: Mensagem := 'Comando com frame inválido.';
        $0202: Mensagem := 'Comando inválido.';
        $0203: Mensagem := 'Campos em excesso.';
        $0204: Mensagem := 'Campos em falta.';
        $0205: Mensagem := 'Campo não opcional.';
        $0206: Mensagem := 'Campo alfanumérico inválido.';
        $0207: Mensagem := 'Campo alfabético inválido.';
        $0208: Mensagem := 'Campo numérico inválido.';
        $0209: Mensagem := 'Campo binário inválido.';
        $020A: Mensagem := 'Campo imprimível inválido.';
        $020B: Mensagem := 'Campo hexadecimal inválido.';
        $020C: Mensagem := 'Campo data inválido.';
        $020D: Mensagem := 'Campo hora inválido.';
        $020E: Mensagem := 'Campo com atributos de impressão inválidos.';
        $020F: Mensagem := 'Campo booleano inválido.';
        $0210: Mensagem := 'Campo com tamanho inválido.';
        $0211: Mensagem := 'Extensão de comando inválida.';
        $0212: Mensagem := 'Código de barra não permitido.';
        $0213: Mensagem := 'Atributos de impressão não permitidos.';
        $0214: Mensagem := 'Atributos de impressão inválidos.';
        $0215: Mensagem := 'Código de barras incorretamente definido.';
        $0217: Mensagem := 'Comando invalido para a porta selecionada.';
        $0301: Mensagem := 'Erro de hardware.';
        $0302: Mensagem := 'Impressora não está pronta.';
        $0303: Mensagem := 'Erro de Impressão.';
        $0304: Mensagem := 'Falta de papel.';
        $0305: Mensagem := 'Pouco papel disponível.';
        $0306: Mensagem := 'Erro em carga ou expulsão do papel.';
        $0307: Mensagem := 'Característica não suportada pela impressora.';
        $0308: Mensagem := 'Erro de display.';
        $0309: Mensagem := 'Seqüência de scan inválida.';
        $300A: Mensagem := 'Número de área de recorte inválido.';
        $300B: Mensagem := 'Scanner não preparado.';
        $300C: Mensagem := 'Qualidade de Logotipo não suportada pela impressora.';
        $030E: Mensagem := 'Erro de leitura do microcódigo.';
        $0401: Mensagem := 'Número de série inválido.';
        $0402: Mensagem := 'Requer dados de fiscalização já configurados.';
        $0501: Mensagem := 'Data / Hora não configurada.';
        $0502: Mensagem := 'Data inválida.';
        $0503: Mensagem := 'Data em intervalo inválido.';
        $0504: Mensagem := 'Nome operador inválido.';
        $0505: Mensagem := 'Número de caixa inválido.';
        $0508: Mensagem := 'Dados de Cabeçalho ou rodapé inválidos.';
        $0509: Mensagem := 'Excesso de fiscalização.';
        $500C: Mensagem := 'Número máximo de meios de pagamento já definidos.';
        $050D: Mensagem := 'Meio de pagamento já definido.';
        $050E: Mensagem := 'Meio de pagamento inválido.';
        $050F: Mensagem := 'Descrição do meio de pagamento inválido.';
        $0510: Mensagem := 'Valor máximo de desconto inválido.';
        $0513: Mensagem := 'Logotipo do usuário inválido.';
        $0514: Mensagem := 'Seqüência de logotipo inválido.';
        $0515: Mensagem := 'Configuração de display inválida.';
        $0516: Mensagem := 'Dados do MICR inválidos.';
        $0517: Mensagem := 'Campo de endereço inválido.';
        $0518: Mensagem := 'Nome da loja não definido.';
        $0519: Mensagem := 'Dados fiscais não definidos.';
        $510A: Mensagem := 'Número seqüencial do ECF inválido.';
        $510B: Mensagem := 'Simbologia do GT inválida, devem ser todos diferentes.';
        $510C: Mensagem := 'Número de CNPJ inválido.';
        $051D: Mensagem := 'Senha de fiscalização inválida.';
        $051E: Mensagem := 'Último documento deve ser uma redução Z.';
        $051F: Mensagem := 'Símbolo da moeda igual ao atualmente cadastrado.';
        $0520: Mensagem := 'Identificação da alíquota não cadastrada.';
        $0521: Mensagem := 'Alíquota não cadastrada.';
        $0601: Mensagem := 'Memória de Fita-detalhe esgotada.';
        $0605: Mensagem := 'Número de série invalido para a Memória de Fita-detalhe.';
        $0606: Mensagem := 'Memória de Fita-detalhe não iniciada.';
        $0607: Mensagem := 'Memória de Fita-detalhe não pode estar iniciada.';
        $0608: Mensagem := 'Número de série da Memória de Fita-detalhe não confere.';
        $0609: Mensagem := 'Erro Interno na Memória de Fita-detalhe.';
        $0701: Mensagem := 'Valor inválido para o número do registro.';
        $0702: Mensagem := 'Valor inválido para o número do item.';
        $0703: Mensagem := 'Intervalo inválido para a leitura da MFD.';
        $0704: Mensagem := 'Número de usuário inválido para MFD.';
        $0801: Mensagem := 'Comando inválido com jornada fiscal fechada.';
        $0802: Mensagem := 'Comando inválido com jornada fiscal aberta.';
        $0803: Mensagem := 'Memória Fiscal esgotada.';
        $0804: Mensagem := 'Jornada fiscal deve ser fechada.';
        $0805: Mensagem := 'Não há meios de pagamento definidos.';
        $0806: Mensagem := 'Excesso de meios de pagamento utilizados na jornada fiscal.';
        $0807: Mensagem := 'Jornada fiscal sem movimento de vendas.';
        $0808: Mensagem := 'Intervalo de jornada fiscal inválido.';
        $0809: Mensagem := 'Existem mais dados para serem lidos.';
        $800A: Mensagem := 'Não existem mais dados para serem lidos.';
        $800B: Mensagem := 'Não pode abrir jornada fiscal.';
        $800C: Mensagem := 'Não pode fechar jornada fiscal.';
        $080D: Mensagem := 'Limite máximo do período fiscal atingido.';
        $080E: Mensagem := 'Limite máximo do período fiscal não atingido.';
        $080F: Mensagem := 'Abertura da jornada fiscal não permitida.';
        $0901: Mensagem := 'Valor muito grande.';
        $0902: Mensagem := 'Valor muito pequeno.';
        $0903: Mensagem := 'Itens em excesso.';
        $0904: Mensagem := 'Alíquotas em excesso.';
        $0905: Mensagem := 'Desconto ou acréscimos em excesso.';
        $0906: Mensagem := 'Meios de pagamento em excesso.';
        $0907: Mensagem := 'Item não encontrado.';
        $0908: Mensagem := 'Meio de pagamento não encontrado.';
        $0909: Mensagem := 'Total nulo.';
        $900C: Mensagem := 'Tipo de pagamento não definido.';
        $090F: Mensagem := 'Alíquota não encontrada.';
        $0910: Mensagem := 'Alíquota inválida.';
        $0911: Mensagem := 'Excesso de meios de pagamento com CDC.';
        $0912: Mensagem := 'Meio de pagamento com CDC já emitido.';
        $0913: Mensagem := 'Meio de pagamento com CDC ainda não emitido.';
        $0914: Mensagem := 'Leitura da Memória Fiscal – intervalo CRZ inválido.';
        $0915: Mensagem := 'Leitura da Memória Fiscal – intervalo de data inválido.';
        $0A01: Mensagem := 'Operação não permitida após desconto / acréscimo.';
        $0A02: Mensagem := 'Operação não permitida após registro de pagamentos.';
        $0A03: Mensagem := 'Tipo de item inválido.';
        $0A04: Mensagem := 'Linha de descrição em branco.';
        $0A05: Mensagem := 'Quantidade muito pequena.';
        $0A06: Mensagem := 'Quantidade muito grande.';
        $0A07: Mensagem := 'Total do item com valor muito alto.';
        $0A08: Mensagem := 'Operação não permitida antes do registro de pagamentos.';
        $0A09: Mensagem := 'Registro de pagamento incompleto.';
        $0A0A: Mensagem := 'Registro de pagamento finalizado.';
        $0A0B: Mensagem := 'Valor pago inválido.';
        $0A0C: Mensagem := 'Valor de desconto ou acréscimo não permitido.';
        $0A0E: Mensagem := 'Valor não pode ser zero.';
        $0A0F: Mensagem := 'Operação não permitida antes do registro de itens.';
        $0A11: Mensagem := 'Cancelamento de desconto e acréscimo somente para item atual.';
        $0A12: Mensagem := 'Não foi possível cancelar último Cupom Fiscal.';
        $0A13: Mensagem := 'Último Cupom Fiscal não encontrado.';
        $0A14: Mensagem := 'Último Comprovante Não-Fiscal não encontrado.';
        $0A15: Mensagem := 'Cancelamento de CDC necessária.';
        $0A16: Mensagem := 'Número de item em Cupom Fiscal inválido.';
        $0A17: Mensagem := 'Operação somente permitida após subtotalização.';
        $0A18: Mensagem := 'Operação somente permitida durante a venda de itens.';
        $0A19: Mensagem := 'Operação não permitida em item com desconto ou acréscimo.';
        $0A1A: Mensagem := 'Dígitos de quantidade inválidos.';
        $0A1B: Mensagem := 'Dígitos de valor unitário inválido.';
        $0A1C: Mensagem := 'Não há desconto ou acréscimo a cancelar.';
        $0A1D: Mensagem := 'Não há item para cancelar.';
        $0A1E: Mensagem := 'Desconto ou acréscimo somente no item atual.';
        $0A1F: Mensagem := 'Desconto ou acréscimo já efetuado.';
        $0A20: Mensagem := 'Desconto ou acréscimo nulo não permitido.';
        $0A21: Mensagem := 'Valor unitário inválido.';
        $0A22: Mensagem := 'Quantidade inválida.';
        $0A23: Mensagem := 'Código de item inválido.';
        $0A24: Mensagem := 'Descrição inválida.';
        $0A25: Mensagem := 'Operação de desconto ou acréscimo não permitida.';
        $0A26: Mensagem := 'Mensagem promocional já impressa.';
        $0A27: Mensagem := 'Linhas adicionais não podem ser impressas.';
        $0A28: Mensagem := 'Dados do consumidor já impresso.';
        $0A29: Mensagem := 'Dados do consumidor somente no fim do documento.';
        $0A2A: Mensagem := 'Dados do consumidor somente no inicio do documento.';
        $0A2B: Mensagem := 'Comando Inválido para o item.';
        $0E01: Mensagem := 'Número de linhas em documento excedido.';
        $0E02: Mensagem := 'Número do relatório inválido.';
        $0E03: Mensagem := 'Operação não permitida após registro de itens.';
        $0E04: Mensagem := 'Registro de valor nulo não permitido.';
        $0E05: Mensagem := 'Não há desconto a cancelar.';
        $0E06: Mensagem := 'Não há acréscimo a cancelar.';
        $0E07: Mensagem := 'Operação somente permitida após subtotalização.';
        $0E08: Mensagem := 'Operação somente permitida durante registro de itens.';
        $0E09: Mensagem := 'Operação não-fiscal inválida.';
        $0E0A: Mensagem := 'Último comprovante Não-Fiscal não encontrado.';
        $0E0B: Mensagem := 'Meio de pagamento não encontrado.';
        $0E0C: Mensagem := 'Não foi possível imprimir nova via.';
        $0E0D: Mensagem := 'Não foi possível realizar reimpressão.';
        $0E0E: Mensagem := 'Não foi possível imprimir nova parcela.';
        $0E0F: Mensagem := 'Não há mais parcelas a imprimir.';
        $0E10: Mensagem := 'Registro de item Não-Fiscal inválido.';
        $0E11: Mensagem := 'Desconto ou acréscimo já efetuado.';
        $0E12: Mensagem := 'Valor de desconto ou acréscimo inválido.';
        $0E13: Mensagem := 'Não foi possível cancelar o item.';
        $0E14: Mensagem := 'Itens em excesso.';
        $0E15: Mensagem := 'Operação Não-Fiscal não cadastrada.';
        $0E16: Mensagem := 'Excesso de relatórios / operações não-fiscais cadastradas.';
        $0E17: Mensagem := 'Relatório não encontrado.';
        $0E18: Mensagem := 'Comando não permitido.';
        $0E19: Mensagem := 'Comando não permitido em operações não-fiscais para movimento de monetário.';
        $0E1A: Mensagem := 'Comando permitido apenas em operações não-fiscais para movimento de monetário.';
        $0E1B: Mensagem := 'Número de parcelas inválido para a emissão de CCD.';
        $0E1C: Mensagem := 'Operação não fiscal já cadastrada.';
        $0E1D: Mensagem := 'Relatório gerencial já cadastrado.';
        $0E1E: Mensagem := 'Relatório Gerencial Inválido.';
        $3001: Mensagem := 'Configuração de cheque não registrada.';
        $3002: Mensagem := 'Configuração de cheque não encontrada.';
        $3003: Mensagem := 'Valor do cheque já impresso.';
        $3004: Mensagem := 'Nominal ao cheque já impresso.';
        $3005: Mensagem := 'Linhas adicionais no cheque já impresso.';
        $3006: Mensagem := 'Autenticação já impressa.';
        $3007: Mensagem := 'Número máximo de autenticações já impresso.';
      Else
        Mensagem := 'Erro desconhecido.';
      end;
    end;
  end;
end;


// -------------------------------------------------------------------------- //
// Abrir porta Serial do ECF
function cECF_Abre(COD_ECF:Integer;Porta:string):string;
var
 sVelocidade: String;
 sPorta: String;

begin
  Result := 'ERRO';

  case COD_ECF of
    BEMATECH: Result := 'OK';
    DARUMA: Result := 'OK';
    SWEDA: Result := 'OK';
    EPSON:
      begin
        Result := 'OK';

        SetLength(sVelocidade, 8);
        SetLength(sPorta, 4);
        iRetorno := EPSON_Serial_Abrir_PortaAD(pchar(sVelocidade), pchar(sPorta));

        if iRetorno <> 0 then
          Result := EPSON_AnalisarRetorno;
      end;
  else
    Result := 'ERRO';
  end;
end;

// -------------------------------------------------------------------------- //
// Fechar porta Serial do ECF
function cECF_Fecha(COD_ECF:Integer):string;
begin
  case COD_ECF of
    BEMATECH: Result := 'OK';
    DARUMA: Result := 'OK';
    SWEDA:
      begin
        iRetorno := ECF_FechaPortaSerial();

        if iRetorno = 0 then
          Result := 'OK'
        else
          Result := 'ERRO';
      end;

    EPSON:
      begin
        iRetorno := EPSON_Serial_Fechar_Porta;

        if iRetorno = 0 then
          Result := 'OK'
        else
          Result := 'ERRO';
      end;
  else
    Result := 'ERRO';
  end;
end;

// -------------------------------------------------------------------------- //
// INFORMACAOES
// Verificar Impressora Ligada
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
// 4 - Epson    --> OK
function cECF_Ligada(COD_ECF:Integer):string;
var
  sDados: String;
  ST3: String; // Estado da Impressora
  iST3: Integer;

begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end
  else
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_VerificaImpressoraLigada();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end
  else
  if COD_ECF = EPSON then
  begin
    SetLength(sDados, 20);
    iRetorno := EPSON_Obter_Estado_Impressora(PChar(sDados));

    if iRetorno <> 0 then
      Result := EPSON_AnalisarRetorno
    else
      Result := 'OK';
  end;
end;


// -------------------------------------------------------------------------- //
// Retornar o numero de Serie do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
// 4 - Epson    --> OK
function cECF_Numero_Serie(COD_ECF:Integer):string;
var
  sRet: string;
  i: integer;
  Numero: string;
  sDadosImpressora: String;

begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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
    else
      result := ecfMSG;
  end
  else
  if COD_ECF = DARUMA then
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
  end
  else
  if COD_ECF = SWEDA then
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
  end
  else
  if COD_ECF = EPSON then
  begin
    SetLength (sDadosImpressora, 108);
    iRetorno := EPSON_Obter_Dados_Impressora(Pchar(sDadosImpressora));

    if iRetorno <> 0 then
      Result := EPSON_AnalisarRetorno
    else
      Result := copy(sDadosImpressora, 1, 20);
  end
end;

// -------------------------------------------------------------------------- //
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
  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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


// -------------------------------------------------------------------------- //
function cECF_Numero_Contador_Gerencial(COD_ECF:integer):string;
var sRet : string;
i : integer;
Numero : string;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
  begin
    For i := 1 To 80 Do Numero := Numero + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao('44',Numero);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
        result := copy(Numero,1,4)
    end
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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
  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Criar o registro 60A (sintegra)
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Registro60A(COD_ECF:Integer):string;
begin

  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_RelatorioTipo60Analitico();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// Criar o registro 60M (sintegra)
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Registro60M(COD_ECF:Integer):string;
begin

  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_RelatorioTipo60Mestre();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// Lê as formas de pagamento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Le_Formas_Pgto(COD_ECF:Integer):string;
var sRet : string;
i, x, Y : integer;
Formas, sretorno_forma, svalor : string;
begin
  Result := 'ERRO';
  frmmodulo.tbForma_Pgto.Open;
  frmModulo.tbForma_Pgto.Refresh;

  if COD_ECF = BEMATECH then
  begin
    for i := 1 to 919 do Formas := Formas + ' ';
    iRetorno := Bematech_FI_VerificaFormasPagamentoMFD( Formas );

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
          // limpar a tabela de forma de pagamento
          Y := 0;

          for i := 1 to length(Formas) do
          begin
            if Y > 30 then break;
            if i = 1 then // inicio da variavel
              x := 1
            else
              if i >= length(Formas) then // final da variavel
              begin
                frmModulo.tbForma_Pgto.Insert;
                frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                svalor := copy(Formas,x+16,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';

                frmModulo.tbForma_pgto.fieldbyname('Valor_Acumulado').asfloat
                   := strtofloat(svalor);

                svalor := copy(Formas,x+26,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';

                frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                   := strtofloat(svalor);
                frmModulo.tbForma_Pgto.Post;
                INC(Y);
              end
              else
              begin
                if Formas[i] = ',' then
                begin
                  frmModulo.tbForma_Pgto.Insert;
                  frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                  frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                  svalor := copy(Formas,x+16,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat
                     := strtofloat(svalor);
                  svalor := copy(Formas,x+26,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                     := strtofloat(svalor);
                  INC(Y);
                  x := i + 1;
                end;
              end;
          end;
        result := 'OK';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;



  if COD_ECF = DARUMA then
  begin
    For i := 1 To 1027 Do Formas := Formas + ' ';
    iRetorno := Daruma_FI_VerificaFormasPagamentoEx(Formas);


    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
          Y := 0;

          for i := 1 to length(Formas) do
          begin
            if Y > 30 then break;
            if i = 1 then // inicio da variavel
              x := 1
            else
              if i >= length(Formas) then // final da variavel
              begin
                frmModulo.tbForma_Pgto.Insert;
                frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                svalor := copy(Formas,x+16,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';
                frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                  strtofloat(svalor);

                svalor := copy(Formas,x+26,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';
                frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                   := strtofloat(svalor);
                INC(Y);
              end
              else
              begin
                if Formas[i] = ',' then
                begin

                  frmModulo.tbForma_Pgto.Insert;
                  frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                  frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                  svalor := copy(Formas,x+16,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                    strtofloat(svalor);
                  svalor := copy(Formas,x+26,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat :=
                  strtofloat(svalor);
                  INC(Y);
                  x := i + 1;
                end;
              end;
          end;
        result := 'OK';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


  if COD_ECF = SWEDA then
  begin
    For i := 1 To 1045 Do Formas := Formas + ' ';
    iRetorno := ECF_verificaFormasPagamentoEx(Formas);


    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(cod_ecf);
      if sRet = 'OK' then
      begin
          Y := 0;

          for i := 1 to length(Formas) do
          begin
            if Y > 30 then break;
            if i = 1 then // inicio da variavel
              x := 1
            else
              if i >= length(Formas) then // final da variavel
              begin
                frmModulo.tbForma_Pgto.Insert;
                frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                svalor := copy(Formas,x+16,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';
                frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                  strtofloat(svalor);

                svalor := copy(Formas,x+26,20);
                if svalor <> '' then
                begin
                  svalor := floattostr(strtofloat(svalor));
                  if strtofloat(svalor) > 0 then
                    svalor := floattostr(strtofloat(svalor)/100);
                end
                else
                  svalor := '0';
                frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat
                   := strtofloat(svalor);
                INC(Y);
              end
              else
              begin
                if Formas[i] = ',' then
                begin

                  frmModulo.tbForma_Pgto.Insert;
                  frmModulo.tbForma_Pgto.FieldByName('id').asinteger := y;
                  frmModulo.tbForma_Pgto.FieldByName('Nome').asstring := copy(Formas,x,16);
                  svalor := copy(Formas,x+16,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Acumulado').asfloat :=
                    strtofloat(svalor);
                  svalor := copy(Formas,x+26,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  frmModulo.tbForma_Pgto.FieldByName('Valor_Ultimo_Cupom').asfloat :=
                  strtofloat(svalor);
                  INC(Y);
                  x := i + 1;
                end;
              end;
          end;
        result := 'OK';
      end
      else
        result := sRet;
    end
    ELSE
      result := ecfMSG;
  end;


end;

// -------------------------------------------------------------------------- //
// Criar o registro 60A (sintegra)
// 1 - Bematech --> OK
// 2 - Daruma   --> utiliza sistema UDECODER.exe
// 3 - Sweda    --> utiliza sistema SWmfd.exe

function cECF_Arquivo_Fiscal_CAT52(COD_ECF:integer;tipo,inicio,fim:string):string;
var cArqDestino, sEntrada, sArquivo : string;
i, dias, x : integer;
Arquivo, sret : string;
txt_mfd, txt_Cotepe, txt : textfile;

dInicial, dFinal : TDate;

      cFlag,  cDownload,
      cTipo,  cTipoDow , cUsuario : string;

  iACK: Integer;
  iST1: Integer;
  iST2: Integer;
  iST3: Integer;

E01, E02 :String;
E03, E04, E05, E06, E07, E08, E09, E10, E11, E12, E13, E14, E15, E16,
E17, E18, E19, E20, E21, E22, E23, E24, E25 : Array[0..10000] of string;




   cArqMFD            : string;
   cArqTXT            : string;
   cFormato           : string;
   cTipoDownload      : string;
   cLinha             : string;
   cDataInicial       : string;
   cDataFinal         : string;
   cArq1704           : string;
   cCMD               : string;
   
   iRetorno           : integer;

   cArqTemp           : TextFile;
   cArqTempTXT        : TextFile;

   Texto : TStringList;

//CTP_00107810_090507151646.txt

begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    if tipo = 'DATA' then
    begin
      cFlag := '1';
      cDownload := 'Download.mfd';
      cTipo := '2';
      cTipoDow := '1';
      cUsuario := '1';




      IRetorno := Bematech_FI_DownloadMFD(pchar(cDownload),pchar(ctipodow),pchar(inicio),pchar(fim),pchar(cusuario));

      sArquivo := 'c:\elpro\s8\txt\CTP'+zerar(sECF_Serial,20)+'_'+somenteNumero(datetostr(dData_sistema))+
                                                     somenteNumero(timetostr(time))+'.TXT';


      iRetorno := Bematech_FI_HabilitaDesabilitaRetornoEstendidoMFD(cflag);
      iRetorno := Bematech_FI_RetornoImpressoraMFD(iACK,iST1,iST2,iST3);

      iRetorno := BemaGeraRegistrosTipoE(cDownload, sarquivo, inicio, fim,
                                         sEmpresa_Nome, sEmpresa_Endereco,
                                         '', ctipo, '', '', '', '', '', '', '', '', '', '', '', '', '');
      result := sarquivo;
    end
    else
    begin


         cArqMFD  := 'Download.MFD';
         cTipo    := '2';
         cUsuario := '1';

         // Função que executa o download da MFD da impressora por COO.

         iRetorno := Bematech_FI_DownloadMFD( pchar( cArqMFD ),
                                              pchar( cTipo ),
                                              inicio,
                                              fim,
                                              pchar( cUsuario ) );
         cArqTXT       := 'Espelho.TXT';
         cFormato      := '0';
         cTipoDownload := '0';


         // Função que formata os dados da MFD para texto.

         iRetorno := Bematech_FI_FormatoDadosMFD( pchar( cArqMFD ),
                                                  pchar( cArqTXT ),
                                                  pchar( cFormato ),
                                                  pchar( cTipoDownload ),
                                                  pchar( '' ),
                                                  pchar( '' ),
                                                  pchar( '' ) );

         // Abre o arquivo Espelho.TXT com a imagem dos cupons capturados.

         AssignFile( cArqTemp, 'Espelho.TXT' );
         Reset( cArqTemp );

         // Cria o arquivo EspelhoTMP.TXT para guardar a imagens dos cupons
         // capturados, retirando as linhas em branco.

         AssignFile( cArqTempTXT, 'EspelhoTMP.TXT' );
         Rewrite( cArqTempTXT );

         cLinha := '';
         while not EOF( cArqTemp ) do
            begin
               Readln( cArqTemp, cLinha );
               if ( cLinha <> '' ) then
                  begin
                     Writeln( cArqTempTXT, cLinha );
                  end;
            end;

         CloseFile( cArqTemp );
         CloseFile( cArqTempTXT );


         assignfile(txt,'EspelhoTMP.TXT');
         reset(txt);
         while not eof(txt) do
         begin
           readln(txt,sentrada);
           if copy(sentrada,39,10) = 'COO:'+zerar(inicio,6) then cDataInicial := copy(sentrada,1,10);
           if copy(sentrada,39,10) = 'COO:'+zerar(fim,6) then cDatafinal := copy(sentrada,1,10);
         end;

{         // Cria um objeto do tipo TStringList.

         Texto := TStringList.Create;
         Texto.LoadFromFile( 'EspelhoTMP.TXT' );

         // Copia as informações de data inicial e final, dentro do objeto Texto.

         cDataInicial := copy( Texto.Strings[ 7 ], 1, 10 );
         cDataFinal   := copy( Texto.Strings[ Texto.Count - 2 ], 20, 10 );

         // Função que executa a geração do arquivo no layout do Ato Cotepe 17/04
         // para o PAF-ECF, por intervalo de datas previamente capturadas.



//         showmessage(cDataInicial+' '+cDataFinal);

}
         cArq1704  := 'c:\elpro\s8\txt\CTP1704.txt';
         cCMD      := '2';

         iRetorno := BemaGeraRegistrosTipoE( pchar( cArqMFD ),
                                             pchar( cArq1704 ),
                                             pchar( cDataInicial ),
                                             pchar( cDataFinal ),
                                             sEmpresa_nome,
                                             sEmpresa_endereco,
                                             '',
                                             pchar( cCMD ),
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '',
                                             '');

         DeleteFile( 'Download.MFD' );
         DeleteFile( 'Espelho.TXT' );
         DeleteFile( 'EspelhoTMP.TXT' );

         result := cArq1704;

    end;
  end;

  if COD_ECF = DARUMA then
  begin
    // executar o UnDecoder da DAruma
    try
      if FileExists('C:\elpro\s8\exe\uDecoder\WIN_uDecoder.exe') then
      begin
        Executa_Programa('C:\elpro\s8\exe\uDecoder\WIN_uDecoder.exe', '', SW_SHOW);

        sMsg := cECF_Ligada(COD_ECF);

        if sECF_Diretorio_mfd <> '' then
        begin
          try
            frmmodulo.Dlg_arquivo.InitialDir := sECF_Diretorio_MFD;
            frmmodulo.Dlg_arquivo.Filter := 'Arquivo Texto|*.txt';
            frmmodulo.Dlg_arquivo.Title := 'Assinar arquivo';
            if frmModulo.Dlg_arquivo.Execute then
            begin
              sArquivo := frmmodulo.Dlg_arquivo.FileName;
              TirarEAD(sArquivo);
              assinatura_digital(sarquivo);
              result := 'OK! Arquivo criado com sucesso!'+#13+
                        'Local: '+sArquivo;
            end
            else
              result :='Erro! Arquivo não assinado!';

          except
            result := 'Erro ao acessar diretório de gravação do arquivo MFD!';
          end;
        end
        else
          result := 'Não foi configurado o diretório de gravação do arquivo MFD!';
      end
      else
        result := 'Função não suportada pelo modelo de ECF utilizado';
    except

    end;
  end;

  
  if COD_ECF = SWEDA then
  begin
    if tipo = 'DATA' THEN tipo := '1';
    if tipo = 'COO'  THEN
    begin
      Zerar(inicio,7);
      zerar(fim,7);

      tipo := '2';
    end;

    IRetorno := ECF_DownloadMF('C:\SWEDA\MF.BIN');
    sArquivo := 'c:\elpro\s8\txt\CTP'+zerar(sECF_Serial,20)+'_'+somenteNumero(datetostr(dData_sistema))+
                                                   somenteNumero(timetostr(time))+'.TXT';
    IRetorno := ECF_ReproduzirMemoriaFiscalMFD('2',
                                                 INICIO,
                                                 FIM,
                                                 sarquivo,
                                                 'C:\SWEDA\MF.BIN');


      ecfMSG := cECF_Analisa_Retorno(cod_ecf);
      if ecfMSG = 'OK' then
      begin
           result := sarquivo;
      end
      ELSE
        result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// Retorna a MARCA do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Marca_ECF(COD_ECF:integer):string;
var sMarca, sRet, sModelo, sTipo : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Retorna a MODELO do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Modelo_ECF(COD_ECF:integer):string;
var sMarca, sRet, sModelo, sTipo : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Retorna o TIPO do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Tipo_ECF(COD_ECF:integer):string;
var sMarca, sRet, sModelo, sTipo : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
  begin
     // Daruma retorna em branco
      result := ' ';
  end;
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Retorna a versao do software basico
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Versao_SB(COD_ECF:integer):string;
var sVersao, sRet : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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
  if COD_ECF = DARUMA then
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

// -------------------------------------------------------------------------- //
// vERIFICAR se a reducao z estah automatica
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Verifica_Z_automatico(COD_ECF:integer):string;
var sValor : string;
i : integer;
sRet : string;
begin
  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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


// -------------------------------------------------------------------------- //
// verificar se impressora esta com horario de verao programado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function CECF_verifica_horario_verao(COD_ecf:INTEGER):STRING;
var sValor : string;
i : integer;
sRet : string;
begin
  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// retornar as aliquotas cadastradas
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Verifica_Aliquotas(COD_ecf:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// retorna os totalizadores nao fiscais
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Verifica_Totalizadores_NF(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Retorna a data do Movimento do ECF
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Data_Movimento(cod_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Verificar se existe cupom fiscal aberto
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Cupom_Fiscal_Aberto(cod_ECF:integer):string;
var sValor : string;
sRet : string;
i : integer;
begin
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Retorna o totalizador geral
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Grande_Total(cod_ECF:integer):string;
var sContador, sRet : string;
i : integer;
rvalor : real;
begin
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Informacoes referente a ultima reducao Z
// Contador de Reducoes impresso na ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Contador_CRZ(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = BEMATECH then
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



  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Contador de COO impresso na ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Contador_COO(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin

  if COD_ECF = BEMATECH then
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



  if COD_ECF = DARUMA then
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


  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// Contador de CRO (REINICIO DE OPERACOES) impresso na ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Contador_CRO(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin

  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// DATA E HORA da emissao da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_DataHora(COD_ECF:integer):string;
var sHora, sData, sRet : string;
i : integer;
begin

  if COD_ECF = BEMATECH then
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



  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// DATA do movimento da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Data_Movimento(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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



  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// valor da venda bruta da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Venda_Bruta(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
txt : textfile;
begin
  if COD_ECF = BEMATECH then
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



  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// total do iss da ultima reducao z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ_Total_ISS(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
txt : textfile;
begin
  if COD_ECF = BEMATECH then
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



  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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
  if COD_ECF = BEMATECH then
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


  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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




  if COD_ECF = DARUMA then
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



  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// LEITURA X
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_LeituraX(COD_ECF:Integer):string;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf) // retorna OK ou a Mensagem de Erro;
    ELSE
      result := ecfMSG;  // retorna o Erro de falha de comunicação com o ECF
  end;

  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_LeituraX();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// REDUCAO Z
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_ReducaoZ(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_ReducaoZ(pchar(''),pchar(''));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_ReducaoZ(pchar(''),pchar(''));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_ReducaoZ(pchar(''),pchar(''));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
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
    if COD_ECF = BEMATECH then
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


    if COD_ECF = DARUMA then
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

    if COD_ECF = SWEDA then
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
    if COD_ECF = BEMATECH then
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

    if COD_ECF = DARUMA then
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

    if COD_ECF = SWEDA then
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


// -------------------------------------------------------------------------- //
// CUPOM FISCAL
// ABRIR CUPOM FISCAL
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK

function cECF_Abre_Cupom(COD_ECF:Integer;CPF,Nome,Endereco:string):string;
begin
  Result := 'ERRO';

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
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

  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// incio do fechamento do cupom
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Inicia_Fechamento(COD_ECF:Integer;Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
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

  if COD_ECF = DARUMA then
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

  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// lancamento do pagamento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Forma_Pgto(COD_ECF:Integer;forma_pgto:string;valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Bematech_FI_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Daruma_FI_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// termina o fechamento do cupom
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Termina_Fechamento(COD_ECF:Integer;mensagem:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_TerminaFechamentoCupom(pchar(Mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_TerminaFechamentoCupom(pchar(Mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_TerminaFechamentoCupom(pchar(Mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// fechamento do cupom resumido
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Fecha_Cupom_Resumido(cod_ecf:integer;forma_pgto:string;mensagem:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    IRetorno := Bematech_FI_FechaCupomResumido(pchar(forma_pgto),pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_FechaCupomResumido(pchar(forma_pgto),pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    IRetorno := ECF_FechaCupomResumido(pchar(forma_pgto),pchar(mensagem));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

end;

// -------------------------------------------------------------------------- //
// cancelar cupom
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Cancela_Cupom(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_CancelaCupom();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// cancelar item
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Cancela_Item(COD_ECF:Integer;Item:string):string;
begin
  Result := 'ERRO';

  item := inttostr(strtoint(item));

  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_CancelaItemGenerico(pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_CancelaItemGenerico(pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_CancelaItemGenerico(pchar(Item));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// OPERACOES NAO FISCAL
// abertura do relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Abre_Gerencial(COD_ECF:Integer;Texto:String):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_RelatorioGerencial(pchar(texto+char(10)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// usar o relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Usa_Gerencial(COD_ECF:Integer;Texto:String):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := {Bematech_FI_RelatorioGerencial(pchar(texto));//}Bematech_FI_RelatorioGerencial(pchar(texto+chr(10)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_RelatorioGerencial(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// fechamento do relatorio gerencial
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Fecha_Gerencial(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_FechaRelatorioGerencial();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// abertura do CNFV - Comprovante nao fiscal vinculado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Abre_CNFV(COD_ECF:Integer;Forma_Pgto:string;Valor:real;Numero_Cupom:string):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
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
  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// usar o CNFV - Comprovante nao fiscal vinculado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Usa_CNFV(COD_ECF:Integer;Texto:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(texto+chr(10)));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// fechar o CNFV - Comprovante nao fiscal vinculado
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Fecha_CNFV(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_FechaComprovanteNaoFiscalVinculado();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// Sangria
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Sangria(COD_ECF:Integer;Valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_Sangria(pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_Sangria(pchar(svalor));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
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
  if COD_ECF = BEMATECH then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = DARUMA then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// recebimento nao fiscal
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Recebimento(COD_ECF:Integer;Totalizador:string;Valor:real;Forma_Pgto:string):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// programar horario de verao
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Horario_Verao(COD_ECF:integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_ProgramaHorarioVerao();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// programar aliquota
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Aliquota(COD_ECF:integer;aliquota:real;ICMS_OU_ISS:STRING):string;
VAR Itipo : integer;
saliquota : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
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
  if COD_ECF = DARUMA then
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
  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
// abrir gaveta
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Abre_Gaveta(COD_ECF:integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_AcionaGaveta();
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
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
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_VerificaEstadoGaveta(iEstado);
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// programar totalizador nao fiscal
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Totalizador(COD_ECF:Integer;Indice:integer;descricao:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    iRetorno := Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
// programar forma de pagamento
// 1 - Bematech --> OK
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Forma_Pgto(COD_ECF:Integer;Forma_Pgto:string;Vinculado:string):string;
var sVinc : string;
begin
  Result := 'ERRO';
  if COD_ECF = BEMATECH then
  begin
    if vinculado = 'SIM' then sVinc := '1' else sVinc := '0';

    iRetorno := Bematech_FI_ProgramaFormaPagamentoMFD(pchar(Forma_Pgto),pchar(sVinc));

    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = DARUMA then
  begin
    iRetorno := Daruma_FI_ProgramaFormasPagamento(pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;

  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_ProgramaFormasPagamento(pchar(forma_pgto));
    ecfMSG := cECF_Analisa_Retorno(cod_ecf);
    if ecfMSG = 'OK' then
      result := cECF_Retorno_Impressora(cod_ecf)
    ELSE
      result := ecfMSG;
  end;
end;

// -------------------------------------------------------------------------- //
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

// -------------------------------------------------------------------------- //
// programar z automatico
// 1 - Bematech --> somente em mit
// 2 - Daruma   --> OK
// 3 - Sweda    --> OK
function cECF_Programa_Z_Automatico(COD_ECF:INTEGER;SIM_NAO:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = DARUMA then
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


  if COD_ECF = SWEDA then
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

// -------------------------------------------------------------------------- //
function cECF_Desliga_Janelas(COD_ECF:integer):string;
begin
  if COD_ECF = SWEDA then
  begin
    iRetorno := ECF_LigaDesligaJanelas('0','0');
    result := 'OK';
  end;
end;

end.
