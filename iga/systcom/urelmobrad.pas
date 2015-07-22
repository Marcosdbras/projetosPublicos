unit urelmobrad;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelmobrad = class(TForm)
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
    QRLabel2: TQRLabel;
    lblpreco: TQRLabel;
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
  frmrelmobrad: Tfrmrelmobrad;

implementation
 uses udados ,ugeral ,upesqcmobrad ;
{$R *.dfm}

procedure Tfrmrelmobrad.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldescricao.Caption:=frmDados.cds_cmobra.fieldbyname('DESCR').AsString;
     lblcodigo.Caption:=frmDados.cds_cmobra.fieldbyname('CODIGO').AsString;
     lblpreco.Caption:=frmDados.cds_cmobra.fieldbyname('VALOR').AsString;
end;

procedure Tfrmrelmobrad.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelmobrad.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Consulta Mão-de-Obra';
  lbltit4.Caption := frmpesqcmobrad.sTitRel;
end;

end.
