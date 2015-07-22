unit urelcofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcofins = class(TForm)
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
  frmrelcofins: Tfrmrelcofins;

implementation
 uses udados ,ugeral ,upesqcofins ;
{$R *.dfm}

procedure Tfrmrelcofins.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldescricao.caption:=frmDados.Cds_Cofins.fieldbyname('DESCRICAO').AsString;
    lblsigla.Caption:=frmDados.Cds_Cofins.fieldbyname('SIGLA').AsString;
    lblaliquota.Caption:=frmDados.Cds_Cofins.fieldbyname('ALIQUOTA').AsString;
    lblredubacalc.caption:=frmDados.Cds_Cofins.fieldbyname('REDUCAO').AsString;
    lblcodigo.Caption:=frmDados.Cds_Cofins.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelcofins.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcofins.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Cofins';
  lbltit4.Caption := frmpesqcofins.sTitRel;
end;

end.
