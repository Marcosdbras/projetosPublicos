unit urelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmrelos = class(TForm)
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
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    lblid1: TQRLabel;
    lbldesc1: TQRLabel;
    QRDBText7: TQRDBText;
    lbldesc2: TQRLabel;
    QRDBText8: TQRDBText;
    lbldesc3: TQRLabel;
    QRDBText9: TQRDBText;
    lbldesc4: TQRLabel;
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
  frmrelos: Tfrmrelos;

implementation
   uses ugeral, udados, upesqos;
{$R *.dfm}

procedure Tfrmrelos.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrelos.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ipag := 0;
  ftotal := 0;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Demonstrativo de O.S. Ref. '+datetostr(frmpesqos.dtpDataI.date)+' A '+datetostr(frmpesqos.dtpDataf.date) ;
  lbltit4.Caption := frmpesqos.sTitRel;

  lblid1.Caption := frmpesqos.lblid1.Caption;
  lbldesc1.Caption := frmpesqos.lbldesc1.Caption;
  lbldesc2.Caption := frmpesqos.lbldesc2.Caption;
  lbldesc3.Caption := frmpesqos.lbldesc3.Caption;
  lbldesc4.Caption := frmpesqos.lbldesc4.Caption;



end;

procedure Tfrmrelos.rodapeBeforePrint(Sender: TQRCustomBand;
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

procedure Tfrmrelos.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ftotal := ftotal + frmdados.Cds_sVenda.fieldbyname('liquido_p').AsFloat; 
end;

procedure Tfrmrelos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelos:=nil;

end;

end.
