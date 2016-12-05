unit urelrecp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmrelrecp = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelrecp: Tfrmrelrecp;

implementation
    uses ugeral, udados;
{$R *.dfm}

end.
