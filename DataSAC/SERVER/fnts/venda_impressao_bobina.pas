unit venda_impressao_bobina;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmVenda_Impressao_Bobina = class(TForm)
    relbobina: TQuickRep;
    QRBand1: TQRBand;
    lempresa: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRBand2: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda_Impressao_Bobina: TfrmVenda_Impressao_Bobina;

implementation

{$R *.dfm}

end.
