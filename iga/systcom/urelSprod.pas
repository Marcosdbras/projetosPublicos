unit urelSprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmrelSprod = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lbldata: TQRLabel;
    lblcodigo: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel3: TQRLabel;
    lblquantidade: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lblprve: TQRLabel;
    lblsubtotal: TQRLabel;
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
  frmrelSprod: TfrmrelSprod;

implementation
 uses udados ,ugeral ,upesqSprod ;
{$R *.dfm}

procedure TfrmrelSprod.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldescricao.caption:=frmDados.Cds_dVenda.fieldbyname('NPRO').AsString;
    lblcodigo.Caption:=frmDados.Cds_dVenda.fieldbyname('CPRO').AsString;
    lbldata.Caption:=frmDados.Cds_dVenda.fieldbyname('DATA_OP').AsString;
    lblquantidade.Caption:= formatfloat('###,###,##0.00',frmDados.Cds_dVenda.fieldbyname('QTDE').Asfloat);
    lblprve.Caption:= formatfloat('###,###,##0.00',frmDados.Cds_dVenda.fieldbyname('prve').Asfloat);
    lblsubtotal.Caption:= formatfloat('###,###,##0.00',frmDados.Cds_dVenda.fieldbyname('subtotal').Asfloat);
end;

procedure TfrmrelSprod.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure TfrmrelSprod.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Saída de Produtos';
  lbltit4.Caption := frmpesqSprod.sTitRel;
end;

end.
