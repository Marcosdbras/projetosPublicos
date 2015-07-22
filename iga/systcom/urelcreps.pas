unit urelcreps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcreps = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    lbldescricao: TQRLabel;
    lblnomfun: TQRLabel;
    lblvalor: TQRLabel;
    lblvalorporc: TQRLabel;
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
  frmrelcreps: Tfrmrelcreps;

implementation
 uses udados ,ugeral ,upesqcrep ;
{$R *.dfm}

procedure Tfrmrelcreps.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nrep').AsString;
     lbldescricao.Caption:=frmDados.Cds_Comissao.fieldbyname('DESCRICAO').AsString;
     lblvalor.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('VALOR').Asfloat);
     lblvalorporc.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('VCOMR').AsFloat);
end;

procedure Tfrmrelcreps.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcreps.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Representantes';
  lbltit4.Caption := frmpesqcrep.sTitRel;
end;

end.
