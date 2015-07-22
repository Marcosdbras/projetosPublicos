unit ureltipo_prod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreltipo_prod = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel4: TQRLabel;
    lblnome: TQRLabel;
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
  frmreltipo_prod: Tfrmreltipo_prod;

implementation
 uses udados ,ugeral ,upesqtipo_prod ;
{$R *.dfm}

procedure Tfrmreltipo_prod.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnome.caption:=frmDados.Cds_Tipo_Prod.fieldbyname('DESCRICAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_Tipo_Prod.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmreltipo_prod.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreltipo_prod.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Tipo Produtos';
  lbltit4.Caption := frmpesqtipo_prod.sTitRel;
end;

end.
