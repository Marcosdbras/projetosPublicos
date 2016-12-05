unit uimporcp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmimporcp = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRImage1: TQRImage;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRDBText10: TQRDBText;
    QRDBText11: TQRDBText;
    QRDBText12: TQRDBText;
    QRDBText13: TQRDBText;
    QRShape2: TQRShape;
    QRShape3: TQRShape;
    QRShape1: TQRShape;
    QRDBText14: TQRDBText;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRShape4: TQRShape;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel12: TQRLabel;
    QRShape5: TQRShape;
    QRLabel13: TQRLabel;
    QRDBText16: TQRDBText;
    QRDBText17: TQRDBText;
    QRDBText18: TQRDBText;
    lbltotal: TQRLabel;
    QRLabel16: TQRLabel;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    QRLabel17: TQRLabel;
    QRBand2: TQRBand;
    QRDBText19: TQRDBText;
    QRDBRichText1: TQRDBRichText;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRLabel14: TQRLabel;
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmimporcp: Tfrmimporcp;

implementation
  uses udados, ugeral, upesqos;
{$R *.dfm}

procedure Tfrmimporcp.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lbltotal.Caption := frmpesqos.lbltotal.Caption;
end;

procedure Tfrmimporcp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmimporcp:=nil;

end;

end.
