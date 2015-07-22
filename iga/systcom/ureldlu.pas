unit ureldlu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS, StdCtrls;

type
  Tfrmreldlu = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    lblcodigo: TQRDBText;
    QRLabel3: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel11: TQRLabel;
    lblprcu: TQRDBText;
    lblqtdevd: TQRLabel;
    lblvlrfatu: TQRLabel;
    lbltotfatu: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lblprve: TQRDBText;
    QRLabel4: TQRLabel;
    lblpoun: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    lblvlrcus: TQRLabel;
    QRLabel14: TQRLabel;
    lblpolucro: TQRLabel;
    lbltotcus: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro, ftotpoacum:real;
    idia, imes, iano:word;
    imes1, imes2, imes3, ianoa, ipag:integer;

  public
    { Public declarations }
  end;

var
  frmreldlu: Tfrmreldlu;

implementation
   uses udados, ugeral, upesqvprod, uMRProd;
{$R *.dfm}

procedure Tfrmreldlu.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

  var
    bano:boolean;
begin
  
  ipag := 0;

  //lblano.Caption := '';


  bano := false;

  imes := 0;
  idia := 0;
  iano := 0;

  imes1 := 0;
  imes2 := 0;
  imes3 := 0;

  ftotcusto := 0;
  ftotpreco := 0;
  ftotlucro := 0;
  ftotpoacum := 0;

  decodedate(frmMrProd.dtpDataI.Date,iano,imes,idia);
  lblcodigo.DataField := frmpesqvprod.dbgProdutos.Columns[1].FieldName;



  ianoa := iano;

  imes1 := imes - 3;
  if imes1 = 0 then
     begin
       imes1 := 12;
       bano := true;
     end;
  //endi
  if imes1 = -1 then
     begin
       imes1 := 11;
       bano := true;
     end;
  //endi
  if imes1 = -2 then
     begin
       imes1 := 10;
       bano := true;
     end;
  //endi


  imes2 := imes - 2;
  if imes2 = 0 then
     begin
       imes2 := 12;
       bano := true;
     end;
  //endi
  if imes2 = -1 then
     begin
       imes2 := 11;
       bano := true;
     end;
  //endi

  imes3 := imes - 1;
  if imes3 = 0 then
     begin
       imes3 := 12;
       bano := true;
     end;
  //endi


  if bano then
     ianoa := ianoa - 1;
  //endi

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Rentabilidade de Lucro '+datetostr(frmMRprod.dtpDataI.date)+' A '+datetostr(frmMRprod.dtpDataf.date) ;
  lbltit4.Caption := frmpesqvprod.sTitRel;


end;

procedure Tfrmreldlu.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.cds_vprodutos.Eof then
   begin
     lbltotfatu.Caption := '';
     lbltotcus.Caption := '';

   end
else
   begin
     lbltotfatu.Caption := formatfloat('###,###,##0.00',frmMRProd.ftotal);
     lbltotcus.Caption := formatfloat('###,###,##0.00',frmMRProd.ftotalc);

   end;
//endi
end;

procedure Tfrmreldlu.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblvlrfatu.Caption := '';
  lblpoun.Caption := '';
  lblpolucro.Caption := '';

  if frmdados.Cds_vProdutos.fieldbyname('prve').asfloat > 0 then
     lblpoun.Caption :=  formatfloat('###,###,##0.00',(frmdados.Cds_vProdutos.fieldbyname('prve').asfloat - frmdados.Cds_vProdutos.fieldbyname('prcu').asfloat)/frmdados.Cds_vProdutos.fieldbyname('prve').asfloat * 100);
  //endi

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvd';

       sqp_dados.ParamByName('VARDATAI').AsDate := frmMRprod.dtpdatai.date;
       sqp_dados.ParamByName('VARDATAF').AsDate := frmMRprod.dtpdataf.date;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       lblqtdevd.Caption := frmdados.sqp_dados.ParamByName('qtdetot').AsString;
       lblvlrfatu.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('vlrtfatu').Asfloat);
       lblvlrCus.Caption := formatfloat('###,###,##0.00',sqp_dados.ParamByName('vlrtcus').Asfloat);

       if sqp_dados.ParamByName('vlrtfatu').Asfloat > 0 then
          lblpolucro.Caption := formatfloat('###,###,##0.00',(sqp_dados.ParamByName('vlrtfatu').Asfloat - sqp_dados.ParamByName('vlrtcus').Asfloat) / sqp_dados.ParamByName('vlrtfatu').Asfloat * 100);
       //endi

     end;
   //endth




  end;

procedure Tfrmreldlu.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreldlu.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmreldlu:=nil;

end;

end.
