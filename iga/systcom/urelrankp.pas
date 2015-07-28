unit urelrankp;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS, StdCtrls;

type
  Tfrmrelrankp = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel6: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel8: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    QRDBText1: TQRDBText;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
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
  frmrelrankp: Tfrmrelrankp;

implementation
   uses udados, ugeral, upesqvprod, uMRProd;
{$R *.dfm}

procedure Tfrmrelrankp.relatorioBeforePrint(Sender: TCustomQuickRep;
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
  lbltit3.Caption := 'Ranking de Produtos Vendidos '+datetostr(frmMRprod.dtpDataI.date)+' A '+datetostr(frmMRprod.dtpDataf.date) ;
  lbltit4.Caption := frmpesqvprod.sTitRel;


end;

procedure Tfrmrelrankp.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmrelrankp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelrankp:=nil;

end;

end.
