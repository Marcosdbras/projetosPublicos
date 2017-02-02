unit ureltransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmreltransportadora = class(TForm)
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
  frmreltransportadora: Tfrmreltransportadora;

implementation
  uses udados, ugeral, upesqtransportadora;

{$R *.dfm}

procedure Tfrmreltransportadora.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreltransportadora.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

 //lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;

 lblcab1.Caption := 'EMISSOR NOTA FISCAL ELETRÔNICA';
 lbltit1.Caption := datetostr(date);
 lbltit3.Caption := 'RELAÇÃO DE TRANSPORTADORAS';
 lbltit4.Caption := frmpesqtransportadora.sTitRel;

end;

procedure Tfrmreltransportadora.delalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblnome.Caption:=frmDados.Cds_transportador.fieldbyname('nome').AsString;
  lblcodigo.Caption:=frmDados.Cds_transportador.fieldbyname('codigo').AsString;

end;

procedure Tfrmreltransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmReltransportadora:=nil;
  form_ativo := '';

end;

end.
