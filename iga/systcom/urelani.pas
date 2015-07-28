unit urelani;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS, StdCtrls;

type
  Tfrmrelani = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel2: TQRLabel;
    QRDBText4: TQRDBText;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText6: TQRDBText;
    QRLabel3: TQRLabel;
    QRDBText7: TQRDBText;
    QRDBText8: TQRDBText;
    QRDBText9: TQRDBText;
    QRLabel1: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro, ftotpoacum:real;
    idia, imes, iano:word;
    imes1, imes2, imes3, ianoa, ipag:integer;

  public
    { Public declarations }
  end;

var
  frmrelani: Tfrmrelani;

implementation
   uses udados, ugeral, uMRcli, upesqcli;
{$R *.dfm}

procedure Tfrmrelani.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

  var
    bano:boolean;
begin

  ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Aniversariantes ';
  lbltit4.Caption := frmpesqcli.sTitRel;

  


end;

procedure Tfrmrelani.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelani.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelani:=nil;



end;

end.
