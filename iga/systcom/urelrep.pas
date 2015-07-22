unit urelrep;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelrep = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lbltelefone: TQRLabel;
    lblemail: TQRLabel;
    lblcontato: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lblcomissao: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    lblbairro: TQRLabel;
    lblestado: TQRLabel;
    lblcep: TQRLabel;
    lblendereco: TQRLabel;
    lblcomplemento: TQRLabel;
    lblcidade: TQRLabel;
    lbltelefonel: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel9: TQRLabel;
    lblnome: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
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
  frmrelrep: Tfrmrelrep;

implementation
 uses udados ,ugeral ,upesqrep ;
{$R *.dfm}

procedure Tfrmrelrep.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lblnome.Caption:=frmDados.Cds_Representantes.fieldbyname('NOME').AsString;
     lbltelefone.caption:=frmDados.Cds_Representantes.fieldbyname('FONES').AsString;
    lblemail.Caption:=frmDados.Cds_Representantes.fieldbyname('EMAIL').AsString;
    lblcontato.Caption:=frmDados.Cds_Representantes.fieldbyname('CONTATO').AsString;
    lblcomissao.caption:=frmDados.Cds_Representantes.fieldbyname('COMISSAO').AsString;
    lblendereco.Caption:=frmDados.Cds_Representantes.fieldbyname('ENDERECO').AsString;
    lblcomplemento.Caption:=frmDados.Cds_Representantes.fieldbyname('COMPL').AsString;
    lblbairro.Caption:=frmDados.Cds_Representantes.fieldbyname('BAIRRO').AsString;
    lblcidade.Caption:=frmDados.Cds_Representantes.fieldbyname('CIDADE').AsString;
    lblestado.Caption:=frmDados.Cds_Representantes.fieldbyname('ESTADO').AsString;
    lblcep.Caption:=frmDados.Cds_Representantes.fieldbyname('CEP').AsString;
    lbltelefonel.Caption:=frmDados.Cds_Representantes.fieldbyname('TELEFONE').AsString;

end;

procedure Tfrmrelrep.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelrep.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Representantes';
  lbltit4.Caption := frmpesqrep.sTitRel;
end;

end.
