unit urelvii;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelvii = class(TForm)
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
    lblaliquota: TQRLabel;
    QRLabel6: TQRLabel;
    lblredbasecalc: TQRLabel;
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
  frmrelvii: Tfrmrelvii;

implementation
 uses udados ,ugeral ,upesqvii   ;
{$R *.dfm}

procedure Tfrmrelvii.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldescricao.caption:=frmDados.Cds_vii.fieldbyname('DESCRICAO').AsString;
    lblsigla.Caption:=frmDados.Cds_vii.fieldbyname('SIGLA').AsString;
    lblaliquota.Caption:=frmDados.Cds_vii.fieldbyname('ALIQUOTA').AsString;
    lblredbasecalc.Caption:=frmDados.Cds_vii.fieldbyname('REDUCAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_vii.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelvii.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelvii.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Imposto I';
  lbltit4.Caption := frmpesqvii.sTitRel;
end;

end.
