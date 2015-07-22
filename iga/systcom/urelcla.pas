unit urelcla;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcla = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lblcp: TQRLabel;
    lbldesc: TQRLabel;
    lblcoda: TQRLabel;
    lblcod: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag :integer;
  public
    { Public declarations }
  end;

var
  frmrelcla: Tfrmrelcla;

implementation
  uses uDados ,ugeral ,uPesqcla ;
{$R *.dfm}

procedure Tfrmrelcla.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin                 
 ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcla.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Classe de Contas';
  lbltit4.Caption := frmpesqcla.sTitRel;
end;

procedure Tfrmrelcla.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lblcp.Caption:=frmDados.Cds_Classe.fieldbyname('nclap').AsString;
    lbldesc.Caption:=frmDados.Cds_Classe.fieldbyname('DESCRICAO').AsString;
    lblcoda.Caption:=frmDados.Cds_Classe.fieldbyname('AGRUPCOD').AsString;
    lblcod.Caption:=frmDados.Cds_Classe.fieldbyname('CODIGO').AsString;

end;

end.
