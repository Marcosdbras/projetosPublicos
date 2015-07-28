unit urelipi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelipi = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lblsigla: TQRLabel;
    lblaliquota: TQRLabel;
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
  frmrelipi: Tfrmrelipi;

implementation
 uses udados ,ugeral ,upesqipi ;
{$R *.dfm}

procedure Tfrmrelipi.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldescricao.caption:=frmDados.Cds_IPI.fieldbyname('DESCRICAO').AsString;
    lblsigla.Caption:=frmDados.Cds_IPI.fieldbyname('SIGLA').AsString;
    lblaliquota.Caption:=frmDados.Cds_IPI.fieldbyname('ALIQ').AsString;
    lblcodigo.Caption:=frmDados.Cds_IPI.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelipi.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelipi.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'IPI';
  lbltit4.Caption := frmpesqIPI.sTitRel;
end;

end.
