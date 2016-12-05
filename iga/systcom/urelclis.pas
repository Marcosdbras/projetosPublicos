unit urelclis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelclis = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    detalhe: TQRBand;
    lblcod: TQRLabel;
    lblnome: TQRLabel;
    QRLabel116: TQRLabel;
    QRLabel122: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer ;
     public
    { Public declarations }
  end;

var
  frmrelclis: Tfrmrelclis;

implementation
uses udados, ugeral, upesqcli;

{$R *.dfm}

procedure Tfrmrelclis.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelclis.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

   lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Simplificado Clientes';
  lbltit4.Caption := frmpesqcli.sTitRel;

end;

procedure Tfrmrelclis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelclis:=nil;
end;

procedure Tfrmrelclis.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblcod.Caption:=frmDados.Cds_Clientes.fieldbyname('CODIGO').AsString;

  lblnome.Caption:=frmDados.Cds_Clientes.fieldbyname('NOME').AsString;


end;

end.
