unit urelpais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelpais = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lblnome: TQRLabel;
    lblsigla: TQRLabel;
    lblcodibge: TQRLabel;
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
  frmrelpais: Tfrmrelpais;

implementation
 uses udados ,ugeral ,upesqpais ;
{$R *.dfm}

procedure Tfrmrelpais.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblNOME.caption:=frmDados.Cds_Pais.fieldbyname('NOME').AsString;
    lblsigla.Caption:=frmDados.Cds_Pais.fieldbyname('SIGLA').AsString;
    lblCODIBGE.Caption:=frmDados.Cds_Pais.fieldbyname('CODPIBGE').AsString;
    lblcodigo.Caption:=frmDados.Cds_Pais.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelpais.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelpais.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Países';
  lbltit4.Caption := frmpesqpais.sTitRel;
end;

end.
