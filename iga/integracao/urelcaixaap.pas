unit urelcaixaap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcaixaap = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    detalhe: TQRBand;
    rodape: TQRBand;
    lbltittroco: TQRLabel;
    lbltitsangria: TQRLabel;
    lbltitentrada: TQRLabel;
    lbltitsaida: TQRLabel;
    lbltroco: TQRLabel;
    lblsangria: TQRLabel;
    lblentrada: TQRLabel;
    lblsaida: TQRLabel;
    lbltitsaldo: TQRLabel;
    lblsaldo: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmrelcaixaap: Tfrmrelcaixaap;

implementation
   uses ucaixaap;
{$R *.dfm}

procedure Tfrmrelcaixaap.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
lbltittroco.Caption := frmcaixaap.lbltittroco.Caption;
lbltroco.Caption := frmcaixaap.lbltroco.Caption;

lbltitsangria.Caption := frmcaixaap.lbltitsangria.Caption;
lblsangria.Caption := frmcaixaap.lblsangria.Caption;

lbltitentrada.Caption := frmcaixaap.lbltitentrada.Caption;
lblentrada.Caption := frmcaixaap.lblentrada.Caption;

lbltitsaida.Caption := frmcaixaap.lbltitsaida.Caption;
lblsaida.Caption := frmcaixaap.lblsaida.Caption;


lbltitsaldo.Caption := frmcaixaap.lbltitsaldo.Caption;
lblsaldo.Caption := frmcaixaap.lblsaldo.Caption;



end;

end.
