unit urelreps;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelreps = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    lblemail: TQRLabel;
    lblcomissao: TQRLabel;
    QRLabel3: TQRLabel;
    lblcontato: TQRLabel;
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
  frmrelreps: Tfrmrelreps;

implementation
 uses udados ,ugeral ,upesqrep ;
{$R *.dfm}

procedure Tfrmrelreps.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lblemail.Caption:=frmDados.Cds_Representantes.fieldbyname('EMAIL').AsString;
    lblcontato.Caption:=frmDados.Cds_Representantes.fieldbyname('CONTATO').AsString;
    lblcomissao.caption:=frmDados.Cds_Representantes.fieldbyname('COMISSAO').AsString;
end;

procedure Tfrmrelreps.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelreps.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Representates Simpificada';
  lbltit4.Caption := frmpesqrep.sTitRel;
end;

end.
