unit ureltpcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreltpcli = class(TForm)
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
  frmreltpcli: Tfrmreltpcli;

implementation
 uses udados ,ugeral ,upesqtpcli ;
{$R *.dfm}

procedure Tfrmreltpcli.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldescricao.caption:=frmDados.Cds_TipoCli.fieldbyname('DESCRICAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_TipoCli.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmreltpcli.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreltpcli.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Tipo cliente';
  lbltit4.Caption := frmpesqtpcli.sTitRel;
end;

end.
