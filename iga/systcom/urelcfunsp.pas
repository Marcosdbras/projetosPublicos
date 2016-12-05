unit urelcfunsp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcfunsp = class(TForm)
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
    lblvcomf: TQRLabel;
    lblvalor: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel1: TQRLabel;
    lblpcomf: TQRLabel;
    QRBand1: TQRBand;
    lbltittotal: TQRLabel;
    lbltotvcomf: TQRLabel;
    lbltotvalor: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
        ipag:integer ;
        ftotvalor,
        ftotvcom:real;

  public
    { Public declarations }
  end;

var
  frmrelcfunsp: Tfrmrelcfunsp  ;

implementation
 uses uDados ,ugeral ,uPesqcfunp;
{$R *.dfm}

procedure Tfrmrelcfunsp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcfunsp:=nil;
end;

procedure Tfrmrelcfunsp.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nfun').AsString;
     lblvalor.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('valor').Asfloat);
     lblpcomf.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('PCOMF').Asfloat);
     lblvcomf.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('VCOMF').Asfloat);

     ftotvalor := ftotvalor+frmDados.Cds_Comissao.fieldbyname('valor').Asfloat;
     ftotvcom := ftotvcom+frmDados.Cds_Comissao.fieldbyname('VCOMF').Asfloat;



end;

procedure Tfrmrelcfunsp.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
   ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcfunsp.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;

  ftotvalor := 0;
  ftotvcom := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Funcionarios';
  lbltit4.Caption := frmpesqcfunp.sTitRel;

end;

procedure Tfrmrelcfunsp.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbltittotal.Caption := '';
  lbltotvalor.Caption := '';
  lbltotvcomf.Caption := '';

  if frmdados.Cds_Comissao.Eof then
     begin
       lbltittotal.Caption := 'Totais';
       lbltotvalor.Caption := formatfloat('###,###,##0.00',ftotvalor);
       lbltotvcomf.Caption := formatfloat('###,###,##0.00',ftotvcom);
     end;
  //endi
end;

end.
