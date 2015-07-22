unit urelpis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelpis = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lblsigla: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel3: TQRLabel;
    lblreducao: TQRLabel;
    QRLabel5: TQRLabel;
    lblaliquota: TQRLabel;
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
  frmrelpis: Tfrmrelpis;

implementation
 uses udados ,ugeral ,upesqpis ;
{$R *.dfm}

procedure Tfrmrelpis.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldescricao.caption:=frmDados.Cds_pis.fieldbyname('DESCRICAO').AsString;
    lblsigla.Caption:=frmDados.Cds_pis.fieldbyname('SIGLA').AsString;
    lblaliquota.Caption:=frmDados.Cds_pis.fieldbyname('ALIQUOTA').AsString;
    lblreducao.Caption:=frmDados.Cds_pis.fieldbyname('REDUCAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_pis.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelpis.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelpis.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Pis';
  lbltit4.Caption := frmpesqpis.sTitRel;
end;

end.
