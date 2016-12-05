unit urelnfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelnfe = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lblemissao: TQRLabel;
    lblnodanf: TQRLabel;
    lblvaloripi: TQRLabel;
    lblvaloricms: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel5: TQRLabel;
    lblsituacao: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbllote: TQRLabel;
    lblvalor: TQRLabel;
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
  frmrelnfe: Tfrmrelnfe;

implementation
 uses udados ,ugeral ,upesqNFe ;
{$R *.dfm}

procedure Tfrmrelnfe.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      lblemissao.caption:=frmDados.Cds_NFE.fieldbyname('DTE').AsString;
      lblnodanf.Caption:=frmDados.Cds_NFE.fieldbyname('NNF').AsString;
      lblvalor.Caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NFE.fieldbyname('TOTVLRICMS').Asfloat);
      lblvaloricms.Caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NFE.fieldbyname('TOTVLRIPI').Asfloat);
      lblvaloripi.caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NFE.fieldbyname('TOTVLRTOTNF').Asfloat);
      lblsituacao.caption:=frmDados.Cds_NFE.fieldbyname('nsitnfe').AsString;
      lbllote.caption:=frmDados.Cds_NFE.fieldbyname('LOTENFE').AsString;

end;

procedure Tfrmrelnfe.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnfe.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Notas Ficais Emitidas';
  lbltit4.Caption := frmpesqNFe.sTitRel;
end;

end.
