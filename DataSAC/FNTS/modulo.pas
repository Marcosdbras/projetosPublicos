unit modulo;

interface

uses
  SysUtils, Classes, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, forms, frxExportMail, frxExportText, frxExportImage,
  frxExportRTF, frxExportXLS, frxExportHTML, frxClass, frxExportPDF,
  frxDBSet, ExtCtrls;

type
  Tfrmmodulo = class(TDataModule)
    Conexao: TZConnection;
    qrItem: TZQuery;
    qrItemCUPOM: TStringField;
    qrItemITEM: TStringField;
    qrItemCODPRODUTO: TStringField;
    qrItemQTDE: TFloatField;
    qrItemUNITARIO: TFloatField;
    qrItemTOTAL: TFloatField;
    qrproduto: TZQuery;
    qrcodbarra: TZQuery;
    qrconfig: TZQuery;
    qrItemPRODUTO: TStringField;
    qrvenda_contasreceber: TZQuery;
    qrvenda_contasreceberPRESTACAO: TIntegerField;
    qrvenda_contasreceberVENCIMENTO: TDateTimeField;
    qrvenda_contasreceberTIPO: TStringField;
    qrvenda_contasreceberDOCUMENTO: TStringField;
    qrvenda_contasreceberVALOR: TFloatField;
    qrcontasreceber: TZQuery;
    qrcondpgto: TZQuery;
    qrcondpgtoCODIGO: TStringField;
    qrcondpgtoCONDPGTO: TStringField;
    qrcondpgtoPARCELAS: TIntegerField;
    qrcondpgto_parcela: TZQuery;
    qrcondpgto_parcelaNUMERO: TIntegerField;
    qrcondpgto_parcelaDIAS: TIntegerField;
    qrcondpgto_parcelaPERCENTUAL: TFloatField;
    qrcondpgto_parcelaJUROS: TFloatField;
    qrcondpgto_parcelaCODIGO: TStringField;
    qrcondpgto_parcelaCODCONDPGTO: TStringField;
    qrproduto_mov: TZQuery;
    qrItemUNIDADE: TStringField;
    qrvenda: TZQuery;
    qrMestre: TZQuery;
    qrcaixa_operador: TZQuery;
    qrcaixa_operadorCODIGO: TStringField;
    qrcaixa_operadorCODFUNCIONARIO: TStringField;
    qrcaixa_operadorSENHA: TStringField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadorDATA: TDateTimeField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_mov: TZQuery;
    qrcliente: TZQuery;
    qrUsuario: TZQuery;
    ConexaoMestre: TZConnection;
    qrconfig_complus: TZQuery;
    qrfunci: TZQuery;
    qrcaixa_operadornome: TStringField;
    ConexaoLocal: TZConnection;
    qremitente: TZQuery;
    qrvendaCODIGO: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaDATA: TDateTimeField;
    qrvendaCODCLIENTE: TStringField;
    qrvendaOBS: TStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    qrvendacliente: TStringField;
    qrItemCODALIQUOTA: TStringField;
    qrItemSEQUENCIA: TIntegerField;
    ConexaoProduto: TZConnection;
    qrsintegra_r60: TZQuery;
    qrItemALIQUOTA: TFloatField;
    qrItemCST: TStringField;
    qrconfig_server: TZQuery;
    qrconfig_serverCODIGO: TStringField;
    qrconfig_serverULTIMO_BACKUP: TDateTimeField;
    qrconfig_serverPAPEL_PAREDE: TStringField;
    qrconfig_serverAVISO_CONTAS_PAGAR: TIntegerField;
    qrconfig_serverAVISO_CHEQUE: TIntegerField;
    qrconfig_serverESTOQUE_NEGATIVO: TIntegerField;
    qrconfig_serverCASAS_DECIMAIS_QTDE: TIntegerField;
    qrconfig_serverCASAS_DECIMAIS_VALOR: TIntegerField;
    qrconfig_serverVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfig_serverVENDA_CADASTRO_CARTAO: TIntegerField;
    qrconfig_serverVENDA_TIPONOTA: TIntegerField;
    qrconfig_serverVENDA_QTDE_VIAS_NOTA: TIntegerField;
    qrconfig_serverVENDA_PORTA_IMPRESSORA: TStringField;
    qrconfig_serverVENDA_TIPO_IMPRESSORA: TIntegerField;
    qrconfig_serverVENDA_LIMITE_CLIENTE: TIntegerField;
    qrconfig_serverOS_TIPONOTA: TIntegerField;
    qrconfig_serverOS_QTDE_VIAS_NOTA: TIntegerField;
    qrconfig_serverOS_PORTA_IMPRESSORA: TStringField;
    qrconfig_serverOS_TIPO_IMPRESSORA: TIntegerField;
    qrconfig_serverORCAMENTO_TIPONOTA: TIntegerField;
    qrconfig_serverORCAMENTO_QTDE_VIAS_NOTA: TIntegerField;
    qrconfig_serverORCAMENTO_PORTA_IMPRESSORA: TStringField;
    qrconfig_serverORCAMENTO_TIPO_IMPRESSORA: TIntegerField;
    qrconfig_serverCONTASRECEBER_CARENCIA: TIntegerField;
    qrconfig_serverCONTASRECEBER_TAXAJUROS: TFloatField;
    qrconfig_serverCONTASRECEBER_MULTA: TFloatField;
    qrconfig_serverCONTASRECEBER_DESCONTO_PERCENT: TFloatField;
    qrconfig_serverCONTASRECEBER_DESCONTO_PERMITIR: TIntegerField;
    qrconfig_serverECF_MODELO: TStringField;
    qrconfig_serverECF_PORTA: TStringField;
    qrconfig_serverECF_TEF: TIntegerField;
    qrconfig_serverECF_TIPO: TStringField;
    qrconfig_serverBALANCAPDV_MODELO: TStringField;
    qrconfig_serverBALANCAPDV_PORTA: TStringField;
    qrconfig_serverIMPRESSORACHEQUE_MODELO: TStringField;
    qrconfig_serverIMPRESSORACHEQUE_PORTA: TStringField;
    qrconfig_serverBALANCA_MODELO: TStringField;
    qrconfig_serverIMPRESSORABARRAS_MODELO: TStringField;
    qrconfig_serverBALANCA_CAMINHO: TStringField;
    qrconfig_serverCADASTRO_PRODUTO: TStringField;
    qrconfig_serverRAMO_ATIVIDADE: TIntegerField;
    qrconfig_serverEXTRATO_TIPONOTA: TIntegerField;
    qrconfig_serverBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfig_serverCLASSIFICACAO: TStringField;
    qrconfig_serverBOLETO_FORMAPGTO: TStringField;
    qrconfig_serverPLANO_VENDA_AV: TStringField;
    qrconfig_serverPLANO_VENDA_AP: TStringField;
    qrconfig_serverPLANO_OS_AV: TStringField;
    qrconfig_serverPLANO_OS_AP: TStringField;
    qrconfig_serverPLANO_OUTRAS_ENTRADAS: TStringField;
    qrconfig_serverPLANO_OUTRAS_SAIDAS: TStringField;
    qrconfig_serverPLANO_RECEBTO_CREDIARIO: TStringField;
    qrconfig_serverNF_ITENS_PAGINA: TIntegerField;
    qrconfig_serverNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfig_serverNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfig_serverNF_SALTO_PAGINA: TIntegerField;
    qrconfig_serverNF_TIPO: TIntegerField;
    qrconfig_serverNF_IMPRESSORA: TStringField;
    qrconfig_serverVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconfig_serverDESCONTO_AVISTA: TFloatField;
    qrconfig_serverDESCONTO_PRODUTO: TFloatField;
    qrconfig_serverDESCONTO_TOTALNOTA: TFloatField;
    qrconfig_serverTIPO_VENDA: TStringField;
    qrconfig_serverVENDA_ALTERAR_PRECO: TIntegerField;
    qrlancamento_conta: TZQuery;
    qrlancamento_contaCODIGO: TStringField;
    qrlancamento_contaCODCONTACORRENTE: TStringField;
    qrlancamento_contaDATA: TDateTimeField;
    qrlancamento_contaHISTORICO: TStringField;
    qrlancamento_contaCODCONTA: TStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TStringField;
    qrlancamento_contaDOCUMENTO: TStringField;
    qrplano: TZQuery;
    qrplanoCODIGO: TStringField;
    qrplanoCONTA: TStringField;
    qrplanoTIPO: TIntegerField;
    qrplanoENTRADA: TFloatField;
    qrplanoSAIDA: TFloatField;
    qrplanoSALDO: TFloatField;
    qrplanoFILTRO: TIntegerField;
    qrplanoCLASSIFICACAO: TStringField;
    qrplanoCODGRUPO: TStringField;
    qrplanogrupo: TStringField;
    qrplanoNIVEL: TIntegerField;
    qrregiao: TZQuery;
    qrrelatorio: TZQuery;
    qrrelatorioLINHA1: TStringField;
    qrrelatorioLINHA2: TStringField;
    qrrelatorioLINHA3: TStringField;
    qrrelatorioLINHA4: TStringField;
    qrrelatorioLINHA5: TStringField;
    qrrelatorioLINHA6: TStringField;
    qrrelatorioLINHA7: TStringField;
    qrrelatorioLINHA8: TStringField;
    qrrelatorioLINHA9: TStringField;
    qrrelatorioLINHA10: TStringField;
    qrrelatorioVALOR1: TFloatField;
    qrrelatorioVALOR2: TFloatField;
    qrrelatorioVALOR3: TFloatField;
    qrrelatorioVALOR4: TFloatField;
    qrrelatorioVALOR5: TFloatField;
    qrrelatorioVALOR6: TFloatField;
    qrrelatorioVALOR7: TFloatField;
    qrrelatorioVALOR8: TFloatField;
    qrrelatorioVALOR9: TFloatField;
    qrrelatorioVALOR10: TFloatField;
    qrrelatorioVALOR11: TFloatField;
    qrrelatorioVALOR12: TFloatField;
    qrrelatorioVALOR13: TFloatField;
    qrrelatorioVALOR14: TFloatField;
    qrrelatorioVALOR15: TFloatField;
    qrrelatorioVALOR16: TFloatField;
    qrrelatorioVALOR17: TFloatField;
    qrrelatorioVALOR18: TFloatField;
    qrrelatorioVALOR19: TFloatField;
    qrrelatorioVALOR20: TFloatField;
    qrrelatorioVALOR21: TFloatField;
    qrrelatorioVALOR22: TFloatField;
    qrrelatorioVALOR23: TFloatField;
    qrrelatorioVALOR24: TFloatField;
    qrrelatorioVALOR25: TFloatField;
    fxrelatorio: TfrxDBDataset;
    fxemitente: TfrxDBDataset;
    fxPDF: TfrxPDFExport;
    fxHTML: TfrxHTMLExport;
    fxExcel: TfrxXLSExport;
    fxWord: TfrxRTFExport;
    fxBMP: TfrxBMPExport;
    fxJPEG: TfrxJPEGExport;
    fxTIF: TfrxTIFFExport;
    fxGIF: TfrxGIFExport;
    fxTXT: TfrxSimpleTextExport;
    fxEmail: TfrxMailExport;
    qrconvenio: TZQuery;
    qrconvenioCODIGO: TStringField;
    qrconvenioNOME: TStringField;
    qrconvenioENDERECO: TStringField;
    qrconvenioBAIRRO: TStringField;
    qrconvenioCIDADE: TStringField;
    qrconvenioUF: TStringField;
    qrconvenioCEP: TStringField;
    qrconvenioTELEFONE1: TStringField;
    qrconvenioTELEFONE2: TStringField;
    qrconvenioCONTATO: TStringField;
    qrconvenioCELULAR: TStringField;
    qrconvenioDIA_PGTO: TStringField;
    qrconvenioCNPJ: TStringField;
    qrconvenioIE: TStringField;
    qrconvenioDATA_CADASTRO: TDateTimeField;
    qrconvenioFAX: TStringField;
    qrconvenioEMAIL: TStringField;
    qrconvenioDESCONTO: TFloatField;
    qrconvenioDIA_FECHAMENTO: TIntegerField;
    qrconvenioDIA_PAGAMENTO: TIntegerField;
    qrconvenioLIMITE: TFloatField;
    qrbanco: TZQuery;
    qrcheque: TZQuery;
    qrchequeCODIGO: TStringField;
    qrchequeEMISSAO: TDateTimeField;
    qrchequeVENCIMENTO: TDateTimeField;
    qrchequeDATA_DEPOSITO1: TDateTimeField;
    qrchequeDATA_DEPOSITO2: TDateTimeField;
    qrchequeDATA_DEVOLUCAO1: TDateTimeField;
    qrchequeDATA_DEVOLUCAO2: TDateTimeField;
    qrchequeSITUACAO: TIntegerField;
    qrchequeCODCLIENTE: TStringField;
    qrchequeTITULAR: TStringField;
    qrchequeCODBANCO: TStringField;
    qrchequeAGENCIA: TStringField;
    qrchequeCONTA: TStringField;
    qrchequeDATA_CONTA: TDateTimeField;
    qrchequeNUMERO: TStringField;
    qrchequeVALOR: TFloatField;
    qrchequeDESCONTO: TFloatField;
    qrchequeLIQUIDO: TFloatField;
    qrchequeCODVENDA: TStringField;
    qrchequeOBS1: TStringField;
    qrchequeOBS2: TStringField;
    qrchequeCODCONTAS_PAGAR: TStringField;
    qrchequeDESTINO: TStringField;
    qrchequeDATA_BAIXA: TDateTimeField;
    qrchequecliente: TStringField;
    qrchequeBANCO: TStringField;
    qrchequeCODCONTA_CORRENTE: TStringField;
    qrchequeCODCONTA: TStringField;
    qrcontacorrente: TZQuery;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrentebanco: TStringField;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrregiaoCODIGO: TStringField;
    qrregiaoREGIAO: TStringField;
    qrbancoNUMERO: TStringField;
    qrbancoBANCO: TStringField;
    qrbancoLOGO: TBlobField;
    qrconfigONLINE_OFFLINE: TStringField;
    qrconfigCAIXA_ATUAL: TStringField;
    qrconfigECF_MODELO: TStringField;
    qrconfigECF_PORTA: TStringField;
    qrconfigCOD_CAIXA_ATUAL: TStringField;
    qrconfigUTILIZA_CONTAS_RECEBER: TStringField;
    qrconfigUTILIZA_LANCAMENTO_CAIXA: TStringField;
    qrconfigUTILIZA_BAIXA_ESTOQUE: TStringField;
    qrconfigUTILIZA_HISTORICO_VENDA: TStringField;
    qrconfigBALANCAPDV_MODELO: TStringField;
    qrconfigBALCANCAPVD_PORTA: TStringField;
    qrconfigIMPRESSORACHEQUE_MODELO: TStringField;
    qrconfigIMPRESSORACHEQUE_PORTA: TStringField;
    qrconfigIMPRESSORA_GENERICA: TStringField;
    qrconfigIMPRESSORA_GENERICA_SUBIR_PAPEL: TIntegerField;
    qrconfigIMPRESSORA_GENERICA_VIAS: TIntegerField;
    qrconfigCODIGO_BALANCA: TIntegerField;
    qrconfigECF_CAIXA: TStringField;
    qrconfigECF_SERIAL: TStringField;
    qrconfigVENDA_CADASTRO_CHEQUE: TIntegerField;
    qrconfigULTIMA_CARGA: TDateTimeField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrconfigESTOQUE_NEGATIVO: TIntegerField;
    qrsintegra_r60ID: TIntegerField;
    qrsintegra_r60MOVIMENTO: TStringField;
    qrsintegra_r60CODIGO_EMPRESA: TIntegerField;
    qrsintegra_r60OBS1: TStringField;
    qrsintegra_r60CNPJ: TStringField;
    qrsintegra_r60IE: TStringField;
    qrsintegra_r60UF: TStringField;
    qrsintegra_r60CODIGO_CLIENTE: TIntegerField;
    qrsintegra_r60CNPJ_CLIENTE: TStringField;
    qrsintegra_r60IE_CLIENTE: TStringField;
    qrsintegra_r60UF_CLIENTE: TStringField;
    qrsintegra_r60CFOP: TStringField;
    qrsintegra_r60COD_SINTEGRA_R60: TStringField;
    qrsintegra_r60DATA_EMISSAO: TDateTimeField;
    qrsintegra_r60NRO_SERIE_EQP: TStringField;
    qrsintegra_r60NRO_ORDEM_EQP: TIntegerField;
    qrsintegra_r60MODELO_DOC: TStringField;
    qrsintegra_r60NRO_CONTADOR_INICIO: TIntegerField;
    qrsintegra_r60NRO_CONTADOR_FIM: TIntegerField;
    qrsintegra_r60NRO_CONTADOR_Z: TIntegerField;
    qrsintegra_r60NRO_DOC_FISCAL: TIntegerField;
    qrsintegra_r60NRO_ITENS: TIntegerField;
    qrsintegra_r60CONTADOR_REINICIO: TIntegerField;
    qrsintegra_r60VALOR_VENDA_BRUTA: TFloatField;
    qrsintegra_r60VALOR_TOTAL_GERAL: TFloatField;
    qrsintegra_r60BRANCOS: TStringField;
    qrsintegra_r60DATAHORA_RECEBIMENTO: TDateTimeField;
    qrsintegra_r60MODELO_NF: TStringField;
    qrsintegra_r60DATAHORA_INI: TDateTimeField;
    qrsintegra_r60DATAHORA_FIM: TDateTimeField;
    qrsintegra_r60CANCELAMENTO: TFloatField;
    qrsintegra_r60DESCONTO: TFloatField;
    qrsintegra_r60ISSQN: TFloatField;
    qrsintegra_r60SUBSTITUICAO_TRIBUTARIA: TFloatField;
    qrsintegra_r60ISENTO: TFloatField;
    qrsintegra_r60NAO_INCIDENCIA: TFloatField;
    qrsintegra_r60ACRESCIMO_IOF: TFloatField;
    qrsintegra_r60ALIQUOTA01: TFloatField;
    qrsintegra_r60ALIQUOTA02: TFloatField;
    qrsintegra_r60ALIQUOTA03: TFloatField;
    qrsintegra_r60ALIQUOTA04: TFloatField;
    qrsintegra_r60ALIQUOTA05: TFloatField;
    qrsintegra_r60BASE01: TFloatField;
    qrsintegra_r60BASE02: TFloatField;
    qrsintegra_r60BASE03: TFloatField;
    qrsintegra_r60BASE04: TFloatField;
    qrsintegra_r60BASE05: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL01: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL02: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL03: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL04: TFloatField;
    qrsintegra_r60VALOR_TPARCIAL05: TFloatField;
    qrsintegra_r60BRANCOS_60A01: TStringField;
    qrsintegra_r60BRANCOS_60A02: TStringField;
    qrsintegra_r60BRANCOS_60A03: TStringField;
    qrsintegra_r60BRANCOS_60A04: TStringField;
    qrsintegra_r60BRANCOS_60A05: TStringField;
    qrsintegra_r60TOTAL_INICIO_DIA: TFloatField;
    qrsintegra_r60TOTAL_FINAL_DIA: TFloatField;
    qrsintegra_r60TOTAL_DIA: TFloatField;
    qrsintegra_r60OBSERVACAO: TStringField;
    qrsintegra_r60VALOR_VENDA_LIQUIDA: TFloatField;
    qrfiscal_ecf: TZQuery;
    qrfiscal_ecfCODIGO: TStringField;
    qrfiscal_ecfSERIE_EMPRESA: TStringField;
    qrfiscal_ecfEQUIPAMENTO: TStringField;
    qrfiscal_ecfSERIE_EQUIPAMENTO: TStringField;
    qrfiscal_ecfALIQUOTA_ISS: TFloatField;
    qrfiscal_ecfDATA_INICIO: TDateTimeField;
    qrfiscal_ecfTIPO_ECF: TStringField;
    qrFilial: TZQuery;
    qrFilialCODIGO: TStringField;
    qrFilialFILIAL: TStringField;
    qrFilialNOTAFISCAL: TIntegerField;
    qrFilialENDERECO: TStringField;
    qrFilialCIDADE: TStringField;
    qrFilialUF: TStringField;
    qrFilialCEP: TStringField;
    qrFilialTELEFONE: TStringField;
    qrFilialCNPJ: TStringField;
    qrFilialIE: TStringField;
    qrFilialSEQNF: TIntegerField;
    qrFilialFAX: TStringField;
    qrFilialOBS1: TStringField;
    qrFilialOBS2: TStringField;
    qrFilialCONTRIBUINTE_IPI: TStringField;
    qrFilialSUBSTITUTO_TRIBUTARIO: TStringField;
    qrFilialEMPRESA_ESTADUAL: TStringField;
    qrFilialOPTANTE_SIMPLES: TStringField;
    qrFilialOPTANTE_SUPER_SIMPLES: TStringField;
    qrFilialECF: TStringField;
    qrFilialTIPO: TIntegerField;
    qrFilialIPI: TFloatField;
    qrFilialISS: TFloatField;
    qrFilialNUMERO: TStringField;
    qrFilialRESPONSAVEL: TStringField;
    qrFilialCOMPLEMENTO: TStringField;
    qrFilialBAIRRO: TStringField;
    qrcaixa_operadorSITUACAO_ATUAL: TStringField;
    qrconfigLIBERA_CANCELAMENTOS: TIntegerField;
    qrItemECF_SERIAL: TStringField;
    Conexao_servidor: TZConnection;
    qrservidor: TZQuery;
    time_gp: TTimer;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrMestreAfterPost(DataSet: TDataSet);
    procedure qrvenda_contasreceberAfterPost(DataSet: TDataSet);
    procedure qrvenda_contasreceberBeforeEdit(DataSet: TDataSet);
    procedure qrvenda_contasreceberBeforeInsert(DataSet: TDataSet);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure time_gpTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmodulo: Tfrmmodulo;


  caminho_fotos_produtos : string; // diretorio onde se encontrarao as imagens dos produtos
  mascara_valor, mascara_qtde : string;
  decimal_valor, decimal_qtde : integer;

  utiliza_historico_VENDA : string;
  utiliza_baixa_estoque     : string;
  utiliza_contas_receber    : string;
  utiliza_lancamento_caixa  : string;
  senha_item : string;
  impressora : string;
  ecf_modelo : string;
  ecf_porta  : string;
  balanca_modelo : string;
  balanca_porta : string;
  int_retorno : integer;
  VIAS, SUBIR_PAPEL : INTEGER;
  emitente_uf, emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone, emitente_ie : string;
  arredonda : BOOLEAN;
  codigo, codigo_caixa, data_caixa : string;
  sequencia : integer;
  ESTOQUE_NEGATIVO : integer;
  valor_prestacao : real;
  QTDE_CODIGO_BALANCA : integer;
  FDINHEIRO, FCHEQUEAV, FCHEQUEAP, FCARTAOCR, FCARTAODB, FPROMISSO : STRING;
  CAMPO_INI, CAMPO_QTDE, RESULTADO_INI, RESULTADO_QTDE : INTEGER;
  ALTERAR_PRECO : STRING;
  aliquota_ecf : array[0..30] of string;
  balanca_venda : string;
  informa_veiculo : string;
  arredonda_total, numero_cupomx : string;

  parametro_pesquisa,
  resultado_pesquisa1, resultado_pesquisa2, resultado_pesquisa3,
  resultado_pesquisa4, resultado_pesquisa5, resultado_pesquisa6,
  resultado_pesquisa7, RESULTADO_PESQUISA8 : string;

  procura_sintegra : boolean;
  codigo_usuario : string;

  CHEQUE_CODCLIENTE, CHEQUE_VENDA : STRING;

  tempo_gp : integer;

  libera_cancelamanto,verifica_prestacao_atrazo,ecf_cupom_vinculado_carne, ecf_cupom_vinculado_produtos,ecf_cupom_vinculado : string;

implementation

uses UConstantes, principal, venda_contasreceber, venda_fechamento,
  ecf_daruma, ecf_bematech, ecf_sweda, ecf_urano, ecf_yanco;

{$R *.dfm}

procedure Tfrmmodulo.DataModuleCreate(Sender: TObject);
var txt : textfile;
entrada : string;
begin
  senha_item := '1';
  balanca_venda := '2';
  informa_veiculo := '2';
  conexao.connected       := false;
  conexaolocal.Connected  := false;
  conexaomestre.connected := false;


  conexao_servidor.connected := false;

  ARREDONDA_TOTAL := '1';
  assignfile(txt,'c:\DataSAC\SERVER\dll\com.ini');
  reset(txt);
  while not eof(txt) do
  begin
    readln(txt,entrada);
    // conectando banco de dados
    if copy(entrada,1,7) = '999-001' then conexao.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = '999-002' then conexao.hostname := trim(copy(entrada,9,50));
    // banco de dados mestre
    if copy(entrada,1,7) = '999-001' then conexaomestre.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = '999-002' then conexaomestre.hostname := trim(copy(entrada,9,50));

    // banco de dados LOCAL
    if copy(entrada,1,7) = 'loc-001' then conexaolocal.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'loc-002' then conexaolocal.hostname := trim(copy(entrada,9,50));

    // banco de dados LOCAL
    if copy(entrada,1,7) = 'ser-001' then conexao_servidor.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'ser-002' then conexao_servidor.hostname := trim(copy(entrada,9,50));

    // fotos dos produtos
    if copy(entrada,1,7) = 'img-001' then caminho_fotos_produtos := trim(copy(entrada,9,50));

    IF COPY(ENTRADA,1,7) = 'FDINHEI' THEN FDINHEIRO := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCHEQAV' THEN FCHEQUEAV := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCHEQAP' THEN FCHEQUEAP := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCARTCR' THEN FCARTAOCR := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCARTDB' THEN FCARTAODB := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FPROMIS' THEN FPROMISSO := trim(copy(entrada,9,50));

    IF COPY(ENTRADA,1,7) = 'PIC-R60' THEN CAMPO_INI :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'PQC-R60' THEN CAMPO_QTDE :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'PIR-R60' THEN RESULTADO_INI :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'PQR-R60' THEN RESULTADO_QTDE :=  STRTOINT(trim(copy(entrada,9,50)));


    if COPY(ENTRADA,1,7) = 'ali-001' THEN aliquota_ecf[1] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-002' THEN aliquota_ecf[2] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-003' THEN aliquota_ecf[3] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-004' THEN aliquota_ecf[4] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-005' THEN aliquota_ecf[5] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-006' THEN aliquota_ecf[6] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-007' THEN aliquota_ecf[7] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-008' THEN aliquota_ecf[8] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-009' THEN aliquota_ecf[9] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-010' THEN aliquota_ecf[10] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-011' THEN aliquota_ecf[11] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-012' THEN aliquota_ecf[12] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-013' THEN aliquota_ecf[13] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-014' THEN aliquota_ecf[14] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-015' THEN aliquota_ecf[15] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-016' THEN aliquota_ecf[16] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-017' THEN aliquota_ecf[17] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-018' THEN aliquota_ecf[18] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-019' THEN aliquota_ecf[19] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-020' THEN aliquota_ecf[20] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-021' THEN aliquota_ecf[21] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-022' THEN aliquota_ecf[22] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-023' THEN aliquota_ecf[23] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-024' THEN aliquota_ecf[24] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-025' THEN aliquota_ecf[25] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-026' THEN aliquota_ecf[26] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-027' THEN aliquota_ecf[27] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-028' THEN aliquota_ecf[28] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-029' THEN aliquota_ecf[29] := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-030' THEN aliquota_ecf[30] := trim(copy(entrada,9,5));

    if COPY(ENTRADA,1,7) = 'sis-ven' THEN alterar_preco := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'sen-ite' THEN senha_item := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'bal-ven' THEN balanca_venda := trim(copy(entrada,9,1));
    if COPY(ENTRADA,1,7) = 'inf-vei' THEN informa_veiculo := trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'arr-end' then arredonda_total := trim(copy(entrada,9,1));

    IF COPY(ENTRADA,1,7) = 'ecf_cnf' THEN ecf_cupom_vinculado :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ecf_cnc' THEN ecf_cupom_vinculado_carne :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ver_deb' THEN verifica_prestacao_atrazo :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'usa-tef' THEN if  trim(copy(entrada,9,1)) = '1' then usa_tef := true else usa_tef := false;
    IF COPY(ENTRADA,1,7) = 'usa-tec' THEN if  trim(copy(entrada,9,1)) = '1' then usa_tecban := true else usa_tef := false;




  end;
  conexao.Connected       := true;
  conexaolocal.Connected  := true;
  conexaomestre.connected := true;

  try
     conexao_servidor.Connected := true;
  except
  end;

  ConexaoProduto.connected := false;
  conexaoproduto.database := conexao.database;
  conexaoproduto.hostname := conexao.hostname;
  conexaoproduto.Connected := true;



  // configuracoes do comercio plus

    QRCONFIG_COMPLUS.OPEN;
    IF QRCONFIG_complus.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := 1 ELSE ESTOQUE_NEGATIVO := 0;

    CASE qrconfig_complus.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER OF
    0 : begin
          mascara_qtde := '###,###,##0';
          decimal_qtde := 0;
        end;
    2 : BEGIN
          mascara_qtde := '###,###,##0.00';
          decimal_qtde := 2;
        end;
    3 : BEGIN
          mascara_qtde := '###,###,##0.000';
          decimal_qtde := 3;
        end;
    end;
    CASE qrconfig_complus.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER OF
    2 : BEGIN
          mascara_valor := '###,###,##0.00';
          decimal_valor := 2;
      END;
    3 : BEGIN
          mascara_valor := '###,###,##0.000';
          decimal_valor := 3;
        END;
    end;



//  configuracoes locais - DataSAC


    qrconfig.open;
    codigo_caixa := qrconfig.fieldbyname('cod_caixa_atual').asstring;

    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := 1 ELSE ESTOQUE_NEGATIVO := 0;

    if qrconfig.fieldbyname('codigo_balanca').asinteger > 0 then
      QTDE_CODIGO_BALANCA := qrconfig.fieldbyname('codigo_balanca').asinteger
    else
      QTDE_CODIGO_BALANCA := 5;

    frmmodulo.qrcaixa_operador.close;
    frmmodulo.qrcaixa_operador.SQL.clear;
    frmmodulo.qrcaixa_operador.SQL.add('select * from c000045 where codigo = '''+codigo_caixa+'''');
    frmmodulo.qrcaixa_operador.open;


    data_caixa := frmmodulo.qrcaixa_operador.FIELDBYNAME('data').ASstring;



    ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
    ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;

    IF ECF_MODELO = 'DARUMA'   Then frmecf_daruma   := tfrmecf_daruma.create(self);
    IF ECF_MODELO = 'BEMATECH' Then frmecf_bematech := tfrmecf_bematech.create(self);
    IF ECF_MODELO = 'SWEDA'    Then frmecf_sweda    := tfrmecf_sweda.create(self);
    IF ECF_MODELO = 'URANO'    Then frmecf_urano    := tfrmecf_urano.create(self);
    IF ECF_MODELO = 'YANCO'    Then frmecf_yanco    := tfrmecf_yanco.create(self);

    utiliza_historico_VENDA := qrconfig.fieldbyname('utiliza_historico_VENDA').asstring;

    utiliza_contas_receber := qrconfig.fieldbyname('utiliza_contas_receber').asstring;
    utiliza_lancamento_caixa := qrconfig.fieldbyname('utiliza_lancamento_caixa').asstring;
    utiliza_baixa_estoque := qrconfig.fieldbyname('utiliza_baixa_estoque').asstring;

    balanca_modelo := qrconfig.fieldbyname('balancapdv_modelo').asstring;
    balanca_porta := qrconfig.fieldbyname('BALCANCAPVD_PORTA').asstring;


    ecf_modelo := qrconfig.fieldbyname('ECF_MODELO').asstring;
    ecf_porta := qrconfig.fieldbyname('ECF_PORTA').asstring;


    // cupom vinculado
    ecf_cupom_vinculado := inttostr(qrconfigIMPRIME_CUPOM_VINCULADO.AsInteger);
    ecf_cupom_vinculado_produtos := inttostr(qrconfigIMPRIME_PRODUTOS_VINCULADOS.AsInteger);
    ecf_cupom_vinculado_carne := inttostr(qrconfigIMPRIME_COMPROVANTE_DEBITO.AsInteger);

    // libera cancelamentos de itens e cupom
    libera_cancelamanto := inttostr(qrconfigLIBERA_CANCELAMENTOS.AsInteger);

    impressora := qrconfig.fieldbyname('impressora_generica').asstring;
    VIAS := qrconfig.fieldbyname('impressora_generica_VIAS').asINTEGER;
    SUBIR_PAPEL := QRCONFIG.FIELDBYNAME('IMPRESSORA_GENERICA_SUBIR_PAPEL').ASINTEGER;



    qremitente.open;
        emitente_nome     := qremitente.fieldbyname('nome').asstring;
        emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
        emitente_endereco := qremitente.fieldbyname('endereco').asstring+' - '+qremitente.fieldbyname('bairro').asstring;
        emitente_cidade   := qremitente.fieldbyname('cidade').asstring+'/'+qremitente.fieldbyname('uf').asstring;
        emitente_cep      := qremitente.fieldbyname('cep').asstring;
        emitente_telefone := qremitente.fieldbyname('telefone').asstring;
        emitente_cnpj     := qremitente.fieldbyname('cnpj').asstring;
        emitente_ie       := qremitente.fieldbyname('ie').asstring;
        emitente_uf       := qremitente.fieldbyname('uf').asstring;


  if ecf_modelo = 'SWEDA' then
  begin
    arredonda := false;
  end
  else
  begin
    arredonda := true;
  end;



  closefile(txt);
  qrconfig_server.open;

end;

procedure Tfrmmodulo.qrMestreAfterPost(DataSet: TDataSet);
begin
  conexaomestre.Commit;
  qrMestre.Refresh;
end;

procedure Tfrmmodulo.qrvenda_contasreceberAfterPost(DataSet: TDataSet);
begin
  if lancando_contasreceber then
  begin

   frmvenda_contasreceber.rsoma.value :=
   frmvenda_contasreceber.rsoma.value +
   qrvenda_contasreceber.fieldbyname('valor').asfloat -
   valor_prestacao;

   frmvenda_contasreceber.rdiferenca.Value :=
   frmvenda_fechamento.rtotal.value - frmvenda_contasreceber.rsoma.value;

   if (frmvenda_contasreceber.rdiferenca.value < (0.009)) and (frmvenda_contasreceber.rdiferenca.value > (-0.009)) then
     frmvenda_contasreceber.rdiferenca.Value := 0;
  end;
end;

procedure Tfrmmodulo.qrvenda_contasreceberBeforeEdit(DataSet: TDataSet);
begin
  valor_prestacao := qrvenda_contasreceber.fieldbyname('valor').asfloat;
end;

procedure Tfrmmodulo.qrvenda_contasreceberBeforeInsert(DataSet: TDataSet);
begin
   valor_prestacao := 0;
end;

procedure Tfrmmodulo.qrprodutoAfterPost(DataSet: TDataSet);
begin
  conexaoproduto.Commit;
end;

procedure Tfrmmodulo.time_gpTimer(Sender: TObject);
begin
  tempo_gp := tempo_gp + 1;
end;

end.
