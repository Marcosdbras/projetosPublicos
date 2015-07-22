unit URelEmailsAluPedInf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelEmailsAluPedInf = class(TForm)
    QuickRep2: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRShape2: TQRShape;
    QRDBText3: TQRDBText;
    QRShape3: TQRShape;
    QRLabel3: TQRLabel;
    QRShape4: TQRShape;
    QRDBText4: TQRDBText;
    QRShape5: TQRShape;
    QRLabel4: TQRLabel;
    QRShape6: TQRShape;
    QRDBText1: TQRDBText;
    QRShape7: TQRShape;
    QRLabel5: TQRLabel;
    QRShape8: TQRShape;
    QRDBText2: TQRDBText;
    QRShape9: TQRShape;
    QRLabel6: TQRLabel;
    QRShape10: TQRShape;
    QRDBText5: TQRDBText;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmRelEmailsAluPedInf: TFrmRelEmailsAluPedInf;

implementation

uses UDados, uGeral;

{$R *.dfm}

procedure TFrmRelEmailsAluPedInf.FormCreate(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_AluPedInf.Active := False;
    DBX_AluPedInf.Active := False;
    DBX_AluPedInf.SQL.Clear;
    DBX_AluPedInf.SQL.Add('Select * from alupedinf');
    DBX_AluPedInf.Active := True;
    CDS_AluPedInf.Active := True;
  end;
  //endth
end;

end.
