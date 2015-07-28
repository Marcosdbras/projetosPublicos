unit urelprodforn;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelprodforn = class(TForm)
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
    lblprve: TQRLabel;
    QRLabel7: TQRLabel;
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
  frmrelprodforn: Tfrmrelprodforn;

implementation
 uses udados ,ugeral ,upesqprodpfor ;
{$R *.dfm}

procedure Tfrmrelprodforn.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbldescricao.caption:=frmDados.cds_vprodforn.fieldbyname('NPRO').AsString;
  lblcodigo.Caption:=frmDados.cds_vprodforn.fieldbyname('CPRO').AsString;
  lbldata.Caption:=frmDados.cds_vprodforn.fieldbyname('DATA').AsString;
  lblquantidade.Caption:= formatfloat('###,###,##0.000',frmDados.cds_vprodforn.fieldbyname('QUA_ESTQ').Asfloat);
  lblprve.Caption:= formatfloat('###,###,##0.00',frmDados.cds_vprodforn.fieldbyname('prcu').Asfloat);


end;

procedure Tfrmrelprodforn.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelprodforn.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Entrada de Produto por Fornecedor';
  lbltit4.Caption := frmpesqprodpfor.sTitRel;
end;

end.
