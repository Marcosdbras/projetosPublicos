unit utrag;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcfuns = class(TForm)
    relatorio: TQuickRep;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel2: TQRLabel;
    lblnomfun: TQRLabel;
    QRLabel7: TQRLabel;
    lblvlrporc: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
        ipag:integer ;
  public
    { Public declarations }
  end;

var
  frmrelcfuns: Tfrmrelcfuns  ;

implementation
 uses uDados ,ugeral ,uPesqcfun
;
{$R *.dfm}

procedure Tfrmrelcfuns.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcfuns:=nil;
end;

procedure Tfrmrelcfuns.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nfun').AsString;
     lblvlrporc.Caption:=frmDados.Cds_Comissao.fieldbyname('VCOMF').AsString;

end;

procedure Tfrmrelcfuns.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcfuns.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Funcionarios';
  lbltit4.Caption := frmpesqcfun.sTitRel;

end;

end.
