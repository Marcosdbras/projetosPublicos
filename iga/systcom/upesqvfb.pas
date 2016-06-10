unit upesqvfb;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, FMTBcd, DBClient, Provider;

type
  TfrmPesqVfb = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    dbgvenda: TDBGrid;
    dbgdetvenda: TDBGrid;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    Label6: TLabel;
    lbltotals: TLabel;
    Label7: TLabel;
    lbltotale: TLabel;
    cbxnomecli: TDBLookupComboBox;
    Label8: TLabel;
    edicodigo: TEdit;
    Label9: TLabel;
    dbgvencto: TDBGrid;
    lbldin: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lblaprazo: TLabel;
    Label10: TLabel;
    lbltotal: TLabel;
    btncancelap: TButton;
    Label11: TLabel;
    cbxnomeusu: TDBLookupComboBox;
    Label12: TLabel;
    ediid: TEdit;
    Dbx_Vendab: TSQLQuery;
    IntegerField47: TIntegerField;
    Dbx_VendabNPRO: TStringField;
    Dbx_VendabCPRO: TIntegerField;
    Dbx_VendabQTDE: TFMTBCDField;
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
    Dbx_VendabPDESC: TBCDField;
    Dbx_VendabVDESC: TFMTBCDField;
    Dbx_VendabCUIN: TIntegerField;
    Dbx_VendabACTDESC: TStringField;
    Dbx_VendabSUBTOTALC: TFMTBCDField;
    Dbx_VendabCODSVENDA: TIntegerField;
    Dbx_VendabOBS: TMemoField;
    Dbx_VendabCOMENTARIO: TStringField;
    Dbx_VendabITEMECF: TStringField;
    Dbx_VendabCMDB: TSmallintField;
    Dbx_VendabTPCMDB: TStringField;
    Dbx_VendabHORA_OP: TTimeField;
    Dbx_VendabQUAANT: TFMTBCDField;
    Dbx_VendabQUAPOS: TFMTBCDField;
    Dbx_VendabCEMP: TIntegerField;
    Dsp_Vendab: TDataSetProvider;
    Cds_Vendab: TClientDataSet;
    IntegerField64: TIntegerField;
    Cds_VendabNPRO: TStringField;
    Cds_VendabCPRO: TIntegerField;
    Cds_VendabQTDE: TFMTBCDField;
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
    Cds_VendabPDESC: TBCDField;
    Cds_VendabVDESC: TFMTBCDField;
    Cds_VendabCUIN: TIntegerField;
    Cds_VendabACTDESC: TStringField;
    Cds_VendabSUBTOTALC: TFMTBCDField;
    Cds_VendabCODSVENDA: TIntegerField;
    Cds_VendabOBS: TMemoField;
    Cds_VendabCOMENTARIO: TStringField;
    Cds_VendabITEMECF: TStringField;
    Cds_VendabCMDB: TSmallintField;
    Cds_VendabTPCMDB: TStringField;
    Cds_VendabHORA_OP: TTimeField;
    Cds_VendabQUAANT: TFMTBCDField;
    Cds_VendabQUAPOS: TFMTBCDField;
    Cds_VendabCEMP: TIntegerField;
    Dts_Vendab: TDataSource;
    Dbx_sVenda: TSQLQuery;
    IntegerField1: TIntegerField;
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
    Dbx_sVendaSITUACAO: TIntegerField;
    Dbx_sVendaNCO: TIntegerField;
    Dbx_sVendaTIPOOP: TIntegerField;
    Dbx_sVendaTIPOENT: TIntegerField;
    Dbx_sVendaNUMORC: TIntegerField;
    Dbx_sVendaNUMPED: TIntegerField;
    Dbx_sVendaABSDESC: TFMTBCDField;
    Dbx_sVendaTOTPAGAR: TFMTBCDField;
    Dbx_sVendaTOTGPAGAR: TFMTBCDField;
    Dbx_sVendaSAIDA: TDateField;
    Dbx_sVendaVOLUMES: TStringField;
    Dbx_sVendaRESUNI: TStringField;
    Dbx_sVendaPRAZO_VALIDADE: TDateField;
    Dbx_sVendaTOTGPRODD: TFMTBCDField;
    Dbx_sVendaTPNF: TSmallintField;
    Dbx_sVendaCNAT: TSmallintField;
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
    Dbx_sVendaQUANTIDADE: TStringField;
    Dbx_sVendaESPECIE: TStringField;
    Dbx_sVendaMARCA: TStringField;
    Dbx_sVendaNUMERO: TStringField;
    Dbx_sVendaPESOB: TStringField;
    Dbx_sVendaPESOL: TStringField;
    Dbx_sVendaFRETEPOR: TStringField;
    Dbx_sVendaPLACAVEI: TStringField;
    Dbx_sVendaUFVEI: TStringField;
    Dbx_sVendaVLRDUP1: TFMTBCDField;
    Dbx_sVendaVCTDUP1: TDateField;
    Dbx_sVendaVLRDUP2: TFMTBCDField;
    Dbx_sVendaVCTDUP2: TDateField;
    Dbx_sVendaVLRDUP3: TFMTBCDField;
    Dbx_sVendaVCTDUP3: TDateField;
    Dbx_sVendaVLRDUP4: TFMTBCDField;
    Dbx_sVendaVCTDUP4: TDateField;
    Dbx_sVendaFRETEP: TSmallintField;
    Dbx_sVendaDA1: TStringField;
    Dbx_sVendaDA2: TStringField;
    Dbx_sVendaDA3: TStringField;
    Dbx_sVendaDA4: TStringField;
    Dbx_sVendaDA5: TStringField;
    Dbx_sVendaDA6: TStringField;
    Dbx_sVendaDA7: TStringField;
    Dbx_sVendaDA8: TStringField;
    Dbx_sVendaCTRANSP: TIntegerField;
    Dbx_sVendaIMPDESTQCONT: TStringField;
    Dbx_sVendaNUMDUP1: TStringField;
    Dbx_sVendaNUMDUP2: TStringField;
    Dbx_sVendaNUMDUP3: TStringField;
    Dbx_sVendaNUMDUP4: TStringField;
    Dbx_sVendaPRAZO1: TSmallintField;
    Dbx_sVendaPRAZO2: TSmallintField;
    Dbx_sVendaPRAZO3: TSmallintField;
    Dbx_sVendaPRAZO4: TSmallintField;
    Dbx_sVendaLANCADO: TStringField;
    Dbx_sVendaORIGINADO: TSmallintField;
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
    Dbx_sVendaDATAFEC: TDateField;
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
    Dbx_sVendaHRCAD: TStringField;
    Dbx_sVendaHRFEC: TStringField;
    Dbx_sVendaMAQUINA: TStringField;
    Dbx_sVendaECFLANCADO: TStringField;
    Dbx_sVendaIDMAQ: TIntegerField;
    Dbx_sVendaNCUPOMF: TIntegerField;
    Dbx_sVendaST: TStringField;
    Dbx_sVendaCMAT_RESTAURAR: TIntegerField;
    Dbx_sVendaCEMP: TIntegerField;
    Dbx_sVendaCTAB: TIntegerField;
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
    Dbx_sVendaNORC: TIntegerField;
    Dbx_sVendaCUSUB: TIntegerField;
    Dbx_sVendaCUSUMA: TIntegerField;
    Dbx_sVendaIDTERMINAL: TIntegerField;
    Dsp_sVenda: TDataSetProvider;
    Cds_sVenda: TClientDataSet;
    IntegerField16: TIntegerField;
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
    Cds_sVendaSITUACAO: TIntegerField;
    Cds_sVendaNCO: TIntegerField;
    Cds_sVendaTIPOOP: TIntegerField;
    Cds_sVendaTIPOENT: TIntegerField;
    Cds_sVendaNUMORC: TIntegerField;
    Cds_sVendaNUMPED: TIntegerField;
    Cds_sVendaABSDESC: TFMTBCDField;
    Cds_sVendaTOTPAGAR: TFMTBCDField;
    Cds_sVendaTOTGPAGAR: TFMTBCDField;
    Cds_sVendaSAIDA: TDateField;
    Cds_sVendaVOLUMES: TStringField;
    Cds_sVendaRESUNI: TStringField;
    Cds_sVendaPRAZO_VALIDADE: TDateField;
    Cds_sVendaTOTGPRODD: TFMTBCDField;
    Cds_sVendaTPNF: TSmallintField;
    Cds_sVendaCNAT: TSmallintField;
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
    Cds_sVendaQUANTIDADE: TStringField;
    Cds_sVendaESPECIE: TStringField;
    Cds_sVendaMARCA: TStringField;
    Cds_sVendaNUMERO: TStringField;
    Cds_sVendaPESOB: TStringField;
    Cds_sVendaPESOL: TStringField;
    Cds_sVendaFRETEPOR: TStringField;
    Cds_sVendaPLACAVEI: TStringField;
    Cds_sVendaUFVEI: TStringField;
    Cds_sVendaVLRDUP1: TFMTBCDField;
    Cds_sVendaVCTDUP1: TDateField;
    Cds_sVendaVLRDUP2: TFMTBCDField;
    Cds_sVendaVCTDUP2: TDateField;
    Cds_sVendaVLRDUP3: TFMTBCDField;
    Cds_sVendaVCTDUP3: TDateField;
    Cds_sVendaVLRDUP4: TFMTBCDField;
    Cds_sVendaVCTDUP4: TDateField;
    Cds_sVendaFRETEP: TSmallintField;
    Cds_sVendaDA1: TStringField;
    Cds_sVendaDA2: TStringField;
    Cds_sVendaDA3: TStringField;
    Cds_sVendaDA4: TStringField;
    Cds_sVendaDA5: TStringField;
    Cds_sVendaDA6: TStringField;
    Cds_sVendaDA7: TStringField;
    Cds_sVendaDA8: TStringField;
    Cds_sVendaCTRANSP: TIntegerField;
    Cds_sVendaIMPDESTQCONT: TStringField;
    Cds_sVendaNUMDUP1: TStringField;
    Cds_sVendaNUMDUP2: TStringField;
    Cds_sVendaNUMDUP3: TStringField;
    Cds_sVendaNUMDUP4: TStringField;
    Cds_sVendaPRAZO1: TSmallintField;
    Cds_sVendaPRAZO2: TSmallintField;
    Cds_sVendaPRAZO3: TSmallintField;
    Cds_sVendaPRAZO4: TSmallintField;
    Cds_sVendaLANCADO: TStringField;
    Cds_sVendaORIGINADO: TSmallintField;
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
    Cds_sVendaDATAFEC: TDateField;
    Cds_sVendatotg: TFloatField;
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
    Cds_sVendaftotm: TFloatField;
    Cds_sVendaftotp: TFloatField;
    Cds_sVendaHRCAD: TStringField;
    Cds_sVendaHRFEC: TStringField;
    Cds_sVendaMAQUINA: TStringField;
    Cds_sVendaECFLANCADO: TStringField;
    Cds_sVendaIDMAQ: TIntegerField;
    Cds_sVendaNCUPOMF: TIntegerField;
    Cds_sVendaST: TStringField;
    Cds_sVendaftotc: TFloatField;
    Cds_sVendaCMAT_RESTAURAR: TIntegerField;
    Cds_sVendaCEMP: TIntegerField;
    Cds_sVendaCTAB: TIntegerField;
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
    Cds_sVendaNORC: TIntegerField;
    Cds_sVendaCUSUB: TIntegerField;
    Cds_sVendaCUSUMA: TIntegerField;
    Cds_sVendaIDTERMINAL: TIntegerField;
    Dts_sVenda: TDataSource;
    Dbx_Vencto: TSQLQuery;
    Dbx_VenctoCODIGO: TIntegerField;
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
    Dbx_VenctoORIGINADO: TSmallintField;
    Dbx_VenctoPRAZO: TSmallintField;
    Dbx_VenctoNPED: TIntegerField;
    Dbx_VenctoPARTE: TStringField;
    Dbx_VenctoNOS: TIntegerField;
    Dbx_VenctoDTB: TDateField;
    Dbx_VenctoCCLA: TIntegerField;
    Dbx_VenctoNUMNF: TStringField;
    Dbx_VenctoVALORREAL: TFMTBCDField;
    Dbx_VenctoECFLANCADO: TStringField;
    Dbx_VenctoMAQUINA: TStringField;
    Dbx_VenctoIDMAQ: TIntegerField;
    Dbx_VenctoCFUN: TIntegerField;
    Dbx_VenctoCODLIVROCAIXA: TIntegerField;
    Dbx_VenctoPCOM: TBCDField;
    Dbx_VenctoVCOM: TFMTBCDField;
    Dbx_VenctoCEMP: TIntegerField;
    Dbx_VenctoCDESC: TIntegerField;
    Dbx_VenctoCODMAT_RESTAURAR: TIntegerField;
    Dbx_VenctoBAIXARTODOS: TStringField;
    Dsp_Vencto: TDataSetProvider;
    Cds_Vencto: TClientDataSet;
    Cds_VenctoCODIGO: TIntegerField;
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
    Cds_VenctoORIGINADO: TSmallintField;
    Cds_VenctoPRAZO: TSmallintField;
    Cds_VenctoNPED: TIntegerField;
    Cds_VenctoPARTE: TStringField;
    Cds_VenctoNOS: TIntegerField;
    Cds_VenctoDTB: TDateField;
    Cds_VenctoCCLA: TIntegerField;
    Cds_VenctoNUMNF: TStringField;
    Cds_VenctoVALORREAL: TFMTBCDField;
    Cds_VenctoECFLANCADO: TStringField;
    Cds_VenctoMAQUINA: TStringField;
    Cds_VenctoIDMAQ: TIntegerField;
    Cds_VenctoCFUN: TIntegerField;
    Cds_VenctoCODLIVROCAIXA: TIntegerField;
    Cds_VenctoPCOM: TBCDField;
    Cds_VenctoVCOM: TFMTBCDField;
    Cds_VenctoCEMP: TIntegerField;
    Cds_VenctoCDESC: TIntegerField;
    Cds_VenctoCODMAT_RESTAURAR: TIntegerField;
    Cds_VenctoBAIXARTODOS: TStringField;
    Dts_Vencto: TDataSource;
    lbldatafec: TDBText;
    lblnumped: TDBText;
    lblnco: TDBText;
    Button1: TButton;
    dbx_clientes: TSQLQuery;
    dsp_clientes: TDataSetProvider;
    cds_clientes: TClientDataSet;
    dts_clientes: TDataSource;
    Dbx_VendabCODICMS: TIntegerField;
    Dbx_VendabCODCOFINS: TIntegerField;
    Dbx_VendabCODPIS: TIntegerField;
    Dbx_VendabCODIPI: TIntegerField;
    Dbx_VendabCODSITA: TIntegerField;
    Dbx_VendabCODSITB: TIntegerField;
    Cds_VendabCODICMS: TIntegerField;
    Cds_VendabCODCOFINS: TIntegerField;
    Cds_VendabCODPIS: TIntegerField;
    Cds_VendabCODIPI: TIntegerField;
    Cds_VendabCODSITA: TIntegerField;
    Cds_VendabCODSITB: TIntegerField;
    dbx_vprodutos: TSQLQuery;
    dsp_vprodutos: TDataSetProvider;
    cds_vprodutos: TClientDataSet;
    dts_vprodutos: TDataSource;
    dbx_AliqImpFis: TSQLQuery;
    dsp_AliqImpFis: TDataSetProvider;
    cds_AliqImpFis: TClientDataSet;
    dts_AliqImpFis: TDataSource;
    dbx_unidade: TSQLQuery;
    dsp_unidade: TDataSetProvider;
    cds_unidade: TClientDataSet;
    dts_unidade: TDataSource;
    dbx_vendabb: TSQLQuery;
    dsp_vendabb: TDataSetProvider;
    cds_vendabb: TClientDataSet;
    dts_vendabb: TDataSource;
    cds_sita: TClientDataSet;
    dsp_sita: TDataSetProvider;
    dbx_sita: TSQLQuery;
    dts_sita: TDataSource;
    SQLQuery1: TSQLQuery;
    Cds_sVendanomecli: TStringField;
    Button2: TButton;
    dbx_config: TSQLQuery;
    dbx_ipi: TSQLQuery;
    dbx_cofins: TSQLQuery;
    dbx_pis: TSQLQuery;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaEnter(Sender: TObject);
    procedure dbgdetvendaEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edicodigoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgdetvendaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgvenctoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure Cds_sVendaCalcFields(DataSet: TDataSet);
    procedure Dts_sVendaDataChange(Sender: TObject; Field: TField);
    procedure btncancelapClick(Sender: TObject);
    procedure exportarped;
    procedure exportarpedsat;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sTitRel:string;

  end;

var
  frmPesqVfb: TfrmPesqVfb;

implementation

uses uGeral, udados, ucancelacaixaind;

{$R *.DFM}

procedure TfrmPesqVfb.FormShow(Sender: TObject);
var
   vardir: String;
begin
   lblaprazo.Caption := '0,00';
   lbldin.Caption := '0,00';
   lbltotal.Caption := '0,00';


   vardir := ExtractFilePath(Application.ExeName);







   with frmdados do
     begin

       cds_usuarios.Active := false;
       dbx_usuarios.Active := false;
       dbx_usuarios.SQL.Clear;
       dbx_usuarios.SQL.Add('Select * from usuarios order by nome');
       dbx_usuarios.Active := true;
       cds_usuarios.Active := true;

       cds_clientes.Active := false;
       dbx_clientes.Active := false;
       dbx_clientes.SQL.Clear;
       dbx_clientes.SQL.Add('Select * from clientes order by nome');
       dbx_clientes.Active := true;
       cds_clientes.Active := true;

       cds_tipo_pgto.Active := false;
       dbx_tipo_pgto.Active := false;
       dbx_tipo_pgto.SQL.Clear;
       dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto');
       dbx_tipo_pgto.Active := true;
       cds_tipo_pgto.Active := true;

     end;
   //endi


   Cds_sVendanomecli.KeyFields := 'ccli';
   Cds_sVendanomecli.LookupDataSet := frmdados.cds_Clientes;
   Cds_sVendanomecli.LookupKeyFields := 'codigo';
   Cds_sVendanomecli.LookupResultField := 'nome';




   spdlimpar.Click;
   edicodigo.Text := '';
   ediid.Text := '1';


   //showmessage(frmdados.Cds_Clientes.FieldByName('codigo').asString);
end;

procedure TfrmPesqVfb.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVfb.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVfb.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqVfb.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVfb.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  
  Action:=caFree;
  frmPesqVfb:=nil;
  form_ativo := '';
end;

procedure TfrmPesqVfb.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqVfb.dbgvendaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if Cds_sVenda.State in [dsinsert, dsedit] then
      Cds_sVenda.Post;
   //endi
//endi
end;

procedure TfrmPesqVfb.dbgvendaEnter(Sender: TObject);
begin
tabela := 'sVenda';
end;

procedure TfrmPesqVfb.dbgdetvendaEnter(Sender: TObject);
begin
tabela := 'Vendab';
end;

procedure TfrmPesqVfb.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVfb.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVfb.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqVfb.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF : String;
  ftotcusto, ftotpreco:real;
  icCli, iid, icusu : integer;
begin



  Cds_sVenda.Active := false;
  Dbx_sVenda.Active := false;

  Cds_Vendab.Active := false;
  dbx_vendab.Active := false;

  cds_Vencto.Active := false;
  dbx_Vencto.Active := false;

  frmdados.dbx_Exec.Active := false;


  // inicializando variáveis comuns
  sCompo := '(coalesce (nco,0) > 0)';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  icCli := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  //sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := bar_is_point( sDataI  );

  sDataF := datetostr(dtpdataF.Date);
  //sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := bar_is_point( sDataF  );

  if cbxnomecli.Text <> '' then
     begin
       iccli := frmdados.Cds_Clientes.FieldByName('codigo').asInteger;
     end;
  //endi

  if cbxnomeusu.Text <> '' then
     begin
       icusu := frmdados.Cds_usuarios.FieldByName('codigo').asInteger;
     end;
  //endi

  if ediid.Text <> '' then
     begin
       iid := strtoint(ediid.text);
     end;
  //endi


  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoF
  if ( icCli <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + 'Cliente: ' + cbxnomecli.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Cliente: ' + cbxnomecli.Text;
          end;
       //endif
     end;
  //endif


  //Bloco de filtro de cusu
  if ( icusu > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cusub = ' + inttostr(icusu) + ')';
            sTitRel := sTitRel + 'Usuário: ' + cbxnomeusu.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cusub = ' + inttostr(icusu) + ')';
            sTitRel := sTitRel + ' / Usuário: ' + cbxnomeusu.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de cusu
  if ( iid > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( idterminal = ' + inttostr(iid) + ')';
            sTitRel := sTitRel + 'Terminal: ' + ediid.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( idterminal = ' + inttostr(iid) + ')';
            sTitRel := sTitRel + ' / Usuário: ' + ediid.Text;
          end;
       //endif
     end;
  //endif




  // executando o filtro



  try
    with Dbx_sVenda do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from sVenda where '+sCompo+'order by datacad, numped')
         else
            sql.Add('select * from sVenda order by datacad, numped');
         //endi
         active := true;
       end;
    //endi
    //showmessage(frmdados.dbx_svenda.SQL.text);
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;

      Cds_sVenda.Active := true;

      Cds_Vendab.Active := false;
      dbx_vendab.Active := false;

      cds_Vencto.Active := false;
      dbx_Vencto.Active := false;

      frmdados.dbx_Exec.Active := false;

      //showmessage(cds_svenda.fieldbyname('nco').asString);

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

          frmdados.dbx_Exec.Active := false;
          frmdados.dbx_Exec.SQL.Clear;
          frmdados.dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('S')+')');
          frmdados.dbx_Exec.Active := true;
          lbltotals.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);

          frmdados.dbx_Exec.Active := false;
          frmdados.dbx_Exec.SQL.Clear;
          frmdados.dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('E')+')');
          frmdados.dbx_Exec.Active := true;
          lbltotale.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);

          frmdados.dbx_Exec.Active := false;
          frmdados.dbx_Exec.SQL.Clear;
          frmdados.dbx_Exec.SQL.Add('Select sum(valorreal) as total from Vencimentos where nco = '+cds_svenda.fieldbyname('nco').asString);
          frmdados.dbx_Exec.Active := true;
          lblaprazo.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);

          frmdados.dbx_Exec.Active := false;

        end;
     //endi


       if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totpagar').asfloat then
          begin

            lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('totpagar').asfloat);

          end
       else
          begin

            lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('din').asfloat);

          end;
       //endi

       lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos( lblaprazo.Caption  )) +  strtofloat(tirapontos( lbldin.Caption  ))  )

end;

procedure TfrmPesqVfb.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  lbltotals.Caption := '0,00';
  lbltotale.Caption := '0,00';


  //cbxnomecli.KeyField := 'codigo';
  //cbxnomecli.ListSource.DataSet  := frmdados.Cds_Clientes;
  //cbxnomecli.ListField := 'Nome';

  spdfiltrar.Click;
end;

procedure TfrmPesqVfb.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqVfb.edicodigoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqVfb.dbgvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVfb.dbgdetvendaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVfb.dbgvenctoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqVfb.SpeedButton1Click(Sender: TObject);
begin
 //frmmrvf:=tfrmmrvf.create(self);
 //frmmrvf.showmodal;
 //frmmrvf.free;
end;

procedure TfrmPesqVfb.Cds_sVendaCalcFields(DataSet: TDataSet);
var ftotm, ftotp, ftotc :real;

begin
exit;
with frmdados do
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

  end;

//totalizafrmpesqvdprod;
//cds_svendatotg.Value := 0;
end;

procedure TfrmPesqVfb.Dts_sVendaDataChange(Sender: TObject; Field: TField);
begin

cds_vendab.Active := false;
dbx_vendab.Active := false;

cds_Vencto.Active := false;
dbx_Vencto.Active := false;


frmdados.dbx_Exec.Active := false;


lbltotals.Caption := '0,00';
lbltotale.Caption := '0,00';
lbldin.Caption := '0,00';
lbltotal.Caption := '0,00';

if cds_svenda.fieldbyname('din').asfloat > cds_svenda.fieldbyname('totpagar').asfloat then
   begin
     lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('totpagar').asfloat);
   end
else
   begin
     lbldin.Caption := formatfloat('###,###,#0.00',cds_svenda.fieldbyname('din').asfloat);
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


     frmdados.dbx_Exec.Active := false;
     frmdados.dbx_Exec.SQL.Clear;
     frmdados.dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('S')+')');
     frmdados.dbx_Exec.Active := true;
     lbltotals.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);

     frmdados.dbx_Exec.Active := false;
     frmdados.dbx_Exec.SQL.Clear;
     frmdados.dbx_Exec.SQL.Add('Select sum(qtde*prve) as total from vendab where (controle = '+cds_svenda.fieldbyname('nco').asString+') and (EouS = '+quotedstr('E')+')');
     frmdados.dbx_Exec.Active := true;
     lbltotale.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);

     frmdados.dbx_Exec.Active := false;
     frmdados.dbx_Exec.SQL.Clear;
     frmdados.dbx_Exec.SQL.Add('Select sum(valorreal) as total from Vencimentos where nco = '+cds_svenda.fieldbyname('nco').asString);
     frmdados.dbx_Exec.Active := true;
     lblaprazo.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);

     frmdados.dbx_Exec.Active := false;





     lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos( lblaprazo.Caption  )) +  strtofloat(tirapontos( lbldin.Caption  ))  );

   end;
//endi

end;

procedure TfrmPesqVfb.btncancelapClick(Sender: TObject);
begin

  frmcancelacaixaind := tfrmcancelacaixaind.create(self);
  frmcancelacaixaind.showmodal;
  frmcancelacaixaind.free;

end;

procedure TfrmPesqVfb.exportarped;
var f:textfile;
vardir:string;
codigo, nome:string;
begin

vardir := extractfilepath(application.ExeName);

  codigo := '';
  nome := '';

  Cds_Clientes.Active   := false;
  Dbx_Clientes.Active := false;
  Dbx_Clientes.SQL.Clear;
  Dbx_Clientes.SQL.Add('select * from clientes');
  Dbx_Clientes.Active := true;
  Cds_Clientes.Active := true;

  if Cds_Clientes.Locate('codigo',inttostr(Cds_sVenda.fieldbyname('ccli').asInteger),[]) then
     begin
       codigo := Cds_Clientes.fieldbyname('codigo').AsString;
       nome := Cds_Clientes.fieldbyname('nome').AsString;;

     end;



  cds_sita.Active := false;
  dbx_sita.Active := false;
  dbx_sita.sql.Clear;
  dbx_sita.SQL.Add('select * from sita');
  cds_sita.Active := true;
  cds_sita.Active := true;

  cds_vprodutos.Active := false;
  dbx_vprodutos.Active := false;
  dbx_vprodutos.sql.Clear;
  dbx_vprodutos.SQL.Add('select * from vprodutos');
  cds_vprodutos.Active := true;
  cds_vprodutos.Active := true;

  cds_AliqImpFis.Active := false;
  dbx_AliqImpFis.Active := false;
  dbx_AliqImpFis.sql.Clear;
  dbx_AliqImpFis.SQL.Add('select * from AliqImpFis');
  cds_AliqImpFis.Active := true;
  cds_AliqImpFis.Active := true;

  cds_unidade.Active := false;
  dbx_unidade.Active := false;
  dbx_unidade.sql.Clear;
  dbx_unidade.SQL.Add('select * from unidade');
  cds_unidade.Active := true;
  cds_unidade.Active := true;

  AssignFile(f,vardir+'venda_nro' + inttostr( Cds_sVenda.fieldbyname('codigo').asInteger ) + nome + codigo +'.txt');
  rewrite(f);

  if Cds_Clientes.Locate('codigo',inttostr(Cds_sVenda.fieldbyname('ccli').asInteger),[]) then
     begin
       Writeln(f,'[cliente'+formatfloat('00000',cds_clientes.fieldbyname('codigo').asfloat)+']');
       Writeln(f,'CNPJ='+cds_clientes.fieldbyname('cpf').asString);
       Writeln(f,'IE='+cds_clientes.fieldbyname('ie').asString);
       Writeln(f,'NomeRazao='+cds_clientes.fieldbyname('nome').asString);
       Writeln(f,'Fantasia='+cds_clientes.fieldbyname('fantasia').asString);
       Writeln(f,'Fone='+cds_clientes.fieldbyname('telefones').asString);
       Writeln(f,'CEP='+cds_clientes.fieldbyname('cepent').asString);
       Writeln(f,'Logradouro='+cds_clientes.fieldbyname('endent').asString);
       Writeln(f,'Numero='+cds_clientes.fieldbyname('nroent').asString);
       Writeln(f,'Complemento='+cds_clientes.fieldbyname('complent').asString);
       Writeln(f,'Bairro='+cds_clientes.fieldbyname('bairroent').asString);
       Writeln(f,'Cidade='+cds_clientes.fieldbyname('cidadeent').asString);
       Writeln(f,'Estado='+cds_clientes.fieldbyname('estadoent').asString);
     end;
  //endi


  cds_Vendabb.Active := false;
  //cds_Vendabcodsvenda.DefaultExpression := frmdados.cds_sVenda.fieldbyname('codigo').asString;
  //cds_VendabImpNf.DefaultExpression := 'T';
  dbx_Vendabb.Active := false;
  dbx_Vendabb.SQL.Clear;
  dbx_Vendabb.SQL.Add('Select * from Vendab where codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) );
  dbx_Vendabb.Active := true;
  cds_Vendabb.Active := true;



  while not cds_vendabb.Eof do
    begin

      Writeln(f,'[produto'+formatfloat('00000',Cds_vendabb.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'CPRO='+cds_vendabb.fieldbyname('cpro').asString);
      Writeln(f,'NPRO='+cds_vendabb.fieldbyname('npro').asString);
      Writeln(f,'QTDE='+floattostr(cds_vendabb.fieldbyname('qtde').asfloat));
      Writeln(f,'PRVE='+floattostr(cds_vendabb.fieldbyname('prve').asfloat));
      Writeln(f,'SUBTOTAL='+floattostr(cds_vendabb.fieldbyname('subtotal').asfloat));
      //Writeln(f,'CAUX='+cds_vendabb.fieldbyname('caux').asString);

      if Cds_vprodutos.Locate('cdescprod',cds_vendabb.fieldbyname('cpro').AsInteger,[]) then
         begin
           Writeln(f,'NCM='+cds_vprodutos.fieldbyname('ncm').asString);
           Writeln(f,'CEST='+cds_vprodutos.fieldbyname('cest').asString);
         end;
      //endi

      if Cds_AliqImpFis.Locate('codigo',cds_vendabb.fieldbyname('codicms').AsInteger,[]) then
         begin
           Writeln(f,'ICMS='+cds_aliqimpfis.fieldbyname('sigla').asString);
         end;
      //endi

      if Cds_unidade.Locate('codigo',cds_vendabb.fieldbyname('cuin').AsInteger,[]) then
         begin
           Writeln(f,'UNIDADE='+cds_unidade.fieldbyname('descricao').asString);
         end;
      //endi


      if Cds_sita.Locate('codigo',cds_vendabb.fieldbyname('codsita').AsInteger,[]) then
         begin
           Writeln(f,'ORIGEM='+cds_sita.fieldbyname('sigla').asString);
         end;
      //endi



      Cds_vendabb.Next;

    end;
  //endi

  CloseFile(f);

  showmessage('Exportação concluida');

end;


procedure TfrmPesqVfb.exportarpedsat;
var f:textfile;
vardir:string;
codigo, nome:string;
ssigla:string;
faliq:real;
begin

vardir := extractfilepath(application.ExeName);

  codigo := '';
  nome := '';

  Dbx_config.Active := false;
  Dbx_config.SQL.Clear;
  Dbx_config.SQL.Add('select * from config');
  Dbx_config.Active := true;

  dbx_ipi.Active := false;
  dbx_ipi.sql.Clear;
  dbx_ipi.SQL.Add('select * from ipi');
  dbx_ipi.Active := true;

  dbx_pis.Active := false;
  dbx_pis.sql.Clear;
  dbx_pis.SQL.Add('select * from pis');
  dbx_pis.Active := true;

  dbx_cofins.Active := false;
  dbx_cofins.sql.Clear;
  dbx_cofins.SQL.Add('select * from ipi');
  dbx_cofins.Active := true;

  Cds_Clientes.Active   := false;
  Dbx_Clientes.Active := false;
  Dbx_Clientes.SQL.Clear;
  Dbx_Clientes.SQL.Add('select * from clientes');
  Dbx_Clientes.Active := true;
  Cds_Clientes.Active := true;

  if Cds_Clientes.Locate('codigo',inttostr(Cds_sVenda.fieldbyname('ccli').asInteger),[]) then
     begin
       codigo := Cds_Clientes.fieldbyname('codigo').AsString;
       nome := Cds_Clientes.fieldbyname('nome').AsString;

     end;

  cds_sita.Active := false;
  dbx_sita.Active := false;
  dbx_sita.sql.Clear;
  dbx_sita.SQL.Add('select * from sita');
  cds_sita.Active := true;
  cds_sita.Active := true;

  cds_vprodutos.Active := false;
  dbx_vprodutos.Active := false;
  dbx_vprodutos.sql.Clear;
  dbx_vprodutos.SQL.Add('select * from vprodutos');
  cds_vprodutos.Active := true;
  cds_vprodutos.Active := true;

  cds_AliqImpFis.Active := false;
  dbx_AliqImpFis.Active := false;
  dbx_AliqImpFis.sql.Clear;
  dbx_AliqImpFis.SQL.Add('select * from AliqImpFis');
  cds_AliqImpFis.Active := true;
  cds_AliqImpFis.Active := true;

  cds_unidade.Active := false;
  dbx_unidade.Active := false;
  dbx_unidade.sql.Clear;
  dbx_unidade.SQL.Add('select * from unidade');
  cds_unidade.Active := true;
  cds_unidade.Active := true;

  AssignFile(f,vardir+'sat_nro' + inttostr( Cds_sVenda.fieldbyname('codigo').asInteger ) + nome + codigo +'.nfe');
  rewrite(f);

  Write(f,'01'); //1 - id_reg
  Write(f,'59'); //2 - mod_nfe
  Write(f,'001'); //3 - serie_nfe
  Write(f,'S');  //4  - tipo_docto
  Write(f, AjustaStr ( 'VENDA',30 )   );   //5 - desc_operacao
  Write(f,formatfloat('000000',Cds_sVenda.fieldbyname('codigo').asfloat)  );   //6 - numero_nfe
  Write(f,formatdatetime('dd/mm/yyyy',date)  );   //7 - data_emissao
  Write(f,formatdatetime('dd/mm/yyyy',date));   //8  - data_saida
  Write(f,'1');   //9 - tipo_ambiente
  Write(f,'1');   //10 - ind_forma_pgto
  Write(f,  AjustaStr ( tirapontos(tiratracos(tirabarras(dbx_config.fieldbyname('campo3').AsString))), 25 )  );   //11 - cnpj_emitente

  Write(f, AjustaStr ( dbx_config.fieldbyname('campo1').AsString,50 ) );   //12 - razao_emitente
  Write(f,  AjustaStr ( dbx_config.fieldbyname('campo2').AsString,30 )  );   //13 - fantasia_emiten
  Write(f, AjustaStr ( dbx_config.fieldbyname('campo6').AsString,50 ) );   //14 - logradouro_emit
  Write(f,AjustaStr ( dbx_config.fieldbyname('nro').AsString,6 ));   //15 - numero_log_emit
  Write(f, AjustaStr ( dbx_config.fieldbyname('bairro').AsString,30 )   );   //16 - bairro_emitente
  Write(f,  AjustaStr ( '00000000',8 )  );   //17 - codcid_emitente
  Write(f, AjustaStr ( '00000000',8 )   );   //18 - codest_emitente
  Write(f, AjustaStr ( dbx_config.fieldbyname('campo16').AsString,2 ) );   //117 - uf_origem
  Write(f,  AjustaStr ( dbx_config.fieldbyname('cep').AsString ,8 ) );   //19 - cep_emitente
  Write(f, AjustaStr ( '000000',6 )  );   //20 - codpais_emitent

  Write(f,AjustaStr ( 'BRASIL',30 ));   //21 - nomepais_emit
  Write(f, AjustaStr (  dbx_config.FieldByName('fone').AsString  ,30 )  );   //22 - fone_emitente
  Write(f,AjustaStr ( dbx_config.FieldByName('campo4').AsString,30 ) );   //23 - ie_emitente
  Write(f, AjustaStr ( ' ',30 ) );   //24 - ie_st_emitente

  if Cds_Clientes.Locate('codigo',inttostr(Cds_sVenda.fieldbyname('ccli').asInteger),[]) then
     begin

       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('cpf').AsString,25 ) );   //25 - cnpj_dest
       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('nome').AsString,50 ) );   //26 - razao_dest
       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('endent').AsString  ,50 ) );   //27 - logradouro_dest
       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('nroent').AsString   ,6 ) );   //28 - numlog_dest
       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('bairroent').AsString,30 ) );   //29 - bairro_dest

       Write(f,AjustaStr ( '00000000',8 ) );   //30 - codcid_dest
       Write(f,AjustaStr ( '00000000',8 ) );   //31 - codest_dest
       Write(f,AjustaStr (  tiratracos( Cds_Clientes.fieldbyname('cep').AsString )  ,8 ) );   //32 - cep_dest
       Write(f,AjustaStr ( '000000',6 ) );   //33 - codpais_dest
       Write(f,AjustaStr ( 'BRASIL'   ,30 ) );   //34 - nomepais_dest
       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('telefoneent').AsString ,30 ) );   //35 - fone_dest
       Write(f,AjustaStr ( Cds_Clientes.fieldbyname('ie').AsString  ,30 ) );   //36 - ie_dest
       Write(f,AjustaStr (  Cds_Clientes.fieldbyname('complent').AsString  ,30 ) );   //108 - compl_dest
       Write(f,AjustaStr (  Cds_Clientes.fieldbyname('email').AsString ,60 ) );   //115  -  email_dest

     end;
  //endi

  Writeln(f);

  cds_Vendabb.Active := false;
  dbx_Vendabb.Active := false;
  dbx_Vendabb.SQL.Clear;
  dbx_Vendabb.SQL.Add('Select * from Vendab where codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) );
  dbx_Vendabb.Active := true;
  cds_Vendabb.Active := true;

  while not cds_vendabb.Eof do
    begin


      Write(f,AjustaStr ( '02',2 ) );  //37 - id_reg
      Write(f,AjustaStr ( Cds_vendabb.fieldbyname('codigo').asString,6 ) );   //38 - item_no
      Write(f,AjustaStr ( cds_vendabb.fieldbyname('cpro').asString,60 ) );   //39 - codprod


      if Cds_vprodutos.Locate('cdescprod',cds_vendabb.fieldbyname('cpro').AsInteger,[]) then
         begin
           Write(f,AjustaStr ( cds_vprodutos.fieldbyname('ncm').asString ,8 ) );   //40 - ncm_item
           //Write(f,cds_vprodutos.fieldbyname('cest').asString);
         end;
      //endif
      Write(f,AjustaStr ( cds_vendabb.fieldbyname('npro').asString,50 ) );   //102 - desc_item
      Write(f,AjustaStr ( ' ',4 ) );   //41 - cfop_item

      if Cds_unidade.Locate('codigo',cds_vendabb.fieldbyname('cuin').AsInteger,[]) then
         begin
           Write(f,AjustaStr ( cds_unidade.fieldbyname('descricao').asString ,6 ) );   //42 - und_item
         end;
      //endi

      Write(f,AjustaStr(formatfloat ( '000000.000',cds_vendabb.fieldbyname('qtde').asfloat),10 ) );   //43 - qde_item
      Write(f,AjustaStr(formatfloat ( '000000.000',cds_vendabb.fieldbyname('prve').asfloat),10 ) );   //44 - vunitario_item
      Write(f, '000000.000');   //122 - dsc_item
      Write(f,AjustaStr ( formatfloat ( '00000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat )  ,15 ) ); //45 - vtotal_item

      Write(f,AjustaStr ( formatfloat ( '000000.000'     ,cds_vendabb.fieldbyname('qtde').asfloat )  ,10 ) ); //46 - qde_trib_item
      Write(f,AjustaStr ( formatfloat ( '000000.000'     ,cds_vendabb.fieldbyname('prve').asfloat )  ,10 ) ); //47 - valor_trib_item

      if Cds_sita.Locate('codigo',cds_vendabb.fieldbyname('codsita').AsInteger,[]) then
         begin
           Write(f,AjustaStr ( cds_sita.fieldbyname('sigla').asString ,1 ) );   //48 - origem_merc
         end;
      //endi

      Write(f,AjustaStr ( '00',2 ) );   //49 - tipotribicms
      Write(f,AjustaStr ( '0',1) );   //50   - modbc

      // ICMS
      if Cds_AliqImpFis.Locate('codigo',cds_vendabb.fieldbyname('codicms').AsInteger,[]) then
         begin
           ssigla := cds_aliqimpfis.fieldbyname('sigla').asString;
           faliq := cds_aliqimpfis.fieldbyname('aliquota').asfloat;
         end;
      //endi
      Write(f,AjustaStr ( formatfloat ( '0000000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat ),17 ) );   //51 - baseicms
      Write(f,AjustaStr ( formatfloat ( '0000000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat * faliq / 100 ),17 ) );   //52  -  valoricms
      Write(f,AjustaStr ( formatfloat ( '0.00',faliq ),4 ) );   //53 - aliquotaicms
      Write(f,AjustaStr ( ssigla ,3 ) );   //54 -  cst

      //PIS
      if dbx_pis.Locate('codigo',cds_vendabb.fieldbyname('codpis').AsInteger,[]) then
         begin
           ssigla := dbx_pis.fieldbyname('sigla').asString;
           faliq := dbx_pis.fieldbyname('aliquota').asfloat;
         end;
      //endi
      Write(f,AjustaStr (  formatfloat ( '0000000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat ),17 ) );   //55 - basepis
      Write(f,AjustaStr (  formatfloat ( '0000000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat * faliq / 100 ),17 ) );   //56 - valorpis
      Write(f,AjustaStr (  formatfloat ( '0.00',faliq ),4 ) );   //57 -  aliquotapis
      Write(f,AjustaStr (  ssigla,3 ) );   //58 - cstpis

      //COFINS
      if dbx_cofins.Locate('codigo',cds_vendabb.fieldbyname('codcofins').AsInteger,[]) then
         begin
           ssigla := dbx_cofins.fieldbyname('sigla').asString;
           faliq := dbx_cofins.fieldbyname('aliquota').asfloat;
         end;
      //endi
      Write(f,AjustaStr ( formatfloat ( '0000000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat ),17 ) );   //59 - basecofins
      Write(f,AjustaStr ( formatfloat ( '0000000000000.000',cds_vendabb.fieldbyname('subtotal').asfloat * faliq / 100 ),17 ) );   //60 - valorcofins
      Write(f,AjustaStr ( formatfloat ( '0.00',faliq ),4 ) );   //61 - aliquotacofins
      Write(f,AjustaStr ( ssigla,3 ) );   //123 - cstcofins

      //Substituição tributária
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   //103 -  basest
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   //104 - valorst


      //IPI
      Write(f,AjustaStr ( '0.00',4 ) );   //109 - aliquotaipi
      Write(f,AjustaStr ( '000',3 ) );   //  110 - cstipi
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   // 111 - baseipi
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   //112 - valoripi


      Write(f,AjustaStr ( '00.00',5 ) );   // 134 - redbc
      Write(f,AjustaStr ( '00.00',5 ) );   //  135 - redbcst
      Write(f,AjustaStr ( '00.00',5 ) );   //136 - mvast

      Write(f,AjustaStr ( '0',1 ) );   //137 - modbc_st
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   // 138 - valorfrete
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   // 139 - valordesp
      Write(f,AjustaStr ( '0000000000000.000',17 ) );   //140 - valorseguro
      Write(f,AjustaStr ( '0000',4) );                 // 142 - csosn
      Write(f,AjustaStr ( '0.00',4 ) );   // 143 - csosn_aliqcred
      Write(f,AjustaStr ( '0000000000000.000',17) );   // 145 - csosn_valorcred
      Write(f,AjustaStr ( ' ', 2) );   //  141 - infoprdadic
      Writeln(f);



      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //
      Write(f,AjustaStr ( ' ',99 ) );   //

      Write(f,AjustaStr ( ' ',99 ) );   //93
      Write(f,AjustaStr ( ' ',99 ) );   //94
      Write(f,AjustaStr ( ' ',99 ) );   //95
      Write(f,AjustaStr ( ' ',99 ) );   //96
      Write(f,AjustaStr ( ' ',99 ) );   //97
      Write(f,AjustaStr ( ' ',99 ) );   //98
      Write(f,AjustaStr ( ' ',99 ) );   //99
      Write(f,AjustaStr ( ' ',99 ) );   //100
      Write(f,AjustaStr ( ' ',99 ) );   //101

      Write(f,AjustaStr ( ' ',99 ) );   //102
      Write(f,AjustaStr ( ' ',99 ) );   //103

      Cds_vendabb.Next;

    end;
  //endi

  CloseFile(f);

  showmessage('Exportação concluida');

end;





procedure TfrmPesqVfb.Button1Click(Sender: TObject);
begin
exportarped;
end;

procedure TfrmPesqVfb.Button2Click(Sender: TObject);
begin
exportarpedsat;
end;

end.
