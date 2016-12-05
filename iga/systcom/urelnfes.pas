unit urelnfes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelnfes = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lblemissao: TQRLabel;
    lblsituacao: TQRLabel;
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
  frmrelnfes: Tfrmrelnfes;

implementation
 uses udados ,ugeral ,upesqNFe ;
{$R *.dfm}

procedure Tfrmrelnfes.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
      lblemissao.caption:=frmDados.Cds_NFE.fieldbyname('DTE').AsString;
      lblvalor.Caption:=formatfloat('###,###,###,##0.00',frmDados.Cds_NFE.fieldbyname('TOTVLRICMS').Asfloat);
      lblsituacao.caption:=frmDados.Cds_NFE.fieldbyname('nsitnfe').AsString;
      lbllote.caption:=frmDados.Cds_NFE.fieldbyname('LOTENFE').AsString;

end;

procedure Tfrmrelnfes.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnfes.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Notas Ficais Emitidas';
  lbltit4.Caption := frmpesqNFe.sTitRel;
end;

end.
