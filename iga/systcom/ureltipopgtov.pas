unit ureltipopgtov;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreltipopgtov = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    lblnome: TQRLabel;
    lblcodecf: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel3: TQRLabel;
    lblvd: TQRLabel;
    QRLabel6: TQRLabel;
    lblel: TQRLabel;
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
  frmreltipopgtov: Tfrmreltipopgtov;

implementation
 uses udados ,ugeral ,upesqtipopgtov ;
{$R *.dfm}

procedure Tfrmreltipopgtov.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnome.caption:=frmDados.Cds_Tipo_Pgto.fieldbyname('DESCRICAO').AsString;
    lblcodecf.Caption:=frmDados.Cds_Tipo_Pgto.fieldbyname('CODECF').AsString;
    lblcodigo.Caption:=frmDados.Cds_Tipo_Pgto.fieldbyname('CODIGO').AsString;
    lblvd.Caption:=frmDados.Cds_Tipo_Pgto.fieldbyname('MOSVD').AsString;
    lblel.Caption:=frmDados.Cds_Tipo_Pgto.fieldbyname('EHELETRONICO').AsString;
end;

procedure Tfrmreltipopgtov.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreltipopgtov.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Tipo de Pagamento (Vendas)';
  lbltit4.Caption := frmpesqtipopgtov.sTitRel;
end;

end.
