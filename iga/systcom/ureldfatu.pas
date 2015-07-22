unit ureldfatu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, DB, DBClient, SimpleDS, StdCtrls;

type
  Tfrmreldfatu = class(TForm)
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
    QRLabel4: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    lbltitmes1: TQRLabel;
    lbltitmes2: TQRLabel;
    lbltitmes3: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    lbltitpart: TQRLabel;
    lbltitvdpo: TQRLabel;
    lbltittot: TQRLabel;
    lbltitacum: TQRLabel;
    QRDBText4: TQRDBText;
    lblqtdevd: TQRLabel;
    lblmes1: TQRLabel;
    lblmes2: TQRLabel;
    lblmes3: TQRLabel;
    lblvlrfatu: TQRLabel;
    lblpovd: TQRLabel;
    lblpoacum: TQRLabel;
    lblano: TQRLabel;
    lbltotfatu: TQRLabel;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
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
  frmreldfatu: Tfrmreldfatu;

implementation
   uses udados, ugeral, upesqvprod, uMRProd;
{$R *.dfm}

procedure Tfrmreldfatu.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);

  var
    bano:boolean;
begin

  ipag := 0;

  lblano.Caption := '';


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

  if imes3 = 1 then
     begin
       lbltitmes3.Caption := 'Jan';
     end;
  //endi
  if imes3 = 2 then
     begin
       lbltitmes3.Caption := 'Fev';
     end;
  //endi
  if imes3 = 3 then
     begin
       lbltitmes3.Caption := 'Mar';
     end;
  //endi
  if imes3 = 4 then
     begin
       lbltitmes3.Caption := 'Abr';
     end;
  //endi
  if imes3 = 5 then
     begin
       lbltitmes3.Caption := 'Mai';
     end;
  //endi
  if imes3 = 6 then
     begin
       lbltitmes3.Caption := 'jun';
     end;
  //endi
  if imes3 = 7 then
     begin
       lbltitmes3.Caption := 'Jul';
     end;
  //endi
  if imes3 = 8 then
     begin
       lbltitmes3.Caption := 'Ago';
     end;
  //endi
  if imes3 = 9 then
     begin
       lbltitmes3.Caption := 'Set';
     end;
  //endi
  if imes3 = 10 then
     begin
       lbltitmes3.Caption := 'Out';
     end;
  //endi
  if imes3 = 11 then
     begin
       lbltitmes3.Caption := 'Nov';
     end;
  //endi
  if imes3 = 12 then
     begin
       lbltitmes3.Caption := 'Dez';
     end;
  //endi


  if imes2 = 1 then
     begin
       lbltitmes2.Caption := 'Jan';
     end;
  //endi
  if imes2 = 2 then
     begin
       lbltitmes2.Caption := 'Fev';
     end;
  //endi
  if imes2 = 3 then
     begin
       lbltitmes2.Caption := 'Mar';
     end;
  //endi
  if imes2 = 4 then
     begin
       lbltitmes2.Caption := 'Abr';
     end;
  //endi
  if imes2 = 5 then
     begin
       lbltitmes2.Caption := 'Mai';
     end;
  //endi
  if imes2 = 6 then
     begin
       lbltitmes2.Caption := 'jun';
     end;
  //endi
  if imes2 = 7 then
     begin
       lbltitmes2.Caption := 'Jul';
     end;
  //endi
  if imes2 = 8 then
     begin
       lbltitmes2.Caption := 'Ago';
     end;
  //endi
  if imes2 = 9 then
     begin
       lbltitmes2.Caption := 'Set';
     end;
  //endi
  if imes2 = 10 then
     begin
       lbltitmes2.Caption := 'Out';
     end;
  //endi
  if imes2 = 11 then
     begin
       lbltitmes2.Caption := 'Nov';
     end;
  //endi
  if imes2 = 12 then
     begin
       lbltitmes2.Caption := 'Dez';
     end;
  //endi



  if imes1 = 1 then
     begin
       lbltitmes1.Caption := 'Jan';
     end;
  //endi
  if imes1 = 2 then
     begin
       lbltitmes1.Caption := 'Fev';
     end;
  //endi
  if imes1 = 3 then
     begin
       lbltitmes1.Caption := 'Mar';
     end;
  //endi
  if imes1 = 4 then
     begin
       lbltitmes1.Caption := 'Abr';
     end;
  //endi
  if imes1 = 5 then
     begin
       lbltitmes1.Caption := 'Mai';
     end;
  //endi
  if imes1 = 6 then
     begin
       lbltitmes1.Caption := 'jun';
     end;
  //endi
  if imes1 = 7 then
     begin
       lbltitmes1.Caption := 'Jul';
     end;
  //endi
  if imes1 = 8 then
     begin
       lbltitmes1.Caption := 'Ago';
     end;
  //endi
  if imes1 = 9 then
     begin
       lbltitmes1.Caption := 'Set';
     end;
  //endi
  if imes1 = 10 then
     begin
       lbltitmes1.Caption := 'Out';
     end;
  //endi
  if imes1 = 11 then
     begin
       lbltitmes1.Caption := 'Nov';
     end;
  //endi
  if imes1 = 12 then
     begin
       lbltitmes1.Caption := 'Dez';
     end;
  //endi

  if bano then
     ianoa := ianoa - 1;
  //endi

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Demonstrativo de Faturamento Ref. '+datetostr(frmMRprod.dtpDataI.date)+' A '+datetostr(frmMRprod.dtpDataf.date) ;
  lbltit4.Caption := frmpesqvprod.sTitRel; 

  {
  if (ianoa < iano) and (imes1 >= 10) and (imes1 <= 12) then
     lbltitmes1.Caption := lbltitmes1.Caption + '/'+copy(inttostr(ianoa),1,4)
  else
     lbltitmes1.Caption := lbltitmes1.Caption + '/'+copy(inttostr(iano),1,4);
  //endi

  if (ianoa < iano) and (imes2 >= 10) and (imes2 <= 12) then
     lbltitmes2.Caption := lbltitmes2.Caption + '/'+copy(inttostr(ianoa),1,4)
  else
     lbltitmes2.Caption := lbltitmes2.Caption + '/'+copy(inttostr(iano),1,4);
  //endi

  if (ianoa < iano) and (imes3 >= 10) and (imes3 <= 12) then
     lbltitmes3.Caption := lbltitmes3.Caption + '/'+copy(inttostr(ianoa),1,4)
  else
     lbltitmes3.Caption := lbltitmes3.Caption + '/'+copy(inttostr(iano),1,4);
  //endi
  }

end;

procedure Tfrmreldfatu.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.cds_vprodutos.Eof then
   begin
     lbltotfatu.Caption := '';
   end
else
   begin
     lbltotfatu.Caption := formatfloat('###,###,##0.00',frmMRProd.ftotal);
   end;
//endi
end;

procedure Tfrmreldfatu.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblvlrfatu.Caption := '';
  lblpovd.Caption := '';
  lblpoacum.Caption := '';


   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvd';

       sqp_dados.ParamByName('VARDATAI').AsDate := frmMRprod.dtpdatai.date;
       sqp_dados.ParamByName('VARDATAF').AsDate := frmMRprod.dtpdataf.date;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       lblqtdevd.Caption := frmdados.sqp_dados.ParamByName('qtdetot').AsString;
       lblvlrfatu.Caption := formatfloat('###,###,##0.00',frmdados.sqp_dados.ParamByName('vlrtfatu').Asfloat);

     end;
   //endth

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvdm';

       if (ianoa < iano) and (imes1 >= 10) and (imes1 <= 12) then
          sqp_dados.ParamByName('VARANO').AsInteger := ianoa
       else
          sqp_dados.ParamByName('VARANO').AsInteger := iano;
       //endi

       sqp_dados.ParamByName('VARMES').AsInteger := imes1;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       lblmes1.Caption := frmdados.sqp_dados.ParamByName('qtdetot').AsString;
     end;
   //endth

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvdm';

       if (ianoa < iano) and (imes2 >= 10) and (imes2 <= 12) then
          sqp_dados.ParamByName('VARANO').AsInteger := ianoa
       else
          sqp_dados.ParamByName('VARANO').AsInteger := iano;
       //endi

       sqp_dados.ParamByName('VARMES').AsInteger := imes2;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       lblmes2.Caption := frmdados.sqp_dados.ParamByName('qtdetot').AsString;
     end;
   //endth

   with frmdados do
     begin
       sqp_dados.Close;
       sqp_dados.StoredProcName := 'ptotprodvdm';

       if (ianoa < iano) and (imes3 >= 10) and (imes3 <= 12) then
          sqp_dados.ParamByName('VARANO').AsInteger := ianoa
       else
          sqp_dados.ParamByName('VARANO').AsInteger := iano;
       //endi

       sqp_dados.ParamByName('VARMES').AsInteger := imes3;

       sqp_dados.ParamByName('VARCPRO').AsInteger := cds_vprodutos.fieldbyname('codigo').asInteger;
       sqp_dados.ExecProc;

       lblmes3.Caption := frmdados.sqp_dados.ParamByName('qtdetot').AsString;
     end;
   //endth


   //showmessage(floattostr(frmMRProd.ftotal)+' / '+lblvlrfatu.caption);


   if frmMRProd.ftotal > 0 then
      lblpovd.caption := formatfloat('##0.00',strtofloat(tirapontos(lblvlrfatu.caption))/frmMRProd.ftotal*100)
   else
      lblpovd.caption := '0,00';
   //endi



  

   if frmdados.Cds_vProdutos.BOF then
      lblpoacum.caption := lblpovd.caption
   else
      if strtofloat(tirapontos(lblpovd.caption)) > 0 then
         begin
           ftotpoacum := ftotpoacum + strtofloat(tirapontos(lblpovd.caption));
           lblpoacum.caption := formatfloat('##0.00',ftotpoacum);
         end
      else
         begin
           lblpoacum.caption := '0,00';
         end;
      //endi




   //endi





  end;

procedure Tfrmreldfatu.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
end;

procedure Tfrmreldfatu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmreldfatu:=nil;

end;

end.
