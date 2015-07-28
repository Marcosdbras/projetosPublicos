unit ureltrageral;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreltrageral = class(TForm)
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
  frmreltrageral: Tfrmreltrageral  ;

implementation
 uses uDados ,ugeral ,uPesqcfun
;
{$R *.dfm}

procedure Tfrmreltrageral.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmreltrageral:=nil;
end;

procedure Tfrmreltrageral.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nfun').AsString;
     lblvlrporc.Caption:=frmDados.Cds_Comissao.fieldbyname('VCOMF').AsString;

end;

procedure Tfrmreltrageral.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreltrageral.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Funcionarios';
  lbltit4.Caption := frmpesqcfun.sTitRel;

end;

end.
