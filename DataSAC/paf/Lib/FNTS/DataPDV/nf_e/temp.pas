unit temp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmtemp = class(TForm)
    rrecibo: TQuickRep;
    QRShape30: TQRShape;
    QRShape36: TQRShape;
    QRBand3: TQRBand;
    QRLabel10: TQRLabel;
    QRLabel21: TQRLabel;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRSysData1: TQRSysData;
    QRShape22: TQRShape;
    QRShape1: TQRShape;
    QRLabel1: TQRLabel;
    rvalor: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    rdata: TQRLabel;
    rextenso: TQRLabel;
    rcliente: TQRLabel;
    QRShape2: TQRShape;
    QRLabel11: TQRLabel;
    rextrato: TQuickRep;
    QRBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    lempresa: TQRLabel;
    QRShape3: TQRShape;
    QRBand2: TQRBand;
    QRShape4: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRBand4: TQRBand;
    QRShape5: TQRShape;
    lvalor: TQRLabel;
    lliquido: TQRLabel;
    QRSysData2: TQRSysData;
    QRShape6: TQRShape;
    QRLabel8: TQRLabel;
    lcliente: TQRLabel;
    rextrato2: TQuickRep;
    QRBand5: TQRBand;
    QRLabel9: TQRLabel;
    QRLabel16: TQRLabel;
    lempresa2: TQRLabel;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel22: TQRLabel;
    QRSysData3: TQRSysData;
    QRShape9: TQRShape;
    QRLabel23: TQRLabel;
    lcliente2: TQRLabel;
    QRBand6: TQRBand;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRBand7: TQRBand;
    QRShape10: TQRShape;
    lvalor_original: TQRLabel;
    lvalor_atual: TQRLabel;
    QRLabel27: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    ljuros: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmtemp: Tfrmtemp;

implementation

uses contasreceber;

{$R *.dfm}

end.
