unit uDados;

interface

uses
  Windows, Messages, SysUtils, Classes, DBXpress, DB, SqlExpr, Controls, Forms,
  FMTBcd, DBClient, Provider, Dialogs, ADODB, RpDefine, RpCon, RpConDS,
  RpConBDE, RpRave, DBTables, WinSkinData, DBGrids, Graphics, xmldom,
  XMLIntf, msxmldom, XMLDoc, IdBaseComponent, IdComponent, IdTCPConnection,
  IdTCPClient, IdHTTP;



type
  TfrmDados = class(TDataModule)
    Sql_Dados: TSQLConnection;
    dbx_Tipo_Pgto: TSQLQuery;
    dsp_Tipo_Pgto: TDataSetProvider;
    dbx_Tipo_PgtoCODIGO: TIntegerField;
    dbx_Tipo_PgtoDESCRICAO: TStringField;
    cds_Tipo_Pgto: TClientDataSet;
    cds_Tipo_PgtoCODIGO: TIntegerField;
    cds_Tipo_PgtoDESCRICAO: TStringField;
    dts_Tipo_Pgto: TDataSource;
    Dbx_Vencto: TSQLQuery;
    Dbx_VenctoCODIGO: TIntegerField;
    Dsp_Vencto: TDataSetProvider;
    Cds_Vencto: TClientDataSet;
    Dts_Vencto: TDataSource;
    Cds_VenctoCODIGO: TIntegerField;
    Dbx_Totais: TSQLQuery;
    ADO_Conexao: TADOConnection;
    ADO_Mestre: TADOQuery;
    Dbx_Dados: TSQLQuery;
    Dsp_Dados: TDataSetProvider;
    Cds_dados: TClientDataSet;
    Dts_Dados: TDataSource;
    Dbx_Indice: TSQLQuery;
    IntegerField2: TIntegerField;
    Dsp_Indice: TDataSetProvider;
    Cds_Indice: TClientDataSet;
    Dts_Indice: TDataSource;
    Dbx_IndiceOS: TIntegerField;
    Dbx_IndiceCCLI: TIntegerField;
    Dbx_IndiceNCO: TIntegerField;
    Dbx_IndiceVEN: TIntegerField;
    Dbx_IndicePEDS: TIntegerField;
    Dbx_IndicePEDE: TIntegerField;
    Dbx_IndicePEDO: TIntegerField;
    Dbx_IndiceCFOR: TIntegerField;
    Dbx_IndiceCOUT: TIntegerField;
    Dbx_IndiceOS1: TIntegerField;
    Dbx_IndiceNRECIBO: TIntegerField;
    Dbx_IndiceVLRHRMO: TFMTBCDField;
    Dbx_IndiceCAPLIC: TIntegerField;
    Dbx_IndiceOBS: TMemoField;
    Dbx_IndiceOBS1: TMemoField;
    Dbx_IndiceMENS: TStringField;
    Dbx_IndiceTXT: TStringField;
    Dbx_IndiceIMPBOBV: TStringField;
    Dbx_IndiceIMPBOBO: TStringField;
    Dbx_IndiceNCOPIASV: TSmallintField;
    Dbx_IndiceNCOPIASO: TSmallintField;
    Dbx_IndiceQDOOSAP: TSmallintField;
    Dbx_IndiceQDOOSIR: TSmallintField;
    Dbx_IndiceQDOENTCLI: TSmallintField;
    Dbx_IndiceQDODCLIKPR: TSmallintField;
    Dbx_IndiceCODPRINPRO: TSmallintField;
    Dbx_IndiceANOCONTABI: TSmallintField;
    Dbx_IndiceANOCONTP: TStringField;
    Dbx_IndiceJAN: TStringField;
    Dbx_IndiceFEV: TStringField;
    Dbx_IndiceMAR: TStringField;
    Dbx_IndiceABR: TStringField;
    Dbx_IndiceMAI: TStringField;
    Dbx_IndiceJUN: TStringField;
    Dbx_IndiceJUL: TStringField;
    Dbx_IndiceAGO: TStringField;
    Dbx_IndiceSETE: TStringField;
    Dbx_IndiceOUT: TStringField;
    Dbx_IndiceNOV: TStringField;
    Dbx_IndiceDEZ: TStringField;
    Dbx_IndiceAUTHTYPE: TSmallintField;
    Dbx_IndiceHOST: TStringField;
    Dbx_IndicePASS_WORD: TStringField;
    Dbx_IndicePORT: TSmallintField;
    Dbx_IndiceSOCKSAUTH: TSmallintField;
    Dbx_IndiceSOCKSVERSI: TSmallintField;
    Dbx_IndiceUSER_NAME: TStringField;
    Dbx_IndiceEMAIL: TStringField;
    Dbx_IndiceNOME: TStringField;
    Dbx_IndiceCAMPO13: TStringField;
    Dbx_IndiceCFB: TStringField;
    Dbx_IndiceCAX: TStringField;
    Dbx_IndiceOBCLI: TStringField;
    Dbx_IndiceOBVEN: TStringField;
    Dbx_IndiceLIMITEDESC: TFMTBCDField;
    Dbx_IndiceOBFECTELV: TStringField;
    Dbx_IndiceCODTIPO: TIntegerField;
    Dbx_IndiceGRAVAQUA: TStringField;
    Dbx_IndicePARC: TSmallintField;
    Dbx_IndiceCRIAPARC: TStringField;
    Dbx_IndiceMAXPARC: TSmallintField;
    Dbx_IndiceTPPARCBCO: TSmallintField;
    Dbx_IndiceCAMINHOBCOADO: TStringField;
    Dbx_IndiceLOGINADO: TStringField;
    Dbx_IndiceSENHAADO: TStringField;
    Cds_IndiceCODIGO: TIntegerField;
    Cds_IndiceOS: TIntegerField;
    Cds_IndiceCCLI: TIntegerField;
    Cds_IndiceNCO: TIntegerField;
    Cds_IndiceVEN: TIntegerField;
    Cds_IndicePEDS: TIntegerField;
    Cds_IndicePEDE: TIntegerField;
    Cds_IndicePEDO: TIntegerField;
    Cds_IndiceCFOR: TIntegerField;
    Cds_IndiceCOUT: TIntegerField;
    Cds_IndiceOS1: TIntegerField;
    Cds_IndiceNRECIBO: TIntegerField;
    Cds_IndiceVLRHRMO: TFMTBCDField;
    Cds_IndiceCAPLIC: TIntegerField;
    Cds_IndiceOBS: TMemoField;
    Cds_IndiceOBS1: TMemoField;
    Cds_IndiceMENS: TStringField;
    Cds_IndiceTXT: TStringField;
    Cds_IndiceIMPBOBV: TStringField;
    Cds_IndiceIMPBOBO: TStringField;
    Cds_IndiceNCOPIASV: TSmallintField;
    Cds_IndiceNCOPIASO: TSmallintField;
    Cds_IndiceQDOOSAP: TSmallintField;
    Cds_IndiceQDOOSIR: TSmallintField;
    Cds_IndiceQDOENTCLI: TSmallintField;
    Cds_IndiceQDODCLIKPR: TSmallintField;
    Cds_IndiceCODPRINPRO: TSmallintField;
    Cds_IndiceANOCONTABI: TSmallintField;
    Cds_IndiceANOCONTP: TStringField;
    Cds_IndiceJAN: TStringField;
    Cds_IndiceFEV: TStringField;
    Cds_IndiceMAR: TStringField;
    Cds_IndiceABR: TStringField;
    Cds_IndiceMAI: TStringField;
    Cds_IndiceJUN: TStringField;
    Cds_IndiceJUL: TStringField;
    Cds_IndiceAGO: TStringField;
    Cds_IndiceSETE: TStringField;
    Cds_IndiceOUT: TStringField;
    Cds_IndiceNOV: TStringField;
    Cds_IndiceDEZ: TStringField;
    Cds_IndiceAUTHTYPE: TSmallintField;
    Cds_IndiceHOST: TStringField;
    Cds_IndicePASS_WORD: TStringField;
    Cds_IndicePORT: TSmallintField;
    Cds_IndiceSOCKSAUTH: TSmallintField;
    Cds_IndiceSOCKSVERSI: TSmallintField;
    Cds_IndiceUSER_NAME: TStringField;
    Cds_IndiceEMAIL: TStringField;
    Cds_IndiceNOME: TStringField;
    Cds_IndiceCAMPO13: TStringField;
    Cds_IndiceCFB: TStringField;
    Cds_IndiceCAX: TStringField;
    Cds_IndiceOBCLI: TStringField;
    Cds_IndiceOBVEN: TStringField;
    Cds_IndiceLIMITEDESC: TFMTBCDField;
    Cds_IndiceOBFECTELV: TStringField;
    Cds_IndiceCODTIPO: TIntegerField;
    Cds_IndiceGRAVAQUA: TStringField;
    Cds_IndicePARC: TSmallintField;
    Cds_IndiceCRIAPARC: TStringField;
    Cds_IndiceMAXPARC: TSmallintField;
    Cds_IndiceTPPARCBCO: TSmallintField;
    Cds_IndiceCAMINHOBCOADO: TStringField;
    Cds_IndiceLOGINADO: TStringField;
    Cds_IndiceSENHAADO: TStringField;
    ADO_Detalhe: TADOQuery;
    ADO_Exec: TADOQuery;
    Dbx_Exec: TSQLQuery;
    Dbx_sVenda: TSQLQuery;
    IntegerField1: TIntegerField;
    Dsp_sVenda: TDataSetProvider;
    Cds_sVenda: TClientDataSet;
    IntegerField16: TIntegerField;
    Dts_sVenda: TDataSource;
    Dbx_Produtos: TSQLQuery;
    IntegerField4: TIntegerField;
    Dsp_Produtos: TDataSetProvider;
    Cds_Produtos: TClientDataSet;
    IntegerField18: TIntegerField;
    Dst_Produtos: TDataSource;
    Dbx_dProdutos: TSQLQuery;
    IntegerField5: TIntegerField;
    Dsp_dProdutos: TDataSetProvider;
    Cds_dProdutos: TClientDataSet;
    IntegerField6: TIntegerField;
    Dst_dProdutos: TDataSource;
    Dbx_dProdutosCDESCPROD: TIntegerField;
    Dbx_dProdutosPRCU: TFMTBCDField;
    Dbx_dProdutosPER: TBCDField;
    Dbx_dProdutosPRVE: TFMTBCDField;
    Dbx_dProdutosFOTO: TGraphicField;
    Dbx_dProdutosQUA: TFMTBCDField;
    Dbx_dProdutosCUNI: TIntegerField;
    Dbx_dProdutosCGRU: TIntegerField;
    Dbx_dProdutosCMAR: TIntegerField;
    Dbx_dProdutosQTDEMB: TBCDField;
    Dbx_dProdutosCBAR: TStringField;
    Dbx_dProdutosCAUX: TStringField;
    Dbx_dProdutosOBS: TMemoField;
    Dbx_dProdutosCFAB: TStringField;
    Dbx_dProdutosICMS: TFMTBCDField;
    Dbx_dProdutosESTMIN: TBCDField;
    Dbx_dProdutosESTMAX: TBCDField;
    Dbx_dProdutosIPI: TFMTBCDField;
    Dbx_dProdutosOUTIMPOST: TFMTBCDField;
    Dbx_dProdutosRESERVA: TFMTBCDField;
    Dbx_dProdutosSALDOEST: TBCDField;
    Dbx_dProdutosMESCLADO: TStringField;
    Dbx_dProdutosVALKM: TStringField;
    Dbx_dProdutosVALDATA: TDateField;
    Dbx_dProdutosIMP: TStringField;
    Dbx_dProdutosPRCUBS: TFMTBCDField;
    Dbx_dProdutosALIQCUS: TBCDField;
    Dbx_dProdutosSGLIMPFIS: TIntegerField;
    Dbx_dProdutosVLRADD: TFMTBCDField;
    Dbx_dProdutosOBNSERIE: TStringField;
    Cds_dProdutosCDESCPROD: TIntegerField;
    Cds_dProdutosPRCU: TFMTBCDField;
    Cds_dProdutosPER: TBCDField;
    Cds_dProdutosPRVE: TFMTBCDField;
    Cds_dProdutosFOTO: TGraphicField;
    Cds_dProdutosQUA: TFMTBCDField;
    Cds_dProdutosCUNI: TIntegerField;
    Cds_dProdutosCGRU: TIntegerField;
    Cds_dProdutosCMAR: TIntegerField;
    Cds_dProdutosQTDEMB: TBCDField;
    Cds_dProdutosCBAR: TStringField;
    Cds_dProdutosCAUX: TStringField;
    Cds_dProdutosOBS: TMemoField;
    Cds_dProdutosCFAB: TStringField;
    Cds_dProdutosICMS: TFMTBCDField;
    Cds_dProdutosESTMIN: TBCDField;
    Cds_dProdutosESTMAX: TBCDField;
    Cds_dProdutosIPI: TFMTBCDField;
    Cds_dProdutosOUTIMPOST: TFMTBCDField;
    Cds_dProdutosRESERVA: TFMTBCDField;
    Cds_dProdutosSALDOEST: TBCDField;
    Cds_dProdutosMESCLADO: TStringField;
    Cds_dProdutosVALKM: TStringField;
    Cds_dProdutosVALDATA: TDateField;
    Cds_dProdutosIMP: TStringField;
    Cds_dProdutosPRCUBS: TFMTBCDField;
    Cds_dProdutosALIQCUS: TBCDField;
    Cds_dProdutosSGLIMPFIS: TIntegerField;
    Cds_dProdutosVLRADD: TFMTBCDField;
    Cds_dProdutosOBNSERIE: TStringField;
    Dbx_dVenda: TSQLQuery;
    Dsp_dVenda: TDataSetProvider;
    Cds_dVenda: TClientDataSet;
    Dst_dVenda: TDataSource;
    Dbx_dVendaCODIGO: TIntegerField;
    Cds_dVendaCODIGO: TIntegerField;
    Cds_dProdutosnpro: TStringField;
    Dbx_sVendaPDESC: TFMTBCDField;
    Dbx_sVendaVALDESC: TFMTBCDField;
    Dbx_sVendaLIQUIDO: TFMTBCDField;
    Dbx_sVendaTOTAL: TFMTBCDField;
    Dbx_sVendaGARANTIA: TMemoField;
    Dbx_sVendaFRETE: TFMTBCDField;
    Dbx_sVendaDIN: TFMTBCDField;
    Dbx_sVendaDATA: TDateField;
    Dbx_sVendaCCLI: TIntegerField;
    Dbx_sVendaCREP: TIntegerField;
    Dbx_sVendaTROCO: TFMTBCDField;
    Dbx_sVendaTOTITENS: TIntegerField;
    Dbx_sVendaTOTBRUTO: TFMTBCDField;
    Dbx_sVendaOUTROAVIST: TFMTBCDField;
    Dbx_sVendaPARC: TSmallintField;
    Dbx_sVendaJUROS: TBCDField;
    Dbx_sVendaNPED: TIntegerField;
    Dbx_sVendaOBS: TMemoField;
    Dbx_sVendaCSIT: TIntegerField;
    Dbx_sVendaPRIPARC: TStringField;
    Dbx_sVendaTOTE: TFMTBCDField;
    Dbx_sVendaDATACAD: TDateField;
    Dbx_sVendaEM_CAIXA: TFMTBCDField;
    Dbx_sVendaCUSTOPECAS: TFMTBCDField;
    Dbx_sVendaCUSTOPECAE: TFMTBCDField;
    Dbx_sVendaSTATUS: TStringField;
    Dbx_sVendaNCF: TIntegerField;
    Dbx_sVendaVENDEDORST: TStringField;
    Dbx_sVendaCLIENTEST: TStringField;
    Dbx_sVendaENDERECOST: TStringField;
    Dbx_sVendaBAIRROST: TStringField;
    Dbx_sVendaFONEST: TStringField;
    Dbx_sVendaMUNICIPIOST: TStringField;
    Dbx_sVendaEMISSAOST: TDateField;
    Dbx_sVendaTOTALST: TFMTBCDField;
    Dbx_sVendaOPERACAOST: TStringField;
    Dbx_sVendaPAGAMENTOST: TStringField;
    Dbx_sVendaVENCIMENTOST: TDateField;
    Dbx_sVendaTOTALPST: TFMTBCDField;
    Dbx_sVendaDESCONTOST: TFMTBCDField;
    Dbx_sVendaDST: TStringField;
    Dbx_sVendaCONTATOST: TStringField;
    Dbx_sVendaCPFST: TStringField;
    Dbx_sVendaIEST: TStringField;
    Dbx_sVendaOBSST: TMemoField;
    Dbx_sVendaFECHADOST: TStringField;
    Dbx_sVendaRETORNOST: TDateField;
    Dbx_sVendaHORAST: TTimeField;
    Dbx_sVendaCUSTOST: TFMTBCDField;
    Dbx_sVendaCFUN: TIntegerField;
    Cds_sVendaPDESC: TFMTBCDField;
    Cds_sVendaVALDESC: TFMTBCDField;
    Cds_sVendaLIQUIDO: TFMTBCDField;
    Cds_sVendaTOTAL: TFMTBCDField;
    Cds_sVendaGARANTIA: TMemoField;
    Cds_sVendaFRETE: TFMTBCDField;
    Cds_sVendaDIN: TFMTBCDField;
    Cds_sVendaDATA: TDateField;
    Cds_sVendaCCLI: TIntegerField;
    Cds_sVendaCREP: TIntegerField;
    Cds_sVendaTROCO: TFMTBCDField;
    Cds_sVendaTOTITENS: TIntegerField;
    Cds_sVendaTOTBRUTO: TFMTBCDField;
    Cds_sVendaOUTROAVIST: TFMTBCDField;
    Cds_sVendaPARC: TSmallintField;
    Cds_sVendaJUROS: TBCDField;
    Cds_sVendaNPED: TIntegerField;
    Cds_sVendaOBS: TMemoField;
    Cds_sVendaCSIT: TIntegerField;
    Cds_sVendaPRIPARC: TStringField;
    Cds_sVendaTOTE: TFMTBCDField;
    Cds_sVendaDATACAD: TDateField;
    Cds_sVendaEM_CAIXA: TFMTBCDField;
    Cds_sVendaCUSTOPECAS: TFMTBCDField;
    Cds_sVendaCUSTOPECAE: TFMTBCDField;
    Cds_sVendaSTATUS: TStringField;
    Cds_sVendaNCF: TIntegerField;
    Cds_sVendaVENDEDORST: TStringField;
    Cds_sVendaCLIENTEST: TStringField;
    Cds_sVendaENDERECOST: TStringField;
    Cds_sVendaBAIRROST: TStringField;
    Cds_sVendaFONEST: TStringField;
    Cds_sVendaMUNICIPIOST: TStringField;
    Cds_sVendaEMISSAOST: TDateField;
    Cds_sVendaTOTALST: TFMTBCDField;
    Cds_sVendaOPERACAOST: TStringField;
    Cds_sVendaPAGAMENTOST: TStringField;
    Cds_sVendaVENCIMENTOST: TDateField;
    Cds_sVendaTOTALPST: TFMTBCDField;
    Cds_sVendaDESCONTOST: TFMTBCDField;
    Cds_sVendaDST: TStringField;
    Cds_sVendaCONTATOST: TStringField;
    Cds_sVendaCPFST: TStringField;
    Cds_sVendaIEST: TStringField;
    Cds_sVendaOBSST: TMemoField;
    Cds_sVendaFECHADOST: TStringField;
    Cds_sVendaRETORNOST: TDateField;
    Cds_sVendaHORAST: TTimeField;
    Cds_sVendaCUSTOST: TFMTBCDField;
    Cds_sVendaCFUN: TIntegerField;
    Dbx_IndiceCAMINHOBCOADO_2: TStringField;
    Cds_IndiceCAMINHOBCOADO_2: TStringField;
    Dbx_IndicePERIODO_PREVIO: TSmallintField;
    Cds_IndicePERIODO_PREVIO: TSmallintField;
    Dsp_Ado: TDataSetProvider;
    Cds_Ado: TClientDataSet;
    Dts_Ado: TDataSource;
    DbxAdo_ItensV: TADOQuery;
    DspAdo_ItensV: TDataSetProvider;
    CdsAdo_ItensV: TClientDataSet;
    DtsAdo_ItensV: TDataSource;
    RvDscItens_Vendidos: TRvDataSetConnection;
    RvPItensV: TRvProject;
    CdsAdo_ItensVQtde: TFloatField;
    CdsAdo_ItensVUnidade: TWideStringField;
    CdsAdo_ItensVDescricao: TWideStringField;
    CdsAdo_ItensVData: TDateTimeField;
    CdsAdo_ItensVCusto: TFloatField;
    CdsAdo_ItensVPreco: TFloatField;
    Dbx_Usuarios: TSQLQuery;
    Dsp_Usuarios: TDataSetProvider;
    Cds_Usuarios: TClientDataSet;
    Dst_Usuarios: TDataSource;
    Dbx_invsys: TSQLQuery;
    Dsp_invsys: TDataSetProvider;
    Cds_Invsys: TClientDataSet;
    Dst_invsys: TDataSource;
    Dbx_UsuariosCODIGO: TIntegerField;
    Dbx_invsysCODIGO: TIntegerField;
    Dbx_UsuariosNOME: TStringField;
    Dbx_UsuariosSENHA: TStringField;
    Dbx_invsysDESCRICAO: TStringField;
    Dbx_invsysCINVSYSP: TIntegerField;
    Cds_UsuariosCODIGO: TIntegerField;
    Cds_UsuariosNOME: TStringField;
    Cds_UsuariosSENHA: TStringField;
    Cds_InvsysCODIGO: TIntegerField;
    Cds_InvsysDESCRICAO: TStringField;
    Cds_InvsysCINVSYSP: TIntegerField;
    Dbx_invsysf: TSQLQuery;
    IntegerField3: TIntegerField;
    Dsp_invsysf: TDataSetProvider;
    Cds_invsysf: TClientDataSet;
    IntegerField8: TIntegerField;
    Dst_invsysf: TDataSource;
    Dbx_invsysfCINVSYS: TIntegerField;
    Dbx_invsysfCUSU: TIntegerField;
    Dbx_invsysfNEGA: TStringField;
    Cds_invsysfCINVSYS: TIntegerField;
    Cds_invsysfCUSU: TIntegerField;
    Cds_invsysfNEGA: TStringField;
    Dbx_invsysp: TSQLQuery;
    IntegerField7: TIntegerField;
    Dsp_Invsysp: TDataSetProvider;
    Cds_Invsysp: TClientDataSet;
    IntegerField11: TIntegerField;
    Dst_invsysp: TDataSource;
    Dbx_invsyspDESCRICAO: TStringField;
    Cds_InvsyspDESCRICAO: TStringField;
    Dbx_Grupo: TSQLQuery;
    IntegerField9: TIntegerField;
    StringField1: TStringField;
    Dsp_Grupo: TDataSetProvider;
    Cds_Grupo: TClientDataSet;
    IntegerField10: TIntegerField;
    StringField2: TStringField;
    Dts_Grupo: TDataSource;
    Dbx_Marca: TSQLQuery;
    IntegerField12: TIntegerField;
    StringField3: TStringField;
    Dsp_Marca: TDataSetProvider;
    Cds_Marca: TClientDataSet;
    IntegerField13: TIntegerField;
    StringField4: TStringField;
    Dst_Marca: TDataSource;
    Dbx_UsuariosCFUN: TIntegerField;
    Cds_UsuariosCFUN: TIntegerField;
    Dbx_Representantes: TSQLQuery;
    Dsp_Representantes: TDataSetProvider;
    Cds_Representantes: TClientDataSet;
    Dst_Representantes: TDataSource;
    Dbx_RepresentantesCODIGO: TIntegerField;
    Dbx_RepresentantesNOME: TStringField;
    Dbx_RepresentantesENDERECO: TStringField;
    Dbx_RepresentantesCOMPL: TStringField;
    Dbx_RepresentantesBAIRRO: TStringField;
    Dbx_RepresentantesCIDADE: TStringField;
    Dbx_RepresentantesESTADO: TStringField;
    Dbx_RepresentantesCEP: TStringField;
    Dbx_RepresentantesCNPJ: TStringField;
    Dbx_RepresentantesIE: TStringField;
    Dbx_RepresentantesTELEFONE: TStringField;
    Dbx_RepresentantesFONES: TStringField;
    Dbx_RepresentantesEMAIL: TStringField;
    Dbx_RepresentantesCONTATO: TStringField;
    Dbx_RepresentantesOBS: TMemoField;
    Dbx_RepresentantesIMP: TStringField;
    Dbx_RepresentantesETIQ: TStringField;
    Dbx_RepresentantesFOTO: TGraphicField;
    Cds_RepresentantesCODIGO: TIntegerField;
    Cds_RepresentantesNOME: TStringField;
    Cds_RepresentantesENDERECO: TStringField;
    Cds_RepresentantesCOMPL: TStringField;
    Cds_RepresentantesBAIRRO: TStringField;
    Cds_RepresentantesCIDADE: TStringField;
    Cds_RepresentantesESTADO: TStringField;
    Cds_RepresentantesCEP: TStringField;
    Cds_RepresentantesCNPJ: TStringField;
    Cds_RepresentantesIE: TStringField;
    Cds_RepresentantesTELEFONE: TStringField;
    Cds_RepresentantesFONES: TStringField;
    Cds_RepresentantesEMAIL: TStringField;
    Cds_RepresentantesCONTATO: TStringField;
    Cds_RepresentantesOBS: TMemoField;
    Cds_RepresentantesIMP: TStringField;
    Cds_RepresentantesETIQ: TStringField;
    Cds_RepresentantesFOTO: TGraphicField;
    Dbx_Funcionarios: TSQLQuery;
    Dbx_Funcionarioscodigo: TIntegerField;
    Dsp_Funcionarios: TDataSetProvider;
    Cds_Funcionarios: TClientDataSet;
    cds_Funcionarioscodigo: TIntegerField;
    Dst_Funcionarios: TDataSource;
    Dbx_FuncionariosNOME: TStringField;
    Dbx_FuncionariosENDERECO: TStringField;
    Dbx_FuncionariosCOMPLEMENT: TStringField;
    Dbx_FuncionariosCIDADE: TStringField;
    Dbx_FuncionariosESTADO: TStringField;
    Dbx_FuncionariosCEP: TStringField;
    Dbx_FuncionariosCNPJ: TStringField;
    Dbx_FuncionariosIE: TStringField;
    Dbx_FuncionariosFONE: TStringField;
    Dbx_FuncionariosEMAIL: TStringField;
    Dbx_FuncionariosCONTATO: TStringField;
    Dbx_FuncionariosOBS: TMemoField;
    Dbx_FuncionariosIMP: TStringField;
    Dbx_FuncionariosETIQ: TStringField;
    Dbx_FuncionariosDATAADM: TDateField;
    Dbx_FuncionariosSALARIO: TFMTBCDField;
    Dbx_FuncionariosDATANASC: TDateField;
    Dbx_FuncionariosCP: TStringField;
    Dbx_FuncionariosCARGO: TStringField;
    Dbx_FuncionariosPROFISSAO: TStringField;
    Dbx_FuncionariosPCOM: TBCDField;
    Dbx_FuncionariosTELEFONES: TStringField;
    Cds_FuncionariosNOME: TStringField;
    Cds_FuncionariosENDERECO: TStringField;
    Cds_FuncionariosCOMPLEMENT: TStringField;
    Cds_FuncionariosCIDADE: TStringField;
    Cds_FuncionariosESTADO: TStringField;
    Cds_FuncionariosCEP: TStringField;
    Cds_FuncionariosCNPJ: TStringField;
    Cds_FuncionariosIE: TStringField;
    Cds_FuncionariosFONE: TStringField;
    Cds_FuncionariosEMAIL: TStringField;
    Cds_FuncionariosCONTATO: TStringField;
    Cds_FuncionariosOBS: TMemoField;
    Cds_FuncionariosIMP: TStringField;
    Cds_FuncionariosETIQ: TStringField;
    Cds_FuncionariosDATAADM: TDateField;
    Cds_FuncionariosSALARIO: TFMTBCDField;
    Cds_FuncionariosDATANASC: TDateField;
    Cds_FuncionariosCP: TStringField;
    Cds_FuncionariosCARGO: TStringField;
    Cds_FuncionariosPROFISSAO: TStringField;
    Cds_FuncionariosPCOM: TBCDField;
    Cds_FuncionariosTELEFONES: TStringField;
    Sqp_dados: TSQLStoredProc;
    Dbx_dProdutosFILENAME: TStringField;
    Dbx_dProdutosCAPLIC: TIntegerField;
    Dbx_dProdutosULTSAI: TDateField;
    Dbx_dProdutosULTENT: TDateField;
    Dbx_dProdutosULTCONT: TDateField;
    Cds_dProdutosFILENAME: TStringField;
    Cds_dProdutosCAPLIC: TIntegerField;
    Cds_dProdutosULTSAI: TDateField;
    Cds_dProdutosULTENT: TDateField;
    Cds_dProdutosULTCONT: TDateField;
    Dbx_dProdutosCARACTERIST: TStringField;
    Cds_dProdutosCARACTERIST: TStringField;
    Dbx_Unidade: TSQLQuery;
    IntegerField17: TIntegerField;
    Dsp_Unidade: TDataSetProvider;
    Cds_Unidade: TClientDataSet;
    IntegerField19: TIntegerField;
    Dst_unidade: TDataSource;
    Dbx_UnidadeDESCRICAO: TStringField;
    Cds_UnidadeDESCRICAO: TStringField;
    Cds_dProdutosnunidade: TStringField;
    Cds_Usuariosnfunc: TStringField;
    Dbx_invsysfRESTRITO: TStringField;
    Dbx_invsysfCONFIDENCIAL: TStringField;
    Dbx_invsysfINS: TStringField;
    Dbx_invsysfUPDT: TStringField;
    Dbx_invsysfDEL: TStringField;
    Cds_invsysfRESTRITO: TStringField;
    Cds_invsysfCONFIDENCIAL: TStringField;
    Cds_invsysfINS: TStringField;
    Cds_invsysfUPDT: TStringField;
    Cds_invsysfDEL: TStringField;
    Dbx_invsysfNCOMP: TStringField;
    Cds_invsysfNCOMP: TStringField;
    Cds_invsysfdesc: TStringField;
    Dbx_invsysfLOOKFOR: TStringField;
    Cds_invsysfLOOKFOR: TStringField;
    Dbx_invsysfcon: TSQLQuery;
    IntegerField20: TIntegerField;
    IntegerField21: TIntegerField;
    IntegerField22: TIntegerField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    Dsp_invsysfcon: TDataSetProvider;
    Cds_invsysfcon: TClientDataSet;
    IntegerField23: TIntegerField;
    IntegerField24: TIntegerField;
    IntegerField25: TIntegerField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    Dts_invsysfcon: TDataSource;
    Dbx_Fornecedores: TSQLQuery;
    IntegerField26: TIntegerField;
    Dsp_Fornecedores: TDataSetProvider;
    Cds_Fornecedores: TClientDataSet;
    IntegerField29: TIntegerField;
    Dts_Fornecedores: TDataSource;
    Dbx_Compras: TSQLQuery;
    Dsp_Compras: TDataSetProvider;
    Cds_Compras: TClientDataSet;
    Dts_Compras: TDataSource;
    Dbx_Ent_Prod: TSQLQuery;
    IntegerField30: TIntegerField;
    Dsp_Ent_Prod: TDataSetProvider;
    Cds_Ent_Prod: TClientDataSet;
    IntegerField32: TIntegerField;
    Dts_Ent_Prod: TDataSource;
    Dbx_Clientes: TSQLQuery;
    IntegerField31: TIntegerField;
    Dsp_Clientes: TDataSetProvider;
    Cds_Clientes: TClientDataSet;
    IntegerField38: TIntegerField;
    Dts_Clientes: TDataSource;
    Dbx_ClientesNOME: TStringField;
    Dbx_ClientesENDCOM: TStringField;
    Dbx_ClientesCOMPLCOM: TStringField;
    Dbx_ClientesBAIRROCOM: TStringField;
    Dbx_ClientesCIDADECOM: TStringField;
    Dbx_ClientesCEPCOM: TStringField;
    Dbx_ClientesTELEFONECOM: TStringField;
    Dbx_ClientesCPF: TStringField;
    Dbx_ClientesIE: TStringField;
    Dbx_ClientesCONTATO: TStringField;
    Dbx_ClientesENDENT: TStringField;
    Dbx_ClientesCOMPLENT: TStringField;
    Dbx_ClientesBAIRROENT: TStringField;
    Dbx_ClientesCIDADEENT: TStringField;
    Dbx_ClientesCEPENT: TStringField;
    Dbx_ClientesTELEFONEENT: TStringField;
    Dbx_ClientesENDCOB: TStringField;
    Dbx_ClientesCOMPLCOB: TStringField;
    Dbx_ClientesBAIRROCOB: TStringField;
    Dbx_ClientesCIDADECOB: TStringField;
    Dbx_ClientesCEPCOB: TStringField;
    Dbx_ClientesTELEFONECOB: TStringField;
    Dbx_ClientesESTADOCOM: TStringField;
    Dbx_ClientesESTADOENT: TStringField;
    Dbx_ClientesESTADOCOB: TStringField;
    Dbx_ClientesEMAIL: TStringField;
    Dbx_ClientesSITE: TStringField;
    Dbx_ClientesLIMITE: TFMTBCDField;
    Dbx_ClientesDTCAD: TDateField;
    Dbx_ClientesTELEFONES: TStringField;
    Cds_ClientesBAIRROCOM: TStringField;
    Cds_ClientesCEPCOM: TStringField;
    Cds_ClientesTELEFONECOM: TStringField;
    Cds_ClientesCPF: TStringField;
    Cds_ClientesIE: TStringField;
    Cds_ClientesCONTATO: TStringField;
    Cds_ClientesBAIRROENT: TStringField;
    Cds_ClientesCEPENT: TStringField;
    Cds_ClientesTELEFONEENT: TStringField;
    Cds_ClientesBAIRROCOB: TStringField;
    Cds_ClientesCEPCOB: TStringField;
    Cds_ClientesTELEFONECOB: TStringField;
    Cds_ClientesESTADOCOM: TStringField;
    Cds_ClientesESTADOENT: TStringField;
    Cds_ClientesESTADOCOB: TStringField;
    Cds_ClientesEMAIL: TStringField;
    Cds_ClientesSITE: TStringField;
    Cds_ClientesLIMITE: TFMTBCDField;
    Cds_ClientesDTCAD: TDateField;
    Dbx_FornecedoresDTCAD: TDateField;
    Dbx_FornecedoresNOME: TStringField;
    Dbx_FornecedoresFANTASIA: TStringField;
    Dbx_FornecedoresENDERECO: TStringField;
    Dbx_FornecedoresCOMPLEMENT: TStringField;
    Dbx_FornecedoresBAIRRO: TStringField;
    Dbx_FornecedoresCIDADE: TStringField;
    Dbx_FornecedoresESTADO: TStringField;
    Dbx_FornecedoresCEP: TStringField;
    Dbx_FornecedoresFONE: TStringField;
    Dbx_FornecedoresCELULAR: TStringField;
    Dbx_FornecedoresEMAIL: TStringField;
    Dbx_FornecedoresSITE: TStringField;
    Dbx_FornecedoresCONTATO: TStringField;
    Dbx_FornecedoresCPF: TStringField;
    Dbx_FornecedoresRG: TStringField;
    Dbx_FornecedoresBANCO: TStringField;
    Dbx_FornecedoresCC: TStringField;
    Dbx_FornecedoresIMP: TStringField;
    Dbx_FornecedoresTELEFONES: TStringField;
    Dbx_FornecedoresOBS: TMemoField;
    Cds_FornecedoresDTCAD: TDateField;
    Cds_FornecedoresNOME: TStringField;
    Cds_FornecedoresFANTASIA: TStringField;
    Cds_FornecedoresENDERECO: TStringField;
    Cds_FornecedoresCOMPLEMENT: TStringField;
    Cds_FornecedoresBAIRRO: TStringField;
    Cds_FornecedoresCIDADE: TStringField;
    Cds_FornecedoresESTADO: TStringField;
    Cds_FornecedoresCEP: TStringField;
    Cds_FornecedoresFONE: TStringField;
    Cds_FornecedoresCELULAR: TStringField;
    Cds_FornecedoresEMAIL: TStringField;
    Cds_FornecedoresSITE: TStringField;
    Cds_FornecedoresCONTATO: TStringField;
    Cds_FornecedoresCPF: TStringField;
    Cds_FornecedoresRG: TStringField;
    Cds_FornecedoresBANCO: TStringField;
    Cds_FornecedoresCC: TStringField;
    Cds_FornecedoresIMP: TStringField;
    Cds_FornecedoresTELEFONES: TStringField;
    Cds_FornecedoresOBS: TMemoField;
    Dbx_ComprasCODIGO: TIntegerField;
    Cds_ComprasCODIGO: TIntegerField;
    Dbx_Ent_ProdCPRO: TIntegerField;
    Dbx_Ent_ProdCFOP: TIntegerField;
    Dbx_Ent_ProdCSIT: TIntegerField;
    Dbx_Ent_ProdALIICMS: TBCDField;
    Dbx_Ent_ProdALIIPI: TBCDField;
    Dbx_Ent_ProdQTDE: TBCDField;
    Dbx_Ent_ProdCUNID: TIntegerField;
    Dbx_Ent_ProdPRUNIT: TFMTBCDField;
    Dbx_Ent_ProdDATA_ENT: TDateField;
    Dbx_Ent_ProdDATA_COTACAO: TDateField;
    Dbx_Ent_ProdDATA_COMPRA: TDateField;
    Dbx_Ent_ProdEHCOTACAO: TStringField;
    Dbx_Ent_ProdEHCOMPRA: TStringField;
    Dbx_Ent_ProdEHENTREGA: TStringField;
    Dbx_Ent_ProdCCOMPRAS: TIntegerField;
    Dbx_Ent_ProdCFOR: TIntegerField;
    Cds_Ent_ProdCPRO: TIntegerField;
    Cds_Ent_ProdCFOP: TIntegerField;
    Cds_Ent_ProdCSIT: TIntegerField;
    Cds_Ent_ProdALIICMS: TBCDField;
    Cds_Ent_ProdALIIPI: TBCDField;
    Cds_Ent_ProdQTDE: TBCDField;
    Cds_Ent_ProdCUNID: TIntegerField;
    Cds_Ent_ProdPRUNIT: TFMTBCDField;
    Cds_Ent_ProdDATA_ENT: TDateField;
    Cds_Ent_ProdDATA_COTACAO: TDateField;
    Cds_Ent_ProdDATA_COMPRA: TDateField;
    Cds_Ent_ProdEHCOTACAO: TStringField;
    Cds_Ent_ProdEHCOMPRA: TStringField;
    Cds_Ent_ProdEHENTREGA: TStringField;
    Cds_Ent_ProdCCOMPRAS: TIntegerField;
    Cds_Ent_ProdCFOR: TIntegerField;
    Cds_Ent_Prodnfor: TStringField;
    Cds_ClientesNOME: TStringField;
    Cds_ClientesENDCOM: TStringField;
    Cds_ClientesCOMPLCOM: TStringField;
    Cds_ClientesCIDADECOM: TStringField;
    Cds_ClientesENDENT: TStringField;
    Cds_ClientesCOMPLENT: TStringField;
    Cds_ClientesCIDADEENT: TStringField;
    Cds_ClientesENDCOB: TStringField;
    Cds_ClientesCOMPLCOB: TStringField;
    Cds_ClientesCIDADECOB: TStringField;
    Cds_ClientesTELEFONES: TStringField;
    Dbx_Classe: TSQLQuery;
    IntegerField27: TIntegerField;
    Dsp_Classe: TDataSetProvider;
    Cds_Classe: TClientDataSet;
    IntegerField28: TIntegerField;
    Dts_Classe: TDataSource;
    Dbx_ClasseDESCRICAO: TStringField;
    Dbx_ClasseCCLAP: TIntegerField;
    Cds_ClasseDESCRICAO: TStringField;
    Cds_ClasseCCLAP: TIntegerField;
    Dbx_Classep: TSQLQuery;
    IntegerField33: TIntegerField;
    Dsp_Classep: TDataSetProvider;
    Cds_Classep: TClientDataSet;
    IntegerField35: TIntegerField;
    Dts_Classep: TDataSource;
    Dbx_ClassepDESCRICAO: TStringField;
    Cds_ClassepDESCRICAO: TStringField;
    Dbx_Pagar: TSQLQuery;
    IntegerField34: TIntegerField;
    Dsp_Pagar: TDataSetProvider;
    Cds_Pagar: TClientDataSet;
    IntegerField36: TIntegerField;
    Dts_Pagar: TDataSource;
    Dbx_PagarDTL: TDateField;
    Dbx_PagarDTE: TDateField;
    Dbx_PagarDTV: TDateField;
    Dbx_PagarVALOR: TFMTBCDField;
    Dbx_PagarVALLIQ: TFMTBCDField;
    Dbx_PagarDESCRICAO: TStringField;
    Dbx_PagarDOC: TStringField;
    Dbx_PagarCCLA: TIntegerField;
    Dbx_PagarCFOR: TIntegerField;
    Dbx_PagarCSIT: TIntegerField;
    Dbx_PagarOBS: TMemoField;
    Cds_PagarDTL: TDateField;
    Cds_PagarDTE: TDateField;
    Cds_PagarDTV: TDateField;
    Cds_PagarVALOR: TFMTBCDField;
    Cds_PagarVALLIQ: TFMTBCDField;
    Cds_PagarDESCRICAO: TStringField;
    Cds_PagarDOC: TStringField;
    Cds_PagarCCLA: TIntegerField;
    Cds_PagarCFOR: TIntegerField;
    Cds_PagarCSIT: TIntegerField;
    Cds_PagarOBS: TMemoField;
    Cds_Classenclap: TStringField;
    Cds_Pagarncla: TStringField;
    Cds_Pagarnfor: TStringField;
    Dbx_SituRec: TSQLQuery;
    IntegerField37: TIntegerField;
    Dsp_SituRec: TDataSetProvider;
    Cds_SituRec: TClientDataSet;
    IntegerField42: TIntegerField;
    Dts_SituRec: TDataSource;
    Dbx_SituRecDESCRICAO: TStringField;
    Cds_SituRecDESCRICAO: TStringField;
    Dbx_SituPagar: TSQLQuery;
    IntegerField39: TIntegerField;
    Dsp_SituPagar: TDataSetProvider;
    Cds_SituPagar: TClientDataSet;
    IntegerField40: TIntegerField;
    Dts_SituPagar: TDataSource;
    Dbx_SituPagarDESCRICAO: TStringField;
    Cds_SituPagarDESCRICAO: TStringField;
    Cds_Pagarnsituapagar: TStringField;
    Dbx_Temp: TSQLQuery;
    IntegerField41: TIntegerField;
    Dsp_Temp: TDataSetProvider;
    Cds_Temp: TClientDataSet;
    IntegerField43: TIntegerField;
    Dts_Temp: TDataSource;
    Dbx_TempCODCLA: TIntegerField;
    Dbx_TempCODFOR: TIntegerField;
    Dbx_TempCODCLI: TIntegerField;
    Dbx_TempCODSITPAGAR: TIntegerField;
    Dbx_TempCODSITREC: TIntegerField;
    Cds_TempCODCLA: TIntegerField;
    Cds_TempCODFOR: TIntegerField;
    Cds_TempCODCLI: TIntegerField;
    Cds_TempCODSITPAGAR: TIntegerField;
    Cds_TempCODSITREC: TIntegerField;
    Cds_Tempnomecla: TStringField;
    Cds_Tempnomefor: TStringField;
    Cds_Tempnomecli: TStringField;
    Cds_Tempnomesitpagar: TStringField;
    Cds_Tempnomesitrec: TStringField;
    ADO_Conexao_2: TADOConnection;
    RDSC_ESTOQUE: TRvDataSetConnection;
    Dbx_dProdutosDESCRICAO: TStringField;
    Dsp_Exec: TDataSetProvider;
    Cds_Exec: TClientDataSet;
    Dts_exec: TDataSource;
    ADO_Mestre_2: TADOQuery;
    ADO_Detalhe_2: TADOQuery;
    ADO_Exec_2: TADOQuery;
    Cds_Classejan: TCurrencyField;
    Cds_Classefev: TCurrencyField;
    Cds_Classemar: TCurrencyField;
    Cds_Classeabr: TCurrencyField;
    Cds_Classemai: TCurrencyField;
    Cds_Classejun: TCurrencyField;
    Cds_Classejul: TCurrencyField;
    Cds_Classeago: TCurrencyField;
    Cds_Classesete: TCurrencyField;
    Cds_Classeout: TCurrencyField;
    Cds_Classenov: TCurrencyField;
    Cds_Classedez: TCurrencyField;
    Dbx_IndiceCAMINHODBF_1: TStringField;
    Cds_IndiceCAMINHODBF_1: TStringField;
    Dbx_Dbf: TQuery;
    Dbx_ClientesFANTASIA: TStringField;
    Cds_ClientesFANTASIA: TStringField;
    Dbx_dVendaCPRO: TIntegerField;
    Dbx_dVendaPRVE: TFMTBCDField;
    Dbx_dVendaQTDE: TFMTBCDField;
    Dbx_dVendaCODSVENDA: TIntegerField;
    Dbx_dVendaEOUS: TStringField;
    Dbx_dVendaPRCU: TFMTBCDField;
    Dbx_dVendaCUNI: TIntegerField;
    Dbx_dVendaCREP: TIntegerField;
    Dbx_dVendaCGRU: TIntegerField;
    Dbx_dVendaCMAR: TIntegerField;
    Dbx_dVendaPCOM: TBCDField;
    Dbx_dVendaCVEN: TIntegerField;
    Dbx_dVendaCCLI: TIntegerField;
    Dbx_dVendaNSERIE: TStringField;
    Dbx_dVendaOBS: TMemoField;
    Dbx_dVendaBAIXA: TStringField;
    Dbx_dVendaSUBTOTAL: TFMTBCDField;
    Dbx_dVendaREFERENCIA: TStringField;
    Dbx_dVendaDATA_OP: TDateField;
    Dbx_dVendaCOMISSAO: TFMTBCDField;
    Dbx_dVendaIDENTST: TStringField;
    Dbx_dVendaTIPOST: TStringField;
    Dbx_dVendaPDESC: TBCDField;
    Dbx_dVendaCUPOM: TIntegerField;
    Dbx_dVendaDESCRICAOST: TStringField;
    Dbx_dVendaUNDST: TStringField;
    Dbx_dVendaCLIENTEST: TStringField;
    Dbx_dVendaVENDEDORST: TStringField;
    Dbx_dVendaPGST: TStringField;
    Dbx_dVendaCFUN: TIntegerField;
    Dbx_dVendaVDESC: TFMTBCDField;
    Dbx_dVendaICM: TBCDField;
    Dbx_dVendaISS: TBCDField;
    Dbx_dVendaMETRAGEM: TFMTBCDField;
    Dbx_dVendaMETRAGEM2: TFMTBCDField;
    Dbx_dVendaEHVENDA: TStringField;
    Cds_dVendaCPRO: TIntegerField;
    Cds_dVendaPRVE: TFMTBCDField;
    Cds_dVendaQTDE: TFMTBCDField;
    Cds_dVendaCODSVENDA: TIntegerField;
    Cds_dVendaEOUS: TStringField;
    Cds_dVendaPRCU: TFMTBCDField;
    Cds_dVendaCUNI: TIntegerField;
    Cds_dVendaCREP: TIntegerField;
    Cds_dVendaCGRU: TIntegerField;
    Cds_dVendaCMAR: TIntegerField;
    Cds_dVendaPCOM: TBCDField;
    Cds_dVendaCVEN: TIntegerField;
    Cds_dVendaCCLI: TIntegerField;
    Cds_dVendaNSERIE: TStringField;
    Cds_dVendaOBS: TMemoField;
    Cds_dVendaBAIXA: TStringField;
    Cds_dVendaSUBTOTAL: TFMTBCDField;
    Cds_dVendaREFERENCIA: TStringField;
    Cds_dVendaDATA_OP: TDateField;
    Cds_dVendaCOMISSAO: TFMTBCDField;
    Cds_dVendaIDENTST: TStringField;
    Cds_dVendaTIPOST: TStringField;
    Cds_dVendaPDESC: TBCDField;
    Cds_dVendaCUPOM: TIntegerField;
    Cds_dVendaDESCRICAOST: TStringField;
    Cds_dVendaUNDST: TStringField;
    Cds_dVendaCLIENTEST: TStringField;
    Cds_dVendaVENDEDORST: TStringField;
    Cds_dVendaPGST: TStringField;
    Cds_dVendaCFUN: TIntegerField;
    Cds_dVendaVDESC: TFMTBCDField;
    Cds_dVendaICM: TBCDField;
    Cds_dVendaISS: TBCDField;
    Cds_dVendaMETRAGEM: TFMTBCDField;
    Cds_dVendaMETRAGEM2: TFMTBCDField;
    Cds_dVendaEHVENDA: TStringField;
    Dbx_dVendaMAXI: TIntegerField;
    Cds_dVendaMAXI: TIntegerField;
    Dbx_TempCODPRO: TIntegerField;
    Cds_TempCODPRO: TIntegerField;
    Dbx_vProdutos: TSQLQuery;
    Dsp_vProdutos: TDataSetProvider;
    Cds_vProdutos: TClientDataSet;
    Dts_vProdutos: TDataSource;
    Dbx_vProdutosPRCU: TFMTBCDField;
    Dbx_vProdutosPER: TBCDField;
    Dbx_vProdutosPRVE: TFMTBCDField;
    Dbx_vProdutosFOTO: TGraphicField;
    Dbx_vProdutosQUA: TFMTBCDField;
    Dbx_vProdutosCUNI: TIntegerField;
    Dbx_vProdutosCGRU: TIntegerField;
    Dbx_vProdutosCMAR: TIntegerField;
    Dbx_vProdutosQTDEMB: TBCDField;
    Dbx_vProdutosCBAR: TStringField;
    Dbx_vProdutosCAUX: TStringField;
    Dbx_vProdutosOBS: TMemoField;
    Dbx_vProdutosCFAB: TStringField;
    Dbx_vProdutosICMS: TFMTBCDField;
    Dbx_vProdutosESTMIN: TBCDField;
    Dbx_vProdutosESTMAX: TBCDField;
    Dbx_vProdutosIPI: TFMTBCDField;
    Dbx_vProdutosOUTIMPOST: TFMTBCDField;
    Dbx_vProdutosRESERVA: TFMTBCDField;
    Dbx_vProdutosSALDOEST: TBCDField;
    Dbx_vProdutosMESCLADO: TStringField;
    Dbx_vProdutosVALKM: TStringField;
    Dbx_vProdutosVALDATA: TDateField;
    Dbx_vProdutosIMP: TStringField;
    Dbx_vProdutosPRCUBS: TFMTBCDField;
    Dbx_vProdutosALIQCUS: TBCDField;
    Dbx_vProdutosSGLIMPFIS: TIntegerField;
    Dbx_vProdutosVLRADD: TFMTBCDField;
    Dbx_vProdutosOBNSERIE: TStringField;
    Dbx_vProdutosFILENAME: TStringField;
    Dbx_vProdutosCAPLIC: TIntegerField;
    Dbx_vProdutosULTSAI: TDateField;
    Dbx_vProdutosULTENT: TDateField;
    Dbx_vProdutosULTCONT: TDateField;
    Dbx_vProdutosCARACTERIST: TStringField;
    Cds_vProdutosPRCU: TFMTBCDField;
    ultu: TBCDField;
    Cds_vProdutosPRVE: TFMTBCDField;
    Cds_vProdutosFOTO: TGraphicField;
    Cds_vProdutosQUA: TFMTBCDField;
    Cds_vProdutosCUNI: TIntegerField;
    Cds_vProdutosCGRU: TIntegerField;
    Cds_vProdutosCMAR: TIntegerField;
    Cds_vProdutosQTDEMB: TBCDField;
    Cds_vProdutosCBAR: TStringField;
    Cds_vProdutosCAUX: TStringField;
    Cds_vProdutosOBS: TMemoField;
    Cds_vProdutosCFAB: TStringField;
    Cds_vProdutosICMS: TFMTBCDField;
    Cds_vProdutosESTMIN: TBCDField;
    Cds_vProdutosESTMAX: TBCDField;
    Cds_vProdutosIPI: TFMTBCDField;
    Cds_vProdutosOUTIMPOST: TFMTBCDField;
    Cds_vProdutosRESERVA: TFMTBCDField;
    Cds_vProdutosSALDOEST: TBCDField;
    Cds_vProdutosMESCLADO: TStringField;
    Cds_vProdutosVALKM: TStringField;
    Cds_vProdutosVALDATA: TDateField;
    Cds_vProdutosIMP: TStringField;
    Cds_vProdutosPRCUBS: TFMTBCDField;
    Cds_vProdutosALIQCUS: TBCDField;
    Cds_vProdutosSGLIMPFIS: TIntegerField;
    Cds_vProdutosVLRADD: TFMTBCDField;
    Cds_vProdutosOBNSERIE: TStringField;
    Cds_vProdutosFILENAME: TStringField;
    Cds_vProdutosCAPLIC: TIntegerField;
    Cds_vProdutosULTSAI: TDateField;
    Cds_vProdutosULTENT: TDateField;
    Cds_vProdutosULTCONT: TDateField;
    Cds_vProdutosCARACTERIST: TStringField;
    Dbx_vVenda: TSQLQuery;
    IntegerField45: TIntegerField;
    Dsp_vVenda: TDataSetProvider;
    Cds_vVenda: TClientDataSet;
    IntegerField60: TIntegerField;
    Dts_vVenda: TDataSource;
    Dbx_vVendaCDESCPROD: TIntegerField;
    Dbx_vVendaDESCRICAO: TStringField;
    Dbx_vVendaCPRO: TIntegerField;
    Dbx_vVendaQTDE: TFMTBCDField;
    Dbx_vVendaPRVE: TFMTBCDField;
    Dbx_vVendaSUBTOTAL: TFMTBCDField;
    Dbx_vVendaCFUN: TIntegerField;
    Dbx_vVendaCCLI: TIntegerField;
    Dbx_vVendaCREP: TIntegerField;
    Dbx_vVendaPCOM: TBCDField;
    Dbx_vVendaEHVENDA: TStringField;
    Dbx_vVendaVCOM: TFMTBCDField;
    Dbx_vVendaCODSVENDA: TIntegerField;
    Dbx_vVendaCODV: TIntegerField;
    Cds_vVendaCDESCPROD: TIntegerField;
    Cds_vVendaDESCRICAO: TStringField;
    Cds_vVendaCPRO: TIntegerField;
    Cds_vVendaQTDE: TFMTBCDField;
    Cds_vVendaPRVE: TFMTBCDField;
    Cds_vVendaSUBTOTAL: TFMTBCDField;
    Cds_vVendaCFUN: TIntegerField;
    Cds_vVendaCCLI: TIntegerField;
    Cds_vVendaCREP: TIntegerField;
    Cds_vVendaPCOM: TBCDField;
    Cds_vVendaEHVENDA: TStringField;
    Cds_vVendaVCOM: TFMTBCDField;
    Cds_vVendaCODSVENDA: TIntegerField;
    Cds_vVendaCODV: TIntegerField;
    Dbx_vVendaCONTROLE: TIntegerField;
    Cds_vVendaCONTROLE: TIntegerField;
    Dbx_MovReg: TSQLQuery;
    IntegerField46: TIntegerField;
    Dsp_MovReg: TDataSetProvider;
    Cds_MovReg: TClientDataSet;
    IntegerField62: TIntegerField;
    Dts_MovReg: TDataSource;
    Dbx_MovRegHDNUMBER: TStringField;
    Dbx_MovRegST: TIntegerField;
    Dbx_MovRegCUSU: TIntegerField;
    Dbx_MovRegDATA: TDateField;
    Dbx_MovRegHORA: TTimeField;
    Cds_MovRegHDNUMBER: TStringField;
    Cds_MovRegST: TIntegerField;
    Cds_MovRegCUSU: TIntegerField;
    Cds_MovRegDATA: TDateField;
    Cds_MovRegHORA: TTimeField;
    Dbx_MovRegCONTROLE: TIntegerField;
    Cds_MovRegCONTROLE: TIntegerField;
    Dbx_vVendaNPRO: TStringField;
    Dbx_vVendaTIPOV: TIntegerField;
    Cds_vVendaNPRO: TStringField;
    Cds_vVendaTIPOV: TIntegerField;
    Dbx_Vendab: TSQLQuery;
    IntegerField47: TIntegerField;
    Dsp_Vendab: TDataSetProvider;
    Cds_Vendab: TClientDataSet;
    IntegerField64: TIntegerField;
    Dts_Vendab: TDataSource;
    Dbx_VendabNPRO: TStringField;
    Dbx_VendabCPRO: TIntegerField;
    Dbx_VendabPRVE: TFMTBCDField;
    Dbx_VendabSUBTOTAL: TFMTBCDField;
    Dbx_VendabCFUN: TIntegerField;
    Dbx_VendabCCLI: TIntegerField;
    Dbx_VendabCREP: TIntegerField;
    Dbx_VendabPCOM: TBCDField;
    Dbx_VendabEHVENDA: TStringField;
    Dbx_VendabVCOM: TFMTBCDField;
    Dbx_VendabCONTROLE: TIntegerField;
    Dbx_VendabEOUS: TStringField;
    Dbx_VendabPRCU: TFMTBCDField;
    Dbx_VendabDATA_OP: TDateField;
    Cds_VendabNPRO: TStringField;
    Cds_VendabCPRO: TIntegerField;
    Cds_VendabPRVE: TFMTBCDField;
    Cds_VendabSUBTOTAL: TFMTBCDField;
    Cds_VendabCFUN: TIntegerField;
    Cds_VendabCCLI: TIntegerField;
    Cds_VendabCREP: TIntegerField;
    Cds_VendabPCOM: TBCDField;
    Cds_VendabEHVENDA: TStringField;
    Cds_VendabVCOM: TFMTBCDField;
    Cds_VendabCONTROLE: TIntegerField;
    Cds_VendabEOUS: TStringField;
    Cds_VendabPRCU: TFMTBCDField;
    Cds_VendabDATA_OP: TDateField;
    Dbx_VendabPDESC: TBCDField;
    Dbx_VendabVDESC: TFMTBCDField;
    Cds_VendabPDESC: TBCDField;
    Cds_VendabVDESC: TFMTBCDField;
    Dbx_VendabCUIN: TIntegerField;
    Cds_VendabCUIN: TIntegerField;
    Cds_Vendabnuni: TStringField;
    Cds_vProdutosnuni: TStringField;
    Dbx_TempCODFUN: TIntegerField;
    Cds_TempCODFUN: TIntegerField;
    Dbx_MovRegCFUN: TIntegerField;
    Cds_MovRegCFUN: TIntegerField;
    Cds_MovRegnfun: TStringField;
    Dbx_IndiceEHORC: TSmallintField;
    Cds_IndiceEHORC: TSmallintField;
    Dbx_Config: TSQLQuery;
    IntegerField48: TIntegerField;
    Dsp_Config: TDataSetProvider;
    Cds_Config: TClientDataSet;
    IntegerField66: TIntegerField;
    Dts_Config: TDataSource;
    Dbx_ConfigCAMPO1: TStringField;
    Dbx_ConfigCAMPO2: TStringField;
    Dbx_ConfigCAMPO3: TStringField;
    Dbx_ConfigCAMPO4: TStringField;
    Dbx_ConfigCAMPO5: TStringField;
    Dbx_ConfigCAMPO6: TStringField;
    Dbx_ConfigCAMPO7: TStringField;
    Dbx_ConfigCAMPO8: TStringField;
    Dbx_ConfigCAMPO9: TStringField;
    Dbx_ConfigCAMPO10: TStringField;
    Dbx_ConfigCAMPO11: TStringField;
    Dbx_ConfigCAMPO12: TStringField;
    Dbx_ConfigCAMPO14: TIntegerField;
    Dbx_ConfigCAMPO15: TStringField;
    Dbx_ConfigCAMPO16: TStringField;
    Dbx_ConfigCAMPO151: TStringField;
    Dbx_ConfigCAMPO161: TStringField;
    Dbx_ConfigCAMPO171: TStringField;
    Dbx_ConfigCAMPO181: TStringField;
    Dbx_ConfigCAMPO191: TStringField;
    Dbx_ConfigCAMPO201: TStringField;
    Dbx_ConfigCAMPO152: TStringField;
    Dbx_ConfigCAMPO162: TStringField;
    Dbx_ConfigCAMPO172: TStringField;
    Dbx_ConfigCAMPO182: TStringField;
    Dbx_ConfigCAMPO192: TStringField;
    Dbx_ConfigCAMPO202: TStringField;
    Dbx_ConfigCAMPO153: TStringField;
    Dbx_ConfigCAMPO163: TStringField;
    Dbx_ConfigCAMPO173: TStringField;
    Dbx_ConfigCAMPO183: TStringField;
    Dbx_ConfigCAMPO193: TStringField;
    Dbx_ConfigCAMPO203: TStringField;
    Dbx_ConfigCAMPO154: TStringField;
    Dbx_ConfigCAMPO164: TStringField;
    Dbx_ConfigCAMPO174: TStringField;
    Dbx_ConfigCAMPO184: TStringField;
    Dbx_ConfigCAMPO194: TStringField;
    Dbx_ConfigCAMPO204: TStringField;
    Dbx_ConfigCAMPO13: TStringField;
    Dbx_ConfigLOGO: TGraphicField;
    Dbx_ConfigLOGO1: TGraphicField;
    Dbx_ConfigFUNDO1: TGraphicField;
    Dbx_ConfigFUNDO2: TGraphicField;
    Dbx_ConfigFUNDO3: TGraphicField;
    Cds_ConfigCAMPO1: TStringField;
    Cds_ConfigCAMPO2: TStringField;
    Cds_ConfigCAMPO3: TStringField;
    Cds_ConfigCAMPO4: TStringField;
    Cds_ConfigCAMPO5: TStringField;
    Cds_ConfigCAMPO6: TStringField;
    Cds_ConfigCAMPO7: TStringField;
    Cds_ConfigCAMPO8: TStringField;
    Cds_ConfigCAMPO9: TStringField;
    Cds_ConfigCAMPO10: TStringField;
    Cds_ConfigCAMPO11: TStringField;
    Cds_ConfigCAMPO12: TStringField;
    Cds_ConfigCAMPO14: TIntegerField;
    Cds_ConfigCAMPO15: TStringField;
    Cds_ConfigCAMPO16: TStringField;
    Cds_ConfigCAMPO151: TStringField;
    Cds_ConfigCAMPO161: TStringField;
    Cds_ConfigCAMPO171: TStringField;
    Cds_ConfigCAMPO181: TStringField;
    Cds_ConfigCAMPO191: TStringField;
    Cds_ConfigCAMPO201: TStringField;
    Cds_ConfigCAMPO152: TStringField;
    Cds_ConfigCAMPO162: TStringField;
    Cds_ConfigCAMPO172: TStringField;
    Cds_ConfigCAMPO182: TStringField;
    Cds_ConfigCAMPO192: TStringField;
    Cds_ConfigCAMPO202: TStringField;
    Cds_ConfigCAMPO153: TStringField;
    Cds_ConfigCAMPO163: TStringField;
    Cds_ConfigCAMPO173: TStringField;
    Cds_ConfigCAMPO183: TStringField;
    Cds_ConfigCAMPO193: TStringField;
    Cds_ConfigCAMPO203: TStringField;
    Cds_ConfigCAMPO154: TStringField;
    Cds_ConfigCAMPO164: TStringField;
    Cds_ConfigCAMPO174: TStringField;
    Cds_ConfigCAMPO184: TStringField;
    Cds_ConfigCAMPO194: TStringField;
    Cds_ConfigCAMPO204: TStringField;
    Cds_ConfigCAMPO13: TStringField;
    Cds_ConfigLOGO: TGraphicField;
    Cds_ConfigLOGO1: TGraphicField;
    Cds_ConfigFUNDO1: TGraphicField;
    Cds_ConfigFUNDO2: TGraphicField;
    Cds_ConfigFUNDO3: TGraphicField;
    Dbx_IndicePRECVEND: TStringField;
    Cds_IndicePRECVEND: TStringField;
    Dbx_IndiceEHENTREGA: TSmallintField;
    Cds_IndiceEHENTREGA: TSmallintField;
    Dbx_vProdutosCODPROD: TIntegerField;
    Dbx_vProdutosACTDESC: TStringField;
    Dbx_vProdutosPDESC: TBCDField;
    Cds_vProdutosCODPROD: TIntegerField;
    Cds_vProdutosACTDESC: TStringField;
    Cds_vProdutosPDESC: TBCDField;
    Dbx_dProdutosACTDESC: TStringField;
    Dbx_dProdutosPDESC: TBCDField;
    Cds_dProdutosACTDESC: TStringField;
    Cds_dProdutosPDESC: TBCDField;
    Dbx_VendabACTDESC: TStringField;
    Cds_VendabACTDESC: TStringField;
    Dbx_VenctoC_TIPO_PGTO: TIntegerField;
    Dbx_VenctoC_SVENDA: TIntegerField;
    Dbx_VenctoDTL: TDateField;
    Dbx_VenctoDTV: TDateField;
    Dbx_VenctoDTE: TDateField;
    Dbx_VenctoVALOR: TFMTBCDField;
    Dbx_VenctoVALLIQ: TFMTBCDField;
    Dbx_VenctoDESCRICAO: TStringField;
    Dbx_VenctoDOC: TStringField;
    Dbx_VenctoCREC: TIntegerField;
    Dbx_VenctoCCLI: TIntegerField;
    Dbx_VenctoCSIT: TIntegerField;
    Dbx_VenctoOBS: TMemoField;
    Dbx_VenctoJUROS: TFMTBCDField;
    Dbx_VenctoCODTIPOP: TIntegerField;
    Dbx_VenctoVPARCSEMJ: TFMTBCDField;
    Dbx_VenctoNCO: TIntegerField;
    Dbx_VenctoCRT: TIntegerField;
    Dbx_VenctoPARC: TStringField;
    Dbx_VenctoEHVENDA: TStringField;
    Cds_VenctoC_TIPO_PGTO: TIntegerField;
    Cds_VenctoC_SVENDA: TIntegerField;
    Cds_VenctoDTL: TDateField;
    Cds_VenctoDTV: TDateField;
    Cds_VenctoDTE: TDateField;
    Cds_VenctoVALOR: TFMTBCDField;
    Cds_VenctoVALLIQ: TFMTBCDField;
    Cds_VenctoDESCRICAO: TStringField;
    Cds_VenctoDOC: TStringField;
    Cds_VenctoCREC: TIntegerField;
    Cds_VenctoCCLI: TIntegerField;
    Cds_VenctoCSIT: TIntegerField;
    Cds_VenctoOBS: TMemoField;
    Cds_VenctoJUROS: TFMTBCDField;
    Cds_VenctoCODTIPOP: TIntegerField;
    Cds_VenctoVPARCSEMJ: TFMTBCDField;
    Cds_VenctoNCO: TIntegerField;
    Cds_VenctoCRT: TIntegerField;
    Cds_VenctoPARC: TStringField;
    Cds_VenctoEHVENDA: TStringField;
    Cds_Vencton_tipo_pgto: TStringField;
    Cds_Venctonsit: TStringField;
    Dbx_IndiceVENDVENDA: TSmallintField;
    Cds_IndiceVENDVENDA: TSmallintField;
    Dbx_IndicePARCPADRAO: TSmallintField;
    Cds_IndicePARCPADRAO: TSmallintField;
    Cds_Indicenparcpadrao: TStringField;
    Dbx_VenctoORIGINADO: TSmallintField;
    Cds_VenctoORIGINADO: TSmallintField;
    Dbx_IndiceOBRCLIPARC: TSmallintField;
    Cds_IndiceOBRCLIPARC: TSmallintField;
    Dbx_ClientesOBSERVACAO: TMemoField;
    Cds_ClientesOBSERVACAO: TMemoField;
    Dbx_sVendaSITUACAO: TIntegerField;
    Dbx_sVendaNCO: TIntegerField;
    Dbx_sVendaTIPOOP: TIntegerField;
    Dbx_sVendaTIPOENT: TIntegerField;
    Dbx_sVendaNUMORC: TIntegerField;
    Dbx_sVendaNUMPED: TIntegerField;
    Dbx_sVendaABSDESC: TFMTBCDField;
    Cds_sVendaSITUACAO: TIntegerField;
    Cds_sVendaNCO: TIntegerField;
    Cds_sVendaTIPOOP: TIntegerField;
    Cds_sVendaTIPOENT: TIntegerField;
    Cds_sVendaNUMORC: TIntegerField;
    Cds_sVendaNUMPED: TIntegerField;
    Cds_sVendaABSDESC: TFMTBCDField;
    Dbx_IndiceABRIRPRODFV: TSmallintField;
    Cds_IndiceABRIRPRODFV: TSmallintField;
    Dbx_vProdutosCDESCPROD: TIntegerField;
    Dbx_vProdutosCODIGO: TIntegerField;
    Dbx_vProdutosPCOM: TBCDField;
    Cds_vProdutosCDESCPROD: TIntegerField;
    Cds_vProdutosCODIGO: TIntegerField;
    Cds_vProdutosPCOM: TBCDField;
    Dbx_IndiceABRRESUPRODV: TSmallintField;
    Dbx_IndiceTPIMPV: TSmallintField;
    Cds_IndiceABRRESUPRODV: TSmallintField;
    Cds_IndiceTPIMPV: TSmallintField;
    Dbx_vDvendas: TSQLQuery;
    Dsp_vDvendas: TDataSetProvider;
    Cds_vDvendas: TClientDataSet;
    Dts_vDvendas: TDataSource;
    Dbx_vDvendasDESCRICAO: TStringField;
    Dbx_vDvendasDATA: TDateField;
    Cds_vDvendasDESCRICAO: TStringField;
    Cds_vDvendasDATA: TDateField;
    Cds_sVendancli: TStringField;
    Cds_sVendanfun: TStringField;
    Cds_sVendanrep: TStringField;
    Dbx_vDvendasQTDET: TFMTBCDField;
    Cds_vDvendasQTDET: TFMTBCDField;
    Dbx_vDvendasCUNI: TIntegerField;
    Cds_vDvendasCUNI: TIntegerField;
    Cds_vDvendasnuni: TStringField;
    Dbx_vDvendasSUBTOTCT: TFMTBCDField;
    Dbx_vDvendasSUBTOTVT: TFMTBCDField;
    Cds_vDvendasSUBTOTCT: TFMTBCDField;
    Cds_vDvendasSUBTOTVT: TFMTBCDField;
    Dbx_dProdutosPCOM: TBCDField;
    Dbx_dProdutosCONT: TStringField;
    Cds_dProdutosDESCRICAO: TStringField;
    Cds_dProdutosPCOM: TBCDField;
    Cds_dProdutosCONT: TStringField;
    Dbx_vProdutosCONT: TStringField;
    Cds_vProdutosCONT: TStringField;
    Dbx_sVendaTOTPAGAR: TFMTBCDField;
    Dbx_sVendaTOTGPAGAR: TFMTBCDField;
    Dbx_sVendaSAIDA: TDateField;
    Dbx_sVendaVOLUMES: TStringField;
    Dbx_sVendaRESUNI: TStringField;
    Cds_sVendaTOTPAGAR: TFMTBCDField;
    Cds_sVendaTOTGPAGAR: TFMTBCDField;
    Cds_sVendaSAIDA: TDateField;
    Cds_sVendaVOLUMES: TStringField;
    Cds_sVendaRESUNI: TStringField;
    Dbx_dProdutosESPECIFICACAO: TStringField;
    Cds_dProdutosESPECIFICACAO: TStringField;
    Dbx_vProdutosESPECIFICACAO: TStringField;
    Cds_vProdutosESPECIFICACAO: TStringField;
    Dbx_ConfigSITE: TStringField;
    Cds_ConfigSITE: TStringField;
    Dbx_IndiceOBS_RODAPE: TMemoField;
    Cds_IndiceOBS_RODAPE: TMemoField;
    Dbx_ClientesREFERENCIA_END: TStringField;
    Cds_ClientesREFERENCIA_END: TStringField;
    Dbx_sVendaPRAZO_VALIDADE: TDateField;
    Cds_sVendaPRAZO_VALIDADE: TDateField;
    Dbx_ClientesREFERENCIA_OUT: TStringField;
    Cds_ClientesREFERENCIA_OUT: TStringField;
    Dbx_Tipo_Prod: TSQLQuery;
    IntegerField44: TIntegerField;
    Dsp_Tipo_Prod: TDataSetProvider;
    Cds_Tipo_Prod: TClientDataSet;
    IntegerField67: TIntegerField;
    Dts_Tipo_Prod: TDataSource;
    Dbx_Tipo_ProdDESCRICAO: TStringField;
    Cds_Tipo_ProdDESCRICAO: TStringField;
    Dbx_sVendaTOTGPRODD: TFMTBCDField;
    Cds_sVendaTOTGPRODD: TFMTBCDField;
    Cds_dVendanpro: TStringField;
    Dbx_dProdutosCTIPO_PROD: TIntegerField;
    Cds_dProdutosCTIPO_PROD: TIntegerField;
    Dbx_vProdutosCTIPO_PROD: TIntegerField;
    Cds_vProdutosCTIPO_PROD: TIntegerField;
    Cds_vProdutosntipo_prod: TStringField;
    Dbx_dVendaTIPOV: TIntegerField;
    Dbx_dVendaNPRO: TStringField;
    Dbx_dVendaCONTROLE: TIntegerField;
    Dbx_dVendaVCOM: TFMTBCDField;
    Dbx_dVendaESPECIFICACAO: TStringField;
    Cds_dVendaTIPOV: TIntegerField;
    Cds_dVendaCONTROLE: TIntegerField;
    Cds_dVendaVCOM: TFMTBCDField;
    Cds_dVendaESPECIFICACAO: TStringField;
    Dbx_dVendaSUBTOTALC: TFMTBCDField;
    Cds_dVendaSUBTOTALC: TFMTBCDField;
    Dbx_TempCODTIPOPROD: TIntegerField;
    Cds_TempCODTIPOPROD: TIntegerField;
    Cds_Tempntipo_prod: TStringField;
    Dbx_dVendaACTDESC: TStringField;
    Cds_dVendaACTDESC: TStringField;
    Cds_dVendaNPRO2: TStringField;
    Dbx_IndiceBAIXAQDOORCPED: TSmallintField;
    Cds_IndiceBAIXAQDOORCPED: TSmallintField;
    Dbx_IndicePULALINHA: TSmallintField;
    Cds_IndicePULALINHA: TSmallintField;
    Dbx_IndiceF6FINALIZA: TSmallintField;
    Cds_IndiceF6FINALIZA: TSmallintField;
    Dbx_IndiceLINHAS_NF: TSmallintField;
    Cds_IndiceLINHAS_NF: TSmallintField;
    Dbx_Conf_NF: TSQLQuery;
    IntegerField49: TIntegerField;
    Dsp_Conf_NF: TDataSetProvider;
    Cds_Conf_NF: TClientDataSet;
    IntegerField69: TIntegerField;
    Dts_Conf_NF: TDataSource;
    Dbx_Conf_NFCAMPO: TStringField;
    Dbx_Conf_NFCOLUNA: TBCDField;
    Dbx_Conf_NFLINHA: TBCDField;
    Dbx_NatOp: TSQLQuery;
    IntegerField50: TIntegerField;
    Dsp_NatOp: TDataSetProvider;
    Cds_NatOp: TClientDataSet;
    IntegerField71: TIntegerField;
    Dts_NatOp: TDataSource;
    Dbx_TipoCli: TSQLQuery;
    IntegerField51: TIntegerField;
    Dsp_TipoCli: TDataSetProvider;
    Cds_TipoCli: TClientDataSet;
    IntegerField73: TIntegerField;
    Dts_TipoCli: TDataSource;
    Dbx_NatOpDESCRICAO: TStringField;
    Dbx_NatOpCFOP: TStringField;
    Cds_NatOpDESCRICAO: TStringField;
    Cds_NatOpCFOP: TStringField;
    Dbx_TipoCliDESCRICAO: TStringField;
    Dbx_TipoCliSIGLA: TStringField;
    Cds_TipoCliDESCRICAO: TStringField;
    Cds_TipoCliSIGLA: TStringField;
    Dbx_sVendaTPNF: TSmallintField;
    Dbx_sVendaCNAT: TSmallintField;
    Cds_sVendaTPNF: TSmallintField;
    Cds_sVendaCNAT: TSmallintField;
    Dbx_Transportadores: TSQLQuery;
    IntegerField52: TIntegerField;
    Dsp_Transportadores: TDataSetProvider;
    Cds_Transportadores: TClientDataSet;
    IntegerField75: TIntegerField;
    Dts_Transportadores: TDataSource;
    Dbx_TransportadoresNOME: TStringField;
    Dbx_TransportadoresCNPJ: TStringField;
    Dbx_TransportadoresIE: TStringField;
    Dbx_TransportadoresENDERECO: TStringField;
    Dbx_TransportadoresCIDADE: TStringField;
    Dbx_TransportadoresESTADO: TStringField;
    Dbx_TransportadoresCEP: TStringField;
    Dbx_TransportadoresTELEFONES: TStringField;
    Dbx_TransportadoresCOMPL: TStringField;
    Dbx_TransportadoresBAIRRO: TStringField;
    Dbx_TransportadoresCONTATO: TStringField;
    Dbx_TransportadoresSITE: TStringField;
    Dbx_TransportadoresEMAIL: TStringField;
    Cds_TransportadoresNOME: TStringField;
    Cds_TransportadoresCNPJ: TStringField;
    Cds_TransportadoresIE: TStringField;
    Cds_TransportadoresENDERECO: TStringField;
    Cds_TransportadoresCIDADE: TStringField;
    Cds_TransportadoresESTADO: TStringField;
    Cds_TransportadoresCEP: TStringField;
    Cds_TransportadoresTELEFONES: TStringField;
    Cds_TransportadoresCOMPL: TStringField;
    Cds_TransportadoresBAIRRO: TStringField;
    Cds_TransportadoresCONTATO: TStringField;
    Cds_TransportadoresSITE: TStringField;
    Cds_TransportadoresEMAIL: TStringField;
    Dbx_CF: TSQLQuery;
    IntegerField53: TIntegerField;
    Dsp_CF: TDataSetProvider;
    Cds_CF: TClientDataSet;
    IntegerField77: TIntegerField;
    Dts_CF: TDataSource;
    Dbx_SITA: TSQLQuery;
    IntegerField54: TIntegerField;
    Dsp_SITA: TDataSetProvider;
    Cds_SITA: TClientDataSet;
    IntegerField55: TIntegerField;
    Dts_SITA: TDataSource;
    Dbx_SITB: TSQLQuery;
    IntegerField56: TIntegerField;
    Dsp_SITB: TDataSetProvider;
    Cds_SITB: TClientDataSet;
    IntegerField57: TIntegerField;
    Dts_SITB: TDataSource;
    Dbx_IPI: TSQLQuery;
    IntegerField58: TIntegerField;
    Dsp_IPI: TDataSetProvider;
    Cds_IPI: TClientDataSet;
    IntegerField59: TIntegerField;
    Dts_IPI: TDataSource;
    Dbx_AliqImpFis: TSQLQuery;
    IntegerField61: TIntegerField;
    Dsp_AliqImpFis: TDataSetProvider;
    Cds_AliqImpFis: TClientDataSet;
    IntegerField63: TIntegerField;
    Dts_AliqImpFis: TDataSource;
    Dbx_Estados: TSQLQuery;
    IntegerField65: TIntegerField;
    Dsp_Estados: TDataSetProvider;
    Cds_estados: TClientDataSet;
    IntegerField68: TIntegerField;
    Dts_Estados: TDataSource;
    Dbx_sVendaBASEICMS: TFMTBCDField;
    Dbx_sVendaVALORICMS: TFMTBCDField;
    Dbx_sVendaBASECALCICMSSUB: TFMTBCDField;
    Dbx_sVendaVLRICMSSUB: TFMTBCDField;
    Dbx_sVendaVLRFRETE: TFMTBCDField;
    Dbx_sVendaVLRSEGURO: TFMTBCDField;
    Dbx_sVendaOUTDESP: TFMTBCDField;
    Dbx_sVendaVLRIPI: TFMTBCDField;
    Dbx_sVendaVLRTOTNF: TFMTBCDField;
    Dbx_sVendaDADOSADICIONAIS: TMemoField;
    Cds_sVendaBASEICMS: TFMTBCDField;
    Cds_sVendaVALORICMS: TFMTBCDField;
    Cds_sVendaBASECALCICMSSUB: TFMTBCDField;
    Cds_sVendaVLRICMSSUB: TFMTBCDField;
    Cds_sVendaVLRFRETE: TFMTBCDField;
    Cds_sVendaVLRSEGURO: TFMTBCDField;
    Cds_sVendaOUTDESP: TFMTBCDField;
    Cds_sVendaVLRIPI: TFMTBCDField;
    Cds_sVendaVLRTOTNF: TFMTBCDField;
    Cds_sVendaDADOSADICIONAIS: TMemoField;
    Dbx_sVendaQUANTIDADE: TStringField;
    Dbx_sVendaESPECIE: TStringField;
    Dbx_sVendaMARCA: TStringField;
    Dbx_sVendaNUMERO: TStringField;
    Dbx_sVendaPESOB: TStringField;
    Dbx_sVendaPESOL: TStringField;
    Dbx_sVendaFRETEPOR: TStringField;
    Dbx_sVendaPLACAVEI: TStringField;
    Dbx_sVendaUFVEI: TStringField;
    Cds_sVendaQUANTIDADE: TStringField;
    Cds_sVendaESPECIE: TStringField;
    Cds_sVendaMARCA: TStringField;
    Cds_sVendaNUMERO: TStringField;
    Cds_sVendaPESOB: TStringField;
    Cds_sVendaPESOL: TStringField;
    Cds_sVendaFRETEPOR: TStringField;
    Cds_sVendaPLACAVEI: TStringField;
    Cds_sVendaUFVEI: TStringField;
    Dbx_CFDESCRICAO: TStringField;
    Dbx_CFSIGLA: TStringField;
    Cds_CFDESCRICAO: TStringField;
    Cds_CFSIGLA: TStringField;
    Dbx_SITADESCRICAO: TStringField;
    Dbx_SITASIGLA: TStringField;
    Cds_SITADESCRICAO: TStringField;
    Cds_SITASIGLA: TStringField;
    Dbx_SITBDESCRICAO: TStringField;
    Dbx_SITBSIGLA: TStringField;
    Cds_SITBDESCRICAO: TStringField;
    Cds_SITBSIGLA: TStringField;
    Dbx_IPIDESCRICAO: TStringField;
    Dbx_IPISIGLA: TStringField;
    Dbx_IPIALIQ: TBCDField;
    Cds_IPIDESCRICAO: TStringField;
    Cds_IPISIGLA: TStringField;
    Cds_IPIALIQ: TBCDField;
    Dbx_AliqImpFisCODEST: TIntegerField;
    Cds_AliqImpFisCODEST: TIntegerField;
    Dbx_EstadosNOME: TStringField;
    Dbx_EstadosSIGLA: TStringField;
    Cds_estadosNOME: TStringField;
    Cds_estadosSIGLA: TStringField;
    Dbx_IndiceCOMPACTAR_LINHAS_NF: TSmallintField;
    Dbx_IndiceREDUCAOICMS: TBCDField;
    Cds_IndiceCOMPACTAR_LINHAS_NF: TSmallintField;
    Cds_IndiceREDUCAOICMS: TBCDField;
    Cds_Indicedespgtoavista: TStringField;
    Cds_sVendanatureza: TStringField;
    Cds_sVendacfop: TStringField;
    Dbx_Conf_NFIMPRIME: TStringField;
    Cds_Conf_NFCAMPO: TStringField;
    Cds_Conf_NFCOLUNA: TBCDField;
    Cds_Conf_NFLINHA: TBCDField;
    Cds_Conf_NFIMPRIME: TStringField;
    Dbx_sVendaVLRDUP1: TFMTBCDField;
    Dbx_sVendaVCTDUP1: TDateField;
    Dbx_sVendaVLRDUP2: TFMTBCDField;
    Dbx_sVendaVCTDUP2: TDateField;
    Dbx_sVendaVLRDUP3: TFMTBCDField;
    Dbx_sVendaVCTDUP3: TDateField;
    Dbx_sVendaVLRDUP4: TFMTBCDField;
    Dbx_sVendaVCTDUP4: TDateField;
    Cds_sVendaVLRDUP1: TFMTBCDField;
    Cds_sVendaVCTDUP1: TDateField;
    Cds_sVendaVLRDUP2: TFMTBCDField;
    Cds_sVendaVCTDUP2: TDateField;
    Cds_sVendaVLRDUP3: TFMTBCDField;
    Cds_sVendaVCTDUP3: TDateField;
    Cds_sVendaVLRDUP4: TFMTBCDField;
    Cds_sVendaVCTDUP4: TDateField;
    Cds_dVendanunid: TStringField;
    Dbx_dVendaIMPNF: TStringField;
    Cds_dVendaIMPNF: TStringField;
    Dbx_RepresentantesCOMISSAO: TBCDField;
    Cds_RepresentantesCOMISSAO: TBCDField;
    Dbx_FuncionariosATIVO: TStringField;
    Cds_FuncionariosATIVO: TStringField;
    Dbx_ClientesCTIPOCLI: TIntegerField;
    Cds_ClientesCTIPOCLI: TIntegerField;
    Dbx_ClasseSUBGRU: TIntegerField;
    Cds_ClasseSUBGRU: TIntegerField;
    Dbx_PagarCTPPAGTO: TIntegerField;
    Cds_PagarCTPPAGTO: TIntegerField;
    Dbx_VendabSUBTOTALC: TFMTBCDField;
    Cds_VendabSUBTOTALC: TFMTBCDField;
    Dbx_vDvendasNCO: TIntegerField;
    Dbx_vDvendasTIPOOP: TIntegerField;
    Dbx_vDvendasPRCU: TFMTBCDField;
    Dbx_vDvendasPRVE: TFMTBCDField;
    Dbx_vDvendasEOUS: TStringField;
    Dbx_vDvendasCODIGO: TIntegerField;
    Dbx_vDvendasCFUN: TIntegerField;
    Dbx_vDvendasCREP: TIntegerField;
    Dbx_vDvendasCCLI: TIntegerField;
    Cds_vDvendasNCO: TIntegerField;
    Cds_vDvendasTIPOOP: TIntegerField;
    Cds_vDvendasPRCU: TFMTBCDField;
    Cds_vDvendasPRVE: TFMTBCDField;
    Cds_vDvendasEOUS: TStringField;
    Cds_vDvendasCODIGO: TIntegerField;
    Cds_vDvendasCFUN: TIntegerField;
    Cds_vDvendasCREP: TIntegerField;
    Cds_vDvendasCCLI: TIntegerField;
    Dbx_dProdutosCODCF: TIntegerField;
    Dbx_dProdutosCODSITA: TIntegerField;
    Dbx_dProdutosCODSITB: TIntegerField;
    Dbx_dProdutosCODIPI: TIntegerField;
    Cds_dProdutosCODCF: TIntegerField;
    Cds_dProdutosCODSITA: TIntegerField;
    Cds_dProdutosCODSITB: TIntegerField;
    Cds_dProdutosCODIPI: TIntegerField;
    Dbx_dVendaCODCF: TIntegerField;
    Dbx_dVendaCODSITA: TIntegerField;
    Dbx_dVendaCODSITB: TIntegerField;
    Dbx_dVendaCODIPI: TIntegerField;
    Dbx_dVendaCODICMS: TIntegerField;
    Cds_dVendaCODCF: TIntegerField;
    Cds_dVendaCODSITA: TIntegerField;
    Cds_dVendaCODSITB: TIntegerField;
    Cds_dVendaCODIPI: TIntegerField;
    Cds_dVendaCODICMS: TIntegerField;
    Dbx_vProdutosCODCF: TIntegerField;
    Dbx_vProdutosCODSITA: TIntegerField;
    Dbx_vProdutosCODSITB: TIntegerField;
    Dbx_vProdutosCODIPI: TIntegerField;
    Cds_vProdutosCODCF: TIntegerField;
    Cds_vProdutosCODSITA: TIntegerField;
    Cds_vProdutosCODSITB: TIntegerField;
    Cds_vProdutosCODIPI: TIntegerField;
    Cds_dVendancfsigla: TStringField;
    Cds_dVendansitasigla: TStringField;
    Cds_dVendansitbsigla: TStringField;
    Cds_dVendanicmssigla: TStringField;
    Cds_dVendanipisigla: TStringField;
    Dbx_dVendaVLRIPI: TFMTBCDField;
    Cds_dVendaVLRIPI: TFMTBCDField;
    Dbx_Conf_NFESPACO: TIntegerField;
    Cds_Conf_NFESPACO: TIntegerField;
    Cds_vProdutosncf: TStringField;
    Cds_vProdutosnsita: TStringField;
    Cds_vProdutosnsitb: TStringField;
    Cds_vProdutosnsigla: TStringField;
    Cds_vProdutosnipi: TStringField;
    Dbx_sVendaFRETEP: TSmallintField;
    Cds_sVendaFRETEP: TSmallintField;
    Dbx_sVendaDA1: TStringField;
    Dbx_sVendaDA2: TStringField;
    Dbx_sVendaDA3: TStringField;
    Dbx_sVendaDA4: TStringField;
    Dbx_sVendaDA5: TStringField;
    Dbx_sVendaDA6: TStringField;
    Dbx_sVendaDA7: TStringField;
    Dbx_sVendaDA8: TStringField;
    Cds_sVendaDA1: TStringField;
    Cds_sVendaDA2: TStringField;
    Cds_sVendaDA3: TStringField;
    Cds_sVendaDA4: TStringField;
    Cds_sVendaDA5: TStringField;
    Cds_sVendaDA6: TStringField;
    Cds_sVendaDA7: TStringField;
    Cds_sVendaDA8: TStringField;
    Dbx_sVendaCTRANSP: TIntegerField;
    Cds_sVendaCTRANSP: TIntegerField;
    Cds_sVendantransp: TStringField;
    Dbx_IndiceDA1: TStringField;
    Dbx_IndiceDA2: TStringField;
    Dbx_IndiceDA3: TStringField;
    Dbx_IndiceDA4: TStringField;
    Dbx_IndiceDA5: TStringField;
    Dbx_IndiceDA6: TStringField;
    Dbx_IndiceDA7: TStringField;
    Dbx_IndiceDA8: TStringField;
    Cds_IndiceDA1: TStringField;
    Cds_IndiceDA2: TStringField;
    Cds_IndiceDA3: TStringField;
    Cds_IndiceDA4: TStringField;
    Cds_IndiceDA5: TStringField;
    Cds_IndiceDA6: TStringField;
    Cds_IndiceDA7: TStringField;
    Cds_IndiceDA8: TStringField;
    Dbx_sVendaIMPDESTQCONT: TStringField;
    Cds_sVendaIMPDESTQCONT: TStringField;
    Cds_vProdutosnmarca: TStringField;
    Cds_vProdutosngrupo: TStringField;
    Dbx_sVendaNUMDUP1: TStringField;
    Dbx_sVendaNUMDUP2: TStringField;
    Dbx_sVendaNUMDUP3: TStringField;
    Dbx_sVendaNUMDUP4: TStringField;
    Cds_sVendaNUMDUP1: TStringField;
    Cds_sVendaNUMDUP2: TStringField;
    Cds_sVendaNUMDUP3: TStringField;
    Cds_sVendaNUMDUP4: TStringField;
    Dbx_sVendaPRAZO1: TSmallintField;
    Dbx_sVendaPRAZO2: TSmallintField;
    Dbx_sVendaPRAZO3: TSmallintField;
    Dbx_sVendaPRAZO4: TSmallintField;
    Cds_sVendaPRAZO1: TSmallintField;
    Cds_sVendaPRAZO2: TSmallintField;
    Cds_sVendaPRAZO3: TSmallintField;
    Cds_sVendaPRAZO4: TSmallintField;
    Dbx_ClientesPRAZO: TSmallintField;
    Cds_ClientesPRAZO: TSmallintField;
    Dbx_ClientesREDUCAOICMS: TStringField;
    Cds_ClientesREDUCAOICMS: TStringField;
    Dbx_IndiceIMPDESTDA1: TIntegerField;
    Dbx_IndiceIMPDESTDA2: TIntegerField;
    Dbx_IndiceIMPDESTDA3: TIntegerField;
    Dbx_IndiceIMPDESTDA4: TIntegerField;
    Dbx_IndiceIMPDESTDA5: TIntegerField;
    Dbx_IndiceIMPDESTDA6: TIntegerField;
    Dbx_IndiceIMPDESTDA7: TIntegerField;
    Dbx_IndiceIMPDESTDA8: TIntegerField;
    Cds_IndiceIMPDESTDA1: TIntegerField;
    Cds_IndiceIMPDESTDA2: TIntegerField;
    Cds_IndiceIMPDESTDA3: TIntegerField;
    Cds_IndiceIMPDESTDA4: TIntegerField;
    Cds_IndiceIMPDESTDA5: TIntegerField;
    Cds_IndiceIMPDESTDA6: TIntegerField;
    Cds_IndiceIMPDESTDA7: TIntegerField;
    Cds_IndiceIMPDESTDA8: TIntegerField;
    Dbx_ImpRecAnt: TSQLQuery;
    IntegerField70: TIntegerField;
    Dsp_ImpRecAnt: TDataSetProvider;
    Cds_ImpRecAnt: TClientDataSet;
    IntegerField72: TIntegerField;
    Dts_ImpRecAnt: TDataSource;
    Dbx_ImpRecAntCSITA: TIntegerField;
    Dbx_ImpRecAntCSITB: TIntegerField;
    Cds_ImpRecAntCSITA: TIntegerField;
    Cds_ImpRecAntCSITB: TIntegerField;
    Dbx_IndiceQDONOVOPEDINT: TSmallintField;
    Cds_IndiceQDONOVOPEDINT: TSmallintField;
    Dbx_FornecedoresLINHA: TStringField;
    Cds_FornecedoresLINHA: TStringField;
    Dbx_ClientesCOMPRADOR: TStringField;
    Dbx_ClientesCVEND: TIntegerField;
    Cds_ClientesCOMPRADOR: TStringField;
    Cds_ClientesCVEND: TIntegerField;
    Cds_sVendacbccli: TIntegerField;
    Cds_sVendacbcfun: TIntegerField;
    Cds_sVendacbcrep: TIntegerField;
    Cds_sVendacbt: TStringField;
    Cds_sVendanfant: TStringField;
    Cds_vProdutoscodmar: TIntegerField;
    Cds_vProdutoscodgru: TIntegerField;
    Dbx_vEnt_Estq: TSQLQuery;
    Dsp_vEnt_Estq: TDataSetProvider;
    Cds_vEnt_Estq: TClientDataSet;
    Dts_vEnt_Estq: TDataSource;
    Dbx_vEnt_EstqNPRO: TStringField;
    Dbx_vEnt_EstqCPRO: TIntegerField;
    Dbx_vEnt_EstqCUNI: TIntegerField;
    Dbx_vEnt_EstqDATA_ENT: TDateField;
    Dbx_vEnt_EstqCFOR: TIntegerField;
    Dbx_vEnt_EstqQTDE: TBCDField;
    Dbx_vEnt_EstqEHENTREGA: TStringField;
    Cds_vEnt_EstqNPRO: TStringField;
    Cds_vEnt_EstqCPRO: TIntegerField;
    Cds_vEnt_EstqCUNI: TIntegerField;
    Cds_vEnt_EstqDATA_ENT: TDateField;
    Cds_vEnt_EstqCFOR: TIntegerField;
    Cds_vEnt_EstqQTDE: TBCDField;
    Cds_vEnt_EstqEHENTREGA: TStringField;
    Dbx_IndiceEMAILRET: TStringField;
    Cds_IndiceEMAILRET: TStringField;
    Dbx_IndiceNOMERET: TStringField;
    Cds_IndiceNOMERET: TStringField;
    Cds_Ent_Prodnpro: TStringField;
    Cds_vProdutosEntradas: TFloatField;
    Cds_vProdutosSaidas: TFloatField;
    Dbx_VenctoPRAZO: TSmallintField;
    Cds_VenctoPRAZO: TSmallintField;
    Dbx_IndiceCODAVISTA: TSmallintField;
    Cds_IndiceCODAVISTA: TSmallintField;
    Dbx_sVendaLANCADO: TStringField;
    Cds_sVendaLANCADO: TStringField;
    Dbx_sVendaORIGINADO: TSmallintField;
    Cds_sVendaORIGINADO: TSmallintField;
    Dbx_sVendaPDESC_P: TFMTBCDField;
    Dbx_sVendaVALDESC_P: TFMTBCDField;
    Dbx_sVendaLIQUIDO_P: TFMTBCDField;
    Dbx_sVendaDIN_P: TFMTBCDField;
    Dbx_sVendaTROCO_P: TFMTBCDField;
    Dbx_sVendaOUTROAVIST_P: TFMTBCDField;
    Dbx_sVendaPARC_P: TSmallintField;
    Dbx_sVendaJUROS_P: TBCDField;
    Dbx_sVendaPRIPARC_P: TStringField;
    Dbx_sVendaPDESC_O: TFMTBCDField;
    Dbx_sVendaVALDESC_O: TFMTBCDField;
    Dbx_sVendaLIQUIDO_O: TFMTBCDField;
    Dbx_sVendaDIN_O: TFMTBCDField;
    Dbx_sVendaTROCO_O: TFMTBCDField;
    Dbx_sVendaOUTROAVIST_O: TFMTBCDField;
    Dbx_sVendaPARC_O: TSmallintField;
    Dbx_sVendaJUROS_O: TBCDField;
    Dbx_sVendaPRIPARC_O: TStringField;
    Cds_sVendaPDESC_P: TFMTBCDField;
    Cds_sVendaVALDESC_P: TFMTBCDField;
    Cds_sVendaLIQUIDO_P: TFMTBCDField;
    Cds_sVendaDIN_P: TFMTBCDField;
    Cds_sVendaTROCO_P: TFMTBCDField;
    Cds_sVendaOUTROAVIST_P: TFMTBCDField;
    Cds_sVendaPARC_P: TSmallintField;
    Cds_sVendaJUROS_P: TBCDField;
    Cds_sVendaPRIPARC_P: TStringField;
    Cds_sVendaPDESC_O: TFMTBCDField;
    Cds_sVendaVALDESC_O: TFMTBCDField;
    Cds_sVendaLIQUIDO_O: TFMTBCDField;
    Cds_sVendaDIN_O: TFMTBCDField;
    Cds_sVendaTROCO_O: TFMTBCDField;
    Cds_sVendaOUTROAVIST_O: TFMTBCDField;
    Cds_sVendaPARC_O: TSmallintField;
    Cds_sVendaJUROS_O: TBCDField;
    Cds_sVendaPRIPARC_O: TStringField;
    Dbx_Vencto_NF: TSQLQuery;
    Dsp_Vencto_NF: TDataSetProvider;
    Cds_Vencto_NF: TClientDataSet;
    Dts_Vencto_NF: TDataSource;
    Dbx_Vencto_NFC_TIPO_PGTO: TIntegerField;
    Dbx_Vencto_NFC_SVENDA: TIntegerField;
    Dbx_Vencto_NFDTL: TDateField;
    Dbx_Vencto_NFDTV: TDateField;
    Dbx_Vencto_NFVALOR: TFMTBCDField;
    Dbx_Vencto_NFVALLIQ: TFMTBCDField;
    Dbx_Vencto_NFDESCRICAO: TStringField;
    Dbx_Vencto_NFDOC: TStringField;
    Dbx_Vencto_NFCREC: TIntegerField;
    Dbx_Vencto_NFCCLI: TIntegerField;
    Dbx_Vencto_NFCSIT: TIntegerField;
    Dbx_Vencto_NFOBS: TMemoField;
    Dbx_Vencto_NFJUROS: TFMTBCDField;
    Dbx_Vencto_NFCODTIPOP: TIntegerField;
    Dbx_Vencto_NFVPARCSEMJ: TFMTBCDField;
    Dbx_Vencto_NFNCO: TIntegerField;
    Dbx_Vencto_NFCRT: TIntegerField;
    Dbx_Vencto_NFPARC: TStringField;
    Dbx_Vencto_NFEHVENDA: TStringField;
    Dbx_Vencto_NFORIGINADO: TSmallintField;
    Dbx_Vencto_NFPRAZO: TSmallintField;
    Dbx_Vencto_NFDTE: TDateField;
    Cds_Vencto_NFC_TIPO_PGTO: TIntegerField;
    Cds_Vencto_NFC_SVENDA: TIntegerField;
    Cds_Vencto_NFDTL: TDateField;
    Cds_Vencto_NFDTV: TDateField;
    Cds_Vencto_NFVALOR: TFMTBCDField;
    Cds_Vencto_NFVALLIQ: TFMTBCDField;
    Cds_Vencto_NFDESCRICAO: TStringField;
    Cds_Vencto_NFDOC: TStringField;
    Cds_Vencto_NFCREC: TIntegerField;
    Cds_Vencto_NFCCLI: TIntegerField;
    Cds_Vencto_NFCSIT: TIntegerField;
    Cds_Vencto_NFOBS: TMemoField;
    Cds_Vencto_NFJUROS: TFMTBCDField;
    Cds_Vencto_NFCODTIPOP: TIntegerField;
    Cds_Vencto_NFVPARCSEMJ: TFMTBCDField;
    Cds_Vencto_NFNCO: TIntegerField;
    Cds_Vencto_NFCRT: TIntegerField;
    Cds_Vencto_NFPARC: TStringField;
    Cds_Vencto_NFEHVENDA: TStringField;
    Cds_Vencto_NFORIGINADO: TSmallintField;
    Cds_Vencto_NFPRAZO: TSmallintField;
    Cds_Vencto_NFDTE: TDateField;
    Cds_Vencto_NFn_tipo_pgto: TStringField;
    Dbx_AliqImpFisACUMULA: TStringField;
    Cds_AliqImpFisACUMULA: TStringField;
    Dbx_NFE: TSQLQuery;
    Dsp_NFE: TDataSetProvider;
    Cds_NFE: TClientDataSet;
    Dts_NFE: TDataSource;
    Dbx_NFECOD_SVENDA: TIntegerField;
    Dbx_NFEDTE: TDateField;
    Dbx_NFETOTALBSCALCICMS: TFMTBCDField;
    Dbx_NFETOTVLRICMS: TFMTBCDField;
    Dbx_NFETOTBSCALCBSICMS: TFMTBCDField;
    Dbx_NFETOTVLRBSICMS: TFMTBCDField;
    Dbx_NFETOTBSCALCICMS: TFMTBCDField;
    Dbx_NFETOTVLRTOTPROD: TFMTBCDField;
    Dbx_NFETOTVLRFRETE: TFMTBCDField;
    Dbx_NFETOTVLRSEG: TFMTBCDField;
    Dbx_NFETOTVLROUTDESP: TFMTBCDField;
    Dbx_NFETOTVLRIPI: TFMTBCDField;
    Dbx_NFETOTVLRTOTNF: TFMTBCDField;
    Cds_NFECOD_SVENDA: TIntegerField;
    Cds_NFEDTE: TDateField;
    Cds_NFETOTALBSCALCICMS: TFMTBCDField;
    Cds_NFETOTVLRICMS: TFMTBCDField;
    Cds_NFETOTBSCALCBSICMS: TFMTBCDField;
    Cds_NFETOTVLRBSICMS: TFMTBCDField;
    Cds_NFETOTBSCALCICMS: TFMTBCDField;
    Cds_NFETOTVLRTOTPROD: TFMTBCDField;
    Cds_NFETOTVLRFRETE: TFMTBCDField;
    Cds_NFETOTVLRSEG: TFMTBCDField;
    Cds_NFETOTVLROUTDESP: TFMTBCDField;
    Cds_NFETOTVLRIPI: TFMTBCDField;
    Cds_NFETOTVLRTOTNF: TFMTBCDField;
    Dbx_NFENNF: TIntegerField;
    Cds_NFENNF: TIntegerField;
    Cds_Venctoncli: TStringField;
    Cds_Venctonsiturec: TStringField;
    Dbx_ProdutosDESCRICAO: TStringField;
    Cds_ProdutosDESCRICAO: TStringField;
    Dbx_vProdutosDESCRICAO: TStringField;
    Cds_vProdutosDESCRICAO: TStringField;
    Dbx_sVendaDATAFEC: TDateField;
    Cds_sVendaDATAFEC: TDateField;
    Dbx_NFECODIGO: TIntegerField;
    Dbx_NFECSITNFE: TIntegerField;
    Cds_NFECODIGO: TIntegerField;
    Cds_NFECSITNFE: TIntegerField;
    Dbx_Vencto_NFCODIGO: TIntegerField;
    Cds_Vencto_NFCODIGO: TIntegerField;
    Dbx_Modulo: TSQLQuery;
    IntegerField74: TIntegerField;
    Dsp_Modulo: TDataSetProvider;
    Cds_Modulo: TClientDataSet;
    IntegerField80: TIntegerField;
    Dts_Modulo: TDataSource;
    Dbx_ModuloDESCRICAO: TStringField;
    Cds_ModuloDESCRICAO: TStringField;
    Dbx_NFP: TSQLQuery;
    IntegerField76: TIntegerField;
    Dsp_NFP: TDataSetProvider;
    Cds_NFP: TClientDataSet;
    IntegerField78: TIntegerField;
    Dts_NFP: TDataSource;
    Dbx_NFPCPRO: TIntegerField;
    Dbx_NFPPRVE: TFMTBCDField;
    Dbx_NFPQTDE: TFMTBCDField;
    Dbx_NFPEOUS: TStringField;
    Dbx_NFPPRCU: TFMTBCDField;
    Dbx_NFPCUNI: TIntegerField;
    Dbx_NFPCREP: TIntegerField;
    Dbx_NFPCGRU: TIntegerField;
    Dbx_NFPCMAR: TIntegerField;
    Dbx_NFPPCOM: TBCDField;
    Dbx_NFPCVEN: TIntegerField;
    Dbx_NFPCCLI: TIntegerField;
    Dbx_NFPNSERIE: TStringField;
    Dbx_NFPOBS: TMemoField;
    Dbx_NFPBAIXA: TStringField;
    Dbx_NFPSUBTOTAL: TFMTBCDField;
    Dbx_NFPREFERENCIA: TStringField;
    Dbx_NFPDATA_OP: TDateField;
    Dbx_NFPCOMISSAO: TFMTBCDField;
    Dbx_NFPIDENTST: TStringField;
    Dbx_NFPTIPOST: TStringField;
    Dbx_NFPPDESC: TBCDField;
    Dbx_NFPCUPOM: TIntegerField;
    Dbx_NFPDESCRICAOST: TStringField;
    Dbx_NFPUNDST: TStringField;
    Dbx_NFPCLIENTEST: TStringField;
    Dbx_NFPVENDEDORST: TStringField;
    Dbx_NFPPGST: TStringField;
    Dbx_NFPCFUN: TIntegerField;
    Dbx_NFPMAXI: TIntegerField;
    Dbx_NFPVDESC: TFMTBCDField;
    Dbx_NFPICM: TBCDField;
    Dbx_NFPISS: TBCDField;
    Dbx_NFPMETRAGEM: TFMTBCDField;
    Dbx_NFPMETRAGEM2: TFMTBCDField;
    Dbx_NFPEHVENDA: TStringField;
    Dbx_NFPTIPOV: TIntegerField;
    Dbx_NFPNPRO: TStringField;
    Dbx_NFPCONTROLE: TIntegerField;
    Dbx_NFPVCOM: TFMTBCDField;
    Dbx_NFPESPECIFICACAO: TStringField;
    Dbx_NFPSUBTOTALC: TFMTBCDField;
    Dbx_NFPACTDESC: TStringField;
    Dbx_NFPIMPNF: TStringField;
    Dbx_NFPCODCF: TIntegerField;
    Dbx_NFPCODSITA: TIntegerField;
    Dbx_NFPCODSITB: TIntegerField;
    Dbx_NFPCODIPI: TIntegerField;
    Dbx_NFPCODICMS: TIntegerField;
    Dbx_NFPVLRIPI: TFMTBCDField;
    Dbx_NFPCODNFE: TIntegerField;
    Cds_NFPCPRO: TIntegerField;
    Cds_NFPPRVE: TFMTBCDField;
    Cds_NFPQTDE: TFMTBCDField;
    Cds_NFPEOUS: TStringField;
    Cds_NFPPRCU: TFMTBCDField;
    Cds_NFPCUNI: TIntegerField;
    Cds_NFPCREP: TIntegerField;
    Cds_NFPCGRU: TIntegerField;
    Cds_NFPCMAR: TIntegerField;
    Cds_NFPPCOM: TBCDField;
    Cds_NFPCVEN: TIntegerField;
    Cds_NFPCCLI: TIntegerField;
    Cds_NFPNSERIE: TStringField;
    Cds_NFPOBS: TMemoField;
    Cds_NFPBAIXA: TStringField;
    Cds_NFPSUBTOTAL: TFMTBCDField;
    Cds_NFPREFERENCIA: TStringField;
    Cds_NFPDATA_OP: TDateField;
    Cds_NFPCOMISSAO: TFMTBCDField;
    Cds_NFPIDENTST: TStringField;
    Cds_NFPTIPOST: TStringField;
    Cds_NFPPDESC: TBCDField;
    Cds_NFPCUPOM: TIntegerField;
    Cds_NFPDESCRICAOST: TStringField;
    Cds_NFPUNDST: TStringField;
    Cds_NFPCLIENTEST: TStringField;
    Cds_NFPVENDEDORST: TStringField;
    Cds_NFPPGST: TStringField;
    Cds_NFPCFUN: TIntegerField;
    Cds_NFPMAXI: TIntegerField;
    Cds_NFPVDESC: TFMTBCDField;
    Cds_NFPICM: TBCDField;
    Cds_NFPISS: TBCDField;
    Cds_NFPMETRAGEM: TFMTBCDField;
    Cds_NFPMETRAGEM2: TFMTBCDField;
    Cds_NFPEHVENDA: TStringField;
    Cds_NFPTIPOV: TIntegerField;
    Cds_NFPNPRO: TStringField;
    Cds_NFPCONTROLE: TIntegerField;
    Cds_NFPVCOM: TFMTBCDField;
    Cds_NFPESPECIFICACAO: TStringField;
    Cds_NFPSUBTOTALC: TFMTBCDField;
    Cds_NFPACTDESC: TStringField;
    Cds_NFPIMPNF: TStringField;
    Cds_NFPCODCF: TIntegerField;
    Cds_NFPCODSITA: TIntegerField;
    Cds_NFPCODSITB: TIntegerField;
    Cds_NFPCODIPI: TIntegerField;
    Cds_NFPCODICMS: TIntegerField;
    Cds_NFPVLRIPI: TFMTBCDField;
    Cds_NFPCODNFE: TIntegerField;
    Dbx_NFM: TSQLQuery;
    IntegerField79: TIntegerField;
    Dsp_NFM: TDataSetProvider;
    Cds_NFM: TClientDataSet;
    IntegerField81: TIntegerField;
    Dts_NFM: TDataSource;
    Dbx_NFMCMOD: TIntegerField;
    Dbx_NFMCDESC: TIntegerField;
    Dbx_NFMNDESC: TStringField;
    Dbx_NFMQTDE: TFMTBCDField;
    Dbx_NFMVALOR: TFMTBCDField;
    Dbx_NFMSUBTOTAL: TFMTBCDField;
    Dbx_NFMPISS: TBCDField;
    Dbx_NFMVISS: TFMTBCDField;
    Dbx_NFMCFUN: TIntegerField;
    Dbx_NFMPCOM: TBCDField;
    Dbx_NFMVCOM: TFMTBCDField;
    Dbx_NFMCODNFE: TIntegerField;
    Cds_NFMCMOD: TIntegerField;
    Cds_NFMCDESC: TIntegerField;
    Cds_NFMNDESC: TStringField;
    Cds_NFMQTDE: TFMTBCDField;
    Cds_NFMVALOR: TFMTBCDField;
    Cds_NFMSUBTOTAL: TFMTBCDField;
    Cds_NFMPISS: TBCDField;
    Cds_NFMVISS: TFMTBCDField;
    Cds_NFMCFUN: TIntegerField;
    Cds_NFMPCOM: TBCDField;
    Cds_NFMVCOM: TFMTBCDField;
    Cds_NFMCODNFE: TIntegerField;
    Dbx_dMobra: TSQLQuery;
    IntegerField82: TIntegerField;
    Dsp_dMobra: TDataSetProvider;
    Cds_dMobra: TClientDataSet;
    Dts_dMobra: TDataSource;
    Dbx_SituNFE: TSQLQuery;
    IntegerField84: TIntegerField;
    Dsp_SituNFE: TDataSetProvider;
    Cds_SituNFE: TClientDataSet;
    IntegerField90: TIntegerField;
    Dts_SituNFE: TDataSource;
    Dbx_SituNFEDESCRICAO: TStringField;
    Cds_SituNFEDESCRICAO: TStringField;
    Dbx_NFMCODDMOBRA: TIntegerField;
    Cds_NFMCODDMOBRA: TIntegerField;
    Dbx_dMobraCODSVENDA: TIntegerField;
    Dbx_dMobraCMOD: TIntegerField;
    Dbx_dMobraCDESC: TIntegerField;
    Dbx_dMobraNDESC: TStringField;
    Dbx_dMobraQTDE: TFMTBCDField;
    Dbx_dMobraVALOR: TFMTBCDField;
    Dbx_dMobraSUBTOTAL: TFMTBCDField;
    Dbx_dMobraPISS: TBCDField;
    Dbx_dMobraVISS: TFMTBCDField;
    Dbx_dMobraCFUN: TIntegerField;
    Dbx_dMobraPCOM: TBCDField;
    Dbx_dMobraVCOM: TFMTBCDField;
    Cds_dMobraCODIGO: TIntegerField;
    Cds_dMobraCODSVENDA: TIntegerField;
    Cds_dMobraCMOD: TIntegerField;
    Cds_dMobraCDESC: TIntegerField;
    Cds_dMobraNDESC: TStringField;
    Cds_dMobraQTDE: TFMTBCDField;
    Cds_dMobraVALOR: TFMTBCDField;
    Cds_dMobraSUBTOTAL: TFMTBCDField;
    Cds_dMobraPISS: TBCDField;
    Cds_dMobraVISS: TFMTBCDField;
    Cds_dMobraCFUN: TIntegerField;
    Cds_dMobraPCOM: TBCDField;
    Cds_dMobraVCOM: TFMTBCDField;
    Dbx_NFPCODDVENDA: TIntegerField;
    Cds_NFPCODDVENDA: TIntegerField;
    Dbx_NF: TSQLQuery;
    IntegerField83: TIntegerField;
    Dsp_NF: TDataSetProvider;
    Cds_NF: TClientDataSet;
    IntegerField107: TIntegerField;
    Dts_NF: TDataSource;
    Dbx_NFCODSVENDA: TIntegerField;
    cna: TIntegerField;
    Dbx_NFCCLI: TIntegerField;
    Cds_NFCCLI: TIntegerField;
    Dbx_NFPCODNF: TIntegerField;
    Cds_NFPCODNF: TIntegerField;
    Dbx_NFMCODNF: TIntegerField;
    Cds_NFMCODNF: TIntegerField;
    Dbx_dProdutosAPLICACAO: TStringField;
    Dbx_dProdutosLOCALIZACAO: TStringField;
    Cds_dProdutosAPLICACAO: TStringField;
    Cds_dProdutosLOCALIZACAO: TStringField;
    Dbx_vProdutosAPLICACAO: TStringField;
    Dbx_vProdutosLOCALIZACAO: TStringField;
    Cds_vProdutosAPLICACAO: TStringField;
    Cds_vProdutosLOCALIZACAO: TStringField;
    Cds_AliqImpFisncodest: TStringField;
    Dbx_AliqImpFisREDUCAO: TFMTBCDField;
    Cds_AliqImpFisREDUCAO: TFMTBCDField;
    Dbx_FuncionariosFOTO: TGraphicField;
    Cds_FuncionariosFOTO: TGraphicField;
    Dbx_FuncionariosBAIRRO: TStringField;
    Cds_FuncionariosBAIRRO: TStringField;
    Dbx_FuncionariosFILENAME: TStringField;
    Cds_FuncionariosFILENAME: TStringField;
    Cds_vProdutostipo_prod: TStringField;
    Cds_NFEnsitnfe: TStringField;
    Cds_sVendatotg: TFloatField;
    Dbx_VenctoNPED: TIntegerField;
    Dbx_VenctoPARTE: TStringField;
    Cds_VenctoNPED: TIntegerField;
    Cds_VenctoPARTE: TStringField;
    Dbx_Vencto_NFNNF: TIntegerField;
    Dbx_Vencto_NFPARTE: TStringField;
    Cds_Vencto_NFNNF: TIntegerField;
    Cds_Vencto_NFPARTE: TStringField;
    Dbx_Comissao: TSQLQuery;
    IntegerField85: TIntegerField;
    Dsp_Comissao: TDataSetProvider;
    Cds_Comissao: TClientDataSet;
    IntegerField88: TIntegerField;
    Dts_Comissao: TDataSource;
    Dbx_ComissaoR: TSQLQuery;
    IntegerField86: TIntegerField;
    Dsp_ComissaoR: TDataSetProvider;
    Cds_ComissaoR: TClientDataSet;
    IntegerField87: TIntegerField;
    Dts_ComissaoR: TDataSource;
    Dbx_ComissaoCODSVENDA: TIntegerField;
    Dbx_ComissaoCFUN: TIntegerField;
    Dbx_ComissaoDESCRICAO: TStringField;
    Dbx_ComissaoSERVICO: TStringField;
    Dbx_ComissaoDTE: TDateField;
    Dbx_ComissaoDATAFEC: TDateField;
    Dbx_ComissaoVALOR: TFMTBCDField;
    Dbx_ComissaoPCOMF: TBCDField;
    Dbx_ComissaoVCOMF: TFMTBCDField;
    Dbx_ComissaoCMOD: TIntegerField;
    Cds_ComissaoCODSVENDA: TIntegerField;
    Cds_ComissaoCFUN: TIntegerField;
    Cds_ComissaoDESCRICAO: TStringField;
    Cds_ComissaoSERVICO: TStringField;
    Cds_ComissaoDTE: TDateField;
    Cds_ComissaoDATAFEC: TDateField;
    Cds_ComissaoVALOR: TFMTBCDField;
    Cds_ComissaoPCOMF: TBCDField;
    Cds_ComissaoVCOMF: TFMTBCDField;
    Cds_ComissaoCMOD: TIntegerField;
    Dbx_ComissaoRCODSVENDA: TIntegerField;
    Dbx_ComissaoRCREP: TIntegerField;
    Dbx_ComissaoRDESCRICAO: TStringField;
    Dbx_ComissaoRSERVICO: TStringField;
    Dbx_ComissaoRDTE: TDateField;
    Dbx_ComissaoRDATAFEC: TDateField;
    Dbx_ComissaoRVALOR: TFMTBCDField;
    Dbx_ComissaoRPCOMR: TBCDField;
    Dbx_ComissaoRVCOMR: TFMTBCDField;
    Dbx_ComissaoRCMOD: TIntegerField;
    Cds_ComissaoRCODSVENDA: TIntegerField;
    Cds_ComissaoRCREP: TIntegerField;
    Cds_ComissaoRDESCRICAO: TStringField;
    Cds_ComissaoRSERVICO: TStringField;
    Cds_ComissaoRDTE: TDateField;
    Cds_ComissaoRDATAFEC: TDateField;
    Cds_ComissaoRVALOR: TFMTBCDField;
    Cds_ComissaoRPCOMR: TBCDField;
    Cds_ComissaoRVCOMR: TFMTBCDField;
    Cds_ComissaoRCMOD: TIntegerField;
    Dbx_Ent_ProdOBS: TMemoField;
    Cds_Ent_ProdOBS: TMemoField;
    Dbx_dVendaCOMENTARIO: TStringField;
    Cds_dVendaCOMENTARIO: TStringField;
    Dbx_Ent_ProdCOMENTARIO: TStringField;
    Cds_Ent_ProdCOMENTARIO: TStringField;
    Dbx_VendabCODSVENDA: TIntegerField;
    Cds_VendabCODSVENDA: TIntegerField;
    Cds_Comissaonfun: TStringField;
    Cds_ComissaoRnrep: TStringField;
    Dbx_NFPDESC: TFMTBCDField;
    Dbx_NFVALDESC: TFMTBCDField;
    Dbx_NFLIQUIDO: TFMTBCDField;
    Dbx_NFTOTAL: TFMTBCDField;
    Dbx_NFFRETE: TFMTBCDField;
    Dbx_NFDIN: TFMTBCDField;
    Dbx_NFCREP: TIntegerField;
    Dbx_NFTROCO: TFMTBCDField;
    Dbx_NFTOTBRUTO: TFMTBCDField;
    Dbx_NFOUTROAVIST: TFMTBCDField;
    Dbx_NFPARC: TSmallintField;
    Dbx_NFNPED: TIntegerField;
    Dbx_NFPRIPARC: TStringField;
    Dbx_NFTOTE: TFMTBCDField;
    Dbx_NFDATACAD: TDateField;
    Dbx_NFEM_CAIXA: TFMTBCDField;
    Dbx_NFCUSTOPECAS: TFMTBCDField;
    Dbx_NFCUSTOPECAE: TFMTBCDField;
    Dbx_NFCFUN: TIntegerField;
    Dbx_NFTIPOOP: TIntegerField;
    Dbx_NFABSDESC: TFMTBCDField;
    Dbx_NFTOTPAGAR: TFMTBCDField;
    Dbx_NFTOTGPAGAR: TFMTBCDField;
    Dbx_NFTOTGPRODD: TFMTBCDField;
    Dbx_NFTPNF: TSmallintField;
    Dbx_NFCNAT: TSmallintField;
    Dbx_NFBASEICMS: TFMTBCDField;
    Dbx_NFVALORICMS: TFMTBCDField;
    Dbx_NFBASECALCICMSSUB: TFMTBCDField;
    Dbx_NFVLRICMSSUB: TFMTBCDField;
    Dbx_NFVLRFRETE: TFMTBCDField;
    Dbx_NFVLRSEGURO: TFMTBCDField;
    Dbx_NFOUTDESP: TFMTBCDField;
    Dbx_NFVLRIPI: TFMTBCDField;
    Dbx_NFVLRTOTNF: TFMTBCDField;
    Dbx_NFQUANTIDADE: TStringField;
    Dbx_NFESPECIE: TStringField;
    Dbx_NFMARCA: TStringField;
    Dbx_NFNUMERO: TStringField;
    Dbx_NFPESOB: TStringField;
    Dbx_NFPESOL: TStringField;
    Dbx_NFFRETEPOR: TStringField;
    Dbx_NFPLACAVEI: TStringField;
    Dbx_NFUFVEI: TStringField;
    Dbx_NFFRETEP: TSmallintField;
    Dbx_NFDA1: TStringField;
    Dbx_NFDA2: TStringField;
    Dbx_NFDA3: TStringField;
    Dbx_NFDA4: TStringField;
    Dbx_NFDA5: TStringField;
    Dbx_NFDA6: TStringField;
    Dbx_NFDA7: TStringField;
    Dbx_NFDA8: TStringField;
    Dbx_NFCTRANSP: TIntegerField;
    Dbx_NFIMPDESTQCONT: TStringField;
    Dbx_NFLANCADO: TIntegerField;
    Dbx_NFORIGINADO: TSmallintField;
    Cds_NFPDESC: TFMTBCDField;
    Cds_NFVALDESC: TFMTBCDField;
    Cds_NFLIQUIDO: TFMTBCDField;
    Cds_NFTOTAL: TFMTBCDField;
    Cds_NFFRETE: TFMTBCDField;
    Cds_NFDIN: TFMTBCDField;
    Cds_NFCREP: TIntegerField;
    Cds_NFTROCO: TFMTBCDField;
    Cds_NFTOTBRUTO: TFMTBCDField;
    Cds_NFOUTROAVIST: TFMTBCDField;
    Cds_NFPARC: TSmallintField;
    Cds_NFNPED: TIntegerField;
    Cds_NFPRIPARC: TStringField;
    Cds_NFTOTE: TFMTBCDField;
    Cds_NFDATACAD: TDateField;
    Cds_NFEM_CAIXA: TFMTBCDField;
    Cds_NFCUSTOPECAS: TFMTBCDField;
    Cds_NFCUSTOPECAE: TFMTBCDField;
    Cds_NFCFUN: TIntegerField;
    Cds_NFTIPOOP: TIntegerField;
    Cds_NFABSDESC: TFMTBCDField;
    Cds_NFTOTPAGAR: TFMTBCDField;
    Cds_NFTOTGPAGAR: TFMTBCDField;
    Cds_NFTOTGPRODD: TFMTBCDField;
    Cds_NFTPNF: TSmallintField;
    Cds_NFCNAT: TSmallintField;
    Cds_NFBASEICMS: TFMTBCDField;
    Cds_NFVALORICMS: TFMTBCDField;
    Cds_NFBASECALCICMSSUB: TFMTBCDField;
    Cds_NFVLRICMSSUB: TFMTBCDField;
    Cds_NFVLRFRETE: TFMTBCDField;
    Cds_NFVLRSEGURO: TFMTBCDField;
    Cds_NFOUTDESP: TFMTBCDField;
    Cds_NFVLRIPI: TFMTBCDField;
    Cds_NFVLRTOTNF: TFMTBCDField;
    Cds_NFQUANTIDADE: TStringField;
    Cds_NFESPECIE: TStringField;
    Cds_NFMARCA: TStringField;
    Cds_NFNUMERO: TStringField;
    Cds_NFPESOB: TStringField;
    Cds_NFPESOL: TStringField;
    Cds_NFFRETEPOR: TStringField;
    Cds_NFPLACAVEI: TStringField;
    Cds_NFUFVEI: TStringField;
    Cds_NFFRETEP: TSmallintField;
    Cds_NFDA1: TStringField;
    Cds_NFDA2: TStringField;
    Cds_NFDA3: TStringField;
    Cds_NFDA4: TStringField;
    Cds_NFDA5: TStringField;
    Cds_NFDA6: TStringField;
    Cds_NFDA7: TStringField;
    Cds_NFDA8: TStringField;
    Cds_NFCTRANSP: TIntegerField;
    Cds_NFIMPDESTQCONT: TStringField;
    Cds_NFLANCADO: TIntegerField;
    Cds_NFORIGINADO: TSmallintField;
    Dbx_TempCOD: TIntegerField;
    Cds_TempCOD: TIntegerField;
    Dbx_TempCOD1: TIntegerField;
    Dbx_TempCOD2: TIntegerField;
    Dbx_TempCOD3: TIntegerField;
    Dbx_TempCOD4: TIntegerField;
    Dbx_TempCOD5: TIntegerField;
    Dbx_TempCOD6: TIntegerField;
    Dbx_TempCOD7: TIntegerField;
    Dbx_TempCOD8: TIntegerField;
    Dbx_TempCOD9: TIntegerField;
    Dbx_TempCOD10: TIntegerField;
    Cds_TempCOD1: TIntegerField;
    Cds_TempCOD2: TIntegerField;
    Cds_TempCOD3: TIntegerField;
    Cds_TempCOD4: TIntegerField;
    Cds_TempCOD5: TIntegerField;
    Cds_TempCOD6: TIntegerField;
    Cds_TempCOD7: TIntegerField;
    Cds_TempCOD8: TIntegerField;
    Cds_TempCOD9: TIntegerField;
    Cds_TempCOD10: TIntegerField;
    Cds_NFnfun: TStringField;
    Cds_NFnrep: TStringField;
    Cds_NFncli: TStringField;
    Cds_NFnfan: TStringField;
    Dbx_NFSAIDA: TDateField;
    Dbx_NFVOLUMES: TStringField;
    Dbx_NFRESUNI: TStringField;
    Dbx_NFPRAZO_VALIDADE: TDateField;
    Cds_NFSAIDA: TDateField;
    Cds_NFVOLUMES: TStringField;
    Cds_NFRESUNI: TStringField;
    Cds_NFPRAZO_VALIDADE: TDateField;
    Cds_NFtotg: TFloatField;
    Dbx_Vencto_NFCODNF: TIntegerField;
    Cds_Vencto_NFCODNF: TIntegerField;
    Cds_NFnatureza: TStringField;
    Cds_NFcfop: TStringField;
    Cds_NFntransp: TStringField;
    Dbx_NFECODNF: TIntegerField;
    Cds_NFECODNF: TIntegerField;
    Cds_NFPnunid: TStringField;
    Dbx_IndicePORTAIMP: TSmallintField;
    Cds_IndicePORTAIMP: TSmallintField;
    Dbx_Sangria: TSQLQuery;
    IntegerField89: TIntegerField;
    Dsp_Sangria: TDataSetProvider;
    Cds_Sangria: TClientDataSet;
    IntegerField113: TIntegerField;
    Dts_sangria: TDataSource;
    Dbx_Ingestao: TSQLQuery;
    IntegerField135: TIntegerField;
    Dsp_Ingestao: TDataSetProvider;
    Cds_Ingestao: TClientDataSet;
    IntegerField157: TIntegerField;
    Dts_Ingestao: TDataSource;
    Dbx_SangriaVALOR: TFMTBCDField;
    Dbx_SangriaCFUN: TIntegerField;
    Dbx_SangriaDATA: TDateField;
    Dbx_SangriaHORA: TStringField;
    Cds_SangriaVALOR: TFMTBCDField;
    Cds_SangriaCFUN: TIntegerField;
    Cds_SangriaDATA: TDateField;
    Cds_SangriaHORA: TStringField;
    Dbx_IngestaoVALOR: TFMTBCDField;
    Dbx_IngestaoCFUN: TIntegerField;
    Dbx_IngestaoDATA: TDateField;
    Dbx_IngestaoHORA: TStringField;
    Cds_IngestaoVALOR: TFMTBCDField;
    Cds_IngestaoCFUN: TIntegerField;
    Cds_IngestaoDATA: TDateField;
    Cds_IngestaoHORA: TStringField;
    Dbx_SangriaORIGEM: TSmallintField;
    Cds_SangriaORIGEM: TSmallintField;
    Dbx_IngestaoORIGEM: TSmallintField;
    Cds_IngestaoORIGEM: TSmallintField;
    Dbx_EnviaComando: TSQLQuery;
    Cds_vProdutostotprod: TFloatField;
    cdsRanking: TClientDataSet;
    cdsRankingcodigo: TIntegerField;
    dtsRanking: TDataSource;
    cdsRankingdescricao: TStringField;
    cdsRankingcpro: TIntegerField;
    cds_tabela_temps: TClientDataSet;
    cdsRankingqtdet: TFloatField;
    cdsRankingnproqtdet: TStringField;
    Dbx_VenctoNOS: TIntegerField;
    Cds_VenctoNOS: TIntegerField;
    Dbx_IndiceID1: TStringField;
    Dbx_IndiceID2: TStringField;
    Dbx_IndiceDESC1: TStringField;
    Dbx_IndiceDESC2: TStringField;
    Dbx_IndiceDESC3: TStringField;
    Dbx_IndiceDESC4: TStringField;
    Dbx_IndiceDESC5: TStringField;
    Dbx_IndiceDESC6: TStringField;
    Dbx_IndiceDESC7: TStringField;
    Dbx_IndiceDESC8: TStringField;
    Dbx_IndiceDESC9: TStringField;
    Dbx_IndiceDESC10: TStringField;
    Dbx_IndiceDESC11: TStringField;
    Dbx_IndiceDESC12: TStringField;
    Dbx_IndiceDESC13: TStringField;
    Dbx_IndiceDESC14: TStringField;
    Dbx_IndiceDESC15: TStringField;
    Dbx_IndiceDESC16: TStringField;
    Dbx_IndiceDESC17: TStringField;
    Dbx_IndiceDESC18: TStringField;
    Dbx_IndiceDESC19: TStringField;
    Dbx_IndiceDESC20: TStringField;
    Dbx_IndiceDESC21: TStringField;
    Dbx_IndiceDESC22: TStringField;
    Dbx_IndiceDESC23: TStringField;
    Dbx_IndiceDESC24: TStringField;
    Dbx_IndiceDESC25: TStringField;
    Dbx_IndiceDESC26: TStringField;
    Dbx_IndiceDESC27: TStringField;
    Dbx_IndiceDESC28: TStringField;
    Dbx_IndiceDESC29: TStringField;
    Dbx_IndiceDESC30: TStringField;
    Dbx_IndiceDESC31: TStringField;
    Dbx_IndiceDESC32: TStringField;
    Dbx_IndiceDESC33: TStringField;
    Dbx_IndiceDESC34: TStringField;
    Dbx_IndiceDESC35: TStringField;
    Dbx_IndiceDESC36: TStringField;
    Dbx_IndiceDESC37: TStringField;
    Dbx_IndiceDESC38: TStringField;
    Cds_IndiceID1: TStringField;
    Cds_IndiceID2: TStringField;
    Cds_IndiceDESC1: TStringField;
    Cds_IndiceDESC2: TStringField;
    Cds_IndiceDESC3: TStringField;
    Cds_IndiceDESC4: TStringField;
    Cds_IndiceDESC5: TStringField;
    Cds_IndiceDESC6: TStringField;
    Cds_IndiceDESC7: TStringField;
    Cds_IndiceDESC8: TStringField;
    Cds_IndiceDESC9: TStringField;
    Cds_IndiceDESC10: TStringField;
    Cds_IndiceDESC11: TStringField;
    Cds_IndiceDESC12: TStringField;
    Cds_IndiceDESC13: TStringField;
    Cds_IndiceDESC14: TStringField;
    Cds_IndiceDESC15: TStringField;
    Cds_IndiceDESC16: TStringField;
    Cds_IndiceDESC17: TStringField;
    Cds_IndiceDESC18: TStringField;
    Cds_IndiceDESC19: TStringField;
    Cds_IndiceDESC20: TStringField;
    Cds_IndiceDESC21: TStringField;
    Cds_IndiceDESC22: TStringField;
    Cds_IndiceDESC23: TStringField;
    Cds_IndiceDESC24: TStringField;
    Cds_IndiceDESC25: TStringField;
    Cds_IndiceDESC26: TStringField;
    Cds_IndiceDESC27: TStringField;
    Cds_IndiceDESC28: TStringField;
    Cds_IndiceDESC29: TStringField;
    Cds_IndiceDESC30: TStringField;
    Cds_IndiceDESC31: TStringField;
    Cds_IndiceDESC32: TStringField;
    Cds_IndiceDESC33: TStringField;
    Cds_IndiceDESC34: TStringField;
    Cds_IndiceDESC35: TStringField;
    Cds_IndiceDESC36: TStringField;
    Cds_IndiceDESC37: TStringField;
    Cds_IndiceDESC38: TStringField;
    Dbx_sVendaID1: TStringField;
    Dbx_sVendaID2: TStringField;
    Dbx_sVendaDESC1: TStringField;
    Dbx_sVendaDESC2: TStringField;
    Dbx_sVendaDESC3: TStringField;
    Dbx_sVendaDESC4: TStringField;
    Dbx_sVendaDESC5: TStringField;
    Dbx_sVendaDESC6: TStringField;
    Dbx_sVendaDESC7: TStringField;
    Dbx_sVendaDESC8: TStringField;
    Dbx_sVendaDESC9: TStringField;
    Dbx_sVendaDESC10: TStringField;
    Dbx_sVendaDESC11: TStringField;
    Dbx_sVendaDESC12: TStringField;
    Dbx_sVendaDESC13: TStringField;
    Dbx_sVendaDESC14: TStringField;
    Dbx_sVendaDESC15: TStringField;
    Dbx_sVendaDESC16: TStringField;
    Dbx_sVendaDESC17: TStringField;
    Dbx_sVendaDESC18: TStringField;
    Dbx_sVendaDESC19: TStringField;
    Dbx_sVendaDESC20: TStringField;
    Dbx_sVendaDESC21: TStringField;
    Dbx_sVendaDESC22: TStringField;
    Dbx_sVendaDESC23: TStringField;
    Dbx_sVendaDESC24: TStringField;
    Dbx_sVendaDESC25: TStringField;
    Dbx_sVendaDESC26: TStringField;
    Dbx_sVendaDESC27: TStringField;
    Dbx_sVendaDESC28: TStringField;
    Dbx_sVendaDESC29: TStringField;
    Dbx_sVendaDESC30: TStringField;
    Dbx_sVendaDESC31: TStringField;
    Dbx_sVendaDESC32: TStringField;
    Dbx_sVendaDESC33: TStringField;
    Dbx_sVendaDESC34: TStringField;
    Dbx_sVendaDESC35: TStringField;
    Dbx_sVendaDESC36: TStringField;
    Dbx_sVendaDESC37: TStringField;
    Dbx_sVendaDESC38: TStringField;
    Dbx_sVendaNOS: TIntegerField;
    Dbx_sVendaCFUNREB: TIntegerField;
    Dbx_sVendaCFUNCON: TIntegerField;
    Dbx_sVendaRETPOR: TStringField;
    Dbx_sVendaAUTPOR: TStringField;
    Dbx_sVendaCFUNENT: TIntegerField;
    Dbx_sVendaSINAL: TFMTBCDField;
    Dbx_sVendaACRESCIMO_P: TFMTBCDField;
    Dbx_sVendaACRESCIMO_O: TFMTBCDField;
    Dbx_sVendaOK: TStringField;
    Dbx_sVendaOBS1: TMemoField;
    Dbx_sVendaOBS2: TMemoField;
    Dbx_sVendaTPO: TSmallintField;
    Cds_sVendaID1: TStringField;
    Cds_sVendaID2: TStringField;
    Cds_sVendaDESC1: TStringField;
    Cds_sVendaDESC2: TStringField;
    Cds_sVendaDESC3: TStringField;
    Cds_sVendaDESC4: TStringField;
    Cds_sVendaDESC5: TStringField;
    Cds_sVendaDESC6: TStringField;
    Cds_sVendaDESC7: TStringField;
    Cds_sVendaDESC8: TStringField;
    Cds_sVendaDESC9: TStringField;
    Cds_sVendaDESC10: TStringField;
    Cds_sVendaDESC11: TStringField;
    Cds_sVendaDESC12: TStringField;
    Cds_sVendaDESC13: TStringField;
    Cds_sVendaDESC14: TStringField;
    Cds_sVendaDESC15: TStringField;
    Cds_sVendaDESC16: TStringField;
    Cds_sVendaDESC17: TStringField;
    Cds_sVendaDESC18: TStringField;
    Cds_sVendaDESC19: TStringField;
    Cds_sVendaDESC20: TStringField;
    Cds_sVendaDESC21: TStringField;
    Cds_sVendaDESC22: TStringField;
    Cds_sVendaDESC23: TStringField;
    Cds_sVendaDESC24: TStringField;
    Cds_sVendaDESC25: TStringField;
    Cds_sVendaDESC26: TStringField;
    Cds_sVendaDESC27: TStringField;
    Cds_sVendaDESC28: TStringField;
    Cds_sVendaDESC29: TStringField;
    Cds_sVendaDESC30: TStringField;
    Cds_sVendaDESC31: TStringField;
    Cds_sVendaDESC32: TStringField;
    Cds_sVendaDESC33: TStringField;
    Cds_sVendaDESC34: TStringField;
    Cds_sVendaDESC35: TStringField;
    Cds_sVendaDESC36: TStringField;
    Cds_sVendaDESC37: TStringField;
    Cds_sVendaDESC38: TStringField;
    Cds_sVendaNOS: TIntegerField;
    Cds_sVendaCFUNREB: TIntegerField;
    Cds_sVendaCFUNCON: TIntegerField;
    Cds_sVendaRETPOR: TStringField;
    Cds_sVendaAUTPOR: TStringField;
    Cds_sVendaCFUNENT: TIntegerField;
    Cds_sVendaSINAL: TFMTBCDField;
    Cds_sVendaACRESCIMO_P: TFMTBCDField;
    Cds_sVendaACRESCIMO_O: TFMTBCDField;
    Cds_sVendaOK: TStringField;
    Cds_sVendaOBS1: TMemoField;
    Cds_sVendaOBS2: TMemoField;
    Cds_sVendaTPO: TSmallintField;
    Dbx_ClientesCONTRATO: TStringField;
    Cds_ClientesCONTRATO: TStringField;
    Dbx_cmobra: TSQLQuery;
    IntegerField91: TIntegerField;
    Dsp_cmobra: TDataSetProvider;
    Cds_cmobra: TClientDataSet;
    IntegerField115: TIntegerField;
    Dts_cmobra: TDataSource;
    Dbx_cmobraDESCR: TStringField;
    Dbx_cmobraCMOD: TIntegerField;
    Dbx_cmobraVALOR: TFMTBCDField;
    Cds_cmobraDESCR: TStringField;
    Cds_cmobraCMOD: TIntegerField;
    Cds_cmobraVALOR: TFMTBCDField;
    Dbx_SituOs: TSQLQuery;
    IntegerField92: TIntegerField;
    Dsp_SituOs: TDataSetProvider;
    Cds_SituOs: TClientDataSet;
    IntegerField94: TIntegerField;
    Dts_SituOs: TDataSource;
    Dbx_SituOsDESCRICAO: TStringField;
    Cds_SituOsDESCRICAO: TStringField;
    Dbx_Hist: TSQLQuery;
    IntegerField93: TIntegerField;
    Dsp_Hist: TDataSetProvider;
    Cds_Hist: TClientDataSet;
    IntegerField95: TIntegerField;
    Dts_Hist: TDataSource;
    Dbx_HistCODSITOS: TIntegerField;
    Dbx_HistDATA: TDateField;
    Dbx_HistHORA: TStringField;
    Dbx_HistCODCFUN: TIntegerField;
    Dbx_HistCODOS: TIntegerField;
    Dbx_HistTAG: TIntegerField;
    Dbx_HistCUSU: TIntegerField;
    Cds_HistCODSITOS: TIntegerField;
    Cds_HistDATA: TDateField;
    Cds_HistHORA: TStringField;
    Cds_HistCODCFUN: TIntegerField;
    Cds_HistCODOS: TIntegerField;
    Cds_HistTAG: TIntegerField;
    Cds_HistCUSU: TIntegerField;
    Dbx_EquipCli: TSQLQuery;
    IntegerField96: TIntegerField;
    Dsp_EquipCli: TDataSetProvider;
    Cds_EquipCli: TClientDataSet;
    IntegerField102: TIntegerField;
    Dts_EquipCli: TDataSource;
    Dbx_EquipCliCCLI: TIntegerField;
    Dbx_EquipCliID1: TStringField;
    Dbx_EquipCliID2: TStringField;
    Dbx_EquipCliDESC1: TStringField;
    Dbx_EquipCliDESC2: TStringField;
    Dbx_EquipCliDESC3: TStringField;
    Dbx_EquipCliDESC4: TStringField;
    Dbx_EquipCliDESC5: TStringField;
    Dbx_EquipCliDESC6: TStringField;
    Dbx_EquipCliDESC7: TStringField;
    Dbx_EquipCliDESC8: TStringField;
    Dbx_EquipCliDESC9: TStringField;
    Dbx_EquipCliDESC10: TStringField;
    Dbx_EquipCliDESC11: TStringField;
    Dbx_EquipCliDESC12: TStringField;
    Dbx_EquipCliDESC13: TStringField;
    Dbx_EquipCliDESC14: TStringField;
    Dbx_EquipCliDESC15: TStringField;
    Dbx_EquipCliDESC16: TStringField;
    Dbx_EquipCliDESC17: TStringField;
    Dbx_EquipCliDESC18: TStringField;
    Dbx_EquipCliDESC19: TStringField;
    Dbx_EquipCliDESC20: TStringField;
    Dbx_EquipCliDESC21: TStringField;
    Dbx_EquipCliDESC22: TStringField;
    Dbx_EquipCliDESC23: TStringField;
    Dbx_EquipCliDESC24: TStringField;
    Dbx_EquipCliDESC25: TStringField;
    Dbx_EquipCliDESC26: TStringField;
    Dbx_EquipCliDESC27: TStringField;
    Dbx_EquipCliDESC28: TStringField;
    Dbx_EquipCliDESC29: TStringField;
    Dbx_EquipCliDESC30: TStringField;
    Dbx_EquipCliDESC31: TStringField;
    Dbx_EquipCliDESC32: TStringField;
    Dbx_EquipCliDESC33: TStringField;
    Dbx_EquipCliDESC34: TStringField;
    Dbx_EquipCliDESC35: TStringField;
    Dbx_EquipCliDESC36: TStringField;
    Dbx_EquipCliDESC37: TStringField;
    Dbx_EquipCliDESC38: TStringField;
    Cds_EquipCliCCLI: TIntegerField;
    Cds_EquipCliID1: TStringField;
    Cds_EquipCliID2: TStringField;
    Cds_EquipCliDESC1: TStringField;
    Cds_EquipCliDESC2: TStringField;
    Cds_EquipCliDESC3: TStringField;
    Cds_EquipCliDESC4: TStringField;
    Cds_EquipCliDESC5: TStringField;
    Cds_EquipCliDESC6: TStringField;
    Cds_EquipCliDESC7: TStringField;
    Cds_EquipCliDESC8: TStringField;
    Cds_EquipCliDESC9: TStringField;
    Cds_EquipCliDESC10: TStringField;
    Cds_EquipCliDESC11: TStringField;
    Cds_EquipCliDESC12: TStringField;
    Cds_EquipCliDESC13: TStringField;
    Cds_EquipCliDESC14: TStringField;
    Cds_EquipCliDESC15: TStringField;
    Cds_EquipCliDESC16: TStringField;
    Cds_EquipCliDESC17: TStringField;
    Cds_EquipCliDESC18: TStringField;
    Cds_EquipCliDESC19: TStringField;
    Cds_EquipCliDESC20: TStringField;
    Cds_EquipCliDESC21: TStringField;
    Cds_EquipCliDESC22: TStringField;
    Cds_EquipCliDESC23: TStringField;
    Cds_EquipCliDESC24: TStringField;
    Cds_EquipCliDESC25: TStringField;
    Cds_EquipCliDESC26: TStringField;
    Cds_EquipCliDESC27: TStringField;
    Cds_EquipCliDESC28: TStringField;
    Cds_EquipCliDESC29: TStringField;
    Cds_EquipCliDESC30: TStringField;
    Cds_EquipCliDESC31: TStringField;
    Cds_EquipCliDESC32: TStringField;
    Cds_EquipCliDESC33: TStringField;
    Cds_EquipCliDESC34: TStringField;
    Cds_EquipCliDESC35: TStringField;
    Cds_EquipCliDESC36: TStringField;
    Cds_EquipCliDESC37: TStringField;
    Cds_EquipCliDESC38: TStringField;
    Dbx_IndiceTDESC1: TStringField;
    Dbx_IndiceTDESC2: TStringField;
    Dbx_IndiceTDESC3: TStringField;
    Dbx_IndiceTDESC4: TStringField;
    Dbx_IndiceTDESC5: TStringField;
    Dbx_IndiceTDESC6: TStringField;
    Dbx_IndiceTDESC7: TStringField;
    Dbx_IndiceTDESC8: TStringField;
    Dbx_IndiceTDESC9: TStringField;
    Dbx_IndiceTDESC10: TStringField;
    Dbx_IndiceTDESC11: TStringField;
    Dbx_IndiceTDESC12: TStringField;
    Dbx_IndiceTDESC13: TStringField;
    Dbx_IndiceTDESC14: TStringField;
    Dbx_IndiceTDESC15: TStringField;
    Dbx_IndiceTDESC16: TStringField;
    Dbx_IndiceTDESC17: TStringField;
    Dbx_IndiceTDESC18: TStringField;
    Dbx_IndiceTDESC19: TStringField;
    Dbx_IndiceTDESC20: TStringField;
    Dbx_IndiceTDESC21: TStringField;
    Dbx_IndiceTDESC22: TStringField;
    Dbx_IndiceTDESC23: TStringField;
    Dbx_IndiceTDESC24: TStringField;
    Dbx_IndiceTDESC25: TStringField;
    Dbx_IndiceTDESC26: TStringField;
    Dbx_IndiceTDESC27: TStringField;
    Dbx_IndiceTDESC28: TStringField;
    Dbx_IndiceTDESC29: TStringField;
    Dbx_IndiceTDESC30: TStringField;
    Dbx_IndiceTDESC31: TStringField;
    Dbx_IndiceTDESC32: TStringField;
    Dbx_IndiceTDESC33: TStringField;
    Dbx_IndiceTDESC34: TStringField;
    Dbx_IndiceTDESC35: TStringField;
    Dbx_IndiceTDESC36: TStringField;
    Dbx_IndiceTDESC37: TStringField;
    Dbx_IndiceTDESC38: TStringField;
    Cds_IndiceTDESC1: TStringField;
    Cds_IndiceTDESC2: TStringField;
    Cds_IndiceTDESC3: TStringField;
    Cds_IndiceTDESC4: TStringField;
    Cds_IndiceTDESC5: TStringField;
    Cds_IndiceTDESC6: TStringField;
    Cds_IndiceTDESC7: TStringField;
    Cds_IndiceTDESC8: TStringField;
    Cds_IndiceTDESC9: TStringField;
    Cds_IndiceTDESC10: TStringField;
    Cds_IndiceTDESC11: TStringField;
    Cds_IndiceTDESC12: TStringField;
    Cds_IndiceTDESC13: TStringField;
    Cds_IndiceTDESC14: TStringField;
    Cds_IndiceTDESC15: TStringField;
    Cds_IndiceTDESC16: TStringField;
    Cds_IndiceTDESC17: TStringField;
    Cds_IndiceTDESC18: TStringField;
    Cds_IndiceTDESC19: TStringField;
    Cds_IndiceTDESC20: TStringField;
    Cds_IndiceTDESC21: TStringField;
    Cds_IndiceTDESC22: TStringField;
    Cds_IndiceTDESC23: TStringField;
    Cds_IndiceTDESC24: TStringField;
    Cds_IndiceTDESC25: TStringField;
    Cds_IndiceTDESC26: TStringField;
    Cds_IndiceTDESC27: TStringField;
    Cds_IndiceTDESC28: TStringField;
    Cds_IndiceTDESC29: TStringField;
    Cds_IndiceTDESC30: TStringField;
    Cds_IndiceTDESC31: TStringField;
    Cds_IndiceTDESC32: TStringField;
    Cds_IndiceTDESC33: TStringField;
    Cds_IndiceTDESC34: TStringField;
    Cds_IndiceTDESC35: TStringField;
    Cds_IndiceTDESC36: TStringField;
    Cds_IndiceTDESC37: TStringField;
    Cds_IndiceTDESC38: TStringField;
    Cds_cmobranmod: TStringField;
    Dbx_IndicePCT1: TStringField;
    Cds_IndicePCT1: TStringField;
    Dbx_IndicePCT2: TStringField;
    Dbx_IndicePCT3: TStringField;
    Dbx_IndicePCT4: TStringField;
    Dbx_IndicePCT5: TStringField;
    Dbx_IndicePCT6: TStringField;
    Dbx_IndicePCT7: TStringField;
    Dbx_IndicePCT8: TStringField;
    Dbx_IndicePCT9: TStringField;
    Dbx_IndicePCT10: TStringField;
    Dbx_IndicePCT11: TStringField;
    Dbx_IndicePCT12: TStringField;
    Dbx_IndicePCT13: TStringField;
    Dbx_IndicePCT14: TStringField;
    Dbx_IndicePCT15: TStringField;
    Dbx_IndicePCT16: TStringField;
    Dbx_IndicePCT17: TStringField;
    Dbx_IndicePCT18: TStringField;
    Dbx_IndicePCT19: TStringField;
    Dbx_IndicePCT20: TStringField;
    Cds_IndicePCT2: TStringField;
    Cds_IndicePCT3: TStringField;
    Cds_IndicePCT4: TStringField;
    Cds_IndicePCT5: TStringField;
    Cds_IndicePCT6: TStringField;
    Cds_IndicePCT7: TStringField;
    Cds_IndicePCT8: TStringField;
    Cds_IndicePCT9: TStringField;
    Cds_IndicePCT10: TStringField;
    Cds_IndicePCT11: TStringField;
    Cds_IndicePCT12: TStringField;
    Cds_IndicePCT13: TStringField;
    Cds_IndicePCT14: TStringField;
    Cds_IndicePCT15: TStringField;
    Cds_IndicePCT16: TStringField;
    Cds_IndicePCT17: TStringField;
    Cds_IndicePCT18: TStringField;
    Cds_IndicePCT19: TStringField;
    Cds_IndicePCT20: TStringField;
    Dbx_cmobraCBAR: TStringField;
    Dbx_cmobraCAUX: TStringField;
    Cds_cmobraCBAR: TStringField;
    Cds_cmobraCAUX: TStringField;
    Cds_dMobranfunc: TStringField;
    Cds_sVendaftotm: TFloatField;
    Cds_sVendaftotp: TFloatField;
    Dbx_NFNOS: TIntegerField;
    Cds_NFNOS: TIntegerField;
    Dbx_sVendaHRCAD: TStringField;
    Dbx_sVendaHRFEC: TStringField;
    Cds_sVendaHRCAD: TStringField;
    Cds_sVendaHRFEC: TStringField;
    Dbx_ClientesCELULAR: TStringField;
    Cds_ClientesCELULAR: TStringField;
    Dbx_ConfigFILELOGO: TStringField;
    Dbx_ConfigFILELOGO1: TStringField;
    Cds_ConfigFILELOGO: TStringField;
    Cds_ConfigFILELOGO1: TStringField;
    Dbx_IndiceTPIMPVI: TSmallintField;
    Cds_IndiceTPIMPVI: TSmallintField;
    Dbx_SituCadCli: TSQLQuery;
    IntegerField97: TIntegerField;
    Dsp_SituCadCli: TDataSetProvider;
    Cds_SituCadCli: TClientDataSet;
    IntegerField123: TIntegerField;
    Dts_SituCadCli: TDataSource;
    Dbx_SituCadCliDESCRICAO: TStringField;
    Cds_SituCadCliDESCRICAO: TStringField;
    Dbx_ClientesDATANASC: TDateField;
    Dbx_ClientesCSITCAD: TIntegerField;
    Dbx_ClientesDTPESPCERASA: TDateField;
    Dbx_ClientesDDDFS: TStringField;
    Dbx_ClientesDDDECOB: TStringField;
    Dbx_ClientesDDDEENT: TStringField;
    Dbx_ClientesDDDECOM: TStringField;
    Cds_ClientesDATANASC: TDateField;
    Cds_ClientesCSITCAD: TIntegerField;
    Cds_ClientesDTPESPCERASA: TDateField;
    Cds_ClientesDDDFS: TStringField;
    Cds_ClientesDDDECOB: TStringField;
    Cds_ClientesDDDEENT: TStringField;
    Cds_ClientesDDDECOM: TStringField;
    Dbx_IndiceNOMECLIOBR: TStringField;
    Dbx_IndiceCPFCLIOBR: TStringField;
    Dbx_IndiceRGCLIOBR: TStringField;
    Dbx_IndiceFONECLIOBR: TStringField;
    Dbx_IndiceTPEQPOS: TStringField;
    Cds_IndiceNOMECLIOBR: TStringField;
    Cds_IndiceCPFCLIOBR: TStringField;
    Cds_IndiceRGCLIOBR: TStringField;
    Cds_IndiceFONECLIOBR: TStringField;
    Cds_IndiceTPEQPOS: TStringField;
    Dbx_ImgEquipCli: TSQLQuery;
    IntegerField98: TIntegerField;
    Dsp_ImgEquipCli: TDataSetProvider;
    Cds_ImgEquipCli: TClientDataSet;
    IntegerField125: TIntegerField;
    Dts_ImgEquipCli: TDataSource;
    Dbx_ImgEquipCliIMAGEM: TGraphicField;
    Dbx_ImgEquipCliDESCRICAO: TStringField;
    Dbx_ImgEquipCliOBS: TMemoField;
    Dbx_ImgEquipCliCEQPCLI: TIntegerField;
    Cds_ImgEquipCliIMAGEM: TGraphicField;
    Cds_ImgEquipCliDESCRICAO: TStringField;
    Cds_ImgEquipCliOBS: TMemoField;
    Cds_ImgEquipCliCEQPCLI: TIntegerField;
    Dbx_IndiceID1CLIOBR: TStringField;
    Cds_IndiceID1CLIOBR: TStringField;
    Dbx_VenctoDTB: TDateField;
    Cds_VenctoDTB: TDateField;
    Dbx_PagarNUMNF: TStringField;
    Cds_PagarNUMNF: TStringField;
    Dbx_ClasseAGRUPCOD: TStringField;
    Cds_ClasseAGRUPCOD: TStringField;
    Dbx_IndiceTIPOCTAPASSIVO: TIntegerField;
    Cds_IndiceTIPOCTAPASSIVO: TIntegerField;
    Cds_Pagarnagrupcod: TStringField;
    Dbx_ComissaoCREP: TIntegerField;
    Cds_ComissaoCREP: TIntegerField;
    Dbx_ComissaoPCOMR: TBCDField;
    Dbx_ComissaoVCOMR: TFMTBCDField;
    Cds_ComissaoPCOMR: TBCDField;
    Cds_ComissaoVCOMR: TFMTBCDField;
    Dbx_IndiceIMPCABCLI: TStringField;
    Dbx_IndiceIMPVLRRECCLI: TStringField;
    Cds_IndiceIMPCABCLI: TStringField;
    Cds_IndiceIMPVLRRECCLI: TStringField;
    Dbx_IndiceIMPVLRCB: TIntegerField;
    Cds_IndiceIMPVLRCB: TIntegerField;
    dbx_Tipo_PgtoMOSVD: TStringField;
    cds_Tipo_PgtoMOSVD: TStringField;
    Dbx_IndiceTIPOCTAATIVO: TIntegerField;
    Cds_IndiceTIPOCTAATIVO: TIntegerField;
    Dbx_VenctoCCLA: TIntegerField;
    Cds_VenctoCCLA: TIntegerField;
    Cds_Venctoncla: TStringField;
    Cds_Venctongrupocla: TStringField;
    Dbx_VenctoNUMNF: TStringField;
    Cds_VenctoNUMNF: TStringField;
    Cds_Venctontipoop: TStringField;
    Dbx_PagarDTB: TDateField;
    Dbx_PagarCODTIPOP: TIntegerField;
    Cds_PagarDTB: TDateField;
    Cds_PagarCODTIPOP: TIntegerField;
    Cds_Pagarntipoop: TStringField;
    Dbx_PagarC_TIPO_PGTO: TIntegerField;
    Cds_PagarC_TIPO_PGTO: TIntegerField;
    Cds_Pagarntipopgto: TStringField;
    Dbx_VenctoVALORREAL: TFMTBCDField;
    Cds_VenctoVALORREAL: TFMTBCDField;
    Dbx_PagarVALORREAL: TFMTBCDField;
    Cds_PagarVALORREAL: TFMTBCDField;
    Dbx_IndicePRAZO: TSmallintField;
    Cds_IndicePRAZO: TSmallintField;
    Dbx_Apontamento: TSQLQuery;
    IntegerField99: TIntegerField;
    Dsp_Apontamento: TDataSetProvider;
    Cds_Apontamento: TClientDataSet;
    IntegerField101: TIntegerField;
    Dts_Apontamento: TDataSource;
    Dbx_ApontamentoCFUN: TIntegerField;
    Dbx_ApontamentoDATA: TDateField;
    Dbx_ApontamentoHORA: TTimeField;
    Dbx_ApontamentoOBS: TMemoField;
    Cds_ApontamentoCFUN: TIntegerField;
    Cds_ApontamentoDATA: TDateField;
    Cds_ApontamentoHORA: TTimeField;
    Cds_ApontamentoOBS: TMemoField;
    Dbx_IndiceTIPOIMPF: TSmallintField;
    Cds_IndiceTIPOIMPF: TSmallintField;
    Dbx_NFDATAS: TDateField;
    Dbx_NFHORAS: TTimeField;
    Cds_NFDATAS: TDateField;
    Cds_NFHORAS: TTimeField;
    dbx_Tipo_PgtoEHELETRONICO: TStringField;
    cds_Tipo_PgtoEHELETRONICO: TStringField;
    Dbx_VenctoECFLANCADO: TStringField;
    Cds_VenctoECFLANCADO: TStringField;
    dbx_Tipo_PgtoCODECF: TStringField;
    cds_Tipo_PgtoCODECF: TStringField;
    Dbx_VenctoMAQUINA: TStringField;
    Cds_VenctoMAQUINA: TStringField;
    Dbx_sVendaMAQUINA: TStringField;
    Cds_sVendaMAQUINA: TStringField;
    Dbx_VenctoIDMAQ: TIntegerField;
    Cds_VenctoIDMAQ: TIntegerField;
    Dbx_sVendaECFLANCADO: TStringField;
    Dbx_sVendaIDMAQ: TIntegerField;
    Cds_sVendaECFLANCADO: TStringField;
    Cds_sVendaIDMAQ: TIntegerField;
    Dbx_sVendaNCUPOMF: TIntegerField;
    Cds_sVendaNCUPOMF: TIntegerField;
    Dbx_IndiceECFLANCA: TStringField;
    Cds_IndiceECFLANCA: TStringField;
    Dbx_AliqImpFisSIGLA: TStringField;
    Cds_AliqImpFisSIGLA: TStringField;
    Dbx_AliqImpFisALIQUOTA: TBCDField;
    Cds_AliqImpFisALIQUOTA: TBCDField;
    Dbx_ClientesCTRANSP: TIntegerField;
    Cds_ClientesCTRANSP: TIntegerField;
    Dbx_sVendaST: TStringField;
    Cds_sVendaST: TStringField;
    Dbx_PedCanc: TSQLQuery;
    IntegerField100: TIntegerField;
    Dsp_PedCanc: TDataSetProvider;
    Cds_PedCanc: TClientDataSet;
    IntegerField104: TIntegerField;
    Dts_PedCanc: TDataSource;
    Dbx_PedCancNCO: TIntegerField;
    Dbx_PedCancNUMPED: TIntegerField;
    Dbx_PedCancTOTAL: TFMTBCDField;
    Dbx_PedCancJUST: TStringField;
    Dbx_PedCancCSVENDA: TIntegerField;
    Dbx_PedCancDATA: TDateField;
    Dbx_PedCancHORA: TTimeField;
    Cds_PedCancNCO: TIntegerField;
    Cds_PedCancNUMPED: TIntegerField;
    Cds_PedCancTOTAL: TFMTBCDField;
    Cds_PedCancJUST: TStringField;
    Cds_PedCancCSVENDA: TIntegerField;
    Cds_PedCancDATA: TDateField;
    Cds_PedCancHORA: TTimeField;
    Dbx_VendabOBS: TMemoField;
    Cds_VendabOBS: TMemoField;
    Cds_Vendabncli: TStringField;
    Dbx_UsuariosNIVEL: TSmallintField;
    Cds_UsuariosNIVEL: TSmallintField;
    Dbx_VendabCOMENTARIO: TStringField;
    Cds_VendabCOMENTARIO: TStringField;
    Cds_dVendancli: TStringField;
    Dbx_PagarEHENTREGA: TStringField;
    Cds_PagarEHENTREGA: TStringField;
    Dbx_PagarNCO: TIntegerField;
    Cds_PagarNCO: TIntegerField;
    Dbx_PagarNOS: TIntegerField;
    Cds_PagarNOS: TIntegerField;
    Dbx_VendabITEMECF: TStringField;
    Cds_VendabITEMECF: TStringField;
    Cds_sVendaftotc: TFloatField;
    Dbx_IndiceDIRNFE: TStringField;
    Cds_IndiceDIRNFE: TStringField;
    Dbx_IndiceTIPOIMPNF: TSmallintField;
    Cds_IndiceTIPOIMPNF: TSmallintField;
    Dbx_IndiceCSITP: TSmallintField;
    Cds_IndiceCSITP: TSmallintField;
    Dbx_IndiceCSITR: TSmallintField;
    Cds_IndiceCSITR: TSmallintField;
    Dbx_EstadosCODUFIBGE: TStringField;
    Cds_estadosCODUFIBGE: TStringField;
    Cds_Configcodufibge: TStringField;
    Cds_Configsiglaufibge: TStringField;
    Dbx_ConfigCUFNFE: TIntegerField;
    Cds_ConfigCUFNFE: TIntegerField;
    Dbx_EstadosMUNIC: TStringField;
    Cds_estadosMUNIC: TStringField;
    Dbx_Munic: TSQLQuery;
    IntegerField103: TIntegerField;
    Dsp_Munic: TDataSetProvider;
    Cds_Munic: TClientDataSet;
    IntegerField105: TIntegerField;
    Dts_Munic: TDataSource;
    Dbx_MunicNOME: TStringField;
    Dbx_MunicSIGLA: TStringField;
    Dbx_MunicCODMIBGE: TStringField;
    Dbx_MunicCODEST: TIntegerField;
    Cds_MunicNOME: TStringField;
    Cds_MunicSIGLA: TStringField;
    Cds_MunicCODMIBGE: TStringField;
    Cds_MunicCODEST: TIntegerField;
    Cds_Municest: TStringField;
    Dbx_ConfigCMNFE: TIntegerField;
    Cds_ConfigCMNFE: TIntegerField;
    Cds_Configcodmibge: TStringField;
    Cds_Configcodmc_ibge: TStringField;
    Dbx_ConfigNRO: TStringField;
    Cds_ConfigNRO: TStringField;
    Dbx_ClientesNROCOB: TStringField;
    Dbx_ClientesNROENT: TStringField;
    Dbx_ClientesNROCOM: TStringField;
    Cds_ClientesNROCOB: TStringField;
    Cds_ClientesNROENT: TStringField;
    Cds_ClientesNROCOM: TStringField;
    Dbx_FornecedoresNRO: TStringField;
    Cds_FornecedoresNRO: TStringField;
    Dbx_ConfigCAMPO17: TStringField;
    Dbx_ConfigCAMPO18: TStringField;
    Dbx_ConfigCAMPO19: TStringField;
    Dbx_ConfigCAMPO20: TStringField;
    Cds_ConfigCAMPO17: TStringField;
    Cds_ConfigCAMPO18: TStringField;
    Cds_ConfigCAMPO19: TStringField;
    Cds_ConfigCAMPO20: TStringField;
    Dbx_ClientesCODUFIBGE: TIntegerField;
    Dbx_ClientesCODMIBGE: TIntegerField;
    Cds_ClientesCODUFIBGE: TIntegerField;
    Cds_ClientesCODMIBGE: TIntegerField;
    Dbx_FornecedoresCODUFIBGE: TIntegerField;
    Dbx_FornecedoresCODMIBGE: TIntegerField;
    Cds_FornecedoresCODUFIBGE: TIntegerField;
    Cds_FornecedoresCODMIBGE: TIntegerField;
    Dbx_IndiceTPNF: TStringField;
    Dbx_IndiceTPIMP: TStringField;
    Dbx_IndiceFINNFE: TStringField;
    Dbx_IndiceMODEL: TStringField;
    Dbx_IndiceSERIE: TStringField;
    Cds_IndiceTPNF: TStringField;
    Cds_IndiceTPIMP: TStringField;
    Cds_IndiceFINNFE: TStringField;
    Cds_IndiceMODEL: TStringField;
    Cds_IndiceSERIE: TStringField;
    Cds_Clientesdescufibge: TStringField;
    Cds_Clientesnumufibge: TStringField;
    Cds_Clientesdescmibge: TStringField;
    Cds_Clientesnummibge: TStringField;
    Dbx_ConfigBAIRRO: TStringField;
    Dbx_ConfigCEP: TStringField;
    Dbx_ConfigCPAIS: TIntegerField;
    Dbx_ConfigFONE: TStringField;
    Cds_ConfigBAIRRO: TStringField;
    Cds_ConfigCEP: TStringField;
    Cds_ConfigCPAIS: TIntegerField;
    Cds_ConfigFONE: TStringField;
    Dbx_Pais: TSQLQuery;
    IntegerField106: TIntegerField;
    Dsp_Pais: TDataSetProvider;
    Cds_Pais: TClientDataSet;
    IntegerField109: TIntegerField;
    Dts_Pais: TDataSource;
    Dbx_PaisNOME: TStringField;
    Dbx_PaisSIGLA: TStringField;
    Dbx_PaisCODPIBGE: TStringField;
    Cds_PaisNOME: TStringField;
    Cds_PaisSIGLA: TStringField;
    Cds_PaisCODPIBGE: TStringField;
    Dbx_EstadosCPAIS: TIntegerField;
    Cds_estadosCPAIS: TIntegerField;
    Cds_estadosnpais: TStringField;
    Dbx_FornecedoresCODPAIS: TIntegerField;
    Cds_FornecedoresCODPAIS: TIntegerField;
    Dbx_ClientesCODPAIS: TIntegerField;
    Cds_ClientesCODPAIS: TIntegerField;
    Cds_Confignpais: TStringField;
    Cds_Configcpaisibge: TStringField;
    Cds_Clientesdescpaisibge: TStringField;
    Cds_Clientesnumpaisibge: TStringField;
    Cds_Fornecedoresdescufibge: TStringField;
    Cds_Fornecedoresnumufibge: TStringField;
    Cds_Fornecedoresdescmibge: TStringField;
    Cds_Fornecedoresnummibge: TStringField;
    Cds_Fornecedoresdescpaisibge: TStringField;
    Cds_Fornecedoresnumpaisibge: TStringField;
    Dbx_NFDTE: TDateField;
    Cds_NFDTE: TDateField;
    Dbx_vProdutosCCFOP: TIntegerField;
    Cds_vProdutosCCFOP: TIntegerField;
    Cds_vProdutosncfop: TStringField;
    Cds_vProdutosndesccfop: TStringField;
    Dbx_NatOpNF: TSQLQuery;
    IntegerField108: TIntegerField;
    Dsp_NatOpNF: TDataSetProvider;
    Cds_NatOpNF: TClientDataSet;
    IntegerField110: TIntegerField;
    Dts_NatOpNF: TDataSource;
    Dbx_NatOpNFDESCRICAO: TStringField;
    Dbx_NatOpNFOBS: TMemoField;
    Cds_NatOpNFDESCRICAO: TStringField;
    Cds_NatOpNFOBS: TMemoField;
    Dbx_NFCNATNF: TIntegerField;
    Cds_NFCNATNF: TIntegerField;
    Cds_NFnnatopnf: TStringField;
    Dbx_dVendaCODCFOP: TIntegerField;
    Cds_dVendaCODCFOP: TIntegerField;
    Dbx_NFPCODCFOP: TIntegerField;
    Cds_NFPCODCFOP: TIntegerField;
    Dbx_IndiceMODBC: TStringField;
    Cds_IndiceMODBC: TStringField;
    Dbx_IndicePISNT: TStringField;
    Dbx_IndiceCOFINSNT: TStringField;
    Cds_IndicePISNT: TStringField;
    Cds_IndiceCOFINSNT: TStringField;
    Dbx_dProdutosCCFOP: TIntegerField;
    Dbx_dProdutosCPIS: TIntegerField;
    Dbx_dProdutosCCOFINS: TIntegerField;
    Dbx_dProdutosCMODBC: TIntegerField;
    Cds_dProdutosCCFOP: TIntegerField;
    Cds_dProdutosCPIS: TIntegerField;
    Cds_dProdutosCCOFINS: TIntegerField;
    Cds_dProdutosCMODBC: TIntegerField;
    Dbx_vProdutosCPIS: TIntegerField;
    Dbx_vProdutosCCOFINS: TIntegerField;
    Dbx_vProdutosCMODBC: TIntegerField;
    Cds_vProdutosCPIS: TIntegerField;
    Cds_vProdutosCCOFINS: TIntegerField;
    Cds_vProdutosCMODBC: TIntegerField;
    Dbx_IPIREDUCAO: TFMTBCDField;
    Cds_IPIREDUCAO: TFMTBCDField;
    Dbx_dProdutosCIRII: TIntegerField;
    Dbx_dProdutosCVII: TIntegerField;
    Dbx_dProdutosCOIMP: TIntegerField;
    Dbx_dProdutosVBC: TFMTBCDField;
    Dbx_dProdutosCMODBCST: TIntegerField;
    Dbx_dProdutosPMVAST: TBCDField;
    Dbx_dProdutosPREDBCST: TBCDField;
    Dbx_dProdutosVBCST: TFMTBCDField;
    Dbx_dProdutosPICMSST: TBCDField;
    Dbx_dProdutosVICMSST: TFMTBCDField;
    Dbx_dProdutosPREDBC: TBCDField;
    Cds_dProdutosCIRII: TIntegerField;
    Cds_dProdutosCVII: TIntegerField;
    Cds_dProdutosCOIMP: TIntegerField;
    Cds_dProdutosVBC: TFMTBCDField;
    Cds_dProdutosCMODBCST: TIntegerField;
    Cds_dProdutosPMVAST: TBCDField;
    Cds_dProdutosPREDBCST: TBCDField;
    Cds_dProdutosVBCST: TFMTBCDField;
    Cds_dProdutosPICMSST: TBCDField;
    Cds_dProdutosVICMSST: TFMTBCDField;
    Cds_dProdutosPREDBC: TBCDField;
    Dbx_vProdutosCIRII: TIntegerField;
    Dbx_vProdutosCVII: TIntegerField;
    Dbx_vProdutosCOIMP: TIntegerField;
    Dbx_vProdutosVBC: TFMTBCDField;
    Dbx_vProdutosCMODBCST: TIntegerField;
    Dbx_vProdutosPMVAST: TBCDField;
    Dbx_vProdutosPREDBCST: TBCDField;
    Dbx_vProdutosVBCST: TFMTBCDField;
    Dbx_vProdutosPICMSST: TBCDField;
    Dbx_vProdutosVICMSST: TFMTBCDField;
    Dbx_vProdutosPREDBC: TBCDField;
    Cds_vProdutosCIRII: TIntegerField;
    Cds_vProdutosCVII: TIntegerField;
    Cds_vProdutosCOIMP: TIntegerField;
    Cds_vProdutosVBC: TFMTBCDField;
    Cds_vProdutosCMODBCST: TIntegerField;
    Cds_vProdutosPMVAST: TBCDField;
    Cds_vProdutosPREDBCST: TBCDField;
    Cds_vProdutosVBCST: TFMTBCDField;
    Cds_vProdutosPICMSST: TBCDField;
    Cds_vProdutosVICMSST: TFMTBCDField;
    Cds_vProdutosPREDBC: TBCDField;
    Dbx_modbcst: TSQLQuery;
    IntegerField111: TIntegerField;
    Dsp_modbcst: TDataSetProvider;
    cds_modbcst: TClientDataSet;
    IntegerField117: TIntegerField;
    Dts_modbcst: TDataSource;
    Dbx_modbcstDESCRICAO: TStringField;
    Dbx_modbcstSIGLA: TStringField;
    cds_modbcstDESCRICAO: TStringField;
    cds_modbcstSIGLA: TStringField;
    Dbx_pis: TSQLQuery;
    IntegerField112: TIntegerField;
    Dsp_pis: TDataSetProvider;
    Cds_pis: TClientDataSet;
    IntegerField119: TIntegerField;
    Dts_Pis: TDataSource;
    Dbx_pisDESCRICAO: TStringField;
    Dbx_pisSIGLA: TStringField;
    Dbx_pisALIQUOTA: TBCDField;
    Dbx_pisREDUCAO: TFMTBCDField;
    Cds_pisDESCRICAO: TStringField;
    Cds_pisSIGLA: TStringField;
    Cds_pisALIQUOTA: TBCDField;
    Cds_pisREDUCAO: TFMTBCDField;
    Dbx_Cofins: TSQLQuery;
    IntegerField114: TIntegerField;
    Dsp_Cofins: TDataSetProvider;
    Cds_Cofins: TClientDataSet;
    IntegerField121: TIntegerField;
    Dts_Cofins: TDataSource;
    Dbx_CofinsDESCRICAO: TStringField;
    Dbx_CofinsSIGLA: TStringField;
    Dbx_CofinsALIQUOTA: TBCDField;
    Dbx_CofinsREDUCAO: TFMTBCDField;
    Cds_CofinsDESCRICAO: TStringField;
    Cds_CofinsSIGLA: TStringField;
    Cds_CofinsALIQUOTA: TBCDField;
    Cds_CofinsREDUCAO: TFMTBCDField;
    Dbx_vii: TSQLQuery;
    IntegerField116: TIntegerField;
    Dsp_vii: TDataSetProvider;
    Cds_vii: TClientDataSet;
    IntegerField124: TIntegerField;
    Dts_vii: TDataSource;
    Dbx_viiDESCRICAO: TStringField;
    Dbx_viiSIGLA: TStringField;
    Dbx_viiALIQUOTA: TBCDField;
    Dbx_viiREDUCAO: TFMTBCDField;
    Cds_viiDESCRICAO: TStringField;
    Cds_viiSIGLA: TStringField;
    Cds_viiALIQUOTA: TBCDField;
    Cds_viiREDUCAO: TFMTBCDField;
    Dbx_Oimp: TSQLQuery;
    IntegerField118: TIntegerField;
    Dsp_Oimp: TDataSetProvider;
    Cds_Oimp: TClientDataSet;
    IntegerField127: TIntegerField;
    Dts_Oimp: TDataSource;
    Dbx_OimpDESCRICAO: TStringField;
    Dbx_OimpSIGLA: TStringField;
    Dbx_OimpALIQUOTA: TBCDField;
    Dbx_OimpREDUCAO: TFMTBCDField;
    Cds_OimpDESCRICAO: TStringField;
    Cds_OimpSIGLA: TStringField;
    Cds_OimpALIQUOTA: TBCDField;
    Cds_OimpREDUCAO: TFMTBCDField;
    Dbx_IR_II: TSQLQuery;
    IntegerField120: TIntegerField;
    Dsp_IR_II: TDataSetProvider;
    Cds_IR_II: TClientDataSet;
    IntegerField129: TIntegerField;
    Dts_IR_II: TDataSource;
    Dbx_IR_IIDESCRICAO: TStringField;
    Dbx_IR_IISIGLA: TStringField;
    Dbx_IR_IIALIQUOTA: TBCDField;
    Dbx_IR_IIREDUCAO: TFMTBCDField;
    Cds_IR_IIDESCRICAO: TStringField;
    Cds_IR_IISIGLA: TStringField;
    Cds_IR_IIALIQUOTA: TBCDField;
    Cds_IR_IIREDUCAO: TFMTBCDField;
    Dbx_ModBc: TSQLQuery;
    IntegerField122: TIntegerField;
    Dsp_ModBc: TDataSetProvider;
    Cds_ModBc: TClientDataSet;
    IntegerField131: TIntegerField;
    Dts_ModBc: TDataSource;
    Dbx_ModBcDESCRICAO: TStringField;
    Dbx_ModBcSIGLA: TStringField;
    Cds_ModBcDESCRICAO: TStringField;
    Cds_ModBcSIGLA: TStringField;
    Dbx_Tgicms: TSQLQuery;
    IntegerField126: TIntegerField;
    Dsp_Tgicms: TDataSetProvider;
    Cds_Tgicms: TClientDataSet;
    IntegerField133: TIntegerField;
    Dts_Tgicms: TDataSource;
    Dbx_TgicmsDESCRICAO: TStringField;
    Dbx_TgicmsPREVALOR: TFMTBCDField;
    Dbx_TgicmsCSITB: TIntegerField;
    Cds_TgicmsDESCRICAO: TStringField;
    Cds_TgicmsPREVALOR: TFMTBCDField;
    Cds_TgicmsCSITB: TIntegerField;
    Dbx_ClientesSOHMARKETING: TStringField;
    Cds_ClientesSOHMARKETING: TStringField;
    Dbx_TgicmsTABREF: TStringField;
    Dbx_TgicmsCAMPOREF: TStringField;
    Cds_TgicmsTABREF: TStringField;
    Cds_TgicmsCAMPOREF: TStringField;
    Dbx_dVendaCODPIS: TIntegerField;
    Dbx_dVendaCODCOFINS: TIntegerField;
    Dbx_dVendaCODMODBC: TIntegerField;
    Dbx_dVendaCODIRII: TIntegerField;
    Dbx_dVendaCODVII: TIntegerField;
    Dbx_dVendaCODOIMP: TIntegerField;
    Dbx_dVendaCODMODBCST: TIntegerField;
    Cds_dVendaCODPIS: TIntegerField;
    Cds_dVendaCODCOFINS: TIntegerField;
    Cds_dVendaCODMODBC: TIntegerField;
    Cds_dVendaCODIRII: TIntegerField;
    Cds_dVendaCODVII: TIntegerField;
    Cds_dVendaCODOIMP: TIntegerField;
    Cds_dVendaCODMODBCST: TIntegerField;
    Dbx_NFPCODPIS: TIntegerField;
    Dbx_NFPCODCOFINS: TIntegerField;
    Dbx_NFPCODMODBC: TIntegerField;
    Dbx_NFPCODIRII: TIntegerField;
    Dbx_NFPCODVII: TIntegerField;
    Dbx_NFPCODOIMP: TIntegerField;
    Dbx_NFPCODMODBCST: TIntegerField;
    Cds_NFPCODPIS: TIntegerField;
    Cds_NFPCODCOFINS: TIntegerField;
    Cds_NFPCODMODBC: TIntegerField;
    Cds_NFPCODIRII: TIntegerField;
    Cds_NFPCODVII: TIntegerField;
    Cds_NFPCODOIMP: TIntegerField;
    Cds_NFPCODMODBCST: TIntegerField;
    Dbx_NFETOTPIS: TFMTBCDField;
    Dbx_NFETOTCOFINS: TFMTBCDField;
    Dbx_NFETOTIRII: TFMTBCDField;
    Dbx_NFETOTVII: TFMTBCDField;
    Dbx_NFETOTOIMP: TFMTBCDField;
    Cds_NFETOTPIS: TFMTBCDField;
    Cds_NFETOTCOFINS: TFMTBCDField;
    Cds_NFETOTIRII: TFMTBCDField;
    Cds_NFETOTVII: TFMTBCDField;
    Cds_NFETOTOIMP: TFMTBCDField;
    Cds_vProdutosnomepis: TStringField;
    Cds_vProdutosnomecofins: TStringField;
    Cds_vProdutosnomemodbc: TStringField;
    Cds_vProdutosnomemodbcst: TStringField;
    Cds_vProdutosnomeirii: TStringField;
    Cds_vProdutosnomevii: TStringField;
    Cds_vProdutosnomeoimp: TStringField;
    Dbx_ClientesCTIPOTAB: TIntegerField;
    Cds_ClientesCTIPOTAB: TIntegerField;
    Dbx_dProdutosCTIPOTAB: TIntegerField;
    Cds_dProdutosCTIPOTAB: TIntegerField;
    Dbx_sVendaCMAT_RESTAURAR: TIntegerField;
    Cds_sVendaCMAT_RESTAURAR: TIntegerField;
    Dbx_Tipotab: TSQLQuery;
    IntegerField128: TIntegerField;
    Dsp_Tipotab: TDataSetProvider;
    Cds_Tipotab: TClientDataSet;
    IntegerField130: TIntegerField;
    Dts_Tipotab: TDataSource;
    Dbx_Mat_Restaurar: TSQLQuery;
    IntegerField132: TIntegerField;
    Dsp_Mat_Restaurar: TDataSetProvider;
    Cds_Mat_Restaurar: TClientDataSet;
    IntegerField134: TIntegerField;
    Dts_Mat_Restaurar: TDataSource;
    Dbx_dVendaCODMAT_RESTAURAR: TIntegerField;
    Cds_dVendaCODMAT_RESTAURAR: TIntegerField;
    Dbx_dMobraCODMAT_RESTAURAR: TIntegerField;
    Cds_dMobraCODMAT_RESTAURAR: TIntegerField;
    Dbx_TipotabDESCRICAO: TStringField;
    Cds_TipotabDESCRICAO: TStringField;
    Dbx_Mat_RestaurarDESCRICAO: TStringField;
    Dbx_Mat_RestaurarID: TStringField;
    Dbx_Mat_RestaurarFOTO1: TGraphicField;
    Dbx_Mat_RestaurarFOTO2: TGraphicField;
    Dbx_Mat_RestaurarFOTO3: TGraphicField;
    Dbx_Mat_RestaurarFOTO4: TGraphicField;
    Cds_Mat_RestaurarDESCRICAO: TStringField;
    Cds_Mat_RestaurarID: TStringField;
    Cds_Mat_RestaurarFOTO1: TGraphicField;
    Cds_Mat_RestaurarFOTO2: TGraphicField;
    Cds_Mat_RestaurarFOTO3: TGraphicField;
    Cds_Mat_RestaurarFOTO4: TGraphicField;
    Dbx_MatRep: TSQLQuery;
    IntegerField136: TIntegerField;
    Dsp_MatRep: TDataSetProvider;
    Cds_MatRep: TClientDataSet;
    IntegerField137: TIntegerField;
    Dts_MatRep: TDataSource;
    Dbx_MatRepCODMAT_RESTAURAR: TIntegerField;
    Dbx_MatRepCODSVENDA: TIntegerField;
    Cds_MatRepCODMAT_RESTAURAR: TIntegerField;
    Cds_MatRepCODSVENDA: TIntegerField;
    Dbx_ClientesFOTO: TGraphicField;
    Cds_ClientesFOTO: TGraphicField;
    Dbx_Mat_RestaurarFILENAME1: TStringField;
    Dbx_Mat_RestaurarFILENAME2: TStringField;
    Dbx_Mat_RestaurarFILENAME3: TStringField;
    Dbx_Mat_RestaurarFILENAME4: TStringField;
    Cds_Mat_RestaurarFILENAME1: TStringField;
    Cds_Mat_RestaurarFILENAME2: TStringField;
    Cds_Mat_RestaurarFILENAME3: TStringField;
    Cds_Mat_RestaurarFILENAME4: TStringField;
    Dbx_AliqImpFisDESCRICAO: TStringField;
    Cds_AliqImpFisDESCRICAO: TStringField;
    Dbx_IndiceMOSTRAENDENT: TStringField;
    Dbx_IndiceMOSTRAENDCOM: TStringField;
    Dbx_IndiceMOSTRAENDCOB: TStringField;
    Dbx_IndiceMOSTRAFOTOCLI: TStringField;
    Cds_IndiceMOSTRAENDENT: TStringField;
    Cds_IndiceMOSTRAENDCOM: TStringField;
    Cds_IndiceMOSTRAENDCOB: TStringField;
    Cds_IndiceMOSTRAFOTOCLI: TStringField;
    Dbx_ClientesFILENAME: TStringField;
    Cds_ClientesFILENAME: TStringField;
    Dbx_ImgEquipCliCSVENDA: TIntegerField;
    Cds_ImgEquipCliCSVENDA: TIntegerField;
    Dbx_ClientesRESPONSAVELFIN: TStringField;
    Dbx_ClientesRESPONSAVELENT: TStringField;
    Dbx_ClientesRESPONSAVELCOM: TStringField;
    Cds_ClientesRESPONSAVELFIN: TStringField;
    Cds_ClientesRESPONSAVELENT: TStringField;
    Cds_ClientesRESPONSAVELCOM: TStringField;
    Dbx_ClientesRGRESPONSAVELFIN: TStringField;
    Dbx_ClientesCPFRESPONSAVELFIN: TStringField;
    Dbx_ClientesRGRESPONSAVELCOM: TStringField;
    Dbx_ClientesCPFRESPONSAVELCOM: TStringField;
    Dbx_ClientesRGRESPONSAVELENT: TStringField;
    Dbx_ClientesCPFRESPONSAVELENT: TStringField;
    Cds_ClientesRGRESPONSAVELFIN: TStringField;
    Cds_ClientesCPFRESPONSAVELFIN: TStringField;
    Cds_ClientesRGRESPONSAVELCOM: TStringField;
    Cds_ClientesCPFRESPONSAVELCOM: TStringField;
    Cds_ClientesRGRESPONSAVELENT: TStringField;
    Cds_ClientesCPFRESPONSAVELENT: TStringField;
    Dbx_IndiceTITENDENT: TStringField;
    Dbx_IndiceTITENDCOM: TStringField;
    Dbx_IndiceTITENDCOB: TStringField;
    Cds_IndiceTITENDENT: TStringField;
    Cds_IndiceTITENDCOM: TStringField;
    Cds_IndiceTITENDCOB: TStringField;
    Cds_Clientesntipotab: TStringField;
    Dbx_cmobraCTIPOTAB: TIntegerField;
    Cds_cmobraCTIPOTAB: TIntegerField;
    Cds_cmobrantipotab: TStringField;
    Dbx_vProdutosCTIPOTAB: TIntegerField;
    Cds_vProdutosCTIPOTAB: TIntegerField;
    Cds_vProdutosntipotab: TStringField;
    Dbx_IndiceOUTINFCLI1: TStringField;
    Dbx_IndiceOUTINFCLI2: TStringField;
    Dbx_IndiceOUTINFCLI3: TStringField;
    Dbx_IndiceOUTINFCLI4: TStringField;
    Dbx_IndiceOUTINFCLI5: TStringField;
    Dbx_IndiceOUTINFCLI6: TStringField;
    Dbx_IndiceOUTINFCLI7: TStringField;
    Dbx_IndiceOUTINFCLI8: TStringField;
    Dbx_IndiceOUTINFCLI9: TStringField;
    Dbx_IndiceOUTINFCLI10: TStringField;
    Cds_IndiceOUTINFCLI1: TStringField;
    Cds_IndiceOUTINFCLI2: TStringField;
    Cds_IndiceOUTINFCLI3: TStringField;
    Cds_IndiceOUTINFCLI4: TStringField;
    Cds_IndiceOUTINFCLI5: TStringField;
    Cds_IndiceOUTINFCLI6: TStringField;
    Cds_IndiceOUTINFCLI7: TStringField;
    Cds_IndiceOUTINFCLI8: TStringField;
    Cds_IndiceOUTINFCLI9: TStringField;
    Cds_IndiceOUTINFCLI10: TStringField;
    Dbx_ClientesOUTINF1: TStringField;
    Dbx_ClientesOUTINF2: TStringField;
    Dbx_ClientesOUTINF3: TStringField;
    Dbx_ClientesOUTINF4: TStringField;
    Dbx_ClientesOUTINF5: TStringField;
    Dbx_ClientesOUTINF6: TStringField;
    Dbx_ClientesOUTINF7: TStringField;
    Dbx_ClientesOUTINF8: TStringField;
    Dbx_ClientesOUTINF9: TStringField;
    Dbx_ClientesOUTINF10: TStringField;
    Cds_ClientesOUTINF1: TStringField;
    Cds_ClientesOUTINF2: TStringField;
    Cds_ClientesOUTINF3: TStringField;
    Cds_ClientesOUTINF4: TStringField;
    Cds_ClientesOUTINF5: TStringField;
    Cds_ClientesOUTINF6: TStringField;
    Cds_ClientesOUTINF7: TStringField;
    Cds_ClientesOUTINF8: TStringField;
    Cds_ClientesOUTINF9: TStringField;
    Cds_ClientesOUTINF10: TStringField;
    Dbx_Procedimentos: TSQLQuery;
    IntegerField138: TIntegerField;
    Dsp_Procedimentos: TDataSetProvider;
    Cds_procedimentos: TClientDataSet;
    IntegerField139: TIntegerField;
    Dts_Procedimentos: TDataSource;
    Dbx_ProcedimentosCSVENDA: TIntegerField;
    Dbx_ProcedimentosDATA: TDateField;
    Dbx_ProcedimentosCMAT_RESTAURAR: TIntegerField;
    Dbx_ProcedimentosDESCRICAO: TStringField;
    Dbx_ProcedimentosTEMPO: TTimeField;
    Dbx_ProcedimentosVALOR: TFMTBCDField;
    Dbx_ProcedimentosTIPO: TStringField;
    Cds_procedimentosCSVENDA: TIntegerField;
    Cds_procedimentosDATA: TDateField;
    Cds_procedimentosCMAT_RESTAURAR: TIntegerField;
    Cds_procedimentosDESCRICAO: TStringField;
    Cds_procedimentosTEMPO: TTimeField;
    Cds_procedimentosVALOR: TFMTBCDField;
    Cds_procedimentosTIPO: TStringField;
    Cds_procedimentosidmat_restaurar: TStringField;
    Cds_MatRepidmat_restaurar: TStringField;
    Dbx_IndiceCSITR1: TSmallintField;
    Dbx_IndiceCSITP1: TSmallintField;
    Cds_IndiceCSITR1: TSmallintField;
    Cds_IndiceCSITP1: TSmallintField;
    Cds_dMobraidmat_restaurar: TStringField;
    Dbx_ProcedimentosCFUN: TIntegerField;
    Cds_procedimentosCFUN: TIntegerField;
    Dbx_VenctoCFUN: TIntegerField;
    Cds_VenctoCFUN: TIntegerField;
    Dbx_Mat_Rest_ID: TSQLQuery;
    Dsp_Mat_Rest_ID: TDataSetProvider;
    Cds_Mat_Rest_ID: TClientDataSet;
    Dts_Mat_Rest_ID: TDataSource;
    Cds_MatRepidmat_rest_id: TStringField;
    Cds_procedimentosidmat_rest_id: TStringField;
    Cds_procedimentosnfun: TStringField;
    Cds_Venctonfun: TStringField;
    Dbx_IndiceRDIRNFE: TStringField;
    Cds_IndiceRDIRNFE: TStringField;
    Dbx_NFELOTENFE: TStringField;
    Cds_NFELOTENFE: TStringField;
    Dbx_VendabCMDB: TSmallintField;
    Cds_VendabCMDB: TSmallintField;
    Dbx_totalcmdb: TSQLQuery;
    Dsp_totalcmdb: TDataSetProvider;
    Cds_totalcmdb: TClientDataSet;
    Dts_totalcmdb: TDataSource;
    Dbx_VendabTPCMDB: TStringField;
    Cds_VendabTPCMDB: TStringField;
    Dbx_dMobraSELEC: TStringField;
    Cds_dMobraSELEC: TStringField;
    Cds_dMobranmod: TStringField;
    Dbx_ProcedimentosDATAINICIO: TDateField;
    Dbx_ProcedimentosDATAFIM: TDateField;
    Dbx_ProcedimentosHORANICIO: TTimeField;
    Dbx_ProcedimentosHORAFIM: TTimeField;
    Cds_procedimentosDATAINICIO: TDateField;
    Cds_procedimentosDATAFIM: TDateField;
    Cds_procedimentosHORANICIO: TTimeField;
    Cds_procedimentosHORAFIM: TTimeField;
    Cds_dMobranlistaprod: TStringField;
    Dbx_ComissaoST: TStringField;
    Cds_ComissaoST: TStringField;
    Dbx_ComissaoRST: TStringField;
    Cds_ComissaoRST: TStringField;
    Dbx_VendabHORA_OP: TTimeField;
    Cds_VendabHORA_OP: TTimeField;
    Dbx_totalcmdbEHVENDA: TStringField;
    Dbx_totalcmdbTOTALP: TFMTBCDField;
    Dbx_totalcmdbCMDB: TSmallintField;
    Dbx_totalcmdbTPCMDB: TStringField;
    Dbx_totalcmdbDATA_OP: TDateField;
    Dbx_totalcmdbHORA_OP: TTimeField;
    Cds_totalcmdbEHVENDA: TStringField;
    Cds_totalcmdbTOTALP: TFMTBCDField;
    Cds_totalcmdbCMDB: TSmallintField;
    Cds_totalcmdbTPCMDB: TStringField;
    Cds_totalcmdbDATA_OP: TDateField;
    Cds_totalcmdbHORA_OP: TTimeField;
    Dbx_VendabQTDE: TFMTBCDField;
    Cds_VendabQTDE: TFMTBCDField;
    Dbx_IndiceMOSTRAAPL: TStringField;
    Dbx_IndiceMOSTRACODAUX: TStringField;
    Dbx_IndiceMOSTRAMARCA: TStringField;
    Cds_IndiceMOSTRAAPL: TStringField;
    Cds_IndiceMOSTRACODAUX: TStringField;
    Cds_IndiceMOSTRAMARCA: TStringField;
    Dbx_VendabQUAANT: TFMTBCDField;
    Dbx_VendabQUAPOS: TFMTBCDField;
    Cds_VendabQUAANT: TFMTBCDField;
    Cds_VendabQUAPOS: TFMTBCDField;
    Dbx_dVendaQUAANT: TFMTBCDField;
    Dbx_dVendaQUAPOS: TFMTBCDField;
    Cds_dVendaQUAANT: TFMTBCDField;
    Cds_dVendaQUAPOS: TFMTBCDField;
    Dbx_Ent_ProdQUAANT: TFMTBCDField;
    Dbx_Ent_ProdQUAPOS: TFMTBCDField;
    Cds_Ent_ProdQUAANT: TFMTBCDField;
    Cds_Ent_ProdQUAPOS: TFMTBCDField;
    Dbx_livrocaixa: TSQLQuery;
    IntegerField140: TIntegerField;
    Dbx_livrocaixaCODSVENDA: TIntegerField;
    Dbx_livrocaixaPDESC: TFMTBCDField;
    Dbx_livrocaixaVALDESC: TFMTBCDField;
    Dbx_livrocaixaLIQUIDO: TFMTBCDField;
    Dbx_livrocaixaTOTAL: TFMTBCDField;
    Dbx_livrocaixaDATA: TDateField;
    Dbx_livrocaixaST: TStringField;
    Dbx_livrocaixaDESCRICAO: TStringField;
    Dbx_livrocaixaCCLI: TIntegerField;
    Dsp_livrocaixa: TDataSetProvider;
    Cds_livrocaixa: TClientDataSet;
    IntegerField141: TIntegerField;
    Cds_livrocaixaCODSVENDA: TIntegerField;
    Cds_livrocaixaPDESC: TFMTBCDField;
    Cds_livrocaixaVALDESC: TFMTBCDField;
    Cds_livrocaixaLIQUIDO: TFMTBCDField;
    Cds_livrocaixaTOTAL: TFMTBCDField;
    Cds_livrocaixaDATA: TDateField;
    Cds_livrocaixaST: TStringField;
    Cds_livrocaixaDESCRICAO: TStringField;
    Cds_livrocaixaCCLI: TIntegerField;
    Dts_livrocaixa: TDataSource;
    Dbx_Agedodia: TSQLQuery;
    IntegerField142: TIntegerField;
    Dbx_AgedodiaDTCOMPROMI: TDateField;
    Dbx_AgedodiaHRCOMPROMI: TTimeField;
    Dbx_AgedodiaDTAVISO: TDateField;
    Dbx_AgedodiaHRAVISO: TTimeField;
    Dbx_AgedodiaASSUNTO: TStringField;
    Dbx_AgedodiaDESCRICAO: TMemoField;
    Dbx_AgedodiaAVISA: TStringField;
    Dbx_AgedodiaCUSU: TIntegerField;
    Dbx_AgedodiaCCLI: TIntegerField;
    Dbx_AgedodiaCFOR: TIntegerField;
    Dbx_AgedodiaCFUN: TIntegerField;
    Dsp_Agedodia: TDataSetProvider;
    Cds_Agedodia: TClientDataSet;
    IntegerField145: TIntegerField;
    Cds_AgedodiaDTCOMPROMI: TDateField;
    Cds_AgedodiaHRCOMPROMI: TTimeField;
    Cds_AgedodiaDTAVISO: TDateField;
    Cds_AgedodiaHRAVISO: TTimeField;
    Cds_AgedodiaASSUNTO: TStringField;
    Cds_AgedodiaDESCRICAO: TMemoField;
    Cds_AgedodiaAVISA: TStringField;
    Cds_AgedodiaCUSU: TIntegerField;
    Cds_AgedodiaCCLI: TIntegerField;
    Cds_AgedodiaCFOR: TIntegerField;
    Cds_AgedodiaCFUN: TIntegerField;
    Cds_Agedodiancli: TStringField;
    Cds_Agedodianforn: TStringField;
    Cds_Agedodianfun: TStringField;
    Dts_Agedodia: TDataSource;
    Dbx_ProcedimentosCOMPLETO: TStringField;
    Cds_procedimentosCOMPLETO: TStringField;
    Dbx_VenctoCODLIVROCAIXA: TIntegerField;
    Cds_VenctoCODLIVROCAIXA: TIntegerField;
    Dbx_IndiceCAMINHO_ECF: TStringField;
    Dbx_IndiceINICIOAGEDODIA: TTimeField;
    Dbx_IndiceFIMAGEDODIA: TTimeField;
    Dbx_IndiceINTERVALOAGEDODIA: TTimeField;
    Dbx_IndiceTIPOETIQ: TSmallintField;
    Cds_IndiceCAMINHO_ECF: TStringField;
    Cds_IndiceINICIOAGEDODIA: TTimeField;
    Cds_IndiceFIMAGEDODIA: TTimeField;
    Cds_IndiceINTERVALOAGEDODIA: TTimeField;
    Cds_IndiceTIPOETIQ: TSmallintField;
    Dbx_MatRepSELEC: TStringField;
    Cds_MatRepSELEC: TStringField;
    Dbx_IndiceCSITCLIBLOQ: TIntegerField;
    Dbx_IndiceBLOQUEIACLI: TStringField;
    Cds_IndiceCSITCLIBLOQ: TIntegerField;
    Cds_IndiceBLOQUEIACLI: TStringField;
    Dbx_IndiceCSITCLIINAT: TIntegerField;
    Dbx_IndiceBLOQCLIINA: TStringField;
    Cds_IndiceCSITCLIINAT: TIntegerField;
    Cds_IndiceBLOQCLIINA: TStringField;
    Cds_Indicensitcliinat: TStringField;
    Dbx_VenctoPCOM: TBCDField;
    Dbx_VenctoVCOM: TFMTBCDField;
    Cds_VenctoPCOM: TBCDField;
    Cds_VenctoVCOM: TFMTBCDField;
    dbx_Tipo_PgtoCEMP: TIntegerField;
    cds_Tipo_PgtoCEMP: TIntegerField;
    Dbx_VenctoCEMP: TIntegerField;
    Dbx_VenctoCDESC: TIntegerField;
    Cds_VenctoCEMP: TIntegerField;
    Cds_VenctoCDESC: TIntegerField;
    Dbx_IndiceCEMP: TIntegerField;
    Cds_IndiceCEMP: TIntegerField;
    Dbx_sVendaCEMP: TIntegerField;
    Cds_sVendaCEMP: TIntegerField;
    Dbx_dVendaCEMP: TIntegerField;
    Cds_dVendaCEMP: TIntegerField;
    Dbx_ProdutosCEMP: TIntegerField;
    Cds_ProdutosCEMP: TIntegerField;
    Dbx_dProdutosCEMP: TIntegerField;
    Cds_dProdutosCEMP: TIntegerField;
    Dbx_UsuariosCEMP: TIntegerField;
    Cds_UsuariosCEMP: TIntegerField;
    Dbx_invsysCEMP: TIntegerField;
    Cds_InvsysCEMP: TIntegerField;
    Dbx_invsysfCEMP: TIntegerField;
    Cds_invsysfCEMP: TIntegerField;
    Dbx_invsyspCEMP: TIntegerField;
    Cds_InvsyspCEMP: TIntegerField;
    Dbx_GrupoCEMP: TIntegerField;
    Cds_GrupoCEMP: TIntegerField;
    Dbx_MarcaCEMP: TIntegerField;
    Cds_MarcaCEMP: TIntegerField;
    Dbx_RepresentantesCEMP: TIntegerField;
    Cds_RepresentantesCEMP: TIntegerField;
    Dbx_FuncionariosCEMP: TIntegerField;
    Cds_FuncionariosCEMP: TIntegerField;
    Dbx_UnidadeCEMP: TIntegerField;
    Cds_UnidadeCEMP: TIntegerField;
    Dbx_invsysfconCEMP: TIntegerField;
    Cds_invsysfconCEMP: TIntegerField;
    Dbx_FornecedoresCEMP: TIntegerField;
    Cds_FornecedoresCEMP: TIntegerField;
    Dbx_ComprasCEMP: TIntegerField;
    Cds_ComprasCEMP: TIntegerField;
    Dbx_CofinsCEMP: TIntegerField;
    Cds_CofinsCEMP: TIntegerField;
    Dbx_viiCEMP: TIntegerField;
    Cds_viiCEMP: TIntegerField;
    Dbx_livrocaixaCEMP: TIntegerField;
    Cds_livrocaixaCEMP: TIntegerField;
    Dbx_Ent_ProdCEMP: TIntegerField;
    Cds_Ent_ProdCEMP: TIntegerField;
    Dbx_ClientesCEMP: TIntegerField;
    Cds_ClientesCEMP: TIntegerField;
    Dbx_ClasseCEMP: TIntegerField;
    Cds_ClasseCEMP: TIntegerField;
    Dbx_ClassepCEMP: TIntegerField;
    Cds_ClassepCEMP: TIntegerField;
    Dbx_PagarCEMP: TIntegerField;
    Cds_PagarCEMP: TIntegerField;
    Dbx_SituRecCEMP: TIntegerField;
    Cds_SituRecCEMP: TIntegerField;
    Dbx_SituPagarCEMP: TIntegerField;
    Cds_SituPagarCEMP: TIntegerField;
    Dbx_TempCEMP: TIntegerField;
    Cds_TempCEMP: TIntegerField;
    Dbx_modbcstCEMP: TIntegerField;
    cds_modbcstCEMP: TIntegerField;
    Dbx_ProcedimentosCEMP: TIntegerField;
    Cds_procedimentosCEMP: TIntegerField;
    Dbx_AgedodiaCEMP: TIntegerField;
    Cds_AgedodiaCEMP: TIntegerField;
    Dbx_MovRegCEMP: TIntegerField;
    Cds_MovRegCEMP: TIntegerField;
    Dbx_VendabCEMP: TIntegerField;
    Cds_VendabCEMP: TIntegerField;
    Dbx_Tipo_ProdCEMP: TIntegerField;
    Cds_Tipo_ProdCEMP: TIntegerField;
    Dbx_Conf_NFCEMP: TIntegerField;
    Cds_Conf_NFCEMP: TIntegerField;
    Dbx_NatOpCEMP: TIntegerField;
    Cds_NatOpCEMP: TIntegerField;
    Dbx_TipoCliCEMP: TIntegerField;
    Cds_TipoCliCEMP: TIntegerField;
    Dbx_TransportadoresCEMP: TIntegerField;
    Cds_TransportadoresCEMP: TIntegerField;
    Dbx_pisCEMP: TIntegerField;
    Cds_pisCEMP: TIntegerField;
    Dbx_TgicmsCEMP: TIntegerField;
    Cds_TgicmsCEMP: TIntegerField;
    Dbx_CFCEMP: TIntegerField;
    Cds_CFCEMP: TIntegerField;
    Dbx_SITACEMP: TIntegerField;
    Cds_SITACEMP: TIntegerField;
    Dbx_SITBCEMP: TIntegerField;
    Cds_SITBCEMP: TIntegerField;
    Dbx_IPICEMP: TIntegerField;
    Cds_IPICEMP: TIntegerField;
    Dbx_AliqImpFisCEMP: TIntegerField;
    Cds_AliqImpFisCEMP: TIntegerField;
    Dbx_EstadosCEMP: TIntegerField;
    Cds_estadosCEMP: TIntegerField;
    Dbx_ImpRecAntCEMP: TIntegerField;
    Cds_ImpRecAntCEMP: TIntegerField;
    Dbx_Vencto_NFCEMP: TIntegerField;
    Cds_Vencto_NFCEMP: TIntegerField;
    Dbx_NFECEMP: TIntegerField;
    Cds_NFECEMP: TIntegerField;
    Dbx_ModuloCEMP: TIntegerField;
    Cds_ModuloCEMP: TIntegerField;
    Dbx_TipotabCEMP: TIntegerField;
    Cds_TipotabCEMP: TIntegerField;
    Dbx_OimpCEMP: TIntegerField;
    Cds_OimpCEMP: TIntegerField;
    Dbx_MatRepCEMP: TIntegerField;
    Cds_MatRepCEMP: TIntegerField;
    Dbx_NFPCEMP: TIntegerField;
    Cds_NFPCEMP: TIntegerField;
    Dbx_NFMCEMP: TIntegerField;
    Cds_NFMCEMP: TIntegerField;
    Dbx_dMobraCEMP: TIntegerField;
    Dbx_dMobraPAGO: TStringField;
    Cds_dMobraCEMP: TIntegerField;
    Cds_dMobraPAGO: TStringField;
    Dbx_SituNFECEMP: TIntegerField;
    Cds_SituNFECEMP: TIntegerField;
    Dbx_NFCEMP: TIntegerField;
    Cds_NFCEMP: TIntegerField;
    Dbx_ComissaoCEMP: TIntegerField;
    Cds_ComissaoCEMP: TIntegerField;
    Dbx_ComissaoRCEMP: TIntegerField;
    Cds_ComissaoRCEMP: TIntegerField;
    Dbx_SangriaCEMP: TIntegerField;
    Cds_SangriaCEMP: TIntegerField;
    Dbx_IngestaoCEMP: TIntegerField;
    Cds_IngestaoCEMP: TIntegerField;
    Dbx_cmobraCEMP: TIntegerField;
    Cds_cmobraCEMP: TIntegerField;
    Dbx_IR_IICEMP: TIntegerField;
    Cds_IR_IICEMP: TIntegerField;
    Dbx_ModBcCEMP: TIntegerField;
    Cds_ModBcCEMP: TIntegerField;
    Dbx_Mat_RestaurarCEMP: TIntegerField;
    Cds_Mat_RestaurarCEMP: TIntegerField;
    Dbx_SituOsCEMP: TIntegerField;
    Cds_SituOsCEMP: TIntegerField;
    Dbx_HistCEMP: TIntegerField;
    Cds_HistCEMP: TIntegerField;
    Dbx_EquipCliCEMP: TIntegerField;
    Cds_EquipCliCEMP: TIntegerField;
    Dbx_SituCadCliCEMP: TIntegerField;
    Cds_SituCadCliCEMP: TIntegerField;
    Dbx_ImgEquipCliCEMP: TIntegerField;
    Cds_ImgEquipCliCEMP: TIntegerField;
    Dbx_ApontamentoCEMP: TIntegerField;
    Cds_ApontamentoCEMP: TIntegerField;
    Dbx_PedCancCEMP: TIntegerField;
    Cds_PedCancCEMP: TIntegerField;
    Dbx_MunicCEMP: TIntegerField;
    Cds_MunicCEMP: TIntegerField;
    Dbx_PaisCEMP: TIntegerField;
    Cds_PaisCEMP: TIntegerField;
    Dbx_NatOpNFCEMP: TIntegerField;
    Cds_NatOpNFCEMP: TIntegerField;
    Dbx_dMobraLAN: TStringField;
    Cds_dMobraLAN: TStringField;
    Dbx_dVendaNCM: TStringField;
    Dbx_dVendaINDTOT: TStringField;
    Cds_dVendaNCM: TStringField;
    Cds_dVendaINDTOT: TStringField;
    Dbx_dProdutosFATOR1: TFMTBCDField;
    Dbx_dProdutosFATOR2: TFMTBCDField;
    Dbx_dProdutosNCM: TStringField;
    Dbx_dProdutosINDTOT: TStringField;
    Cds_dProdutosFATOR1: TFMTBCDField;
    Cds_dProdutosFATOR2: TFMTBCDField;
    Cds_dProdutosNCM: TStringField;
    Cds_dProdutosINDTOT: TStringField;
    Dbx_ClientesCAUX: TStringField;
    Cds_ClientesCAUX: TStringField;
    Dbx_vProdutosFATOR1: TFMTBCDField;
    Dbx_vProdutosFATOR2: TFMTBCDField;
    Dbx_vProdutosNCM: TStringField;
    Dbx_vProdutosINDTOT: TStringField;
    Cds_vProdutosFATOR1: TFMTBCDField;
    Cds_vProdutosFATOR2: TFMTBCDField;
    Cds_vProdutosNCM: TStringField;
    Cds_vProdutosINDTOT: TStringField;
    Dbx_NFPNCM: TStringField;
    Dbx_NFPINDTOT: TStringField;
    Cds_NFPNCM: TStringField;
    Cds_NFPINDTOT: TStringField;
    Dbx_HistTab: TSQLQuery;
    IntegerField143: TIntegerField;
    Dsp_HistTab: TDataSetProvider;
    Cds_HistTab: TClientDataSet;
    IntegerField146: TIntegerField;
    Dts_HistTab: TDataSource;
    Dbx_HistTabNTAB: TStringField;
    Dbx_HistTabOPERACAO: TStringField;
    Dbx_HistTabCODREG: TIntegerField;
    Dbx_HistTabDESCRICAO: TStringField;
    Dbx_HistTabDATAHORA: TSQLTimeStampField;
    Dbx_HistTabCUSU: TIntegerField;
    Cds_HistTabNTAB: TStringField;
    Cds_HistTabOPERACAO: TStringField;
    Cds_HistTabCODREG: TIntegerField;
    Cds_HistTabDESCRICAO: TStringField;
    Cds_HistTabDATAHORA: TSQLTimeStampField;
    Cds_HistTabCUSU: TIntegerField;
    Dbx_TabPrS: TSQLQuery;
    IntegerField144: TIntegerField;
    Dsp_TabPrS: TDataSetProvider;
    Cds_TabPrS: TClientDataSet;
    IntegerField156: TIntegerField;
    Dts_TabPrS: TDataSource;
    Dbx_TabPrP: TSQLQuery;
    IntegerField167: TIntegerField;
    Dsp_TabPrP: TDataSetProvider;
    Cds_TabPrP: TClientDataSet;
    IntegerField177: TIntegerField;
    Dts_TabPrP: TDataSource;
    Dbx_TabPrPCPRO: TIntegerField;
    Dbx_TabPrPCTAB: TIntegerField;
    Cds_TabPrPCPRO: TIntegerField;
    Cds_TabPrPCTAB: TIntegerField;
    Dbx_TabPrSPER: TBCDField;
    Dbx_TabPrSPRVE: TFMTBCDField;
    Dbx_TabPrSCDESC: TIntegerField;
    Dbx_TabPrSCTAB: TIntegerField;
    Cds_TabPrSPER: TBCDField;
    Cds_TabPrSPRVE: TFMTBCDField;
    Cds_TabPrSCDESC: TIntegerField;
    Cds_TabPrSCTAB: TIntegerField;
    Cds_TabPrPntab: TStringField;
    Cds_TabPrSntab: TStringField;
    Dbx_sVendaCTAB: TIntegerField;
    Cds_sVendaCTAB: TIntegerField;
    Dbx_NFCTAB: TIntegerField;
    Cds_NFCTAB: TIntegerField;
    Dbx_ConfigCRT: TIntegerField;
    Cds_ConfigCRT: TIntegerField;
    Dbx_cmobraCTABPRPORC: TIntegerField;
    Dbx_cmobraPCOM: TBCDField;
    Cds_cmobraCTABPRPORC: TIntegerField;
    Cds_cmobraPCOM: TBCDField;
    Dbx_dMobraTEMPO: TTimeField;
    Dbx_dMobraTIPO: TStringField;
    Dbx_dMobraDATAINICIO: TDateField;
    Dbx_dMobraDATAFIM: TDateField;
    Dbx_dMobraHORAINICIO: TTimeField;
    Dbx_dMobraHORAFIM: TTimeField;
    Dbx_dMobraCOMPLETO: TStringField;
    Cds_dMobraTEMPO: TTimeField;
    Cds_dMobraTIPO: TStringField;
    Cds_dMobraDATAINICIO: TDateField;
    Cds_dMobraDATAFIM: TDateField;
    Cds_dMobraHORAINICIO: TTimeField;
    Cds_dMobraHORAFIM: TTimeField;
    Cds_dMobraCOMPLETO: TStringField;
    Dbx_FuncionariosCTIPOTAB_PORCENTAGEM: TIntegerField;
    Cds_FuncionariosCTIPOTAB_PORCENTAGEM: TIntegerField;
    Dbx_tipotab_porcentagem: TSQLQuery;
    IntegerField147: TIntegerField;
    Dsp_tipotab_porcentagem: TDataSetProvider;
    Cds_tipotab_porcentagem: TClientDataSet;
    IntegerField149: TIntegerField;
    Dts_tipotab_porcentagem: TDataSource;
    Dbx_TabPrProc: TSQLQuery;
    IntegerField151: TIntegerField;
    Dsp_TabPrProc: TDataSetProvider;
    Cds_TabPrProc: TClientDataSet;
    IntegerField153: TIntegerField;
    Dts_TabPrProc: TDataSource;
    Dbx_tipotab_porcentagemDESCRICAO: TStringField;
    Dbx_tipotab_porcentagemCEMP: TIntegerField;
    Cds_tipotab_porcentagemDESCRICAO: TStringField;
    Cds_tipotab_porcentagemCEMP: TIntegerField;
    Dbx_TabPrProcPER: TBCDField;
    Dbx_TabPrProcPRVE: TFMTBCDField;
    Dbx_TabPrProcCDESC: TIntegerField;
    Dbx_TabPrProcCTIPOTAB_PORCENTAGEM: TIntegerField;
    Cds_TabPrProcPER: TBCDField;
    Cds_TabPrProcPRVE: TFMTBCDField;
    Cds_TabPrProcCDESC: TIntegerField;
    Cds_TabPrProcCTIPOTAB_PORCENTAGEM: TIntegerField;
    Dbx_RelPorGrupo: TSQLQuery;
    Dsp_RelPorGrupo: TDataSetProvider;
    Cds_RelPorGrupo: TClientDataSet;
    Dts_RelPorGrupo: TDataSource;
    Dbx_RelPorGrupoCGRU: TIntegerField;
    Dbx_RelPorGrupoCCLI: TIntegerField;
    Dbx_RelPorGrupoSUBTOTAL: TFMTBCDField;
    Cds_RelPorGrupoCGRU: TIntegerField;
    Cds_RelPorGrupoCCLI: TIntegerField;
    Cds_RelPorGrupoSUBTOTAL: TFMTBCDField;
    cdsrelatorio: TClientDataSet;
    Cds_Comissaonrep: TStringField;
    cdsrelatoriocodigo: TIntegerField;
    cdsrelatoriocampo1: TStringField;
    cdsrelatoriocampo2: TStringField;
    cdsrelatoriocampo3: TStringField;
    cdsrelatoriocampo4: TStringField;
    cdsrelatoriocampo5: TStringField;
    cdsrelatoriocampo6: TStringField;
    cdsrelatoriocampo7: TStringField;
    cdsrelatoriocampo8: TStringField;
    cdsrelatoriocampo9: TStringField;
    cdsrelatoriocampo10: TStringField;
    cdsrelatorioicampo1: TIntegerField;
    cdsrelatorioicampo2: TIntegerField;
    cdsrelatorioicampo3: TIntegerField;
    Dbx_RelPorGrupoDATA: TDateField;
    Cds_RelPorGrupoDATA: TDateField;
    Dbx_IndiceTIPOQTDEECF: TIntegerField;
    Cds_IndiceTIPOQTDEECF: TIntegerField;
    Dbx_dProdutosCSOSN: TStringField;
    Cds_dProdutosCSOSN: TStringField;
    Dbx_vProdutosCSOSN: TStringField;
    Cds_vProdutosCSOSN: TStringField;
    cdsagenda: TClientDataSet;
    cdsagendacodigo: TIntegerField;
    cdsagendadatacompromisso: TDateTimeField;
    cdsagendanome: TStringField;
    cdsagendacompromisso: TStringField;
    cdsagendatelefones: TStringField;
    cdsagendadentista: TStringField;
    cdsagendamen: TStringField;
    cdsagendamen2: TStringField;
    cdsagendarealizado: TStringField;
    cdsagendapago: TStringField;
    cdsagendahora: TTimeField;
    Dbx_OutInfCli: TSQLQuery;
    IntegerField148: TIntegerField;
    Dsp_OutInfCli: TDataSetProvider;
    Cds_OutInfCli: TClientDataSet;
    IntegerField152: TIntegerField;
    Dts_OutInfCli: TDataSource;
    Dbx_TabDesc: TSQLQuery;
    IntegerField155: TIntegerField;
    Dsp_TabDesc: TDataSetProvider;
    Cds_TabDesc: TClientDataSet;
    IntegerField159: TIntegerField;
    Dts_TabDesc: TDataSource;
    Dbx_OutInfCliDESCRICAO: TStringField;
    Dbx_OutInfCliCEMP: TIntegerField;
    Dbx_OutInfCliID: TIntegerField;
    Cds_OutInfCliDESCRICAO: TStringField;
    Cds_OutInfCliCEMP: TIntegerField;
    Cds_OutInfCliID: TIntegerField;
    Dbx_TabDescDESCRICAO: TStringField;
    Dbx_TabDescCEMP: TIntegerField;
    Dbx_TabDescID: TIntegerField;
    Cds_TabDescDESCRICAO: TStringField;
    Cds_TabDescCEMP: TIntegerField;
    Cds_TabDescID: TIntegerField;
    dbx_Tipo_PgtoPDESC: TFMTBCDField;
    cds_Tipo_PgtoPDESC: TFMTBCDField;
    dbx_Tipo_PgtoEHAGENDAMENTO: TStringField;
    cds_Tipo_PgtoEHAGENDAMENTO: TStringField;
    Dbx_dMobraCFUNP: TIntegerField;
    Cds_dMobraCFUNP: TIntegerField;
    Cds_dMobranfuncp: TStringField;
    Dbx_livrocaixaCSIT: TIntegerField;
    Cds_livrocaixaCSIT: TIntegerField;
    Dbx_dMobraLANCOM: TStringField;
    Cds_dMobraLANCOM: TStringField;
    Dbx_ComissaoCDMOBRA: TIntegerField;
    Cds_ComissaoCDMOBRA: TIntegerField;
    Dbx_ComissaoEHVENDA: TStringField;
    Cds_ComissaoEHVENDA: TStringField;
    Dbx_VenctoCODMAT_RESTAURAR: TIntegerField;
    Cds_VenctoCODMAT_RESTAURAR: TIntegerField;
    Dbx_VenctoBAIXARTODOS: TStringField;
    Cds_VenctoBAIXARTODOS: TStringField;
    cdsetiq: TClientDataSet;
    cdsetiqempresa1: TStringField;
    cdsetiqempresa2: TStringField;
    cdsetiqempresa3: TStringField;
    cdsetiqempresa4: TStringField;
    cdsetiqempresa5: TStringField;
    cdsetiqempresa6: TStringField;
    cdsetiqempresa7: TStringField;
    cdsetiqempresa8: TStringField;
    cdsetiqempresa9: TStringField;
    cdsetiqcbar1: TStringField;
    cdsetiqcbar2: TStringField;
    cdsetiqcbar3: TStringField;
    cdsetiqcbar4: TStringField;
    cdsetiqcbar5: TStringField;
    cdsetiqcbar6: TStringField;
    cdsetiqcbar7: TStringField;
    cdsetiqcbar8: TStringField;
    cdsetiqcbar9: TStringField;
    cdsetiqvalor1: TStringField;
    cdsetiqvalor2: TStringField;
    cdsetiqvalor3: TStringField;
    cdsetiqvalor4: TStringField;
    cdsetiqvalor5: TStringField;
    cdsetiqvalor6: TStringField;
    cdsetiqvalor7: TStringField;
    cdsetiqvalor8: TStringField;
    cdsetiqvalor9: TStringField;
    cdsetiqnome1: TStringField;
    cdsetiqnome2: TStringField;
    cdsetiqnome3: TStringField;
    cdsetiqnome4: TStringField;
    cdsetiqnome5: TStringField;
    cdsetiqnome6: TStringField;
    cdsetiqnome7: TStringField;
    cdsetiqnome8: TStringField;
    cdsetiqnome9: TStringField;
    Dbx_rel: TSQLQuery;
    IntegerField150: TIntegerField;
    StringField22: TStringField;
    IntegerField154: TIntegerField;
    Dsp_rel: TDataSetProvider;
    Cds_rel: TClientDataSet;
    IntegerField158: TIntegerField;
    StringField23: TStringField;
    IntegerField160: TIntegerField;
    Dts_rel: TDataSource;
    Dbx_vProdForn: TSQLQuery;
    Dsp_vProdForn: TDataSetProvider;
    Cds_vProdForn: TClientDataSet;
    Dts_vProdForn: TDataSource;
    Dbx_vProdFornNPRO: TStringField;
    Dbx_vProdFornCPRO: TIntegerField;
    Dbx_vProdFornQUA_ESTQ: TFMTBCDField;
    Dbx_vProdFornCFOR: TIntegerField;
    Dbx_vProdFornDATA: TDateField;
    Dbx_vProdFornPRCU: TFMTBCDField;
    Dbx_vProdFornQTDE_COMPRADA: TBCDField;
    Cds_vProdFornNPRO: TStringField;
    Cds_vProdFornCPRO: TIntegerField;
    Cds_vProdFornQUA_ESTQ: TFMTBCDField;
    Cds_vProdFornCFOR: TIntegerField;
    Cds_vProdFornDATA: TDateField;
    Cds_vProdFornPRCU: TFMTBCDField;
    Cds_vProdFornQTDE_COMPRADA: TBCDField;
    Dbx_vProdFornEHENTREGA: TStringField;
    Cds_vProdFornEHENTREGA: TStringField;
    Dbx_IndiceIMPCONCOMITANTE: TStringField;
    Cds_IndiceIMPCONCOMITANTE: TStringField;
    Dbx_vProdFornCGRU: TIntegerField;
    Dbx_vProdFornCMAR: TIntegerField;
    Dbx_vProdFornCTIPO_PROD: TIntegerField;
    Dbx_vProdFornPRVE: TFMTBCDField;
    Cds_vProdFornCGRU: TIntegerField;
    Cds_vProdFornCMAR: TIntegerField;
    Cds_vProdFornCTIPO_PROD: TIntegerField;
    Cds_vProdFornPRVE: TFMTBCDField;
    Dbx_vProdFornNFOR: TStringField;
    Cds_vProdFornNFOR: TStringField;
    Cds_vProdFornngrup: TStringField;
    Cds_vProdFornnmarca: TStringField;
    Cds_vProdFornntipo_prod: TStringField;
    Dbx_ImgEquipCliFILENAME: TStringField;
    Cds_ImgEquipCliFILENAME: TStringField;
    Dbx_vvendprodbalcaocom: TSQLQuery;
    Dsp_vvendprodbalcaocom: TDataSetProvider;
    Cds_vvendprodbalcaocom: TClientDataSet;
    Dts_vvendprodbalcaocom: TDataSource;
    Dbx_FuncionariosNRO: TStringField;
    Cds_FuncionariosNRO: TStringField;
    Dbx_RepresentantesNRO: TStringField;
    Cds_RepresentantesNRO: TStringField;
    Dbx_FuncionariosCODUFIBGE: TIntegerField;
    Dbx_FuncionariosCODMIBGE: TIntegerField;
    Dbx_FuncionariosCODPAIS: TIntegerField;
    Cds_FuncionariosCODUFIBGE: TIntegerField;
    Cds_FuncionariosCODMIBGE: TIntegerField;
    Cds_FuncionariosCODPAIS: TIntegerField;
    Dbx_RepresentantesCODMIBGE: TIntegerField;
    Dbx_RepresentantesCODPAIS: TIntegerField;
    Dbx_RepresentantesCODUFIBGE: TIntegerField;
    Cds_RepresentantesCODMIBGE: TIntegerField;
    Cds_RepresentantesCODPAIS: TIntegerField;
    Cds_RepresentantesCODUFIBGE: TIntegerField;
    Dbx_sVendaTIPO_COBERTURA: TIntegerField;
    Dbx_sVendaDATATIPO1: TSQLTimeStampField;
    Dbx_sVendaDATATIPO2: TSQLTimeStampField;
    Dbx_sVendaDATATIPO3: TSQLTimeStampField;
    Dbx_sVendaDATATIPO4: TSQLTimeStampField;
    Dbx_sVendaDATATIPO5: TSQLTimeStampField;
    Dbx_sVendaDATATIPO6: TSQLTimeStampField;
    Dbx_sVendaDATATIPO7: TSQLTimeStampField;
    Dbx_sVendaDATATIPO8: TSQLTimeStampField;
    Dbx_sVendaDATATIPO9: TSQLTimeStampField;
    Dbx_sVendaDATATIPO10: TSQLTimeStampField;
    Dbx_sVendaDATASITU1: TSQLTimeStampField;
    Dbx_sVendaDATASITU2: TSQLTimeStampField;
    Dbx_sVendaDATASITU3: TSQLTimeStampField;
    Dbx_sVendaDATASITU4: TSQLTimeStampField;
    Dbx_sVendaDATASITU5: TSQLTimeStampField;
    Dbx_sVendaDATASITU6: TSQLTimeStampField;
    Dbx_sVendaDATASITU7: TSQLTimeStampField;
    Dbx_sVendaDATASITU8: TSQLTimeStampField;
    Dbx_sVendaDATASITU9: TSQLTimeStampField;
    Dbx_sVendaDATASITU10: TSQLTimeStampField;
    Cds_sVendaTIPO_COBERTURA: TIntegerField;
    Cds_sVendaDATATIPO1: TSQLTimeStampField;
    Cds_sVendaDATATIPO2: TSQLTimeStampField;
    Cds_sVendaDATATIPO3: TSQLTimeStampField;
    Cds_sVendaDATATIPO4: TSQLTimeStampField;
    Cds_sVendaDATATIPO5: TSQLTimeStampField;
    Cds_sVendaDATATIPO6: TSQLTimeStampField;
    Cds_sVendaDATATIPO7: TSQLTimeStampField;
    Cds_sVendaDATATIPO8: TSQLTimeStampField;
    Cds_sVendaDATATIPO9: TSQLTimeStampField;
    Cds_sVendaDATATIPO10: TSQLTimeStampField;
    Cds_sVendaDATASITU1: TSQLTimeStampField;
    Cds_sVendaDATASITU2: TSQLTimeStampField;
    Cds_sVendaDATASITU3: TSQLTimeStampField;
    Cds_sVendaDATASITU4: TSQLTimeStampField;
    Cds_sVendaDATASITU5: TSQLTimeStampField;
    Cds_sVendaDATASITU6: TSQLTimeStampField;
    Cds_sVendaDATASITU7: TSQLTimeStampField;
    Cds_sVendaDATASITU8: TSQLTimeStampField;
    Cds_sVendaDATASITU9: TSQLTimeStampField;
    Cds_sVendaDATASITU10: TSQLTimeStampField;
    Dbx_sVendaNORC: TIntegerField;
    Cds_sVendaNORC: TIntegerField;
    Dbx_IndiceTCLFINALIZA: TSmallintField;
    Cds_IndiceTCLFINALIZA: TSmallintField;
    Dbx_IndiceMOSTRAINFOFINADD: TSmallintField;
    Cds_IndiceMOSTRAINFOFINADD: TSmallintField;
    cds_temporario: TClientDataSet;
    cds_caixa: TClientDataSet;
    cds_caixadata: TDateField;
    cds_caixavalor: TFloatField;
    cds_caixaformapgto: TStringField;
    cds_caixacodformapgto: TIntegerField;
    cds_temporariofigura: TBlobField;
    cds_temporariofilename: TStringField;
    cds_id: TClientDataSet;
    cds_idid: TIntegerField;
    cds_caixahistorico: TStringField;
    cds_caixacusu: TIntegerField;
    cds_caixaid: TIntegerField;
    cds_caixastatus: TStringField;
    cds_caixaop: TStringField;
    cds_caixanped: TIntegerField;
    dts_caixa: TDataSource;
    Dbx_sVendaCUSUB: TIntegerField;
    Dbx_sVendaCUSUMA: TIntegerField;
    Dbx_sVendaIDTERMINAL: TIntegerField;
    Cds_sVendaCUSUB: TIntegerField;
    Cds_sVendaCUSUMA: TIntegerField;
    Cds_sVendaIDTERMINAL: TIntegerField;
    Cds_sVendancusub: TStringField;
    cds_caixacusub: TIntegerField;
    cds_caixacusuma: TIntegerField;
    dbx_cond_pgto: TSQLQuery;
    IntegerField14: TIntegerField;
    dsp_cond_pgto: TDataSetProvider;
    cds_cond_pgto: TClientDataSet;
    IntegerField161: TIntegerField;
    Dts_cond_pgto: TDataSource;
    dbx_conddetalhe_pgto: TSQLQuery;
    IntegerField15: TIntegerField;
    dsp_conddetalhe_pgto: TDataSetProvider;
    cds_conddetalhe_pgto: TClientDataSet;
    IntegerField162: TIntegerField;
    dts_conddetalhe_pgto: TDataSource;
    dbx_cond_pgtoDESCRICAO: TStringField;
    dbx_cond_pgtoQTDE: TIntegerField;
    cds_cond_pgtoDESCRICAO: TStringField;
    cds_cond_pgtoQTDE: TIntegerField;
    dbx_conddetalhe_pgtoNUMERO: TSmallintField;
    dbx_conddetalhe_pgtoDIAS: TSmallintField;
    dbx_conddetalhe_pgtoPERC: TFloatField;
    dbx_conddetalhe_pgtoDESCRICAO: TStringField;
    dbx_conddetalhe_pgtoCCONDPGTO: TIntegerField;
    cds_conddetalhe_pgtoNUMERO: TSmallintField;
    cds_conddetalhe_pgtoDIAS: TSmallintField;
    cds_conddetalhe_pgtoPERC: TFloatField;
    cds_conddetalhe_pgtoDESCRICAO: TStringField;
    cds_conddetalhe_pgtoCCONDPGTO: TIntegerField;
    Dbx_ClientesCCONDPAGTO: TIntegerField;
    Cds_ClientesCCONDPAGTO: TIntegerField;
    Cds_Clientesncondpgto: TStringField;
    dbx_conddetalhe_pgtoJUROS: TFMTBCDField;
    cds_conddetalhe_pgtoJUROS: TFMTBCDField;
    Dbx_sVendaCCONDPGTO: TIntegerField;
    Cds_sVendaCCONDPGTO: TIntegerField;
    Cds_sVendancondpgto: TIntegerField;
    Dbx_IndiceCONTADOR_MULTPAGAR: TIntegerField;
    Cds_IndiceCONTADOR_MULTPAGAR: TIntegerField;
    Dbx_PagarCCONTADOR_MULTPAGAR: TIntegerField;
    Cds_PagarCCONTADOR_MULTPAGAR: TIntegerField;
    Dbx_PagarPRAZO: TIntegerField;
    Cds_PagarPRAZO: TIntegerField;
    Dbx_PagarPARC: TStringField;
    Dbx_PagarPARTE: TStringField;
    Cds_PagarPARC: TStringField;
    Cds_PagarPARTE: TStringField;
    dbx_tipo_embalagem: TSQLQuery;
    IntegerField163: TIntegerField;
    dsp_tipo_embalagem: TDataSetProvider;
    cds_tipo_embalagem: TClientDataSet;
    IntegerField165: TIntegerField;
    dts_tipo_embalagem: TDataSource;
    dbx_comp_embalagem: TSQLQuery;
    IntegerField164: TIntegerField;
    dsp_comp_embalagem: TDataSetProvider;
    cds_comp_embalagem: TClientDataSet;
    IntegerField166: TIntegerField;
    dts_comp_embalagem: TDataSource;
    dbx_composicao_prod: TSQLQuery;
    IntegerField168: TIntegerField;
    dsp_composicao_prod: TDataSetProvider;
    cds_composicao_prod: TClientDataSet;
    IntegerField169: TIntegerField;
    dts_composicao_prod: TDataSource;
    dbx_tipo_embalagemDESCRICAO: TStringField;
    dbx_tipo_embalagemCPROD: TIntegerField;
    dbx_tipo_embalagemREFERENCIA: TFMTBCDField;
    dbx_tipo_embalagemCUNIDADE: TIntegerField;
    dbx_tipo_embalagemDESPESAS: TFMTBCDField;
    cds_tipo_embalagemDESCRICAO: TStringField;
    cds_tipo_embalagemCPROD: TIntegerField;
    cds_tipo_embalagemREFERENCIA: TFMTBCDField;
    cds_tipo_embalagemCUNIDADE: TIntegerField;
    cds_tipo_embalagemDESPESAS: TFMTBCDField;
    dbx_comp_embalagemDESCRICAO: TStringField;
    dbx_comp_embalagemQTDE: TFMTBCDField;
    dbx_comp_embalagemVLR_UNITARIO: TFMTBCDField;
    dbx_comp_embalagemTOTAL: TFMTBCDField;
    dbx_comp_embalagemCTIPO_EMB: TIntegerField;
    cds_comp_embalagemDESCRICAO: TStringField;
    cds_comp_embalagemQTDE: TFMTBCDField;
    cds_comp_embalagemVLR_UNITARIO: TFMTBCDField;
    cds_comp_embalagemTOTAL: TFMTBCDField;
    cds_comp_embalagemCTIPO_EMB: TIntegerField;
    dbx_composicao_prodDESCRICAO: TStringField;
    dbx_composicao_prodQTDE: TFMTBCDField;
    dbx_composicao_prodVLR_UNIT: TFMTBCDField;
    dbx_composicao_prodTOTAL: TFMTBCDField;
    dbx_composicao_prodCPROD: TIntegerField;
    cds_composicao_prodDESCRICAO: TStringField;
    cds_composicao_prodQTDE: TFMTBCDField;
    cds_composicao_prodVLR_UNIT: TFMTBCDField;
    cds_composicao_prodTOTAL: TFMTBCDField;
    cds_composicao_prodCPROD: TIntegerField;
    dbx_matprima: TSQLQuery;
    IntegerField170: TIntegerField;
    dsp_matprima: TDataSetProvider;
    cds_matprima: TClientDataSet;
    dts_matprima: TDataSource;
    dbx_matprimaDESCRICAO: TStringField;
    cds_matprimaDESCRICAO: TStringField;
    cds_matprimaCODIGO: TIntegerField;
    cds_composicao_prodsubtotal: TFloatField;
    strngfldDbx_ConfigORDEM_PRODUCAO: TStringField;
    strngfldCds_ConfigORDEM_PRODUCAO: TStringField;
    strngfldDbx_IndiceORDEM_PRODUCAO: TStringField;
    strngfldCds_IndiceORDEM_PRODUCAO: TStringField;
    Dbx_dVendaALTMAIS: TStringField;
    Dbx_dVendaALTMENOS: TStringField;
    Dbx_dVendaSUBS: TStringField;
    Cds_dVendaALTMAIS: TStringField;
    Cds_dVendaALTMENOS: TStringField;
    Cds_dVendaSUBS: TStringField;
    dbx_aliqinter: TSQLQuery;
    IntegerField171: TIntegerField;
    dsp_aliqinter: TDataSetProvider;
    cds_aliqinter: TClientDataSet;
    IntegerField173: TIntegerField;
    dts_aliqinter: TDataSource;
    dbx_aliqinterCODEST: TIntegerField;
    dbx_aliqinterCODPROD: TIntegerField;
    dbx_aliqinterALIQ: TBCDField;
    dbx_aliqinterIVA: TFMTBCDField;
    cds_aliqinterCODEST: TIntegerField;
    cds_aliqinterCODPROD: TIntegerField;
    cds_aliqinterALIQ: TBCDField;
    cds_aliqinterIVA: TFMTBCDField;
    Dbx_vProdutosEX: TStringField;
    Cds_vProdutosEX: TStringField;
    dbx_ibpt: TSQLQuery;
    IntegerField172: TIntegerField;
    dsp_ibpt: TDataSetProvider;
    cds_ibpt: TClientDataSet;
    IntegerField175: TIntegerField;
    dts_ibpt: TDataSource;
    dbx_ibptCODNCMNBS: TStringField;
    dbx_ibptEX: TStringField;
    dbx_ibptTABELA: TSmallintField;
    dbx_ibptALIQNAC: TFMTBCDField;
    dbx_ibptALIQIMP: TFMTBCDField;
    dbx_ibptVERSAO: TStringField;
    cds_ibptCODNCMNBS: TStringField;
    cds_ibptEX: TStringField;
    cds_ibptTABELA: TSmallintField;
    cds_ibptALIQNAC: TFMTBCDField;
    cds_ibptALIQIMP: TFMTBCDField;
    cds_ibptVERSAO: TStringField;
    dbx_consulta: TSQLQuery;
    Dbx_TabPrPPER: TFMTBCDField;
    Dbx_TabPrPPRVE: TFMTBCDField;
    Cds_TabPrPPER: TFMTBCDField;
    Cds_TabPrPPRVE: TFMTBCDField;
    dbx_logtable: TSQLQuery;
    IntegerField174: TIntegerField;
    dsp_logtable: TDataSetProvider;
    cds_logtable: TClientDataSet;
    IntegerField179: TIntegerField;
    dts_logtable: TDataSource;
    dbx_logtableTABELA: TStringField;
    dbx_logtableCODUSU: TIntegerField;
    dbx_logtableOPERACAO: TStringField;
    dbx_logtableDATA: TDateField;
    dbx_logtableHORA: TTimeField;
    cds_logtableTABELA: TStringField;
    cds_logtableCODUSU: TIntegerField;
    cds_logtableOPERACAO: TStringField;
    cds_logtableDATA: TDateField;
    cds_logtableHORA: TTimeField;
    dbx_logtableHISTORICO: TMemoField;
    cds_logtableHISTORICO: TMemoField;
    Dbx_VendabCODICMS: TIntegerField;
    Cds_VendabCODICMS: TIntegerField;
    Dbx_dProdutoscest: TStringField;
    Cds_dProdutoscest: TStringField;
    Dbx_vProdutoscest: TStringField;
    Cds_vProdutoscest: TStringField;
    Dbx_dVendacest: TStringField;
    Cds_dVendacest: TStringField;
    lHTTP: TIdHTTP;
    XMLEnvio: TXMLDocument;
    IdHTTP1: TIdHTTP;
    XMLDocument1: TXMLDocument;
    Dbx_Indicechaveconsultacep: TStringField;
    Cds_Indicechaveconsultacep: TStringField;
    Cds_Indiceambientesat: TIntegerField;
    Dbx_Indiceambientesat: TIntegerField;
    Dbx_Configcodigoibge: TStringField;
    Cds_Configcodigoibge: TStringField;
    Dbx_sVendacpfcnpj: TStringField;
    Cds_sVendacpfcnpj: TStringField;
    Dbx_Configcodigoibgeuf: TStringField;
    Cds_Configcodigoibgeuf: TStringField;
    Dbx_Configcodigoibgepais: TStringField;
    Cds_Configcodigoibgepais: TStringField;
    Dbx_Indiceimportacaosat: TStringField;
    Dbx_Indiceexportacaosat: TStringField;
    Dbx_Indiceerrosat: TStringField;
    Dbx_Indiceproxsat: TIntegerField;
    Cds_Indiceimportacaosat: TStringField;
    Cds_Indiceexportacaosat: TStringField;
    Cds_Indiceerrosat: TStringField;
    Cds_Indiceproxsat: TIntegerField;
    Dbx_sVendaTIPODOC: TIntegerField;
    Cds_sVendaTIPODOC: TIntegerField;
    Dbx_sVendaCODATEND: TIntegerField;
    Cds_sVendaCODATEND: TIntegerField;
    Dbx_ComissaoEOUS: TStringField;
    Cds_ComissaoEOUS: TStringField;
    Dbx_ComissaoREOUS: TStringField;
    Cds_ComissaoREOUS: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure cds_Tipo_PgtoAfterPost(DataSet: TDataSet);
    procedure cds_Tipo_PgtoBeforePost(DataSet: TDataSet);
    procedure Cds_VenctoBeforePost(DataSet: TDataSet);
    procedure IniciaTransacao;
    procedure finalizaTransacao;
    procedure Cds_dadosBeforePost(DataSet: TDataSet);
    procedure Cds_VenctoAfterPost(DataSet: TDataSet);
    procedure Cds_dadosAfterPost(DataSet: TDataSet);
    procedure Cds_dadosNewRecord(DataSet: TDataSet);
    procedure cds_Tipo_PgtoBeforeDelete(DataSet: TDataSet);
    procedure Cds_VenctoBeforeDelete(DataSet: TDataSet);
    procedure Cds_dadosBeforeDelete(DataSet: TDataSet);
    procedure cds_Tipo_PgtoAfterDelete(DataSet: TDataSet);
    procedure Cds_VenctoAfterDelete(DataSet: TDataSet);
    procedure Cds_dadosAfterDelete(DataSet: TDataSet);
    procedure Cds_dadosAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure Cds_VenctoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure cds_Tipo_PgtoAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);

    procedure AtualizaDados;
    procedure Cds_IndiceAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure Cds_IndiceNewRecord(DataSet: TDataSet);
    procedure Cds_ProdutosAfterScroll(DataSet: TDataSet);
    procedure ler_dprod;
    procedure Cds_dProdutosBeforePost(DataSet: TDataSet);
    procedure Cds_dProdutosBeforeEdit(DataSet: TDataSet);
    procedure Cds_InvsyspAfterScroll(DataSet: TDataSet);
    procedure Cds_UsuariosAfterScroll(DataSet: TDataSet);
    procedure ler_ent_prod;
    procedure ler_dVenda;
    procedure ler_vendab;
    procedure Dst_dProdutosDataChange(Sender: TObject; Field: TField);
    procedure Cds_Ent_ProdBeforePost(DataSet: TDataSet);
    procedure Cds_Ent_ProdAfterApplyUpdates(Sender: TObject;
      var OwnerData: OleVariant);
    procedure Cds_dVendaBeforePost(DataSet: TDataSet);
    procedure Permite_Inserir(DataSet: TDataSet);
    procedure Permite_Alterar(DataSet: TDataSet);
    procedure Permite_Excluir(DataSet: TDataSet);
    procedure Cds_IndiceAfterInsert(DataSet: TDataSet);
    procedure Cds_IndiceAfterEdit(DataSet: TDataSet);
    procedure Cds_ClassepAfterScroll(DataSet: TDataSet);
    procedure Cds_VenctoAfterInsert(DataSet: TDataSet);
    procedure Cds_ClientesAfterScroll(DataSet: TDataSet);
    procedure Cds_vProdutosAfterScroll(DataSet: TDataSet);
    procedure Dts_VendabDataChange(Sender: TObject; Field: TField);
    procedure Cds_dVendaAfterPost(DataSet: TDataSet);
    procedure totalizafrmpesqvdprod;
    procedure Cds_ClientesAfterPost(DataSet: TDataSet);
    procedure Cds_ProdutosAfterPost(DataSet: TDataSet);
    procedure Cds_IndiceAfterPost(DataSet: TDataSet);
    procedure Cds_sVendaAfterPost(DataSet: TDataSet);
    procedure Cds_dProdutosAfterPost(DataSet: TDataSet);
    procedure Cds_UsuariosAfterPost(DataSet: TDataSet);
    procedure Cds_InvsysAfterPost(DataSet: TDataSet);
    procedure Cds_invsysfAfterPost(DataSet: TDataSet);
    procedure Cds_InvsyspAfterPost(DataSet: TDataSet);
    procedure Cds_GrupoAfterPost(DataSet: TDataSet);
    procedure Cds_MarcaAfterPost(DataSet: TDataSet);
    procedure Cds_RepresentantesAfterPost(DataSet: TDataSet);
    procedure Cds_FuncionariosAfterPost(DataSet: TDataSet);
    procedure Cds_UnidadeAfterPost(DataSet: TDataSet);
    procedure Cds_invsysfconAfterPost(DataSet: TDataSet);
    procedure Cds_FornecedoresAfterPost(DataSet: TDataSet);
    procedure Cds_ComprasAfterPost(DataSet: TDataSet);
    procedure Cds_Ent_ProdAfterPost(DataSet: TDataSet);
    procedure Cds_ClasseAfterPost(DataSet: TDataSet);
    procedure Cds_ClassepAfterPost(DataSet: TDataSet);
    procedure Cds_PagarAfterPost(DataSet: TDataSet);
    procedure Cds_SituRecAfterPost(DataSet: TDataSet);
    procedure Cds_SituPagarAfterPost(DataSet: TDataSet);
    procedure Cds_TempAfterPost(DataSet: TDataSet);
    procedure Cds_vProdutosAfterPost(DataSet: TDataSet);
    procedure Cds_vVendaAfterPost(DataSet: TDataSet);
    procedure Cds_MovRegAfterPost(DataSet: TDataSet);
    procedure Cds_VendabAfterPost(DataSet: TDataSet);
    procedure Cds_ConfigAfterPost(DataSet: TDataSet);
    procedure Cds_vDvendasAfterPost(DataSet: TDataSet);
    procedure Cds_Tipo_ProdAfterPost(DataSet: TDataSet);
    procedure Cds_vProdutosAfterInsert(DataSet: TDataSet);
    procedure Cds_vProdutosBeforePost(DataSet: TDataSet);
    procedure Cds_IndiceAfterCancel(DataSet: TDataSet);
    procedure Cds_sVendaBeforePost(DataSet: TDataSet);
    procedure Cds_dVendaAfterDelete(DataSet: TDataSet);
    procedure Cds_IndiceBeforePost(DataSet: TDataSet);
    procedure Cds_ClientesBeforePost(DataSet: TDataSet);
    procedure Dst_FuncionariosDataChange(Sender: TObject; Field: TField);
    procedure Dts_ClientesDataChange(Sender: TObject; Field: TField);
    procedure Dst_RepresentantesDataChange(Sender: TObject; Field: TField);
    procedure Dts_sVendaDataChange(Sender: TObject; Field: TField);
    procedure totps;
    procedure totpsb;
    procedure Cds_vProdutosCalcFields(DataSet: TDataSet);
    procedure totpe;
    procedure Cds_VenctoPRAZOChange(Sender: TField);
    procedure Cds_VenctoDTVChange(Sender: TField);
    procedure Dts_VenctoUpdateData(Sender: TObject);
    procedure Dts_Vencto_NFUpdateData(Sender: TObject);
    procedure Cds_Vencto_NFAfterInsert(DataSet: TDataSet);
    procedure Cds_Vencto_NFAfterPost(DataSet: TDataSet);
    procedure Cds_NFEAfterInsert(DataSet: TDataSet);
    procedure Cds_NFEAfterPost(DataSet: TDataSet);
    procedure Dts_vProdutosUpdateData(Sender: TObject);
    procedure Cds_FuncionariosBeforePost(DataSet: TDataSet);
    procedure Cds_sVendaCalcFields(DataSet: TDataSet);
    procedure Cds_NFCalcFields(DataSet: TDataSet);
    procedure Cds_EquipCliBeforePost(DataSet: TDataSet);
    procedure Cds_EquipCliAfterInsert(DataSet: TDataSet);
    procedure Cds_EquipCliAfterEdit(DataSet: TDataSet);
    procedure Cds_EquipCliID1Validate(Sender: TField);
    procedure Cds_EquipCliPostError(DataSet: TDataSet; E: EDatabaseError;
      var Action: TDataAction);
    procedure Dts_SituRecDataChange(Sender: TObject; Field: TField);
    procedure Dts_SituPagarDataChange(Sender: TObject; Field: TField);
    procedure Cds_VenctoAfterScroll(DataSet: TDataSet);
    procedure habdesabilitaedi;
    procedure Cds_PagarAfterScroll(DataSet: TDataSet);
    procedure Cds_UsuariosBeforePost(DataSet: TDataSet);
    procedure Cds_UsuariosAfterInsert(DataSet: TDataSet);
    procedure Cds_UsuariosAfterEdit(DataSet: TDataSet);
    procedure Cds_UsuariosAfterDelete(DataSet: TDataSet);
    procedure Cds_UsuariosBeforeDelete(DataSet: TDataSet);
    procedure Cds_UsuariosBeforeInsert(DataSet: TDataSet);
    procedure Cds_dVendaAfterInsert(DataSet: TDataSet);
    procedure Cds_VendabAfterInsert(DataSet: TDataSet);
    procedure Cds_SITBAfterScroll(DataSet: TDataSet);
    procedure Cds_ModuloAfterScroll(DataSet: TDataSet);
    procedure Cds_Mat_RestaurarAfterScroll(DataSet: TDataSet);
    procedure Cds_VendabBeforePost(DataSet: TDataSet);
    procedure Cds_dMobraAfterPost(DataSet: TDataSet);
    procedure Cds_cmobraAfterScroll(DataSet: TDataSet);
    procedure Cds_FuncionariosBeforeScroll(DataSet: TDataSet);
    procedure Cds_NFPBeforePost(DataSet: TDataSet);
    procedure Dts_dMobraDataChange(Sender: TObject; Field: TField);
    procedure Cds_livrocaixaAfterScroll(DataSet: TDataSet);
    procedure Cds_vProdFornAfterScroll(DataSet: TDataSet);
    procedure EstornaOperacao;
    procedure cds_cond_pgtoAfterScroll(DataSet: TDataSet);
    procedure Dts_PagarUpdateData(Sender: TObject);
    procedure cds_composicao_prodCalcFields(DataSet: TDataSet);
    procedure cds_tipo_embalagemAfterScroll(DataSet: TDataSet);
    procedure atualiza_bd;
    procedure roda_script_banco;
    procedure cds_logtableBeforePost(DataSet: TDataSet);
    procedure Cds_sVendaAfterDelete(DataSet: TDataSet);
    procedure Cds_sVendaBeforeDelete(DataSet: TDataSet);





  private
    { Private declarations }
    novonivel:integer;

  public


    { Public declarations }
    TD:TtransactionDesc;

    sSqlAnt:string;
    icodprod:integer;
    vardir:string;
    bmaxparc:boolean;

function totaliza_formula_geral(filtro:string):real;

function totaliza_embalagem(filtro:string):real;

procedure atualizancm(ncm:string);

  end;

var
  frmDados: TfrmDados;


implementation
   uses ugeral, uconfbcofb, uprincipal, upesqpro, uAtu, ufrente, upesqclic,
        uPesqVprod, uPesqVd, uimpnf, uPesqCli, uPesqVf, uFecPed, uPesqfunc,
        upesqnf, ufecenf, uIndice, upesqos, ufecos, uPesqtipopgtov, upesqrecbto,
        upesqpag, ufrenteecf, uasenha, uconfint, upesqost, ufecost, uComanda,
        utradental, ucomandap, utra, ufectra, uagenda, upesqrecbtop,
        upesqprod, uPesqtipopgtovp, upesqprodpfor, umultpagto, ufatorprod, funcoes_ibpt,
  uPesqOrcam;
{$R *.dfm}

procedure TfrmDados.DataModuleCreate(Sender: TObject);
var
  log: textfile;
  sDataBase, sUser_Name, sUserPass, sdata:string;
begin
  {

  active := false;
  sql.Clear;
  sql.Add('select sum(nota) as totnota from tabvenda v inner join tabitens i on i.itnumeronota = v.venumeronota where anoletivo= group by nota ');
  active := true;

  }

  novonivel := 0;


  bmaxparc := false;

  iniciavarglobal;

  vardir := extractfilepath(application.ExeName);


  cds_temporario.Active := false;

  with cds_temporario do
    begin
      Active := false;
      FileName :=vardir+'temporario.cds';
      if not fileexists(vardir+'temporario.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'temporario.cds',dfbinary);
         end;
      //endi
      Active := true;
      //IndexName := 'codigo';

    end;
  //endth

  //arquivo que informa número do caixa
  with cds_id do
    begin
      Active := false;
      FileName :=vardir+'id.cds';
      if not fileexists(vardir+'id.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'id.cds',dfbinary);
         end;
      //endi
      Active := true;
      //IndexName := 'codigo';
      if (Locate('id',1,[]) = false) then
         begin
           append;
           fieldbyname('id').AsInteger := 1;
           post;
         end;
      //endi
      Active := false;
    end;
  //endth

  //caixa individual
  with cds_caixa do
    begin
      Active := false;
      FileName :=vardir+'caixa.cds';
      if not fileexists(vardir+'caixa.cds') then
         begin
           CreateDataSet;
           SaveToFile(vardir+'caixa.cds',dfbinary);
         end;
      //endi
      Active := true;
      IndexName := 'data';
      Active := false;

    end;
  //endth

  cdsRanking.Active := false;

  sql_dados.CloseDataSets;

  dbx_tipo_pgto.Active := false;
  Cds_tipo_pgto.Active := false;


  dbx_cond_pgto.Active := false;
  Cds_cond_pgto.Active := false;

  dbx_conddetalhe_pgto.Active := false;
  Cds_conddetalhe_pgto.Active := false;


  dbx_Vencto.Active := false;
  Cds_Vencto.Active := false;

  dbx_Vencto_NF.Active := false;
  Cds_Vencto_NF.Active := false;

  dbx_Dados.Active := false;
  Cds_Dados.Active := false;

  dbx_Indice.Active := false;
  Cds_Indice.Active := false;

  dbx_Comissao.Active := false;
  Cds_Comissao.Active := false;

  dbx_Comissaor.Active := false;
  Cds_Comissaor.Active := false;

  dbx_Sangria.Active := false;
  Cds_Sangria.Active := false;

  dbx_Ingestao.Active := false;
  Cds_Ingestao.Active := false;

  dbx_cmobra.Active := false;
  Cds_cmobra.Active := false;

  dbx_SituOs.Active := false;
  Cds_SituOs.Active := false;

  dbx_Hist.Active := false;
  Cds_Hist.Active := false;

  dbx_EquipCli.Active := false;
  Cds_EquipCli.Active := false;

  dbx_ImgEquipCli.Active := false;
  Cds_ImgEquipCli.Active := false;

  dbx_NFE.Active := false;
  Cds_NFE.Active := false;

  dbx_NF.Active := false;
  Cds_NF.Active := false;

  dbx_SituNFE.Active := false;
  Cds_SituNFE.Active := false;

  dbx_Modulo.Active := false;
  Cds_Modulo.Active := false;

  dbx_NFP.Active := false;
  Cds_NFP.Active := false;

  dbx_NFM.Active := false;
  Cds_NFM.Active := false;

  dbx_dMobra.Active := false;
  Cds_dMobra.Active := false;

  dbx_Conf_NF.Active := false;
  Cds_Conf_NF.Active := false;

  dbx_NatOp.Active := false;
  Cds_NatOp.Active := false;

  dbx_NatOpNF.Active := false;
  Cds_NatOpNF.Active := false;

  dbx_Conf_NF.Active := false;
  Cds_Conf_NF.Active := false;

  dbx_Tipo_Prod.Active := false;
  dbx_Tipo_Prod.Active := false;

  dbx_vDvendas.Active := false;
  Cds_vDvendas.Active := false;

  dbx_Config.Active := false;
  Cds_Config.Active := false;

  dbx_vendab.Active := false;
  Cds_vendab.Active := false;

  dbx_MovReg.Active := false;
  Cds_MovReg.Active := false;

  dbx_sVenda.Active := false;
  Cds_sVenda.Active := false;

  dbx_dVenda.Active := false;
  Cds_dVenda.Active := false;

  dbx_Produtos.Active := false;
  Cds_Produtos.Active := false;

  dbx_vProdutos.Active := false;
  Cds_vProdutos.Active := false;

  dbx_vVenda.Active := false;
  Cds_vVenda.Active := false;

  dbx_fornecedores.Active := false;
  Cds_fornecedores.Active := false;

  dbx_modbcst.Active := false;
  Cds_modbcst.Active := false;

  dbx_pis.Active := false;
  Cds_pis.Active := false;

  dbx_TipoTab.Active := false;
  Cds_TipoTab.Active := false;

  dbx_Mat_Restaurar.Active := false;
  Cds_Mat_Restaurar.Active := false;

  dbx_Mat_Rest_ID.Active := false;
  Cds_Mat_Rest_ID.Active := false;

  dbx_MatRep.Active := false;
  Cds_MatRep.Active := false;

  dbx_cofins.Active := false;
  Cds_cofins.Active := false;

  dbx_vii.Active := false;
  Cds_vii.Active := false;

  dbx_procedimentos.Active := false;
  Cds_procedimentos.Active := false;

  dbx_oimp.Active := false;
  Cds_oimp.Active := false;

  dbx_ir_ii.Active := false;
  Cds_ir_ii.Active := false;

  dbx_modbc.Active := false;
  Cds_modbc.Active := false;

  dbx_tgicms.Active := false;
  Cds_tgicms.Active := false;
  
  dbx_compras.Active := false;
  Cds_compras.Active := false;

  dbx_clientes.Active := false;
  Cds_clientes.Active := false;

  dbx_vProdForn.Active := false;
  Cds_vProdForn.Active := false;

  dbx_outinfcli.Active := false;
  Cds_outinfcli.Active := false;

  dbx_tabdesc.Active := false;
  Cds_tabdesc.Active := false;

  dbx_tipotab_porcentagem.Active := false;
  Cds_tipotab_porcentagem.Active := false;

  dbx_tabprproc.Active := false;
  Cds_tabprproc.Active := false;

  dbx_TabPrP.Active := false;
  Cds_TabPrP.Active := false;

  dbx_TabPrS.Active := false;
  Cds_TabPrS.Active := false;

  dbx_HistTab.Active := false;
  Cds_HistTab.Active := false;

  dbx_agedodia.Active := false;
  Cds_agedodia.Active := false;

  dbx_livrocaixa.Active := false;
  Cds_livrocaixa.Active := false;

  dbx_totalcmdb.Active := false;
  Cds_totalcmdb.Active := false;

  dbx_Apontamento.Active := false;
  Cds_Apontamento.Active := false;

  dbx_PedCanc.Active := false;
  Cds_PedCanc.Active := false;

  dbx_ent_prod.Active := false;
  Cds_ent_prod.Active := false;

  dbx_dProdutos.Active := false;
  Cds_dProdutos.Active := false;

  dbx_Usuarios.Active := false;
  Cds_Usuarios.Active := false;

  dbx_Invsys.Active := false;
  Cds_Invsys.Active := false;

  dbx_Invsysf.Active := false;
  Cds_Invsysf.Active := false;

  dbx_Invsysfcon.Active := false;
  Cds_Invsysfcon.Active := false;

  dbx_Invsysp.Active := false;
  Cds_Invsysp.Active := false;

  dbx_Grupo.Active := false;
  Cds_Grupo.Active := false;

  dbx_Temp.Active := false;
  Cds_Temp.Active := false;

  dbx_SituRec.Active := false;
  Cds_SituRec.Active := false;

  dbx_SituCadCli.Active := false;
  Cds_SituCadCli.Active := false;

  dbx_SituPagar.Active := false;
  Cds_SituPagar.Active := false;

  dbx_Classe.Active := false;
  Cds_Classe.Active := false;

  dbx_Classep.Active := false;
  Cds_Classep.Active := false;

  dbx_Pagar.Active := false;
  Cds_Pagar.Active := false;

  dbx_Marca.Active := false;
  Cds_Marca.Active := false;

  dbx_matprima.Active := false;
  Cds_matprima.Active := false;

  dbx_Tipo_embalagem.Active := false;
  Cds_Tipo_embalagem.Active := false;

  dbx_comp_embalagem.Active := false;
  Cds_comp_embalagem.Active := false;

  dbx_composicao_prod.Active := false;
  Cds_composicao_prod.Active := false;

  dbx_Representantes.Active := false;
  Cds_Representantes.Active := false;

  dbx_Funcionarios.Active := false;
  Cds_Funcionarios.Active := false;

  dbx_Unidade.Active := false;
  Cds_Unidade.Active := false;

  Sql_Dados.Connected   := false;

  TD.TransactionId := 1;
  TD.IsolationLevel := xilReadCommitted;

  if not FileExists(vardir+'DataBaseName.inf') then
     begin
       AssignFile(log, vardir+'DataBaseName.inf');
       Rewrite(log,vardir+'DataBaseName.inf');
       Append(log);
       WriteLn(log, vardir+'fbdados.fdb');
       CloseFile(log);
    end;
  //endi

  if not FileExists(vardir+'User.inf') then
    begin
      AssignFile(log, vardir+'User.inf');
      Rewrite(log,vardir+'User.inf');
      Append(log);
      WriteLn(log, frmdados.Sql_Dados.Params.Values['User_Name']);
      CloseFile(log);
    end;
  //endi

  if not FileExists(vardir+'UserPass.inf') then
    begin
      AssignFile(log, vardir+'UserPass.inf');
      Rewrite(log,vardir+'UserPass.inf');
      Append(log);
      WriteLn(log, EnDecryptString(frmdados.Sql_Dados.Params.Values['Password'],236));
      CloseFile(log);
    end;
  //endi

  if not FileExists(vardir+'ImpF.inf') then
    begin
      AssignFile(log, vardir+'ImpF.inf');
      Rewrite(log,vardir+'ImpF.inf');
      Append(log);
      WriteLn(log, 'Nenhuma');
      CloseFile(log);
    end;
  //endi

  sImpF := lerarqtexto(vardir+'ImpF.inf');
  sImpFg := lerarqtexto(vardir+'ImpF.inf');

  try
    sDataBase := lerarqtexto(vardir+'DataBaseName.inf');
    sUser_Name := lerarqtexto(vardir+'User.inf');
    sUserPass := EnDecryptString(lerarqtexto(vardir+'UserPass.inf'),236);

    Sql_Dados.ConnectionName := 'UIB FireBird15 Connection';
    //Sql_Dados.ConnectionName := 'IBConnection';

    Sql_Dados.DriverName := 'UIB FireBird15';
    //Sql_Dados.DriverName := 'Interbase';

    Sql_Dados.GetDriverFunc := 'getSQLDriverINTERBASE';

    Sql_Dados.LibraryName := 'dbexpUIBfire15.dll';
    //Sql_Dados.LibraryName := 'dbexpint.dll';

    Sql_Dados.VendorLib := 'fbclient.dll';
    //Sql_Dados.VendorLib := 'gds32.dll';

    Sql_Dados.Params.Values['DriverName'] := 'UIB FireBird15';
    //Sql_Dados.Params.Values['DriverName'] := 'Interbase';

    Sql_Dados.Params.Values['DataBase'] := sDataBase;
    Sql_Dados.Params.Values['User_Name'] := sUser_Name;
    Sql_Dados.Params.Values['Password'] := sUserPass;
    Sql_Dados.Params.Values['SQLDialect'] := '3';
    Sql_Dados.Params.Values['ServerCharSet'] := 'WIN1252';
    Sql_Dados.Connected := true;

    try
    Cds_Usuarios.Active := false;
    with Dbx_Usuarios do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Usuarios where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Usuarios.Active := true;
    except
      showmessage('Não Consegui conectar Usuários');
    end;

    try
    Cds_Unidade.Active := false;
    with Dbx_Unidade do
      begin
       Active := false;
        SQL.Clear;
        SQL.Add('Select * from Unidade where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Unidade.Active := true;
    except
      showmessage('Não Consegui Conectar Unidade');
    end;

    try
    Cds_Funcionarios.Active := false;
    with Dbx_Funcionarios do
      begin
       Active := false;
        SQL.Clear;
        SQL.Add('Select * from Funcionarios where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Funcionarios.Active := true;
    except
      showmessage('Não Consegui Conectar Funcionários');
    end;

    try
    Cds_Representantes.Active := false;
    with Dbx_Representantes do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Representantes where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Representantes.Active := true;
    except
      showmessage('Não Consegui Conectar Representantes');
    end;

    try
    Cds_Marca.Active := false;
    with Dbx_Marca do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Marca where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Marca.Active := true;
    except
      showmessage('Não Consegui Conectar Marca');
    end;


    try
    Cds_matprima.Active := false;
    with Dbx_matprima do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from matprima where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_matprima.Active := true;
    except
      showmessage('Não Consegui Conectar descricao matprima');
    end;

    try
    Cds_Tipo_embalagem.Active := false;
    with Dbx_Tipo_embalagem do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Tipo_embalagem where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Tipo_embalagem.Active := true;
    except
      showmessage('Não Consegui Conectar Tipo_embalagem');
    end;

    try
    Cds_comp_embalagem.Active := false;
    with Dbx_comp_embalagem do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from comp_embalagem where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_comp_embalagem.Active := true;
    except
      showmessage('Não Consegui Conectar comp_embalagem');
    end;

    try
    Cds_composicao_prod.Active := false;
    with Dbx_composicao_prod do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from composicao_prod where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_composicao_prod.Active := true;
    except
      showmessage('Não Consegui Conectar composicao_prod');
    end;


    try
    Cds_Grupo.Active := false;
    with Dbx_Grupo do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Grupo where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Grupo.Active := true;
    except
      showmessage('Não Consegui Conectar Grupo');
    end;

    try
    Cds_Temp.Active := false;
    with Dbx_Temp do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Temp where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Temp.Active := true;
    except
      showmessage('Não Consegui Conectar Temp');
    end;

    try
    Cds_SituRec.Active := false;
    with Dbx_SituRec do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SituRec');
        Active := true;
      end;
    //endth
    Cds_SituRec.Active := true;
    except
      showmessage('Não Consegui Conectar Situação Recbto');
    end;

    try
    Cds_SituCadCli.Active := false;
    with Dbx_SituCadCli do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SituCadCli');
        Active := true;
      end;
    //endth
    Cds_SituCadCli.Active := true;
    except
      showmessage('Não Consegui Conectar Situação Cadastro Cliente');
    end;

    try
    Cds_SituPagar.Active := false;
    with Dbx_SituPagar do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SituPagar');
        Active := true;
      end;
    //endth
    Cds_situPagar.Active := true;
    except
      showmessage('Não Consegui Conectar Situação Pagar');
    end;

    try
    Cds_Classep.Active := false;
    with Dbx_classep do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from classep where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Classe.Active := true;
    except
      showmessage('Não Consegui Conectar Classe Principal');
    end;

    try
    Cds_Classe.Active := false;
      with Dbx_Classe do
        begin
          Active := false;
          SQL.Clear;
        //if Cds_Classe.RecordCount > 0 then
        //   SQL.Add('Select * from Classe where cclap = '+Cds_Classe.fieldbyname('codigo').asString)
        //else
        SQL.Add('Select * from Classe');
        //endi
        Active := true;
      end;
    //endth
    Cds_Classe.Active := true;
    except
      showmessage('Não Consegui Conectar Classe Secundária');
    end;

    try
    Cds_Pagar.Active := false;
    with Dbx_Pagar do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Pagar where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Pagar.Active := true;
    except
      showmessage('Não Consegui Conectar Pagar');
    end;

    try
    Cds_InvSysp.Active := false;
    with Dbx_Invsysp do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Invsysp');
        Active := true;
      end;
    //endth
    Cds_Invsysp.Active := true;
    except
      showmessage('Não Consegui Conectar Inventário Principal do Sistema');
    end;

    try
    Cds_InvSysF.Active := false;
    with Dbx_Invsysf do
      begin
        Active := false;
        SQL.Clear;
        if Cds_Usuarios.RecordCount > 0 then
           begin
             sql.add('select * from invsysf where cusu = '+Cds_Usuarios.fieldbyname('codigo').asString);
           end
        else
           begin
             sql.add('select * from invsysf where cusu = 0');
           end;
        //endi
        Active := true;
      end;
    //endth
    Cds_Invsysf.Active := true;
    except
     showmessage('Não Consegui Conectar Inventário Sistema I');
    end;

    try
    Cds_Invsysfcon.Active := false;
    with Dbx_Invsysfcon do
      begin
        Active := false;
        SQL.Clear;
        sql.add('select * from invsysf');
        Active := true;
      end;
    //endth
    Cds_Invsysfcon.Active := true;
    except
      showmessage('Não Consegui Conectar Inventários Sistema II');
    end;

    try
    Cds_InvSys.Active := false;
    with Dbx_Invsys do
      begin
        Active := false;
        SQL.Clear;
        if Cds_invsysp.RecordCount > 0 then
           begin
             sql.add('select * from invsys where cinvsysp = '+Cds_invsysp.fieldbyname('codigo').asString);
           end
        else
           begin
             sql.add('select * from invsys where cinvsysp = 0');
           end;
        //endi
        Active := true;
      end;
    //endth
    Cds_Invsys.Active := true;
    except
      showmessage('Não Consegui Conectar Inventário Sistema Secundário');
    end;

    try
    Cds_Tipo_Pgto.Active := false;
    with Dbx_Tipo_Pgto do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from tipo_pgto where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Tipo_Pgto.Active := true;
    except
      showmessage('Não Consegui Conectar Tipo Pagto');
    end;


    try
    Cds_cond_Pgto.Active := false;
    with Dbx_cond_Pgto do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from condpgto where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_cond_Pgto.Active := true;
    except
      showmessage('Não Consegui Conectar Condiçoes Pagto');
    end;


    try
    Cds_conddetalhe_Pgto.Active := false;
    with Dbx_conddetalhe_Pgto do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from conddetalhepgto where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_conddetalhe_Pgto.Active := true;
    except
      showmessage('Não Consegui Conectar Condiçoes detalhe Pagto');
    end;


    try
    Cds_Indice.Active := false;
    with  Dbx_Indice do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Indice');
        Active := true;
      end;
    //endth
    Cds_Indice.Active := true;
    except
     showmessage('Não Consegui Conectar Indice');
    end;


    try
    Cds_Comissao.Active := false;
    with  Dbx_Comissao do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Comissao where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Comissao.Active := true;
    except
     showmessage('Não Consegui Conectar Comissão Funcionário');
    end;

    try
    Cds_Comissaor.Active := false;
    with  Dbx_Comissaor do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Comissaor where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Comissaor.Active := true;
    except
     showmessage('Não Consegui Conectar Comissão Representante');
    end;

    try
    Cds_Sangria.Active := false;
    with  Dbx_Sangria do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Sangria where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Sangria.Active := true;
    except
     showmessage('Não Consegui Conectar Sangria');
    end;

    try
    Cds_Ingestao.Active := false;
    with  Dbx_Ingestao do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Ingestao where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Ingestao.Active := true;
    except
     showmessage('Não Consegui Conectar Ingestão');
    end;

    try
    Cds_cmobra.Active := false;
    with  Dbx_cmobra do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from cmobra where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_cmobra.Active := true;
    except
     showmessage('Não Consegui Conectar cmobra');
    end;

    try
    Cds_SituOs.Active := false;
    with  Dbx_SituOs do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SituOs where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_SituOs.Active := true;
    except
     showmessage('Não Consegui Conectar SituOs');
    end;

    try
    Cds_Hist.Active := false;
    with  Dbx_Hist do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Hist where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Hist.Active := true;
    except
     showmessage('Não Consegui Conectar Hist');
    end;

    try
    Cds_EquipCli.Active := false;
    with  Dbx_EquipCli do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from EquipCli where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_EquipCli.Active := true;
    except
     showmessage('Não Consegui Conectar EquipCli');
    end;

    try
    Cds_ImgEquipCli.Active := false;
    with  Dbx_ImgEquipCli do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from ImgEquipCli where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_ImgEquipCli.Active := true;
    except
     showmessage('Não Consegui Conectar ImgEquipCli');
    end;

    try
    Cds_NFE.Active := false;
    with  Dbx_NFE do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from NFE where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_NFE.Active := true;
    except
     showmessage('Não Consegui Conectar NFE');
    end;

    try
    Cds_NF.Active := false;
    with  Dbx_NF do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from NF where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_NF.Active := true;
    except
     showmessage('Não Consegui Conectar NF');
    end;

    try
    Cds_SituNFE.Active := false;
    with  Dbx_SituNFE do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SituNFE where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_SituNFE.Active := true;
    except
     showmessage('Não Consegui Conectar SituNFE');
    end;


    try
    Cds_Modulo.Active := false;
    with  Dbx_Modulo do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Modulo where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Modulo.Active := true;
    except
     showmessage('Não Consegui Conectar Modulo');
    end;


    try
    Cds_NFP.Active := false;
    with  Dbx_NFP do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from NFP where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_NFP.Active := true;
    except
     showmessage('Não Consegui Conectar NFP');
    end;


    try
    Cds_NFM.Active := false;
    with  Dbx_NFM do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from NFM where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_NFM.Active := true;
    except
     showmessage('Não Consegui Conectar NFM');
    end;

    try
    Cds_DMOBRA.Active := false;
    with  Dbx_DMOBRA do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from DMOBRA where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_DMOBRA.Active := true;
    except
     showmessage('Não Consegui Conectar Detalhe Mão de Obras');
    end;

    try
    Cds_Conf_Nf.Active := false;
    with  Dbx_Conf_NF do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from ConfNF where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Conf_NF.Active := true;
    except
      showmessage('Não Consegui Conectar Conf. N.F.');
    end;

    try
    Cds_NatOp.Active := false;
    with  Dbx_NatOp do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from NatOp where codigo = 0 order by descricao');
        Active := true;
      end;
    //endth
    Cds_NatOp.Active := true;
    except
      showmessage('Não Consegui Conectar Natureza da Operação Classificação Fiscal');
    end;

    try
    Cds_NatOpNF.Active := false;
    with  Dbx_NatOpNF do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from NatOpNF where codigo = 0 order by descricao');
        Active := true;
      end;
    //endth
    Cds_NatOpNF.Active := true;
    except
      showmessage('Não Consegui Conectar Natureza da Operação');
    end;

    try
    Cds_TipoCli.Active := false;
    with  Dbx_TipoCli do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from TipoCli');
        Active := true;
      end;
    //endth
    Cds_TipoCli.Active := true;
    except
      showmessage('Não Consegui Conectar Tipo Cliente');
    end;

    try
    Cds_Transportadores.Active := false;
    with  Dbx_Transportadores do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Transportador where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Transportadores.Active := true;
    except
      showmessage('Não Consegui Conectar Transportador');
    end;

    try
    Cds_CF.Active := false;
    with  Dbx_CF do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from CF where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_CF.Active := true;
    except
      showmessage('Não Consegui Conectar CF');
    end;

    try
    Cds_SITA.Active := false;
    with  Dbx_SITA do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SITA where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_SITA.Active := true;
    except
      showmessage('Não Consegui Conectar SITA');
    end;

    try
    Cds_SITB.Active := false;
    with  Dbx_SITB do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from SITB where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_SITB.Active := true;
    except
      showmessage('Não Consegui Conectar SITB');
    end;

    try
    Cds_IPI.Active := false;
    with  Dbx_IPI do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from IPI where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_IPI.Active := true;
    except
      showmessage('Não Consegui Conectar IPI');
    end;

    try
    Cds_AliqImpFis.Active := false;
    with  Dbx_AliqImpFis do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from AliqImpFis where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_AliqImpFis.Active := true;
    except
      showmessage('Não Consegui Conectar Aliq. ICMS');
    end;

    try
    Cds_Estados.Active := false;
    with  Dbx_Estados do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Estados where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Estados.Active := true;
    except
      showmessage('Não Consegui Conectar Estados');
    end;

    try
    Cds_Munic.Active := false;
    with  Dbx_Munic do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Munic where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Munic.Active := true;
    except
      showmessage('Não Consegui Conectar Munic');
    end;

    try
    Cds_Pais.Active := false;
    with  Dbx_Pais do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Pais where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Pais.Active := true;
    except
      showmessage('Não Consegui Conectar Pais');
    end;


    try
    Cds_ImpRecAnt.Active := false;
    with  Dbx_ImpRecAnt do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from ImpRecAnt');
        Active := true;
      end;
    //endth
    Cds_ImpRecAnt.Active := true;
    except
      showmessage('Não Consegui Conectar Rec. Ant.');
    end;

    try
    Cds_vEnt_Estq.Active := false;
    with  Dbx_vEnt_Estq do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from vEnt_Estq where cfor = 0');
        Active := true;
      end;
    //endth
    Cds_vEnt_Estq.Active := true;
    except
      showmessage('Não Consegui Conectar View Entrada Estoque');
    end;

    try
    Cds_Tipo_Prod.Active := false;
    with  Dbx_Tipo_Prod do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Tipo_Produto');
        Active := true;
      end;
    //endth
    Cds_Tipo_Prod.Active := true;
    except
      showmessage('Não Consegui Conectar Tipo Produto');
    end;

    try
    Cds_vDvendas.Active := false;
    with  Dbx_vDvendas do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select CUNI, sum(QTDE) as QtdeT , DESCRICAO, NCO, TIPOOP, PRCU,  PRVE,  Sum(SUBTOTC) as subtotct,');
        SQL.Add('Sum(SUBTOTV) as subtotvt,  DATA,  EOUS, CODIGO,  CFUN,  CREP,  CCLI from vDvendas Where codigo = 0');
        SQL.Add('group by CUNI, QTDE, DESCRICAO, NCO, TIPOOP, PRCU,  PRVE,  SUBTOTC, SUBTOTV,  DATA,  EOUS, CODIGO,  CFUN,  CREP,  CCLI');
        Active := true;
      end;
    //endth
    Cds_vDvendas.Active := true;
    except
      showmessage('Não Consegui Conectar Detalhe Vendas');
    end;

    try
    Cds_Config.Active := false;
    with  Dbx_Config do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Config');
        Active := true;
      end;
    //endth
    Cds_Config.Active := true;
    except
      showmessage('Não Consegui Conectar Config');
    end;

    try
    Cds_Vendab.Active := false;
    with  Dbx_Vendab do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Vendab where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Vendab.Active := true;
    except
      showmessage('Não Consegui Conectar Venda Balcão');
    end;

    try
    Cds_MovReg.Active := false;
    with  Dbx_MovReg do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from MovReg Where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_MovReg.Active := true;
    except
      showmessage('Não Consegui Conectar Mov Reg');
    end;

    try
    Cds_Produtos.Active := false;
    with  Dbx_Produtos do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Produtos where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Produtos.Active := true;
    except
       showmessage('Não Consegui Conectar Produto Principal');
    end;

    try
    Cds_vProdutos.Active := false;
    with  Dbx_vProdutos do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from vProdutos where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_vProdutos.Active := true;
    except
       showmessage('Não Consegui Conectar View Produtos');
    end;

    try
    Cds_vVenda.Active := false;
    with  Dbx_vVenda do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from vVendas where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_vVenda.Active := true;
    except
      showmessage('Não Consegui Conectar View Vendas');
    end;

    try
    Cds_RelPorGrupo.Active := false;
    with  Dbx_RelPorGrupo do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from RelPorGrupo where ccli = 0');
        Active := true;
      end;
    //endth
    Cds_RelPorGrupo.Active := true;
    except
      showmessage('Não Consegui Conectar View RelPorGrupo');
    end;

    try
    Cds_fornecedores.Active := false;
    with  Dbx_fornecedores do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from fornecedores  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_fornecedores.Active := true;
    except
      showmessage('Não Consegui Conectar Fornecedores');
    end;

    try
    Cds_modbcst.Active := false;
    with  Dbx_modbcst do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from modbcst  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_modbcst.Active := true;
    except
      showmessage('Não Consegui Conectar MODBCST');
    end;

    try
    Cds_pis.Active := false;
    with  Dbx_pis do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from pis  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_pis.Active := true;
    except
      showmessage('Não Consegui Conectar pis');
    end;

    try
    Cds_TipoTab.Active := false;
    with  Dbx_TipoTab do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from TipoTab  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_TipoTab.Active := true;
    except
      showmessage('Não Consegui Conectar Tipo Tabela');
    end;

    try
    Cds_Mat_Restaurar.Active := false;
    with  Dbx_Mat_Restaurar do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Mat_Restaurar  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Mat_Restaurar.Active := true;
    except
      showmessage('Não Consegui Conectar Materiais Restaurar');
    end;

    try
    Cds_Mat_Rest_ID.Active := false;
    with  Dbx_Mat_Rest_ID do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Mat_Restaurar  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Mat_Rest_ID.Active := true;
    except
      showmessage('Não Consegui Conectar Materiais Restaurar ID');
    end;

    try
    Cds_MatRep.Active := false;
    with  Dbx_MatRep do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from MatRep  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_MatRep.Active := true;
    except
      showmessage('Não Consegui Conectar Materiais Reparar');
    end;

    try
    Cds_cofins.Active := false;
    with  Dbx_cofins do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from cofins  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_cofins.Active := true;
    except
      showmessage('Não Consegui Conectar cofins');
    end;

    try
    Cds_vii.Active := false;
    with  Dbx_vii do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from vii  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_vii.Active := true;
    except
      showmessage('Não Consegui Conectar vii');
    end;

    try
    Cds_procedimentos.Active := false;
    with  Dbx_procedimentos do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from procedimentos  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_procedimentos.Active := true;
    except
      showmessage('Não Consegui Conectar procedimentos');
    end;

    try
    Cds_oimp.Active := false;
    with  Dbx_oimp do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from oimp  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_oimp.Active := true;
    except
      showmessage('Não Consegui Conectar OIMP');
    end;

    try
    Cds_ir_ii.Active := false;
    with  Dbx_ir_ii do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from ir_ii  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_ir_ii.Active := true;
    except
      showmessage('Não Consegui Conectar ir_ii');
    end;

    try
    Cds_modbc.Active := false;
    with  Dbx_modbc do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from modbc  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_modbc.Active := true;
    except
      showmessage('Não Consegui Conectar modbc');
    end;

    try
    Cds_tgicms.Active := false;
    with  Dbx_tgicms do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from tgicms  where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_tgicms.Active := true;
    except
      showmessage('Não Consegui Conectar tgicms');
    end;

    try
    Cds_Compras.Active := false;
    with  Dbx_Compras do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Compras  where codigo = 0');
        //SQL.Add('select * from compras c inner join fornecedores f  on c.cfor = f.codigo');
        Active := true;
      end;
    //endth
    Cds_Compras.Active := true;
    except
      showmessage('Não Consegui Conectar Compras');
    end;

    try
    Cds_Clientes.Active := false;
    with  Dbx_Clientes do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Clientes where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Clientes.Active := true;
    except
      showmessage('Não Consegui Conectar Clientes');
    end;

    try
    Cds_vProdForn.Active := false;
    with  Dbx_vProdForn do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from vProdForn where qtde_comprada = 0');
        Active := true;
      end;
    //endth
    Cds_vProdForn.Active := true;
    except
      showmessage('Não Consegui Conectar Produto por Fornecedor (view vProdForn)');
    end;

    try
    Cds_outinfcli.Active := false;
    with  Dbx_outinfcli do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from outinfcli where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_outinfcli.Active := true;
    except
      showmessage('Não Consegui Conectar outinfcli');
    end;


    try
    Cds_tabdesc.Active := false;
    with  Dbx_tabdesc do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from tabdesc where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_tabdesc.Active := true;
    except
      showmessage('Não Consegui Conectar tabdesc');
    end;


    try
    Cds_tipotab_porcentagem.Active := false;
    with  Dbx_tipotab_porcentagem do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from tipotab_porcentagem where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_tipotab_porcentagem.Active := true;
    except
      showmessage('Não Consegui Conectar TipoTab_Porcentagem');
    end;

    try
    Cds_tabprproc.Active := false;
    with  Dbx_tabprproc do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from tabprproc where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_tabprproc.Active := true;
    except
      showmessage('Não Consegui Conectar TabPrProc');
    end;

    try
    Cds_TabPrP.Active := false;
    with  Dbx_TabPrP do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from TabPrP where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_TabPrP.Active := true;
    except
      showmessage('Não Consegui Conectar TabPrP');
    end;

    try
    Cds_TabPrS.Active := false;
    with  Dbx_TabPrS do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from TabPrS where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_TabPrS.Active := true;
    except
      showmessage('Não Consegui Conectar TabPrS');
    end;

    try
    Cds_HistTab.Active := false;
    with  Dbx_HistTab do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from HistTab where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_HistTab.Active := true;
    except
      showmessage('Não Consegui Conectar HistTab');
    end;
    
    try
    Cds_Agedodia.Active := false;
    with  Dbx_Agedodia do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Agedodia where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Agedodia.Active := true;
    except
      showmessage('Não Consegui Conectar Agenda');
    end;

    try
    Cds_livrocaixa.Active := false;
    with  Dbx_livrocaixa do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from livrocaixa where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_livrocaixa.Active := true;
    except
      showmessage('Não Consegui Conectar Livro Caixa');
    end;

    try
    Cds_totalcmdb.Active := false;
    with  Dbx_totalcmdb do
      begin
        Active := false;
        SQL.Clear;
        //SQL.Add('Select * from totalcmdb');
        SQL.Add('Select * from totalcmdb where cmdb = 0');
        //SQL.Add('select t.ehvenda, t.totalp, t.cmdb, t.tpcmdb, min(v.data_op) as data, min(v.hora_op) as hora from totalcmdb t inner join vendab v on t.cmdb = v.cmdb group by t.ehvenda, t.totalp, t.cmdb, t.tpcmdb');
        Active := true;
      end;
    //endth
    Cds_totalcmdb.Active := true;
    except
      showmessage('Não Consegui Conectar comandas ativas');
    end;

    try
    Cds_Apontamento.Active := false;
    with  Dbx_Apontamento do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from Apontamento where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_Apontamento.Active := true;
    except
      showmessage('Não Consegui Conectar Apontamento');
    end;

    try
    Cds_PedCanc.Active := false;
    with  Dbx_PedCanc do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from PedCanc where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_PedCanc.Active := true;
    except
      showmessage('Não Consegui Conectar Pedidos Cancelados');
    end;

    try
    Cds_dProdutos.Active := false;
    with  Dbx_dProdutos do
      begin
        Active := false;
        SQL.Clear;
        if Cds_Produtos.recordcount > 0 then
           Sql.Add('select * from dprodutos d inner join produtos p on p.codigo=d.cdescprod')
        else
           Sql.Add('select * from dprodutos d inner join produtos p on p.codigo=d.cdescprod where d.codigo = 0');
        //endif
        Active := true;
      end;
    //endth
    Cds_dProdutos.Active := true;
    except
      showmessage('Não Consegui Conectar Detalhe Produtos');
    end;

    try
    tabela := 'sVenda';
    Cds_sVenda.Active := false;
    with Dbx_sVenda do
      begin
        Active := false;
        SQL.Clear;
        SQL.Add('Select * from '+tabela+' where codigo = 0');
        Active := true;
      end;
    //endth
    Cds_sVenda.Active := true;

    cds_dvenda.Active := false;
    with Dbx_dVenda do
      begin
        active := false;
        sql.Clear;
        if Cds_sVenda.RecordCount > 0 then
           begin
             //sql.add('select * from dVenda d inner join dProdutos p on d.cpro = p.codigo inner join Produtos u on p.cdescprod=u.codigo where codsvenda = '+Cds_sVenda.fieldbyname('codigo').asString);
             sql.add('select * from dVenda d Where d.codsvenda = '+Cds_sVenda.fieldbyname('codigo').asString);
             //sql.add('select * from dVenda d');

           end
        else
           begin
             //sql.add('select * from dVenda d inner join dProdutos p on d.cpro = p.codigo inner join Produtos u on p.cdescprod=u.codigo where codsvenda = 0');
             sql.add('select * from dVenda d Where d.codsvenda = 0');
             //sql.add('select * from dVenda d');
           end;
        //endi
        active := true;
      end;
    //endth
    Cds_dVenda.Active := true;

    cds_Vencto.Active := false;
    with Dbx_Vencto do
      begin
        Active := false;
        SQL.Clear;
        if Cds_sVenda.RecordCount > 0 then
           begin
             sql.Add('Select * from vencimentos where c_svenda = '+Cds_sVenda.fieldbyname('codigo').asString);
           end
        else
           begin
             sql.Add('Select * from vencimentos where c_svenda = 0');
           end;
        //endi
        Active := true;
      end;
    //endi
    Cds_Vencto.Active := true;
    except
       showmessage('Não Consegui Conectar Vencimentos');
    end;

    try
    cds_Vencto_NF.Active := false;
    with Dbx_Vencto_NF do
      begin
        Active := false;
        SQL.Clear;
        if Cds_sVenda.RecordCount > 0 then
           begin
             sql.Add('Select * from Vencimentos_NF where c_svenda = '+Cds_sVenda.fieldbyname('codigo').asString);
           end
        else
           begin
             sql.Add('Select * from Vencimentos_NF where c_svenda = 0');
           end;
        //endi
        Active := true;
      end;
    //endi
    Cds_Vencto_NF.Active := true;
    except
       showmessage('Não Consegui Conectar Vencimentos_NF');
    end;

    try
    Cds_Ent_Prod.Active := false;
    with  Dbx_Ent_Prod do
      begin
        Active := false;
        SQL.Clear;
        if Cds_dProdutos.RecordCount > 0 then
           SQL.Add('Select * from Ent_Prod where cpro = '+Cds_dProdutos.FieldByName('codigo').asString)
        else
           SQL.Add('Select * from Ent_Prod where cpro = 0');
        //endi
        Active := true;
      end;
    //endth
    Cds_Ent_Prod.Active := true;
    except
      showmessage('Não Consegui Conectar Entrada de Produtos');
    end;




  except
    exit;
  end;




  if frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString <> '' then
     begin


              try
                with ADO_Conexao_2 do
                   begin
                      Connected := false;
                      ConnectionString := 'Provider=MSDASQL.1;Password='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';Persist Security Info=True;User ID='+frmdados.Cds_Indice.fieldbyname('loginado').asString+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                                          'DBQ='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+frmdados.Cds_Indice.fieldbyname('senhaado').asString+';'+
                                          'UID=admin;";Initial Catalog='+frmdados.Cds_Indice.fieldbyname('caminhobcoado').asString;
                      Connected := true;

               end;
            //endwith
          except
            ADO_Conexao_2.Connected := false;
          end;


      end;
  //endif


  if Cds_Indice.fieldbyName('caminhodbf_1').asString <> '' then
     begin

            try
              with Dbx_Dbf do
                begin
                  active := false;
                  Sql.Clear;
                  //sql.Add('Select * from '+quotedstr(cds_indice.fieldbyname('caminhodbf_1').asString+'\estoque.dbf')+' Where codigo = 0');
                  //sql.Add('Select * from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString+'\estoque.dbf')+' Where codigo like '+quotedstr('A%'));
                  sql.Add('Select * from '+quotedstr(Cds_Indice.fieldbyName('caminhodbf_1').asString));
                  active := true;
                end;
              //end
            except
              Dbx_Dbf.Active := false;
              sMsg := 'Erro !!!';
            end;

     end;
  //endi



  //with cdsRanking do
  //  begin
  //    Active := false;
  //    FileName :=vardir+'rankprod.cds';
  //    if not fileexists(vardir+'rankprod.cds') then
  //       begin
  //         CreateDataSet;
  //         SaveToFile(vardir+'rankprod.cds',dfbinary);
  //       end;
      //endi
  //    Active := true;
      //criar indice com active ativo somente qdo precisar utiliza-lo caso contrário não funciona
  //    AddIndex('qtdet', 'qtdet', [ixDescending], 'qtdet', '', 0);
  //    IndexName := '';
  //    Active := false;
  //  end;
  //endth


end;


procedure TfrmDados.DataModuleDestroy(Sender: TObject);
begin


  Sql_Dados.Connected := false;
  ADO_Conexao_2.Connected := false;
  ADO_Conexao.Connected := false;
  Dbx_Dbf.Active := false;

end;

procedure TfrmDados.cds_Tipo_PgtoAfterPost(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.cds_Tipo_PgtoBeforePost(DataSet: TDataSet);
begin
IniciaTransacao;
end;

procedure TfrmDados.Cds_VenctoBeforePost(DataSet: TDataSet);
begin
if frmfrente <> nil then
   begin
     Cds_Vencto.Edit;
     Cds_Vencto.FieldByName('nco').asInteger := frmfrente.iControle;
     //verificar
     //Cds_Vencto.FieldByName('originado').asString := '1'  ;
   end;
//endi
//if frmfrenteecf <> nil then
//   begin
//     Cds_Vencto.Edit;
//     Cds_Vencto.FieldByName('nco').asInteger := frmfrenteecf.iControle;
     //verificar
     //Cds_Vencto.FieldByName('originado').asString := '1'  ;
//   end;
//endi



Iniciatransacao;
end;

procedure TfrmDados.Cds_dadosBeforePost(DataSet: TDataSet);
begin
IniciaTransacao;
end;

procedure TfrmDados.Cds_VenctoAfterPost(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.Cds_dadosAfterPost(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.Cds_dadosNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  SqlStMt := 'Select gen_id(Gen_'+tabela+'_ID,1) as Valor from RDB$DATABASE;';
  ResultSet := nil;
  try
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       Cds_Dados.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
  finally
      ResultSet.Free;
  end;
end;

procedure TfrmDados.cds_Tipo_PgtoBeforeDelete(DataSet: TDataSet);
begin
IniciaTransacao;
end;

procedure TfrmDados.Cds_VenctoBeforeDelete(DataSet: TDataSet);
begin
IniciaTransacao;

end;

procedure TfrmDados.Cds_dadosBeforeDelete(DataSet: TDataSet);
begin
IniciaTransacao;

end;

procedure TfrmDados.cds_Tipo_PgtoAfterDelete(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.Cds_VenctoAfterDelete(DataSet: TDataSet);
begin
AtualizaDados;

end;

procedure TfrmDados.Cds_dadosAfterDelete(DataSet: TDataSet);
begin
AtualizaDados;

end;

procedure TfrmDados.Cds_dadosAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
finalizatransacao;
end;

procedure TfrmDados.Cds_VenctoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
finalizatransacao;
end;

procedure TfrmDados.cds_Tipo_PgtoAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
  finalizatransacao;
end;

procedure TfrmDados.AtualizaDados;
begin

if Cds_cond_Pgto.ChangeCount <> 0 then
   begin
     Cds_cond_Pgto.ApplyUpdates(0);
   end;
//endi
if Cds_conddetalhe_Pgto.ChangeCount <> 0 then
   begin
     Cds_conddetalhe_Pgto.ApplyUpdates(0);
   end;
//endi
if Cds_Tipo_Pgto.ChangeCount <> 0 then
   begin
     Cds_Tipo_Pgto.ApplyUpdates(0);
   end;
//endi
if Cds_Vencto.ChangeCount <> 0 then
   begin
     Cds_Vencto.ApplyUpdates(0);
   end;
//endi
if Cds_Vencto_NF.ChangeCount <> 0 then
   begin
     Cds_Vencto_NF.ApplyUpdates(0);
   end;
//endi
if Cds_Dados.ChangeCount <> 0 then
   begin
     Cds_Dados.ApplyUpdates(0);
   end;
//endi
if Cds_Indice.ChangeCount <> 0 then
   begin
     Cds_Indice.ApplyUpdates(0);
   end;
//endi
if Cds_Comissao.ChangeCount <> 0 then
   begin
     Cds_Comissao.ApplyUpdates(0);
   end;
//endi
if Cds_Comissaor.ChangeCount <> 0 then
   begin
     Cds_Comissaor.ApplyUpdates(0);
   end;
//endi
if Cds_Sangria.ChangeCount <> 0 then
   begin
     Cds_Sangria.ApplyUpdates(0);
   end;
//endi
if Cds_Ingestao.ChangeCount <> 0 then
   begin
     Cds_Ingestao.ApplyUpdates(0);
   end;
//endi
if Cds_cmobra.ChangeCount <> 0 then
   begin
     Cds_cmobra.ApplyUpdates(0);
   end;
//endi
if Cds_SituOs.ChangeCount <> 0 then
   begin
     Cds_SituOs.ApplyUpdates(0);
   end;
//endi
if Cds_Hist.ChangeCount <> 0 then
   begin
     Cds_Hist.ApplyUpdates(0);
   end;
//endi
if Cds_EquipCli.ChangeCount <> 0 then
   begin
     Cds_EquipCli.ApplyUpdates(0);
   end;
//endi
if Cds_ImgEquipCli.ChangeCount <> 0 then
   begin
     Cds_ImgEquipCli.ApplyUpdates(0);
   end;
//endi
if Cds_NFE.ChangeCount <> 0 then
   begin
     Cds_NFE.ApplyUpdates(0);
   end;
//endi
if Cds_NF.ChangeCount <> 0 then
   begin
     Cds_NF.ApplyUpdates(0);
   end;
//endi
if Cds_SituNFE.ChangeCount <> 0 then
   begin
     Cds_SituNFE.ApplyUpdates(0);
   end;
//endi
if Cds_Modulo.ChangeCount <> 0 then
   begin
     Cds_Modulo.ApplyUpdates(0);
   end;
//endi
if Cds_NFP.ChangeCount <> 0 then
   begin
     Cds_NFP.ApplyUpdates(0);
   end;
//endi
if Cds_NFM.ChangeCount <> 0 then
   begin
     Cds_NFM.ApplyUpdates(0);
   end;
//endi
if Cds_dMobra.ChangeCount <> 0 then
   begin
     Cds_dMobra.ApplyUpdates(0);
   end;
//endi
if Cds_Conf_NF.ChangeCount <> 0 then
   begin
     Cds_Conf_NF.ApplyUpdates(0);
   end;
//endi
if Cds_NatOp.ChangeCount <> 0 then
   begin
     Cds_NatOp.ApplyUpdates(0);
   end;
//endi
if Cds_NatOpNF.ChangeCount <> 0 then
   begin
     Cds_NatOpNF.ApplyUpdates(0);
   end;
//endi
if Cds_TipoCli.ChangeCount <> 0 then
   begin
     Cds_TipoCli.ApplyUpdates(0);
   end;
//endi
if Cds_Transportadores.ChangeCount <> 0 then
   begin
     Cds_Transportadores.ApplyUpdates(0);
   end;
//endi
if Cds_CF.ChangeCount <> 0 then
   begin
     Cds_CF.ApplyUpdates(0);
   end;
//endi
if Cds_SITA.ChangeCount <> 0 then
   begin
     Cds_SITA.ApplyUpdates(0);
   end;
//endi
if Cds_SITB.ChangeCount <> 0 then
   begin
     Cds_SITB.ApplyUpdates(0);
   end;
//endi
if Cds_IPI.ChangeCount <> 0 then
   begin
     Cds_IPI.ApplyUpdates(0);
   end;
//endi
if Cds_AliqImpFis.ChangeCount <> 0 then
   begin
     Cds_AliqImpFIS.ApplyUpdates(0);
   end;
//endi
if Cds_Estados.ChangeCount <> 0 then
   begin
     Cds_Estados.ApplyUpdates(0);
   end;
//endi
if Cds_Munic.ChangeCount <> 0 then
   begin
     Cds_Munic.ApplyUpdates(0);
   end;
//endi
if Cds_Pais.ChangeCount <> 0 then
   begin
     Cds_Pais.ApplyUpdates(0);
   end;
//endi
if Cds_ImpRecAnt.ChangeCount <> 0 then
   begin
     Cds_ImpRecAnt.ApplyUpdates(0);
   end;
//endi
if Cds_vEnt_Estq.ChangeCount <> 0 then
   begin
     Cds_vEnt_Estq.ApplyUpdates(0);
   end;
//endi
if Cds_Tipo_Prod.ChangeCount <> 0 then
   begin
     Cds_Tipo_Prod.ApplyUpdates(0);
   end;
//endi
if Cds_vDvendas.ChangeCount <> 0 then
   begin
     Cds_vDvendas.ApplyUpdates(0);
   end;
//endi
if Cds_Config.ChangeCount <> 0 then
   begin
     Cds_Config.ApplyUpdates(0);
   end;
//endi
if Cds_Vendab.ChangeCount <> 0 then
   begin
     Cds_Vendab.ApplyUpdates(0);
   end;
//endi
if Cds_MovReg.ChangeCount <> 0 then
   begin
     Cds_MovReg.ApplyUpdates(0);
   end;
//endi
if Cds_sVenda.ChangeCount <> 0 then
   begin
     Cds_sVenda.ApplyUpdates(0);
   end;
//endi
if Cds_dVenda.ChangeCount <> 0 then
   begin
     Cds_dVenda.ApplyUpdates(0);
   end;
//endi
if Cds_Produtos.ChangeCount <> 0 then
   begin
     Cds_Produtos.ApplyUpdates(0);
   end;
//endi
if Cds_vProdutos.ChangeCount <> 0 then
   begin
     Cds_vProdutos.ApplyUpdates(0);
   end;
//endi
if Cds_vVenda.ChangeCount <> 0 then
   begin
     Cds_vVenda.ApplyUpdates(0);
   end;
//endi
if Cds_fornecedores.ChangeCount <> 0 then
   begin
     Cds_fornecedores.ApplyUpdates(0);
   end;
//endi
if Cds_modbcst.ChangeCount <> 0 then
   begin
     Cds_modbcst.ApplyUpdates(0);
   end;
//endi
if Cds_pis.ChangeCount <> 0 then
   begin
     Cds_pis.ApplyUpdates(0);
   end;
//endi
if Cds_TipoTab.ChangeCount <> 0 then
   begin
     Cds_TipoTab.ApplyUpdates(0);
   end;
//endi
if Cds_Mat_Restaurar.ChangeCount <> 0 then
   begin
     Cds_Mat_Restaurar.ApplyUpdates(0);
   end;
//endi
if Cds_Mat_Rest_ID.ChangeCount <> 0 then
   begin
     Cds_Mat_Rest_ID.ApplyUpdates(0);
   end;
//endi
if Cds_MatRep.ChangeCount <> 0 then
   begin
     Cds_MatRep.ApplyUpdates(0);
   end;
//endi
if Cds_cofins.ChangeCount <> 0 then
   begin
     Cds_cofins.ApplyUpdates(0);
   end;
//endi
if Cds_vii.ChangeCount <> 0 then
   begin
     Cds_vii.ApplyUpdates(0);
   end;
//endi
if Cds_procedimentos.ChangeCount <> 0 then
   begin
     Cds_procedimentos.ApplyUpdates(0);
   end;
//endi
if Cds_oimp.ChangeCount <> 0 then
   begin
     Cds_oimp.ApplyUpdates(0);
   end;
//endi
if Cds_ir_ii.ChangeCount <> 0 then
   begin
     Cds_ir_ii.ApplyUpdates(0);
   end;
//endi
if Cds_modbc.ChangeCount <> 0 then
   begin
     Cds_modbc.ApplyUpdates(0);
   end;
//endi
if Cds_tgicms.ChangeCount <> 0 then
   begin
     Cds_tgicms.ApplyUpdates(0);
   end;
//endi
if Cds_Compras.ChangeCount <> 0 then
   begin
     Cds_Compras.ApplyUpdates(0);
   end;
//endi
if Cds_Clientes.ChangeCount <> 0 then
   begin
     Cds_Clientes.ApplyUpdates(0);
   end;
//endi
if Cds_vProdForn.ChangeCount <> 0 then
   begin
     Cds_vProdForn.ApplyUpdates(0);
   end;
//endi
if Cds_outinfcli.ChangeCount <> 0 then
   begin
     Cds_outinfcli.ApplyUpdates(0);
   end;
//endi
if Cds_tabdesc.ChangeCount <> 0 then
   begin
     Cds_tabdesc.ApplyUpdates(0);
   end;
//endi
if Cds_TipoTab_Porcentagem.ChangeCount <> 0 then
   begin
     Cds_TipoTab_Porcentagem.ApplyUpdates(0);
   end;
//endi
if Cds_TabPrProc.ChangeCount <> 0 then
   begin
     Cds_TabPrProc.ApplyUpdates(0);
   end;
//endi
if Cds_TabPrP.ChangeCount <> 0 then
   begin
     Cds_TabPrP.ApplyUpdates(0);
   end;
//endi
if Cds_TabPrS.ChangeCount <> 0 then
   begin
     Cds_TabPrS.ApplyUpdates(0);
   end;
//endi
if Cds_HistTab.ChangeCount <> 0 then
   begin
     Cds_HistTab.ApplyUpdates(0);
   end;
//endi
if Cds_Agedodia.ChangeCount <> 0 then
   begin
     Cds_Agedodia.ApplyUpdates(0);
   end;
//endi
if Cds_livrocaixa.ChangeCount <> 0 then
   begin
     Cds_livrocaixa.ApplyUpdates(0);
   end;
//endi
if Cds_totalcmdb.ChangeCount <> 0 then
   begin
     Cds_totalcmdb.ApplyUpdates(0);
   end;
//endi
if Cds_Apontamento.ChangeCount <> 0 then
   begin
     Cds_Apontamento.ApplyUpdates(0);
   end;
//endi
if Cds_PedCanc.ChangeCount <> 0 then
   begin
     Cds_PedCanc.ApplyUpdates(0);
   end;
//endi
if Cds_Ent_Prod.ChangeCount <> 0 then
   begin
     Cds_Ent_Prod.ApplyUpdates(0);
   end;
//endi
if Cds_dProdutos.ChangeCount <> 0 then
   begin
     Cds_dProdutos.ApplyUpdates(0);
   end;
//endi
if Cds_Usuarios.ChangeCount <> 0 then
   begin
     Cds_Usuarios.ApplyUpdates(0);
   end;
//endi
if Cds_Invsys.ChangeCount <> 0 then
   begin
     Cds_Invsys.ApplyUpdates(0);
   end;
//endi
if Cds_Invsysf.ChangeCount <> 0 then
   begin
     Cds_Invsysf.ApplyUpdates(0);
   end;
//endi
if Cds_Invsysfcon.ChangeCount <> 0 then
   begin
     Cds_Invsysfcon.ApplyUpdates(0);
   end;
//endi
if Cds_Invsysp.ChangeCount <> 0 then
   begin
     Cds_Invsysp.ApplyUpdates(0);
   end;
//endi
if Cds_Grupo.ChangeCount <> 0 then
   begin
     Cds_Grupo.ApplyUpdates(0);
   end;
//endi
if Cds_Temp.ChangeCount <> 0 then
   begin
     Cds_Temp.ApplyUpdates(0);
   end;
//endi
if Cds_SituRec.ChangeCount <> 0 then
   begin
     Cds_SituRec.ApplyUpdates(0);
   end;
//endi
if Cds_SituCadCLi.ChangeCount <> 0 then
   begin
     Cds_SituCadCli.ApplyUpdates(0);
   end;
//endi
if Cds_SituPagar.ChangeCount <> 0 then
   begin
     Cds_SituPagar.ApplyUpdates(0);
   end;
//endi
if Cds_Classep.ChangeCount <> 0 then
   begin
     Cds_Classep.ApplyUpdates(0);
   end;
//endi
if Cds_Classe.ChangeCount <> 0 then
   begin
     Cds_Classe.ApplyUpdates(0);
   end;
//endi
if Cds_Pagar.ChangeCount <> 0 then
   begin
     Cds_Pagar.ApplyUpdates(0);
   end;
//endi
if Cds_Marca.ChangeCount <> 0 then
   begin
     Cds_Marca.ApplyUpdates(0);
   end;
//endi

if Cds_matprima.ChangeCount <> 0 then
   begin
     Cds_matprima.ApplyUpdates(0);
   end;
//endi

if Cds_Tipo_embalagem.ChangeCount <> 0 then
   begin
     Cds_Tipo_embalagem.ApplyUpdates(0);
   end;
//endi

if Cds_comp_embalagem.ChangeCount <> 0 then
   begin
     Cds_comp_embalagem.ApplyUpdates(0);
   end;
//endi

if Cds_composicao_prod.ChangeCount <> 0 then
   begin
     cds_composicao_prod.ApplyUpdates(0);
   end;
//endi

if Cds_Representantes.ChangeCount <> 0 then
   begin
     Cds_Representantes.ApplyUpdates(0);
   end;
//endi
if Cds_Funcionarios.ChangeCount <> 0 then
   begin
     Cds_Funcionarios.ApplyUpdates(0);
   end;
//endi
if Cds_Unidade.ChangeCount <> 0 then
   begin
     Cds_Unidade.ApplyUpdates(0);
   end;
//endi
if Cds_logtable.ChangeCount <> 0 then
   begin
     Cds_logtable.ApplyUpdates(0);
   end;
//endi



end;

procedure TfrmDados.IniciaTransacao;
begin
  Sql_Dados.StartTransaction(TD);
end;

procedure TfrmDados.finalizaTransacao;
var
  total:real;
begin
Sql_Dados.Commit(TD);

if frmfatorprod <> nil then
   begin

     total := totaliza_formula_geral('');

     frmfatorprod.lbltotalfg.Caption := formatfloat('###,###,##0.00', total);

     total := totaliza_embalagem('where ctipo_emb = '+cds_tipo_embalagem.fieldbyname('codigo').asstring );

     frmfatorprod.lbltotalemb.Caption := formatfloat('###,###,##0.00', total);

     frmfatorprod.lblcustomatprima.Caption  := FormatFloat('###,###,##0.00',   StrToFloat( tirapontos(  frmfatorprod.lbltotalfg.Caption  )  ) *  cds_tipo_embalagem.fieldbyname('REFERENCIA').AsFloat / 100  );


   end;
end;


procedure TfrmDados.Cds_IndiceAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
finalizatransacao;
end;

procedure TfrmDados.Cds_IndiceNewRecord(DataSet: TDataSet);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt : String;
begin
  if tabela = 'vProdutos' then
     exit;
  //endi
  if tabela = 'vProdForn' then
     exit;
  //endi


  try
    SqlStMt := 'Select gen_id(Gen_'+tabela+'_ID,1) as Valor from RDB$DATABASE;';
    ResultSet := nil;
    Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
    if Assigned(ResultSet) then
       if tabela = 'Indice' then
          begin
            Cds_Indice.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Comissao' then
          begin
            Cds_Comissao.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Comissaor' then
          begin
            Cds_Comissaor.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Sangria' then
          begin
            Cds_Sangria.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Ingestao' then
          begin
            Cds_Ingestao.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'cmobra' then
          begin
            Cds_cmobra.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SituOs' then
          begin
            Cds_SituOs.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Hist' then
          begin
            Cds_Hist.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'EquipCli' then
          begin
            Cds_EquipCli.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'ImgEquipCli' then
          begin
            Cds_ImgEquipCli.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'NFE' then
          begin
            Cds_NFE.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'NF' then
          begin
            Cds_NF.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SituNFE' then
          begin
            Cds_SituNFE.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Modulo' then
          begin
            Cds_Modulo.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'NFP' then
          begin
            Cds_NFP.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'NFM' then
          begin
            Cds_NFM.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'DMOBRA' then
          begin
            Cds_dMobra.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Conf_NF' then
          begin
            Cds_Conf_NF.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'NatOp' then
          begin
            Cds_NatOp.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'NatOpNF' then
          begin
            Cds_NatOpNF.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'TipoCli' then
          begin
            Cds_TipoCli.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Transportador' then
          begin
            Cds_Transportadores.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'CF' then
          begin
            Cds_CF.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SITA' then
          begin
            Cds_SITA.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SITB' then
          begin
            Cds_SITB.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'IPI' then
          begin
            Cds_IPI.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'AliqImpFis' then
          begin
            Cds_AliqImpFis.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Estados' then
          begin
            Cds_Estados.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Munic' then
          begin
            Cds_Munic.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Pais' then
          begin
            Cds_Pais.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'ImpRecAnt' then
          begin
            Cds_ImpRecAnt.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'vEnt_Estq' then
          begin
            Cds_vEnt_Estq.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Tipo_Produto' then
          begin
            Cds_Tipo_Prod.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'vDvendas' then
          begin
            Cds_vDvendas.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Config' then
          begin
            Cds_Config.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Vendab' then
          begin
            Cds_Vendab.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'MovReg' then
          begin
            Cds_MovReg.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'sVenda' then
          begin
            Cds_sVenda.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'dVenda' then
          begin
            Cds_dVenda.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'tipo_pgto' then
          begin
            Cds_tipo_pgto.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'condpgto' then
          begin
            Cds_cond_pgto.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'conddetalhepgto' then
          begin
            Cds_conddetalhe_pgto.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Vencimentos' then
          begin
            Cds_Vencto.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Vencimentos_NF' then
          begin
            Cds_Vencto_NF.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Produtos' then
          begin
            Cds_Produtos.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       //if tabela = 'vProdutos' then
       //   begin
       //     Cds_vProdutos.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
       //   end;
       //endi
       if tabela = 'vVendas' then
          begin
            Cds_vVenda.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'RelPorGrupo' then
          begin
            Cds_RelPorGrupo.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Fornecedores' then
          begin
            Cds_Fornecedores.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'modbcst' then
          begin
            Cds_modbcst.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'pis' then
          begin
            Cds_pis.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'tipotab' then
          begin
            Cds_tipotab.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'mat_restaurar' then
          begin
            Cds_Mat_Restaurar.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'mat_rest_ID' then
          begin
            Cds_Mat_Rest_ID.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'matrep' then
          begin
            Cds_MatRep.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'cofins' then
          begin
            Cds_cofins.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'vii' then
          begin
            Cds_vii.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'procedimentos' then
          begin
            Cds_procedimentos.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'oimp' then
          begin
            Cds_oimp.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'ir_ii' then
          begin
            Cds_ir_ii.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'modbc' then
          begin
            Cds_modbc.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'tgicms' then
          begin
            Cds_tgicms.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Compras' then
          begin
            Cds_Compras.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Clientes' then
          begin
            Cds_Clientes.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'outinfcli' then
          begin
            Cds_outinfcli.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'tabdesc' then
          begin
            Cds_tabdesc.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'TipoTab_Porcentagem' then
          begin
            Cds_TipoTab_Porcentagem.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'TabPrProc' then
          begin
            Cds_TabPrProc.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'TabPrP' then
          begin
            Cds_TabPrP.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'TabPrS' then
          begin
            Cds_TabPrS.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'HistTab' then
          begin
            Cds_HistTab.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Agedodia' then
          begin
            Cds_Agedodia.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'livrocaixa' then
          begin
            iultcod  := ResultSet.fieldbyname('valor').asInteger;
            Cds_livrocaixa.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'totalcmdb' then
          begin
            Cds_totalcmdb.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Apontamento' then
          begin
            Cds_Apontamento.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'PedCanc' then
          begin
            Cds_PedCanc.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Ent_Prod' then
          begin
            Cds_Ent_Prod.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'dProdutos' then
          begin
            if frmpesqprod = nil then
               begin
                 Cds_dProdutos.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
               end
            else
               begin
                 icodprod := ResultSet.fieldbyname('valor').asInteger;
               end
            //endi
          end;
       //endi
       if tabela = 'Usuarios' then
          begin
            Cds_Usuarios.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Invsys' then
          begin
            Cds_Invsys.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Invsysf' then
          begin
            Cds_Invsysf.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Invsysfcon' then
          begin
            Cds_Invsysfcon.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Invsysp' then
          begin
            Cds_Invsysp.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Grupo' then
          begin
            Cds_Grupo.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Temp' then
          begin
            Cds_Temp.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SituRec' then
          begin
            Cds_SituRec.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SituCadCli' then
          begin
            Cds_SituCadCli.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'SituPagar' then
          begin
            Cds_SituPagar.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Classep' then
          begin
            Cds_Classep.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Classe' then
          begin
            Cds_Classe.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Pagar' then
          begin
            Cds_Pagar.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Marca' then
          begin
            Cds_Marca.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Matprima' then
          begin
            Cds_matprima.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Tipo_embalagem' then
          begin
            Cds_Tipo_embalagem.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi


       if tabela = 'Comp_embalagem' then
          begin
            Cds_comp_embalagem.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi

       if tabela = 'Composicao_prod' then
          begin
            Cds_composicao_prod.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Representantes' then
          begin
            Cds_Representantes.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Funcionarios' then
          begin
            Cds_Funcionarios.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi
       if tabela = 'Unidade' then
          begin
            Cds_Unidade.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi

       if tabela = 'logtable' then
          begin
            Cds_logtable.FieldByName('Codigo').AsInteger := ResultSet.fieldbyname('valor').asInteger;
          end;
       //endi

  finally
      ResultSet.Free;
  end;
end;

procedure TfrmDados.Cds_ProdutosAfterScroll(DataSet: TDataSet);
begin
  Cds_dProdutos.Active := false;
  ler_dprod;
  Cds_dProdutos.Active := true;

  //try
  //  if Cds_dProdutos.Active then
  //     Cds_dProdutos.Refresh;
    //endi
  //finally
  //end;
end;

procedure tfrmDados.ler_dprod;
begin
      with frmdados.Dbx_dProdutos do
        begin
          active := false;
          sql.Clear;
          if Cds_Produtos.RecordCount > 0 then
             begin
               sql.add('select * from dprodutos d inner join produtos p on p.codigo=d.cdescprod where cdescprod = '+Cds_Produtos.fieldbyname('codigo').asString);
             end
          else
             begin
               sql.add('select * from dprodutos d inner join produtos p on p.codigo=d.cdescprod where cdescprod = 0');
             end;
          //endi
          active := true;
        end;
      //endi
end;


procedure TfrmDados.Cds_dProdutosBeforePost(DataSet: TDataSet);
begin
Cds_dProdutos.Edit;
Cds_dProdutos.FieldByName('cdescprod').asInteger := Cds_produtos.Fieldbyname('codigo').asInteger;
Cds_dProdutos.FieldByName('codigo').AsInteger := frmdados.icodprod;
//Cds_dProdutos.Refresh;
Iniciatransacao;

end;

procedure TfrmDados.Cds_dProdutosBeforeEdit(DataSet: TDataSet);
begin
icodprod := Cds_dProdutos.fieldbyname('codigo').asInteger;

end;

procedure TfrmDados.Cds_InvsyspAfterScroll(DataSet: TDataSet);
begin
  sSqlAnt := frmdados.Dbx_invsys.SQL.Text;
  Cds_invsys.Active := false;

  with Dbx_invsys do
    begin
      active := false;
      sql.Clear;
      if Cds_invsysp.RecordCount > 0 then
         begin
           sql.add('select * from invsys where cinvsysp = '+Cds_invsysp.fieldbyname('codigo').asString);
         end
      else
         begin
           sql.add('select * from invsys where cinvsysp = 0');
         end;
      //endi
      active := true;
    end;
  //endi

  Cds_invsys.Active := true;

  //try
  //  if Cds_invsys.Active then
  //     Cds_invsys.Refresh;
    //endi
  //finally
  //end;
end;

procedure TfrmDados.Cds_UsuariosAfterScroll(DataSet: TDataSet);
begin

  sSqlAnt := frmdados.Dbx_invsysf.SQL.Text;
  Cds_invsysf.Active := false;

  with Dbx_invsysf do
    begin
      active := false;
      sql.Clear;
      if Cds_Usuarios.RecordCount > 0 then
         begin
           sql.add('select * from invsysf where cusu = '+Cds_Usuarios.fieldbyname('codigo').asString);
         end
      else
         begin
           sql.add('select * from invsysf where cusu = 0');
         end;
      //endi
      active := true;
    end;
  //endi

  Cds_invsysf.Active := true;

  //try
  //  if Cds_invsysf.Active then
  //     Cds_invsysf.Refresh;
    //endi
  //finally
  //end;
end;

procedure tfrmDados.ler_ent_prod;
var
  sDataI, sDataF:string;
begin


  with frmdados.Dbx_Ent_Prod do
    begin
      active := false;
      sql.Clear;
      if Cds_vProdutos.RecordCount > 0 then
         begin
           if frmpesqvprod <> nil then
              begin
                sDataI := datetostr(frmpesqvprod.dtpdataie.Date);
                sDataI := bar_is_point( sDataI  );
                sDataF := datetostr(frmpesqvprod.dtpdataFe.Date);
                sDataF := bar_is_point( sDataF  );
                sql.add('select * from Ent_Prod where  (cpro = '+Cds_vProdutos.fieldbyname('codigo').asString+') and  (Data_ent >= '+QuotedStr(sDataI)+') and (Data_ent <= '+QuotedStr(sDataF)+') and ehentrega = '+quotedstr('T')+'order by Data_ent desc');
              end
           else
              begin
                sql.add('select * from Ent_Prod where codigo = 0');
              end;
           //endi
         end
      else
         begin
           sql.add('select * from Ent_Prod where codigo = 0');
         end;
      //endi
      active := true;
    end;
  //endi
end;




procedure tfrmDados.ler_dVenda;
var
  sDataI, sDataF:string;
begin

  with frmdados.Dbx_dVenda do
    begin
      active := false;
      sql.Clear;
      if Cds_vProdutos.RecordCount > 0 then
         begin
           if frmpesqvprod <> nil then
              begin
                sDataI := datetostr(frmpesqvprod.dtpdatais.Date);
                sDataI := bar_is_point( sDataI  );
                sDataF := datetostr(frmpesqvprod.dtpdataFs.Date);
                sDataF := bar_is_point( sDataF  );
                sql.add('select * from dVenda d  where ( d.cpro = '+cds_vprodutos.fieldbyname('codigo').asString+') and (Data_Op >= '+QuotedStr(sDataI)+') and (Data_Op <= '+QuotedStr(sDataF)+') and (ehvenda = '+quotedstr('T')+')'+ 'order by Data_Op desc');
              end
           else
              begin
                sql.add('select * from dVenda d  where codigo = 0');
              end;
           //endi
         end
      else
         begin
           sql.add('select * from dVenda d  where codigo = 0');
         end;
      //endi
      active := true;
    end;
  //endi

end;



procedure tfrmDados.ler_Vendab;
var
  sDataI, sDataF:string;
begin

  with frmdados.Dbx_Vendab do
    begin
      active := false;
      sql.Clear;
      if Cds_vProdutos.RecordCount > 0 then
         begin
           if frmpesqvprod <> nil then
              begin
                sDataI := datetostr(frmpesqvprod.dtpdataisb.Date);
                sDataI := bar_is_point( sDataI  );
                sDataF := datetostr(frmpesqvprod.dtpdataFsb.Date);
                sDataF := bar_is_point( sDataF  );
                sql.add('select * from Vendab d  where ( d.cpro = '+cds_vprodutos.fieldbyname('codigo').asString+') and (Data_Op >= '+QuotedStr(sDataI)+') and (Data_Op <= '+QuotedStr(sDataF)+') and (ehvenda = '+quotedstr('T')+')'+ 'order by Data_Op desc');
              end
           else
              begin
                sql.add('select * from Vendab d  where codigo = 0');
              end;
           //endi
         end
      else
         begin
           sql.add('select * from Vendab d  where codigo = 0');
         end;
      //endi
      active := true;
    end;
  //endi



end;






procedure TfrmDados.Dst_dProdutosDataChange(Sender: TObject;
  Field: TField);
begin
  {
  if frmpesqprod <> nil then
     if frmpesqprod.pcldetalhe.ActivePageIndex = 0 then
        exit;
     //endi
  //endi
  ler_ent_prod;
  ler_dVenda;
  try
    if Cds_Ent_Prod.Active then
       Cds_Ent_Prod.Refresh;
    //endi
  finally
  end;
  try
    if Cds_dVenda.Active then
       Cds_dVenda.Refresh;
    //endi
  finally
  end;
  }

end;

procedure TfrmDados.Cds_Ent_ProdBeforePost(DataSet: TDataSet);
begin
if frmpesqvprod <> nil then
   begin
     frmdados.Cds_Ent_Prod.Edit;
     frmdados.Cds_Ent_Prod.FieldByName('CPRO').asInteger := frmdados.Cds_vProdutos.fieldbyname('codigo').asInteger;
   end;
//endi

Iniciatransacao;
end;

procedure TfrmDados.Cds_Ent_ProdAfterApplyUpdates(Sender: TObject;
  var OwnerData: OleVariant);
begin
finalizatransacao;
end;

procedure TfrmDados.Cds_dVendaBeforePost(DataSet: TDataSet);
begin
if frmpesqvprod <> nil then
   begin
     frmdados.Cds_dVenda.Edit;
     frmdados.Cds_dVenda.FieldByName('CPRO').asInteger := frmdados.Cds_vProdutos.fieldbyname('codigo').asInteger;
     frmdados.Cds_dVenda.FieldByName('NPRO').asString := frmdados.Cds_vProdutos.fieldbyname('descricao').asString;

   end;
//endi

Iniciatransacao;

end;

procedure tfrmdados.Permite_Inserir(DataSet: TDataSet);
begin
     if not bIndiceI then
        begin
        end;
     //endi
     if not bComissaoI then
        begin
        end;
     //endi
     if not bComissaorI then
        begin
        end;
     //endi
     if not bSangriaI then
        begin
        end;
     //endi
     if not bIngestaoI then
        begin
        end;
     //endi
     if not bcmobraI then
        begin
        end;
     //endi
     if not bSituOSI then
        begin
        end;
     //endi
     if not bHistI then
        begin
        end;
     //endi
     if not bEquipCliI then
        begin
        end;
     //endi
     if not bImgEquipCliI then
        begin
        end;
     //endi
     if not bNFEI then
        begin
        end;
     //endi
     if not bNFI then
        begin
        end;
     //endi
     if not bSituNFEI then
        begin
        end;
     //endi
     if not bModuloI then
        begin
        end;
     //endi
     if not bNFPI then
        begin
        end;
     //endi
     if not bNFMI then
        begin
        end;
     //endi
     if not bDmobraI then
        begin
        end;
     //endi
     if not bConf_NFI then
        begin
        end;
     //endi
     if not bNatOpI then
        begin
        end;
     //endi
     if not bNatOpNFI then
        begin
        end;
     //endi
     if not bTipoCliI then
        begin
        end;
     //endi
     if not bTransportadoresI then
        begin
        end;
     //endi
     if not bCFI then
        begin
        end;
     //endi
     if not bSITAI then
        begin
        end;
     //endi
     if not bSITBI then
        begin
        end;
     //endi
     if not bIPII then
        begin
        end;
     //endi
     if not bAliqImpFisI then
        begin
        end;
     //endi
     if not bEstadosI then
        begin
        end;
     //endi
     if not bMunicI then
        begin
        end;
     //endi
     if not bPaisI then
        begin
        end;
     //endi
     if not bImpRecAntI then
        begin
        end;
     //endi
     if not bvEnt_EstqI then
        begin
        end;
     //endi
     if not bTipo_ProdI then
        begin
        end;
     //endi
     if not bvDvendasI then
        begin
        end;
     //endi
     if not bConfigI then
        begin
        end;
     //endi
     if not bVendabI then
        begin
          cds_vendab.cancel;
        end;
     //endi
     if not bMovRegI then
        begin
        end;
     //endi
     if not bsVendaI then
        begin
        end;
     //endi
     if not bdVendaI then
        begin
        end;
     //endi
     if not btipo_pgtoI then
        begin
        end;
     //endi
     if not bcond_pgtoI then
        begin
        end;
     //endi
     if not bconddetalhe_pgtoI then
        begin
        end;
     //endi
     if not bVencimentosI then
        begin
        end;
     //endi
     if not bVencimentos_NFI then
        begin
        end;
     //endi
     if not bProdutosI then
        begin
        end;
     //endi
     if not bvProdutosI then
        begin
          cds_vProdutos.cancel;
        end;
     //endi
     if not bvVendasI then
        begin
        end;
     //endi
     if not bRelPorGrupoI then
        begin
        end;
     //endi
     if not bFornecedoresI then
        begin
        end;
     //endi
     if not bModbcstI then
        begin
        end;
     //endi
     if not bPisI then
        begin
        end;
     //endi
     if not bTipoTabI then
        begin
        end;
     //endi
     if not bMat_RestaurarI then
        begin
        end;
     //endi
     if not bMat_Rest_IDI then
        begin
        end;
     //endi
     if not bMatRepI then
        begin
        end;
     //endi
     if not bCofinsI then
        begin
        end;
     //endi
     if not bViiI then
        begin
        end;
     //endi
     if not bOimpI then
        begin
        end;
     //endi
     if not bIr_iiI then
        begin
        end;
     //endi
     if not bModbcI then
        begin
        end;
     //endi
     if not bTgicmsI then
        begin
        end;
     //endi
     if not bComprasI then
        begin
        end;
     //endi
     if not bClientesI then
        begin
          Cds_Clientes.Cancel;
        end;
     //endi
     if not bvProdFornI then
        begin
          Cds_vProdForn.Cancel;
        end;
     //endi
     if not boutinfcliI then
        begin
          Cds_outinfcli.Cancel;
        end;
     //endi
     if not btabdescI then
        begin
          //Cds_tabdesc.Cancel;
        end;
     //endi
     if not bTipoTab_PorcentagemI then
        begin
          Cds_TipoTab_Porcentagem.Cancel;
        end;
     //endi
     if not bTabPrProcI then
        begin
          Cds_TabPrProc.Cancel;
        end;
     //endi
     if not bTabPrPI then
        begin
          Cds_TabPrP.Cancel;
        end;
     //endi
     if not bTabPrSI then
        begin
          Cds_TabPrS.Cancel;
        end;
     //endi
     if not bHistTabI then
        begin
          Cds_HistTab.Cancel;
        end;
     //endi
     if not bAgendaI then
        begin
          Cds_Agedodia.Cancel;
        end;
     //endi
     if not blivrocaixaI then
        begin
        end;
     //endi
     if not btotalcmdbI then
        begin
          Cds_totalcmdb.Cancel;
        end;
     //endi
     if not bApontamentoI then
        begin
          Cds_Apontamento.Cancel;
        end;
     //endi
     if not bPedCancI then
        begin
          Cds_PedCanc.Cancel;
        end;
     //endi
     if not bEnt_ProdI then
        begin
        end;
     //endi
     if not bdProdutosI then
        begin
        end;
     //endi
     if not bUsuariosI then
        begin
          cds_usuarios.Cancel;
        end;
     //endi
     if not bInvsysI then
        begin
        end;
     //endi
     if not bInvsysfI then
        begin
        end;
     //endi
     if not bInvsysfconI then
        begin
        end;
     //endi
     if not bInvsyspI then
        begin
        end;
     //endi
     if not bGrupoI then
        begin
        end;
     //endi
     if not bTempI then
        begin
        end;
     //endi
     if not bSituRecI then
        begin
        end;
     //endi
     if not bSituCadCliI then
        begin
        end;
     //endi
     if not bSituPagarI then
        begin
        end;
     //endi
     if not bClassepI then
        begin
        end;
     //endi
     if not bClasseI then
        begin
        end;
     //endi
     if not bPagarI then
        begin
        end;
     //endi
     if not bMarcaI then
        begin
        end;
     //endi

     if not bmatprimaI then
        begin
        end;
     //endi

     if not bTipo_embalagemI then
        begin
        end;
     //endi
     if not bcomp_embalagemI then
        begin
        end;
     //endi
     if not bcomposicao_prodI then
        begin
        end;
     //endi
     //bTipo_embalagemI := false;
     //bcomp_embalagemI := false;
     //bcomposicao_prodI := false;
     if not bRepresentantesI then
        begin
        end;
     //endi
     if not bFuncionariosI then
        begin
        end;
     //endi
     if not bUnidadeI then
        begin
        end;
     //endi


end;

procedure tfrmdados.Permite_Alterar(DataSet: TDataSet);
begin
     if not bIndiceA then
        begin
        end;
     //endi
     if not bComissaoA then
        begin
        end;
     //endi
     if not bComissaorA then
        begin
        end;
     //endi
     if not bSangriaA then
        begin
        end;
     //endi
     if not bIngestaoA then
        begin
        end;
     //endi
     if not bcmobraA then
        begin
        end;
     //endi
     if not bSituOsA then
        begin
        end;
     //endi
     if not bHistA then
        begin
        end;
     //endi
     if not bEquipCliA then
        begin
        end;
     //endi
     if not bImgEquipCliA then
        begin
        end;
     //endi
     if not bNFEA then
        begin
        end;
     //endi
     if not bNFA then
        begin
        end;
     //endi
     if not bSituNFEA then
        begin
        end;
     //endi
     if not bModuloA then
        begin
        end;
     //endi
     if not bNFPA then
        begin
        end;
     //endi
     if not bNFMA then
        begin
        end;
     //endi
     if not bdmobraA then
        begin
        end;
     //endi
     if not bConf_NFA then
        begin
        end;
     //endi
     if not bNatOpA then
        begin
        end;
     //endi
     if not bNatOpNFA then
        begin
        end;
     //endi
     if not bTipoCliA then
        begin
        end;
     //endi
     if not bTransportadoresA then
        begin
        end;
     //endi
     if not bCFA then
        begin
        end;
     //endi
     if not bSITAA then
        begin
        end;
     //endi
     if not bSITBA then
        begin
        end;
     //endi
     if not bIPIA then
        begin
        end;
     //endi
     if not bAliqImpFisA then
        begin
        end;
     //endi
     if not bEstadosA then
        begin
        end;
     //endi
     if not bMunicA then
        begin
        end;
     //endi
     if not bPaisA then
        begin
        end;
     //endi
     if not bImpRecAntA then
        begin
        end;
     //endi
     if not bvEnt_EstqA then
        begin
        end;
     //endi
     if not bTipo_ProdA then
        begin
        end;
     //endi
     if not bvDvendasA then
        begin
        end;
     //endi
     if not bConfigA then
        begin
        end;
     //endi
     if not bVendabA then
        begin
        end;
     //endi
     if not bMovRegA then
        begin
        end;
     //endi
     if not bsVendaA then
        begin
        end;
     //endi
     if not bdVendaA then
        begin
        end;
     //endi
     if not btipo_pgtoA then
        begin
        end;
     //endi
     if not bcond_pgtoA then
        begin
        end;
     //endi
     if not bconddetalhe_pgtoA then
        begin
        end;
     //endi
     if not bVencimentosA then
        begin
        end;
     //endi
     if not bVencimentos_NFA then
        begin
        end;
     //endi
     if not bProdutosA then
        begin
        end;
     //endi
     if not bvProdutosA then
        begin
          cds_vProdutos.cancel;
        end;
     //endi
     if not bvVendasA then
        begin
        end;
     //endi
     if not bRelPorGrupoA then
        begin
        end;
     //endi
     if not bFornecedoresA then
        begin
        end;
     //endi
     if not bModbcstA then
        begin
        end;
     //endi
     if not bPisA then
        begin
        end;
     //endi
     if not bTipoTabA then
        begin
        end;
     //endi
     if not bMat_RestaurarA then
        begin
        end;
     //endi
     if not bMat_Rest_IDA then
        begin
        end;
     //endi
     if not bMatRepA then
        begin
        end;
     //endi
     if not bCofinsA then
        begin
        end;
     //endi
     if not bViiA then
        begin
        end;
     //endi
     if not bOimpA then
        begin
        end;
     //endi
     if not bIr_IIA then
        begin
        end;
     //endi
     if not bModbcA then
        begin
        end;
     //endi
     if not bTgicmsA then
        begin
        end;
     //endi
     if not bComprasA then
        begin
        end;
     //endi
     if not bClientesA then
        begin
          Cds_Clientes.Cancel;
        end;
     //endi
     if not bvProdFornA then
        begin
          Cds_vProdForn.Cancel;
        end;
     //endi
     if not boutinfcliA then
        begin
          Cds_outinfcli.Cancel;
        end;
     //endi
     if not btabdescA then
        begin
          Cds_tabdesc.Cancel;
        end;
     //endi
     if not bTipoTab_PorcentagemA then
        begin
          Cds_TipoTab_Porcentagem.Cancel;
        end;
     //endi
     if not bTabPrProcA then
        begin
          Cds_TabPrProc.Cancel;
        end;
     //endi
     if not bTabPrPA then
        begin
          Cds_TabPrP.Cancel;
        end;
     //endi
     if not bTabPrSA then
        begin
          Cds_TabPrS.Cancel;
        end;
     //endi
     if not bHistTabA then
        begin
          Cds_HistTab.Cancel;
        end;
     //endi
     if not bAgendaA then
        begin
          Cds_Agedodia.Cancel;
        end;
     //endi
     if not blivrocaixaA then
        begin
        end;
     //endi
     if not btotalcmdbA then
        begin
          Cds_totalcmdb.Cancel;
        end;
     //endi
     if not bApontamentoA then
        begin
          Cds_Apontamento.Cancel;
        end;
     //endi
     if not bPedCancA then
        begin
          Cds_PedCanc.Cancel;
        end;
     //endi
     if not bEnt_ProdA then
        begin
        end;
     //endi
     if not bdProdutosA then
        begin
        end;
     //endi
     if not bUsuariosA then
        begin
          cds_usuarios.Cancel;
        end;
     //endi
     if not bInvsysA then
        begin
        end;
     //endi
     if not bInvsysfA then
        begin
        end;
     //endi
     if not bInvsysfconA then
        begin
        end;
     //endi
     if not bInvsyspA then
        begin
        end;
     //endi
     if not bGrupoA then
        begin
        end;
     //endi
     if not bTempA then
        begin
        end;
     //endi
     if not bSituRecA then
        begin
        end;
     //endi
     if not bSituCadCliA then
        begin
        end;
     //endi
     if not bSituPagarA then
        begin
        end;
     //endi
     if not bClassepA then
        begin
        end;
     //endi
     if not bClasseA then
        begin
        end;
     //endi
     if not bPagarA then
        begin
        end;
     //endi
     if not bMarcaA then
        begin
        end;
     //endi

     if not bmatprimaA then
        begin
        end;
     //endi


     if not bTipo_embalagemA then
        begin
        end;
     //endi
     if not bcomp_embalagemA then
        begin
        end;
     //endi
     if not bcomposicao_prodA then
        begin
        end;
     //endi
     if not bRepresentantesA then
        begin
        end;
     //endi
     if not bFuncionariosA then
        begin
        end;
     //endi
     if not bUnidadeA then
        begin
        end;
     //endi

end;


procedure tfrmdados.Permite_Excluir(DataSet: TDataSet);
begin
     if not bpedidoE then
        begin
          cds_svenda.Cancel;
        end;
     //endi



     if not bIndiceE then
        begin
        end;
     //endi
     if not bComissaoE then
        begin
        end;
     //endi
     if not bComissaorE then
        begin
        end;
     //endi
     if not bSangriaE then
        begin
        end;
     //endi
     if not bIngestaoE then
        begin
        end;
     //endi
     if not bcmobraE then
        begin
        end;
     //endi
     if not bsituOsE then
        begin
        end;
     //endi
     if not bHistE then
        begin
        end;
     //endi
     if not bEquipCliE then
        begin
        end;
     //endi
     if not bImgEquipCliE then
        begin
        end;
     //endi
     if not bNFEE then
        begin
        end;
     //endi
     if not bNFE then
        begin
        end;
     //endi
     if not bSituNFEE then
        begin
        end;
     //endi
     if not bModuloE then
        begin
        end;
     //endi
     if not bNFPE then
        begin
        end;
     //endi
     if not bNFME then
        begin
        end;
     //endi
     if not bdmobraE then
        begin
        end;
     //endi
     if not bConf_NFE then
        begin
        end;
     //endi
     if not bNatOpE then
        begin
        end;
     //endi
     if not bNatOpNFE then
        begin
        end;
     //endi
     if not bTipoCliE then
        begin
        end;
     //endi
     if not bTransportadoresE then
        begin
        end;
     //endi
     if not bCFE then
        begin
        end;
     //endi
     if not bSITAE then
        begin
        end;
     //endi
     if not bSITBE then
        begin
        end;
     //endi
     if not bIPIE then
        begin
        end;
     //endi
     if not bAliqImpFisE then
        begin
        end;
     //endi
     if not bEstadosE then
        begin
        end;
     //endi
     if not bMunicE then
        begin
        end;
     //endi
     if not bPaisE then
        begin
        end;
     //endi
     if not bImpRecAntE then
        begin
        end;
     //endi
     if not bvEnt_EstqE then
        begin
        end;
     //endi
     if not bTipo_ProdE then
        begin
        end;
     //endi
     if not bvDvendasE then
        begin
        end;
     //endi
     if not bConfigE then
        begin
        end;
     //endi
     if not bVendabE then
        begin
        end;
     //endi
     if not bMovRegE then
        begin
        end;
     //endi
     if not bsVendaE then
        begin


        end;
     //endi
     if not bdVendaE then
        begin
        end;
     //endi
     if not btipo_pgtoE then
        begin
        end;
     //endi
     if not bcond_pgtoE then
        begin
        end;
     //endi
     if not bconddetalhe_pgtoE then
        begin
        end;
     //endi
     if not bVencimentosE then
        begin
        end;
     //endi
     if not bVencimentos_NFE then
        begin
        end;
     //endi
     if not bProdutosE then
        begin
        end;
     //endi
     if not bvProdutosE then
        begin
          cds_vProdutos.cancel;
        end;
     //endi
     if not bvVendasE then
        begin
        end;
     //endi
     if not bRelPorGrupoE then
        begin
        end;
     //endi
     if not bFornecedoresE then
        begin
        end;
     //endi
     if not bModbcstE then
        begin
        end;
     //endi
     if not bPisE then
        begin
        end;
     //endi
     if not bTipoTabE then
        begin
        end;
     //endi
     if not bMat_RestaurarE then
        begin
        end;
     //endi
     if not bMat_Rest_IDE then
        begin
        end;
     //endi
     if not bMatRepE then
        begin
        end;
     //endi
     if not bCofinsE then
        begin
        end;
     //endi
     if not bViiE then
        begin
        end;
     //endi
     if not bOimpE then
        begin
        end;
     //endi
     if not bIr_iiE then
        begin
        end;
     //endi
     if not bModbcE then
        begin
        end;
     //endi
     if not bTgicmsE then
        begin
        end;
     //endi
     if not bComprasE then
        begin
        end;
     //endi
     if not bClientesE then
        begin
          Cds_Clientes.Cancel;
        end;
     //endi
     if not bvProdFornE then
        begin
          Cds_vProdForn.Cancel;
        end;
     //endi
     if not boutinfcliE then
        begin
          Cds_outinfcli.Cancel;
        end;
     //endi
     if not btabdescE then
        begin
          Cds_tabdesc.Cancel;
        end;
     //endi
     if not bTipoTab_PorcentagemE then
        begin
          Cds_TipoTab_Porcentagem.Cancel;
        end;
     //endi
     if not bTabPrProcE then
        begin
          Cds_TabPrProc.Cancel;
        end;
     //endi
     if not bTabPrPE then
        begin
          Cds_TabPrP.Cancel;
        end;
     //endi
     if not bTabPrSE then
        begin
          Cds_TabPrS.Cancel;
        end;
     //endi
     if not bHistTabE then
        begin
          Cds_HistTab.Cancel;
        end;
     //endi
     if not bAgendaE then
        begin
          Cds_Agedodia.Cancel;
        end;
     //endi
     if not blivrocaixaE then
        begin
        end;
     //endi
     if not btotalcmdbE then
        begin
          Cds_totalcmdb.Cancel;
        end;
     //endi
     if not bApontamentoE then
        begin
          Cds_Apontamento.Cancel;
        end;
     //endi
     if not bPedCancE then
        begin
          Cds_PedCanc.Cancel;
        end;
     //endi
     if not bEnt_ProdE then
        begin
        end;
     //endi
     if not bdProdutosE then
        begin
        end;
     //endi
     if not bInvsysE then
        begin
        end;
     //endi
     if not bInvsysfE then
        begin
        end;
     //endi
     if not bInvsysfconE then
        begin
        end;
     //endi
     if not bInvsyspE then
        begin
        end;
     //endi
     if not bGrupoE then
        begin
        end;
     //endi
     if not bTempE then
        begin
        end;
     //endi
     if not bSituRecE then
        begin
        end;
     //endi
     if not bSituCadCliE then
        begin
        end;
     //endi
     if not bSituPagarE then
        begin
        end;
     //endi
     if not bClassepE then
        begin
        end;
     //endi
     if not bClasseE then
        begin
        end;
     //endi
     if not bPagarE then
        begin
        end;
     //endi
     if not bMarcaE then
        begin
        end;
     //endi

     if not bmatprimaE then
        begin
        end;
     //endi


     if not bTipo_embalagemE then
        begin
        end;
     //endi
     if not bcomp_embalagemE then
        begin
        end;
     //endi
     if not bcomposicao_prodE then
        begin
        end;
     //endi
     if not bRepresentantesE then
        begin
        end;
     //endi
     if not bFuncionariosE then
        begin
        end;
     //endi
     if not bUnidadeE then
        begin
        end;
     //endi



end;

procedure TfrmDados.Cds_IndiceAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);

end;

procedure TfrmDados.Cds_IndiceAfterEdit(DataSet: TDataSet);
begin
Permite_Alterar(DataSet);
end;

procedure TfrmDados.Cds_ClassepAfterScroll(DataSet: TDataSet);
begin

 {

  with frmdados.Dbx_Classep do
    begin
      active := false;
      sql.Clear;
      if Cds_Classep.RecordCount > 0 then
         begin
           sql.add('select * from Classe where cclap = '+Cds_Classep.fieldbyname('codigo').asString);
         end
      else
         begin
           sql.add('select * from Classe where cclap = 0');
         end;
      //endi
      active := true;
    end;
  //endi
  try
    if Cds_Classe.Active then
       Cds_Classe.Refresh;
    //endi
  except
  end;
  }
end;

procedure TfrmDados.Cds_VenctoAfterInsert(DataSet: TDataSet);
begin
if not cds_vencto.Active then
  exit;
//endi

Permite_Inserir(DataSet);
if frmfrente <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto.RecordCount >= strtoint(frmfrente.edinparc.text)then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi


if frmfrenteecf <> nil then
  begin
    if (frmfrenteecf.pnlinfop.Visible) and (cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger) then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if (frmfrenteecf.pnlinfop.Visible) and (cds_Vencto.RecordCount >= strtoint(frmfrenteecf.edinparc.text))then
       begin
         
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi




if frmfecped <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto.RecordCount >= strtoint(frmfecped.ediparc.text)then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmfecOs <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto.RecordCount >= strtoint(frmfecos.ediparc.text)then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmimpnf <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmfrenteecf <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    //if cds_Vencto.RecordCount >= strtoint(frmfrenteecf.edinparc.text)then
    //   begin
    //     Cds_Vencto.cancel;
    //     bMaxParc := true;
    //   end
    //else
    //   begin
    //     bMaxParc := false;
    //   end;
    //endi
  end;
//endi

if frmfecOst <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto.RecordCount >= strtoint(frmfecost.ediparc.text)then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmfectra <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto.RecordCount >= strtoint(frmfectra.ediparc.text)then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi


if frmtra <> nil then
  begin
    if cds_Vencto.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto.RecordCount >= strtoint(frmtra.ediparc.text)then
       begin
         Cds_Vencto.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi



end;

procedure TfrmDados.Cds_ClientesAfterScroll(DataSet: TDataSet);
begin

if frmpesqnf <> nil then
   begin
     if (not frmpesqnf.pnllista.Visible) and ((frmpesqnf.cbxncli.Focused) or (frmpesqnf.cbxnfant.Focused)) then
        begin
          cds_nf.Edit;
          cds_nf.FieldByName('ctab').asInteger := cds_clientes.fieldbyname('ctipotab').asInteger;
        end;
     //endi
   end;
//endi

if frmpesqvd <> nil then
   begin
     if (not frmpesqvd.pnllista.Visible) and ((frmpesqvd.cbxncli.Focused) or (frmpesqvd.cbxnfant.Focused)) then
        begin
          cds_svenda.Edit;
          cds_svenda.FieldByName('ctab').asInteger := cds_clientes.fieldbyname('ctipotab').asInteger;
        end;
     //endi
   end;
//endi


if frmpesqOrcam <> nil then
   begin
     if (not frmpesqOrcam.pnllista.Visible) and ((frmpesqOrcam.cbxncli.Focused) or (frmpesqOrcam.cbxnfant.Focused)) then
        begin
          cds_svenda.Edit;
          cds_svenda.FieldByName('ctab').asInteger := cds_clientes.fieldbyname('ctipotab').asInteger;
        end;
     //endi
   end;
//endi


if frmpesqclic <> nil then
   begin


     with frmpesqclic do
       begin
         if cds_ClientesCPF.text <> '' then
            if length(cds_ClientesCPF.text) > 14 then
               cds_ClientesCPF.EditMask := '00.000.000/0000-00;0;_'
            else
               cds_ClientesCPF.EditMask := '000.000.000-00;0;_'
            //endi
         else
            cds_ClientesCPF.EditMask := '';
         //endi
       end;
     //endth




   end;
//endi

if frmtra <> nil then
   begin
     frmtra.mostrararq_ext_cli;


   end;
//endi



end;

procedure TfrmDados.Cds_vProdutosAfterScroll(DataSet: TDataSet);
begin

if frmpesqprodd <> nil then
   begin
     cds_TabPrP.Active := false;
     //cds_TabPrPcpro.DefaultExpression := inttostr(cds_vprodutos.fieldbyname('codigo').asInteger);
     dbx_TabPrP.Active := false;
     dbx_TabPrP.SQL.Clear;
     dbx_TabPrP.SQL.Add('Select * from TabPrP where cpro = '+ inttostr(cds_vprodutos.fieldbyname('codigo').asInteger) );
     dbx_TabPrP.Active := true;
     cds_TabPrP.Active := true;
   end;
//endi




{
  if frmpesqvprod <> nil then
     begin
       if tabela = 'Ent_Prod' then
          begin
            Cds_Ent_Prod.Active := false;
            ler_ent_prod;
            Cds_Ent_Prod.Active := true;
          end;
       //endi
       if tabela = 'dVenda' then
          begin
            //showmessage('passei');
            Cds_dVenda.Active := false;
            ler_dVenda;
            Cds_dVenda.Active := true;
          end;
       //endi
     end;
  //endi
}
end;

procedure TfrmDados.Dts_VendabDataChange(Sender: TObject; Field: TField);
begin
if frmfrente <> nil then
   if frmfrente.bApresEstq then
      begin
        dbx_Exec.Active := false;
        dbx_Exec.SQL.Clear;
        dbx_Exec.SQL.Add('Select * from vProdutos Where codigo = '+cds_vendab.fieldbyname('cpro').asString);
        dbx_Exec.Active := true;

        frmfrente.lbltitestq.Visible := true;
        frmfrente.lbltotestq.Visible := true;
        frmfrente.lbltotestq.caption := formatfloat('###,###,##0.00',dbx_Exec.fieldbyname('Qua').asfloat);

        dbx_exec.Active := false;

      end;
   //endi
//endi

if frmfrenteecf <> nil then
   if frmfrenteecf.bApresEstq then
      begin
        dbx_Exec.Active := false;
        dbx_Exec.SQL.Clear;
        dbx_Exec.SQL.Add('Select * from vProdutos Where codigo = '+cds_vendab.fieldbyname('cpro').asString);
        dbx_Exec.Active := true;

        frmfrenteecf.lbltitestq.Visible := true;
        frmfrenteecf.lbltotestq.Visible := true;
        frmfrenteecf.lbltotestq.caption := formatfloat('###,###,##0.00',dbx_Exec.fieldbyname('Qua').asfloat);

        dbx_exec.Active := false;

      end;
   //endi
//endi



end;

procedure TfrmDados.Cds_dVendaAfterPost(DataSet: TDataSet);
begin
AtualizaDados;
end;


procedure TfrmDados.totalizafrmpesqvdprod;
var x:integer;
    ftotalv, ftotalc:real;
begin


  if frmpesqvd <> nil then
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc  from dvenda where (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
       dbx_exec.Active := true;
       frmpesqvd.lbltotal.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       frmpesqvd.lbltotalc.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalc').asfloat);
       dbx_exec.Active := false;

       tabela := 'sVenda';
       cds_svenda.Edit;
       cds_svenda.FieldByName('total').AsFloat :=  strtofloat(tirapontos(frmpesqvd.lbltotal.Caption));
       cds_svenda.Post;
       exit;
     end;
  //endi

  if frmpesqnf <> nil then
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc  from nfp where (codnf = '+cds_nf.fieldbyname('codigo').asString+')');
       dbx_exec.Active := true;
       frmpesqnf.lbltotal.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;
       exit;
     end;
  //endi

  if frmpesqos <> nil then
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc  from dvenda where (codsvenda = '+  inttostr( cds_sVenda.fieldbyname('codigo').asInteger  ) +')');
       dbx_exec.Active := true;
       frmpesqos.lbltotal.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       frmpesqos.lbltotalc.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalc').asfloat);
       dbx_exec.Active := false;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger )+')');
       dbx_exec.Active := true;
       frmpesqos.lbltotalMG.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +') and ( cmod = '+ inttostr( cds_temp.fieldbyname('cod4').asInteger ) +')');
       dbx_exec.Active := true;
       frmpesqos.lbltotalM.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;

       tabela := 'sVenda';
       cds_svenda.Edit;
       cds_svenda.FieldByName('total').AsFloat :=  strtofloat(tirapontos(frmpesqOs.lbltotal.Caption))+
                                                   strtofloat(tirapontos(frmpesqOs.lbltotalM.Caption))+
                                                   strtofloat(tirapontos(frmpesqOs.lbltotalMG.Caption));
       cds_svenda.Post;



       exit;
     end;
  //endi


  if frmpesqost <> nil then
     begin

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger )+')');
       dbx_exec.Active := true;
       frmpesqost.lbltotalMG.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +') and ( cmod = '+ inttostr( cds_temp.fieldbyname('cod4').asInteger ) +')');
       dbx_exec.Active := true;
       frmpesqost.lbltotalM.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;


        exit;
     end;
  //endi

  if frmtra <> nil then
     begin

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger )+') and ( selec = '+ quotedstr('T') + ')');
       dbx_exec.Active := true;
       frmtra.lbltotalt.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +') and ( selec = '+ quotedstr('F') + ')');
       dbx_exec.Active := true;
       frmtra.lbltotorc.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv from dMobra where (codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +')');
       dbx_exec.Active := true;
       frmtra.lbltotg.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       dbx_exec.Active := false;

       exit;

     end;
  //endi

  if frmpesqOrcam <> nil then
     begin
       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc  from dvenda where (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
       dbx_exec.Active := true;
       frmpesqOrcam.lbltotal.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalv').asfloat);
       frmpesqOrcam.lbltotalc.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('totalc').asfloat);
       dbx_exec.Active := false;

       tabela := 'sVenda';
       cds_svenda.Edit;
       cds_svenda.FieldByName('total').AsFloat :=  strtofloat(tirapontos(frmpesqOrcam.lbltotal.Caption));
       cds_svenda.Post;
       exit;
     end;
  //endi



end;



procedure TfrmDados.Cds_ClientesAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_ProdutosAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_IndiceAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_sVendaAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_dProdutosAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_UsuariosAfterPost(DataSet: TDataSet);
begin
novonivel := 0;
Atualizadados;
end;

procedure TfrmDados.Cds_InvsysAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_invsysfAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_InvsyspAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_GrupoAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_MarcaAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_RepresentantesAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_FuncionariosAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_UnidadeAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_invsysfconAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_FornecedoresAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_ComprasAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_Ent_ProdAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_ClasseAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_ClassepAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_PagarAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_SituRecAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_SituPagarAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_TempAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_vProdutosAfterPost(DataSet: TDataSet);
begin
Atualizadados;
cds_vprodutos.Refresh;
end;

procedure TfrmDados.Cds_vVendaAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_MovRegAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_VendabAfterPost(DataSet: TDataSet);
begin
Atualizadados;

if frmcomanda <> nil then
   begin
     frmcomanda.totais;
   end;
//endi

if frmcomandap <> nil then
   begin
     frmcomandap.totais;
   end;
//endi

end;

procedure TfrmDados.Cds_ConfigAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_vDvendasAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_Tipo_ProdAfterPost(DataSet: TDataSet);
begin
Atualizadados;
end;

procedure TfrmDados.Cds_vProdutosAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);
end;

procedure TfrmDados.Cds_vProdutosBeforePost(DataSet: TDataSet);
begin
if frmpesqvprod <> nil then
   begin
     if Cds_vprodutos.State in [dsinsert, dsedit] then
        begin
          if frmpesqvprod.ckbactdesc.Checked then
             begin
               cds_vprodutos.FieldByName('actdesc').asString := 'T';
             end
          else
             begin
               cds_vprodutos.FieldByName('actdesc').asString := 'F';
             end;
          //endi
          if frmpesqvprod.ckbindtot.Checked then
             begin
               cds_vprodutos.FieldByName('indtot').asString := 'T';
             end
          else
             begin
               cds_vprodutos.FieldByName('indtot').asString := 'F';
             end;
          //endi
        end;
     //endi

   end;
//endi
Iniciatransacao;
end;

procedure TfrmDados.Cds_IndiceAfterCancel(DataSet: TDataSet);
begin
finalizatransacao;
end;

procedure TfrmDados.Cds_sVendaBeforePost(DataSet: TDataSet);
begin
if frmpesqos <> nil then
   begin
     cds_svenda.fieldbyname('tipoop').asInteger := frmpesqos.cbxtipo.ItemIndex;
     cds_svenda.fieldbyname('tipo_cobertura').asInteger := frmpesqos.cbxtipo_cob.ItemIndex;

     cds_svenda.fieldbyname('id1').asString := frmpesqos.ediid1.Text;
     cds_svenda.fieldbyname('id2').asString := frmpesqos.ediid2.Text;
     cds_svenda.fieldbyname('desc1').asString := frmpesqos.cbxdesc1.Text;
     cds_svenda.fieldbyname('desc2').asString := frmpesqos.cbxdesc2.Text;
     cds_svenda.fieldbyname('desc3').asString := frmpesqos.cbxdesc3.Text;
     cds_svenda.fieldbyname('desc4').asString := frmpesqos.cbxdesc4.Text;
     cds_svenda.fieldbyname('desc5').asString := frmpesqos.cbxdesc5.Text;
     cds_svenda.fieldbyname('desc6').asString := frmpesqos.cbxdesc6.Text;
     cds_svenda.fieldbyname('desc7').asString := frmpesqos.cbxdesc7.Text;
     cds_svenda.fieldbyname('desc8').asString := frmpesqos.cbxdesc8.Text;
     cds_svenda.fieldbyname('desc9').asString := frmpesqos.cbxdesc9.Text;
     cds_svenda.fieldbyname('desc10').asString := frmpesqos.cbxdesc10.Text;
   end;
//endi

if frmpesqost <> nil then
   begin
     cds_svenda.fieldbyname('id1').asString := frmpesqost.ediid1.Text;
     cds_svenda.fieldbyname('id2').asString := frmpesqost.ediid2.Text;
     cds_svenda.fieldbyname('desc1').asString := frmpesqost.cbxdesc1.Text;
     cds_svenda.fieldbyname('desc2').asString := frmpesqost.cbxdesc2.Text;
     cds_svenda.fieldbyname('desc3').asString := frmpesqost.cbxdesc3.Text;
     cds_svenda.fieldbyname('desc4').asString := frmpesqost.cbxdesc4.Text;
     cds_svenda.fieldbyname('desc5').asString := frmpesqost.cbxdesc5.Text;
     cds_svenda.fieldbyname('desc6').asString := frmpesqost.cbxdesc6.Text;
     cds_svenda.fieldbyname('desc7').asString := frmpesqost.cbxdesc7.Text;
     cds_svenda.fieldbyname('desc8').asString := frmpesqost.cbxdesc8.Text;
     cds_svenda.fieldbyname('desc9').asString := frmpesqost.cbxdesc9.Text;
     cds_svenda.fieldbyname('desc10').asString := frmpesqost.cbxdesc10.Text;
   end;
//endi




Iniciatransacao;

end;

procedure TfrmDados.Cds_dVendaAfterDelete(DataSet: TDataSet);
begin
AtualizaDados;
if frmpesqvd <> nil then
   begin
     totalizafrmpesqvdprod;
   end;
//endi
if frmpesqOrcam <> nil then
   begin
     totalizafrmpesqvdprod;
   end;
//endi

end;

procedure TfrmDados.Cds_IndiceBeforePost(DataSet: TDataSet);
begin
if frmindice <> nil then
   begin
     if Cds_indice.State in [dsinsert, dsedit] then
        begin
          if frmindice.ckbecflanca.Checked then
             begin
               cds_indice.FieldByName('ecflanca').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('ecflanca').asString := 'F';
             end;
          //endif
          if frmindice.ckbimpcabcli.Checked then
             begin
               cds_indice.FieldByName('impcabcli').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('impcabcli').asString := 'F';
             end;
          //endif
          if frmindice.ckbimpvlrreccli.Checked then
             begin
               cds_indice.FieldByName('impvlrreccli').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('impvlrreccli').asString := 'F';
             end;
          //endif
          if frmindice.ckbgravaqua.Checked then
             begin
               cds_indice.FieldByName('gravaqua').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('gravaqua').asString := 'F';
             end;
          //endif
          if frmindice.ckbtdesc1.Checked then
             begin
               cds_indice.FieldByName('tdesc1').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc1').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc2.Checked then
             begin
               cds_indice.FieldByName('tdesc2').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc2').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc3.Checked then
             begin
               cds_indice.FieldByName('tdesc3').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc3').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc4.Checked then
             begin
               cds_indice.FieldByName('tdesc4').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc4').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc5.Checked then
             begin
               cds_indice.FieldByName('tdesc5').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc5').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc6.Checked then
             begin
               cds_indice.FieldByName('tdesc6').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc6').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc7.Checked then
             begin
               cds_indice.FieldByName('tdesc7').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc7').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc8.Checked then
             begin
               cds_indice.FieldByName('tdesc8').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc8').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc9.Checked then
             begin
               cds_indice.FieldByName('tdesc9').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc9').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc10.Checked then
             begin
               cds_indice.FieldByName('tdesc10').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc10').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc11.Checked then
             begin
               cds_indice.FieldByName('tdesc11').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc11').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc12.Checked then
             begin
               cds_indice.FieldByName('tdesc12').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc12').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc13.Checked then
             begin
               cds_indice.FieldByName('tdesc13').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc13').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc14.Checked then
             begin
               cds_indice.FieldByName('tdesc14').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc14').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc15.Checked then
             begin
               cds_indice.FieldByName('tdesc15').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc15').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc16.Checked then
             begin
               cds_indice.FieldByName('tdesc16').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc16').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc17.Checked then
             begin
               cds_indice.FieldByName('tdesc17').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc17').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc18.Checked then
             begin
               cds_indice.FieldByName('tdesc18').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc18').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc19.Checked then
             begin
               cds_indice.FieldByName('tdesc19').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc19').asString := 'F';
             end;
          //endi
          if frmindice.ckbtdesc20.Checked then
             begin
               cds_indice.FieldByName('tdesc20').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('tdesc20').asString := 'F';
             end;
          //endi
          if frmindice.ckbnomecliobr.Checked then
             begin
               cds_indice.FieldByName('nomecliobr').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('nomecliobr').asString := 'F';
             end;
          //endi
          if frmindice.ckbcpfcliobr.Checked then
             begin
               cds_indice.FieldByName('cpfcliobr').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('cpfcliobr').asString := 'F';
             end;
          //endi
          if frmindice.ckbrgcliobr.Checked then
             begin
               cds_indice.FieldByName('rgcliobr').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('rgcliobr').asString := 'F';
             end;
          //endi
          if frmindice.ckbid1cliobr.Checked then
             begin
               cds_indice.FieldByName('id1cliobr').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('id1cliobr').asString := 'F';
             end;
          //endi
          if frmindice.ckbfonecliobr.Checked then
             begin
               cds_indice.FieldByName('fonecliobr').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('fonecliobr').asString := 'F';
             end;
          //endi
          if frmindice.ckbmostraapl.Checked then
             begin
               cds_indice.FieldByName('mostraapl').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('mostraapl').asString := 'F';
             end;
          //endi
          if frmindice.ckbmostracodaux.Checked then
             begin
               cds_indice.FieldByName('mostracodaux').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('mostracodaux').asString := 'F';
             end;
          //endi
          if frmindice.ckbmostramarca.Checked then
             begin
               cds_indice.FieldByName('mostramarca').asString := 'T';
             end
          else
             begin
               cds_indice.FieldByName('mostramarca').asString := 'F';
             end;
          //endi
          if frmindice.CKBIMPDESTDA1.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA1').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA1').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA2.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA2').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA2').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA3.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA3').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA3').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA4.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA4').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA4').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA5.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA5').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA5').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA6.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA6').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA6').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA7.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA7').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA7').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPDESTDA8.Checked then
             begin
               Cds_indice.FieldByName('IMPDESTDA8').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPDESTDA8').AsString := '0'
             end;
          //endif
          if frmindice.CKBVENDVENDA.Checked then
             begin
               Cds_indice.FieldByName('VENDVENDA').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('VENDVENDA').AsString := '0'
             end;
          //endif


          if not frmindice.ckbop.Checked then
             begin
               Cds_indice.FieldByName('ordem_producao').AsString := 'F'
             end
          else
             begin
               Cds_indice.FieldByName('ordem_producao').AsString := 'T'
             end;
          //endif



          if frmindice.CKBOBRCLIPARC.Checked then
             begin
               Cds_indice.FieldByName('OBRCLIPARC').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('OBRCLIPARC').AsString := '0'
             end;
          //endif
          if frmindice.CKBABRIRPRODFV.Checked then
             begin
               Cds_indice.FieldByName('ABRIRPRODFV').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('ABRIRPRODFV').AsString := '0'
             end;
          //endif
          if frmindice.CKBABRRESUPRODV.Checked then
             begin
               Cds_indice.FieldByName('ABRRESUPRODV').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('ABRRESUPRODV').AsString := '0'
             end;
          //endif
          if frmindice.CKBBAIXAQDOORCPED.Checked then
             begin
               Cds_indice.FieldByName('BAIXAQDOORCPED').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('BAIXAQDOORCPED').AsString := '0'
             end;
          //endif
          if frmindice.CKBTCLFINALIZA.Checked then
             begin
               Cds_indice.FieldByName('TCLFINALIZA').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('TCLFINALIZA').AsString := '0'
             end;
          //endif


          if frmindice.CKBMOSTRAINFOFINADD.Checked then
             begin
               Cds_indice.FieldByName('MOSTRAINFOFINADD').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('MOSTRAINFOFINADD').AsString := '0'
             end;
          //endif


          if frmindice.CKBCOMPACTAR_LINHAS_NF.Checked then
             begin
               Cds_indice.FieldByName('COMPACTAR_LINHAS_NF').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('COMPACTAR_LINHAS_NF').AsString := '0'
             end;
          //endif
          if frmindice.CKBIMPVLRCB.Checked then
             begin
               Cds_indice.FieldByName('IMPVLRCB').AsString := '1'
             end
          else
             begin
               Cds_indice.FieldByName('IMPVLRCB').AsString := '0'
             end;
          //endif
          if frmindice.ckbmostraendent.Checked then
             begin
               Cds_indice.FieldByName('mostraendent').AsString := 'T'
             end
          else
             begin
               Cds_indice.FieldByName('mostraendent').AsString := 'F'
             end;
          //endif
          if frmindice.ckbmostraendcom.Checked then
             begin
               Cds_indice.FieldByName('mostraendcom').AsString := 'T'
             end
          else
             begin
               Cds_indice.FieldByName('mostraendcom').AsString := 'F'
             end;
          //endif
          if frmindice.ckbmostraendcob.Checked then
             begin
               Cds_indice.FieldByName('mostraendcob').AsString := 'T'
             end
          else
             begin
               Cds_indice.FieldByName('mostraendcob').AsString := 'F'
             end;
          //endif
          if frmindice.ckbmostrafotocli.Checked then
             begin
               Cds_indice.FieldByName('mostrafotocli').AsString := 'T'
             end
          else
             begin
               Cds_indice.FieldByName('mostrafotocli').AsString := 'F'
             end;
          //endif


        end;
     //endi
   end;
//endi

iniciatransacao;
end;

procedure TfrmDados.Cds_ClientesBeforePost(DataSet: TDataSet);
begin
if frmpesqcli <> nil then
   begin
     if Cds_Clientes.State in [dsinsert, dsedit] then
        begin
          if frmpesqcli.ckbreducaoicms.Checked then
             begin
               cds_clientes.FieldByName('reducaoicms').asString := 'T';
             end
          else
             begin
               cds_clientes.FieldByName('reducaoicms').asString := 'F';
             end;
          //endi

        end;
     //endi

     cds_clientes.fieldbyname('outinf1').asString := frmpesqcli.cbxoutinf1.Text;
     cds_clientes.fieldbyname('outinf2').asString := frmpesqcli.cbxoutinf2.Text;
     cds_clientes.fieldbyname('outinf3').asString := frmpesqcli.cbxoutinf3.Text;
     cds_clientes.fieldbyname('outinf4').asString := frmpesqcli.cbxoutinf4.Text;
     cds_clientes.fieldbyname('outinf5').asString := frmpesqcli.cbxoutinf5.Text;
     cds_clientes.fieldbyname('outinf6').asString := frmpesqcli.cbxoutinf6.Text;
     cds_clientes.fieldbyname('outinf7').asString := frmpesqcli.cbxoutinf7.Text;
     cds_clientes.fieldbyname('outinf8').asString := frmpesqcli.cbxoutinf8.Text;
     cds_clientes.fieldbyname('outinf9').asString := frmpesqcli.cbxoutinf9.Text;
     cds_clientes.fieldbyname('outinf10').asString := frmpesqcli.cbxoutinf10.Text;

   end;
//endi





Iniciatransacao;

end;

procedure TfrmDados.Dst_FuncionariosDataChange(Sender: TObject;
  Field: TField);
begin
//if frmpesqvd <> nil then
//   if frmpesqvd.cbxnfun.Focused then
  //    frmpesqvd.edicfun.Text := cds_funcionarios.fieldbyname('codigo').asString;
   //endi
//endi
end;

procedure TfrmDados.Dts_ClientesDataChange(Sender: TObject; Field: TField);
begin
//if frmpesqvd <> nil then
//   if (frmpesqvd.cbxncli.Focused) or (frmpesqvd.cbxnfant.Focused) then
//      frmpesqvd.ediccli.Text := cds_clientes.fieldbyname('codigo').asString;
   //endi
//endi
//if frmpesqos <> nil then
//   if (frmpesqos.cbxncli.Focused) or (frmpesqos.cbxnfant.Focused) then
//      frmpesqos.ediccli.Text := cds_clientes.fieldbyname('codigo').asString;
   //endi
//endi
end;

procedure TfrmDados.Dst_RepresentantesDataChange(Sender: TObject;
  Field: TField);
begin
//if frmpesqvd <> nil then
//   if frmpesqvd.cbxnrep.Focused then
//      frmpesqvd.edicrep.Text := cds_representantes.fieldbyname('codigo').asString;
   //endi
//endi
end;

procedure TfrmDados.Dts_sVendaDataChange(Sender: TObject; Field: TField);
begin
cds_vendab.Active := false;
dbx_vendab.Active := false;

cds_Vencto.Active := false;
dbx_Vencto.Active := false;

cds_Vencto_NF.Active := false;
dbx_Vencto_NF.Active := false;

dbx_Exec.Active := false;

if frmpesqvf <> nil then
   begin

     frmpesqvf.lbltotals.Caption := '0,00';
     frmpesqvf.lbltotale.Caption := '0,00';
     frmpesqvf.lbldin.Caption := '0,00';
     frmpesqvf.lbltotal.Caption := '0,00';

     if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totpagar').asfloat then
        begin

          frmpesqvf.lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('totpagar').asfloat);

        end
     else
        begin

          frmpesqvf.lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('din').asfloat);

       end;
     //endi

     if cds_svenda.fieldbyname('nco').asInteger > 0 then
        begin
          cds_vendab.Active := false;
          dbx_vendab.Active := false;
          dbx_vendab.SQL.Clear;
          dbx_vendab.SQL.Add('Select * from vendab where controle = '+cds_svenda.fieldbyname('nco').asString);
          dbx_vendab.Active := true;
          cds_vendab.Active := true;

          cds_Vencto.Active := false;
          dbx_Vencto.Active := false;
          dbx_Vencto.SQL.Clear;
          dbx_Vencto.SQL.Add('Select * from Vencimentos where nco = '+cds_svenda.fieldbyname('nco').asString);
          dbx_Vencto.Active := true;
          cds_Vencto.Active := true;

          cds_Vencto_NF.Active := false;
          dbx_Vencto_NF.Active := false;
          dbx_Vencto_NF.SQL.Clear;
          dbx_Vencto_NF.SQL.Add('Select * from Vencimentos_NF where nco = '+cds_svenda.fieldbyname('nco').asString);
          dbx_Vencto_NF.Active := true;
          cds_Vencto_NF.Active := true;

          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('S')+')');
          dbx_Exec.Active := true;
          frmpesqvf.lbltotals.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('total').asfloat);

          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('E')+')');
          dbx_Exec.Active := true;
          frmpesqvf.lbltotale.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('total').asfloat);

          dbx_Exec.Active := false;
          dbx_Exec.SQL.Clear;
          dbx_Exec.SQL.Add('Select sum(valorreal) as total from Vencimentos where nco = '+cds_svenda.fieldbyname('nco').asString);
          dbx_Exec.Active := true;
          frmpesqvf.lblaprazo.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('total').asfloat);

          dbx_Exec.Active := false;




        end;
     //endi

     frmpesqvf.lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos( frmpesqvf.lblaprazo.Caption  )) +  strtofloat(tirapontos( frmpesqvf.lbldin.Caption  ))  );

   end;
//endi


if frmpesqOrcam <> nil then
  begin
    frmpesqOrcam.AtivaDbotoes;
  end;
//endi




if frmpesqvd <> nil then
  begin
    frmpesqvd.AtivaDbotoes;
  end;
//endi

if frmpesqos <> nil then
  begin
    frmpesqos.AtivaDbotoes;
  end;
//endi

if frmpesqost <> nil then
  begin
    frmpesqost.AtivaDbotoes;
  end;
//endi



end;


procedure Tfrmdados.totps;
var
  ianoi, imesi, idiai:word;
  ianof, imesf, idiaf:word;
  sdata:string;

begin

   //if  frmpesqvprod <> nil then
   //  begin

       try

       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvd';

       sqp_dados.ParamByName('VARDATAI').AsDate := frmpesqvprod.dtpdatais.Date;
       sqp_dados.ParamByName('VARDATAF').AsDate := frmpesqvprod.dtpdatafs.Date;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       //cds_vprodutostotprod.Value := frmdados.sqp_dados.ParamByName('qtdetot').Asfloat;

       except
       end;

   //  end;
   //endi
end;


procedure Tfrmdados.totpsb;
var
  ianoi, imesi, idiai:word;
  ianof, imesf, idiaf:word;
  sdata:string;

begin

   //if  frmpesqvprod <> nil then
   //  begin

       try

       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvdb';

       sqp_dados.ParamByName('VARDATAI').AsDate := frmpesqvprod.dtpdataisb.Date;
       sqp_dados.ParamByName('VARDATAF').AsDate := frmpesqvprod.dtpdatafsb.Date;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       //cds_vprodutostotprod.Value := frmdados.sqp_dados.ParamByName('qtdetot').Asfloat;

       except
       end;

   //  end;
   //endi
end;





procedure Tfrmdados.totpe;
var
  ianoi, imesi, idiai:word;
  ianof, imesf, idiaf:word;
  sdata:string;

begin

   if  frmpesqvprod <> nil then
     begin

       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodcp';

       sqp_dados.ParamByName('VARDATAI').AsDate := frmpesqvprod.dtpdataie.Date;
       sqp_dados.ParamByName('VARDATAF').AsDate := frmpesqvprod.dtpdatafe.Date;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;


     end;
   //endi
end;


procedure TfrmDados.Cds_vProdutosCalcFields(DataSet: TDataSet);
begin
  //totps;
  //totpe;

   if  frmpesqvprod <> nil then
     begin


       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvd';

       sqp_dados.ParamByName('VARDATAI').AsDate := frmpesqvprod.DtpDataIP.date;
       sqp_dados.ParamByName('VARDATAF').AsDate := frmpesqvprod.DtpDataFP.date;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       //ftotal  := ftotal + frmdados.sqp_dados.ParamByName('vlrtfatu').Asfloat;
       //ftotalc := ftotalc + frmdados.sqp_dados.ParamByName('vlrtcus').Asfloat;

       //cds_vprodutostotprod.Value := sqp_dados.ParamByName('qtdetot').Asfloat;


     end;
   //endi


end;

procedure TfrmDados.Cds_VenctoPRAZOChange(Sender: TField);
var
  iprazo:integer;
  sDataAtu, sData:string;
begin

//showmessage(sender.Text);
//sDataAtu := datetostr(date);
//iprazo := frmdados.Cds_Vencto.FieldByName('prazo').asInteger;
//iprazo := strtoint(sender.text);
//sData := frmdados.Cds_Vencto.FieldByName('dtv').asString;

//if (frmpesqvd <> nil) and (sender.DisplayName='PRAZO') then
//   begin
//     frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
//   end;
//endi


end;

procedure TfrmDados.Cds_VenctoDTVChange(Sender: TField);
var
  iprazo:integer;
  sDataAtu, sData:string;
begin

//sDataAtu := datetostr(date);
//iprazo := frmdados.Cds_Vencto.FieldByName('prazo').asInteger;
//sData := frmdados.Cds_Vencto.FieldByName('dtv').asString;

//if (frmpesqvd <> nil) and (sender.DisplayName='DTV')  then
//   begin
//     frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu, sData);
//   end;
//endi
end;



procedure TfrmDados.Dts_VenctoUpdateData(Sender: TObject);
var
  iprazo:integer;
  sDataAtu, sData:string;
begin


if not cds_vencto.Active then
   exit;
//endi

try


  sDataAtu := datetostr(date);
  iprazo := frmdados.Cds_Vencto.FieldByName('prazo').asInteger;
  sData := frmdados.Cds_Vencto.FieldByName('dtv').asString;

  if (frmfecped <> nil) then
    if (frmfecped.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmfecped <> nil) then
    if (frmfecped.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmimpnf <> nil) then
    if (frmimpnf.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmimpnf <> nil) then
    if (frmimpnf.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmfrente <> nil) then
    if (frmfrente.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmfrente <> nil) then
    if (frmfrente.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmfrenteecf <> nil) then
    if (frmfrenteecf.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmfrenteecf <> nil) then
    if (frmfrenteecf.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmfecOs <> nil) then
    if (frmfecOs.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmfecOS <> nil) then
    if (frmfecOs.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmfrenteecf <> nil) then
    if (frmfrenteecf.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmfrenteecf <> nil) then
    if (frmfrenteecf.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmpesqost <> nil) then
    if (frmpesqost.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi
  if (frmpesqost <> nil) then
    if (frmpesqost.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

  if (frmfecOst <> nil) then
    if (frmfecOst.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi
  if (frmfecOSt <> nil) then
    if (frmfecOst.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi


  if (frmfectra <> nil) then
    if (frmfectra.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi
  if (frmfectra <> nil) then
    if (frmfectra.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi


  if (frmtra <> nil) then
    if (frmtra.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi
  if (frmtra <> nil) then
    if (frmtra.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_Vencto.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi


except

  sMsg := 'Excessão quando digitou vencimentos';

end;


end;

procedure TfrmDados.Dts_Vencto_NFUpdateData(Sender: TObject);
var
  iprazo:integer;
  sDataAtu, sData:string;
begin
if not cds_vencto_NF.Active then
   exit;
//endi

try

sDataAtu := datetostr(date);
iprazo := frmdados.Cds_Vencto_NF.FieldByName('prazo').asInteger;
sData := frmdados.Cds_Vencto_NF.FieldByName('dtv').asString;

if (frmfecped <> nil) then
  if (frmfecped.sColuna = 'PRAZO' ) then
   begin
     frmdados.Cds_Vencto_NF.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
   end;
//endi

if (frmfecped <> nil) then
  if (frmfecped.sColuna = 'DTV' ) then
   begin
     frmdados.Cds_Vencto_NF.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
   end;
//endi

if (frmimpnf <> nil) then
  if (frmimpnf.sColuna = 'PRAZO' ) then
   begin
     frmdados.Cds_Vencto_NF.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
   end;
//endi

if (frmimpnf <> nil) then
  if (frmimpnf.sColuna = 'DTV' ) then
   begin
     frmdados.Cds_Vencto_NF.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
   end;
//endi

if (frmfecenf <> nil) then
  if (frmfecenf.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Vencto_nf.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi
//endi


if (frmfecenf <> nil) then
  if (frmfecenf.sColuna = 'DTV' ) then
   begin
     frmdados.Cds_Vencto_NF.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
   end;
//endi

except
  sMsg := 'Excessão quando digitou vencimentos Nota Fiscal';
end;

end;

procedure TfrmDados.Cds_Vencto_NFAfterInsert(DataSet: TDataSet);
begin
if not cds_vencto_nf.Active then
  exit;
//endi

Permite_Inserir(DataSet);
if frmfrente <> nil then
  begin
    if cds_Vencto_NF.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto_NF.RecordCount >= strtoint(frmfrente.edinparc.text)then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmfrenteecf <> nil then
  begin
    if cds_Vencto_NF.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto_NF.RecordCount >= strtoint(frmfrenteecf.edinparc.text)then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi



if frmfecped <> nil then
  begin
    if cds_Vencto_NF.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto_NF.RecordCount >= strtoint(frmfecped.ediparc.text) then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmfecenf <> nil then
  begin
    if cds_Vencto_nf.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto_nf.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto_nf.RecordCount >= strtoint(frmfecenf.ediparc.text)then
       begin
         Cds_Vencto_nf.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmimpnf <> nil then
  begin
    if cds_Vencto_NF.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi

if frmfrenteecf <> nil then
  begin
    if cds_Vencto_NF.RecordCount > cds_Indice.FieldByName('MaxParc').asInteger then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
    if cds_Vencto_NF.RecordCount >= strtoint(frmfrenteecf.edinparc.text)then
       begin
         Cds_Vencto_NF.cancel;
         bMaxParc := true;
       end
    else
       begin
         bMaxParc := false;
       end;
    //endi
  end;
//endi



end;

procedure TfrmDados.Cds_Vencto_NFAfterPost(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.Cds_NFEAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);
end;

procedure TfrmDados.Cds_NFEAfterPost(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.Dts_vProdutosUpdateData(Sender: TObject);
begin
//if frmpesqvprod <> nil then
//   if frmpesqvprod.sColuna <> '' then
//      if application.MessageBox('Deseja Realmente Alterar Registro?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
//         begin
//           Cds_vProdutos.Cancel;
//         end;
      //endi
   //endi
//endi

end;

procedure TfrmDados.Cds_FuncionariosBeforePost(DataSet: TDataSet);
begin
if frmpesqfunc <> nil then
   begin
     if Cds_funcionarios.State in [dsinsert, dsedit] then
        begin
          if frmpesqfunc.ckbativo.Checked then
             begin
               cds_funcionarios.FieldByName('Ativo').asString := 'T';
             end
          else
             begin
               cds_funcionarios.FieldByName('Ativo').asString := 'F';
             end;
          //endi
        end;
     //endi
   end;
//endi
Iniciatransacao;

end;

procedure TfrmDados.Cds_sVendaCalcFields(DataSet: TDataSet);
var ftotm, ftotp, ftotc :real;

begin

  dbx_exec.Active := false;
  dbx_exec.SQL.Clear;
  dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc  from vendab where (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
  dbx_exec.Active := true;
  ftotp := dbx_exec.fieldbyname('totalv').asfloat;
  ftotc := dbx_exec.fieldbyname('totalc').asfloat;

  dbx_exec.Active := false;
  dbx_exec.SQL.Clear;
  dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc  from dvenda where (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
  dbx_exec.Active := true;
  ftotp := ftotp + dbx_exec.fieldbyname('totalv').asfloat;
  ftotc := ftotc + dbx_exec.fieldbyname('totalc').asfloat;

  dbx_exec.Active := false;
  dbx_exec.SQL.Clear;
  dbx_exec.SQL.Add('Select sum(subtotal) as totalm from dmobra where (codsvenda = '+cds_sVenda.fieldbyname('codigo').asString+')');
  dbx_exec.Active := true;
  ftotm := dbx_exec.fieldbyname('totalm').asfloat;

  cds_svendaftotp.Value := ftotp;
  cds_svendaftotm.Value := ftotm;
  cds_svendaftotc.Value := ftotc;
  cds_svendatotg.Value := ftotp+ftotm;

  dbx_exec.Active := false;



//totalizafrmpesqvdprod;
//cds_svendatotg.Value := 0;
end;

procedure TfrmDados.Cds_NFCalcFields(DataSet: TDataSet);
begin
  dbx_exec.Active := false;
  dbx_exec.SQL.Clear;
  dbx_exec.SQL.Add('Select sum(subtotal) as totalv, sum(subtotalc) as totalc from nfp where (codnf = '+cds_nf.fieldbyname('codigo').asString+')');
  dbx_exec.Active := true;
  cds_nftotg.Value := dbx_exec.fieldbyname('totalv').asfloat;
  dbx_exec.Active := false;

end;

procedure TfrmDados.Cds_EquipCliBeforePost(DataSet: TDataSet);
begin
if (frmpesqcli <> nil) and ( cds_equipcli.FieldByName('id1').asString  =  '') and (Cds_Indice.FieldByName('id1cliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento da(o) '+frmdados.Cds_Indice.fieldbyname('id1').asString);
     cds_equipcli.cancel;
     Exit;
   end;
//endi


iniciatransacao;
end;

procedure TfrmDados.Cds_EquipCliAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);
end;

procedure TfrmDados.Cds_EquipCliAfterEdit(DataSet: TDataSet);
begin
Permite_Alterar(DataSet);
end;

procedure TfrmDados.Cds_EquipCliID1Validate(Sender: TField);
begin
{
if (frmpesqcli <> nil) and ( cds_equipcli.FieldByName('id1').asString  =  '') and (Cds_Indice.FieldByName('id1cliobr').AsString = 'T' ) then
   begin
     showmessage('É obrigatório o preenchimento da(o) '+frmdados.Cds_Indice.fieldbyname('id1').asString);
     cds_equipcli.cancel;
     Exit;
   end;
//endi
}

{
if (frmpesqcli <> nil) and ( sender.AsString = '' ) and(Cds_Indice.FieldByName('id1cliobr').AsString = 'T' ) then
   begin
     Showmessage('É obrigatório o preenchimento da(o) '+frmdados.Cds_Indice.fieldbyname('id1').asString);
     cds_equipcli.cancel;
   end;
//endi
}
end;

procedure TfrmDados.Cds_EquipCliPostError(DataSet: TDataSet;
  E: EDatabaseError; var Action: TDataAction);
Var
ErroMens :String;
begin

ErroMens := E.Message;

action := daAbort;

end;

procedure TfrmDados.Dts_SituRecDataChange(Sender: TObject; Field: TField);
begin
if (frmpesqrecbto <> nil) and (frmpesqrecbto.sOpcao <> '') and (not frmpesqrecbto.cbxnomesitrec.Focused) and (frmpesqrecbto.dbgrecbto.Visible = false) then
  begin
    if cds_siturec.FieldByName('codigo').asInteger = 2 then
       begin
         //cds_vencto.Edit;
         //cds_vencto.FieldByName('dtl').AsDateTime   := date;
         //cds_vencto.FieldByName('dtb').AsDateTime := date;
       end;
    //endi

    if (cds_siturec.FieldByName('codigo').asInteger = 1) and (frmpesqrecbto.sOpcao <> '') and (frmpesqrecbto.dbgrecbto.Visible = false) then
       begin
         cds_vencto.Edit;
         cds_vencto.FieldByName('dtl').AsString   := '';
         cds_vencto.FieldByName('dtb').AsString := '';
         cds_vencto.FieldByName('valliq').asfloat := 0;
         cds_vencto.FieldByName('codtipop').asInteger := 0;
       end;
    //endi
  end;
//endi


if (frmpesqrecbtop <> nil) and (frmpesqrecbtop.sOpcao <> '') and (not frmpesqrecbtop.cbxnomesitrec.Focused) then
  begin
    if cds_siturec.FieldByName('codigo').asInteger = 2 then
       begin
         //cds_vencto.Edit;
         //cds_vencto.FieldByName('dtl').AsDateTime   := date;
         //cds_vencto.FieldByName('dtb').AsDateTime := date;
       end;
    //endi

    if (cds_siturec.FieldByName('codigo').asInteger = 1) and (frmpesqrecbtop.sOpcao <> '') then
       begin
         cds_vencto.Edit;
         cds_vencto.FieldByName('dtl').AsString   := '';
         cds_vencto.FieldByName('dtb').AsString := '';
         cds_vencto.FieldByName('valliq').asfloat := 0;
         cds_vencto.FieldByName('codtipop').asInteger := 0;
       end;
    //endi
  end;
//endi


if (frmtra <> nil) and ((frmtra.cbxnsit.Focused) or (frmtra.edicsit.Focused))  then
  begin
    if cds_siturec.FieldByName('codigo').asInteger = 2 then
       begin
         //cds_vencto.Edit;
         //cds_vencto.FieldByName('dtl').AsDateTime   := date;
         //cds_vencto.FieldByName('dtb').AsDateTime := date;
       end;
    //endi

    if (cds_siturec.FieldByName('codigo').asInteger = 1) then
       begin
         cds_vencto.Edit;
         cds_vencto.FieldByName('dtl').AsString   := '';
         cds_vencto.FieldByName('dtb').AsString := '';
         cds_vencto.FieldByName('valliq').asfloat := 0;
         cds_vencto.FieldByName('codtipop').asInteger := 0;
       end;
    //endi
  end;
//endi




//if (frmpesqost <> nil) and (frmpesqost.pctcontacli.ActivePageIndex = 2)then
//  begin
//    if cds_siturec.FieldByName('codigo').asInteger = 2 then
//       begin
//         cds_vencto.Edit;
//         cds_vencto.FieldByName('dtl').AsDateTime   := date;
//         cds_vencto.FieldByName('dtb').AsDateTime := date;
//       end;
    //endi

//    if (cds_siturec.FieldByName('codigo').asInteger = 1) then
//       begin
//         cds_vencto.Edit;
//         cds_vencto.FieldByName('dtl').AsString   := '';
//         cds_vencto.FieldByName('dtb').AsString := '';
//         cds_vencto.FieldByName('valliq').asfloat := 0;
//         cds_vencto.FieldByName('codtipop').asInteger := 0;
//       end;
    //endi
//  end;
//endi






end;

procedure TfrmDados.Dts_SituPagarDataChange(Sender: TObject;
  Field: TField);
begin
if (frmpesqpag <> nil) and (frmpesqpag.sOpcao <> '') and (frmpesqpag.dbgpag.Visible = false)then
  begin
    if cds_situpagar.FieldByName('codigo').asInteger = 2 then
       begin
         //cds_pagar.Edit;
         //cds_pagar.FieldByName('dtl').AsDateTime   := date;
         //cds_pagar.FieldByName('dtb').AsDateTime := date;

       end;
    //endi

    if (cds_situpagar.FieldByName('codigo').asInteger = 1) and (frmpesqpag.sOpcao <> '') and (not frmpesqpag.cbxnomesitpagar.Focused) and (frmpesqpag.dbgpag.Visible = false) then
       begin
         cds_pagar.Edit;
         cds_pagar.FieldByName('dtl').AsString   := '';
         cds_pagar.FieldByName('dtb').AsString := '';
         cds_pagar.FieldByName('valliq').asfloat := 0;
         cds_pagar.FieldByName('codtipop').asInteger := 0;

       end;
    //endi

  end;
//endi

end;

procedure TfrmDados.Cds_VenctoAfterScroll(DataSet: TDataSet);
begin
habdesabilitaedi;
end;

procedure tfrmdados.habdesabilitaedi;
begin
if (frmpesqrecbtop <> nil) then
   begin
     if cds_vencto.FieldByName('csit').AsInteger = 1 then
        begin
          frmpesqrecbtop.edicsit.Enabled := true;
          frmpesqrecbtop.edinsit.Enabled := true;
          frmpesqrecbtop.edidtl.Enabled := true;
          frmpesqrecbtop.edidtb.Enabled := true;
          frmpesqrecbtop.edivalliq.Enabled := true;
          frmpesqrecbtop.cbxntipoop.Enabled := true;
        end;
     //endi
     if cds_vencto.FieldByName('csit').AsInteger = 2 then
        begin
          frmpesqrecbtop.edicsit.Enabled := false;
          frmpesqrecbtop.edinsit.Enabled := false;
          frmpesqrecbtop.edidtl.Enabled := false;
          frmpesqrecbtop.edidtb.Enabled := false;
          frmpesqrecbtop.edivalliq.Enabled := false;
          frmpesqrecbtop.cbxntipoop.Enabled := false;
        end;
     //endi
   end;
//endi
if (frmpesqrecbto <> nil) and (frmpesqrecbto.sOpcao = 'A') then
   begin
     if cds_vencto.FieldByName('csit').AsInteger = 1 then
        begin
          frmpesqrecbto.edidescricao.Enabled := true;
          frmpesqrecbto.edidte.Enabled := true;
          frmpesqrecbto.ediccli.Enabled := true;
          frmpesqrecbto.cbxnomecli.Enabled := true;
          frmpesqrecbto.edidoc.Enabled := true;
          frmpesqrecbto.cbxnagrupcod.Enabled := true;
          frmpesqrecbto.cbxncla.Enabled := true;
          //frmpesqrecbto.edinped.Enabled := true;
          //frmpesqrecbto.edinos.Enabled := true;
          frmpesqrecbto.edinumnf.Enabled := true;
          frmpesqrecbto.ediparc.Enabled := true;
          frmpesqrecbto.cbxtipopgto.Enabled := true;
          //frmpesqrecbto.ediparte.Enabled := true;
          frmpesqrecbto.edidtv.Enabled := true;
          frmpesqrecbto.edivalor.Enabled := true;
          frmpesqrecbto.mmoobs.Enabled := true;
          frmpesqrecbto.edidtl.Enabled := true;
          frmpesqrecbto.edidtb.Enabled := true;
          frmpesqrecbto.edivalliq.Enabled := true;
          frmpesqrecbto.cbxntipoop.Enabled := true;
          frmpesqrecbto.cbxncli.Enabled := true;
        end;
     //endi
     if cds_vencto.FieldByName('csit').AsInteger = 2 then
        begin
          frmpesqrecbto.edidescricao.Enabled := false;
          frmpesqrecbto.edidte.Enabled := false;
          frmpesqrecbto.ediccli.Enabled := false;
          frmpesqrecbto.cbxnomecli.Enabled := false;
          frmpesqrecbto.edidoc.Enabled := false;
          frmpesqrecbto.cbxnagrupcod.Enabled := false;
          frmpesqrecbto.cbxncla.Enabled := false;
          //frmpesqrecbto.edinped.Enabled := false;
          //frmpesqrecbto.edinos.Enabled := false;
          frmpesqrecbto.edinumnf.Enabled := false;
          frmpesqrecbto.ediparc.Enabled := false;
          frmpesqrecbto.cbxtipopgto.Enabled := false;
          //frmpesqrecbto.ediparte.Enabled := false;
          frmpesqrecbto.edidtv.Enabled := false;
          frmpesqrecbto.edivalor.Enabled := false;
          frmpesqrecbto.mmoobs.Enabled := false;
          frmpesqrecbto.edidtl.Enabled := false;
          frmpesqrecbto.edidtb.Enabled := false;
          frmpesqrecbto.edivalliq.Enabled := false;
          frmpesqrecbto.cbxntipoop.Enabled := false;
          frmpesqrecbto.cbxncli.Enabled := false;
        end;
     //endi
   end;
//endi
if (frmpesqpag <> nil) and (frmpesqpag.sOpcao = 'A')  then
   begin
     if cds_pagar.FieldByName('csit').AsInteger = 1 then
        begin
          frmpesqpag.edidescricao.Enabled := true;
          frmpesqpag.edidte.Enabled := true;
          frmpesqpag.edicfor.Enabled := true;
          frmpesqpag.cbxnomefor.Enabled := true;
          frmpesqpag.edidoc.Enabled := true;
          frmpesqpag.cbxnagrupcod.Enabled := true;
          frmpesqpag.cbxncla.Enabled := true;
          frmpesqpag.edinumnf.Enabled := true;
          frmpesqpag.edidtv.Enabled := true;
          frmpesqpag.edivalor.Enabled := true;
          frmpesqpag.mmoobs.Enabled := true;
          frmpesqpag.edidtl.Enabled := true;
          frmpesqpag.edidtb.Enabled := true;
          frmpesqpag.edivalliq.Enabled := true;
          frmpesqpag.cbxntipoop.Enabled := true;
          frmpesqpag.cbxnfor.Enabled := true;
        end;
     //endi
     if cds_pagar.FieldByName('csit').AsInteger = 2 then
        begin
          frmpesqpag.edidescricao.Enabled := false;
          frmpesqpag.edidte.Enabled := false;
          frmpesqpag.edicfor.Enabled := false;
          frmpesqpag.cbxnomefor.Enabled := false;
          frmpesqpag.edidoc.Enabled := false;
          frmpesqpag.cbxnagrupcod.Enabled := false;
          frmpesqpag.cbxncla.Enabled := false;
          frmpesqpag.edinumnf.Enabled := false;
          frmpesqpag.edidtv.Enabled := false;
          frmpesqpag.edivalor.Enabled := false;
          frmpesqpag.mmoobs.Enabled := false;
          frmpesqpag.edidtl.Enabled := false;
          frmpesqpag.edidtb.Enabled := false;
          frmpesqpag.edivalliq.Enabled := false;
          frmpesqpag.cbxntipoop.Enabled := false;
          frmpesqpag.cbxnfor.Enabled := false;
        end;
     //endi
   end;
//endi
if (frmpesqrecbtop <> nil) and (frmpesqrecbtop.sOpcao = 'A') then
   begin
     if cds_vencto.FieldByName('csit').AsInteger = 1 then
        begin
          frmpesqrecbtop.edidescricao.Enabled := true;
          frmpesqrecbtop.edidte.Enabled := true;
          frmpesqrecbtop.ediccli.Enabled := true;
          frmpesqrecbtop.cbxnomecli.Enabled := true;
          frmpesqrecbtop.edidoc.Enabled := true;
          frmpesqrecbtop.cbxnagrupcod.Enabled := true;
          frmpesqrecbtop.cbxncla.Enabled := true;
          //frmpesqrecbto.edinped.Enabled := true;
          //frmpesqrecbto.edinos.Enabled := true;
          frmpesqrecbtop.edinumnf.Enabled := true;
          frmpesqrecbtop.ediparc.Enabled := true;
          frmpesqrecbtop.cbxtipopgto.Enabled := true;
          //frmpesqrecbto.ediparte.Enabled := true;
          frmpesqrecbtop.edidtv.Enabled := true;
          frmpesqrecbtop.edivalor.Enabled := true;
          frmpesqrecbtop.mmoobs.Enabled := true;
          frmpesqrecbtop.edidtl.Enabled := true;
          frmpesqrecbtop.edidtb.Enabled := true;
          frmpesqrecbtop.edivalliq.Enabled := true;
          frmpesqrecbtop.cbxntipoop.Enabled := true;
          frmpesqrecbtop.cbxncli.Enabled := true;
        end;
     //endi
     if cds_vencto.FieldByName('csit').AsInteger = 2 then
        begin
          frmpesqrecbtop.edidescricao.Enabled := false;
          frmpesqrecbtop.edidte.Enabled := false;
          frmpesqrecbtop.ediccli.Enabled := false;
          frmpesqrecbtop.cbxnomecli.Enabled := false;
          frmpesqrecbtop.edidoc.Enabled := false;
          frmpesqrecbtop.cbxnagrupcod.Enabled := false;
          frmpesqrecbtop.cbxncla.Enabled := false;
          //frmpesqrecbto.edinped.Enabled := false;
          //frmpesqrecbto.edinos.Enabled := false;
          frmpesqrecbtop.edinumnf.Enabled := false;
          frmpesqrecbtop.ediparc.Enabled := false;
          frmpesqrecbtop.cbxtipopgto.Enabled := false;
          //frmpesqrecbto.ediparte.Enabled := false;
          frmpesqrecbtop.edidtv.Enabled := false;
          frmpesqrecbtop.edivalor.Enabled := false;
          frmpesqrecbtop.mmoobs.Enabled := false;
          frmpesqrecbtop.edidtl.Enabled := false;
          frmpesqrecbtop.edidtb.Enabled := false;
          frmpesqrecbtop.edivalliq.Enabled := false;
          frmpesqrecbtop.cbxntipoop.Enabled := false;
          frmpesqrecbtop.cbxncli.Enabled := false;
        end;
     //endi
   end;
//endi


if (frmtra <> nil)  then
   begin
     if cds_vencto.FieldByName('csit').AsInteger = 1 then
        begin
          frmtra.edidtl.Enabled := true;
          frmtra.edidtb.Enabled := true;
          frmtra.edivalliq.Enabled := true;
          frmtra.cbxntipoop.Enabled := true;
          frmtra.btnbaixar.Enabled := true;
          frmtra.edicsit.Enabled := true;
          frmtra.cbxnsit.Enabled := true;
          frmtra.ckbtodos.Enabled := true;
          frmtra.cbxbaixapgtodentes.Enabled := true;
        end;
     //endi
     if cds_vencto.FieldByName('csit').AsInteger = 2 then
        begin
          frmtra.edidtl.Enabled := false;
          frmtra.edidtb.Enabled := false;
          frmtra.edivalliq.Enabled := false;
          frmtra.cbxntipoop.Enabled := false;
          frmtra.btnbaixar.Enabled := false;
          frmtra.edicsit.Enabled := false;
          frmtra.cbxnsit.Enabled := false;
          frmtra.ckbtodos.Enabled := false;
          frmtra.cbxbaixapgtodentes.Enabled := false;
        end;
     //endi
   end;
//endi





end;

procedure TfrmDados.Cds_PagarAfterScroll(DataSet: TDataSet);
begin
habdesabilitaedi;
end;

procedure TfrmDados.Cds_UsuariosBeforePost(DataSet: TDataSet);
begin
if form_ativo <> 'frmasenha' then
   if novonivel > 0 then
      cds_usuarios.FieldByName('nivel').AsInteger := novonivel;
   //endi
//endi



iniciatransacao;
end;

procedure TfrmDados.Cds_UsuariosAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);
end;

procedure TfrmDados.Cds_UsuariosAfterEdit(DataSet: TDataSet);
begin
if form_ativo <> 'frmasenha' then
   begin

     if  (iNivelUsuario >= cds_usuarios.FieldByName('nivel').AsInteger) and (iNivelUsuario <> 1) then
         begin
           showmessage('Voce não tem permissão para alterar esse usuário'+#13+
                       'se você está tentando alterar sua própria senha'+#13+
                       'acione Trocar senha no menu configurar da '+#13+
                       'tela principal');
           cds_usuarios.Cancel;
           exit;
         end;
     //endi

   end;
//endi

Permite_Alterar(DataSet);
end;

procedure TfrmDados.Cds_UsuariosAfterDelete(DataSet: TDataSet);
begin
AtualizaDados;
end;

procedure TfrmDados.Cds_UsuariosBeforeDelete(DataSet: TDataSet);
begin

if  (iNivelUsuario >= cds_usuarios.FieldByName('nivel').AsInteger) and (iNivelUsuario <> 1) then
    begin
      showmessage('Voce não tem permissão para alterar esse usuário');
      abort;
      exit;
    end;
//endi

// cancela exclusão
if not bUsuariosE then
   begin
     abort;
     exit;
   end;
//endi


IniciaTransacao;


end;

procedure TfrmDados.Cds_UsuariosBeforeInsert(DataSet: TDataSet);
begin
  novonivel :=  iNivelUsuario + 1

end;

procedure TfrmDados.Cds_dVendaAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);
if frmpesqvprod <> nil then
   begin
     if bvprodutosR then
        cds_dvenda.Cancel;
     //endi
   end;
//endi
end;

procedure TfrmDados.Cds_VendabAfterInsert(DataSet: TDataSet);
begin
Permite_Inserir(DataSet);
if frmpesqvprod <> nil then
   begin
     if bvprodutosR then
        cds_vendab.Cancel;
     //endi
   end;
//endi

end;

procedure TfrmDados.Cds_SITBAfterScroll(DataSet: TDataSet);
begin
if frmconfint <> nil then
   begin
     cds_tgicms.Active := false;
     cds_tgicmscsitb.DefaultExpression := cds_sitb.fieldbyname('codigo').asstring;
     dbx_tgicms.Active := false;
     dbx_tgicms.SQL.Clear;
     dbx_tgicms.sql.Add('Select * from tgicms where csitb = '+cds_sitb.fieldbyname('codigo').asString);
     dbx_tgicms.Active := true;
     cds_tgicms.Active := true;
   end;
//endi
end;

procedure TfrmDados.Cds_ModuloAfterScroll(DataSet: TDataSet);
begin

if frmpesqost <> nil then
   begin
     cds_cmobra.Active := false;
     dbx_cmobra.Active := false;
     dbx_cmobra.SQL.Clear;
     if frmpesqost.cbxntabela.Text <> '' then
        dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
     else
        dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+')' );
     //endi
     dbx_cmobra.Active := true;
     cds_cmobra.Active := true;

   end;
//endi


if (frmtra <> nil) and (frmtra.pctcontrole.ActivePageIndex = 1) then
   begin



     cds_cmobra.Active := false;
     dbx_cmobra.Active := false;
     dbx_cmobra.SQL.Clear;
     if frmtra.cbxntabela.Text <> '' then
        dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
     else
        dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+')' );
     //endi
     dbx_cmobra.Active := true;
     cds_cmobra.Active := true;


   end;
//endi




end;

procedure TfrmDados.Cds_Mat_RestaurarAfterScroll(DataSet: TDataSet);
begin
if frmpesqost <> nil then
   begin
     tabela := 'Temp';
     cds_temp.Edit;
     cds_temp.FieldByName('cod10').asInteger := cds_mat_restaurar.fieldbyname('codigo').asInteger;
   end;
//endi

end;

procedure TfrmDados.Cds_VendabBeforePost(DataSet: TDataSet);
begin

if frmcomanda <> nil then
   begin
     if cds_vendab.State = dsedit then
        begin
          cds_vendab.fieldbyname('subtotal').asfloat := cds_vendab.FieldByName('qtde').asfloat * cds_vendab.FieldByName('prve').asfloat;
          frmcomanda.totais;

        end;
     //endi
   end;
//endi

if frmcomandap <> nil then
   begin
     if cds_vendab.State = dsedit then
        begin
          cds_vendab.fieldbyname('subtotal').asfloat := cds_vendab.FieldByName('qtde').asfloat * cds_vendab.FieldByName('prve').asfloat;
          frmcomandap.totais;

        end;
     //endi
   end;
//endi



iniciatransacao;
end;

procedure TfrmDados.Cds_dMobraAfterPost(DataSet: TDataSet);
begin

Atualizadados;

end;

procedure TfrmDados.Cds_cmobraAfterScroll(DataSet: TDataSet);
begin
if frmtra <> nil then
   begin
     frmtra.ediprveM.Text  := formatfloat('###,###,##0.00', cds_cmobra.fieldbyname('valor').asfloat);
     frmtra.edisubtotalM.Text := formatfloat('###,###,##0.00', strtofloat(tirapontos(frmtra.ediqtdeM.Text)) * strtofloat(tirapontos(frmtra.ediPrveM.Text)));
   end;
//endi

end;

procedure TfrmDados.Cds_FuncionariosBeforeScroll(DataSet: TDataSet);
begin
if frmpesqrecbtop <> nil then
   begin
     if frmpesqrecbtop.cbxnfun.Focused then
        begin
          cds_vencto.Edit;
          cds_vencto.FieldByName('pcom').asfloat := cds_funcionarios.fieldbyname('pcom').asfloat;
          cds_vencto.FieldByName('vcom').asfloat  := cds_vencto.fieldbyname('valliq').asfloat*cds_funcionarios.fieldbyname('pcom').asfloat/100;
        end;
     //endi
   end;
//endi
end;

procedure TfrmDados.Cds_NFPBeforePost(DataSet: TDataSet);
begin

if frmpesqnf <> nil then
   begin
     if Cds_nfp.State in [dsinsert, dsedit] then
        begin
          if frmpesqnf.ckbindtot.Checked then
             begin
               cds_nfp.FieldByName('indtot').asString := 'T';
             end
          else
             begin
               cds_nfp.FieldByName('indtot').asString := 'F';
             end;
          //endi
        end;
     //endi

   end;
//endi




iniciatransacao;
end;

procedure TfrmDados.Dts_dMobraDataChange(Sender: TObject; Field: TField);
begin
{
if not dbx_dmobra.Active then
   exit;
//endi
if cds_dmobra.FieldByName('datafim').asString = '' then
   begin
     cds_dmobra.Edit;
     cds_dmobra.FieldByName('completo').asString := 'F';
     cds_dmobra.Post;
   end
else
   begin
     cds_dmobra.Edit;
     cds_dmobra.FieldByName('completo').asString := 'T';
     cds_dmobra.Post;
   end;
//endi
}


end;

procedure TfrmDados.Cds_livrocaixaAfterScroll(DataSet: TDataSet);
begin
  if frmtra <> nil then
     begin
       if frmtra.pctconta.TabIndex = 2 then
          begin
            cds_vencto.Active := false;
            dbx_vencto.Active := false;
            dbx_vencto.SQL.Clear;
            dbx_vencto.SQL.Add('Select * from vencimentos where codlivrocaixa = '+ inttostr( cds_livrocaixa.fieldbyname('codigo').asInteger ) );
            dbx_vencto.Active := true;
            cds_vencto.Active := true;
          end;
       //endi
    end;
  //endi

end;

procedure TfrmDados.Cds_vProdFornAfterScroll(DataSet: TDataSet);
begin
  if frmpesqprodpfor <> nil then
     begin

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Text := 'select max(data_op) as maiordata from dvenda where cpro = '+ inttostr( cds_vprodforn.fieldbyname('cpro').asInteger );
       dbx_exec.Active := true;

       frmpesqprodpfor.lblultvdpi.Caption := dbx_exec.fieldbyname('maiordata').asString;

       dbx_exec.Active := false;
       dbx_exec.SQL.Clear;
       dbx_exec.SQL.Text := 'select max(data_op) as maiordata from vendab where cpro = '+ inttostr( cds_vprodforn.fieldbyname('cpro').asInteger );
       dbx_exec.Active := true;


       frmpesqprodpfor.lblultvdb.Caption := dbx_exec.fieldbyname('maiordata').asString;




     end;
  //endi
end;

procedure tfrmdados.EstornaOperacao;
begin
sql_dados.Rollback(TD);
end;


procedure TfrmDados.cds_cond_pgtoAfterScroll(DataSet: TDataSet);
begin

cds_conddetalhe_pgto.Active := false;
cds_conddetalhe_pgtoccondpgto.DefaultExpression := inttostr(cds_cond_pgto.fieldbyname('codigo').asInteger);
dbx_conddetalhe_pgto.Active := false;
dbx_conddetalhe_pgto.SQL.Clear;
dbx_conddetalhe_pgto.SQL.Add('select * from conddetalhepgto where ccondpgto = '+  inttostr(  cds_cond_pgto.fieldbyname('codigo').asInteger )  );
dbx_conddetalhe_pgto.Active := true;
cds_conddetalhe_pgto.Active := true;
end;

procedure TfrmDados.Dts_PagarUpdateData(Sender: TObject);
var
  iprazo:integer;
  sDataAtu, sData:string;
begin


if not cds_pagar.Active then
   exit;
//endi

try


  sDataAtu := frmmultpgto.edidte.Text;
  iprazo := frmdados.Cds_Pagar.FieldByName('prazo').asInteger;
  sData := frmdados.Cds_pagar.FieldByName('dtv').asString;

  if (frmmultpgto <> nil) then
    if (frmmultpgto.sColuna = 'PRAZO' ) then
     begin
       frmdados.Cds_Pagar.FieldByName('DTV').asString := calc_data(sDataAtu,iPrazo);
     end;
  //endi

  if (frmmultpgto <> nil) then
    if (frmmultpgto.sColuna = 'DTV' ) then
     begin
       frmdados.Cds_pagar.FieldByName('prazo').asfloat := calc_prazo(sDataAtu,sData);
     end;
  //endi

except
  smsg := 'erro ao calcular prazo / data pagamento'
end;


end;

procedure TfrmDados.cds_composicao_prodCalcFields(DataSet: TDataSet);
begin
  cds_composicao_prodsubtotal.Value := cds_composicao_prod.fieldbyname('qtde').AsFloat *   cds_composicao_prod.fieldbyname('vlr_unit').AsFloat;

end;

function tfrmdados.totaliza_formula_geral(filtro:string):real;
var
codigo:integer;
begin
  cds_exec.Close;

  dbx_exec.Close;
  dbx_exec.sql.Clear;
  dbx_exec.SQL.Add('select sum(qtde * vlr_unit) as total from composicao_prod');
  if filtro <> '' then
     dbx_exec.SQL.Add(' '+filtro);


  dbx_exec.Open;

  result := dbx_exec.fieldbyname('total').AsFloat;

end;


function tfrmdados.totaliza_embalagem(filtro:string):real;
var
codigo:integer;
begin
  cds_exec.Close;

  dbx_exec.Close;
  dbx_exec.sql.Clear;
  dbx_exec.SQL.Add('select sum(vlr_unitario) as total from comp_embalagem ');
  if filtro <> '' then
     dbx_exec.SQL.Add(' '+filtro);

  dbx_exec.Open;

  result := dbx_exec.fieldbyname('total').AsFloat;

end;



procedure TfrmDados.cds_tipo_embalagemAfterScroll(DataSet: TDataSet);
var
  total:Real;
begin


  if frmfatorprod <> nil then

     begin

        //if (cds_tipo_embalagem.RecordCount > 0) and (cds_tipo_embalagem.State <> dsinsert)  then


        if (cds_tipo_embalagem.RecordCount > 0)   then
           begin
             


             cds_comp_embalagem.Close;
             cds_comp_embalagemCTIPO_EMB.DefaultExpression := cds_tipo_embalagem.fieldbyname('codigo').AsString;
             dbx_comp_embalagem.Close;
             dbx_comp_embalagem.SQL.Clear;
             dbx_comp_embalagem.SQL.Add('select * from comp_embalagem where ');
             dbx_comp_embalagem.SQL.Add('(ctipo_emb = '+cds_tipo_embalagem.fieldbyname('codigo').AsString+')' );
             dbx_comp_embalagem.Open;
             cds_comp_embalagem.Open;

             total := totaliza_embalagem('where ctipo_emb = '+cds_tipo_embalagem.fieldbyname('codigo').asstring );
             frmfatorprod.lbltotalemb.Caption := formatfloat('###,###,##0.00',total);

             frmfatorprod.lblcustomatprima.Caption :=   FormatFloat('###,###,##0.00', StrToFloat( tirapontos(  frmfatorprod.lbltotalfg.Caption  )  ) *  cds_tipo_embalagem.fieldbyname('REFERENCIA').AsFloat / 100 ) ;

             frmfatorprod.lblcomposicaoemb.Caption := cds_tipo_embalagem.fieldbyname('descricao').AsString;



           end;

     end;

end;

procedure Tfrmdados.roda_script_banco;
var
   vardir, arquivo:string;
   x:integer;
begin
  titulo :=   frmprincipal.Caption;

  vardir := extractfilepath(application.ExeName);
  arquivo :=  vardir+'script.sql';


  if fileexists(arquivo) then
     begin
       frmprincipal.mmoscriptgeral.Clear;
       frmprincipal.mmoscriptgeral.Lines.LoadFromFile(arquivo);
       frmprincipal.mmoestruturadados.Clear;
       for x := 0 to frmprincipal.mmoscriptgeral.Lines.Count - 1 do
         begin
           frmprincipal.mmoestruturadados.Lines.Add( frmprincipal.mmoscriptgeral.Lines[x] );
           if pos(';',frmprincipal.mmoscriptgeral.Lines[x]) > 0  then
              begin
                atualiza_bd;
                frmprincipal.mmoestruturadados.Clear;
              end;


         end;
       frmprincipal.mmoscriptgeral.Clear;
       deletefile(arquivo);
     end;
end;

procedure Tfrmdados.atualiza_bd;
var
  ErrorCode: Integer;

begin
  try


     {Faz a Conexão com a Base de Dados}
     Sql_Dados.Connected  := True;
     Sql_Dados.Open;

     {Tenta Rodar o Script}
     ErrorCode := Sql_Dados.ExecuteDirect( frmprincipal.mmoEstruturaDados.Text );

     {Se o SqlConnection retornar "0" é porque tudo correu bem}
     if ErrorCode = 0 then
     begin
        frmprincipal.Caption :=  titulo + ' / Banco de dados atualizado com sucesso!';
     end;

     {Se retornar diferente de "0" é porque algo de errado aconteceu}
     if ErrorCode <> 0 then // only 0 should be correct
       raise Exception.Create( 'Error: code = ' + IntToStr( ErrorCode ) );

     Sql_Dados.Connected  := false;
     Sql_Dados.close;

  except
     on E: Exception do
     begin
       //ShowMessage( E.Message );
       frmprincipal.Caption :=  titulo + ' / Não houve sucesso na atualização de uma ou mais tabelas!';
       Sql_Dados.Connected  := false;
       Sql_Dados.close;

     end;
  end

end;



procedure TfrmDados.cds_logtableBeforePost(DataSet: TDataSet);
begin
Iniciatransacao;
end;

procedure tfrmdados.atualizancm(ncm:string);
var
  {
  porcibpt, vlribpt, vlrestadual, vlrmunicipal, porcestadual, porcmunicipal:Currency;

  schave, sversao, sfonte:string;


  svigenciainicio:String;


  svigenciafim:String;
  }




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

  codigo:integer;

begin

  if ncm = '' then
     exit;

  try

      XMLDocument1.Active := False;
      XMLDocument1.LoadFromFile('http://aplicativos-marcosbras.rhcloud.com/wsibpt.php?chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString+'&campo=codigo'+'&valor='+ncm+'&uf='+ lowercase( frmdados.cds_config.fieldbyname('campo16').AsString  ));
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


      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('select max(codigo) as codigo from ibpt');
      dbx_exec.Active := true;


      codigo := dbx_exec.fieldbyname('codigo').AsInteger + 1;



      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('insert into ibpt (codigo, codncmnbs, ex, tipo, descricao, nacionalfederal, importadosfederal, estadual, municipal, vigenciainicio, vigenciafim, chave, versao, fonte)');
      dbx_exec.SQL.Add(' values (:codigo, :codncmnbs, :ex, :tipo, :descricao, :nacionalfederal, :importadosfederal, :estadual, :municipal, :vigenciainicio, :vigenciafim, :chave, :versao, :fonte)');

      dbx_exec.Params.ParamByName('codigo').AsInteger :=  codigo;
      dbx_exec.Params.ParamByName('codncmnbs').AsString :=  ncm;
      dbx_exec.Params.ParamByName('ex').AsString :=  sex;
      dbx_exec.Params.ParamByName('versao').AsString :=  sversao;
      dbx_exec.Params.ParamByName('tipo').AsString :=  stipo;
      dbx_exec.Params.ParamByName('descricao').AsString :=  sdescricao;

      dbx_exec.Params.ParamByName('vigenciainicio').AsString :=  svigenciainicio;
      dbx_exec.Params.ParamByName('vigenciafim').AsString :=    svigenciafim;

      dbx_exec.Params.ParamByName('chave').AsString :=    schave;
      dbx_exec.Params.ParamByName('fonte').AsString :=    sfonte;

      dbx_exec.Params.ParamByName('nacionalfederal').AsFloat :=    faliqnac;
      dbx_exec.Params.ParamByName('importadosfederal').AsFloat :=      faliqimp;
      dbx_exec.Params.ParamByName('estadual').AsFloat :=      festadual;
      dbx_exec.Params.ParamByName('municipal').AsFloat :=      fmunicipal;

      dbx_exec.ExecSQL;








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

procedure TfrmDados.Cds_sVendaAfterDelete(DataSet: TDataSet);
begin
Permite_Excluir(DataSet);
 AtualizaDados;
end;

procedure TfrmDados.Cds_sVendaBeforeDelete(DataSet: TDataSet);
begin
  IniciaTransacao;
end;

end.
