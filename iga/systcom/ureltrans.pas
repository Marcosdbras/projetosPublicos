unit ureltrans;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreltrans = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRLabel1: TQRLabel;
    lblcod: TQRLabel;
    QRLabel3: TQRLabel;
    lblcnpj: TQRLabel;
    QRLabel5: TQRLabel;
    lblie: TQRLabel;
    QRLabel7: TQRLabel;
    lblnome: TQRLabel;
    QRLabel9: TQRLabel;
    lbltel: TQRLabel;
    QRLabel11: TQRLabel;
    lblemail: TQRLabel;
    QRLabel13: TQRLabel;
    lblcontato: TQRLabel;
    QRLabel15: TQRLabel;
    lblend: TQRLabel;
    QRLabel17: TQRLabel;
    lblcomp: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    lblcid: TQRLabel;
    QRLabel22: TQRLabel;
    lblbai: TQRLabel;
    QRLabel24: TQRLabel;
    lblcep: TQRLabel;
    lblest: TQRLabel;
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
  frmreltrans: Tfrmreltrans;

implementation
 uses udados ,ugeral ,upesqtrans ;
{$R *.dfm}

procedure Tfrmreltrans.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblcod.caption:=frmDados.Cds_Transportadores.fieldbyname('CODIGO').AsString;
     lblcnpj.caption:=frmDados.Cds_Transportadores.fieldbyname('CNPJ').AsString;
     lblie.caption:=frmDados.Cds_Transportadores.fieldbyname('IE').AsString;
     lbltel.caption:=frmDados.Cds_Transportadores.fieldbyname('TELEFONES').AsString;
     lblemail.caption:=frmDados.Cds_Transportadores.fieldbyname('EMAIL').AsString;
     lblcontato.caption:=frmDados.Cds_Transportadores.fieldbyname('CONTATO').AsString;
     lblend.caption:=frmDados.Cds_Transportadores.fieldbyname('ENDERECO').AsString;
     lblcomp.caption:=frmDados.Cds_Transportadores.fieldbyname('COMPL').AsString;
     lblcid.caption:=frmDados.Cds_Transportadores.fieldbyname('CIDADE').AsString;
     lblbai.caption:=frmDados.Cds_Transportadores.fieldbyname('BAIRRO').AsString;
     lblest.caption:=frmDados.Cds_Transportadores.fieldbyname('ESTADO').AsString;
     lblcep.caption:=frmDados.Cds_Transportadores.fieldbyname('CEP').AsString;
     lblnome.caption:=frmDados.Cds_Transportadores.fieldbyname('NOME').AsString;
end;

procedure Tfrmreltrans.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreltrans.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Transpotadores';
  lbltit4.Caption := frmpesqtrans.sTitRel;
end;

end.
