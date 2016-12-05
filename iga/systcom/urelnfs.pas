unit urelnfs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelnfs = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    lblcliente: TQRLabel;
    lblnpedido: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel8: TQRLabel;
    lblliqui: TQRLabel;
    QRLabel3: TQRLabel;
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
  frmrelnfs: Tfrmrelnfs;

implementation
 uses udados ,ugeral ,upesqNF ;
{$R *.dfm}

procedure Tfrmrelnfs.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      lblcliente.Caption:=frmDados.Cds_NF.fieldbyname('ncli').AsString;
      lblcodigo.Caption:=frmDados.Cds_NF.fieldbyname('ccli').AsString;
      lblnpedido.Caption:=frmDados.Cds_NF.fieldbyname('NPED').AsString;
      lblliqui.caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NF.fieldbyname('LIQUIDO').Asfloat);

end;

procedure Tfrmrelnfs.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnfs.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Notas Ficais Simplificada';
  lbltit4.Caption := frmpesqNF.sTitRel;
end;

end.
