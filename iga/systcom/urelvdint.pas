unit urelvdint;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmrelvdint = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    detalhe: TQRBand;
    rodape: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel5: TQRLabel;
    lbltotal: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ipag:integer;
    ftotal:real;
  public
    { Public declarations }
  end;

var
  frmrelvdint: Tfrmrelvdint;

implementation
   uses ugeral, udados, upesqvd;
{$R *.dfm}

procedure Tfrmrelvdint.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrelvdint.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ipag := 0;
  ftotal := 0;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Demonstrativo de Vendas Ref. '+datetostr(frmpesqvd.dtpDataI.date)+' A '+datetostr(frmpesqvd.dtpDataf.date) ;
  lbltit4.Caption := frmpesqvd.sTitRel;

end;

procedure Tfrmrelvdint.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.cds_svenda.Eof then
   begin
     lbltotal.Caption := '';
   end
else
   begin
     lbltotal.Caption := formatfloat('###,###,##0.00',ftotal);
   end;
//endi

end;

procedure Tfrmrelvdint.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ftotal := ftotal + frmdados.Cds_sVenda.fieldbyname('liquido_p').AsFloat; 
end;

procedure Tfrmrelvdint.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelvdint:=nil;

end;

end.
