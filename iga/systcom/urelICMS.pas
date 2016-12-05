unit urelICMS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmrelICMS = class(TForm)
    relatorio: TQuickRep;
    detalhe: TQRBand;
    lbldesc: TQRLabel;
    lblsig: TQRLabel;
    lblest: TQRLabel;
    lblaliICMS: TQRLabel;
    lblcod: TQRLabel;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
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
  frmrelICMS: TfrmrelICMS  ;

implementation
 uses uDados ,ugeral ,uPesqAIFIS;
{$R *.dfm}

procedure TfrmrelICMS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelICMS:=nil;
end;

procedure TfrmrelICMS.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldesc.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('DESCRICAO').asstring;
    lblsig.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('SIGLA').asstring;
    lblest.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('ncodest').asstring;
    lblaliICMS.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('ALIQUOTA').asstring;
    lblcod.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('CODIGO').asstring;

end;

procedure TfrmrelICMS.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure TfrmrelICMS.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'ICMS';
  lbltit4.Caption := frmpesqaliqimpfis.sTitRel;

end;

end.
