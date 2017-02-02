unit urelnatop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls;

type
  Tfrmrelnatop = class(TForm)
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
  frmrelnatop: Tfrmrelnatop;

implementation
  uses udados, ugeral, upesqnatop;

{$R *.dfm}

procedure Tfrmrelnatop.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelnatop.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

 //lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;

 lblcab1.Caption := 'EMISSOR NOTA FISCAL ELETRÔNICA';
 lbltit1.Caption := datetostr(date);
 lbltit3.Caption := 'RELAÇÃO DE NATUREZA DA OPERAÇÃO';
 lbltit4.Caption := frmpesqnatop.sTitRel;

end;

procedure Tfrmrelnatop.delalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbldescricao.Caption:=frmDados.Cds_natop.fieldbyname('descricao').AsString;
  lblcodigo.Caption:=frmDados.Cds_natop.fieldbyname('codigo').AsString;

end;

procedure Tfrmrelnatop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmRelnatop:=nil;
  form_ativo := '';

end;

end.
