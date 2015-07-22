unit urelnatop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelnatop = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lblcfop: TQRLabel;
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
  frmrelnatop: Tfrmrelnatop;

implementation
 uses udados ,ugeral ,upesqnatop ;
{$R *.dfm}

procedure Tfrmrelnatop.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldescricao.caption:=frmDados.Cds_NatOp.fieldbyname('DESCRICAO').AsString;
    lblcfop.caption:=frmDados.Cds_NatOp.fieldbyname('CFOP').AsString;
    lblcodigo.Caption:=frmDados.Cds_NatOp.fieldbyname('CODIGO').AsString;
end;

procedure Tfrmrelnatop.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnatop.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Natureza Operação(CFOP)';
  lbltit4.Caption := frmpesqnatop.sTitRel;
end;

end.
