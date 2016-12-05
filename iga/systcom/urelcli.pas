unit urelcli;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelcli = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    detalhe: TQRBand;
    QRLabel116: TQRLabel;
    lblcod: TQRLabel;
    QRLabel118: TQRLabel;
    lblcpf: TQRLabel;
    QRLabel120: TQRLabel;
    lblie: TQRLabel;
    QRLabel122: TQRLabel;
    lblnome: TQRLabel;
    QRLabel124: TQRLabel;
    lbltelefonein: TQRLabel;
    QRLabel126: TQRLabel;
    lblemailin: TQRLabel;
    QRLabel128: TQRLabel;
    lblsitein: TQRLabel;
    QRLabel130: TQRLabel;
    lblcontatoin: TQRLabel;
    QRLabel132: TQRLabel;
    QRLabel133: TQRLabel;
    QRLabel134: TQRLabel;
    lblendent: TQRLabel;
    lblcompent: TQRLabel;
    lblcident: TQRLabel;
    QRLabel138: TQRLabel;
    QRLabel139: TQRLabel;
    QRLabel140: TQRLabel;
    lblestent: TQRLabel;
    lblbaient: TQRLabel;
    lblnent: TQRLabel;
    lbldddin: TQRLabel;
    QRLabel1: TQRLabel;
    lblcadas: TQRLabel;
    QRLabel2: TQRLabel;
    lbltab: TQRLabel;
    QRLabel3: TQRLabel;
    lblsit: TQRLabel;
    QRLabel4: TQRLabel;
    lbltip: TQRLabel;
    QRLabel6: TQRLabel;
    lblpesqsera: TQRLabel;
    QRLabel8: TQRLabel;
    lblnasc: TQRLabel;
    QRLabel5: TQRLabel;
    lblfant: TQRLabel;
    QRLabel7: TQRLabel;
    lbllimitcredin: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel12: TQRLabel;
    lblprazomaxin: TQRLabel;
    lblcodauxiliarin: TQRLabel;
    QRLabel9: TQRLabel;
    lbltelent: TQRLabel;
    QRLabel14: TQRLabel;
    lblrgent: TQRLabel;
    QRLabel16: TQRLabel;
    lblrespent: TQRLabel;
    QRLabel18: TQRLabel;
    lblcpfent: TQRLabel;
    QRLabel13: TQRLabel;
    lblcepent: TQRLabel;
    lbldddent: TQRLabel;
    QRLabel15: TQRLabel;
    lblendcob: TQRLabel;
    QRLabel19: TQRLabel;
    lblcompcob: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    lblcidcob: TQRLabel;
    lbldddcob: TQRLabel;
    lblrgcob: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    lblncob: TQRLabel;
    lblbaicob: TQRLabel;
    lblestcob: TQRLabel;
    lblrespcob: TQRLabel;
    lblcpfcob: TQRLabel;
    QRLabel37: TQRLabel;
    lblcepcob: TQRLabel;
    lbltelcob: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    lblendcom: TQRLabel;
    lblcompcom: TQRLabel;
    lblcidcom: TQRLabel;
    lbldddcom: TQRLabel;
    lblrgcom: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    lblncom: TQRLabel;
    lblbaicom: TQRLabel;
    lblestcom: TQRLabel;
    lblrespcom: TQRLabel;
    lblcpfcom: TQRLabel;
    QRLabel48: TQRLabel;
    lblcepcom: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel32: TQRLabel;
    lbltrans: TQRLabel;
    lblcodest1: TQRLabel;
    lblcodest2: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel43: TQRLabel;
    lblcodpais1: TQRLabel;
    lblcodmun1: TQRLabel;
    lblcodpais2: TQRLabel;
    lblcodmun2: TQRLabel;
    QRLabel33: TQRLabel;
    lblobs: TQRLabel;
    lbltelcom: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel34: TQRLabel;
    QRLabel35: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer ;
     public
    { Public declarations }
  end;

var
  frmrelcli: Tfrmrelcli;

implementation
uses udados, ugeral, upesqcli;

{$R *.dfm}

procedure Tfrmrelcli.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelcli.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

   lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Detalhado Clientes';
  lbltit4.Caption := frmpesqcli.sTitRel;

end;

procedure Tfrmrelcli.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcli:=nil;
end;

procedure Tfrmrelcli.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblcod.Caption:=frmDados.Cds_Clientes.fieldbyname('CODIGO').AsString;
  lblcadas.Caption:=frmDados.Cds_Clientes.fieldbyname('DTCAD').AsString;
  lblsit.Caption:=frmDados.Cds_Clientes.fieldbyname('CSITCAD').AsString;
  lblie.Caption:=frmDados.Cds_Clientes.fieldbyname('IE').AsString;
  lblpesqsera.Caption:=frmDados.Cds_Clientes.fieldbyname('DTPESPCERASA').AsString;

  lbltab.Caption:=frmDados.Cds_Clientes.fieldbyname('CTIPOTAB').AsString;
  lblcpf.Caption:=frmDados.Cds_Clientes.fieldbyname('CPF').AsString;
  lbltip.Caption:=frmDados.Cds_Clientes.fieldbyname('CTIPOCLI').AsString;
  lblnasc.Caption:=frmDados.Cds_Clientes.fieldbyname('DATANASC').AsString;

  lblnome.Caption:=frmDados.Cds_Clientes.fieldbyname('NOME').AsString;
  lblfant.Caption:=frmDados.Cds_Clientes.fieldbyname('FANTASIA').AsString;

  lbldddin.Caption:=frmDados.Cds_Clientes.fieldbyname('DDDFS').AsString;
  lbltelefonein.Caption:=frmDados.Cds_Clientes.fieldbyname('TELEFONES').AsString;
  lblemailin.Caption:=frmDados.Cds_Clientes.fieldbyname('EMAIL').AsString;
  lblsitein.Caption:=frmDados.Cds_Clientes.fieldbyname('SITE').AsString;
  lblcontatoin.Caption:=frmDados.Cds_Clientes.fieldbyname('CONTATO').AsString;

  lbllimitcredin.Caption:=frmDados.Cds_Clientes.fieldbyname('LIMITE').AsString;
  lblprazomaxin.Caption:=frmDados.Cds_Clientes.fieldbyname('PRAZO').AsString;

  lblcodauxiliarin.Caption:=frmDados.Cds_Clientes.fieldbyname('CAUX').AsString;

  lblendent.Caption:=frmDados.Cds_Clientes.fieldbyname('ENDENT').AsString;
  lblcompent.Caption:=frmDados.Cds_Clientes.fieldbyname('COMPLENT').AsString;
  lblcident.Caption:=frmDados.Cds_Clientes.fieldbyname('CIDADEENT').AsString;
  lbldddent.Caption:=frmDados.Cds_Clientes.fieldbyname('DDDEENT').AsString;
  lbltelent.Caption:=frmDados.Cds_Clientes.fieldbyname('TELEFONEENT').AsString;
  lblrgent.Caption:=frmDados.Cds_Clientes.fieldbyname('RGRESPONSAVELENT').AsString;
  lblnent.Caption:=frmDados.Cds_Clientes.fieldbyname('NROENT').AsString;
  lblbaient.Caption:=frmDados.Cds_Clientes.fieldbyname('BAIRROENT').AsString;
  lblestent.Caption:=frmDados.Cds_Clientes.fieldbyname('ESTADOENT').AsString;
  lblcepent.Caption:=frmDados.Cds_Clientes.fieldbyname('CEPENT').AsString;
  lblrespent.Caption:=frmDados.Cds_Clientes.fieldbyname('RESPONSAVELENT').AsString;
  lblcpfent.Caption:=frmDados.Cds_Clientes.fieldbyname('CPFRESPONSAVELENT').AsString;

  lblendcob.Caption:=frmDados.Cds_Clientes.fieldbyname('ENDCOB').AsString;
  lblcompcob.Caption:=frmDados.Cds_Clientes.fieldbyname('COMPLCOB').AsString;
  lblcidcob.Caption:=frmDados.Cds_Clientes.fieldbyname('CIDADECOB').AsString;
  lbldddcob.Caption:=frmDados.Cds_Clientes.fieldbyname('DDDECOB').AsString;
  lbltelcob.Caption:=frmDados.Cds_Clientes.fieldbyname('TELEFONECOB').AsString;
  lblrgcob.Caption:=frmDados.Cds_Clientes.fieldbyname('RGRESPONSAVELFIN').AsString;
  lblncob.Caption:=frmDados.Cds_Clientes.fieldbyname('NROENT').AsString;
  lblbaicob.Caption:=frmDados.Cds_Clientes.fieldbyname('BAIRROCOB').AsString;
  lblestcob.Caption:=frmDados.Cds_Clientes.fieldbyname('ESTADOCOB').AsString;
  lblcepcob.Caption:=frmDados.Cds_Clientes.fieldbyname('CEPCOB').AsString;
  lblrespcob.Caption:=frmDados.Cds_Clientes.fieldbyname('RESPONSAVELFIN').AsString;
  lblcpfcob.Caption:=frmDados.Cds_Clientes.fieldbyname('CPFRESPONSAVELFIN').AsString;

  lblendcom.Caption:=frmDados.Cds_Clientes.fieldbyname('ENDCOM').AsString;
  lblcompcom.Caption:=frmDados.Cds_Clientes.fieldbyname('COMPLCOM').AsString;
  lblcidcom.Caption:=frmDados.Cds_Clientes.fieldbyname('CIDADECOM').AsString;
  lbldddcom.Caption:=frmDados.Cds_Clientes.fieldbyname('DDDECOM').AsString;
  lbltelcom.Caption:=frmDados.Cds_Clientes.fieldbyname('TELEFONECOM').AsString;
  lblrgcom.Caption:=frmDados.Cds_Clientes.fieldbyname('RESPONSAVELCOM').AsString;
  lblncom.Caption:=frmDados.Cds_Clientes.fieldbyname('NROCOM').AsString;
  lblbaicom.Caption:=frmDados.Cds_Clientes.fieldbyname('BAIRROCOM').AsString;
  lblestcom.Caption:=frmDados.Cds_Clientes.fieldbyname('ESTADOCOM').AsString;
  lblcepcom.Caption:=frmDados.Cds_Clientes.fieldbyname('CEPCOM').AsString;
  lblrespcom.Caption:=frmDados.Cds_Clientes.fieldbyname('RESPONSAVELCOM').AsString;
  lblcpfcom.Caption:=frmDados.Cds_Clientes.fieldbyname('CPFRESPONSAVELCOM').AsString;

  lbltrans.Caption:=frmDados.Cds_Clientes.fieldbyname('CTRANSP').AsString;

  lblcodest1.Caption:=frmDados.Cds_Clientes.fieldbyname('descufibge').AsString;
  lblcodest2.Caption:=frmDados.Cds_Clientes.fieldbyname('numufibge').AsString;
  lblcodpais1.Caption:=frmDados.Cds_Clientes.fieldbyname('descpaisibge').AsString;
  lblcodpais2.Caption:=frmDados.Cds_Clientes.fieldbyname('numpaisibge').AsString;
  lblcodmun1.Caption:=frmDados.Cds_Clientes.fieldbyname('descmibge').AsString;
  lblcodmun2.Caption:=frmDados.Cds_Clientes.fieldbyname('nummibge').AsString;

  lblobs.Caption:=frmDados.Cds_Clientes.fieldbyname('OBSERVACAO').AsString;

end;

end.
