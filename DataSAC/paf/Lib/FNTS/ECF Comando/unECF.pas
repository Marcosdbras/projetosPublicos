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





var
  IRetorno : Integer;
  BRetorno : Boolean;
  iACK, iST1, iST2 : Integer;
  Handle : THandle;
  MSG : string;
  nporta : integer;



type
  tipo_parametro = Record
    Nome : string;
    Conteudo : string;
    Tipo : integer;
  end;

  TFormas = Record
    Nome : String[20];
    Valor_Acumulado : Real;
    Valor_Ultimo_Cupom : Real;
  end;

  TTotalizador = Record
    Nome : String[20];
    Valor: Real;
  end;

var
  tbForma : array[1..30] of TFormas;
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

// Informacoes ref. reducao Z
function cECF_ReducaoZ_Contador_CRZ(COD_ECF:integer):string;
function cECF_ReducaoZ_Contador_COO(COD_ECF:integer):string;
function cECF_ReducaoZ_Contador_CRO(COD_ECF:integer):string;
function cECF_ReducaoZ_DataHora(COD_ECF:integer):string;
function cECF_ReducaoZ_Data_Movimento(COD_ECF:integer):string;
function cECF_ReducaoZ_Venda_Bruta(COD_ECF:integer):string;
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
function cECF_Abre_Cupom(COD_ECF:Integer):string;
function cECF_Vende_item(COD_ECF:Integer;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;tipo_desconto:string;total:real):string;
function cECF_Inicia_Fechamento(COD_ECF:Integer;Acrescimo_ou_Desconto:string;tipo:string;valor:real):string;
function cECF_Forma_Pgto(COD_ECF:Integer;forma_pgto:string;valor:real):string;
function cECF_Termina_Fechamento(COD_ECF:Integer;mensagem:string):string;
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
// Outros
function cECF_Status_Gaveta(COD_ECF:integer):string;
function cECF_Abre_Gaveta(COD_ECF:integer):string;
(******************************************************************************)










implementation

uses funcoes;




(************************** IMPRESSORAS IMPLEMENTADAS *************************
1  - Bematech - Todos os Modelos
2  - Daruma


(**************************        bematech           *************************)
// Retornos
function Bematech_FI_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
// Informacoes e Status
function Bematech_FI_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_SubTotal( SubTotal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';
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
// Relatorios Gerenciais
function Bematech_FI_LeituraX: Integer; StdCall; External 'BEMAFI32.DLL' ;
function Bematech_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_LeituraMemoriaFiscalSerialReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_GeraRegistrosCAT52MFDEx(Arquivo: String; Data: String;cArqDestino:string): Integer; StdCall; External 'BEMAFI32.DLL';
// Cupom
function Bematech_FI_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_CancelaCupom: Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'BEMAFI32.DLL';
function Bematech_FI_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'BEMAFI32.DLL';
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


// Outros
function Bematech_FI_AcionaGaveta:Integer; StdCall; External 'BEMAFI32.DLL' Name 'Bematech_FI_AcionaGaveta';
function Bematech_FI_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'BEMAFI32.DLL';


(**************************        daruma             *************************)
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
//function Daruma_FI_VerificaDescricaoFormasPagamento( Descricao: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VerificaFormasPagamentoEx( FormasEx: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RetornaInformacao( Indice: String; Valor: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_DataHoraReducao( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LerAliquotasComIndice(AliquotasComIndice: String ): Integer; StdCall; External 'Daruma32.dll';
// Relatorios Gerenciais
function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_MFD_LeituraMFCompleta( Valor: String ): Integer; StdCall; External 'Daruma32.dll'
// Cupom
function Daruma_FI_AbreCupom( CPF_ou_CNPJ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_VendeItemDepartamento( Codigo: String; Descricao: String; Aliquota: String; Valor_Unitario: String; Quantidade: String; Valor_do_Desconto: String; Valor_do_Acrescimo: String; Indice_Departamento: String; Unidade_Medida: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaItemGenerico( Numero_Item: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CancelaCupom: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_IniciaFechamentoCupom( Acrescimo_ou_Desconto: String; Tipo_do_Acrescimo_ou_Desconto: String; Valor_do_Acrescimo_ou_Desconto: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamento( Descricao_da_Forma_Pagamento: String; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_TerminaFechamentoCupom( Mensagem_Promocional: String ): Integer; StdCall; External 'Daruma32.dll';
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
// Relatorios Gerenciais
function ECF_LeituraX: Integer; StdCall; External 'CONVECF.DLL' ;
function ECF_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalData( DataInicial: String; DataFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_LeituraMemoriaFiscalReducao( ReducaoInicial: String; ReducaoFinal: String ): Integer; StdCall; External 'CONVECF.DLL';
// Cupom
function ECF_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_CancelaCupom: Integer; StdCall; External 'CONVECF.DLL';
function ECF_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'CONVECF.DLL';
function ECF_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'CONVECF.DLL';
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
// Outros
function ECF_AcionaGaveta: Integer; StdCall; External 'CONVECF.dll';
function ECF_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'CONVECF.DLL';



(**************************        ELGIN              *************************)
// Inicializacao
function Elgin_AbrePortaSerial: Integer; StdCall; External 'Elgin.dll';
function Elgin_FechaPortaSerial: Integer; StdCall; External 'Elgin.dll';
// Retornos
function Elgin_RetornoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Elgin.DLL';
// Informacoes e Status
function Elgin_NumeroSerie( NumeroSerie: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_SubTotal( SubTotal: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_NumeroCupom( NumeroCupom: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_NumeroCaixa( NumeroCaixa: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_DataHoraImpressora( Data: String; Hora: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_VerificaEstadoImpressora( Var ACK: Integer; Var ST1: Integer; Var ST2: Integer ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_VerificaImpressoraLigada: Integer; StdCall; External 'Elgin.DLL' Name 'Elgin_VerificaImpressoraLigada';
function Elgin_DownloadMFD( Arquivo: String; TipoDownload: String; ParametroInicial: String; ParametroFinal: String; UsuarioECF: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_FormatoDadosMFD( ArquivoOrigem : String;ArquivoDestino  : String;TipoFormato : String; TipoDownload : String;ParametroInicial: String; ParametroFinal  : String; UsuarioECF : String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_RelatorioTipo60Analitico: Integer; StdCall; External 'Elgin.DLL' Name 'Elgin_RelatorioTipo60Analitico';
function Elgin_RelatorioTipo60Mestre: Integer; StdCall; External 'Elgin.DLL' Name 'Elgin_RelatorioTipo60Mestre';
// Relatorios Gerenciais
function Elgin_LeituraX: Integer; StdCall; External 'Elgin.DLL' ;
function Elgin_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_LeituraMemoriaFiscalData(DataInicial, DataFinal, FlagLeitura : string): Integer; StdCall; External 'Elgin.DLL';
function Elgin_LeituraMemoriaFiscalReducao(ReducaoInicial, ReducaoFinal, FlagLeitura : string): Integer; StdCall; External 'Elgin.DLL';
// Cupom
function Elgin_AbreCupom( CGC_CPF: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_VendeItem( Codigo: String; Descricao: String; Aliquota: String; TipoQuantidade: String; Quantidade: String; CasasDecimais: Integer; ValorUnitario: String; TipoDesconto: String; Desconto: String): Integer; StdCall; External 'Elgin.DLL';
function Elgin_CancelaItemGenerico( NumeroItem: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_CancelaCupom: Integer; StdCall; External 'Elgin.DLL';
function Elgin_IniciaFechamentoCupom( AcrescimoDesconto: String; TipoAcrescimoDesconto: String; ValorAcrescimoDesconto: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_EfetuaFormaPagamento( FormaPagamento: String; ValorFormaPagamento: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_TerminaFechamentoCupom( Mensagem: String): Integer; StdCall; External 'Elgin.DLL';
// Operações Não Fiscal
function Elgin_AbreComprovanteNaoFiscalVinculado( FormaPagamento: String; Valor: String; NumeroCupom: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_UsaComprovanteNaoFiscalVinculado( Texto: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Elgin.DLL';
function Elgin_Sangria( Valor: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_Suprimento( Valor: String; FormaPagamento: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_RecebimentoNaoFiscal( IndiceTotalizador: String; Valor: String; FormaPagamento: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_RelatorioGerencial( Texto: String ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_FechaRelatorioGerencial: Integer; StdCall; External 'Elgin.DLL';

// Configuração / Programação
function Elgin_ProgramaAliquota( Aliquota: String; ICMS_ISS: Integer ): Integer; StdCall; External 'Elgin.DLL';
function Elgin_ProgramaHorarioVerao: Integer; StdCall; External 'Elgin.DLL';
function Elgin_NomeiaTotalizadorNaoSujeitoIcms( Indice: Integer; Totalizador: String ): Integer; StdCall; External 'Elgin.DLL';
// Outros
function Elgin_AcionaGaveta:Integer; StdCall; External 'Elgin.DLL' Name 'Elgin_AcionaGaveta';
function Elgin_VerificaEstadoGaveta( Var EstadoGaveta: Integer ): Integer; StdCall; External 'Elgin.DLL';

(**************************        LOGGER II          *************************)
(***** EAGLE, ELGIN, INTERWAY, ITAUTEC, PERCEPTION, PERTO, URANO, ZPM *********)
function DLLG2_IniciaDriver(Canal: String): Integer; stdcall; external 'DllG2.dll';
function DLLG2_EncerraDriver(Handle: Integer): Integer; stdcall; external 'DllG2.dll';
function DLLG2_ExecutaComando(Handle: Integer; Comando: string): Integer; stdcall; external 'DllG2.dll';
function DLLG2_LeRegistrador(Handle: Integer; NomeRegistrador : String; NomeComando: string; TamNomeComando: Integer): Integer; stdcall; external 'DllG2.dll';
function DLLG2_ObtemNomeErro(Handle: Integer; NomeErro: String; TamNomeErro: integer): String; stdcall; external 'DllG2.dll';
function DLLG2_ObtemCodErro(Handle: Integer): Integer; stdcall; external 'DllG2.dll';
function DLLG2_ObtemCircunstancia(Handle: Integer; Circunstancia: String; TamNomeCircunstancia: Integer): String; stdcall; external 'DllG2.dll';
function DLLG2_ObtemRetornos(Handle: Integer; Retornos: String; TamRetorno: Integer): String; stdcall; external 'DllG2.dll';
function DLLG2_Retorno(Handle: Integer; Indice : Integer; NomeRetorno: string; TamNomeRetorno: Integer; ValorRetorno: string; TamValorRetorno: Integer): Integer; stdcall; external 'DllG2.dll';
procedure DLLG2_LimpaParams(Handle: Integer); stdcall; external 'DllG2.dll';
procedure DLLG2_AdicionaParam(Handle: Integer; NomeParam, ValorParam: string; TipoParam: Integer);stdcall; external 'DllG2.dll'; // 0-boolean  2-data  3-hora  4-inteiro  5-long  9-inteiro sem sinal  10-long sem sinal 6-Monetario  7-string
procedure DLLG2_DefineTimeout(Handle: Integer; TempoMaximo: Integer) stdcall; external 'DllG2.dll';
procedure DLLG2_SetaArquivoLog(NomeArquivo: String)stdcall; external 'DllG2.dll';
// ObtemCodErro
function ObtemCodErro(nPorta:integer): integer;
begin
  result := DLLG2_ObtemCodErro(nPorta);
end;
// VerificaErro
Function VerificaErro( lRetorno: Longint; var lCodErro: Longint): Boolean;
begin
    VerificaErro := False;
    lCodErro := 0;
    If (lRetorno > 0) Then
    begin
      lCodErro := ObtemCodErro(nPorta);
      if(lCodErro > 0) then
        VerificaErro := True;
    End;
end;
function IsEmpty( str: string): boolean;
begin
  result := true;
  if( str <> '') then
    result := false;
end;
// Executa o comando
function Executa(nPorta: integer; strComando: string; aParametros: array of tipo_parametro): integer;
var
  nLin  : integer;
  lCodErro : Longint;
begin
  DLLG2_LimpaParams(nPorta);
  for nLin:= 0 to High(aParametros) do
  begin
    if(not IsEmpty(aParametros[nLin].Conteudo)) then
      DLLG2_AdicionaParam(nPorta, aParametros[nLin].Nome, aParametros[nLin].Conteudo, Integer(aParametros[nLin].Tipo));
  end;
  VerificaErro(DLLG2_ExecutaComando(nPorta, strComando),lCodErro);
  result := lCodErro;
end;



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
      IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto!'END;
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
      IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto!'END;
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

  if COD_ECF = 4 then
  begin
    iACK := 0; iST1 := 0; iST2 := 0;
    iRetorno := Elgin_RetornoImpressora(iACK,iST1,iST2);
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
      IF iST1 >= 2   Then BEGIN iST1 := iST1 - 2;   Mensagem := Mensagem+' '+ 'Cupom Aberto!'END;
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

  if COD_ECF = 5 then
  begin
    iRetorno := DLLG2_ObtemCodErro(0);
    Mensagem := '';
    case iRetorno of
      1	    : Mensagem := 'Não foi possível alocar mais memória.';
      2	    : Mensagem := 'Memória RAM foi corrompida.';
      1000  : Mensagem := 'Memória Fiscal foi desconectada.';
      1001  : Mensagem := 'Erro de leitura na Memória Fiscal.';
      1002  : Mensagem := 'Memória está setada apenas para leitura.';
      1003  : Mensagem := 'Registro fora dos padrões (erro interno).';
      1004  : Mensagem := 'Memória Fiscal está lotada.';
      1005  : Mensagem := 'Número máximo de cartuchos excedidos.';
      1006  : Mensagem := 'Tentativa de gravar novo modelo de ECF.';
      1007  : Mensagem := 'Tentativa de gravação de qualquer dado antes da inicialização da Memória Fiscal.';
      1008  : Mensagem := 'Número máximo de usuários foi atingido.';
      1009  : Mensagem := 'Número máximo de intervenções foi atingido.';
      1010  : Mensagem := 'Número máximo de versões foi atingido.';
      1011  : Mensagem := 'Número máximo de reduções foi atingido.';
      1012  : Mensagem := 'Erro na gravação de registro na memória fiscal.';
      2000  : Mensagem := 'Erro de leitura no dispositivo físico.';
      2001  : Mensagem := 'Erro de leitura no dispositivo.';
      2002  : Mensagem := 'Dispositivo de transações foi desconectado.';
      3000  : Mensagem := 'Tipo de registro a ser gravado inválido.';
      3001  : Mensagem := 'Registro de transações está esgotado.';
      3002  : Mensagem := 'Tentativa de abrir nova transação com transação já aberta.';
      3003  : Mensagem := 'Tentativa de fechar uma transação que não se encontrava.';
      4000  : Mensagem := 'Erro de leitura no dispositivo físico.';
      4001  : Mensagem := 'Erro de escrita no dispositivo.';
      4002  : Mensagem := 'Dispositivo de contexto foi desconectado.';
      4003  : Mensagem := 'Leitura após final do arquivo.';
      4004  : Mensagem := 'Escrita após final do arquivo.';
      5000  : Mensagem := 'Versão de contexto fiscal no dispositivo não foi reconhecida.';
      5001  : Mensagem := 'CRC do dispositivo está incorreto.';
      5002  : Mensagem := 'Tentativa de escrita fora da área de contexto.';
      6000  : Mensagem := 'Relógio do ECF inconsistente.';
      6001  : Mensagem := 'Data/hora informadas não estão consistentes.';
      7000  : Mensagem := 'Nenhum mecanismo de impressão presente.';
      7001  : Mensagem := 'Atual mecanismo de impressão está desconectado.';
      7002  : Mensagem := 'Mecanismo não possui capacidade suficiente para realizar esta operação.';
      7003  : Mensagem := 'Impressora está sem papel para imprimir.';
      7004  : Mensagem := 'Faltou papel durante a impressão do comando.';
      8000  : Mensagem := 'Comando fora de seqüência.';
      8001  : Mensagem := 'Código mercadoria não válido.';
      8002  : Mensagem := 'Descrição inválida.';
      8003  : Mensagem := 'Quantidade inválida.';
      8004  : Mensagem := 'Índice da alíquota não válido.';
      8005  : Mensagem := 'Alíquota não carregada.';
      8006  : Mensagem := 'Valor contém caracter inválido.';
      8007  : Mensagem := 'Total da operação igual a 0 (zero).';
      8008  : Mensagem := 'Alíquota não disponível para carga.';
      8009  : Mensagem := 'Valor da alíquota não válido.';
      8010  : Mensagem := 'Troca de situação tributária somente após Redução Z.';
      8011  : Mensagem := 'Índice do Meio de Pagamento não válido.';
      8012  : Mensagem := 'Meio de Pagamento indisponível para carga.';
      8013  : Mensagem := 'Cupom totalizado em 0 (zero).';
      8014  : Mensagem := 'Meio de Pagamento não definido.';
      8015  : Mensagem := 'Carga de usuário permitido somente após Redução Z.';
      8016  : Mensagem := 'Dia sem movimento.';
      8017  : Mensagem := 'Total pago inferior ao total do cupom.';
      8018  : Mensagem := 'Gerencial não definido.';
      8019  : Mensagem := 'Índice do Gerencial fora da faixa.';
      8020  : Mensagem := 'Gerencial não disponível para carga.';
      8021  : Mensagem := 'Nome do Gerencial inválido.';
      8022  : Mensagem := 'Esgotado número de Gerenciais.';
      8023  : Mensagem := 'Acerto do horário de verão somente após a Redução Z.';
      8024  : Mensagem := 'Já acertou horário de verão.';
      8025  : Mensagem := 'Sem Alíquotas disponíveis para carga.';
      8026  : Mensagem := 'Item não vendido no cupom.';
      8027  : Mensagem := 'Quantidade a ser cancelada maior do que a quantidade vendida.';
      8028  : Mensagem := 'Cabeçalho possui campo(s) inválido(s).';
      8029  : Mensagem := 'Nome do Departamento não válido.';
      8030  : Mensagem := 'Departamento não encontrado.';
      8031  : Mensagem := 'Departamento não definido.';
      8032  : Mensagem := 'Não há Meio de Pagamento disponível.';
      8033  : Mensagem := 'Alteração de Meio de Pagamento somente após a Redução Z.';
      8034  : Mensagem := 'Nome do Documento Não Fiscal não pode ser vazio.';
      8035  : Mensagem := 'Não há mais Documentos Não Fiscais disponíveis.';
      8036  : Mensagem := 'Documento Não Fiscal indisponível para carga.';
      8037  : Mensagem := 'Número da redução inicial inválida.';
      8038  : Mensagem := 'Cabeçalho do documento já foi impresso.';
      8039  : Mensagem := 'Número máximo de linhas de propaganda excedidas.';
      8040  : Mensagem := 'Relógio já está no estado desejado.';
      8041  : Mensagem := 'Valor do acréscimo inconsistente.';
      8042  : Mensagem := 'Não há meio de pagamento definido.';
      8043  : Mensagem := 'COO do documento vinculado inválido.';
      8044  : Mensagem := 'Índice do item inexistente no contexto.';
      8045  : Mensagem := 'Código de item não encontrado no cupom atual.';
      8046  : Mensagem := 'Percentual do desconto ultrapassou 100%.';
      8047  : Mensagem := 'Desconto do item inválido.';
      8048  : Mensagem := 'Falta definir valor percentual ou absoluto em operação de desconto/acréscimo.';
      8049  : Mensagem := 'Tentativa de operação sobre item cancelado.';
      8050  : Mensagem := 'Cancelamento de acréscimo/desconto inválidos.';
      8051  : Mensagem := 'Operação de acréscimo/desconto inválida.';
      8052  : Mensagem := 'Número de Departamentos esgotados.';
      8053  : Mensagem := 'Índice de Documento Não Fiscal fora da faixa.';
      8054  : Mensagem := 'Troca de Documento Não Fiscal somente após a Redução Z.';
      8055  : Mensagem := 'CNPJ e/ou Inscrição Estadual inválida(s).';
      8056  : Mensagem := 'Falta(m) parâmetro(s) no comando de abertura de Comprovante Crédito ou Débito.';
      8057  : Mensagem := 'Código e Nome do Documento Não Fiscal indefinidos.';
      8058  : Mensagem := 'Alíquota não definida no comando de venda.';
      8059  : Mensagem := 'Código e Nome do Meio de Pagamento não definidos.';
      8060  : Mensagem := 'Parâmetro de comando não informado.';
      8061  : Mensagem := 'Não há Documentos Não Fiscais definidos.';
      8062  : Mensagem := 'Acréscimo/Desconto de item já cancelado.';
      8063  : Mensagem := 'Não há acréscimo/desconto em item.';
      8064  : Mensagem := 'Item já possui acréscimo.';
      8065  : Mensagem := 'Operação de acréscimo em item ou subtotal só é valido para ICMS.';
      8066  : Mensagem := 'Valor do Comprovante Crédito ou Débito não informado.';
      8067  : Mensagem := 'COO inválido.';
      8068  : Mensagem := 'Índice do Meio de Pagamento no cupom inválido.';
      8069  : Mensagem := 'Documento Não Fiscal não encontrado.';
      8070  : Mensagem := 'Seqüência de pagamento não encontrada no cupom.';
      8071  : Mensagem := 'Meio de pagamento não permite CDC.';
      8072  : Mensagem := 'Valor insuficiente para pagar o cupom.';
      8073  : Mensagem := 'Meio de pagamento origem ou destino não encontrado no último cupom emitido.';
      8074  : Mensagem := 'Valor do estorno não pode exceder o valor do pagamento no meio origem.';
      8075  : Mensagem := 'Meios de pagamento origem e destino devem ser diferentes no estorno.';
      8076  : Mensagem := 'Percentual da alíquota inválido.';
      8077  : Mensagem := 'Não houve operação em subtotal para ser cancelada.';
      8078  : Mensagem := 'Só é permitida uma operação de acréscimo em subtotal por cupom.';
      8079  : Mensagem := 'Texto adicional do meio de pagamento deve ter no máximo 2 linhas.';
      8080  : Mensagem := 'Preço unitário ultrapassou o número máximo de dígitos permitido.';
      8081  : Mensagem := 'Código do departamento fora da faixa.';
      8082  : Mensagem := 'O valor do desconto não pode zerar o valo do cupom ou ser maior que o item.';
      8083  : Mensagem := 'Percentual de acréscimo não pode ser superior a 999,99%.';
      8084  : Mensagem := 'Valor do acréscimo ultrapassa o número máximo de dígitos permitido (13 dígitos).';
      8085  : Mensagem := 'Cupom sem venda em alíquota de ICMS.';
      8086  : Mensagem := 'Cancelamento inválido.';
      8087  : Mensagem := 'Texto de cliche do usuário deve ter no máximo três linhas.';
      8088  : Mensagem := 'Não houve venda de item não fiscal.';
      8089  : Mensagem := 'A data não pode ser inferior a data do último documento emitido.';
      8090  : Mensagem := 'A hora informada no comando não pode ser inferior ao horário do último documento.';
      8091  : Mensagem := 'Sem função.';
      8092  : Mensagem := 'Estado inválido para ajuste de relogio ou horário de verão.';
      8093  : Mensagem := 'A operação de CDC deve preceder as operações de estorno de meio de pagamento.';
      8094  : Mensagem := 'Senha inválida para inicialização do proprietário.';
      8095  : Mensagem := 'Erro gerado pelo mecanismo de cheques.';
      8096  : Mensagem := 'Comando válido somente após a abertura do dia.';
      9000  : Mensagem := 'Não foi encontrado nenhum cartucho de dados vazio para ser inicializado.';
      9001  : Mensagem := 'Cartucho com o número de série informado não foi encontrado.';
      9002  : Mensagem := 'Número de série do ECF é inválido na inicialização.';
      9003  : Mensagem := 'Cartucho de MFD desconectado ou com problemas.';
      9004  : Mensagem := 'Erro de escrita no dispositivo de MFD.';
      9005  : Mensagem := 'Erro na tentativa de posicionar ponteiro de leitura.';
      9006  : Mensagem := 'Endereço do Bad Sector informado é inválido.';
      9007  : Mensagem := 'Erro de leitura na MFD.';
      9008  : Mensagem := 'Tentativa de leitura além dos limites da MFD.';
      9009  : Mensagem := 'MFD não possui mais espaço para escrita.';
      9010  : Mensagem := 'Leitura da MFD serial é interrompida por comando diferente de LeImpressão.';
      10000 : Mensagem := 'Estado inválido para registro sendo codificado.';
      10001 : Mensagem := 'Inconsistência nos parâmetros lidos no Logger.';
      10002 : Mensagem := 'Registro inválido detectado no Logger.';
      10003 : Mensagem := 'Erro interno.';
      11000 : Mensagem := 'Parâmetro repassado ao comando é inválido.';
      11001 : Mensagem := 'Erro de sintaxe na lista de parâmetros.';
      11002 : Mensagem := 'Valor inválido para parâmetro do comando.';
      11003 : Mensagem := 'String contém seqüência de caracteres inválidos.';
      11004 : Mensagem := 'Parâmetro foi declarado 2 ou mais vezes na lista.';
      11005 : Mensagem := 'Parâmetro obrigatório ausente na lista.';
      11006 : Mensagem := 'Não existe o comando no protocolo.';
      11007 : Mensagem := 'Estado atual não permite a execução deste comando.';
      11008 : Mensagem := 'Sinalização indicando que comando aborta a impressão da segunda via.';
      11009 : Mensagem := 'Sinalização indicando que comando não possui retorno.';
      11010 : Mensagem := 'Tempo de execução esgotado.';
      11011 : Mensagem := 'Nome de registrador inválido.';
      11012 : Mensagem := 'Tipo de registrador inválido.';
      11013 : Mensagem := 'Tentativa de escrita em registrador de apenas leitura.';
      11014 : Mensagem := 'Tentativa de leitura em registrador de apenas escrita.';
      11015 : Mensagem := 'Comando recebido diferente do anterior no buffer de recepção.';
      11016 : Mensagem := 'Fila de comandos cheia.';
      11017 : Mensagem := 'Índice de registrador indexado fora dos limites.';
      11018 : Mensagem := 'Número de emissões do Logger foi excedido na Intervenção Técnica.';
      11019 : Mensagem := 'Divisão por 0 (zero) nas rotinas de BDC.';
      15001 : Mensagem := 'Comando aceito apenas em modo de Intervencao Técnica.';
      15002 : Mensagem := 'Comando não pode ser executado em modo de Intervenção Técnica.';
      15003 : Mensagem := 'Já existe MFD presente neste ECF.';
      15004 : Mensagem := 'Não existe MFD neste ECF.';
      15005 : Mensagem := 'Memória RAM do ECF não está consistente.';
      15006 : Mensagem := 'Memória fiscal não encontrada.';
      15007 : Mensagem := 'Dia já Fechado.';
      15008 : Mensagem := 'Dia aberto.' ;
      15009 : Mensagem := 'Falta reducao Z.';
      15010 : Mensagem := 'Mecanismo impressor não selecionado.';
      15011 : Mensagem := 'Sem bobina de papel na estação de documento fiscal.';
      15012 : Mensagem := 'Tentativa de finalizar documento já encerrado.';
      15013 : Mensagem := 'Não há sinal de DTR.';
      15014 : Mensagem := 'Sem inscrições do usuário no ECF.';
      15015 : Mensagem := 'Sem dados do proprietário no ECF.';
      15016 : Mensagem := 'ECF encontra-se indevidamente em linha.';
      15017 : Mensagem := 'ECF não encontra-se em linha para executar o comando.';
    end;
    if Mensagem = '' then
      Result := 'OK'
    else
      Result := Mensagem;
  end;



end;
// inicializacao
function cECF_Abre(COD_ECF:Integer;Porta:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 Then result := 'OK';
  if COD_ECF = 2 Then result := 'OK';
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_AbrePortaSerial();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_AbrePortaSerial();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 5 then
  begin
    iRetorno := DLLG2_IniciaDriver(Porta);
    DLLG2_DefineTimeout(0, 20);
    MSG := cECF_Analisa_Retorno(5);
    if MSG = 'OK' then
       result := cECF_Retorno_Impressora(5)
    else
      result := MSG;
  end;

end;
function cECF_Fecha(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 Then result := 'OK';
  if COD_ECF = 2 Then result := 'OK';
  if COD_ECF = 3 then
  begin
    iRetorno := Elgin_FechaPortaSerial();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_FechaPortaSerial();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 5 then
  begin
    iRetorno := DLLG2_EncerraDriver(0);
    DLLG2_DefineTimeout(0, 20);
    MSG := cECF_Analisa_Retorno(5);
    if MSG = 'OK' then
       result := cECF_Retorno_Impressora(5)
    else
      result := MSG;
  end;

end;

// INFORMACAOES
// Verificar Impressora Ligada

function cECF_Ligada(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_VerificaImpressoraLigada();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_VerificaImpressoraLigada();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_VerificaImpressoraLigada();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    iRetorno := ELGIN_VerificaImpressoraLigada();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;

function cECF_Numero_Serie(COD_ECF:Integer):string;
var sRet : string;
i : integer;
Numero : string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    For i := 1 To 15 Do Numero := Numero + ' ';
    iRetorno := Bematech_FI_NumeroSerie(Numero);
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 15 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroSerie(Numero);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 15 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroSerie(Numero);
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(3);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    For i := 1 To 15 Do Numero := Numero + ' ';
    iRetorno := Elgin_NumeroSerie(Numero);
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(4);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 5 then
  begin
    DLLG2_LimpaParams(0);
    DLLG2_AdicionaParam (0, 'NomeTexto', '', 7);
    iRetorno := DLLG2_ExecutaComando(0, 'LeTexto');
    MSG := cECF_Analisa_Retorno(5);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(5);
      if sRet = 'OK' then
      begin
        iRetorno := DLLG2_LeRegistrador(0, 'NumeroSerieECF', 'Valorecf', Length(Numero));
        result := Numero
      end
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;



end;

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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroCaixa(Numero);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCaixa(Numero);
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(3);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    For i := 1 To 4 Do Numero := Numero + ' ';
    iRetorno := Elgin_NumeroCaixa(Numero);
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(4);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;


end;
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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Daruma_FI_NumeroCupom(Numero);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := ECF_NumeroCupom(Numero);
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(3);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    For i := 1 To 6 Do Numero := Numero + ' ';
    iRetorno := Elgin_NumeroCupom(Numero);
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(4);
      if sRet = 'OK' then
        result := Numero
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

end;

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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
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
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do Data := Data + ' ';
    For i := 1 To 6 Do Hora := Hora + ' ';
     iRetorno := Daruma_FI_DataHoraImpressora(data,hora);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
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
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    For i := 1 To 6 Do Data := Data + ' ';
    For i := 1 To 6 Do Hora := Hora + ' ';
     iRetorno := ECF_DataHoraImpressora(data,hora);
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(3);
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
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    For i := 1 To 6 Do Data := Data + ' ';
    For i := 1 To 6 Do Hora := Hora + ' ';
     iRetorno := Elgin_DataHoraImpressora(data,hora);
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(4);
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
      result := MSG;
  end;
end;

function cECF_Download(COD_ECF:Integer;tipo:string;Inicio:String;Fim:string):string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    if tipo = 'DATA' THEN tipo := '1';
    if tipo = 'COO'  THEN tipo := '2';
    iRetorno := Bematech_FI_DownloadMFD(pchar('DOWNLOAD.MFD'),pchar(tipo),pchar(inicio),pchar(fim),pchar('01'));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      MSG := cECF_Retorno_Impressora(1);
      IF MSG = 'OK' then
      begin
        iretorno :=  Bematech_FI_FormatoDadosMFD( pchar('DOWNLOAD.MFD'),
                                                  pchar('RETORNO.TXT'),
                                                  '0',
                                                  pchar(tipo),
                                                  pchar(inicio),
                                                  pchar(fim),
                                                  pchar('01'));
        MSG := cECF_Analisa_Retorno(1);
        if MSG = 'OK' then
          result := cECF_Retorno_Impressora(1)
        ELSE
          result := MSG;
      end
      else
        result := MSG;
    end
    ELSE
      result := MSG;
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
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
       result := cECF_Retorno_Impressora(2)
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    if tipo = 'DATA' THEN tipo := '1';
    if tipo = 'COO'  THEN tipo := '2';
    iRetorno := ECF_DownloadMFD(pchar('DOWNLOAD.MFD'),pchar(tipo),pchar(inicio),pchar(fim),pchar('01'));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
    begin
      MSG := cECF_Retorno_Impressora(3);
      IF MSG = 'OK' then
      begin
        iretorno :=  ECF_FormatoDadosMFD( pchar('DOWNLOAD.MFD'),
                                                  pchar('RETORNO.TXT'),
                                                  '0',
                                                  pchar(tipo),
                                                  pchar(inicio),
                                                  pchar(fim),
                                                  pchar('01'));
        MSG := cECF_Analisa_Retorno(3);
        if MSG = 'OK' then
          result := cECF_Retorno_Impressora(3)
        ELSE
          result := MSG;
      end
      else
        result := MSG;
    end
    ELSE
      result := MSG;
  end;


  if COD_ECF = 4 then
  begin
    if tipo = 'DATA' THEN tipo := '1';
    if tipo = 'COO'  THEN tipo := '2';
    iRetorno := Elgin_DownloadMFD(pchar('DOWNLOAD.MFD'),pchar(tipo),pchar(inicio),pchar(fim),pchar('01'));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      MSG := cECF_Retorno_Impressora(1);
      IF MSG = 'OK' then
      begin
        iretorno :=  Elgin_FormatoDadosMFD( pchar('DOWNLOAD.MFD'),
                                                  pchar('RETORNO.TXT'),
                                                  '0',
                                                  pchar(tipo),
                                                  pchar(inicio),
                                                  pchar(fim),
                                                  pchar('01'));
        MSG := cECF_Analisa_Retorno(4);
        if MSG = 'OK' then
          result := cECF_Retorno_Impressora(4)
        ELSE
          result := MSG;
      end
      else
        result := MSG;
    end
    ELSE
      result := MSG;
  end;




end;


function cECF_Registro60A(COD_ECF:Integer):string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Analitico();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioTipo60Analitico();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioTipo60Analitico();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_RelatorioTipo60Analitico();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;


end;
function cECF_Registro60M(COD_ECF:Integer):string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioTipo60Mestre();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioTipo60Mestre();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioTipo60Mestre();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_RelatorioTipo60Mestre();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;

function cECF_Le_Formas_Pgto(COD_ECF:Integer):string;
var sRet : string;
i, x, Y : integer;
Formas, sretorno_forma, svalor : string;

begin
  Result := 'ERRO';

                
  if COD_ECF = 1 then
  begin
    for i := 1 to 919 do Formas := Formas + ' ';
    iRetorno := Bematech_FI_VerificaFormasPagamentoMFD( Formas );

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
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
                with tbforma[Y] do
                begin
                  Nome := copy(Formas,x,16);
                  svalor := copy(Formas,x+16,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  Valor_Acumulado := strtofloat(svalor);

                  svalor := copy(Formas,x+26,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  Valor_Ultimo_Cupom := strtofloat(svalor);
                  INC(Y);
                end;
              end
              else
              begin
                if Formas[i] = ',' then
                begin
                  with tbforma[Y] do
                  begin
                    Nome := copy(Formas,x,16);
                    svalor := copy(Formas,x+16,20);
                    if svalor <> '' then
                    begin
                      svalor := floattostr(strtofloat(svalor));
                      if strtofloat(svalor) > 0 then
                        svalor := floattostr(strtofloat(svalor)/100);
                    end
                    else
                      svalor := '0';
                    Valor_Acumulado := strtofloat(svalor);
                    svalor := copy(Formas,x+26,20);
                    if svalor <> '' then
                    begin
                      svalor := floattostr(strtofloat(svalor));
                      if strtofloat(svalor) > 0 then
                        svalor := floattostr(strtofloat(svalor)/100);
                    end
                    else
                      svalor := '0';
                    Valor_Ultimo_Cupom := strtofloat(svalor);
                    INC(Y);
                  end;
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
      result := MSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 1027 Do Formas := Formas + ' ';
    iRetorno := Daruma_FI_VerificaFormasPagamentoEx(Formas);


    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
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
                with tbforma[Y] do
                begin
                  Nome := copy(Formas,x,16);
                  svalor := copy(Formas,x+16,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  Valor_Acumulado := strtofloat(svalor);

                  svalor := copy(Formas,x+26,20);
                  if svalor <> '' then
                  begin
                    svalor := floattostr(strtofloat(svalor));
                    if strtofloat(svalor) > 0 then
                      svalor := floattostr(strtofloat(svalor)/100);
                  end
                  else
                    svalor := '0';
                  Valor_Ultimo_Cupom := strtofloat(svalor);
                  INC(Y);
                end;
              end
              else
              begin
                if Formas[i] = ',' then
                begin
                  with tbforma[Y] do
                  begin
                    Nome := copy(Formas,x,16);
                    svalor := copy(Formas,x+16,20);
                    if svalor <> '' then
                    begin
                      svalor := floattostr(strtofloat(svalor));
                      if strtofloat(svalor) > 0 then
                        svalor := floattostr(strtofloat(svalor)/100);
                    end
                    else
                      svalor := '0';
                    Valor_Acumulado := strtofloat(svalor);
                    svalor := copy(Formas,x+26,20);
                    if svalor <> '' then
                    begin
                      svalor := floattostr(strtofloat(svalor));
                      if strtofloat(svalor) > 0 then
                        svalor := floattostr(strtofloat(svalor)/100);
                    end
                    else
                      svalor := '0';
                    Valor_Ultimo_Cupom := strtofloat(svalor);
                    INC(Y);
                  end;
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
      result := MSG;
  end;

end;



function cECF_Arquivo_Fiscal_CAT52(COD_ECF:integer;tipo,inicio,fim:string):string;
var cArqDestino, sEntrada, sArquivo : string;
i, dias, x : integer;
Arquivo : string;
txt_mfd, txt_Cotepe : textfile;

dInicial, dFinal : TDate;


E01, E02 :String;
E03, E04, E05, E06, E07, E08, E09, E10, E11, E12, E13, E14, E15, E16,
E17, E18, E19, E20, E21, E22, E23, E24, E25 : Array[0..10000] of string;

//CTP_00107810_090507151646.txt

begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    if tipo = 'DATA' then
    begin
      // fazer um LOOPING nas datas ateh criar todos os arquivos

         // extrair a qtde de dias entre as duas datas
         dInicial := StrToDate(inicio);
         dFinal := StrToDate(fim);
         dias := TRUNC(dFinal - dInicial)+1;

          Result := 'OK';
          E01 := '';
         for x := 1 to dias do
         begin
           for i := 1 to 512 do cArqDestino := cArqDestino + ' ';
           Arquivo := '';
           iRetorno := Bematech_FI_GeraRegistrosCAT52MFDEx( pchar( Arquivo ),
                           pchar( datetostr( dinicial + (x-1) ) ), cArqDestino);

            MSG := cECF_Analisa_Retorno(1);
            if MSG = 'OK' then
            begin
               Msg :=cECF_Retorno_Impressora(1);
               if msg = 'OK' then
               begin
                 cArqDestino := TrimRight(TrimLeft(cArqDestino));
                 // abrir o arquivo e fazer a assinatura digital nos mesmos!
                 if FileExists(cArqDestino) then
                 begin
                    assignfile(txt_mfd,cArqDestino);
                    reset(txt_mfd);
                    while not eof(txt_mfd) do
                    begin
                      readln(txt_mfd,sEntrada);
                      if copy(sEntrada,1,3) = 'E01' then E01 := sENTRADA;
                      if copy(sEntrada,1,3) = 'E02' then E02 := sENTRADA;
                      if copy(sEntrada,1,3) = 'E03' then E03[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E04' then E04[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E05' then E05[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E06' then E06[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E07' then E07[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E08' then E08[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E09' then E09[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E10' then E10[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E11' then E11[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E12' then E12[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E13' then E13[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E14' then E14[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E15' then E15[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E16' then E16[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E17' then E17[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E18' then E18[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E19' then E19[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E20' then E20[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E21' then E21[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E22' then E22[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E23' then E23[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E24' then E24[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E25' then E25[x] := sENTRADA;
{                      if copy(sEntrada,1,3) = 'E26' then E26[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E27' then E27[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E28' then E28[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E29' then E29[x] := sENTRADA;
                      if copy(sEntrada,1,3) = 'E30' then E30[x] := sENTRADA;
}
                    end;
                    closefile(txt_mfd);
                 end;
               end
               else
               begin
                  result := msg;
                  break;
               end;
            end
            ELSE
            begin
              result := MSG;  // retorna o Erro de falha de comunicação com o ECF
              break;
            end;
         end;
          // Montar o arquivo
         IF E01 <> '' then
         begin
           sArquivo := 'c:\CTP'+somenteNumero(COPY(TRIM(E01),4,20)+inicio+fim+timetostr(time))+'.TXT';
           assignfile(txt_cotepe,sArquivo);
           rewrite(txt_cotepe);
           writeln(txt_cotepe,E01);
           writeln(txt_cotepe,E02);
           for i := 0 to 10000 do if E03[I] <> '' THEN writeln(txt_cotepe,E03[I]);
           for i := 0 to 10000 do if E04[I] <> '' THEN writeln(txt_cotepe,E04[I]);
           for i := 0 to 10000 do if E05[I] <> '' THEN writeln(txt_cotepe,E05[I]);
           for i := 0 to 10000 do if E06[I] <> '' THEN writeln(txt_cotepe,E06[I]);
           for i := 0 to 10000 do if E07[I] <> '' THEN writeln(txt_cotepe,E07[I]);
           for i := 0 to 10000 do if E08[I] <> '' THEN writeln(txt_cotepe,E08[I]);
           for i := 0 to 10000 do if E09[I] <> '' THEN writeln(txt_cotepe,E09[I]);
           for i := 0 to 10000 do if E10[I] <> '' THEN writeln(txt_cotepe,E10[I]);
           for i := 0 to 10000 do if E11[I] <> '' THEN writeln(txt_cotepe,E11[I]);
           for i := 0 to 10000 do if E12[I] <> '' THEN writeln(txt_cotepe,E12[I]);
           for i := 0 to 10000 do if E13[I] <> '' THEN writeln(txt_cotepe,E13[I]);
           for i := 0 to 10000 do if E14[I] <> '' THEN writeln(txt_cotepe,E14[I]);
           for i := 0 to 10000 do if E15[I] <> '' THEN writeln(txt_cotepe,E15[I]);
           for i := 0 to 10000 do if E16[I] <> '' THEN writeln(txt_cotepe,E16[I]);
           for i := 0 to 10000 do if E17[I] <> '' THEN writeln(txt_cotepe,E17[I]);
           for i := 0 to 10000 do if E18[I] <> '' THEN writeln(txt_cotepe,E18[I]);
           for i := 0 to 10000 do if E19[I] <> '' THEN writeln(txt_cotepe,E19[I]);
           for i := 0 to 10000 do if E20[I] <> '' THEN writeln(txt_cotepe,E20[I]);
           for i := 0 to 10000 do if E21[I] <> '' THEN writeln(txt_cotepe,E21[I]);
           for i := 0 to 10000 do if E22[I] <> '' THEN writeln(txt_cotepe,E22[I]);
           for i := 0 to 10000 do if E23[I] <> '' THEN writeln(txt_cotepe,E23[I]);
           for i := 0 to 10000 do if E24[I] <> '' THEN writeln(txt_cotepe,E24[I]);
           for i := 0 to 10000 do if E25[I] <> '' THEN writeln(txt_cotepe,E25[I]);
{           for i := 0 to 10000 do if E26[I] <> '' THEN writeln(txt_cotepe,E26[I]);
           for i := 0 to 10000 do if E27[I] <> '' THEN writeln(txt_cotepe,E27[I]);
           for i := 0 to 10000 do if E28[I] <> '' THEN writeln(txt_cotepe,E28[I]);
           for i := 0 to 10000 do if E29[I] <> '' THEN writeln(txt_cotepe,E29[I]);
           for i := 0 to 10000 do if E30[I] <> '' THEN writeln(txt_cotepe,E30[I]);
           }
         end;
         // ASSINATURA DIGITAL - EAD - CRIAR

         closefile(txt_cotepe);
         result := sArquivo;
    end
    else
    begin
      // Bematech nao possue esta funcao por COO
      // o winMFD possue
      result := 'Função não suportada pelo modelo de ECF utilizado';
    end;
  end;

  if COD_ECF = 2 then
  begin
    // executar o UnDecoder da DAruma
    try
      if FileExists('C:\siscom\paf\Exe\uDecoder\WIN_uDecoder.exe') then
      begin
        Executa_Programa('C:\siscom\paf\Exe\uDecoder\WIN_uDecoder.exe', '', SW_SHOW);
        result := 'OK';
      end
      else
        result := 'Função não suportada pelo modelo de ECF utilizado';
    except

    end;
  end;
  if COD_ECF = 3 then
  begin
    // executar o SWmfd.exe
    try
      if FileExists('C:\Arquivos de Programas\Sweda Informática Ltda\SWMFD\SWMFD.exe') then
      begin
        Executa_Programa('C:\Arquivos de Programas\Sweda Informática Ltda\SWMFD\SWMFD.exe', '', SW_SHOW);
        result := 'OK';
      end
      else
        result := 'Função não suportada pelo modelo de ECF utilizado';
    except

    end;
  end;
end;


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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := sMarca
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 20 Do smarca := smarca + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '80', smarca);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := smarca
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;
end;

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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := sModelo
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 20 Do sModelo := sModelo + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '81', sModelo);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := sModelo
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

end;

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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := sTipo
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 7 Do stipo := stipo + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '79', stipo);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := stipo
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;


end;


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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := COPY(MFAdicional,1,1)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
     // Daruma retorna em branco
      result := ' ';
  end;
end;

function cECF_Versao_SB(COD_ECF:integer):string;
var sVersao, sRet : string;
i : integer;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    for i := 1 to 6 do sVersao  := sVersao  + ' ';
    iRetorno := Bematech_FI_VersaoFirmwareMFD( sVersao );
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := sVersao
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 6 Do sVersao := sVersao + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '84', sVersao);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := sVersao
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

end;

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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := somenteNumero(sDataHora)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    For i := 1 To 14 Do sDataHora := sDataHora + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '85', sDataHora);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := sDataHora+'00'
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

end;


// Informacoes ref. reducao Z
function cECF_ReducaoZ_Contador_CRZ(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),7,4)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 4 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '24', sContador);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := sContador
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

end;
function cECF_ReducaoZ_Contador_COO(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin

  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),11,6)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := copy(sContador,935,6)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;


end;
function cECF_ReducaoZ_Contador_CRO(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin

  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := copy( somenteNumero(sContador),3,4)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 3 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '23', sContador);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := SContador
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;

end;
function cECF_ReducaoZ_DataHora(COD_ECF:integer):string;
var sHora, sData, sRet : string;
i : integer;
begin

  if COD_ECF = 1 then
  begin
    SetLength (SData,6);
    SetLength (SHora,6);
    IRetorno := Bematech_FI_DataHoraReducao(SData, SHora);
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
        result := sData+' '+sHora
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;



  if COD_ECF = 2 then
  begin
    SetLength (SData,6);
    SetLength (SHora,6);
    IRetorno := Daruma_FI_DataHoraReducao(SData, SHora);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := sData+' '+sHora
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;
end;
function cECF_ReducaoZ_Data_Movimento(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
begin
  if COD_ECF = 1 then
  begin
    For i := 1 To 1278 Do sContador := sContador + ' ';
    iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sContador);

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
      begin
        sRet := copy( somenteNumero(sContador),1237,6);
        result := copy(sRet,1,4)+'20'+copy(sRet,5,2);
      end
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;


  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
      if sRet = 'OK' then
        result := copy(sContador,1,8)
      else
        result := sRet;
    end
    ELSE
      result := MSG;
  end;
end;
function cECF_ReducaoZ_Venda_Bruta(COD_ECF:integer):string;
var sContador, sRet : string;
i : integer;
txt : textfile;
begin
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_MapaResumoMFD();

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
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
      result := MSG;
  end;



  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sContador := sContador + ' ';
    iRetorno := Daruma_FIMFD_RetornaInformacao( '140', sContador);

    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
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
      result := MSG;
  end;
end;



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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(1);
      if sRet = 'OK' then
      begin
        For i := 1 To 1278 Do sTotalizador := sTotalizador + ' ';
        iRetorno := Bematech_FI_DadosUltimaReducaoMFD(sTotalizador);
        MSG := cECF_Analisa_Retorno(1);
        if MSG = 'OK' then
        begin
          sRet := cECF_Retorno_Impressora(1);
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
          result := MSG;








      end
      else
        result := sRet;
    end
    else
      result := MSG;

  end;




  if COD_ECF = 2 then
  begin
    For i := 1 To 1164 Do sTotalizador := sTotalizador + ' ';
    iRetorno :=  Daruma_FIMFD_RetornaInformacao( '140', sTotalizador);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
    begin
      sRet := cECF_Retorno_Impressora(2);
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
      result := MSG;
  end;
end;


// LEITURA X
function cECF_LeituraX(COD_ECF:Integer):string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_LeituraX();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1) // retorna OK ou a Mensagem de Erro;
    ELSE
      result := MSG;  // retorna o Erro de falha de comunicação com o ECF
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_LeituraX();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_LeituraX();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_LeituraX();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 5 then
  begin
    iRetorno := DLLG2_ExecutaComando(0,'EmiteLeituraX');
    MSG := cECF_Analisa_Retorno(5);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(5)
    ELSE
      result := MSG;
  end;
end;

// REDUCAO Z

function cECF_ReducaoZ(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_ReducaoZ(pchar(''),pchar(''));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_ReducaoZ(pchar(''),pchar(''));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_ReducaoZ(pchar(''),pchar(''));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_ReducaoZ(pchar(''),pchar(''));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;


end;

// LEITURA DA MEMORIA FISCAL
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
      if Ecf_ou_Arquivo = 'ECF' then
        // bematech nao tem diferenciacao de sintetica e analitica
        iRetorno := Bematech_FI_LeituraMemoriaFiscalData(pchar(Inicio),pchar(Fim))
      else
        iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialData(pchar(Inicio),pchar(Fim));

      MSG := cECF_Analisa_Retorno(1);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(1)
      ELSE
        result := MSG;
    end;
    if COD_ECF = 2 then
    begin
      if Analitica_ou_Sintetica = 'A' then
        Daruma_Registry_MFD_LeituraMFCompleta('1') // analitica
      else
        Daruma_Registry_MFD_LeituraMFCompleta('0'); // sintecica


      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := Daruma_FI_LeituraMemoriaFiscalData(pchar(Inicio),pchar(Fim))
      else
        iRetorno := Daruma_FI_LeituraMemoriaFiscalSerialData(pchar(Inicio),pchar(Fim));


      MSG := cECF_Analisa_Retorno(2);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(2)
      ELSE
        result := MSG;
    end;

    
    if COD_ECF = 3 then
    begin
      iRetorno := ECF_LeituraMemoriaFiscalData(pchar(Inicio),pchar(Fim));
      MSG := cECF_Analisa_Retorno(3);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(3)
      ELSE
        result := MSG;
    end;
    if COD_ECF = 4 then
    begin
      iRetorno := Elgin_LeituraMemoriaFiscalData(pchar(Inicio),pchar(Fim),pchar(stipo));
      MSG := cECF_Analisa_Retorno(4);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(4)
      ELSE
        result := MSG;
    end;


  end
  else
  begin
    Result := 'ERRO';
    if COD_ECF = 1 then
    begin
      if Ecf_ou_Arquivo = 'ECF' then
        iRetorno := Bematech_FI_LeituraMemoriaFiscalReducao(pchar(Inicio),pchar(Fim))
      else
        iRetorno := Bematech_FI_LeituraMemoriaFiscalSerialReducao(pchar(Inicio),pchar(Fim));
      MSG := cECF_Analisa_Retorno(1);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(1)
      ELSE
        result := MSG;
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
      MSG := cECF_Analisa_Retorno(2);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(2)
      ELSE
        result := MSG;
    end;
    
    if COD_ECF = 3 then
    begin
      iRetorno := ECF_LeituraMemoriaFiscalReducao(pchar(Inicio),pchar(Fim));
      MSG := cECF_Analisa_Retorno(3);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(3)
      ELSE
        result := MSG;
    end;
    if COD_ECF = 4 then
    begin
      inicio := copy(inicio,1,6)+copy(inicio,9,2);
      fim := copy(fim,1,6)+copy(fim,9,2);

      iRetorno := Elgin_LeituraMemoriaFiscalReducao(pchar(Inicio),pchar(Fim),pchar(stipo));
      MSG := cECF_Analisa_Retorno(4);
      if MSG = 'OK' then
        result := cECF_Retorno_Impressora(4)
      ELSE
        result := MSG;
    end;


  end;


end;





// CUPOM FISCAL

// ABRIR CUPOM FISCAL

function cECF_Abre_Cupom(COD_ECF:Integer):string;
begin
  Result := 'ERRO';

  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_AbreCupom(pchar(''));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_AbreCupom(pchar(''));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    iRetorno := ECF_AbreCupom(pchar(''));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_AbreCupom(pchar(''));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;



end;
function cECF_Vende_item(COD_ECF:Integer;Codigo,produto,unidade,aliquota:string;quantidade,valor_unitario,valor_desconto:real;tipo_desconto:string;total:real):string;
var Sqtde, Svalor, Sdesconto, stipo_qtde, sacrescimo : string;
begin
  (* Fazer a busca da configuração das aliquotas no registro do windows *)

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sTipo_qtde:= 'F';
    iRetorno := Bematech_FI_VendeItem(pchar(codigo),
                                      pchar(produto),
                                      pchar(aliquota),
                                      pchar(stipo_qtde),
                                      pchar(Sqtde),
                                      3,
                                      pchar(Svalor),
                                      pchar(tipo_desconto),
                                      pchar(Sdesconto));

    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sAcrescimo:= '0,00';
    sTipo_qtde:= 'F';




    iRetorno := Daruma_FI_VendeItemDepartamento(pchar(codigo),
                                                pchar(produto),
                                                pchar(aliquota),
                                                pchar(svalor),
                                                pchar(sqtde),
                                                pchar(sdesconto),
                                                pchar(sacrescimo),
                                                '01',
                                                pchar(unidade));




    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sTipo_qtde:= 'F';
    iRetorno  := ECF_VendeItem(pchar(codigo),
                                      pchar(produto),
                                      pchar(aliquota),
                                      pchar(stipo_qtde),
                                      pchar(Sqtde),
                                      3,
                                      pchar(Svalor),
                                      pchar(tipo_desconto),
                                      pchar(Sdesconto));

    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    codigo    := trimleft(TrimRight(copy(codigo,1,13)));
    produto   := trimleft(TrimRight(copy(PRODUTO,1,29)));
    Sqtde     := formatfloat('########0.000',quantidade);
    Svalor    := formatfloat('########0.000',valor_unitario);
    Sdesconto := formatfloat('########0.00',valor_desconto);
    sTipo_qtde:= 'F';
    iRetorno := Elgin_VendeItem(pchar(codigo),
                                      pchar(produto),
                                      pchar(aliquota),
                                      pchar(stipo_qtde),
                                      pchar(Sqtde),
                                      3,
                                      pchar(Svalor),
                                      pchar(tipo_desconto),
                                      pchar(Sdesconto));

    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;


end;
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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Daruma_FI_IniciaFechamentoCupom(pchar(Acrescimo_ou_Desconto),
                                                  pchar(Tipo),
                                                  pchar(svalor));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := ECF_IniciaFechamentoCupom(pchar(Acrescimo_ou_Desconto),
                                                  pchar(Tipo),
                                                  pchar(svalor));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Elgin_IniciaFechamentoCupom(pchar(Acrescimo_ou_Desconto),
                                                  pchar(Tipo),
                                                  pchar(svalor));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;
function cECF_Forma_Pgto(COD_ECF:Integer;forma_pgto:string;valor:real):string;
var svalor : string;
begin

  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Bematech_FI_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Daruma_FI_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := ECF_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 4 then
  begin
    svalor := formatfloat('#########0.00',valor);
    iRetorno := Elgin_EfetuaFormaPagamento(pchar(forma_pgto),pchar(svalor));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;
function cECF_Termina_Fechamento(COD_ECF:Integer;mensagem:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_TerminaFechamentoCupom(pchar(Mensagem));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_TerminaFechamentoCupom(pchar(Mensagem));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_TerminaFechamentoCupom(pchar(Mensagem));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_TerminaFechamentoCupom(pchar(Mensagem));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;



end;
// CANCELAR CUPOM FISCAL
function cECF_Cancela_Cupom(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_CancelaCupom();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_CancelaCupom();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_CancelaCupom();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_CancelaCupom();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;
end;

function cECF_Cancela_Item(COD_ECF:Integer;Item:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_CancelaItemGenerico(pchar(Item));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_CancelaItemGenerico(pchar(Item));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_CancelaItemGenerico(pchar(Item));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_CancelaItemGenerico(pchar(Item));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;


// OPERACOES NAO FISCAL
// relatorio gerencial
function cECF_Abre_Gerencial(COD_ECF:Integer;Texto:String):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;


function cECF_Usa_Gerencial(COD_ECF:Integer;Texto:String):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_RelatorioGerencial(pchar(texto));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;



end;
function cECF_Fecha_Gerencial(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_FechaRelatorioGerencial();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_FechaRelatorioGerencial();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_FechaRelatorioGerencial();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_FechaRelatorioGerencial();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;
// cnfv
function cECF_Abre_CNFV(COD_ECF:Integer;Forma_Pgto:string;Valor:real;Numero_Cupom:string):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Elgin_AbreComprovanteNaoFiscalVinculado(pchar(forma_pgto),
                                                              pchar(svalor),
                                                              pchar(numero_cupom));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;



end;
function cECF_Usa_CNFV(COD_ECF:Integer;Texto:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_UsaComprovanteNaoFiscalVinculado(pchar(texto));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;
function cECF_Fecha_CNFV(COD_ECF:Integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_FechaComprovanteNaoFiscalVinculado();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_FechaComprovanteNaoFiscalVinculado();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_FechaComprovanteNaoFiscalVinculado();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_FechaComprovanteNaoFiscalVinculado();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;
function cECF_Sangria(COD_ECF:Integer;Valor:real):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_Sangria(pchar(svalor));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_Sangria(pchar(svalor));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_Sangria(pchar(svalor));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Elgin_Sangria(pchar(svalor));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;


end;
function cECF_Suprimento(COD_ECF:Integer;Valor:real;Forma_Pgto:String):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Elgin_Suprimento(pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;
function cECF_Recebimento(COD_ECF:Integer;Totalizador:string;Valor:real;Forma_Pgto:string):string;
var svalor : string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Bematech_FI_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Daruma_FI_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := ECF_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    svalor := formatfloat('#############0.00',valor);
    iRetorno := Elgin_RecebimentoNaoFiscal(pchar(Totalizador),pchar(svalor),pchar(Forma_Pgto));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;
end;

function cECF_Programa_Horario_Verao(COD_ECF:integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_ProgramaHorarioVerao();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;

  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_ProgramaHorarioVerao();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_ProgramaHorarioVerao();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_ProgramaHorarioVerao();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;


end;

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
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    if ICMS_OU_ISS = 'ICMS' then itipo := 0;
    if ICMS_OU_ISS = 'ISS'  then itipo := 1;

    saliquota := somenteNumero( formatfloat('#0.00',aliquota) );
    iRetorno := Daruma_FI_ProgramaAliquota(pchar(saliquota),itipo);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    if ICMS_OU_ISS = 'ICMS' then itipo := 0;
    if ICMS_OU_ISS = 'ISS'  then itipo := 1;

    saliquota := somenteNumero( formatfloat('#0.00',aliquota) );
    iRetorno := ECF_ProgramaAliquota(pchar(saliquota),itipo);
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    if ICMS_OU_ISS = 'ICMS' then itipo := 0;
    if ICMS_OU_ISS = 'ISS'  then itipo := 1;

    saliquota := somenteNumero( formatfloat('#0.00',aliquota) );
    iRetorno := Elgin_ProgramaAliquota(pchar(saliquota),itipo);
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;


end;


function cECF_Abre_Gaveta(COD_ECF:integer):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_AcionaGaveta();
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_AcionaGaveta();
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_AcionaGaveta();
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_AcionaGaveta();
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;

end;

function cECF_Status_Gaveta(COD_ECF:integer):string;
var iEstado : integer;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_VerificaEstadoGaveta(iEstado);
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_VerificaEstadoGaveta(iEstado);
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_VerificaEstadoGaveta(iEstado);
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_VerificaEstadoGaveta(iEstado);
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := inttostr(iEstado)
    ELSE
      result := MSG;
  end;
end;


function cECF_Programa_Totalizador(COD_ECF:Integer;Indice:integer;descricao:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
    iRetorno := Bematech_FI_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    MSG := cECF_Analisa_Retorno(1);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(1)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 2 then
  begin
    iRetorno := Daruma_FI_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    MSG := cECF_Analisa_Retorno(2);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(2)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 3 then
  begin
    iRetorno := ECF_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    MSG := cECF_Analisa_Retorno(3);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(3)
    ELSE
      result := MSG;
  end;
  if COD_ECF = 4 then
  begin
    iRetorno := Elgin_NomeiaTotalizadorNaoSujeitoIcms(indice,pchar(descricao));
    MSG := cECF_Analisa_Retorno(4);
    if MSG = 'OK' then
      result := cECF_Retorno_Impressora(4)
    ELSE
      result := MSG;
  end;
end;


function cECF_Programa_Forma_Pgto(COD_ECF:Integer;Forma_Pgto:string;Vinculado:string):string;
begin
  Result := 'ERRO';
  if COD_ECF = 1 then
  begin
      result := 'ECF não possue esta função!';
  end;
end;

function cECF_Daruma_Libera_Porta(SIM_NAO:STRING):string;
begin
  IF SIM_NAO = 'SIM' THEN
  BEGIN
    iRetorno := Daruma_Registry_AlteraRegistry('ControlePorta','0');
    iRetorno := Daruma_Registry_AlteraRegistry('ThreadNoStartup','0');
  END
  ELSE
  BEGIN
    iRetorno := Daruma_Registry_AlteraRegistry('ControlePorta','1');
    iRetorno := Daruma_Registry_AlteraRegistry('ThreadNoStartup','1');
  END;
end;



end.




(*



################################################################################
################################################################################
################################################################################
DARUMA DARUMA DARUMA DARUMA DARUMA DARUMA DARUMA DARUMA DARUMA DARUMA DARUMA DAR




{Declaracao da Dll Integradora Daruma32.dll}

{Declaracao da Dll Integradora Daruma32.dll}

// Métodos do Cupom Fiscal

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

// Métodos para Recebimentos e Relatórios

function Daruma_FI_AbreComprovanteNaoFiscalVinculado( Forma_de_Pagamento: String; Valor_Pago: String; Numero_do_Cupom: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_UsaComprovanteNaoFiscalVinculado( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_FI_FechaComprovanteNaoFiscalVinculado: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RelatorioGerencial( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AbreRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EnviarTextoCNF( Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FechaRelatorioGerencial: Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_RecebimentoNaoFiscal( Descricao_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_AbreRecebimentoNaoFiscal( Descricao_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_EfetuaFormaPagamentoNaoFiscal( Forma_de_Pagamento: String; Valor_da_Forma_Pagamento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Sangria( Valor_da_Sangria: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_Suprimento( Valor_do_Suprimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_FundoCaixa( Valor_do_Fundo_Caixa: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraX: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_LeituraXSerial: Integer; StdCall; External 'Daruma32.dll' ;
function Daruma_FI_ReducaoZ( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_ReducaoZAjustaDataHora( Data: String; Hora: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialData( Data_Inicial: String; Data_Final: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_LeituraMemoriaFiscalSerialReducao( Reducao_Inicial: String; Reducao_Final: String ): Integer; StdCall; External 'Daruma32.dll';

// Métodos Gaveta, Autentica e Outras

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
function Daruma_FI_SaltarLinhas( Int_Linhas:Integer ): Integer; StdCall; External 'Daruma32.dll';


// Métodos Prog e Config

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

// Métodos de Configuração e Registry

function Daruma_FI_CfgFechaAutomaticoCupom( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgImpEstGavVendas( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgCalcArredondamento( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgHorarioVerao( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgSensorAut( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgCupomAdicional( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgPermMensPromCNF( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgEspacamentoCupons( DistanciaCupons: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgHoraMinReducaoZ( Hora_Min_para_ReducaoZ: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgLimiarNearEnd( NumeroLinhas: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgLeituraXAuto( Flag: String ): Integer; StdCall; External 'Daruma32.dll';  
function Daruma_FI_CfgLeituraZAuto( Flag: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FI_CfgRedZAutomatico( Flag: String ): Integer; StdCall; External 'Daruma32.dll'; 

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
function Daruma_Registry_MFDValorFinal( ValorFinal: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_NumeroSerieNaoFormatado( Formatado: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_CupomAdicionalDll( AdicionalDll: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_CupomAdicionalDllConfig( ConfigAdicionalDll: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_PCExpanionLogin( FlagLogin: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_LogTamMaxMB( LogTamMaxMB: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_MaxFechamentoAutomatico( MaxFechamentoAutomatico: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_SintegraUF( UF: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_Velocidade( Velocidade: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_Registry_TextoExtra( TextoExtra: String ): Integer; StdCall; External 'Daruma32.dll'


// Métodos de Informações e Status
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
function Daruma_FI_RetornarVersaoDLL(Versao: String ): Integer; StdCall; External 'Daruma32.dll';
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

// Métodos para TEF
function Daruma_TEF_EsperarArquivo( Path_Resp_TEF: String; Tempo_Espera: String; Travar: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TEF_ImprimirResposta( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_ImprimirRespostaCartao( Path_Arquivo_Resp_TEF: string; Forma_de_Pagamento: string; Travar_Teclado: string; Valor_da_Forma_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_FechaRelatorio: Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_SetFocus( TituloJanela: String ): Integer; StdCall; External 'Daruma32.dll'
function Daruma_TEF_TravarTeclado( Travar: String ): Integer; StdCall; External 'Daruma32.dll'

// Métodos para FS2000
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

/////////////////////////////////////////////////////////Metodos exclusivos para MFD//////////////////////////////////////////////////////////////////
function Daruma_FIMFD_StatusCupomFiscal( StatusCupomFiscal_Mfd: String ): Integer; StdCall; External 'Daruma32.dll';
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
function Daruma_FIMFD_AbreRecebimentoNaoFiscal(  CPF: String; Nome: String; Endereco:String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RecebimentoNaoFiscal(  DescricaoTotalizador:String; AcresDesc:String; TipoAcresDesc:String; ValorAcresDesc:String; ValorRecebimento:String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_IniciaFechamentoNaoFiscal(  AcresDesc:String; TipoAcresDesc:String; ValorAcresDesc:String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_EfetuaFormaPagamentoNaoFiscal(  FormaPgto:String; Valor:String; Observacao:String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_TerminaFechamentoNaoFiscal( MsgPromo:String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_ProgramarGuilhotina( Separacao_entre_Documentos:String; Linhas_para_Acionamento_Guilhotina:String; Status_da_Guilhotina:String; Impressao_Antecipada_Cliche:String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_DescontoAcrescimoItem(NumItemDescontoAcrescimo:String;  DescAcres:String; TipoDescAcres:String; ValorDescAcres:String): Integer; StdCall; External 'Daruma32.dll';
//---Metodos incluidos para atender o PAF 22/03/09 - Ana Paula Costa
function Daruma_FIMFD_GTCodificado(GTCodificado: String):Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_Verifica_GTCodificado(GTCodificado: String):Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_NumeroSerialCodificado(NumeroSerialCodificado:String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_Verifica_NumeroSerialCodificado(NumeroSerialCodificado:String): Integer; StdCall; External 'Daruma32.dll';

///////////////////////////////////////////////////////////////Metodos para o Sintegra//////////////////////////////////////////////////////////////////
//Metodo de Alto Nivel
function Daruma_Sintegra_GerarRegistrosArq( DataInicio: String; DataFim: String; Municipio: String; Fax: String; CodIdConvenio: String; CodIdNatureza: String; CodIdFinalidade: String; Logradouro: String; Numero: String; Complemento: String; Bairro: String; CEP: String; NomeContato: String; Telefone: String): Integer; StdCall; External 'Daruma32.dll';

//Metodo de Médio Nível
function Daruma_Sintegra_GerarRegistro10( DataInicio: String; DataFim: String; Municipio: String; Fax: String; CodIdConvenio: String; CodIdNatureza: String; CodIdFinalidade: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro11( Logradouro: String; Numero: String; Complemento: String; Bairro: String; CEP: String; NomeContato: String; Telefone: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro60M( DataInicio: String; DataFim: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro60A( DataInicio: String; DataFim: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro60D( DataInicio: String; DataFim: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro60I( DataInicio: String; DataFim: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro60R( DataInicio: String; DataFim: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Sintegra_GerarRegistro90( Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_SintegraSeparador( Separador: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_SintegraPath( Path: String): Integer; StdCall; External 'Daruma32.dll';

//Metodo de Baixo Nivel
function Daruma_FIMFD_RetornarInfoDownloadMFD( TipoDownload: String; Data_ou_COOInicio: String; Data_ou_COOFim: String; Indice: String; Retorno: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIMFD_RetornarInfoDownloadMFDArquivo( TipoDownload: String; Data_ou_COOInicio: String; Data_ou_COOFim: String; Indice: String): Integer; StdCall; External 'Daruma32.dll';

///////////////////////////////////////////////////////////////Metodos para o RSA/////////////////////////////////////////////////////////////////
                                                    //Metodos incluidos para atender o PAF//
//Metodo de Alto Nivel
function Daruma_RSA_CarregaChavePrivada_Arquivo(Arquivo: String): Integer; StdCall; External 'Daruma32.dll';

function Daruma_RSA_RetornaChavePublica(N: String; E: String): Integer; StdCall; External 'Daruma32.dll';

function Daruma_RSA_CodificaInformacao(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';


function Daruma_RSA_CodificaInformacao_Hexa(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao_Hexa(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';


function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string ; sMD5: String; sAssinaturaEletronica: string): Integer; StdCall; External 'Daruma32.dll';

//Metodos para Gerar o Ato Cotepe NF Paulista
function n(RegistroE00: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE01(DataInicial: String; DataFinal: String; RegistroE01: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE02(DataInicial: String; DataFinal: String; RegistroE02: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE12(DataInicial: String; DataFinal: String; RegistroE12: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE13(DataInicial: String; DataFinal: String; RegistroE13: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE14(DataInicial: String; DataFinal: String; RegistroE14: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE15(DataInicial: String; DataFinal: String; RegistroE15: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE16(DataInicial: String; DataFinal: String; RegistroE16: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE17(DataInicial: String; DataFinal: String; RegistroE17: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE18(DataInicial: String; DataFinal: String; RegistroE18: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE19(DataInicial: String; DataFinal: String; RegistroE19: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE20(DataInicial: String; DataFinal: String; RegistroE20: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_RegistroE21(DataInicial: String; DataFinal: String; RegistroE21: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_MD5(PathArquivo: String; MD5: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RFD_GerarArquivo(DataInicial: String; DataFinal: String): Integer; StdCall; External 'Daruma32.dll';

//Metodos Bilhete de Passagem
function Daruma_FIB_AbreBilhetePassagem (Origem: String; Destino: String; UF: String; Percurso:String; Prestadora:  String; Plataforma:String; Poltrona: String; Modalidade: String; Categoria:  String; DataEmbarque:  String; PassRg: String; PassNome: String; PassEndereco: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIB_VendeItem  (Descricao: String; St: String; Valor:String;  DescontoAcrescimo: String; TipoDesconto: String; ValorDesconto: String) : Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIB_UfOrigem (UfOrigem: String) : Integer; StdCall; External 'Daruma32.dll';

// Metodos Para Registry TA1000
function Daruma_Registry_TA1000_Porta( Porta: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_LeStatusTransferencia(): Integer; StdCall; External 'Daruma32.dll';function Daruma_Registry_TA1000_PathProdutos( PathProdutos: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_PathUsuarios( PathUsuarios: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_NumeroItensEnviados( NumeroItensEnviados: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_Registry_TA1000_PathRelatorios( PathRelatorios: String): Integer; StdCall; External 'Daruma32.dll';

// Metodos Para Produtos TA1000
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

// Metodos Para Usuarios TA1000
function Daruma_TA1000_EnviarBancoUsuarios(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ReceberBancoUsuarios(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ZerarUsuarios(): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_CadastrarUsuarios(Nome: String; CPF: String; CodigoConvenio: String; CodigoUsuario: String; UsuarioAnterior: String; ProximoUsuario: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_ConsultarUsuarios(Codigo_Consultar : String; Nome: String; CPF: String; CodigoConvenio: String; CodigoUsuario: String; UsuarioAnterior: String; ProximoUsuario: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_AlterarUsuarios(Codigo_Consultar : String; Nome: String; CPF: String; CodigoConvenio: String; CodigoUsuario: String; UsuarioAnterior: String; ProximoUsuario: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_TA1000_EliminarUsuarios(Codigo: String): Integer; StdCall; External 'Daruma32.dll';


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
function Daruma_FIR_RecebimentoNaoFiscal( Descricao_do_Totalizador: String; Valor_do_Recebimento: String; Forma_de_Pagamento: String ): Integer; StdCall; External 'Daruma32.dll';
function Daruma_FIR_AbreRecebimentoNaoFiscal( Descricao_do_Totalizador: String; Acrescimo_ou_Desconto: String; Tipo_Acrescimo_ou_Desconto: String; Valor_Acrescimo_ou_Desconto: String; Valor_do_Recebimento: String; Texto_Livre: String ): Integer; StdCall; External 'Daruma32.dll';
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

///////////////////////////////////////////////////////////////Metodos para o RSA/////////////////////////////////////////////////////////////////
                                                    //Metodos incluidos para atender o PAF//
//Metodo de Alto Nivel
function Daruma_RSA_CarregaChavePrivada_Arquivo(Arquivo: String): Integer; StdCall; External 'Daruma32.dll';

function Daruma_RSA_RetornaChavePublica(N: String; E: String): Integer; StdCall; External 'Daruma32.dll';

function Daruma_RSA_CodificaInformacao(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';


function Daruma_RSA_CodificaInformacao_Hexa(Texto: String; Codigo: String): Integer; StdCall; External 'Daruma32.dll';
function Daruma_RSA_DecodificaInformacao_Hexa(Codigo: String; Texto: String): Integer; StdCall; External 'Daruma32.dll';


function Daruma_RSA_CriarAssinatura(caminhoDoArquivo: string ; sMD5: String; sAssinaturaEletronica: string): Integer; StdCall; External 'Daruma32.dll';







{===============================================================================
********************************************************************************

                      DECLARAÇÃO DAS FUNÇÕES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

{===============================================================================
********************************************************************************

                      DECLARAÇÃO DAS FUNÇÕES DA BEMAFI32.DLL

********************************************************************************
===============================================================================}

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


                                                            *)
