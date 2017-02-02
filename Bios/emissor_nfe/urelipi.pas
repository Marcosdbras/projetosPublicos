unit urelipi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmrelipi = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    delalhe: TQRBand;
    rodape: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    lbldescricao: TQRLabel;
    lblcodigo: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure delalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    iPag:integer;
  public
    { Public declarations }
  end;

var
  frmrelipi: Tfrmrelipi;

implementation
  uses udados, ugeral, upesqipi;

{$R *.dfm}

procedure Tfrmrelipi.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelipi.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

 //lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;

 lblcab1.Caption := 'EMISSOR NOTA FISCAL ELETRÔNICA';
 lbltit1.Caption := datetostr(date);
 lbltit3.Caption := 'RELAÇÃO DE IPI';
 lbltit4.Caption := frmpesqipi.sTitRel;

end;

procedure Tfrmrelipi.delalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbldescricao.Caption:=frmDados.Cds_ipi.fieldbyname('descricao').AsString;
  lblcodigo.Caption:=frmDados.Cds_ipi.fieldbyname('codigo').AsString;

end;

procedure Tfrmrelipi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmRelipi:=nil;
  form_ativo := '';

end;

end.
