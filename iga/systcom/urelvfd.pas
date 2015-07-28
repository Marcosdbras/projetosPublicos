unit urelvfd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelvfd = class(TForm)
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
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lbltotalliquido: TQRLabel;
    lbltotalvlrdesc: TQRLabel;
    lbltittotal: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    lbldin: TQRLabel;
    lblaprazo: TQRLabel;
    lbltotal: TQRLabel;
    lblqtde: TQRLabel;
    lblnuni: TQRLabel;
    lbldescricao: TQRLabel;
    lblprunitario: TQRLabel;
    lblsubtot: TQRLabel;
    lbltip: TQRLabel;
    lbldoc: TQRLabel;
    lblprazo: TQRLabel;
    lblvenc: TQRLabel;
    lblvlr: TQRLabel;
    GroupHeaderBand1: TQRBand;
    GroupFooterBand1: TQRBand;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    lblsubtotal: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    lbltotvlr: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer ;
    ftotvlrdesc,ftotliquido,fsubtotal,ftotalvlr :real;
  public
    { Public declarations }
  end;

var
  frmrelvfd: Tfrmrelvfd;

implementation
uses udados, ugeral, upesqvf;

{$R *.dfm}

procedure Tfrmrelvfd.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelvfd.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
 ipag := 0;
 ftotvlrdesc :=0;
 ftotliquido:=0;
 fsubtotal:=0;
 ftotalvlr:=0;


  lbltittotal.Caption := '';
  lbltotalvlrdesc.Caption := '';
  lbltotalliquido.Caption := '';

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Relatório Simplificado de Vendas';
  lbltit4.Caption := frmpesqvf.sTitRel;

end;

procedure Tfrmrelvfd.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblnped.Caption :=  frmdados.Cds_sVenda.Fieldbyname('numped').AsString;
  lblemissao.Caption:= frmdados.Cds_sVenda.fieldbyname('Datacad').AsString;
  lblcliente.Caption:=frmdados.cds_svenda.fieldbyname('ncli').asString;
  lblpercdesc.Caption:=frmdados.cds_svenda.fieldbyname('pdesc').AsString;
  lblvlrdesc.Caption:= formatfloat('###,###,##0.00',frmdados.cds_svenda.fieldbyname('valdesc').Asfloat);
  lblliquido.Caption:=formatfloat('###,###,##0.00',frmdados.cds_svenda.fieldbyname('totgpagar').Asfloat);
  if frmdados.cds_svenda.fieldbyname('din').asfloat > frmdados.cds_svenda.fieldbyname('totpagar').asfloat then
     begin
       lbldin.Caption := formatfloat('###,###,#0.00',frmdados.cds_svenda.fieldbyname('totpagar').asfloat);
     end
  else
     begin
       lbldin.Caption := formatfloat('###,###,#0.00',frmdados.cds_svenda.fieldbyname('din').asfloat);
     end;
  //endi
  
  frmdados.dbx_Exec.Active := false;
  frmdados.dbx_Exec.SQL.Clear;
  frmdados.dbx_Exec.SQL.Add('Select sum(valorreal) as total from Vencimentos where nco = '+frmdados.cds_svenda.fieldbyname('nco').asString);
  frmdados.dbx_Exec.Active := true;
  lblaprazo.Caption := formatfloat('###,###,##0.00',frmdados.dbx_exec.fieldbyname('total').asfloat);
  lbltotal.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos( lblaprazo.Caption  )) +  strtofloat(tirapontos( lbldin.Caption  ))  );

  ftotvlrdesc:=ftotvlrdesc+frmdados.Cds_sVenda.fieldbyname('valdesc').Asfloat;
  ftotliquido:=ftotliquido+frmdados.cds_svenda.fieldbyname('totgpagar').Asfloat;

end;

procedure Tfrmrelvfd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
Action:=caFree;
frmrelvfd:=nil;
end;

procedure Tfrmrelvfd.rodapeBeforePrint(Sender: TQRCustomBand;
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

procedure Tfrmrelvfd.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lblqtde.Caption:=frmDados.cds_vendab.fieldbyname('qtde').AsString ;
    lblnuni.Caption:=frmDados.cds_Vendab.fieldbyname('nuni').Asstring;
    lbldescricao.Caption:=frmDados.cds_Vendab.fieldbyname('NPRO').Asstring;
    lblprunitario.Caption:=formatfloat('###,###,##0.00',frmDados.cds_Vendab.fieldbyname('PRVE').Asfloat);
    lblsubtot.Caption:=formatfloat('###,###,##0.00',frmDados.cds_Vendab.fieldbyname('SUBTOTAL').Asfloat);

 fsubtotal:=fsubtotal+frmDados.cds_Vendab.fieldbyname('SUBTOTAL').Asfloat;

end;

procedure Tfrmrelvfd.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
 lblsubtotal.Caption:=formatfloat('###,###,##0.00',fsubtotal);
end;

procedure Tfrmrelvfd.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbltip.Caption:=frmDados.cds_Vencto.fieldbyname('n_tipo_pgto').AsString;
    lbldoc.Caption:=frmDados.cds_Vencto.fieldbyname('doc').AsString;
    lblprazo.Caption:=frmDados.cds_Vencto.fieldbyname('prazo').AsString ;
    lblvenc.Caption:=frmDados.cds_Vencto.fieldbyname('dtv').AsString;
    lblvlr.Caption:=formatfloat('###,###,##0.00',frmDados.cds_Vencto.fieldbyname('valorreal').asfloat);

    ftotalvlr:=ftotalvlr+frmDados.cds_Vencto.fieldbyname('valorreal').asfloat;
end;

procedure Tfrmrelvfd.GroupFooterBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lbltotvlr.Caption:=formatfloat('###,###,##0.00',ftotalvlr);
end;

end.
