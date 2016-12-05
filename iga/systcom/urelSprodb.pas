unit urelSprodb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmrelSprodb = class(TForm)
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
    lblsubtotal: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
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
  frmrelSprodb: TfrmrelSprodb;

implementation
 uses udados ,ugeral ,upesqSprodb ;
{$R *.dfm}

procedure TfrmrelSprodb.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbldescricao.caption:=frmDados.Cds_Vendab.fieldbyname('NPRO').AsString;
  lblcodigo.Caption:=frmDados.Cds_Vendab.fieldbyname('CPRO').AsString;
  lbldata.Caption:=frmDados.Cds_Vendab.fieldbyname('DATA_OP').AsString;
  lblquantidade.Caption:= formatfloat('###,###,##0.00',frmDados.Cds_Vendab.fieldbyname('QTDE').Asfloat);
  lblprve.Caption:= formatfloat('###,###,##0.00',frmDados.Cds_Vendab.fieldbyname('prve').Asfloat);
  lblsubtotal.Caption:= formatfloat('###,###,##0.00',frmDados.Cds_Vendab.fieldbyname('subtotal').Asfloat);


end;

procedure TfrmrelSprodb.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure TfrmrelSprodb.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Saída de Produtos Balcão';
  lbltit4.Caption := frmpesqSprodb.sTitRel;
end;

end.
