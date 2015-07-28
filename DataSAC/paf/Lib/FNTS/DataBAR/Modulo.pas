unit Modulo;

interface

uses
 Forms, SysUtils, Classes, IBC, DB, MemDS, DBAccess, ACBrBase, ACBrBAL, IniFiles;

type
  TfrmModulo = class(TDataModule)
    Conexao: TIBCConnection;
    query: TIBCQuery;
    st_Mesa_Abertura: TIBCStoredProc;
    st_consumo: TIBCStoredProc;
    Balanca: TACBrBAL;
    qrconfig: TIBCQuery;
    qrconfigCODIGO: TStringField;
    qrconfigULTIMO_BACKUP: TDateTimeField;
    qrconfigPAPEL_PAREDE: TStringField;
    qrconfigAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfigAVISO_CHEQUE: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrconfigCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfigCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfigVENDA_TIPONOTA: TIntegerField;
    qrconfigVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigVENDA_PORTA_IMPRESSORA: TStringField;
    qrconfigVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfigVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfigOS_TIPONOTA: TIntegerField;
    qrconfigOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigOS_PORTA_IMPRESSORA: TStringField;
    qrconfigOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfigORCAMENTO_TIPONOTA: TIntegerField;
    qrconfigORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfigORCAMENTO_PORTA_IMPRESSORA: TStringField;
    qrconfigORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfigCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfigCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfigCONTASRECEBER_MULTA: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfigCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfigECF_MODELO: TStringField;
    qrconfigECF_PORTA: TStringField;
    qrconfigECF_TEF: TIntegerField;
    qrconfigECF_TIPO: TStringField;
    qrconfigBALANCAPDV_MODELO: TStringField;
    qrconfigBALANCAPDV_PORTA: TStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TStringField;
    qrconfigBALANCA_MODELO: TStringField;
    qrconfigIMPRESSORABARRAS_MODELO: TStringField;
    qrconfigBALANCA_CAMINHO: TStringField;
    qrconfigCADASTRO_PRODUTO: TStringField;
    qrconfigRAMO_ATIVIDADE: TIntegerField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigCLASSIFICACAO: TStringField;
    qrconfigBOLETO_FORMAPGTO: TStringField;
    qrconfigPLANO_VENDA_AV: TStringField;
    qrconfigPLANO_VENDA_AP: TStringField;
    qrconfigPLANO_OS_AV: TStringField;
    qrconfigPLANO_OS_AP: TStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TStringField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrconfigECF_CAIXA: TStringField;
    qrconfigECF_SERIAL: TStringField;
    qrconfigFARMACIA_ENVIO: TStringField;
    qrconfigFARMACIA_RESPOSTA: TStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TStringField;
    qrconfigFARMACIA_LOGIN: TStringField;
    qrconfigFARMACIA_SENHA: TStringField;
    qrconfigULTIMA_CARGA: TDateTimeField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrconfigNR_CONTROLE_ECF: TStringField;
    qrconfigBALANCA_PROGRAMA: TStringField;
    qrconfigTIPO_DUPLICATA: TStringField;
    qrconfigCONCILIA_VENDA: TIntegerField;
    qrconfigCONTROLA_ENTREGA: TIntegerField;
    qrconfigENTREGA_IMPRESSAO: TIntegerField;
    qrconfigENTREGA_VIAS: TIntegerField;
    qrconfigCONDICIONAL: TIntegerField;
    qrconfigCONDICIONAL_PRAZO: TIntegerField;
    qrconfigVS_ATIVAR: TIntegerField;
    qrconfigVS_DINHEIRO: TIntegerField;
    qrconfigVS_CHEQUEAV: TIntegerField;
    qrconfigVS_CHEQUEAP: TIntegerField;
    qrconfigVS_CARTRAOCRED: TIntegerField;
    qrconfigVS_CARTAODEB: TIntegerField;
    qrconfigVS_CREDIARIO: TIntegerField;
    qrconfigVS_CLIENTE_VISTA: TStringField;
    qrconfigVS_CAIXA: TIntegerField;
    qrconfigVS_RELATORIO: TIntegerField;
    qrconfigVS_VIAS: TIntegerField;
    qrconfigVS_VISUALIZAR: TIntegerField;
    qrconfigCONDICIONAL_MODELO: TIntegerField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrconfigCONTASRECEBER_VALORJUROS: TFloatField;
    qrconfigCONTASRECEBER_JUROS_DINHEIRO: TIntegerField;
    qrconfigPLANO_DUPLICATA_NFE: TStringField;
    qrconfigVAREJO_ATACADO: TIntegerField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigSERIAL_REPETIDO: TIntegerField;
    qrconfigOCULTAR_CUSTO: TIntegerField;
    qrconfigOCULTAR_PRODUTO_INATIVO: TIntegerField;
    qrconfigOCULTAR_CLIENTE_INATIVO: TIntegerField;
    qrconfigOBS_FARMA: TIntegerField;
    qrconfigOBS_FARMA_TEXTO: TStringField;
    qrconfigCUSTO_MAIOR_VENDA: TIntegerField;
    qrconfigVENDER_ABAIXO_CUSTO: TIntegerField;
    qrconfigNF_GERAR_RECEBER: TIntegerField;
    qrconfigNF_CODIGOBARRA_NFE: TIntegerField;
    qrconfigNF_GRADE_NFE: TIntegerField;
    qrconfigNF_SERIAL_NFE: TIntegerField;
    qrconfigNF_REFERENCIA_NFE: TIntegerField;
    qrconfigNF_GERAR_DUPLICATA: TIntegerField;
    qrconfigVALE_CAIXA: TIntegerField;
    qrconfigCONTAS_RECEBER_BLOQUEIO: TIntegerField;
    qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    qrconfigCLIENTE_PEDE_CPF: TIntegerField;
    qrconfigVERIFICA_COD_BARRA: TIntegerField;
    qrconfigVERIFICA_NOME_PRODUTO: TIntegerField;
    qrconfigVS_FRETE: TIntegerField;
    qrconfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrconfigETIQUETA_07: TIntegerField;
    qrconfigETIQUETA_07_1: TIntegerField;
    qrconfigETIQUETA_07_2: TIntegerField;
    qrconfigEMAIL_SERVIDOR_SMTP: TStringField;
    qrconfigEMAIL_PORTA: TStringField;
    qrconfigEMAIL_USUARIO: TStringField;
    qrconfigEMAIL_SENHA: TStringField;
    qrconfigEMAIL_ASSUNTO: TStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    qrconfigINESTRA: TIntegerField;
    qrconfigFARMACIA_INVENTARIO_FECHA: TIntegerField;
    qrconfigFARMACIA_ENVIO_NOVARTIS: TStringField;
    qrconfigFARMACIA_RESPOSTA_NOVARTIS: TStringField;
    qrconfigFARMACIA_INVENTARIO_CONFIRMA: TStringField;
    qrconfigFARMACIA_INVENTARIO_DATA: TDateTimeField;
    qrconfigCALCULA_ISENTAS_OUTRAS: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrconfigUSA_PRODUTOR_RURAL: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TStringField;
    qrconfigIND_CFOP_ENTRADA: TStringField;
    qrconfigIND_CLIE_SAIDA: TStringField;
    qrconfigIND_CFOP_SAIDA: TStringField;
    qrconfigIND_CLIE_PERDA: TStringField;
    qrconfigIND_CFOP_PERDA: TStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigCHECA_SERIAL_NOTA_SAIDA: TIntegerField;
    qrconfigCOR_COMERCIO: TStringField;
    qrconfigLOGO_COMERCIO: TStringField;
    qrconfigCOR_FARMACIA: TStringField;
    qrconfigLOGO_FARMACIA: TStringField;
    qrconfigCOR_PECAS: TStringField;
    qrconfigLOGO_PECAS: TStringField;
    qrconfigCOR_MERCADO: TStringField;
    qrconfigLOGO_MERCADO: TStringField;
    qrconfigCOR_POSTO: TStringField;
    qrconfigLOGO_POSTO: TStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TStringField;
    qrconfigIND_CLIE_PERDA_DESC: TStringField;
    qrconfigIND_CFOP_PERDA_DESC: TStringField;
    procedure BalancaLePeso(Peso: Double; Resposta: String);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Function LerIni(Arq, Secao, Ident: String; Def: String): String;
  end;

var
  frmModulo: TfrmModulo;
  iBal_time : integer; // configuracao de time out da balanca
  sBal_Resposta : string; // resposta da balanca
  rBal_peso : real; // peso lido na balanca  

implementation

{$R *.dfm}

procedure TfrmModulo.BalancaLePeso(Peso: Double; Resposta: String);
begin
   // Buscar o Peso nas balancas PDV's
   if Peso > 0 then
   begin
     // Leitura OK
     sBal_Resposta := 'Peso Estável';
     rBal_peso := Peso;
   end
   else
   begin
     // Leitura retornou ERRo
      case Trunc(balanca.UltimoPesoLido) of
         0 : sBal_Resposta := 'Coloque o produto sobre a Balança!' ;
        -1 : sBal_Resposta := 'Peso Instavel!' ;
        -2 : sBal_Resposta := 'Peso Negativo!' ;
       -10 : sBal_Resposta := 'Sobrepeso!' ;
      end ;
      rBal_peso := 0;
   end;
end;

procedure TfrmModulo.DataModuleCreate(Sender: TObject);
var
  sBanco:string;
begin
  sBanco := LerIni(ExtractFilePath(Application.ExeName) + 'cfg\dados.ini','DataBar','ed_server','localhost') + ':' +
            LerIni(ExtractFilePath(Application.ExeName) + 'cfg\dados.ini','DataBar','ed_base','C:\dataSAc\Server\BD\BASE.FDB');

  Conexao.Database := sBanco;

  Conexao.Connected := True;
end;

function TfrmModulo.LerIni(Arq, Secao, Ident, Def: String): String;
var
  Ini: TIniFile;
begin

  Ini := TIniFile.Create(Arq);
  Result := Ini.ReadString(Secao, Ident, Def);
  Ini.Free;
  
end;

end.
