unit ureloimp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreloimp = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lblsigla: TQRLabel;
    lblaliq: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel5: TQRLabel;
    lblredubacalc: TQRLabel;
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
  frmreloimp: Tfrmreloimp;

implementation
 uses udados ,ugeral ,upesqoimp ;
{$R *.dfm}

procedure Tfrmreloimp.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldescricao.caption:=frmDados.Cds_Oimp.fieldbyname('DESCRICAO').AsString;
    lblsigla.Caption:=frmDados.Cds_Oimp.fieldbyname('SIGLA').AsString;
    lblaliq.Caption:=frmDados.Cds_Oimp.fieldbyname('ALIQUOTA').AsString;
    lblredubacalc.caption:=frmDados.Cds_Oimp.fieldbyname('REDUCAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_Oimp.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmreloimp.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreloimp.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Outros Impostos';
  lbltit4.Caption := frmpesqoimp.sTitRel;
end;

end.
