unit urelvf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelvf = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    detalhe: TQRBand;
    rodape: TQRBand;
    lblnped: TQRLabel;
    lblemissao: TQRLabel;
    lblcliente: TQRLabel;
    lblpercdesc: TQRLabel;
    lblvlrdesc: TQRLabel;
    lblliquido: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lbltotalliquido: TQRLabel;
    lbltotalvlrdesc: TQRLabel;
    lbltittotal: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer ;
    ftotvlrdesc,ftotliquido :real;
  public
    { Public declarations }
  end;

var
  frmrelvf: Tfrmrelvf;

implementation
uses udados, ugeral, upesqvf;

{$R *.dfm}

procedure Tfrmrelvf.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelvf.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;
 ftotvlrdesc :=0;
 ftotliquido:=0;

  lbltittotal.Caption := '';
  lbltotalvlrdesc.Caption := '';
  lbltotalliquido.Caption := '';

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Simplificado de Vendas';
  lbltit4.Caption := frmpesqvf.sTitRel;

end;

procedure Tfrmrelvf.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblnped.Caption :=  frmdados.Cds_sVenda.Fieldbyname('numped').AsString;
  lblemissao.Caption:= frmdados.Cds_sVenda.fieldbyname('Datacad').AsString;
  lblcliente.Caption:=frmdados.cds_svenda.fieldbyname('ncli').asString;
  lblpercdesc.Caption:=frmdados.cds_svenda.fieldbyname('pdesc').AsString;
  lblvlrdesc.Caption:= formatfloat('###,###,##0.00',frmdados.cds_svenda.fieldbyname('valdesc').Asfloat);
  lblliquido.Caption:=formatfloat('###,###,##0.00',frmdados.cds_svenda.fieldbyname('totgpagar').Asfloat);



  ftotvlrdesc:=ftotvlrdesc+frmdados.Cds_sVenda.fieldbyname('valdesc').Asfloat;
  ftotliquido:=ftotliquido+frmdados.cds_svenda.fieldbyname('totgpagar').Asfloat;

end;

procedure Tfrmrelvf.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelvf:=nil;
end;

procedure Tfrmrelvf.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_sVenda.Eof = true then
   begin
     lbltittotal.Caption := 'Total';
     lbltotalvlrdesc.Caption:=formatfloat('###,###,##0.00',ftotvlrdesc);
     lbltotalliquido.Caption:=formatfloat('###,###,##0.00',ftotliquido);
   end;
//endi
end;

end.
