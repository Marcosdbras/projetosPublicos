unit Cad_recibo_avulso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, QRCtrls, QuickRpt, ExtCtrls, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TFrmReciboAvulso = class(TForm)
    QrepRecibo: TQuickRep;
    QRBand1: TQRBand;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    QRDBText1: TQRDBText;
    QrEndereco: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRShape3: TQRShape;
    QrImagem: TQRImage;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QrDataExtenso: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel9: TQRLabel;
    QRShape4: TQRShape;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    qRecibo: TZQuery;
    qEmitente: TZQuery;
    qEmitenteNOME: TStringField;
    qEmitenteFANTASIA: TStringField;
    qEmitenteENDERECO: TStringField;
    qEmitenteBAIRRO: TStringField;
    qEmitenteCIDADE: TStringField;
    qEmitenteUF: TStringField;
    qEmitenteCEP: TStringField;
    qEmitenteTELEFONE: TStringField;
    qEmitenteCNPJ: TStringField;
    qEmitenteIE: TStringField;
    qEmitenteEMAIL: TStringField;
    qEmitenteHOMEPAGE: TStringField;
    qEmitenteRESPONSAVEL: TStringField;
    qEmitenteLOGO: TBlobField;
    qEmitenteFAX: TStringField;
    qEmitenteNUMERO: TStringField;
    qEmitenteCOMPLEMENTO: TStringField;
    qEmitenteINSC_MUNICIPAL: TStringField;
    qEmitenteRAMO_ATIVIDADE: TStringField;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRLabel8: TQRLabel;
    QRLabel14: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    qReferente: TQRRichText;
    ItensRecibo: TZQuery;
    QRDBText14: TQRDBText;
    QRDBText15: TQRDBText;
    ItensReciboCOD_ITEN_RECIBO: TIntegerField;
    ItensReciboNUM_RECIBO: TStringField;
    ItensReciboPRODUTO: TStringField;
    ItensReciboQUANT: TIntegerField;
    ItensReciboVALOR: TFloatField;
    ItensReciboTOTAL: TFloatField;
    ItensReciboDECRICAO: TStringField;
    qReciboCOD_RECIBO: TIntegerField;
    qReciboNUM_RECIBO: TStringField;
    qReciboCLIENTE: TStringField;
    qReciboDATA: TDateTimeField;
    qReciboHORA: TStringField;
    qReciboVALOR: TFloatField;
    qReciboREFERENTE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmReciboAvulso: TFrmReciboAvulso;

implementation

{$R *.dfm}

end.
