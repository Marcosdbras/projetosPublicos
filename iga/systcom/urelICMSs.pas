unit urelICMSs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  TfrmrelICMSs = class(TForm)
    relatorio: TQuickRep;
    detalhe: TQRBand;
    lbldesc: TQRLabel;
    lblcod: TQRLabel;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel1: TQRLabel;
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
  frmrelICMSs: TfrmrelICMSs  ;

implementation
 uses uDados ,ugeral ,uPesqAIFIS;
{$R *.dfm}

procedure TfrmrelICMSs.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelICMSs:=nil;
end;

procedure TfrmrelICMSs.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldesc.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('DESCRICAO').asstring;
    
    lblcod.Caption:=frmDados.Cds_AliqImpFis.fieldbyname('CODIGO').asstring;

end;

procedure TfrmrelICMSs.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure TfrmrelICMSs.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
         
  ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'ICMS';
  lbltit4.Caption := frmpesqaliqimpfis.sTitRel;

end;

end.
