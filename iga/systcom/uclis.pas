unit uclis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelclis = class(TForm)
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
    QRLabel122: TQRLabel;
    lblnome: TQRLabel;
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
  frmrelclis: Tfrmrelclis;

implementation
uses udados, ugeral, upesqcli;

{$R *.dfm}

procedure Tfrmrelclis.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelclis.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;

   lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Detalhado Clientes';
  lbltit4.Caption := frmpesqcli.sTitRel;

end;

procedure Tfrmrelclis.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelcli:=nil;
end;

procedure Tfrmrelclis.detalheBeforePrint(Sender: TQRCustomBand;
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
