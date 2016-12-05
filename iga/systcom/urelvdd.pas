unit urelvdd;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmrelvdd = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lbldatcad: TQRLabel;
    lblcli: TQRLabel;
    lblcod: TQRLabel;
    lblnped: TQRLabel;
    lbltotal: TQRLabel;
    lblporcdesc: TQRLabel;
    lblvaldesc: TQRLabel;
    lblliq: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    lblcpro: TQRLabel;
    lblqtde: TQRLabel;
    lblnpro: TQRLabel;
    lblprve: TQRLabel;
    lblsubtotal: TQRLabel;
    lblnunid: TQRLabel;
    lblimpnf: TQRLabel;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    lbltitpdesconto: TQRLabel;
    lbltitvdesconto: TQRLabel;
    lbltitliquido: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabesalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmrelvdd: Tfrmrelvdd;

implementation
 uses udados ,ugeral , upesqVd , uPesqOrcam;
{$R *.dfm}

procedure Tfrmrelvdd.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lbldatcad.caption:=frmDados.Cds_sVenda.fieldbyname('DATACAD').AsString;
    lblcli.Caption:=frmDados.Cds_sVenda.fieldbyname('ncli').AsString;
    lblcod.Caption:=frmDados.Cds_sVenda.fieldbyname('CCLI').AsString;
    lblnped.Caption:=frmDados.Cds_sVenda.fieldbyname('NPED').AsString;
    lbltotal.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_sVenda.fieldbyname('totg').AsFloat);


  if frmpesqOrcam <> nil then
     begin
       lbltitpdesconto.Caption := '';
       lbltitvdesconto.Caption := '';
       lbltitliquido.Caption := '';

       lblporcdesc.Caption:='';
       lblvaldesc.Caption:='';
       lblliq.Caption:='';

     end;



    if frmpesqvd <> nil then
       begin
         lbltitpdesconto.Caption := '% DESCONTO';
         lbltitvdesconto.Caption := 'VLR DESCONTO';
         lbltitliquido.Caption := 'LÍQUIDO';


         lblporcdesc.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_sVenda.fieldbyname('PDESC_P').AsFloat);
         lblvaldesc.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_sVenda.fieldbyname('VALDESC_P').AsFloat);
         lblliq.Caption:=formatfloat('###,###,##0.00',frmDados.Cds_sVenda.fieldbyname('LIQUIDO_P').AsFloat);
       end;
    //endi

    with frmdados do
      begin
        cds_dvenda.Active := false;
        dbx_dvenda.Active := false;
        dbx_dvenda.SQL.Clear;
        dbx_dvenda.SQL.Add('Select * from dvenda d where d.codsvenda = '+  inttostr( cds_svenda.fieldbyname('codigo').asInteger ) );

        dbx_dvenda.Active := true;
        cds_dvenda.Active := true;

       //showmessage (  inttostr( cds_dvenda.recordcount)  );
      end;
    //endth


end;

procedure Tfrmrelvdd.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelvdd.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);

  if frmpesqVd <> nil then
     begin
     lbltit4.Caption := frmpesqVd.sTitRel;
     lbltit3.Caption := 'Vendas';
     end;
  //end
  if frmpesqOrcam <> nil then
     begin
     lbltit4.Caption := frmpesqOrcam.sTitRel;
     lbltit3.Caption := 'Orçamentos';
     end;
  //end

end;

procedure Tfrmrelvdd.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    lblcpro.caption:=frmDados.Cds_dVenda.fieldbyname('CPRO').AsString;
    lblqtde.Caption:=frmDados.Cds_dVenda.fieldbyname('QTDE').AsString;
    lblnunid.Caption:=frmDados.Cds_dVenda.fieldbyname('nunid').AsString;
    lblnpro.caption:=frmDados.Cds_dVenda.fieldbyname('NPRO').AsString;
    lblprve.caption:=formatfloat('###,###,##0.00',frmDados.Cds_dVenda.fieldbyname('PRVE').AsFloat);
    lblsubtotal.caption:=formatfloat('###,###,##0.00',frmDados.Cds_dVenda.fieldbyname('SUBTOTAL').AsFloat);
    lblimpnf.caption:=frmDados.Cds_dVenda.fieldbyname('IMPNF').AsString;
end;

end.
