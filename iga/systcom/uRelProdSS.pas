unit uRelProdSS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmrelprodSS = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRShape1: TQRShape;
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro:real;
  public
    { Public declarations }
  end;

var
  frmrelprodSS: TfrmrelprodSS;

implementation
   uses udados, ugeral;
{$R *.dfm}

end.
