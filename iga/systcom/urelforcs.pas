unit urelforcs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelforcs = class(TForm)
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
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ipag:integer ;
     public
    { Public declarations }
  end;

var
  frmrelforcs: Tfrmrelforcs;

implementation
uses udados, ugeral, upesqforc;

{$R *.dfm}

procedure Tfrmrelforcs.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelforcs.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

   lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Detalhado de Fornecedores';
  lbltit4.Caption := frmpesqforc.sTitRel;

end;

procedure Tfrmrelforcs.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lblcod.Caption:=frmDados.Cds_Fornecedores.fieldbyname('CODIGO').AsString;
   lblnome.Caption:=frmDados.Cds_Fornecedores.fieldbyname('NOME').AsString;

end;

procedure Tfrmrelforcs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelforcs:=nil;
end;

end.
