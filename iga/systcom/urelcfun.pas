unit urelcfun;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcfun = class(TForm)
    relatorio: TQuickRep;
    detalhe: TQRBand;
    lbldesc: TQRLabel;
    lblnomfun: TQRLabel;
    lblserv: TQRLabel;
    lblval: TQRLabel;
    lblporc: TQRLabel;
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
    QRLabel6: TQRLabel;
    lbldat: TQRLabel;
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
  frmrelcfun: Tfrmrelcfun  ;

implementation
 uses uDados ,ugeral ,uPesqcfun;
{$R *.dfm}

procedure Tfrmrelcfun.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcfun:=nil;
end;

procedure Tfrmrelcfun.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldat.Caption:=frmDados.Cds_Comissao.fieldbyname('DATAFEC').AsString;
    lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nfun').AsString;
    lbldesc.Caption:=frmDados.Cds_Comissao.fieldbyname('DESCRICAO').asstring;
    lblserv.Caption:=frmDados.Cds_Comissao.fieldbyname('SERVICO').AsString;
    lblval.Caption:=frmDados.Cds_Comissao.fieldbyname('VALOR').AsString;
    lblporc.Caption:=frmDados.Cds_Comissao.fieldbyname('PCOMF').AsString;
    lblvlrporc.Caption:=frmDados.Cds_Comissao.fieldbyname('VCOMF').AsString;

end;

procedure Tfrmrelcfun.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcfun.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Funcionarios';
  lbltit4.Caption := frmpesqcfun.sTitRel;

end;

end.
