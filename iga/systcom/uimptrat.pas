unit uimptrat;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, ExtCtrls, QRCtrls, StdCtrls;

type
  Tfrmimptrat = class(TForm)
    relatorio: TQuickRep;
    cabecalho: TQRBand;
    QRBand3: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    lbltit4: TQRLabel;
    QRBand1: TQRBand;
    QRDBText3: TQRDBText;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRDBText4: TQRDBText;
    QRLabel4: TQRLabel;
    QRDBText5: TQRDBText;
    QRLabel5: TQRLabel;
    QRDBText6: TQRDBText;
    QRLabel6: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    QRDBText9: TQRDBText;
    QRLabel9: TQRLabel;
    QRDBText10: TQRDBText;
    QRLabel10: TQRLabel;
    QRDBText11: TQRDBText;
    QRLabel11: TQRLabel;
    QRDBText12: TQRDBText;
    QRLabel12: TQRLabel;
    QRDBText13: TQRDBText;
    QRLabel13: TQRLabel;
    QRDBText14: TQRDBText;
    QRLabel14: TQRLabel;
    QRDBText15: TQRDBText;
    QRLabel15: TQRLabel;
    QRDBText16: TQRDBText;
    QRLabel16: TQRLabel;
    QRDBText17: TQRDBText;
    QRLabel17: TQRLabel;
    QRDBText18: TQRDBText;
    QRLabel18: TQRLabel;
    QRDBText19: TQRDBText;
    QRLabel19: TQRLabel;
    QRDBText20: TQRDBText;
    QRSubDetail1: TQRSubDetail;
    lblid: TQRDBText;
    lbloutinf1: TQRLabel;
    QRDBText2: TQRDBText;
    lbloutinf2: TQRLabel;
    QRDBText21: TQRDBText;
    lbloutinf3: TQRLabel;
    QRDBText22: TQRDBText;
    QRLabel20: TQRLabel;
    QRDBText23: TQRDBText;
    lbloutinf4: TQRLabel;
    QRDBText24: TQRDBText;
    QRLabel21: TQRLabel;
    QRDBText25: TQRDBText;
    QRDBText26: TQRDBText;
    QRLabel22: TQRLabel;
    QRDBText27: TQRDBText;
    QRDBText28: TQRDBText;
    lbloutinf5: TQRLabel;
    QRDBText29: TQRDBText;
    lbloutinf6: TQRLabel;
    QRDBText30: TQRDBText;
    QRLabel23: TQRLabel;
    procedure cabecalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRSubDetail1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmimptrat: Tfrmimptrat;

implementation
   uses udados, ugeral, utra;
{$R *.dfm}

procedure Tfrmimptrat.cabecalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmimptrat.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin

  ipag := 0;

  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Tratamento';
  lbltit4.Caption := '';

end;

procedure Tfrmimptrat.QRSubDetail1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with frmdados do
    begin
      cds_matrep.Active := false;
      dbx_matrep.Active := false;
      dbx_matrep.SQL.Clear;
      dbx_matrep.SQL.Add('Select * from matrep where (codmat_restaurar = '+inttostr(cds_mat_restaurar.fieldbyname('codigo').asInteger)+') and (codsvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger   )+')'   );
      dbx_matrep.Active := true;
      cds_matrep.Active := true;

      if cds_matrep.RecordCount > 0 then
         begin
           lblid.Color := clMoneyGreen;
           lblid.Font.Color := clwhite;
           lblid.Transparent := false;
         end
      else
         begin
           lblid.Color := clwhite;
           lblid.Font.Color := clblack;
           lblid.Transparent := true;
         end;
      //endi
    end;
  //endi

end;

procedure Tfrmimptrat.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  with frmdados do
     begin
       lbloutinf1.Caption := cds_indice.FieldByName('outinfcli1').asString;
       lbloutinf2.Caption := cds_indice.FieldByName('outinfcli2').asString;
       lbloutinf3.Caption := cds_indice.FieldByName('outinfcli3').asString;
       lbloutinf4.Caption := cds_indice.FieldByName('outinfcli4').asString;
       lbloutinf5.Caption := cds_indice.FieldByName('outinfcli5').asString;
       lbloutinf6.Caption := cds_indice.FieldByName('outinfcli6').asString;
       
       if (cds_indice.FieldByName('outinfcli1').asString <> '') then
           begin
             lbloutinf1.Caption := cds_indice.FieldByName('outinfcli1').asString;
           end;
       //endi

        if (cds_indice.FieldByName('outinfcli2').asString <> '') then
           begin
             lbloutinf2.Caption := cds_indice.FieldByName('outinfcli2').asString;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli3').asString <> '') then
           begin
             lbloutinf3.Caption := cds_indice.FieldByName('outinfcli3').asString;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli4').asString <> '') then
           begin
             lbloutinf4.Caption := cds_indice.FieldByName('outinfcli4').asString;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli5').asString <> '') then
           begin
             lbloutinf5.Caption := cds_indice.FieldByName('outinfcli5').asString;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli6').asString <> '') then
           begin
             lbloutinf6.Caption := cds_indice.FieldByName('outinfcli6').asString;
           end;
       //endi

     end;
   //endi

end;

end.
