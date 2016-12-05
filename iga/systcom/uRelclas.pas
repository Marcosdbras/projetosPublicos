unit uRelclas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmRelclas = class(TForm)
    relatorio: TQuickRep;
    cabecario: TQRBand;
    detale: TQRBand;
    lbldescricao: TQRLabel;
    lblcodigo: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    procedure cabecarioBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detaleBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmRelclas: TfrmRelclas;

implementation
uses udados, upesqcla, ugeral ;

{$R *.dfm}

procedure TfrmRelclas.cabecarioBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
   lbltit1.Caption := datetostr(date);
   lbltit3.Caption := 'Classe de Contas';
   lbltit4.Caption :=  frmpesqcla.stitrel;
end;

procedure TfrmRelclas.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag :=0;
ipag := ipag+1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure TfrmRelclas.detaleBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
lbldescricao.Caption := frmdados.cds_classe.fieldbyname ('DESCRICAO').AsString;
lblcodigo.Caption := frmDados.cds_Classe.fieldbyname ('CODIGO').asstring;
end;

end.
