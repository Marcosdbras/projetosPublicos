unit urelcfd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcfd = class(TForm)
    relatorio: TQuickRep;
    detalhe: TQRBand;
    lbldesc: TQRLabel;
    lblsig: TQRLabel;
    lblcod: TQRLabel;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
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
  frmrelcfd: Tfrmrelcfd  ;

implementation
 uses uDados ,ugeral ,uPesqcf;
{$R *.dfm}

procedure Tfrmrelcfd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcfd:=nil;
end;

procedure Tfrmrelcfd.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldesc.Caption:=frmDados.Cds_CF.fieldbyname('DESCRICAO').asstring;
    lblsig.Caption:=frmDados.Cds_CF.fieldbyname('SIGLA').asstring;
    lblcod.Caption:=frmDados.Cds_CF.fieldbyname('CODIGO').asstring;

end;

procedure Tfrmrelcfd.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcfd.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatorio Detalhado';

end;

end.
