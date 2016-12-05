unit urelnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelnf = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbldatacad: TQRLabel;
    lblcliente: TQRLabel;
    lblnpedido: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel5: TQRLabel;
    lbltotal: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lblporcdesc: TQRLabel;
    lblvalordesc: TQRLabel;
    QRLabel8: TQRLabel;
    lblliqui: TQRLabel;
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
  frmrelnf: Tfrmrelnf;

implementation
 uses udados ,ugeral ,upesqNF ;
{$R *.dfm}

procedure Tfrmrelnf.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      lbldatacad.caption:=frmDados.Cds_NF.fieldbyname('DATACAD').AsString;
      lblcliente.Caption:=frmDados.Cds_NF.fieldbyname('ncli').AsString;
      lblcodigo.Caption:=frmDados.Cds_NF.fieldbyname('ccli').AsString;
      lblnpedido.Caption:=frmDados.Cds_NF.fieldbyname('NPED').AsString;
      lbltotal.caption:=frmDados.Cds_NF.fieldbyname('totg').AsString;
      lblporcdesc.caption:=frmDados.Cds_NF.fieldbyname('PDESC').AsString;
      lblvalordesc.caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NF.fieldbyname('VALDESC').Asfloat);
      lblliqui.caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NF.fieldbyname('LIQUIDO').Asfloat);

end;

procedure Tfrmrelnf.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnf.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Notas Ficais';
  lbltit4.Caption := frmpesqNF.sTitRel;
end;

end.
