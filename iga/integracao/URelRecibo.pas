unit URelRecibo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmRelRecibo = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRDBText1: TQRDBText;
    LblValorExtenso: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    LblData: TQRLabel;
    QRShape1: TQRShape;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRDBText6: TQRDBText;
    LblValorExtenso2: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    LblData2: TQRLabel;
    QRShape4: TQRShape;
    QRDBText13: TQRDBText;
    QRDBText14: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelRecibo: TFrmRelRecibo;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelRecibo.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LblValorExtenso.Caption := extenso(FrmDados.CDS_Recibo.FieldByName('Valor').AsCurrency);
  LblData.Caption := dataPorExtenso(FrmDados.CDS_Recibo.FieldByName('DATA').AsDateTime);
  LblValorExtenso2.Caption := extenso(FrmDados.CDS_Recibo.FieldByName('Valor').AsCurrency);
  LblData2.Caption := dataPorExtenso(FrmDados.CDS_Recibo.FieldByName('DATA').AsDateTime);
end;

end.
