unit urelufest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelufest = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lblpais: TQRLabel;
    lblnome: TQRLabel;
    lblsigla: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel5: TQRLabel;
    lblcodibge: TQRLabel;
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
  frmrelufest: Tfrmrelufest;

implementation
 uses udados ,ugeral ,upesqest ;
{$R *.dfm}

procedure Tfrmrelufest.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblpais.caption:=frmDados.Cds_Estados.fieldbyname('npais').AsString;
    lblnome.Caption:=frmDados.Cds_Estados.fieldbyname('NOME').AsString;
    lblsigla.Caption:=frmDados.Cds_Estados.fieldbyname('SIGLA').AsString;
    lblcodibge.caption:=frmDados.Cds_Estados.fieldbyname('CODUFIBGE').AsString;
    lblcodigo.Caption:=frmDados.Cds_Estados.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelufest.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelufest.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Unidade Federativa (Estados)';
  lbltit4.Caption := frmpesqest.sTitRel;
end;

end.
