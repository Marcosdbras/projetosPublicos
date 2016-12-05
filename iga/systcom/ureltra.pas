unit ureltra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmreltra = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    detalhe: TQRBand;
    QRBand3: TQRBand;
    QRDBText1: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmreltra: Tfrmreltra;

implementation
   uses udados, ugeral;
{$R *.dfm}

end.
