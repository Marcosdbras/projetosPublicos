unit urelsangria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls;

type
  TFrmRelsangria = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    LblData: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRShape1: TQRShape;
    QRShape3: TQRShape;
    QRShape8: TQRShape;
    QRShape10: TQRShape;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRBand3: TQRBand;
    LblTotal: TQRLabel;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape23: TQRShape;
    QRShape21: TQRShape;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    QRDBText7: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    dValor, dentrada, dsaida : double;
  public
    { Public declarations }
  end;

var
  FrmRelsangria: TFrmRelsangria;

implementation

uses UDados, UMenuPrincipal, ugeral;

{$R *.dfm}

procedure TFrmRelsangria.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  //LblData.Caption := FrmPrincipal.sData;
//  dValor := 0;

end;

procedure TFrmRelsangria.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with FrmDados do
  begin
    dValor := dValor + CDS_sangria.FieldBYName('valor').AsFloat;
  end;
  //endth
end;

procedure TFrmRelsangria.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  dValor := 0;
end;

procedure TFrmRelsangria.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

begin
  if FrmDados.cds_sangria.Eof then
    begin
      LblTotal.Caption := 'Total: R$ ' + formatfloat('###,###,##0.00',dValor);
    end
  else
  begin
    LblTotal.Caption := '';
  end;
  //endi






end;

end.
