unit urelemitente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmrelemitente = class(TForm)
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
    lblnome: TQRLabel;
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
  frmrelemitente: Tfrmrelemitente;

implementation
  uses udados, ugeral, upesqemitente;

{$R *.dfm}

procedure Tfrmrelemitente.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelemitente.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

 //lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;

 lblcab1.Caption := 'EMISSOR NOTA FISCAL ELETRÔNICA';
 lbltit1.Caption := datetostr(date);
 lbltit3.Caption := 'RELAÇÃO DE EMITENTES';
 lbltit4.Caption := frmpesqemitente.sTitRel;

end;

procedure Tfrmrelemitente.delalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblnome.Caption:=frmDados.Cds_emitente.fieldbyname('nome').AsString;
  lblcodigo.Caption:=frmDados.Cds_emitente.fieldbyname('codigo').AsString;

end;

procedure Tfrmrelemitente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmRelemitente:=nil;
  form_ativo := '';

end;

end.
