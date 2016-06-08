unit modulo;

interface

uses
  SysUtils, Classes, ZConnection, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, RpBase, RpSystem, RpDefine,
  RpRave, RpCon, RpConDS, RpRenderText, RpRenderRTF,
  RpRenderHTML, RpRender, RpRenderPDF, frxClass, frxDBSet, frxExportMail,
  frxExportText, frxExportImage, frxExportRTF, frxExportXLS, frxExportHTML,
  frxExportPDF, graphics, windows, messages, forms, IBCustomDataSet,
  IBQuery, IBDatabase, DBAccess, IBC, MemDS, ExtCtrls, dialogs,
  ZAbstractConnection, DBXpress, SqlExpr, xmldom, XMLIntf, msxmldom,
  XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient,
  IdHTTP;

type
  Tfrmmodulo = class(TDataModule)
    Conexao: TZConnection;
    qrLog: TZQuery;
    qrUsuario: TZQuery;
    qrconfig: TZQuery;
    qrFilial: TZQuery;
    qrcliente: TZQuery;
    qrclienteCODIGO: TStringField;
    qrclienteNOME: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TStringField;
    qrclienteTELEFONE2: TStringField;
    qrclienteTELEFONE3: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteEMAIL: TStringField;
    qrclienteRG: TStringField;
    qrclienteCPF: TStringField;
    qrclienteFILIACAO: TStringField;
    qrclienteESTADOCIVIL: TStringField;
    qrclienteCONJUGE: TStringField;
    qrclientePROFISSAO: TStringField;
    qrclienteEMPRESA: TStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TStringField;
    qrclienteREF2: TStringField;
    qrclienteCODVENDEDOR: TStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TStringField;
    qrclienteOBS2: TStringField;
    qrclienteOBS3: TStringField;
    qrclienteOBS4: TStringField;
    qrclienteOBS5: TStringField;
    qrclienteOBS6: TStringField;
    qrclienteNASCIMENTO: TStringField;
    qrregiao: TZQuery;
    qrfunci: TZQuery;
    qrclienteCODREGIAO: TStringField;
    qrclienteregiao: TStringField;
    qrclientevendedor: TStringField;
    qrfornecedor: TZQuery;
    qrtransportador: TZQuery;
    qrfunciCODIGO: TStringField;
    qrfunciNOME: TStringField;
    qrfunciENDERECO: TStringField;
    qrfunciBAIRRO: TStringField;
    qrfunciCIDADE: TStringField;
    qrfunciUF: TStringField;
    qrfunciCEP: TStringField;
    qrfunciTELEFONE: TStringField;
    qrfunciCELULAR: TStringField;
    qrfunciEMAIL: TStringField;
    qrfunciCPF: TStringField;
    qrfunciRG: TStringField;
    qrfunciCTPS: TStringField;
    qrfunciFUNCAO: TStringField;
    qrfunciDATA_ADMISSAO: TDateTimeField;
    qrfunciDATA_DEMISSAO: TDateTimeField;
    qrfunciSITUACAO: TIntegerField;
    qrfunciSALARIO: TFloatField;
    qrfunciCOMISSAO: TFloatField;
    qrfunciOBS1: TStringField;
    qrfunciOBS2: TStringField;
    qrfunciOBS3: TStringField;
    qrfunciNASCIMENTO: TDateTimeField;
    qrgrupo_servico: TZQuery;
    qrservico: TZQuery;
    qrservicoCODIGO: TStringField;
    qrservicoSERVICO: TStringField;
    qrservicoVALOR: TFloatField;
    qrservicoCODGRUPO: TStringField;
    qrservicoGRUPO: TStringField;
    qrbanco: TZQuery;
    qrformapgto: TZQuery;
    qrcondpgto: TZQuery;
    qrcondpgto_parcela: TZQuery;
    qrcondpgto_parcelaCODIGO: TStringField;
    qrcondpgto_parcelaCODCONDPGTO: TStringField;
    qrcondpgto_parcelaNUMERO: TIntegerField;
    qrcondpgto_parcelaDIAS: TIntegerField;
    qrcondpgto_parcelaPERCENTUAL: TFloatField;
    qrcondpgto_parcelaJUROS: TFloatField;
    qrgrupo: TZQuery;
    qrsubgrupo: TZQuery;
    qrmarca: TZQuery;
    qrgrade_subgrupo: TZQuery;
    qremitente: TZQuery;
    qraliquota: TZQuery;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrpreco: TZQuery;
    qrprecoCODIGO: TStringField;
    qrprecoCODPRODUTO: TStringField;
    qrprecoCUSTO_COMPRA: TFloatField;
    qrprecoVALOR_ULTIMA_COMPRA: TFloatField;
    qrprecoFRETE_IPI_OUTRAS: TFloatField;
    qrprecoICMS_ENTRADA: TFloatField;
    qrprecoICMS_SAIDA: TFloatField;
    qrprecoCUSTO_OPERACIONAL: TFloatField;
    qrprecoOUTROS_IMPOSTOS: TFloatField;
    qrprecoCOMISSAO: TFloatField;
    qrprecoLUCRO: TFloatField;
    qrprecoPRECO_VENDA: TFloatField;
    qrprecoICMS_ENTRADA_P: TFloatField;
    qrprecoICMS_SAIDA_P: TFloatField;
    qrprecoCUSTO_OPERACIONAL_P: TFloatField;
    qrprecoOUTROS_IMPOSTOS_P: TFloatField;
    qrprecoCOMISSAO_P: TFloatField;
    qrprecoLUCRO_P: TFloatField;
    qrprecoTOTAL_CUSTO: TFloatField;
    qrprecoTOTAL_CUSTO_P: TFloatField;
    qrgrade_produto: TZQuery;
    qrserial_produto: TZQuery;
    qrserial_produtoCODIGO: TStringField;
    qrserial_produtoCODPRODUTO: TStringField;
    qrserial_produtoSERIAL: TStringField;
    qrserial_produtoESTOQUE: TFloatField;
    qrserial_produtoCODCLIENTE: TStringField;
    qrserial_produtoPRECOCUSTO: TFloatField;
    qrserial_produtoPRECOVENDA: TFloatField;
    qrserial_produtoDATAVENDA: TDateTimeField;
    qrserial_produtoSITUACAO: TIntegerField;
    qrserial_produtoCLIENTE: TStringField;
    qrserial_produtoCODNOTA: TStringField;
    qrreceita: TZQuery;
    qrprodutoreceita: TStringField;
    qrprodutoCODRECEITA: TStringField;
    qrcomposicao_produto: TZQuery;
    qrinfnutricional_produto: TZQuery;
    qrprodutoFOTO: TStringField;
    qrCFOP: TZQuery;
    qrentrada_produto: TZQuery;
    qrentrada_produtoCODIGO: TStringField;
    qrentrada_produtoNUMERO: TStringField;
    qrentrada_produtoCFOP: TStringField;
    qrentrada_produtoDATA: TDateTimeField;
    qrentrada_produtoCODFORNECEDOR: TStringField;
    qrentrada_produtoVALOR_PRODUTOS: TFloatField;
    qrentrada_produtoTOTAL_NOTA: TFloatField;
    qrentrada_produtoBASE_CALCULO: TFloatField;
    qrentrada_produtoVALOR_ICMS: TFloatField;
    qrentrada_produtoBASE_SUB: TFloatField;
    qrentrada_produtoICMS_SUB: TFloatField;
    qrentrada_produtoFRETE: TFloatField;
    qrentrada_produtoSEGURO: TFloatField;
    qrentrada_produtoOUTRAS_DESPESAS: TFloatField;
    qrentrada_produtoVALOR_TOTAL_IPI: TFloatField;
    qrentrada_produtoITENS: TIntegerField;
    qrentrada_produtoDESCONTO: TFloatField;
    qrentrada_produtonatureza: TStringField;
    qrentrada_produtofornecedor: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrgrade_produtoCODIGO: TStringField;
    qrgrade_produtoCODPRODUTO: TStringField;
    qrgrade_produtoNUMERACAO: TStringField;
    qrgrade_produtoCODBARRA: TStringField;
    qrgrade_produtoESTOQUE: TFloatField;
    qrgrade_produtoCOR: TStringField;
    qrserial_produtoCODITEM: TStringField;
    qrproduto_mov: TZQuery;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrserial_produtoDATACOMPRA: TDateTimeField;
    qrserial_produtoNUMERONOTA: TStringField;
    qrserial_produtoCODFORNECEDOR: TStringField;
    qragenda: TZQuery;
    qrplano: TZQuery;
    qrplanoCODIGO: TStringField;
    qrplanoCONTA: TStringField;
    qrplanoTIPO: TIntegerField;
    qrplanoENTRADA: TFloatField;
    qrplanoSAIDA: TFloatField;
    qrplanoSALDO: TFloatField;
    qrplanoFILTRO: TIntegerField;
    qrsaida_produto: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    DateTimeField1: TDateTimeField;
    StringField4: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    IntegerField1: TIntegerField;
    FloatField11: TFloatField;
    StringField5: TStringField;
    StringField6: TStringField;
    qrpedido_produto: TZQuery;
    StringField12: TStringField;
    qrpedido_produtoCODIGO: TStringField;
    qrpedido_produtoNUMERO: TStringField;
    qrpedido_produtoCFOP: TStringField;
    qrpedido_produtoDATA: TDateTimeField;
    qrpedido_produtoCODFORNECEDOR: TStringField;
    qrpedido_produtoTOTAL_NOTA: TFloatField;
    qrpedido_produtoITENS: TIntegerField;
    qrpedido_produtoSITUACAO: TIntegerField;
    qrpedido_produtoPREVISAO: TDateTimeField;
    qrpedido_produtoCONDPGTO: TStringField;
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
    qrcontacorrente: TZQuery;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrcontacorrentebanco: TStringField;
    qrlancamento_conta: TZQuery;
    qrchequeCODCONTA_CORRENTE: TStringField;
    qrlancamento_contaCODIGO: TStringField;
    qrlancamento_contaCODCONTACORRENTE: TStringField;
    qrlancamento_contaDATA: TDateTimeField;
    qrlancamento_contaHISTORICO: TStringField;
    qrlancamento_contaCODCONTA: TStringField;
    qrlancamento_contaVALOR: TFloatField;
    qrlancamento_contaTIPO: TStringField;
    qrlancamento_contaDOCUMENTO: TStringField;
    qrchequeCODCONTA: TStringField;
    qrcaixa_operador: TZQuery;
    qrcaixa_operadorCODIGO: TStringField;
    qrcaixa_operadorCODFUNCIONARIO: TStringField;
    qrcaixa_operadorSITUACAO: TIntegerField;
    qrcaixa_operadornome: TStringField;
    qrcaixa_operadorDATA: TDateTimeField;
    qrcaixa_operadorSALDO: TFloatField;
    qrcaixa_mov: TZQuery;
    qrcaixa_movCODOPERADOR: TStringField;
    qrcaixa_movDESCRICAO_MOVIMENTO: TStringField;
    qrcaixa_movHISTORICO: TStringField;
    qrcaixa_movVALOR: TFloatField;
    qrcaixa_movENTRADA: TFloatField;
    qrcaixa_movSAIDA: TFloatField;
    qrcaixa_movCODCAIXA: TStringField;
    qrcaixa_movCODIGO: TStringField;
    qrcaixa_movDATA: TDateTimeField;
    qrcaixa_movCODCONTA: TStringField;
    qrcaixa_movMOVIMENTO: TIntegerField;
    qrcaixa_movCONTA: TStringField;
    ConexaoLocal: TZConnection;
    qrcondpgtoCODIGO: TStringField;
    qrcondpgtoCONDPGTO: TStringField;
    qrcondpgtoPARCELAS: TIntegerField;
    qrvenda: TZQuery;
    qrvendaCODIGO: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaDATA: TDateTimeField;
    qrvendaCODCLIENTE: TStringField;
    qrvendaOBS: TStringField;
    qrvendacliente: TStringField;
    qrvendavendedor: TStringField;
    qrcontasreceber: TZQuery;
    qrcontasreceber_pgto: TZQuery;
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
    qrformapgtoCODIGO: TStringField;
    qrformapgtoFORMAPGTO: TStringField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movSERIAL: TStringField;
    qrserial_produtoCODVENDA_ITEM: TStringField;
    qrserial_produtoFILTRO: TIntegerField;
    qrserial_produtoCODVENDA: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qros: TZQuery;
    qrosCODIGO: TStringField;
    qrosDATA: TDateTimeField;
    qrosTIPO: TStringField;
    qrosCODCLIENTE: TStringField;
    qrosSOLICITANTE: TStringField;
    qrosMARCA: TStringField;
    qrosMODELO: TStringField;
    qrosSERIAL: TStringField;
    qrosATENDIMENTO: TStringField;
    qrosDEFEITO: TBlobField;
    qrosOBS: TBlobField;
    qrosDETECTADO: TBlobField;
    qrosDETECTADO_DATA: TDateTimeField;
    qrosDETECTADO_CODTECNICO: TStringField;
    qrosSITUACAO: TStringField;
    qrosCONCLUSAO_DATA: TDateTimeField;
    qrosCONCLUSAO_ENTREGUE: TDateTimeField;
    qrosRETIRADO_POR: TStringField;
    qrosSERVICO_SUBTOTAL: TFloatField;
    qrosSERVICO_DESCONTO: TFloatField;
    qrosSERVICO_TOTAL: TFloatField;
    qrosPRODUTO_SUBTOTAL: TFloatField;
    qrosPRODUTO_DESCONTO: TFloatField;
    qrosPRODUTO_TOTAL: TFloatField;
    qrosCODVEICULO: TStringField;
    qrosKM_INICIAL: TIntegerField;
    qrosKM_FINAL: TIntegerField;
    qrosDESLOC_COMBUSTIVEL: TFloatField;
    qrosDESLOC_REFEICAO: TFloatField;
    qrosDESLOC_HOSPEDAGEM: TFloatField;
    qrosDESLOC_TOTAL: TFloatField;
    qrosCODTERCEIRO: TStringField;
    qrosTERCEIRO_CONTATO: TStringField;
    qrosTERCEIRO_VALOR: TFloatField;
    qrosTERCEIRO_COMISSAO: TFloatField;
    qrosTERCEIRO_TOTAL: TFloatField;
    qrosTERCEIRO_OBS: TBlobField;
    qrosSUBTOTAL: TFloatField;
    qrosDESCONTO: TFloatField;
    qrosACRESCIMO: TFloatField;
    qrosTOTAL: TFloatField;
    qrosMEIO_DINHEIRO: TFloatField;
    qrosMEIO_CHEQUEAV: TFloatField;
    qrosMEIO_CHEQUEAP: TFloatField;
    qrosMEIO_CARTAOCRED: TFloatField;
    qrosMEIO_CARTAODEB: TFloatField;
    qrosMEIO_CREDIARIO: TFloatField;
    qrosatendente: TStringField;
    qroscliente: TStringField;
    qrosdetectado_tecnico: TStringField;
    qrsetor: TZQuery;
    qrosCODSETOR: TStringField;
    qrossetor: TStringField;
    qrosCUPOMFISCAL: TIntegerField;
    qrosST: TIntegerField;
    qrveiculo: TZQuery;
    qrveiculoCODIGO: TStringField;
    qrveiculoNOME: TStringField;
    qrveiculoANO: TStringField;
    qrveiculoCOMBUSTIVEL: TStringField;
    qrveiculoPLACA: TStringField;
    qrveiculoUFPLACA: TStringField;
    qrveiculoCOR: TStringField;
    qrveiculoOBS1: TStringField;
    qrveiculoOBS2: TStringField;
    qrveiculoOBS3: TStringField;
    qrosveiculo: TStringField;
    qrosterceiro: TStringField;
    relatorio: TRvProject;
    rel_system: TRvSystem;
    qrosCODATENDENTE: TStringField;
    qrproduto_movQTDE: TFloatField;
    rvemitente: TRvDataSetConnection;
    rvOS: TRvDataSetConnection;
    qroscliente_endereco: TStringField;
    qroscliente_bairro: TStringField;
    qroscliente_cidade: TStringField;
    qroscliente_uf: TStringField;
    qroscliente_cpf: TStringField;
    qroscliente_rg: TStringField;
    qroscliente_cep: TStringField;
    qroscliente_telefone: TStringField;
    qrorcamento: TZQuery;
    qrorcamentoCODIGO: TStringField;
    qrorcamentoDATA: TDateTimeField;
    qrorcamentoCODCLIENTE: TStringField;
    qrorcamentoCODVENDEDOR: TStringField;
    qrorcamentoSUBTOTAL: TFloatField;
    qrorcamentoDESCONTO: TFloatField;
    qrorcamentoACRESCIMO: TFloatField;
    qrorcamentoTOTAL: TFloatField;
    qrorcamentoOBS1: TStringField;
    qrorcamentoOBS2: TStringField;
    qrorcamentoOBS3: TStringField;
    qrorcamentoOBS4: TStringField;
    qrorcamentocliente: TStringField;
    qrorcamentovendedor: TStringField;
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    qrrelatorio: TZQuery;
    dsrelatorio: TRvDataSetConnection;
    qrnotafiscal: TZQuery;
    qrnotafiscalCODIGO: TStringField;
    qrnotafiscalNUMERO: TStringField;
    qrnotafiscalCFOP: TStringField;
    qrnotafiscalDATA: TDateTimeField;
    qrnotafiscalCODCLIENTE: TStringField;
    qrnotafiscalVALOR_PRODUTOS: TFloatField;
    qrnotafiscalTOTAL_NOTA: TFloatField;
    qrnotafiscalBASE_CALCULO: TFloatField;
    qrnotafiscalVALOR_ICMS: TFloatField;
    qrnotafiscalBASE_SUB: TFloatField;
    qrnotafiscalICMS_SUB: TFloatField;
    qrnotafiscalFRETE: TFloatField;
    qrnotafiscalSEGURO: TFloatField;
    qrnotafiscalOUTRAS_DESPESAS: TFloatField;
    qrnotafiscalVALOR_TOTAL_IPI: TFloatField;
    qrnotafiscalITENS: TIntegerField;
    qrnotafiscalDESCONTO: TFloatField;
    qrnotafiscalCODTRANSPORTADOR: TStringField;
    qrnotafiscalFRETE_CONTA: TIntegerField;
    qrnotafiscalPLACA: TStringField;
    qrnotafiscalPLACA_UF: TStringField;
    qrnotafiscalVOL_QTDE: TFloatField;
    qrnotafiscalVOL_ESPECIE: TStringField;
    qrnotafiscalVOL_MARCA: TStringField;
    qrnotafiscalVOL_NUMERO: TStringField;
    qrnotafiscalPESO_LIQUIDO: TFloatField;
    qrnotafiscalPESO_BRUTO: TFloatField;
    qrnotafiscalSITUACAO: TIntegerField;
    qrnotafiscalMOTIVO: TStringField;
    qrnotafiscalFATURAMENTO_DATA1: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA2: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA3: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA4: TDateTimeField;
    qrnotafiscalFATURAMENTO_NUMERO1: TStringField;
    qrnotafiscalFATURAMENTO_NUMERO2: TStringField;
    qrnotafiscalFATURAMENTO_NUMERO3: TStringField;
    qrnotafiscalFATURAMENTO_NUMERO4: TStringField;
    qrnotafiscalFATURAMENTO_VALOR1: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR2: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR3: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR4: TFloatField;
    qrnotafiscalCODFILIAL: TStringField;
    qrnotafiscalfilial: TStringField;
    qrnotafiscalcliente: TStringField;
    qrnotafiscalnatureza: TStringField;
    qrnotafiscalOBS1: TStringField;
    qrnotafiscalOBS2: TStringField;
    qrnotafiscalOBS3: TStringField;
    qrnotafiscalINF1: TStringField;
    qrnotafiscalINF2: TStringField;
    qrnotafiscalINF3: TStringField;
    qrnotafiscalINF4: TStringField;
    qrnotafiscalINF5: TStringField;
    qrnotafiscalTRANSPORTADOR: TStringField;
    qrnotafiscalDATA_SAIDA: TDateTimeField;
    qrnotafiscalHORA: TStringField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrcliente_veiculo: TZQuery;
    qrcliente_veiculoCODIGO: TStringField;
    qrcliente_veiculoCODCLIENTE: TStringField;
    qrcliente_veiculoVEICULO: TStringField;
    qrcliente_veiculoPLACA: TStringField;
    qrcliente_veiculoUF: TStringField;
    qrcliente_veiculoANO: TStringField;
    qrcliente_veiculoCOMBUSTIVEL: TStringField;
    qrcliente_veiculoRENAVAM: TStringField;
    qrcliente_veiculoDATA: TDateTimeField;
    qrcliente_veiculoOBS1: TStringField;
    qrcliente_veiculoOBS2: TStringField;
    qrcliente_veiculoOBS3: TStringField;
    qrcliente_veiculoCLIENTE: TStringField;
    qrosCHASSI: TStringField;
    qrosCOR: TStringField;
    qrcliente_veiculoCOR: TStringField;
    qrcliente_veiculoCHASSI: TStringField;
    qrosCOMBUSTIVEL: TStringField;
    qrosCOMBUSTIVEL_NIVEL: TFloatField;
    qrosNUMERO_CUPOM_FISCAL: TIntegerField;
    qrosCODCAIXA: TStringField;
    qrconfig_cobrebem: TZQuery;
    qrconfig_cobrebemCODIGO: TStringField;
    qrconfig_cobrebemDESCRICAO: TStringField;
    qrconfig_cobrebemCODCONTA: TStringField;
    qrconfig_cobrebemCODIGO_CEDENTE: TStringField;
    qrconfig_cobrebemARQUIVO_CONFIGURACAO: TStringField;
    qrconfig_cobrebemARQUIVO_LOGOMARCA: TStringField;
    qrconfig_cobrebemTIPO_BOLETO: TStringField;
    qrconfig_cobrebemNOSSONUMERO_INICIO: TStringField;
    qrconfig_cobrebemNOSSONUMERO_FIM: TStringField;
    qrconfig_cobrebemNOSSONUMERO_PROXIMO: TStringField;
    qrconfig_cobrebemVARIACAO_MODALIDADE: TStringField;
    qrconfig_cobrebemMARGEM_SUPERIOR: TStringField;
    qrconfig_cobrebemREMESSA_UTILIZA: TIntegerField;
    qrconfig_cobrebemRETORNO_UTILIZA: TIntegerField;
    qrconfig_cobrebemREMESSA_LOCAL: TStringField;
    qrconfig_cobrebemRETORNO_LOCAL: TStringField;
    qrconfig_cobrebemINSTRUCOES_1: TStringField;
    qrconfig_cobrebemINSTRUCOES_2: TStringField;
    qrconfig_cobrebemINSTRUCOES_3: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_1: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_2: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_3: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_4: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_5: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_6: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_7: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_8: TStringField;
    qrconfig_cobrebemDEMONSTRATIVO_TIPO: TIntegerField;
    qrconfig_cobrebemcodigo_banco: TStringField;
    qrconfig_cobrebembanco: TStringField;
    qrconfig_cobrebemagencia: TStringField;
    qrconfig_cobrebemtitular: TStringField;
    qrconfig_cobrebemLIN_VENCIMENTO: TIntegerField;
    qrconfig_cobrebemCOL_VENCIMENTO: TIntegerField;
    qrconfig_cobrebemLIN_DATADOC: TIntegerField;
    qrconfig_cobrebemCOL_DATADOC: TIntegerField;
    qrconfig_cobrebemLIN_NUMERO: TIntegerField;
    qrconfig_cobrebemCOL_NUMERO: TIntegerField;
    qrconfig_cobrebemLIN_ESPDOC: TIntegerField;
    qrconfig_cobrebemCOL_ESPDOC: TIntegerField;
    qrconfig_cobrebemLIN_ACEITE: TIntegerField;
    qrconfig_cobrebemCOL_ACEITE: TIntegerField;
    qrconfig_cobrebemLIN_ESP: TIntegerField;
    qrconfig_cobrebemCOL_ESP: TIntegerField;
    qrconfig_cobrebemLIN_QTDE: TIntegerField;
    qrconfig_cobrebemCOL_QTDE: TIntegerField;
    qrconfig_cobrebemLIN_VALOR: TIntegerField;
    qrconfig_cobrebemCOL_VALOR: TIntegerField;
    qrconfig_cobrebemLIN_VALORDOC: TIntegerField;
    qrconfig_cobrebemCOL_VALORDOC: TIntegerField;
    qrconfig_cobrebemLIN_DESCONTO: TIntegerField;
    qrconfig_cobrebemCOL_DESCONTO: TIntegerField;
    qrconfig_cobrebemLIN_OUTRAS: TIntegerField;
    qrconfig_cobrebemCOL_OUTRAS: TIntegerField;
    qrconfig_cobrebemLIN_MORA: TIntegerField;
    qrconfig_cobrebemCOL_MORA: TIntegerField;
    qrconfig_cobrebemLIN_OUTROS: TIntegerField;
    qrconfig_cobrebemCOL_OUTROS: TIntegerField;
    qrconfig_cobrebemLIN_COBRADO: TIntegerField;
    qrconfig_cobrebemCOL_COBRADO: TIntegerField;
    qrconfig_cobrebemLIN_CEDENTE: TIntegerField;
    qrconfig_cobrebemCOL_CEDENTE: TIntegerField;
    qrconfig_cobrebemLIN_CEDENTEENDER: TIntegerField;
    qrconfig_cobrebemCOL_CEDENTEENDER: TIntegerField;
    qrconfig_cobrebemCOL_INSTRUCOES: TIntegerField;
    qrconfig_cobrebemLIN_INST1: TIntegerField;
    qrconfig_cobrebemLIN_INST2: TIntegerField;
    qrconfig_cobrebemLIN_INST3: TIntegerField;
    qrconfig_cobrebemLIN_INST4: TIntegerField;
    qrconfig_cobrebemLIN_INST5: TIntegerField;
    qrconfig_cobrebemLIN_INST6: TIntegerField;
    qrconfig_cobrebemTIPO: TStringField;
    qrboleto_impressao: TZQuery;
    qrconfig_cobrebemREMESSA_SEQUENCIA: TIntegerField;
    qrconfig_cobrebemREMESSA_LAYOUT: TStringField;
    qrconfig_cobrebemRETORNO_LAYOUT: TStringField;
    qrconfig_cobrebemENTRE_LINHAS: TIntegerField;
    qrconfig_cobrebemACERTO_ENTRE_LINHAS: TIntegerField;
    qrnotafiscalSITUACAO_A: TStringField;
    qrnotafiscalMODELO_NF: TStringField;
    qrnotafiscalSERIE_NF: TStringField;
    qrnotafiscalVALOR_ISENTO_ICMS: TFloatField;
    qrnotafiscalALIQUOTA_ICMS: TFloatField;
    qrentrada_produtoMODELO: TStringField;
    qrentrada_produtoSERIE: TStringField;
    qrentrada_produtoALIQUOTA: TFloatField;
    qrentrada_produtoSITUACAO: TIntegerField;
    qrentrada_produtoMODELO_NF: TStringField;
    qrentrada_produtoSERIE_NF: TStringField;
    qrentrada_produtoVALOR_ISENTO_ICMS: TFloatField;
    qrentrada_produtoALIQUOTA_ICMS: TFloatField;
    qrentrada_produtoSITUACAO_A: TStringField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrosDETECTADO_HORA: TStringField;
    qrosHORA: TStringField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrcaixa_operadorSENHA: TStringField;
    qrconhecimento: TZQuery;
    qrconhecimentoCODIGO: TStringField;
    qrconhecimentoNUMERO: TStringField;
    qrconhecimentoDATA: TDateTimeField;
    qrconhecimentoCFOP: TStringField;
    qrconhecimentoCODREMETENTE: TStringField;
    qrconhecimentoCODDESTINATARIO: TStringField;
    qrconhecimentoSITUACAO: TIntegerField;
    qrconhecimentoTIPO: TStringField;
    qrconhecimentoCONSIG_NOME: TStringField;
    qrconhecimentoCONSIG_ENDERECO: TStringField;
    qrconhecimentoCONSIG_CIDADE: TStringField;
    qrconhecimentoCONSIG_UF: TStringField;
    qrconhecimentoCONSIG_TIPO: TStringField;
    qrconhecimentoCONSIG_CALCULADO: TStringField;
    qrconhecimentoREDE_NOME: TStringField;
    qrconhecimentoREDE_ENDERECO: TStringField;
    qrconhecimentoREDE_CIDADE: TStringField;
    qrconhecimentoREDE_UF: TStringField;
    qrconhecimentoREDE_TIPO: TStringField;
    qrconhecimentoREDE_CNPJ: TStringField;
    qrconhecimentoCARGA_NATUREZA: TStringField;
    qrconhecimentoCARGA_NF: TStringField;
    qrconhecimentoCARGA_VALOR: TFloatField;
    qrconhecimentoCARGA_QTDE: TFloatField;
    qrconhecimentoCARGA_VOL_QTDE: TFloatField;
    qrconhecimentoCARGA_MARCA1: TStringField;
    qrconhecimentoCARGA_MARCA2: TStringField;
    qrconhecimentoFRETE_PESO: TFloatField;
    qrconhecimentoFRETE_VALOR: TFloatField;
    qrconhecimentoFRETE_ADICIONAL: TFloatField;
    qrconhecimentoFRETE_SEGURO: TFloatField;
    qrconhecimentoFRETE_DESPACHO: TFloatField;
    qrconhecimentoFRETE_OUTROS: TFloatField;
    qrconhecimentoFRETE_TOTAL: TFloatField;
    qrconhecimentoFRETE_TARIFA: TFloatField;
    qrconhecimentoFRETE_BASE: TFloatField;
    qrconhecimentoFRETE_ALIQUOTA: TIntegerField;
    qrconhecimentoFRETE_ICMS: TFloatField;
    qrconhecimentoFRETE_PRONT: TStringField;
    qrconhecimentoFRETE_APOLICE: TStringField;
    qrconhecimentoFRETE_CIA: TStringField;
    qrconhecimentoCODVEICULO: TStringField;
    qrconhecimentoCODTRANSPORTADOR: TStringField;
    qrconhecimentoOBS: TBlobField;
    qrconhecimentoCARGA_VOL_ESPECIE: TStringField;
    qrconhecimentoremetente: TStringField;
    qrconhecimentodestinatario: TStringField;
    qrconhecimentonatureza: TStringField;
    qrconhecimentotransportador: TStringField;
    qrconhecimentoveiculo: TStringField;
    qrconhecimentoCODFILIAL: TStringField;
    qrconhecimentofilial: TStringField;
    qrconhecimentoLOCAL: TStringField;
    qrconhecimentoFRETE_CARREGAR: TStringField;
    qrconhecimentoFRETE_DESCARREGAR: TStringField;
    qrconhecimentoMOTIVO: TStringField;
    qrconhecimentoVEICULO_LOCAL: TStringField;
    qrconhecimentoVEICULO_UF: TStringField;
    qrconhecimentodest_endereco: TStringField;
    qrconhecimentodest_cidade: TStringField;
    qrconhecimentodest_cep: TStringField;
    qrconhecimentodest_uf: TStringField;
    qrconhecimentodest_cnpj: TStringField;
    qrconhecimentodest_ie: TStringField;
    qrconhecimentorem_endereco: TStringField;
    qrconhecimentorem_cidade: TStringField;
    qrconhecimentorem_cep: TStringField;
    qrconhecimentorem_uf: TStringField;
    qrconhecimentorem_cnpj: TStringField;
    qrconhecimentorem_ie: TStringField;
    qrconhecimentoveiculo_placa: TStringField;
    qrconhecimentotransp_rg: TStringField;
    qrconhecimentotransp_cpf: TStringField;
    qrveiculoCIDADE: TStringField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
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
    qrcaixa_operadorSITUACAO_ATUAL: TStringField;
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
    qrconfigBOLETO_FORMAPGTO: TStringField;
    qrconfigEXTRATO_TIPONOTA: TIntegerField;
    qrconfigBOBINA_SUBIRPAPEL: TIntegerField;
    qrconfigPLANO_VENDA_AV: TStringField;
    qrconfigPLANO_VENDA_AP: TStringField;
    qrconfigPLANO_OS_AV: TStringField;
    qrconfigPLANO_OS_AP: TStringField;
    qrconfigPLANO_OUTRAS_ENTRADAS: TStringField;
    qrconfigPLANO_RECEBTO_CREDIARIO: TStringField;
    qrconfigPLANO_OUTRAS_SAIDAS: TStringField;
    qrplanoCLASSIFICACAO: TStringField;
    qrconfigPLANO_CONTA20: TStringField;
    qrconfigPLANO_CONTA30: TStringField;
    qrconfigPLANO_CONTA40: TStringField;
    qrconfigPLANO_CONTA50: TStringField;
    qrconfigPLANO_CONTA60: TStringField;
    qrconfigPLANO_CONTA70: TStringField;
    qrconfigPLANO_CONTA10: TStringField;
    qrconfigPLANO_CONTA1: TStringField;
    qrconfigPLANO_CONTA2: TStringField;
    qrconfigPLANO_CONTA3: TStringField;
    qrconfigPLANO_CONTA4: TStringField;
    qrconfigPLANO_CONTA5: TStringField;
    qrconfigPLANO_CONTA6: TStringField;
    qrconfigPLANO_CONTA7: TStringField;
    qrplanoCODGRUPO: TStringField;
    qrplano2: TZQuery;
    qrplanogrupo: TStringField;
    qrplanoNIVEL: TIntegerField;
    qrosINTERVENCOES: TBlobField;
    qrconfigNF_ITENS_PAGINA: TIntegerField;
    qrconfigNF_LINHA_TRANSPORTE: TIntegerField;
    qrconfigNF_SALTO_PAGINA: TIntegerField;
    qrconfigNF_TIPO: TIntegerField;
    qrconfigNF_IMPRESSORA: TStringField;
    qrnotafiscaltransp_endereco: TStringField;
    qrnotafiscaltransp_cidade: TStringField;
    qrnotafiscaltransp_uf: TStringField;
    qrnotafiscaltransp_cpf: TStringField;
    qrnotafiscaltransp_rg: TStringField;
    qrguard: TZQuery;
    qrguardCODIGO: TStringField;
    qrguardSITUACAO: TStringField;
    qrconfigVENDA_FECHAMENTO_CAIXA: TIntegerField;
    qrconvenio: TZQuery;
    qrvendaRETIRADO: TStringField;
    qrusuario_funcao: TZQuery;
    qrusuario_funcaoFUNCAO: TStringField;
    qrusuario_funcaoACESSO: TStringField;
    qrusuario_funcaoCODUSUARIO: TStringField;
    qrclienteCODCONVENIO: TStringField;
    qrclienteconvenio: TStringField;
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
    qrclienteCODUSUARIO: TStringField;
    qrclienteUSUARIO: TStringField;
    qrecf_item: TZQuery;
    qrecf_comando: TZQuery;
    conexao_ecfserver: TZConnection;
    qrconfigCLASSIFICACAO: TStringField;
    qrconfigNF_ITENS_TRANSPORTE: TIntegerField;
    qrconfigDESCONTO_AVISTA: TFloatField;
    qrconfigDESCONTO_PRODUTO: TFloatField;
    qrconfigDESCONTO_TOTALNOTA: TFloatField;
    qrconfigTIPO_VENDA: TStringField;
    qrprodutoCODALIQUOTA: TStringField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TStringField;
    qrproduto_movECF_CAIXA: TStringField;
    qrproduto_movCODALIQUOTA: TStringField;
    qrproduto_movCUPOM_NUMERO: TStringField;
    qrproduto_movCUPOM_MODELO: TStringField;
    qrproduto_movCUPOM_ITEM: TStringField;
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
    qrfiscal_cst: TZQuery;
    qrfiscal_modelo: TZQuery;
    qrfiscal_ecf: TZQuery;
    qrfiscal_classe: TZQuery;
    qrfiscal_classe_pis: TZQuery;
    qrfiscal_classe_cofins: TZQuery;
    qrfiscal_classe_csll: TZQuery;
    qrfiscal_classe_irrf: TZQuery;
    qrfiscal_classeCODIGO: TStringField;
    qrfiscal_classeCLASSE: TStringField;
    qrfiscal_classe_pisCODIGO: TStringField;
    qrfiscal_classe_pisCODCLASSE: TStringField;
    qrfiscal_classe_pisALIQUOTA_PIS: TFloatField;
    qrfiscal_classe_pisVALIDADE_PIS: TDateTimeField;
    qrfiscal_classe_cofinsCODIGO: TStringField;
    qrfiscal_classe_cofinsCODCLASSE: TStringField;
    qrfiscal_classe_cofinsALIQUOTA_COFINS: TFloatField;
    qrfiscal_classe_cofinsVALIDADE_COFINS: TDateTimeField;
    qrfiscal_classe_csllCODIGO: TStringField;
    qrfiscal_classe_csllCODCLASSE: TStringField;
    qrfiscal_classe_csllALIQUOTA_CSLL: TFloatField;
    qrfiscal_classe_csllVALIDADE_CSLL: TDateTimeField;
    qrfiscal_classe_irrfCODIGO: TStringField;
    qrfiscal_classe_irrfCODCLASSE: TStringField;
    qrfiscal_classe_irrfALIQUOTA_IRRF: TFloatField;
    qrfiscal_classe_irrfVALIDADE_IRRF: TDateTimeField;
    qrnota: TZQuery;
    qrnotaTIPO: TStringField;
    qrnotaNOTAFISCAL: TStringField;
    qrnotaSERIE: TStringField;
    qrnotaSUBSERIE: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaCPF_CLIENTE: TStringField;
    qrnotaCNPJ_CLIENTE: TStringField;
    qrnotaIE_CLIENTE: TStringField;
    qrnotaUF_IE_CLIENTE: TStringField;
    qrnotaTIPO_VENDA: TStringField;
    qrnotaTIPO_FRETE: TStringField;
    qrnotaDATA: TDateTimeField;
    qrnotaDATA_ESCRITURACAO: TDateTimeField;
    qrnotaCODIGO_CONTABIL: TIntegerField;
    qrnotaDESDOBRAMENTO: TStringField;
    qrnotaVALOR_CONTABIL: TFloatField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaCONDPGTO: TStringField;
    qrnotaCONDICAO_PAGAMENTO: TStringField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS_CREDITADO: TFloatField;
    qrnotaVALOR_ICMS_ISENTAS: TFloatField;
    qrnotaVALOR_ICMS_OUTRAS: TFloatField;
    qrnotaALIQUOTA_IPI: TFloatField;
    qrnotaBASE_IPI: TFloatField;
    qrnotaVALOR_IPI_CREDITADO: TFloatField;
    qrnotaVALOR_IPI_CREDITADO50: TFloatField;
    qrnotaVALOR_IPI_ISENTAS: TFloatField;
    qrnotaVALOR_IPI_OUTRAS: TFloatField;
    qrnotaBASE_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_FRETE: TFloatField;
    qrnotaVALOR_SEGURO: TFloatField;
    qrnotaVALOR_DESPESAS: TFloatField;
    qrnotaALIQUOTA_ISS: TFloatField;
    qrnotaVALOR_ISS: TFloatField;
    qrnotaOBS3: TStringField;
    qrnotaCONTABIL: TIntegerField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaCODIGO_MINICIPIO: TIntegerField;
    qrnotaCNPJ: TStringField;
    qrnotaINSC_ESTADUAL: TStringField;
    qrnotaUF: TStringField;
    qrnotaCODIGO_PISCONFINS: TStringField;
    qrnotaNOTA_CANCELADA: TStringField;
    qrnotaSINTEGRA: TStringField;
    qrnotaCODIGO_EMPRESA: TIntegerField;
    qrnotaCODIGO_CLIENTE: TIntegerField;
    qrnotaCODEMPRESA: TIntegerField;
    qrnotaOBSERVACAO: TBlobField;
    qrnotaTURBO: TIntegerField;
    qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField;
    qrnotaCFOP: TStringField;
    qrnotaS_TRIB: TStringField;
    qrnotaTRANSPORTE_NOME: TStringField;
    qrnotaTRANSPORTE_PLACA: TStringField;
    qrnotaTRANSPORTE_UF: TStringField;
    qrnotaTRANSPORTE_CNPJCPF: TStringField;
    qrnotaTRANSPORTE_ENDERECO: TStringField;
    qrnotaTRANSPORTE_CIDADE: TStringField;
    qrnotaTRANSPORTE_MUNICIPIO_UF: TStringField;
    qrnotaTRANSPORTE_MARCA: TStringField;
    qrnotaTRANSPORTE_ESPECIE: TStringField;
    qrnotaTRANSPORTE_NUMERO: TStringField;
    qritem: TZQuery;
    qritemmodelo_nf: TStringField;
    qritemdatahora_ini: TDateField;
    qritemnotafiscal: TStringField;
    qritemcd_produto: TStringField;
    qritemquantidade: TFloatField;
    qritemproduto: TStringField;
    qritemsubtotal: TFloatField;
    qritemvalor_venda_bruta: TFloatField;
    qritemvalor_total_geral: TFloatField;
    qritemDATA_EMISSAO: TStringField;
    qritemtotal: TFloatField;
    qritembase_calculo: TFloatField;
    qritembase_icms: TFloatField;
    qritemvalor_icms: TFloatField;
    qritemmovimento: TIntegerField;
    qritemcod_pedidos: TStringField;
    qritemnum_item: TStringField;
    qritemcl_fis: TStringField;
    qritemapr_und: TStringField;
    qritemaliquota_ipi: TFloatField;
    qritemaliquota_icms: TFloatField;
    qritemreducao_base_icms: TFloatField;
    qritembase_icms_subst: TFloatField;
    qritemdatahora: TDateTimeField;
    qritemvalor_desconto: TFloatField;
    qritemTIPO: TStringField;
    qritembase_ipi: TFloatField;
    qritemvalor_ipi: TFloatField;
    qritemcfop: TStringField;
    qritemoutras_ipi: TFloatField;
    qritemisentas_ipi: TFloatField;
    qritemoutras_icms: TFloatField;
    qritemisentas_icms: TFloatField;
    qritemipi_nao_creditado: TFloatField;
    qritemfrete: TFloatField;
    qritemseguro: TFloatField;
    qritemoutras_despesas: TFloatField;
    qritems_trib: TStringField;
    qritemTIPO_FRETE: TStringField;
    qritemnro_serie_eqp: TStringField;
    qritemnro_ordem_eqp: TStringField;
    qritemmodelo_doc: TStringField;
    qritemnro_contador_inicio: TStringField;
    qritemnro_contador_fim: TStringField;
    qritemnro_contador_z: TStringField;
    qritemcontador_reinicio: TStringField;
    qritembrancos: TStringField;
    qritemdatahora_recebimento: TDateField;
    qritemdatahora_fim: TDateField;
    qritemdatahora_emissao: TDateField;
    qrnotaTRANSPORTE_IE: TStringField;
    qremitenteCODIGO: TStringField;
    qremitenteNOME: TStringField;
    qremitenteFANTASIA: TStringField;
    qremitenteENDERECO: TStringField;
    qremitenteBAIRRO: TStringField;
    qremitenteCIDADE: TStringField;
    qremitenteUF: TStringField;
    qremitenteCEP: TStringField;
    qremitenteTELEFONE: TStringField;
    qremitenteCNPJ: TStringField;
    qremitenteIE: TStringField;
    qremitenteEMAIL: TStringField;
    qremitenteHOMEPAGE: TStringField;
    qremitenteRESPONSAVEL: TStringField;
    qremitenteCELULAR: TStringField;
    qremitenteLOGO: TBlobField;
    qremitenteFAX: TStringField;
    qremitenteNUMERO: TStringField;
    qremitenteCOMPLEMENTO: TStringField;
    qremitenteCOMENTARIOS: TStringField;
    qremitenteDATAHORA_INICIAL: TDateTimeField;
    qremitenteDATAHORA_FINAL: TDateTimeField;
    qremitenteDATA_INVENTARIO: TDateTimeField;
    qremitenteESTOQUE: TFloatField;
    qremitenteVALOR: TFloatField;
    qrCFOPCFOP: TStringField;
    qrCFOPNATUREZA: TStringField;
    qrCFOPTIPO: TIntegerField;
    qrCFOPICMS: TFloatField;
    qrCFOPISS: TFloatField;
    qrCFOPOBS1: TStringField;
    qrCFOPOBS2: TStringField;
    qrCFOPOBS3: TStringField;
    qrCFOPOBS4: TStringField;
    qrCFOPFILTRO: TIntegerField;
    qrCFOPVALOR1: TFloatField;
    qrCFOPVALOR2: TFloatField;
    qrCFOPVALOR3: TFloatField;
    qrCFOPVALOR4: TFloatField;
    qrCFOPVALOR5: TFloatField;
    qrCFOPVALOR6: TFloatField;
    qrCFOPVALOR7: TFloatField;
    qrCFOPVALOR8: TFloatField;
    qrCFOPVALOR9: TFloatField;
    qrCFOPVALOR10: TFloatField;
    qrCFOPST: TStringField;
    qrCFOPCLASSIFICACAO_FISCAL: TStringField;
    qrCFOPREDUCAO_ICMS: TFloatField;
    qrCFOPMARGEM_AGREGADA: TFloatField;
    qrfiscal_modeloCODIGO: TStringField;
    qrfiscal_modeloMODELO: TStringField;
    qrfiscal_modeloSIGLA: TStringField;
    qrfiscal_modeloSINTEGRA: TStringField;
    qrfiscal_modeloTIPO_REGISTRO: TStringField;
    qrprodutoCST: TStringField;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorFANTASIA: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorFAX: TStringField;
    qrfornecedorCONTATO1: TStringField;
    qrfornecedorCONTATO2: TStringField;
    qrfornecedorCELULAR1: TStringField;
    qrfornecedorCELULAR2: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorHOMEPAGE: TStringField;
    qrfornecedorCNPJ: TStringField;
    qrfornecedorIE: TStringField;
    qrfornecedorBANCO: TStringField;
    qrfornecedorAGENCIA: TStringField;
    qrfornecedorCONTA: TStringField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorDATA: TDateTimeField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorASSISTENCIA_TECNICA: TIntegerField;
    qritemCODNOTA: TStringField;
    qrnotaCODIGO: TStringField;
    qrnotaTRANSPORTE_QUANTIDADE: TFloatField;
    qrnotaTRANSPORTE_PESO_BRUTO: TFloatField;
    qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField;
    qremitenteCONTRIBUINTE_IPI: TStringField;
    qremitenteSUBSTITUTO_TRIBUTARIO: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    qrsintegra_r60: TZQuery;
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
    qrfiscal_ecfCODIGO: TStringField;
    qrfiscal_ecfEQUIPAMENTO: TStringField;
    qrfiscal_ecfSERIE_EMPRESA: TStringField;
    qrfiscal_ecfSERIE_EQUIPAMENTO: TStringField;
    qrfiscal_ecfALIQUOTA_ISS: TFloatField;
    qrfiscal_ecfTIPO_ECF: TStringField;
    qrfiscal_ecfDATA_INICIO: TDateTimeField;
    qrnotafiscalSIT: TStringField;
    qrnotafiscalESPECIE: TStringField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoQTDE_EMBALAGEM: TFloatField;
    qritemFRACAO: TFloatField;
    qrsintegra_r60VALOR_VENDA_LIQUIDA: TFloatField;
    qrFilialNUMERO: TStringField;
    qrFilialRESPONSAVEL: TStringField;
    qrFilialCOMPLEMENTO: TStringField;
    qrFilialBAIRRO: TStringField;
    qrconfigVENDA_ALTERAR_PRECO: TIntegerField;
    qrconfigNF_LINHA_SUBTOTAL: TIntegerField;
    qrconfigNF_LINHA_TOTAL: TIntegerField;
    qrnotafiscalCODLANCAMENTO: TStringField;
    qrnotafiscalMOVIMENTO: TStringField;
    qrconfigECF_CAIXA: TStringField;
    qrconfigECF_SERIAL: TStringField;
    qrnotafiscalendereco: TStringField;
    qrnotafiscalcpf: TStringField;
    qrnotafiscalrg: TStringField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrvendaMEIO_CONVENIO: TFloatField;
    qrconfigFARMACIA_ENVIO: TStringField;
    qrconfigFARMACIA_RESPOSTA: TStringField;
    qrconfigFARMACIA_ENVIO_RESPOSTA: TStringField;
    qrconfigFARMACIA_LOGIN: TStringField;
    qrconfigFARMACIA_SENHA: TStringField;
    qrprodutoFARMACIA_CONTROLADO: TStringField;
    qrprodutoFARMACIA_APRESENTACAO: TIntegerField;
    qrprodutoFARMACIA_REGISTRO_MEDICAMENTO: TStringField;
    qrprodutoFARMACIA_PMC: TFloatField;
    qrrentabilidade: TZQuery;
    qrrentabilidadeCODIGO: TStringField;
    qrrentabilidadeCODPRODUTO: TStringField;
    qrrentabilidadePRODUTO: TStringField;
    qrrentabilidadeUNIDADE: TStringField;
    qrrentabilidadeEMBALAGEM: TFloatField;
    qrrentabilidadePERDA: TFloatField;
    qrrentabilidade_item: TZQuery;
    qrrentabilidade_itemRENTABILIDADE: TStringField;
    qrrentabilidade_itemCODPRODUTO: TStringField;
    qrrentabilidade_itemPRODUTO: TStringField;
    qrrentabilidade_itemRENDIMENTO: TFloatField;
    qrconfigULTIMA_CARGA: TDateTimeField;
    qrconfigIMPRIME_CUPOM_VINCULADO: TIntegerField;
    qrconfigIMPRIME_PRODUTOS_VINCULADOS: TIntegerField;
    qrconfigIMPRIME_COMPROVANTE_DEBITO: TIntegerField;
    qrindustria_produtos: TZQuery;
    qrindustria_produtosCODIGO: TStringField;
    qrindustria_produtosCODPRODUTO: TStringField;
    qrindustria_produtosQUANTIDADE: TFloatField;
    qrindustria_produtosproduto_ind: TStringField;
    qrindustria_produtosCUSTO: TFloatField;
    qrindustria_produtosPRODUTO: TStringField;
    qrdespesas_ind: TZQuery;
    qrdespesas_indCODIGO: TStringField;
    qrdespesas_indDESPESA: TStringField;
    qrdespesas_indPERCENTUAL: TFloatField;
    qrdespesasitem_ind: TZQuery;
    qrdespesasitem_indCODIGO: TStringField;
    qrdespesasitem_indCODDESPESA: TStringField;
    qrdespesasitem_indPERCENTUAL: TFloatField;
    qrdespesasitem_indVALOR: TFloatField;
    qrdespesasitem_inddespesa: TStringField;
    qrlote_fabricacao: TZQuery;
    qrlote_fabricacaoLOTE: TStringField;
    qrlote_fabricacaoCODPRODUTO: TStringField;
    qrlote_fabricacaoFABRICACAO: TDateTimeField;
    qrlote_fabricacaoVALIDADE: TDateTimeField;
    qrlote_fabricacaoREG_ANVISA: TStringField;
    qrlote_fabricacaoTECNICO: TStringField;
    qrlote_fabricacaoREG_TECNICO: TStringField;
    qrlote_fabricacaoVALOR: TFloatField;
    qrlote_fabricacaoproduto: TStringField;
    qrlote_fabricacaoOBSERVACAO: TStringField;
    qrlote_fabricacaoSITUACAO: TIntegerField;
    qrlote_fabricacaoQUANTIDADE: TFloatField;
    qrindustria_produtosUNIDADE_PRODUTO: TStringField;
    qrindustria_produtosUNIDADE_MATERIAPRIMA: TStringField;
    qrlote_fabricacaoUNIDADE: TStringField;
    qrindustria_produtosPRECOCUSTO: TFloatField;
    qrlote_fabricacaoVALIDADE_MES: TIntegerField;
    qrlote_fabricacaopeso_liquido: TFloatField;
    qrlote_fabricacaoclassificacao_fiscal: TStringField;
    qrlote_fabricacaoLAUDO_TECNICO: TStringField;
    qrlote_fabricacaopeso_bruto: TFloatField;
    qrindustria_produtoscst_produto: TStringField;
    qrindustria_produtoscst_mprima: TStringField;
    qrindustria_produtosaliquota_produto: TFloatField;
    qrindustria_produtosaliquota_mprima: TFloatField;
    qrlote_fabricacaoStringField: TStringField;
    qrlote_fabricacaoFloatField: TFloatField;
    qrproduto_movLOTE_FABRICACAO: TStringField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoULTIMA_CARGA: TDateTimeField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    qrconhecimentoMODELO: TStringField;
    qrconhecimentoSERIE: TStringField;
    qrconhecimentoESPECIE: TStringField;
    qrconhecimentoMODELO_NF: TStringField;
    qrconhecimentoESPECIE_NF: TStringField;
    qrconhecimentoSERIE_NF: TStringField;
    qrconhecimentoDATA_NF: TDateTimeField;
    qrconhecimentoVALOR_CONHECIMENTO: TFloatField;
    qrlote_rentabilidade: TZQuery;
    qrlote_rentabilidadeLOTE: TStringField;
    qrlote_rentabilidadeSITUACAO: TIntegerField;
    qrlote_rentabilidadeCODPRODUTO: TStringField;
    qrlote_rentabilidadeUNIDADE: TStringField;
    qrlote_rentabilidadeDATA: TDateTimeField;
    qrlote_rentabilidadeNOTAFISCAL: TStringField;
    qrlote_rentabilidadeQUANTIDADE: TFloatField;
    qrlote_rentabilidadeVALOR: TFloatField;
    qrlote_rentabilidadeOBSERVACAO: TStringField;
    qrlote_rentabilidadeproduto: TStringField;
    qrrentabilidade_itemQUANTIDADE: TFloatField;
    qrrentabilidade_itemVALOR: TFloatField;
    qrrentabilidade_itemCODIGO: TStringField;
    qrconfigIMPRIME_DUPLICATA: TIntegerField;
    qrmemorando: TZQuery;
    qrmemorandoCODIGO: TStringField;
    qrmemorandoDATA: TDateTimeField;
    qrmemorandoMEMORANDO: TStringField;
    qrmemorandoNOTAFISCAL: TStringField;
    qrmemorandoNOTAFISCAL_MODELO: TStringField;
    qrmemorandoNOTAFISCAL_SERIE: TStringField;
    qrmemorandoNOTAFISCAL_DATA: TDateTimeField;
    qrmemorandoDESPACHO: TStringField;
    qrmemorandoDESPACHO_DATA: TDateTimeField;
    qrmemorandoREGISTRO: TStringField;
    qrmemorandoREGISTRO_DATA: TDateTimeField;
    qrmemorandoCONHECIMENTO_EMBARQUE: TStringField;
    qrmemorandoCONHECIMENTO_EMBARQUE_DATA: TDateTimeField;
    qrmemorandoESTADO_FABRICANTE: TStringField;
    qrmemorandoPAIS_DESTINO: TStringField;
    qrmemorandoCONHECIMENTO: TStringField;
    qrmemorandoCONHECIMENTO_MODELO: TStringField;
    qrmemorandoCONHECIMENTO_SERIE: TStringField;
    qrmemorandoCONHECIMENTO_DATA: TDateTimeField;
    qrmemorandoTRANSPORTADOR_CODIGO: TStringField;
    qrmemorandoTRANSPORTADOR_NOME: TStringField;
    qrmemorandoTRANSPORTADOR_ENDERECO: TStringField;
    qrmemorandoTRANSPORTADOR_BAIRRO: TStringField;
    qrmemorandoTRANSPORTADOR_CIDADE: TStringField;
    qrmemorandoTRANSPORTADOR_UF: TStringField;
    qrmemorandoTRANSPORTADOR_PAIS: TStringField;
    qrmemorandoTRANSPORTADOR_CNPJCPF: TStringField;
    qrmemorandoTRANSPORTADOR_INSCRG: TStringField;
    qrmemorando_notas: TZQuery;
    qrmemorando_notasMEMORANDO: TStringField;
    qrmemorando_notasNOTAFISCAL: TStringField;
    qrmemorando_notasNF_DATA: TDateTimeField;
    qrmemorando_notasNF_MODELO: TStringField;
    qrmemorando_notasNF_SERIE: TStringField;
    qrmemorando_notasNF_QUANTIDADE: TFloatField;
    qrmemorando_notasNF_UNIDADE: TStringField;
    qrmemorandoCODFORNECEDOR: TStringField;
    qrmemorandoSITUACAO: TStringField;
    qrprodutoTIPO: TStringField;
    qrconhecimentoINF1: TStringField;
    qrconhecimentoINF2: TStringField;
    qrconhecimentoINF3: TStringField;
    qrconhecimentoINF4: TStringField;
    qrconhecimentoINF5: TStringField;
    qrconfigCONTASRECEBER_BLOQUEIO: TIntegerField;
    qrservicos_periodicos: TZQuery;
    qrservicos_periodicosID: TIntegerField;
    qrservicos_periodicosCODCLIENTE: TStringField;
    qrservicos_periodicosCODSERVICO: TStringField;
    qrservicos_periodicosCODTECNICO: TStringField;
    qrservicos_periodicosMARCA: TStringField;
    qrservicos_periodicosMODELO: TStringField;
    qrservicos_periodicosSERIE: TStringField;
    qrservicos_periodicosPRIMEIRA_MANUTENCAO: TDateTimeField;
    qrservicos_periodicosULTIMA_MANUTENCAO: TDateTimeField;
    qrservicos_periodicosPERIODO: TIntegerField;
    qrservicos_periodicosSTATUS: TStringField;
    qrservicos_periodicosproxima_manutencao: TDateField;
    qrservicos_periodicoscliente: TStringField;
    qrservicos_periodicosservico: TStringField;
    qrservicos_periodicostecnico: TStringField;
    qritem_baixa_produtos: TZQuery;
    qritem_baixa_produtosCODPRODUTO: TStringField;
    qritem_baixa_produtosPRODUTO: TStringField;
    qritem_baixa_produtosUNIDADE: TStringField;
    qritem_baixa_produtosQTDE: TFloatField;
    qritem_baixa_produtosUNITARIO: TFloatField;
    qritem_baixa_produtosDESCONTO: TFloatField;
    qritem_baixa_produtosACRESCIMO: TFloatField;
    qritem_baixa_produtosTOTAL: TFloatField;
    qritem_baixa_produtosCODORCAMENTO: TStringField;
    qrbaixa_produtos: TZQuery;
    qrbaixa_produtosCODIGO: TStringField;
    qrbaixa_produtosDATA: TDateTimeField;
    qrbaixa_produtosCODCLIENTE: TStringField;
    qrbaixa_produtosCODVENDEDOR: TStringField;
    qrbaixa_produtosSUBTOTAL: TFloatField;
    qrbaixa_produtosDESCONTO: TFloatField;
    qrbaixa_produtosACRESCIMO: TFloatField;
    qrbaixa_produtosTOTAL: TFloatField;
    qrbaixa_produtosOBS1: TStringField;
    qrbaixa_produtosOBS2: TStringField;
    qrbaixa_produtosOBS3: TStringField;
    qrbaixa_produtosOBS4: TStringField;
    qrbaixa_produtosTIPO: TIntegerField;
    qrbaixa_produtoscliente: TStringField;
    qrbaixa_produtosvendedor: TStringField;
    qrestoque: TZQuery;
    qrestoqueTIPO: TStringField;
    qrestoqueCODPRODUTO: TStringField;
    qrestoqueDATA: TDateTimeField;
    qrestoqueQUANTIDADE: TFloatField;
    qrestoqueVALOR: TFloatField;
    qrinventario: TZQuery;
    qrinventarioCODPRODUTO: TStringField;
    qrinventarioDATA: TDateTimeField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrnotafiscalBAIXA_ESTOQUE: TStringField;
    qrprodutoESTOQUE_ANTERIOR: TFloatField;
    qrprecoPRECO_AUTOMATICO: TIntegerField;
    qrprecoDATA_ALTERACAO: TDateTimeField;
    qrprecoALTERA_AUTOMATICO: TIntegerField;
    qrprecoNOVO_PRECO_VENDA: TFloatField;
    qrprodutoPRECOVENDA_NOVO: TFloatField;
    qrprecoDESCONTO: TFloatField;
    qrprecoFRETE: TFloatField;
    qrprecoSEGURO: TFloatField;
    qrprecoOUTRAS_DESPESAS: TFloatField;
    qrprecoIPI_P: TFloatField;
    qrprecoIPI: TFloatField;
    qrprecoPIS_P: TFloatField;
    qrprecoPIS: TFloatField;
    qrprecoCOFINS_P: TFloatField;
    qrprecoCOFINS: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_P: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL: TFloatField;
    qrprecoNOVO_PRECO_CUSTO: TFloatField;
    qrproduto_estoque: TZQuery;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    qrconfigRECIBO_TIPONOTA: TIntegerField;
    qrpedido_produtoOBS1: TStringField;
    qrpedido_produtoOBS2: TStringField;
    qrpedido_produtoOBS3: TStringField;
    qrpedido_produtoOBS4: TStringField;
    qrvendaP5: TFloatField;
    qrvendaP3: TFloatField;
    qrsintegra_r60NRO_CONTADOR_CANCELAMENTO: TIntegerField;
    qrfunciF_CAIXA: TIntegerField;
    qrfunciF_VENDEDOR: TIntegerField;
    qrfunciF_TECNICO: TIntegerField;
    qrconfigBALANCA_PROGRAMA: TStringField;
    qrconfigNR_CONTROLE_ECF: TStringField;
    qrconfigTIPO_DUPLICATA: TStringField;
    conexao_adic: TZConnection;
    qradic: TZQuery;
    qradic2: TZQuery;
    qradic_orcamento: TZQuery;
    StringField7: TStringField;
    qrorcamentoCODCAIXA: TStringField;
    StringField8: TStringField;
    DateTimeField2: TDateTimeField;
    StringField9: TStringField;
    qrorcamentoOBS: TStringField;
    qrorcamentoMEIO_DINHEIRO: TFloatField;
    qrorcamentoMEIO_CHEQUEAV: TFloatField;
    qrorcamentoMEIO_CHEQUEAP: TFloatField;
    qrorcamentoMEIO_CARTAOCRED: TFloatField;
    qrorcamentoMEIO_CARTAODEB: TFloatField;
    qrorcamentoMEIO_CREDIARIO: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    qrorcamentoCUPOM_FISCAL: TIntegerField;
    qrorcamentoNUMERO_CUPOM_FISCAL: TStringField;
    qrorcamentoRETIRADO: TStringField;
    qrorcamentoTIPO: TIntegerField;
    qrorcamentoMEIO_CONVENIO: TFloatField;
    qradic_orcamento_produto: TZQuery;
    qradic_contasreceber: TZQuery;
    qradic_contasreceberPRESTACAO: TIntegerField;
    qradic_contasreceberVENCIMENTO: TDateTimeField;
    qradic_contasreceberTIPO: TStringField;
    qradic_contasreceberDOCUMENTO: TStringField;
    qradic_contasreceberVALOR: TFloatField;
    qradic_mestre: TZQuery;
    qradic_nota: TZQuery;
    qradic_notaDATA_LANCAMENTO: TDateTimeField;
    qradic_notaNUMERO: TStringField;
    qradic_notafornecedor: TStringField;
    qradic_notaCFOP: TStringField;
    qradic_notaCONF_TOTALNOTA: TFloatField;
    qradic_notaDATA_EMISSAO: TDateTimeField;
    qradic_notaTOTAL_NOTA: TFloatField;
    qradic_notaSITUACAO: TIntegerField;
    qradic_notaMODELO: TStringField;
    qradic_notaESPECIE: TStringField;
    qradic_notaSERIE: TStringField;
    qradic_notaBASE_ICMS: TFloatField;
    qradic_notaVALOR_ICMS: TFloatField;
    qradic_notaempresa: TStringField;
    qradic_notaCONF_VALORICMS: TFloatField;
    qradic_notaCODIGO: TStringField;
    qradic_notaCODEMPRESA: TStringField;
    qradic_notaCODFORNECEDOR: TStringField;
    qradic_notaCONF_BASEICMS: TFloatField;
    qradic_notaCONF_BASESUB: TFloatField;
    qradic_notaCONF_VALORSUB: TFloatField;
    qradic_notaCONF_FRETE: TFloatField;
    qradic_notaCONF_SEGURO: TFloatField;
    qradic_notaCONF_OUTRAS: TFloatField;
    qradic_notaCONF_IPI: TFloatField;
    qradic_notaCONF_DESCONTO: TFloatField;
    qradic_notaCONF_TOTALPRODUTOS: TFloatField;
    qradic_notaCONF_ICMSRETIDO: TFloatField;
    qradic_notaCONF_ICMSREDITO_PERC: TFloatField;
    qradic_notaBASE_SUB: TFloatField;
    qradic_notaFRETE: TFloatField;
    qradic_notaSEGURO: TFloatField;
    qradic_notaOUTRAS: TFloatField;
    qradic_notaIPI: TFloatField;
    qradic_notaDESCONTO: TFloatField;
    qradic_notaTOTAL_PRODUTOS: TFloatField;
    qradic_notaTRANSP_NOME: TStringField;
    qradic_notaTRANSP_FRETE: TStringField;
    qradic_notaTRANSP_PLACA: TStringField;
    qradic_notaTRANSP_PLACAUF: TStringField;
    qradic_notaTRANSP_IE: TStringField;
    qradic_notaTRANSP_CNPJ: TStringField;
    qradic_notaTRANSP_ENDERECO: TStringField;
    qradic_notaTRANSP_CIDADE: TStringField;
    qradic_notaTRANSP_UF: TStringField;
    qradic_notaTRANSP_QTDE: TFloatField;
    qradic_notaTRANSP_ESPECIE: TStringField;
    qradic_notaTRANSP_MARCA: TStringField;
    qradic_notaTRANSP_NUMERO: TStringField;
    qradic_notaTRANSP_PESOBRUTO: TFloatField;
    qradic_notaTRANSP_PESOLIQUIDO: TFloatField;
    qradic_notaOBS1: TStringField;
    qradic_notaOBS2: TStringField;
    qradic_notaOBS3: TStringField;
    qradic_notaOBS4: TStringField;
    qradic_notaOBS5: TStringField;
    qradic_notaOBS6: TStringField;
    qradic_notaOBS7: TStringField;
    qradic_notaVALOR_SUB: TFloatField;
    qradic_notaITENS: TIntegerField;
    qradic_notaTIPO: TStringField;
    qradic_notaNOTA_FISCAL: TStringField;
    qradic_notaCODREMETENTE: TStringField;
    qradic_notaREMETENTE: TStringField;
    qradic_notaVALOR_MERCADORIAS: TFloatField;
    qradic_notaICMS_ISENTO: TFloatField;
    qradic_notaICMS_OUTRAS: TFloatField;
    qradic_notaDESCONTO_INCIDENTE: TIntegerField;
    qradic_notaITEM_FRETE_VALOR: TFloatField;
    qradic_notaITEM_FRETE_BASE: TFloatField;
    qradic_notaITEM_FRETE_ALIQUOTA: TFloatField;
    qradic_notaITEM_FRETE_ICMS: TFloatField;
    qradic_notaITEM_SEGURO_VALOR: TFloatField;
    qradic_notaITEM_SEGURO_BASE: TFloatField;
    qradic_notaITEM_SEGURO_ALIQUOTA: TFloatField;
    qradic_notaITEM_SEGURO_ICMS: TFloatField;
    qradic_notaITEM_PIS_VALOR: TFloatField;
    qradic_notaITEM_PIS_BASE: TFloatField;
    qradic_notaITEM_PIS_ALIQUOTA: TFloatField;
    qradic_notaITEM_PIS_ICMS: TFloatField;
    qradic_notaITEM_COMPLEMENTO_VALOR: TFloatField;
    qradic_notaITEM_COMPLEMENTO_BASE: TFloatField;
    qradic_notaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qradic_notaITEM_COMPLEMENTO_ICMS: TFloatField;
    qradic_notaITEM_SERVICO_VALOR: TFloatField;
    qradic_notaITEM_SERVICO_BASE: TFloatField;
    qradic_notaITEM_SERVICO_ALIQUOTA: TFloatField;
    qradic_notaITEM_SERVICO_ICMS: TFloatField;
    qradic_notaITEM_OUTRAS_VALOR: TFloatField;
    qradic_notaITEM_OUTRAS_BASE: TFloatField;
    qradic_notaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qradic_notaITEM_OUTRAS_ICMS: TFloatField;
    qradic_notaITEM_ESPECIAL_TOTAL: TFloatField;
    qradic_notaITEM_ESPECIAL_VALOR: TFloatField;
    qradic_notaBASEICMS_PRODUTOS: TIntegerField;
    qradic_nota_item: TZQuery;
    qradic_nota_itemITEM: TStringField;
    qradic_nota_itemCODPRODUTO: TStringField;
    qradic_nota_itemUN_COMPRA: TStringField;
    qradic_nota_itemCST: TStringField;
    qradic_nota_itemCFOP: TStringField;
    qradic_nota_itemICMS_ALIQUOTA: TFloatField;
    qradic_nota_itemIPI_ALIQUOTA: TFloatField;
    qradic_nota_itemQTDE: TFloatField;
    qradic_nota_itemUNITARIO: TFloatField;
    qradic_nota_itemSUBTOTAL: TFloatField;
    qradic_nota_itemDESCONTO: TFloatField;
    qradic_nota_itemTOTAL: TFloatField;
    qradic_nota_itemSUB_VALOR: TFloatField;
    qradic_nota_itemIPI_VALOR: TFloatField;
    qradic_nota_itemCODIGO: TStringField;
    qradic_nota_itemCODNOTA: TStringField;
    qradic_nota_itemCODLANCAMENTO: TStringField;
    qradic_nota_itemUN_FRACAO: TStringField;
    qradic_nota_itemFRACAO: TFloatField;
    qradic_nota_itemDESCONTO_P: TFloatField;
    qradic_nota_itemICMS_RETIDO: TStringField;
    qradic_nota_itemICMS_REDUCAO: TFloatField;
    qradic_nota_itemICMS_BASE: TFloatField;
    qradic_nota_itemICMS_VALOR: TFloatField;
    qradic_nota_itemICMS_VALORRETIDO: TFloatField;
    qradic_nota_itemICMS_ISENTO: TFloatField;
    qradic_nota_itemICMS_NAOTRIBUTADO: TFloatField;
    qradic_nota_itemSUB_MARGEM: TFloatField;
    qradic_nota_itemSUB_BASE: TFloatField;
    qradic_nota_itemIPI_BASE: TFloatField;
    qradic_nota_itemDATA: TDateTimeField;
    qradic_nota_itemTIPO: TIntegerField;
    qradic_nota_itemNOTAFISCAL: TStringField;
    qradic_nota_itemIPI_TIPO: TStringField;
    qradic_nota_itemFRETE: TFloatField;
    qradic_nota_itemOUTRAS: TFloatField;
    qradic_nota_itemSEGURO: TFloatField;
    qradic_nota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrconfigCONCILIA_VENDA: TIntegerField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    qrcontasreceberCODCEDENTE: TStringField;
    qrcontasreceberP5: TFloatField;
    qrcontasreceberP3: TFloatField;
    EConexao: TIBCConnection;
    qrconfigCONTROLA_ENTREGA: TIntegerField;
    qrconfigENTREGA_IMPRESSAO: TIntegerField;
    qrconfigENTREGA_VIAS: TIntegerField;
    ETransaction: TIBCTransaction;
    qrnotafiscalTIPO: TStringField;
    qrnotafiscalOS_COD1: TStringField;
    qrnotafiscalOS_COD2: TStringField;
    qrnotafiscalOS_COD3: TStringField;
    qrnotafiscalOS_COD4: TStringField;
    qrnotafiscalOS_COD5: TStringField;
    qrnotafiscalOS_COD6: TStringField;
    qrnotafiscalOS_SERV1: TStringField;
    qrnotafiscalOS_SERV2: TStringField;
    qrnotafiscalOS_SERV3: TStringField;
    qrnotafiscalOS_SERV4: TStringField;
    qrnotafiscalOS_SERV5: TStringField;
    qrnotafiscalOS_SERV6: TStringField;
    qrnotafiscalOS_COMP1: TStringField;
    qrnotafiscalOS_COMP2: TStringField;
    qrnotafiscalOS_COMP3: TStringField;
    qrnotafiscalOS_COMP4: TStringField;
    qrnotafiscalOS_COMP5: TStringField;
    qrnotafiscalOS_COMP6: TStringField;
    qrnotafiscalOS_QTDE1: TFloatField;
    qrnotafiscalOS_QTDE2: TFloatField;
    qrnotafiscalOS_QTDE3: TFloatField;
    qrnotafiscalOS_QTDE4: TFloatField;
    qrnotafiscalOS_QTDE5: TFloatField;
    qrnotafiscalOS_QTDE6: TFloatField;
    qrnotafiscalOS_UNIT1: TFloatField;
    qrnotafiscalOS_UNIT2: TFloatField;
    qrnotafiscalOS_UNIT3: TFloatField;
    qrnotafiscalOS_UNIT4: TFloatField;
    qrnotafiscalOS_UNIT5: TFloatField;
    qrnotafiscalOS_UNIT6: TFloatField;
    qrnotafiscalOS_TOTAL1: TFloatField;
    qrnotafiscalOS_TOTAL2: TFloatField;
    qrnotafiscalOS_TOTAL3: TFloatField;
    qrnotafiscalOS_TOTAL4: TFloatField;
    qrnotafiscalOS_TOTAL5: TFloatField;
    qrnotafiscalOS_TOTAL6: TFloatField;
    qrnotafiscalOS_ISS: TFloatField;
    qrnotafiscalOS_TOTAL_GERAL: TFloatField;
    qrnotafiscalOS_TOTAL_ISS: TFloatField;
    qrFilialCONHECIMENTO: TIntegerField;
    qrconfigNF_GERAR_RECEBER: TIntegerField;
    qrconfigNF_GERAR_DUPLICATA: TIntegerField;
    qrprod: TZQuery;
    qrvendaCODCONVENIO: TStringField;
    qrvendaMEIO_FINANCEIRA: TFloatField;
    qrvendaCOD_FINANCEIRA: TStringField;
    qrvendaCOD_FINANCEIRA_LACTO: TStringField;
    qrvendaCOD_FINANCEIRA_LANCTO: TStringField;
    qrconfigCUPOM_IMPRIMIR_CODIGO: TIntegerField;
    querylog: TZQuery;
    qrvendaSITUACAO: TIntegerField;
    qrclienteCOD_MUNICIPIO_IBGE: TStringField;
    qrFilialCOD_MUNICIPIO_IBGE: TStringField;
    qrconfigCLIENTE_PEDE_CPF: TIntegerField;
    qrclienteSEXO: TStringField;
    qrclienteHISTORICO: TBlobField;
    qrclientePREVISAO: TDateTimeField;
    qrconfigVERIFICA_COD_BARRA: TIntegerField;
    qrconfigVERIFICA_NOME_PRODUTO: TIntegerField;
    time_gp: TTimer;
    qrcontasreceberNUMERO_CUPOM: TStringField;
    qrFilialPIS: TFloatField;
    qrFilialCOFINS: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrconhecimentoCARGA_NATUREZA2: TStringField;
    qrconhecimentoCARGA_NF2: TStringField;
    qrconhecimentoCARGA_VALOR2: TFloatField;
    qrconhecimentoCARGA_QTDE2: TFloatField;
    qrconhecimentoCARGA_VOL_QTDE2: TFloatField;
    qrconhecimentoCARGA_VOL_ESPECIE2: TStringField;
    qrconhecimentoMODELO_NF2: TStringField;
    qrconhecimentoESPECIE_NF2: TStringField;
    qrconhecimentoSERIE_NF2: TStringField;
    qrconhecimentoDATA_NF2: TDateTimeField;
    qrconhecimentoVALOR_CONHECIMENTO2: TFloatField;
    qrautorizacao: TZQuery;
    qrautorizacaoAUTORIZACAO: TStringField;
    qrautorizacaoDATA: TDateTimeField;
    qrautorizacaoTIPO: TStringField;
    qrautorizacaoCNPJ: TStringField;
    qrautorizacaoPLANO: TStringField;
    qrautorizacaoCONVENIADO: TStringField;
    qrautorizacaoCONVENIO: TStringField;
    qrautorizacaoECF: TStringField;
    qrautorizacaoCUPOM: TStringField;
    qrautorizacaoCODBARRA: TStringField;
    qrautorizacaoQTDE: TFloatField;
    qrautorizacaoPMC: TFloatField;
    qrautorizacaoPV: TFloatField;
    qrautorizacaoDESCONTO: TFloatField;
    qrautorizacaoCOMISSAO: TFloatField;
    qrautorizacaoPC_VISTA: TFloatField;
    qrautorizacaoPC_RECEBER: TFloatField;
    qrautorizacaoREEMBOLSO: TFloatField;
    qrautorizacaoSUBSIDIO: TFloatField;
    qrautorizacaoCODCLIENTE: TStringField;
    qrautorizacaoNOMECLIENTE: TStringField;
    qrautorizacaoCRM_MEDICO: TStringField;
    qrautorizacaoUF_MEDICO: TStringField;
    qrautorizacaoSOLICITACAO: TIntegerField;
    qrautorizacaoQTDE_AUTORIZADO: TFloatField;
    qrautorizacaoCPF: TStringField;
    qrautorizacaoPACIENTE: TStringField;
    qrautorizacaoCODCONVENIO: TIntegerField;
    qrautorizacaoPRE_AUTORIZACAO: TStringField;
    qrautorizacaoLOTE: TStringField;
    qrautorizacaoOBS: TStringField;
    qrproduto_movLANCADO: TIntegerField;
    qrproduto_movVENCIMENTO: TDateTimeField;
    qrproduto_movCODBARRA: TStringField;
    qrproduto_movLOJA: TStringField;
    qrproduto_movTIPO: TStringField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    queryagenda: TZQuery;
    qragendaCODIGO: TStringField;
    qragendaTIPO: TStringField;
    qragendaCODTIPO: TStringField;
    qragendaNOME: TStringField;
    qragendaTELEFONE1: TStringField;
    qragendaTELEFONE2: TStringField;
    qragendaTELEFONE3: TStringField;
    qragendaCELULAR: TStringField;
    qragendaEMAIL: TStringField;
    qragendaFAX: TStringField;
    qragendaHOMEPAGE: TStringField;
    qragendaTIPOI: TIntegerField;
    qremitenteDIA_VENCIMENTO_CHAVE: TStringField;
    qrclienteTAMANHO_CALCA: TStringField;
    qrclienteTAMANHO_BLUSA: TStringField;
    qrclienteTAMANHO_SAPATO: TStringField;
    qrclienteRG_ORGAO: TStringField;
    qrclienteRG_ESTADO: TStringField;
    qrclienteRG_EMISSAO: TDateTimeField;
    qrclienteCNAE: TStringField;
    qrfornecedorREP_NOME: TStringField;
    qrfornecedorREP_TELEFONE: TStringField;
    qrfornecedorREP_ENDERECO: TStringField;
    qrfornecedorREP_BAIRRO: TStringField;
    qrfornecedorREP_COMPLEMENTO: TStringField;
    qrfornecedorREP_CIDADE: TStringField;
    qrfornecedorREP_UF: TStringField;
    qrfornecedorREP_CEP: TStringField;
    qrfornecedorREP_TELEFONE1: TStringField;
    qrfornecedorREP_TELEFONE2: TStringField;
    qrfornecedorREP_TELEFONE3: TStringField;
    qrfornecedorREP_FAX: TStringField;
    qrfornecedorREP_CNPJ: TStringField;
    qrfornecedorREP_IE: TStringField;
    qrfornecedorREP_HOME_PAGE: TStringField;
    qrfornecedorREP_EMAIL: TStringField;
    qrfornecedorIM: TStringField;
    qrfornecedorCNAE: TStringField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TStringField;
    qrcnae: TZQuery;
    qrcnaeCODIGO: TStringField;
    qrcnaeCNAE: TStringField;
    qrcnaeDESCRICAO: TStringField;
    qrcnaeABREVIADO: TStringField;
    qrclienteIBGE: TStringField;
    qrfornecedorIBGE: TStringField;
    qrpedido_industria: TZQuery;
    qrpedido_industriaCODIGO: TStringField;
    qrpedido_industriaPEDIDO: TStringField;
    qrpedido_industriaCODCLIENTE: TStringField;
    qrpedido_industriaDATA_PEDIDO: TDateTimeField;
    qrpedido_industriaDATA_ENTREGA: TDateTimeField;
    qrpedido_industriaVALOR: TFloatField;
    qrpedido_industriaOBS1: TStringField;
    qrpedido_industriaOBS2: TStringField;
    qrpedido_industriaOBS3: TStringField;
    qrpedido_industriaOBS4: TStringField;
    qrpedido_industriaOBS5: TStringField;
    qrpedido_industria_item: TZQuery;
    qrpedido_industria_itemCODIGO: TStringField;
    qrpedido_industria_itemPEDIDO: TStringField;
    qrpedido_industria_itemCODPRODUTO: TStringField;
    qrpedido_industria_itemREFERENCIA: TStringField;
    qrpedido_industria_itemTAMANHO: TStringField;
    qrpedido_industria_itemQUANTIDADE: TIntegerField;
    qrpedido_industria_itemVALOR: TFloatField;
    qrpedido_industria_itemCOR: TStringField;
    qrpedido_industria_itemTOTAL: TFloatField;
    qrpedido_industriacliente: TStringField;
    qrpedido_industria_itemproduto: TStringField;
    qrpedido_industria_itemcodbarra: TStringField;
    qrpedido_industriaSITUACAO: TIntegerField;
    qrtamanho: TZQuery;
    qrtamanhoCODIGO: TStringField;
    qrtamanhoTAMANHO: TStringField;
    qrcor: TZQuery;
    qrcorCODIGO: TStringField;
    qrcorCOR: TStringField;
    qrpedido_industria_itemITEM: TIntegerField;
    qrpedido_industriaCONDICAO_PAGAMENTO: TStringField;
    qrpedido_industriaCODREPRESENTANTE: TStringField;
    qrpedido_industriarepresentante: TStringField;
    qrpedido_industriarepresentante_fone: TStringField;
    qrpedido_industriaLOTE: TStringField;
    qrpedido_industriaRESPONSAVEL: TStringField;
    qrservicoCOMISSAO: TFloatField;
    qrconfigALTERAR_UNITARIO: TIntegerField;
    qrfornecedor_codigo: TZQuery;
    qrfornecedor_codigoCODFORNECEDOR: TStringField;
    qrfornecedor_codigofornecedor: TStringField;
    qrfornecedor_codigoCODIGO: TStringField;
    qrfornecedor_codigoPRECO: TFloatField;
    qrfornecedor_codigoCODPRODUTO: TStringField;
    qrconfigBAIXAR_ESTOQUE_NOTA_SAIDA: TIntegerField;
    qrfornecedor_codigoproduto: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrconfigETIQUETA_07: TIntegerField;
    qrconfigETIQUETA_07_1: TIntegerField;
    qrconfigETIQUETA_07_2: TIntegerField;
    qrclienteRESP1_NOME: TStringField;
    qrclienteRESP1_CPF: TStringField;
    qrclienteRESP1_RG: TStringField;
    qrclienteRESP1_PROFISSAO: TStringField;
    qrclienteRESP1_ESTADO_CIVIL: TStringField;
    qrclienteRESP1_ENDERECO: TStringField;
    qrclienteRESP1_BAIRRO: TStringField;
    qrclienteRESP1_CIDADE: TStringField;
    qrclienteRESP1_UF: TStringField;
    qrclienteRESP1_CEP: TStringField;
    qrclienteRESP2_NOME: TStringField;
    qrclienteRESP2_CPF: TStringField;
    qrclienteRESP2_RG: TStringField;
    qrclienteRESP2_PROFISSAO: TStringField;
    qrclienteRESP2_ESTADO_CIVIL: TStringField;
    qrclienteRESP2_ENDERECO: TStringField;
    qrclienteRESP2_BAIRRO: TStringField;
    qrclienteRESP2_CIDADE: TStringField;
    qrclienteRESP2_UF: TStringField;
    qrclienteRESP2_CEP: TStringField;
    qrprodutoINCIDENCIA_PISCOFINS: TStringField;
    qrprecoPIS_ENTRADA_P: TFloatField;
    qrprecoPIS_ENTRADA: TFloatField;
    qrprecoCOFINS_ENTRADA_P: TFloatField;
    qrprecoCOFINS_ENTRADA: TFloatField;
    qrprecoCONTRIBUICAO_SOCIAL_ENTRADA_P: TFloatField;
    qrprodutoPISCOFINS: TStringField;
    qrconfigEMAIL_SERVIDOR_SMTP: TStringField;
    qrconfigEMAIL_PORTA: TStringField;
    qrconfigEMAIL_USUARIO: TStringField;
    qrconfigEMAIL_SENHA: TStringField;
    qrconfigEMAIL_ASSUNTO: TStringField;
    qrconfigEMAIL_EXIGE_CONEXAO: TIntegerField;
    qrconfigEMAIL_MENSAGEM: TBlobField;
    RvSystem1: TRvSystem;
    qrCFOPSIMPLIFICADO: TStringField;
    qrconfigPLANO_DUPLICATA_NFE: TStringField;
    qrconfigINVENTARIO_AUTOMATICO: TIntegerField;
    qrproduto_movCODSUBGRUPO: TStringField;
    qrproduto_movCODUSUARIO: TStringField;
    qrproduto_movORIGEM: TStringField;
    qrproduto_movDESTINO: TStringField;
    qrtransportadorCODIGO: TStringField;
    qrtransportadorNOME: TStringField;
    qrtransportadorENDERECO: TStringField;
    qrtransportadorBAIRRO: TStringField;
    qrtransportadorCIDADE: TStringField;
    qrtransportadorUF: TStringField;
    qrtransportadorCEP: TStringField;
    qrtransportadorCPF: TStringField;
    qrtransportadorRG: TStringField;
    qrtransportadorTELEFONE: TStringField;
    qrtransportadorCELULAR: TStringField;
    qrtransportadorPLACA: TStringField;
    qrtransportadorUFPLACA: TStringField;
    qrtransportadorOBS1: TStringField;
    qrtransportadorOBS2: TStringField;
    qrtransportadorOBS3: TStringField;
    qrtransportadorDATA: TDateTimeField;
    qrtransportadorTIPO: TIntegerField;
    qrlote_fabricacaoLANCAMENTO: TStringField;
    econexao2: TZConnection;
    qrconfigPLANO_CONTA8: TStringField;
    qrconfigPLANO_CONTA80: TStringField;
    qrprodutoIAT: TStringField;
    qrprodutoIPPT: TStringField;
    qrprodutoSITUACAO_TRIBUTARIA: TStringField;
    qrclienteFOTO: TStringField;
    qrFilialDATA_ABERTURA: TDateTimeField;
    qrFilialCNAE: TStringField;
    qrFilialATIVIDADE: TStringField;
    qrFilialINSC_MUNICIPAL: TStringField;
    qrFilialINDUSTRIA: TStringField;
    qrconfigIND_MOSTRA_COMPOSICAO: TIntegerField;
    qrconfigIND_CLIE_ENTRADA: TStringField;
    qrconfigIND_CFOP_ENTRADA: TStringField;
    qrconfigIND_CLIE_SAIDA: TStringField;
    qrconfigIND_CFOP_SAIDA: TStringField;
    qrconfigIND_CLIE_PERDA: TStringField;
    qrconfigIND_CFOP_PERDA: TStringField;
    qrconfigIND_CLIE_ENTRADA_DESC: TStringField;
    qrconfigIND_CFOP_ENTRADA_DESC: TStringField;
    qrconfigIND_CLIE_SAIDA_DESC: TStringField;
    qrconfigIND_CFOP_SAIDA_DESC: TStringField;
    qrconfigIND_CLIE_PERDA_DESC: TStringField;
    qrconfigIND_CFOP_PERDA_DESC: TStringField;
    qrNCM: TZQuery;
    qrFilialCONTADOR_COD_MUNICIPIO_IBGE: TStringField;
    qrFilialCONTADOR_NOME: TStringField;
    qrFilialCONTADOR_CPF: TStringField;
    qrFilialCONTADOR_CRC: TStringField;
    qrFilialCONTADOR_CNPJ: TStringField;
    qrFilialCONTADOR_CEP: TStringField;
    qrFilialCONTADOR_ENDERECO: TStringField;
    qrFilialCONTADOR_NUMERO: TStringField;
    qrFilialCONTADOR_COMPLEMENTO: TStringField;
    qrFilialCONTADOR_BAIRRO: TStringField;
    qrFilialCONTADOR_FONE: TStringField;
    qrFilialCONTADOR_FAX: TStringField;
    qrFilialCONTADOR_EMAIL: TStringField;
    qrFilialIBGE: TStringField;
    qremitenteINSC_MUNICIPAL: TStringField;
    qremitenteDATA_ABERTURA: TDateTimeField;
    qremitenteCOD_MUNICIPIO_IBGE: TStringField;
    qremitenteIBGE: TStringField;
    qrFilialCRT: TStringField;
    qrprodutoMARGEM_AGREGADA: TFloatField;
    ZQuery1: TZQuery;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField13: TStringField;
    DateTimeField3: TDateTimeField;
    StringField14: TStringField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    FloatField24: TFloatField;
    FloatField25: TFloatField;
    IntegerField2: TIntegerField;
    FloatField26: TFloatField;
    StringField15: TStringField;
    IntegerField3: TIntegerField;
    StringField16: TStringField;
    StringField17: TStringField;
    FloatField27: TFloatField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    IntegerField4: TIntegerField;
    StringField21: TStringField;
    DateTimeField4: TDateTimeField;
    DateTimeField5: TDateTimeField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    StringField35: TStringField;
    StringField36: TStringField;
    StringField37: TStringField;
    StringField38: TStringField;
    DateTimeField8: TDateTimeField;
    StringField39: TStringField;
    StringField40: TStringField;
    StringField41: TStringField;
    StringField42: TStringField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    StringField43: TStringField;
    StringField44: TStringField;
    StringField45: TStringField;
    StringField46: TStringField;
    StringField47: TStringField;
    StringField48: TStringField;
    StringField49: TStringField;
    StringField50: TStringField;
    StringField51: TStringField;
    StringField52: TStringField;
    StringField53: TStringField;
    StringField54: TStringField;
    StringField55: TStringField;
    StringField56: TStringField;
    StringField57: TStringField;
    StringField58: TStringField;
    StringField59: TStringField;
    StringField60: TStringField;
    StringField61: TStringField;
    StringField62: TStringField;
    StringField63: TStringField;
    StringField64: TStringField;
    StringField65: TStringField;
    StringField66: TStringField;
    StringField67: TStringField;
    StringField68: TStringField;
    StringField69: TStringField;
    StringField70: TStringField;
    StringField71: TStringField;
    StringField72: TStringField;
    StringField73: TStringField;
    StringField74: TStringField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    qrCSOSN: TZQuery;
    qrCSOSNCODIGO: TStringField;
    qrCSOSNDESCRICAO: TStringField;
    qrconfigVISUALIZA_MENSAGEM: TIntegerField;
    qrconfigUSA_RENTABILIDADE: TIntegerField;
    qrclienteNUMERO: TStringField;
    qrtransportadorNUMERO: TStringField;
    qrtransportadorCOD_MUNICIPIO_IBGE: TStringField;
    qrtransportadorIBGE: TStringField;
    qrfornecedorNUMERO: TStringField;
    qrtransportadorANTT: TStringField;
    qrfunciNUMERO: TStringField;
    qrFilialCONTADOR_CIDADE: TStringField;
    qrFilialCONTADOR_COD_MUNICIPIO: TStringField;
    qrFilialCONTADOR_UF: TStringField;
    qrFilialPERMITE_CREDITO: TIntegerField;
    qrFilialFARMACIA_RESP_TECNICO: TStringField;
    qrFilialFARMACIA_CRF: TStringField;
    qrFilialFARMACIA_CPF: TStringField;
    qrFilialFARMCIA_DATA: TDateTimeField;
    qrFilialFARMACIA_UF: TStringField;
    qrFilialFARMACIA_SENHA: TStringField;
    qrFilialFARMACIA_EMAIL: TStringField;
    qrFilialFARMACIA_LOGIN: TStringField;
    qrFilialFARMACIA_ENVIO: TStringField;
    qrFilialFARMACIA_NUMEROLICENCA: TStringField;
    qrFilialEMAIL: TStringField;
    qrFilialPERFIL_SPED: TIntegerField;
    qrFilialFANTASIA: TStringField;
    qrFilialEMAIL_EMPRESA: TStringField;
    qrPedido1: TZQuery;
    s1: TStringField;
    dtmfld1: TDateTimeField;
    s2: TStringField;
    s3: TStringField;
    f1: TFloatField;
    f2: TFloatField;
    f3: TFloatField;
    f4: TFloatField;
    s4: TStringField;
    s5: TStringField;
    s6: TStringField;
    s7: TStringField;
    s8: TStringField;
    s9: TStringField;
    sPedidoSTATUS: TStringField;
    fPedidoMEIO_DINHEIRO: TFloatField;
    fPedidoMEIO_CHEQUEAV: TFloatField;
    fPedidoMEIO_CHEQUEAP: TFloatField;
    fPedidoMEIO_CARTAOCRED: TFloatField;
    fPedidoMEIO_CARTAODEB: TFloatField;
    fPedidoMEIO_CREDIARIO: TFloatField;
    intgrfldPedidoST: TIntegerField;
    sPedidoSITUACAO: TStringField;
    sPedidoCODCAIXA: TStringField;
    qrPedido2: TZQuery;
    StringField75: TStringField;
    DateTimeField9: TDateTimeField;
    StringField76: TStringField;
    StringField77: TStringField;
    FloatField57: TFloatField;
    FloatField58: TFloatField;
    FloatField59: TFloatField;
    FloatField60: TFloatField;
    StringField78: TStringField;
    StringField79: TStringField;
    StringField80: TStringField;
    StringField81: TStringField;
    StringField82: TStringField;
    StringField83: TStringField;
    StringField84: TStringField;
    FloatField61: TFloatField;
    FloatField62: TFloatField;
    FloatField63: TFloatField;
    FloatField64: TFloatField;
    FloatField65: TFloatField;
    FloatField66: TFloatField;
    IntegerField5: TIntegerField;
    StringField85: TStringField;
    StringField86: TStringField;
    intgrfldPedidoID: TIntegerField;
    fPedidoDESCONTO1: TFloatField;
    fPedidoACRESCIMO1: TFloatField;
    qrPedido: TZQuery;
    StringField87: TStringField;
    DateTimeField10: TDateTimeField;
    StringField88: TStringField;
    StringField89: TStringField;
    FloatField67: TFloatField;
    FloatField68: TFloatField;
    FloatField69: TFloatField;
    FloatField70: TFloatField;
    StringField90: TStringField;
    StringField91: TStringField;
    StringField92: TStringField;
    StringField93: TStringField;
    StringField94: TStringField;
    StringField95: TStringField;
    StringField96: TStringField;
    FloatField71: TFloatField;
    FloatField72: TFloatField;
    FloatField73: TFloatField;
    FloatField74: TFloatField;
    FloatField75: TFloatField;
    FloatField76: TFloatField;
    IntegerField6: TIntegerField;
    StringField97: TStringField;
    StringField98: TStringField;
    IntegerField7: TIntegerField;
    FloatField77: TFloatField;
    FloatField78: TFloatField;
    fPedidoMEIO_CONVENIO: TFloatField;
    fPedidoMEIO_FINANCEIRA: TFloatField;
    qrprodutoibpt: TZQuery;
    qribpt: TZQuery;
    SQLConnection: TSQLConnection;
    ZQuery2: TZQuery;
    ZQuery2CODIGO: TStringField;
    ZQuery2CUPOM: TStringField;
    ZQuery2DATA: TDateTimeField;
    ZQuery2SERIAL: TStringField;
    ZQuery2ECF: TStringField;
    ZQuery2SUBTOTAL: TFloatField;
    ZQuery2DESCONTO: TFloatField;
    ZQuery2ACRESCIMO: TFloatField;
    ZQuery2TOTAL: TFloatField;
    ZQuery2SITUACAO: TIntegerField;
    ZQuery2ID: TIntegerField;
    ZQuery2CODIGO_COMANDA: TStringField;
    ZQuery2BAIXADO: TStringField;
    lHTTP: TIdHTTP;
    IdHTTP1: TIdHTTP;
    XMLEnvio: TXMLDocument;
    XMLDocument1: TXMLDocument;
    qrconsulta: TZQuery;
    qrIndice: TZQuery;
    qrexec: TZQuery;
    qrNCMCODNCMNBS: TStringField;
    qrNCMEX: TStringField;
    qrNCMTIPO: TStringField;
    qrNCMDESCRICAO: TStringField;
    qrNCMNACIONALFEDERAL: TFloatField;
    qrNCMIMPORTADOSFEDERAL: TFloatField;
    qrNCMESTADUAL: TFloatField;
    qrNCMMUNICIPAL: TFloatField;
    qrNCMVIGENCIAINICIO: TStringField;
    qrNCMVIGENCIAFIM: TStringField;
    qrNCMCHAVE: TStringField;
    qrNCMVERSAO: TStringField;
    qrNCMFONTE: TStringField;
    qrNCMALIQNAC: TFloatField;
    qrNCMALIQIMP: TFloatField;
    qrNCMTABELA: TIntegerField;
    qrNCMID: TIntegerField;
    qrIndiceID: TIntegerField;
    qrIndiceCHAVECONSULTA: TStringField;
    qrIndiceOBSOS: TMemoField;
    qrIndiceCONDOS: TMemoField;
    qrosSTATUSREG: TStringField;
    qrosDAV: TStringField;
    qrosDAV_IMPRESSO: TIntegerField;
    qrosDAV_ATUAL: TStringField;
    qrosCODUSU: TStringField;
    qratualiza: TZQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure qrLogBeforePost(DataSet: TDataSet);
    procedure qrsubgrupoBeforePost(DataSet: TDataSet);
    procedure qrgrade_subgrupoBeforePost(DataSet: TDataSet);
    procedure qrfiscal_cstAfterPost(DataSet: TDataSet);
    procedure qrfiscal_cstAfterDelete(DataSet: TDataSet);
    procedure qrservicos_periodicosCalcFields(DataSet: TDataSet);
    procedure qrproduto_movBeforePost(DataSet: TDataSet);
    procedure qrrelatorioAfterPost(DataSet: TDataSet);
    procedure qrfiscal_cstBeforePost(DataSet: TDataSet);
    procedure qrmarcaBeforePost(DataSet: TDataSet);
    procedure qrgrupoBeforePost(DataSet: TDataSet);
    procedure qrfornecedorBeforePost(DataSet: TDataSet);
    procedure qrclienteBeforePost(DataSet: TDataSet);
    procedure qradic_mestreAfterPost(DataSet: TDataSet);
    procedure time_gpTimer(Sender: TObject);
    procedure qragendaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
     procedure atualizancm(ncm:string);
     procedure atualizaosi;


  end;

var
  frmmodulo: Tfrmmodulo;
  copia_origem, copia_destino : string; // variaveis da copia de seguranca
  caminho_fotos_produtos : string; // diretorio onde se encontrarao as imagens dos produtos
  caminho_fotos_clientes : string; // diretorio onde se encontrarao as imagens dos clientes
  telaprincipal : string; // variavel para mudar a tela principal
  movimento_venda : integer; // variavel para verificar se a venda estah sendo incluida ou alterada




  mascara_valor, mascara_qtde : string;

  decimal_valor, decimal_qtde : integer;
  codigo_it : string;
    numero_vendax : string;

  mostra_principal : string;
  nova_venda : boolean;
  registro_terminal : string;


  //complus
  CD_CLI, CD_FOR, CD_PRO, CD_MAR, CD_GRU, CD_SUB : string;

  NUMERO_NOTAZ : STRING;
  VALOR_NOTAZ : REAL;



  //excluir
  data_inicial, data_final : tdatetime;
  produto_remarca : boolean;



  impressora_venda : string;
  impressora_os : string;

  ecf_modelo : string;
  ecf_porta  : string;

  arredonda : boolean;


  lancar_por_total, ramo, int_retorno : integer;

  emitente_codigo, emitente_uf, emitente_nome, emitente_fantasia, emitente_endereco, emitente_cidade, emitente_cep, emitente_cnpj, emitente_telefone, emitente_ie : string;

  ESTOQUE_NEGATIVO : BOOLEAN;

  nxcupom : string;
  nivel_usuario : integer;
  codigo_usuario : string;
  produto_loc, PRODUTO_LOC_NOME : STRING;

  parametro_pesquisa,
  resultado_pesquisa1, resultado_pesquisa2, resultado_pesquisa3,
  resultado_pesquisa4, resultado_pesquisa5, resultado_pesquisa6,
  resultado_pesquisa7, RESULTADO_PESQUISA8 : string;

  SERVIDOR_ECF : STRING;
  busca_preco : string;

  limite_disponivel : real;

  CHEQUE_CODCLIENTE, CHEQUE_VENDA : STRING;

  numero_cupomX : string;

  programa_balanca : string;
  nf_obs1, nf_obs2, nf_obs3 : string;



  CAMPO_INI, CAMPO_QTDE, RESULTADO_INI, RESULTADO_QTDE : INTEGER;
   FFINANCEI,    FDINHEIRO, FCHEQUEAV, FCHEQUEAP, FCARTAOCR, FCARTAODB, FPROMISSO, FCONVENIO, FCONVENIV : STRING;

    ecf_impressao, abre_gaveta,altera_custo,desbloqueia_cliente : integer;
    busca_produto, importa_quantidade_nota : integer;
    busca_produto_codigo : string;

    ALIQUOTA_ECF : array[0..30] of STRING;
    ecf_bematech_yanco : string;


    atualiza_produto_novo : boolean;
    procura_sintegra : boolean;

   imp_duplicata,verifica_prestacao_atrazo,ecf_cupom_vinculado_carne,ecf_cupom_vinculado_produtos, ecf_cupom_vinculado : string;

   prevenda_tipo : string;

   logomarca, logo_dataSAC : string;

   btn_gerar : string;

   VENDA_VEICULO : BOOLEAN;


   FI_LANCTO, FI_CODIGO, FI_BORDERO, FI_PROPOSTA, FI_VENCIMENTO, FI_NOME,
   FI_DATA, FI_CLIENTE, FI_VALOR, FI_OBS, FI_VENDA, FI_COMISSAO, FI_LIQUIDO : STRING; // VARIAVEIS DE LANCAMENTO DE VENDA FINANCEIRA


   nivel_exclusao : integer;


   //TEF_DIAL
      tempo_gp : integer;
      time_tef : integer;
   //FIM

  vimp_comprovante,vimp_pagamento : Boolean;
  iTempoEsperaTC : integer;
  status_novartis : Boolean;
  novartis_itens_enviados,novartis_itens_aprovados : integer;
  venvio_novartis,vretorno_novartis : string;

  vnumero_inclui_nota, vnumero_inclui_cupom : string;
  serial_entrada : Boolean;

  ALTERA_UNITARIO : BOOLEAN;

  codifica_nota_fiscal : integer;

  vcredito_icms,vpis,vcofins : Double;

  sUsa_NFE : string;

  BuscaChave : string;

implementation

uses principal, ecf, produto, funcoes_ibpt, UFuncoes;

{$R *.dfm}

procedure Tfrmmodulo.DataModuleCreate(Sender: TObject);
var
  txt : textfile;
  entrada : string;
  ARQUIVO:STRING;
  Hand : THandle;
  caminho : string;
  texto : string;
  complus:string;
begin

  //econexao2.Connect;
  //conexaolocal.Connect;
  //conexao.Connect;
  //conexao_ecfserver.Connect;

  //econexao.Connected := true;

  complus := 'não';
  sUsa_NFE := '2';


  // formata as datas da opções regionais
  if ShortDateFormat <> 'dd/MM/yyyy' then
    begin
      ThousandSeparator := '.';
      DecimalSeparator := ',';
      ShortDateFormat := 'dd/MM/yyyy';
    end;

  time_tef := 0;
  nivel_exclusao := 4;
  produto_remarca := true;
  prevenda_tipo := '2';
  programa_balanca := '\Filizola\TSC\TSC.exe';
  conexao.connected       := false;
  conexaolocal.Connected  := false;
  conexao_ecfserver.connected := false;
  //complus
  conexao_adic.Connected  := false;

  caminho :=extractfilepath(application.ExeName)+'cfg\config.ini'; // abre o arq configuração atual

  BuscaChave := 'Ecfcom.dll';

  {
  if caminho <> '\DATASAC\server\cfg\config.ini' then
  begin
    frmprincipal.pfundo.color := $00C6F3FB;
    frmprincipal.pfundo.ColorShadow := $00C6F3FB;
    frmprincipal.pfundo.ColorHighLight := $00C6F3FB;
  end;
  }

  assignfile(txt,caminho);

  reset(txt);
  while not eof(txt) do
  begin
    readln(txt,entrada);
    // Tela Principal
    if copy(entrada,1,7) = '000-000' then telaprincipal  := trim(copy(entrada,9,50));
    IF COPY(entrada,1,7) = 'arq-001' then arquivo := copy(entrada,9,1);

    // SERVIDOR DE ECF
    IF COPY(entrada,1,7) = 'ecf-ser' then servidor_ecf := copy(entrada,9,1);
    // configuracoes da copia de segurança
    if copy(entrada,1,7) = '000-001' then copia_origem  := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = '000-002' then copia_destino := trim(copy(entrada,9,50));

    //------------------------------------
    if copy(entrada,1,7) = '999-001' then conexao.database := trim(copy(entrada,9,50));

    if copy(entrada,1,7) = '999-001' then SQLConnection.Params.Values['DataBase'] := trim(copy(entrada,9,50));

    SQLConnection.Params.Values['SQLDialect'] := '1';

    if copy(entrada,1,7) = '999-002' then conexao.hostname := trim(copy(entrada,9,50));

    if copy(entrada,1,7) = '999-002' then
    begin
      if trim(copy(entrada,9,1)) = '' then
        frmprincipal.caption := 'DataSAC 2.5 | Server - PAF 1.12                [ Servidor Local ]'
      else
        frmprincipal.caption := 'DataSAC 2.5 | Cliente- PAF 1.12                [ Servidor: '+trim(copy(entrada,9,50))+' ]';
    end;

    // banco de dados LOCAL
    if copy(entrada,1,7) = 'loc-001' then conexaolocal.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'loc-002' then conexaolocal.hostname := trim(copy(entrada,9,50));

    //complus -  banco de dados adicional
    if copy(entrada,1,7) = 'adi-001' then conexao_adic.database := trim(copy(entrada,9,50));
    if copy(entrada,1,7) = 'adi-002' then conexao_adic.hostname := trim(copy(entrada,9,50));

    if copy(entrada,1,7) = 'complus' then
       if copy(entrada,9,3) <> 'não' then
          begin

            complus := 'sim';
            
          end;
       //endi
    //endi




    // fotos dos produtos
    if copy(entrada,1,7) = 'img-001' then caminho_fotos_produtos := trim(copy(entrada,9,50));
    // fotos dos clientes
    if copy(entrada,1,7) = 'img-002' then caminho_fotos_clientes := trim(copy(entrada,9,50));

    IF COPY(ENTRADA,1,7) = 'FDINHEI' THEN FDINHEIRO := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCHEQAV' THEN FCHEQUEAV := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCHEQAP' THEN FCHEQUEAP := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCARTCR' THEN FCARTAOCR := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCARTDB' THEN FCARTAODB := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FPROMIS' THEN FPROMISSO := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCONVEO' THEN FCONVENIO := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FCONVEV' THEN FCONVENIV := trim(copy(entrada,9,50));
    IF COPY(ENTRADA,1,7) = 'FFINANC' THEN FFINANCEI := trim(copy(entrada,9,50));

    IF COPY(ENTRADA,1,7) = 'PIC-R60' THEN CAMPO_INI                 :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'PQC-R60' THEN CAMPO_QTDE                :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'PIR-R60' THEN RESULTADO_INI             :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'PQR-R60' THEN RESULTADO_QTDE            :=  STRTOINT(trim(copy(entrada,9,50)));
    IF COPY(ENTRADA,1,7) = 'ecf_imp' THEN ecf_impressao             :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'abr-gav' THEN abre_gaveta               :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'bem-yan' THEN ecf_bematech_yanco        :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ecf_cnf' THEN ecf_cupom_vinculado       :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ecf_cnc' THEN ecf_cupom_vinculado_carne :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'ver_deb' THEN verifica_prestacao_atrazo :=  trim(copy(entrada,9,1));
    IF COPY(ENTRADA,1,7) = 'alt_cus' THEN altera_custo              :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'des_cli' THEN desbloqueia_cliente       :=  STRTOINT(trim(copy(entrada,9,1)));
    if COPY(ENTRADA,1,7) = 'ali-001' THEN aliquota_ecf[1]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-002' THEN aliquota_ecf[2]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-003' THEN aliquota_ecf[3]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-004' THEN aliquota_ecf[4]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-005' THEN aliquota_ecf[5]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-006' THEN aliquota_ecf[6]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-007' THEN aliquota_ecf[7]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-008' THEN aliquota_ecf[8]  := trim(copy(entrada,9,5));
    if COPY(ENTRADA,1,7) = 'ali-009' THEN aliquota_ecf[9]  := trim(copy(entrada,9,5));
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
    if copy(entrada,1,7) = 'bus-pre' then busca_preco := copy(entrada,9,1);
    if copy(entrada,1,7) = 'prg-bal' then programa_balanca := copy(entrada,9,100);
    if copy(entrada,1,7) = 'pdv-loj' then prevenda_tipo := copy(entrada,9,1);
    if copy(entrada,1,7) = 'log-mar' then logomarca := copy(entrada,9,200);
    if copy(entrada,1,7) = 'log-sis' then logo_datasac :=  copy(entrada,9,1);
    if copy(entrada,1,7) = 'btn-rec' then btn_gerar := copy(entrada,9,1);
    if copy(entrada,1,7) = 'ver-dad' then mostra_principal := copy(entrada,9,1);
    IF COPY(ENTRADA,1,7) = 'aju-usu' THEN nivel_exclusao  :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'lan_tot' THEN lancar_por_total := STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'usa-tef' THEN if  trim(copy(entrada,9,1)) = '1' then usa_tef := true else usa_tef := false;
    IF COPY(ENTRADA,1,7) = 'usa-tec' THEN if  trim(copy(entrada,9,1)) = '1' then usa_tecban := true else usa_tecban := false;
    IF COPY(ENTRADA,1,7) = 'tim-tef' THEN time_tef :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'imp-qnt' THEN importa_quantidade_nota :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'cod_nfi' THEN codifica_nota_fiscal :=  STRTOINT(trim(copy(entrada,9,1)));
    IF COPY(ENTRADA,1,7) = 'usa-nfe' THEN sUsa_NFE := trim(copy(entrada,9,1));

  end;
  try
  try
  conexao.Connected  := true;
  conexaolocal.Connected  := true;
  Conexao.AutoCommit := false;

  if complus = 'sim' then
     conexao_adic.connected  := true;
  //endi
  
  {IBConexao.Connected := false;
  IBConexao.DatabaseName := conexao.HostName+':'+conexao.Database;
  IBConexao.Connected := true;}

  eConexao.close;
  eConexao.Server := conexao.HostName;
  eConexao.Database := conexao.Database;
  eConexao.open;

  conexao_ecfserver.Connected  := false;
  conexao_ecfserver.hostname   := conexao.HostName;
  conexao_ecfserver.Database   := conexao.Database;
  conexao_ecfserver.Connected  := TRUE;

  eConexao2.Connected  := false;
  eConexao2.hostname   := conexao.HostName;
  eConexao2.Database   := conexao.Database;
  eConexao2.Connected  := TRUE;

  except
   showmessage('Erro ao carregar o DataModule');
  end;
  finally
  end;

  qrconfig.open;
  ecf_modelo := qrconfig.fieldbyname('ecf_modelo').asstring;
  ecf_porta := qrconfig.fieldbyname('ecf_porta').asstring;


  // cupom vinculado

  ecf_cupom_vinculado := inttostr(qrconfigIMPRIME_CUPOM_VINCULADO.AsInteger);
  ecf_cupom_vinculado_produtos := inttostr(qrconfigIMPRIME_PRODUTOS_VINCULADOS.AsInteger);
  ecf_cupom_vinculado_carne := inttostr(qrconfigIMPRIME_COMPROVANTE_DEBITO.AsInteger);

  // imprimir duplicatas
  imp_duplicata := inttostr(qrconfigIMPRIME_DUPLICATA.AsInteger);

  if ecf_modelo = 'URANO' then
    begin
//       ECF.InicializaDLL(ECF_PORTA);
    end;



  WITH FRMPRINCIPAL DO
    BEGIN
      If ecf_modelo <> '' then
      begin
        pstatus.Panels[9].Text := qrconfig.fieldbyname('ecf_caixa').AsString;
        pstatus.Panels[10].Text := ecf_modelo;
        pstatus.Panels[11].Text := qrconfig.fieldbyname('ecf_serial').asstring;

      end;
    END;

  ramo := qrconfig.fieldbyname('ramo_atividade').asinteger;


  impressora_venda := qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

    IF QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
       ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;



    CASE qrconfig.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER OF
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
    4 : BEGIN
          mascara_qtde := '###,###,##0.0000';
          decimal_qtde := 4;
        end;
    5 : BEGIN
          mascara_qtde := '###,###,##0.00000';
          decimal_qtde := 5;
        end;
    6 : BEGIN
          mascara_qtde := '###,###,##0.000000';
          decimal_qtde := 6;
        end;
    7 : BEGIN
          mascara_qtde := '###,###,##0.0000000';
          decimal_qtde := 7;
        end;


    end;
    CASE qrconfig.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER OF
    2 : BEGIN
          mascara_valor := '###,###,##0.00';
          decimal_valor := 2;
      END;
    3 : BEGIN
          mascara_valor := '###,###,##0.000';
          decimal_valor := 3;
        END;
    4 : BEGIN
          mascara_valor := '###,###,##0.0000';
          decimal_valor := 4;
        END;
    5 : BEGIN
          mascara_valor := '###,###,##0.00000';
          decimal_valor := 5;
        END;
    6 : BEGIN
          mascara_valor := '###,###,##0.000000';
          decimal_valor := 6;
        END;
    7 : BEGIN
          mascara_valor := '###,###,##0.0000000';
          decimal_valor := 7;
        END;


    end;


        qrprodutoESTOQUE.DisplayFormat := mascara_qtde;
        qrprodutoESTOQUEMINIMO.DisplayFormat := mascara_qtde;
        qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
        qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
        qrprodutoPRECOCUSTO_ANTERIOR.DisplayFormat := mascara_valor;
        qrprodutoPRECOVENDA_ANTERIOR.DisplayFormat := mascara_valor;
        qrprodutoCUSTOMEDIO.DisplayFormat := mascara_valor;
        qrprecoCUSTO_COMPRA.DisplayFormat := mascara_valor;
        qrprecoVALOR_ULTIMA_COMPRA.DisplayFormat := mascara_valor;
        qrprecoPRECO_VENDA.DisplayFormat := mascara_valor;
        qrprecoLUCRO.DisplayFormat := mascara_valor;

        qremitente.open;

        emitente_codigo   := qremitente.fieldbyname('codigo').asstring;
        emitente_nome     := qremitente.fieldbyname('nome').asstring;
        emitente_fantasia := qremitente.fieldbyname('fantasia').asstring;
        emitente_endereco := qremitente.fieldbyname('endereco').asstring+' - '+qremitente.fieldbyname('bairro').asstring;
        emitente_cidade   := qremitente.fieldbyname('cidade').asstring+'/'+qremitente.fieldbyname('uf').asstring;
        emitente_cep      := qremitente.fieldbyname('cep').asstring;
        emitente_telefone := qremitente.fieldbyname('telefone').asstring;
        emitente_cnpj     := qremitente.fieldbyname('cnpj').asstring;
        emitente_ie       := qremitente.fieldbyname('ie').asstring;
        emitente_uf       := qremitente.fieldbyname('uf').asstring;


        res_empresa       := qremitenteCODIGO.AsString;
        res_rsocial       := qremitenteNOME.AsString;
        res_cnpj          := qremitenteCNPJ.AsString;

        parametro_pesquisa := '';


end;

procedure Tfrmmodulo.qrLogBeforePost(DataSet: TDataSet);
begin
  qrlog.FieldValues['codigo'] :=  frmprincipal.codifica('000002');
end;

procedure Tfrmmodulo.qrsubgrupoBeforePost(DataSet: TDataSet);
begin

  if qrsubgrupo.fieldbyname('subgrupo').asstring = '' then abort;
  qrsubgrupo.fieldbyname('subgrupo').asstring :=
  ansiuppercase(qrsubgrupo.fieldbyname('subgrupo').asstring);

  if frmmodulo.qrsubgrupo.state = dsinsert then
  begin
    frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring := frmprincipal.codifica('000018');
    frmmodulo.qrsubgrupo.FieldByName('codgrupo').asstring := frmmodulo.qrgrupo.fieldbyname('codigo').asstring;
  end;

    if cd_sub = '1' then
    begin
      try
        if qrsubgrupo.State = dsinsert then
        begin
          qradic.close;
          qradic.sql.clear;
          qradic.sql.add('select * from c000018 where codigo = ''xxxxxx''');
          qradic.open;
          qradic.insert;
          qradic.FieldValues['CODIGO;SUBGRUPO;codgrupo'] :=
          qrsubgrupo.FieldValues['CODIGO;SUBGRUPO;codgrupo'];
          qradic.post;
          conexao_adic.Commit;
        end;
      except
      end;
    end;

end;

procedure Tfrmmodulo.qrgrade_subgrupoBeforePost(DataSet: TDataSet);
begin
if frmmodulo.qrgrade_subgrupo.State = dsinsert then
begin
  frmmodulo.qrgrade_subgrupo.fieldbyname('codigo').asstring := frmprincipal.codifica('000020');
  frmmodulo.qrgrade_subgrupo.FieldByName('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
end;
end;

procedure Tfrmmodulo.qrfiscal_cstAfterPost(DataSet: TDataSet);
begin
  conexao.Commit;
end;

procedure Tfrmmodulo.qrfiscal_cstAfterDelete(DataSet: TDataSet);
begin
  conexao.Commit;
end;

procedure Tfrmmodulo.qrservicos_periodicosCalcFields(DataSet: TDataSet);
begin
  qrservicos_periodicos.FieldByName('proxima_manutencao').AsDateTime :=
  qrservicos_periodicos.FieldByName('ultima_manutencao').AsDateTime +
  qrservicos_periodicos.FieldByName('periodo').AsInteger;
end;

procedure Tfrmmodulo.qrproduto_movBeforePost(DataSet: TDataSet);
begin
    case qrproduto_mov.fieldbyname('movimento').asinteger of
    0,10 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    1,3,7,8,12,13,16 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat;
    2,4,5,6,9,11,14,15,17,18,19,20 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := qrproduto_mov.FieldByName('qtde').asfloat * (-1);
    99 : qrproduto_mov.FieldByName('movimento_estoque').asfloat := 0;
    end;
end;

procedure Tfrmmodulo.qrrelatorioAfterPost(DataSet: TDataSet);
begin
  conexaolocal.Commit;
end;

procedure Tfrmmodulo.qrfiscal_cstBeforePost(DataSet: TDataSet);
begin
  qrfiscal_cst.fieldbyname('situacao').asstring :=
  ansiuppercase(qrfiscal_cst.fieldbyname('situacao').asstring);
end;

procedure Tfrmmodulo.qrmarcaBeforePost(DataSet: TDataSet);
begin
    if cd_mar = '1' then
    begin
      try
        if qrmarca.State = dsinsert then
        begin
          qradic.close;
          qradic.sql.clear;
          qradic.sql.add('insert into c000019');
          qradic.sql.add('(codigo,nome)');
          qradic.sql.add('values');
          qradic.sql.add('(:codigox,:nomex)');
          qradic.params.parambyname('codigox').asstring := qrmarca.fieldbyname('codigo').asstring;
          qradic.params.parambyname('nomex').AsString   := qrmarca.fieldbyname('nome').asstring;
          qradic.execsql;
          conexao_adic.Commit;
        end;
      except
      end;
    end;

end;

procedure Tfrmmodulo.qrgrupoBeforePost(DataSet: TDataSet);
begin
    if cd_gru = '1' then
    begin
    try
      if qrgrupo.State = dsinsert then
      begin
        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000017 where codigo = ''xxxxxx''');
        qradic.open;
        qradic.insert;
        qradic.FieldValues['CODIGO;GRUPO'] :=
        qrgrupo.FieldValues['CODIGO;GRUPO'];
        qradic.post;
        conexao_adic.Commit;
      end;
    except
    end;
    end;
end;

procedure Tfrmmodulo.qrfornecedorBeforePost(DataSet: TDataSet);
var
  vcodigo_fornecedor : string;
begin

      IF qrfornecedor.STATE = DSINSERT THEN
        BEGIN
          if cd_for = '1' then
            begin
              try
                if qrfornecedor.State = dsinsert then
                  begin
                    qradic.close;
                    qradic.sql.clear;
                    qradic.sql.add('select * from c000009 where codigo = ''xxxxxx''');
                    qradic.open;
                    qradic.insert;
                    qradic.FieldValues['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo'] :=
                    qrfornecedor.FieldValues['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo'];
                    qradic.post;
                    conexao_adic.Commit;
                end;
              except
              end;
            end;
         end
      ELSE IF qrfornecedor.STATE = DSEDIT THEN
        BEGIN
          if cd_for = '1' then
            begin
              try
                if qrfornecedor.State = dsedit then
                  begin

                    vcodigo_fornecedor := qrfornecedor.fieldbyname('codigo').asstring;

                    qradic.close;
                    qradic.sql.clear;
                    qradic.sql.add('select * from c000009 where codigo = '''+vcodigo_fornecedor+'''');
                    qradic.open;

                    if qradic.RecordCount > 0 then
                      begin
                        qradic.Edit;
                        qradic.FieldValues['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo'] :=
                        qrfornecedor.FieldValues['CODIGO;NOME;FANTASIA;IE;CNPJ;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;TELEFONE1;TELEFONE2;FAX;tipo'];
                        qradic.post;
                        conexao_adic.Commit;
                     end;
                 end;
                except
                end;
            end;
        END;


end;

procedure Tfrmmodulo.qrclienteBeforePost(DataSet: TDataSet);
var
  vcodigo_cliente : string;
begin
    if cd_cli = '1' then
    begin
    try
      if qrcliente.State = dsinsert then
      begin
        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000007 where codigo = ''xxxxxx''');
        qradic.open;
        qradic.insert;





        qradic.FieldValues    ['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'+
                                'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'+
                                'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'+
                                'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'+
                                'CODREGIAO;CODCONVENIO;CODUSUARIO'] :=
        qrcliente.FieldValues['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'+
                                'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'+
                                'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'+
                                'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'+
                                'CODREGIAO;CODCONVENIO;CODUSUARIO'];
        qradic.post;
        conexao_adic.Commit;
      end

      else if qrcliente.State = dsedit then
      begin

        vcodigo_cliente := qrcliente.fieldbyname('codigo').asstring;

        qradic.close;
        qradic.sql.clear;
        qradic.sql.add('select * from c000007 where codigo = '''+vcodigo_cliente+'''');
        qradic.open;
        qradic.Edit;
        qradic.FieldValues['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'+
                                'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'+
                                'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'+
                                'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'+
                                'CODREGIAO;CODCONVENIO;CODUSUARIO'] :=
        qrcliente.FieldValues['CODIGO;NOME;APELIDO;ENDERECO;BAIRRO;CIDADE;UF;CEP;COMPLEMENTO;MORADIA;'+
                                'TIPO;SITUACAO;TELEFONE1;TELEFONE2;TELEFONE3;CELULAR;EMAIL;RG;CPF;FILIACAO;'+
                                'ESTADOCIVIL;CONJUGE;PROFISSAO;EMPRESA;RENDA;LIMITE;REF1;REF2;CODVENDEDOR;'+
                                'DATA_CADASTRO;DATA_ULTIMACOMPRA;OBS1;OBS2;OBS3;OBS4;OBS5;OBS6;NASCIMENTO;'+
                                'CODREGIAO;CODCONVENIO;CODUSUARIO'];
        qradic.post;
        conexao_adic.Commit;
      end;

    except
    end;
    end;

end;

procedure Tfrmmodulo.qradic_mestreAfterPost(DataSet: TDataSet);
begin
  conexao_adic.commit;
end;

procedure Tfrmmodulo.time_gpTimer(Sender: TObject);
begin
  //TEF_DIAL
  tempo_gp := tempo_gp + 1;
end;

procedure Tfrmmodulo.qragendaBeforePost(DataSet: TDataSet);
begin
  qragenda.FieldValues['codigo'] := frmprincipal.codifica('000034');
end;



procedure tfrmmodulo.atualizancm(ncm:string);
var




  faliqnac, faliqimp:Currency;
  sncmnbs, sorigem, sex:string;
  itabela:Integer;
  ssita:string;
  icodsita:integer;

  stipo:String;
  sdescricao:String;
  festadual:real;
  fmunicipal:real;


  saliqnac:String;
  saliqimp:String;
  sestadual:String;
  smunicipal:String;

begin

  if ncm = '' then
     exit;

  try

      qrIndice.Active := false;
      qrIndice.SQL.Clear;
      qrIndice.SQL.Add('select * from indice');
      qrIndice.Active := true;

      XMLDocument1.Active := False;
      XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsibpt.php?chave='+qrIndice.fieldbyname('CHAVECONSULTA').asString+'&campo=codigo'+'&valor='+ncm+'&uf='+ lowercase( sunidadefederativa  ));
      XMLDocument1.Active := True;

      sex       := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['ex'].Text;
      sversao       := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
      stipo      := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['tipo'].Text;
      sdescricao   := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['descricao'].Text;
      svigenciainicio       := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciainicio'].Text;
      svigenciafim   := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['vigenciafim'].Text;
      schave := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['chave'].Text;
      sversao := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['versao'].Text;
      sfonte :=  XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['fonte'].Text;


      saliqnac      :=  XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['nacionalfederal'].Text;
      saliqimp           := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['importadosfederal'].Text;
      sestadual    := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['estadual'].Text;
      smunicipal := XMLDocument1.ChildNodes['wsibpt'].ChildNodes['response'].ChildNodes['municipal'].Text;


      saliqnac      :=  Decimal_Is_Coma( saliqnac );
      saliqimp           := Decimal_Is_Coma( saliqimp );
      sestadual    := Decimal_Is_Coma(sestadual);
      smunicipal := Decimal_Is_Coma(smunicipal);

      faliqnac      :=  strtofloat( saliqnac );
      faliqimp           := strtofloat( saliqimp );
      festadual    := strtofloat( sestadual );
      fmunicipal := strtofloat( smunicipal );




      qrexec.Active := false;
      qrexec.SQL.Clear;
      qrexec.SQL.Add('insert into ncm (codncmnbs, ex, tipo, descricao, nacionalfederal, importadosfederal, estadual, municipal, vigenciainicio, vigenciafim, chave, versao, fonte)');
      qrexec.SQL.Add(' values (:codncmnbs, :ex, :tipo, :descricao, :nacionalfederal, :importadosfederal, :estadual, :municipal, :vigenciainicio, :vigenciafim, :chave, :versao, :fonte)');

      qrexec.Params.ParamByName('codncmnbs').AsString :=  ncm;
      qrexec.Params.ParamByName('ex').AsString :=  sex;
      qrexec.Params.ParamByName('versao').AsString :=  sversao;
      qrexec.Params.ParamByName('tipo').AsString :=  stipo;
      qrexec.Params.ParamByName('descricao').AsString :=  sdescricao;

      qrexec.Params.ParamByName('vigenciainicio').AsString :=  svigenciainicio;
      qrexec.Params.ParamByName('vigenciafim').AsString :=    svigenciafim;

      qrexec.Params.ParamByName('chave').AsString :=    schave;
      qrexec.Params.ParamByName('fonte').AsString :=    sfonte;

      qrexec.Params.ParamByName('nacionalfederal').AsFloat :=    faliqnac;
      qrexec.Params.ParamByName('importadosfederal').AsFloat :=      faliqimp;
      qrexec.Params.ParamByName('estadual').AsFloat :=      festadual;
      qrexec.Params.ParamByName('municipal').AsFloat :=      fmunicipal;

      qrexec.ExecSQL;








  except


      sex       := '';
      sversao       := '';
      stipo      := '';
      sdescricao   := '';
      svigenciainicio       := '';
      svigenciafim   := '';
      schave := '';
      sversao := '';
      sfonte :=  '';



      faliqnac      :=  0;
      faliqimp           := 0;
      festadual    := 0;
      fmunicipal := 0;







  end;






end;




procedure tfrmmodulo.atualizaosi;
var

  lParamList: TStringList;
  lResponse : TStringStream;
  svalor, chave:string;
  x:integer;

begin

  x:=0;


  qrexec.Active := false;
  qrexec.SQL.Clear;
  qrexec.SQL.Add('select * from c000051 where (statusreg = '+quotedstr('I')+') or (statusreg = '+quotedstr('A')+')'  );
  qrexec.active  := true;

  qrindice.Active := false;
  qrindice.SQL.Clear;
  qrindice.SQL.Add('select * from indice');
  qrindice.Active := true;

  chave:=qrindice.fieldbyname('chaveconsulta').AsString;




  while not qrexec.Eof do
    begin


        try
            lParamList := TStringList.Create;
            lResponse := TStringStream.Create('');

            lParamList.Add('chave='+chave);
            lParamList.Add('modo='+qrexec.FieldByName('statusreg').AsString);
            lParamList.Add('codigo_local='+ inttostr( qrexec.FieldByName('codigo').Asinteger ));
            lParamList.Add('data='+formatdatetime('yyyy-mm-dd',qrexec.FieldByName('data').AsDatetime));
            lParamList.Add('codatendente='+qrexec.FieldByName('codatendente').AsString);
            lParamList.Add('tipo='+qrexec.FieldByName('tipo').AsString);
            lParamList.Add('codcliente='+qrexec.FieldByName('codcliente').AsString);
            lParamList.Add('solicitante='+qrexec.FieldByName('solicitante').AsString);
            lParamList.Add('marca='+qrexec.FieldByName('marca').AsString);
            lParamList.Add('modelo='+qrexec.FieldByName('modelo').AsString);
            lParamList.Add('serial='+qrexec.FieldByName('serial').AsString);
            lParamList.Add('atendimento='+qrexec.FieldByName('atendimento').AsString);
            lParamList.Add('defeito='+qrexec.FieldByName('defeito').AsString);
            lParamList.Add('obs='+qrexec.FieldByName('obs').AsString);
            lParamList.Add('detectado='+qrexec.FieldByName('detectado').AsString);
            lParamList.Add('detectado_data='+qrexec.FieldByName('detectado_data').AsString);
            lParamList.Add('detectado_codtecnico='+qrexec.FieldByName('detectado_codtecnico').AsString);
            lParamList.Add('situacao='+qrexec.FieldByName('situacao').AsString);
            lParamList.Add('conclusao_data='+qrexec.FieldByName('conclusao_data').AsString);
            lParamList.Add('conclusao_entregue='+qrexec.FieldByName('conclusao_entregue').AsString);
            lParamList.Add('retirado_por='+qrexec.FieldByName('retirado_por').AsString);
            lParamList.Add('codveiculo='+qrexec.FieldByName('codveiculo').AsString);
            lParamList.Add('km_inicial='+qrexec.FieldByName('km_inicial').AsString);
            lParamList.Add('km_final='+qrexec.FieldByName('km_final').AsString);
            lParamList.Add('codterceiro='+qrexec.FieldByName('codterceiro').AsString);
            lParamList.Add('terceiro_contato='+qrexec.FieldByName('terceiro_contato').AsString);
            lParamList.Add('terceiro_obs='+qrexec.FieldByName('terceiro_obs').AsString);
            lParamList.Add('codsetor='+qrexec.FieldByName('codsetor').AsString);
            lParamList.Add('cupomfiscal='+qrexec.FieldByName('cupomfiscal').AsString);
            lParamList.Add('st='+qrexec.FieldByName('st').AsString);
            lParamList.Add('chassi='+qrexec.FieldByName('chassi').AsString);
            lParamList.Add('cor='+qrexec.FieldByName('cor').AsString);
            lParamList.Add('combustivel='+qrexec.FieldByName('combustivel').AsString);
            lParamList.Add('numero_cupom_fiscal='+qrexec.FieldByName('numero_cupom_fiscal').AsString);
            lParamList.Add('codcaixa='+qrexec.FieldByName('codcaixa').AsString);
            lParamList.Add('detectado_hora='+qrexec.FieldByName('detectado_hora').AsString);
            lParamList.Add('hora='+qrexec.FieldByName('hora').AsString);
            lParamList.Add('intervencoes='+qrexec.FieldByName('intervencoes').AsString);
            lParamList.Add('dav='+qrexec.FieldByName('dav').AsString);
            lParamList.Add('dav_impresso='+qrexec.FieldByName('dav_impresso').AsString);
            lParamList.Add('dav_atual='+qrexec.FieldByName('dav_atual').AsString);

            svalor := floattostr(qrexec.FieldByName('servico_subtotal').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('servico_subtotal='+svalor);

            svalor := floattostr(qrexec.FieldByName('servico_desconto').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('servico_desconto='+svalor);

            svalor := floattostr(qrexec.FieldByName('servico_total').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('servico_total='+svalor);

            svalor := floattostr(qrexec.FieldByName('produto_subtotal').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('produto_subtotal='+svalor);

            svalor := floattostr(qrexec.FieldByName('produto_desconto').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('produto_desconto='+svalor);

            svalor := floattostr(qrexec.FieldByName('produto_total').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('produto_total='+svalor);

            svalor := floattostr(qrexec.FieldByName('desloc_combustivel').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('desloc_combustivel='+svalor);

            svalor := floattostr(qrexec.FieldByName('desloc_refeicao').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('desloc_refeicao='+svalor);

            svalor := floattostr(qrexec.FieldByName('desloc_hospedagem').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('desloc_hospedagem='+svalor);

            svalor := floattostr(qrexec.FieldByName('desloc_total').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('desloc_total='+svalor);


            svalor := floattostr(qrexec.FieldByName('terceiro_valor').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('terceiro_valor='+svalor);

            svalor := floattostr(qrexec.FieldByName('terceiro_comissao').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('terceiro_comissao='+svalor);

            svalor := floattostr(qrexec.FieldByName('terceiro_total').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('terceiro_total='+svalor);

            svalor := floattostr(qrexec.FieldByName('subtotal').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('subtotal='+svalor);

            svalor := floattostr(qrexec.FieldByName('desconto').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('desconto='+svalor);

            svalor := floattostr(qrexec.FieldByName('acrescimo').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('acrescimo='+svalor);

            svalor := floattostr(qrexec.FieldByName('total').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('total='+svalor);

            svalor := floattostr(qrexec.FieldByName('meio_dinheiro').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('meio_dinheiro='+svalor);

            svalor := floattostr(qrexec.FieldByName('meio_chequeav').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('meio_chequeav='+svalor);

            svalor := floattostr(qrexec.FieldByName('meio_chequeav').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('meio_chequeav='+svalor);

            svalor := floattostr(qrexec.FieldByName('meio_cartaocred').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('meio_cartaocred='+svalor);

            svalor := floattostr(qrexec.FieldByName('meio_cartaodeb').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('meio_cartaodeb='+svalor);

            svalor := floattostr(qrexec.FieldByName('meio_crediario').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('meio_crediario='+svalor);

            svalor := floattostr(qrexec.FieldByName('combustivel_nivel').Asfloat);
            svalor := decimal_is_point(svalor);
            lParamList.Add('combustivel_nivel='+svalor);

            lParamList.Add('prog=DataSAC');

            // Alteração ou exclusão de registro
            lParamList.Add('valor='+inttostr(qrexec.FieldByName('codigo').Asinteger));
            lParamList.Add('campo=codigo_local');

            try
                lHTTP := TIdHTTP.Create(nil);
                try
                  lHTTP.Post('http://aplicativos-marcosbras.rhcloud.com/wsos.php', lParamList, lResponse);
                  lResponse.Position := 0;
                  frmprincipal.reResp.Lines.LoadFromStream(lResponse);
                finally

                  lHTTP.Free;
                  lParamList.Free;
                  lResponse.Free();

                end;

                qratualiza.Active := false;
                qratualiza.SQL.Clear;
                qratualiza.SQL.Add('update c000051 set statusreg = '+ quotedstr('S')+' where codigo = '+quotedstr(qrexec.FieldByName('codigo').AsString)  );
                qratualiza.ExecSQL;

                conexao.Commit;
                
            except
              frmprincipal.reResp.Lines.Add( 'Conexão com servidor inativa');
            end;


            qrexec.Next;


        finally
           frmprincipal.reResp.Lines.Add( 'Atuallizado com sucesso');


        end;

    end;
  //endw





end;





end.
