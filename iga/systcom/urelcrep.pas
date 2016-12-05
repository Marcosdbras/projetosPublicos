unit urelcrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcrep = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    lbldescricao: TQRLabel;
    lbldata: TQRLabel;
    lblnomfun: TQRLabel;
    lblvalor: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel5: TQRLabel;
    lblservico: TQRLabel;
    QRLabel6: TQRLabel;
    lblporc: TQRLabel;
    lblvalorporc: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabesalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmrelcrep: Tfrmrelcrep;

implementation
 uses udados ,ugeral ,upesqcrep ;
{$R *.dfm}

procedure Tfrmrelcrep.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbldata.Caption:=frmDados.Cds_Comissao.fieldbyname('DATAFEC').AsString;
     lblnomfun.Caption:=frmDados.Cds_Comissao.fieldbyname('nrep').AsString;
     lbldescricao.Caption:=frmDados.Cds_Comissao.fieldbyname('DESCRICAO').AsString;
     lblservico.Caption:=frmDados.Cds_Comissao.fieldbyname('SERVICO').AsString;
     lblvalor.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('VALOR').AsFloat);
     lblporc.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('PCOMR').Asfloat);
     lblvalorporc.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_Comissao.fieldbyname('VCOMR').AsFloat);

end;

procedure Tfrmrelcrep.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcrep.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Comissão de Representantes';
  lbltit4.Caption := frmpesqcrep.sTitRel;
end;

end.
