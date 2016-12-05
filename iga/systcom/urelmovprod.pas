unit urelmovprod;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS, StdCtrls;

type
  Tfrmrelmovprod = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    cabecalho: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRSubDetail2: TQRSubDetail;
    QRSubDetail3: TQRSubDetail;
    GroupHeaderBand1: TQRBand;
    GroupHeaderBand2: TQRBand;
    GroupHeaderBand3: TQRBand;
    lbltit6: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel1: TQRLabel;
    lbltitmes1: TQRLabel;
    lbltitmes3: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    lblqa1: TQRLabel;
    QRLabel25: TQRLabel;
    lbldesc1: TQRLabel;
    lblvlrcdesc1: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRDBText5: TQRDBText;
    lblqa2: TQRLabel;
    QRDBText7: TQRDBText;
    lbldesc2: TQRLabel;
    lblvlrcdesc2: TQRLabel;
    QRDBText10: TQRDBText;
    lblqa3: TQRLabel;
    QRDBText11: TQRDBText;
    lblvlrat1: TQRLabel;
    lblvlrat2: TQRLabel;
    lblvlrat3: TQRLabel;
    lblnpro3: TQRLabel;
    lblnpro1: TQRLabel;
    lblnpro2: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRSubDetail3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro, ftotpoacum:real;
    idia, imes, iano:word;
    imes1, imes2, imes3, ianoa, ipag:integer;

  public
    { Public declarations }
  end;

var
  frmrelmovprod: Tfrmrelmovprod;

implementation
   uses udados, ugeral, upesqvprod, uMRProd;
{$R *.dfm}

procedure Tfrmrelmovprod.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

  var
    bano:boolean;
begin

  ipag := 0;

  
  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Movimento de Mercadorias '+sgDataIb+' A '+sgDataFb;
  if frmpesqvprod <> nil then
     lbltit4.Caption := frmpesqvprod.sTitRel
  else
     lbltit4.Caption := '';
  //endi
  
end;

procedure Tfrmrelmovprod.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.cds_vprodutos.Eof then
   begin
     //lbltotfatu.Caption := '';
   end
else
   begin
     //lbltotfatu.Caption := formatfloat('###,###,##0.00',frmMRProd.ftotal);
   end;
//endi
end;

procedure Tfrmrelmovprod.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelmovprod.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelmovprod:=nil;

end;

procedure Tfrmrelmovprod.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

var
  fpdesc, fvlrcdesc:real;
begin


with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from vprodutos where codigo = '+ inttostr( cds_vendab.fieldbyname('cpro').asInteger ) );
    dbx_exec.Active := true;
    if dbx_exec.RecordCount > 0 then
       begin
         lblnpro1.Caption := dbx_exec.fieldbyname('descricao').asString;
         lblqa1.Caption := formatfloat('###,###,##0.000',dbx_exec.fieldbyname('qua').asfloat );
         lblvlrat1.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('prve').asfloat );
       end;
    //endi


    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from svenda where nco = '+ inttostr( cds_vendab.fieldbyname('controle').asInteger ) );
    dbx_exec.Active := true;
    if dbx_exec.RecordCount > 0 then
       begin

         fpdesc := dbx_exec.fieldbyname('pdesc').asfloat;

       end;
    //endi



    lbldesc1.Caption := formatfloat('###,###,##0.000',fpdesc + dbx_exec.fieldbyname('pdesc').asfloat );

    fvlrcdesc := cds_vendab.fieldbyname('prve').asfloat - cds_vendab.fieldbyname('prve').asfloat * fpdesc / 100  ;

    lblvlrcdesc1.Caption := formatfloat('###,###,##0.00', fvlrcdesc - cds_vendab.fieldbyname('vdesc').asfloat );




  end;
//endi


end;

procedure Tfrmrelmovprod.QRSubDetail2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);

var
  fpdesc, fvlrcdesc:real;
begin



with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from vprodutos where codigo = '+ inttostr( cds_dvenda.fieldbyname('cpro').asInteger ) );
    dbx_exec.Active := true;
    if dbx_exec.RecordCount > 0 then
       begin
         lblnpro2.Caption := dbx_exec.fieldbyname('descricao').asString;
         lblqa2.Caption := formatfloat('###,###,##0.000',dbx_exec.fieldbyname('qua').asfloat );
         lblvlrat2.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('prve').asfloat );
       end;
    //endi
    if dbx_exec.RecordCount > 0 then
       begin
         dbx_exec.Active := false;
         dbx_exec.SQL.Clear;
         dbx_exec.SQL.Add('Select * from svenda where codigo = '+ inttostr( cds_dvenda.fieldbyname('codsvenda').asInteger ) );
         dbx_exec.Active := true;
         fpdesc := dbx_exec.fieldbyname('pdesc').asfloat;
       end;
    //endi
    lbldesc2.Caption := formatfloat('###,###,##0.000',fpdesc );
    fvlrcdesc := cds_dvenda.fieldbyname('prve').asfloat - cds_dvenda.fieldbyname('prve').asfloat * fpdesc / 100  ;
    lblvlrcdesc2.Caption := formatfloat('###,###,##0.00', fvlrcdesc  );
  end;
//endi



end;


procedure Tfrmrelmovprod.QRSubDetail3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  fpdesc, fvlrcdesc:real;
begin



with frmdados do
  begin
    dbx_exec.Active := false;
    dbx_exec.SQL.Clear;
    dbx_exec.SQL.Add('Select * from vprodutos where codigo = '+ inttostr( cds_ent_prod.fieldbyname('cpro').asInteger ) );
    dbx_exec.Active := true;
    if dbx_exec.RecordCount > 0 then
       begin
         lblnpro3.Caption := dbx_exec.fieldbyname('descricao').asString;
         lblqa3.Caption := formatfloat('###,###,##0.000',dbx_exec.fieldbyname('qua').asfloat );
         lblvlrat3.Caption := formatfloat('###,###,##0.00',dbx_exec.fieldbyname('prve').asfloat );
       end;
    //endi
  end;
//endi



end;


end.
