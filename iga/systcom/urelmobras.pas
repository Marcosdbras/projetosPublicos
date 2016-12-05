unit urelmobras;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelmobras = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabesalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmrelmobras: Tfrmrelmobras;

implementation
uses udados ,ugeral ,upesqcmobra ;
{$R *.dfm}

procedure Tfrmrelmobras.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      lbldescricao.Caption:=frmDados.cds_cmobra.fieldbyname('DESCR').AsString;
    lblcodigo.Caption:=frmDados.cds_cmobra.fieldbyname('CODIGO').AsString;

end;

procedure Tfrmrelmobras.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelmobras.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
    ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Mão-de-Obra';
  lbltit4.Caption := frmpesqcmobra.sTitRel;
end;

end.
