unit urelvporgrupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelvporgrupo = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lblnomecli: TQRLabel;
    lblnomegrupo: TQRLabel;
    lbltotal: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel4: TQRLabel;
    lblcodcli: TQRLabel;
    QRLabel5: TQRLabel;
    lbldata: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detalheAfterPrint(Sender: TQRCustomBand;
      BandPrinted: Boolean);
  private
    { Private declarations }
    ipag, iccli :integer;
  public
    { Public declarations }
  end;

var
  frmrelvporgrupo: Tfrmrelvporgrupo;

implementation
  uses uDados ,ugeral;
{$R *.dfm}

procedure Tfrmrelvporgrupo.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelvporgrupo.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Grupo X Clientes';
  lbltit4.Caption := '';
end;

procedure Tfrmrelvporgrupo.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    if iccli <> frmDados.Cdsrelatorio.fieldbyname('icampo1').AsInteger then
       begin
         lblcodcli.Caption:=frmDados.Cdsrelatorio.fieldbyname('icampo1').AsString;
         lblnomecli.Caption:=frmDados.Cdsrelatorio.fieldbyname('campo2').AsString;
       end
    else
       begin
         if frmDados.Cdsrelatorio.fieldbyname('icampo1').AsString <> '' then
            begin
              lblcodcli.Caption:='';
              lblnomecli.Caption:='-';
            end
         //endi
       end;
    //endi
    lbldata.Caption:=frmDados.Cdsrelatorio.fieldbyname('campo3').AsString;
    lblnomegrupo.Caption:=frmDados.Cdsrelatorio.fieldbyname('campo4').AsString;
    lbltotal.Caption:=frmDados.Cdsrelatorio.fieldbyname('campo5').AsString;


end;

procedure Tfrmrelvporgrupo.detalheAfterPrint(Sender: TQRCustomBand;
  BandPrinted: Boolean);
begin
    iccli :=frmDados.Cdsrelatorio.fieldbyname('icampo1').AsInteger;

end;

end.
