unit URelCalendario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TFrmRelCalendario = class(TForm)
    QuickRep1: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRDBText1: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    QRLabel8: TQRLabel;
    QRLabel9: TQRLabel;
    QRLabel10: TQRLabel;
    QRLabel11: TQRLabel;
    QRLabel12: TQRLabel;
    QRLabel13: TQRLabel;
    QRLabel14: TQRLabel;
    QRLabel15: TQRLabel;
    QRLabel16: TQRLabel;
    QRLabel17: TQRLabel;
    QRLabel18: TQRLabel;
    QRLabel19: TQRLabel;
    QRLabel20: TQRLabel;
    QRLabel21: TQRLabel;
    QRLabel22: TQRLabel;
    QRLabel23: TQRLabel;
    QRLabel24: TQRLabel;
    QRLabel25: TQRLabel;
    QRLabel26: TQRLabel;
    QRLabel27: TQRLabel;
    QRLabel28: TQRLabel;
    QRLabel29: TQRLabel;
    QRLabel30: TQRLabel;
    QRLabel31: TQRLabel;
    QRLabel32: TQRLabel;
    QRLabel33: TQRLabel;
    Lbl2: TQRLabel;
    Lbl3: TQRLabel;
    Lbl4: TQRLabel;
    Lbl5: TQRLabel;
    Lbl6: TQRLabel;
    Lbl7: TQRLabel;
    Lbl8: TQRLabel;
    Lbl9: TQRLabel;
    Lbl10: TQRLabel;
    Lbl11: TQRLabel;
    Lbl12: TQRLabel;
    Lbl13: TQRLabel;
    Lbl14: TQRLabel;
    Lbl15: TQRLabel;
    Lbl16: TQRLabel;
    Lbl17: TQRLabel;
    Lbl18: TQRLabel;
    Lbl19: TQRLabel;
    Lbl20: TQRLabel;
    Lbl21: TQRLabel;
    Lbl22: TQRLabel;
    Lbl23: TQRLabel;
    Lbl24: TQRLabel;
    Lbl25: TQRLabel;
    Lbl26: TQRLabel;
    Lbl27: TQRLabel;
    Lbl28: TQRLabel;
    Lbl29: TQRLabel;
    Lbl30: TQRLabel;
    Lbl31: TQRLabel;
    LblDL: TQRLabel;
    Lbl1: TQRLabel;
    QRBand4: TQRBand;
    QRLabel35: TQRLabel;
    LblTotDL: TQRLabel;
    QRLabel36: TQRLabel;
    QRLabel37: TQRLabel;
    QRLabel38: TQRLabel;
    QRLabel39: TQRLabel;
    QRLabel40: TQRLabel;
    QRLabel41: TQRLabel;
    QRLabel42: TQRLabel;
    QRLabel43: TQRLabel;
    QRLabel44: TQRLabel;
    QRLabel45: TQRLabel;
    QRLabel46: TQRLabel;
    LblP2: TQRLabel;
    LblP3: TQRLabel;
    LblP4: TQRLabel;
    LblP5: TQRLabel;
    LblP6: TQRLabel;
    LblP7: TQRLabel;
    LblP8: TQRLabel;
    LblP9: TQRLabel;
    LblP10: TQRLabel;
    LblP11: TQRLabel;
    LblP12: TQRLabel;
    LblP13: TQRLabel;
    LblP14: TQRLabel;
    LblP15: TQRLabel;
    LblP16: TQRLabel;
    LblP17: TQRLabel;
    LblP18: TQRLabel;
    LblP19: TQRLabel;
    LblP20: TQRLabel;
    LblP21: TQRLabel;
    LblP22: TQRLabel;
    LblP23: TQRLabel;
    LblP24: TQRLabel;
    LblP25: TQRLabel;
    LblP26: TQRLabel;
    LblP27: TQRLabel;
    LblP1: TQRLabel;
    LblP28: TQRLabel;
    LblP29: TQRLabel;
    LblP30: TQRLabel;
    LblP31: TQRLabel;
    QRShape3: TQRShape;
    QRShape4: TQRShape;
    QRShape5: TQRShape;
    QRShape6: TQRShape;
    QRShape7: TQRShape;
    QRShape8: TQRShape;
    QRShape9: TQRShape;
    QRShape10: TQRShape;
    QRShape11: TQRShape;
    QRShape12: TQRShape;
    QRShape13: TQRShape;
    QRShape14: TQRShape;
    QRShape15: TQRShape;
    QRShape16: TQRShape;
    QRShape17: TQRShape;
    QRShape18: TQRShape;
    QRShape19: TQRShape;
    QRShape20: TQRShape;
    QRShape21: TQRShape;
    QRShape22: TQRShape;
    QRShape23: TQRShape;
    QRShape24: TQRShape;
    QRShape25: TQRShape;
    QRShape26: TQRShape;
    QRShape27: TQRShape;
    QRShape28: TQRShape;
    QRShape29: TQRShape;
    QRShape30: TQRShape;
    QRShape31: TQRShape;
    QRShape32: TQRShape;
    QRShape33: TQRShape;
    QRShape34: TQRShape;
    SH1: TQRShape;
    SH2: TQRShape;
    SH3: TQRShape;
    SH4: TQRShape;
    SH5: TQRShape;
    SH6: TQRShape;
    SH7: TQRShape;
    SH8: TQRShape;
    SH9: TQRShape;
    SH10: TQRShape;
    SH11: TQRShape;
    SH12: TQRShape;
    SH13: TQRShape;
    SH14: TQRShape;
    SH15: TQRShape;
    SH16: TQRShape;
    SH17: TQRShape;
    SH18: TQRShape;
    SH19: TQRShape;
    SH20: TQRShape;
    SH21: TQRShape;
    SH22: TQRShape;
    SH23: TQRShape;
    SH24: TQRShape;
    SH25: TQRShape;
    SH26: TQRShape;
    SH27: TQRShape;
    SH28: TQRShape;
    SH29: TQRShape;
    SH30: TQRShape;
    SH31: TQRShape;
    QRShape65: TQRShape;
    QRShape66: TQRShape;
    QRShape67: TQRShape;
    QRDBText2: TQRDBText;
    QRLabel34: TQRLabel;
    QRDBText3: TQRDBText;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand4BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QuickRep1BeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QuickRep1AfterPreview(Sender: TObject);
  private
    { Private declarations }
    DL:integer;
    SqlA : String;
  public
    { Public declarations }
  end;

var
  FrmRelCalendario: TFrmRelCalendario;

implementation

uses UDados;

{$R *.dfm}

procedure TFrmRelCalendario.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
var
  i,
  iDia:integer;

  sTipo,
  sP,
  sL:string;

  bDois,
  bCinza:boolean;
begin
  iDia := 0;
  with FrmDados do
  begin
    for i:=1 to 31 do
    begin
      bDois := False;
      bCinza := False;
      sTipo := cds_Calendario.FieldByName('N'+inttostr(i)).AsString;

      if sTipo = 'DL' then
      begin
        sP := '';
        sL := '.';
        iDia := iDia + 1;
      end;
      //endi

      if sTipo = 'As' then
      begin
        sP := 'As';
        sL := '';
      end;
      //endi

      if sTipo = 'Fe' then
      begin
        sP := 'Fe';
        sL := '';
      end;
      //endi

      if sTipo = 'FE' then
      begin
        sP := 'FE';
        sL := '';
      end;
      //endi

      if sTipo = 'Re' then
      begin
        sP := 'Re';
        sL := '';
      end;
      //endi

      if sTipo = 'RPed' then
      begin
        sP := 'Rped';
        sL := '';
      end;
      //endi

      if sTipo = 'RPa' then
      begin
        sP := 'RPA';
        sL := '';
      end;
      //endi

      if sTipo = 'Cc' then
      begin
        sP := 'Cc';
        sL := '';
      end;
      //endi

      if sTipo = 'APE' then
      begin
        sP := 'APE';
        sL := '';
      end;
      //endi

      if sTipo = 'PL' then
      begin
        sP := 'PL';
        sL := '';
      end;
      //endi

      if sTipo = 'S' then
      begin
        sP := 'S';
        sL := '';
        bCinza := True;
      end;
      //endi

      if sTipo = 'D' then
      begin
        sP := 'D';
        sL := '';
        bCinza := True;
      end;
      //endi

      if sTipo = 'DL,RPed,Cc' then
      begin
        sP := 'Rped/Cc';
        sL := '.';
        bDois := True;
        iDia := iDia + 1;
      end;
      //endi

      if sTipo = 'DL,RPa' then
      begin
        sP := 'RPA';
        sL := '.';
        bDois := True;
        iDia := iDia + 1;
      end;
      //endi

      if sTipo = 'S,DL' then
      begin
        sP := 'S';
        sL := '.';
        bDois := True;
        //bCinza := True;
        iDia := iDia + 1;
      end;
      //endi

      if sTipo = '' then
      begin
        sP := '';
        sL := '';
        bCinza := True;
      end;
      //endi

      case i of
        1:begin
            LblP1.Caption := sP;
            Lbl1.Caption := sL;
            if bDois then
            begin
              SH1.Shape := qrsHorLine;
            end
            else
            begin
              SH1.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH1.Brush.Color := clSilver;
              LblP1.Color := clSilver;
              Lbl1.Color := clSilver;
            end
            else
            begin
              SH1.Brush.Color := clWhite;
              LblP1.Color := clWhite;
              Lbl1.Color := clWhite;
            end;
            //endi
          end;
        2:begin
            LblP2.Caption := sP;
            Lbl2.Caption := sL;
            if bDois then
            begin
              SH2.Shape := qrsHorLine;
            end
            else
            begin
              SH2.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH2.Brush.Color := clSilver;
              LblP2.Color := clSilver;
              Lbl2.Color := clSilver;
            end
            else
            begin
              SH2.Brush.Color := clWhite;
              LblP2.Color := clWhite;
              Lbl2.Color := clWhite;
            end;
            //endi
          end;
        3:begin
            LblP3.Caption := sP;
            Lbl3.Caption := sL;
            if bDois then
            begin
              SH3.Shape := qrsHorLine;  
            end
            else
            begin
              SH3.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH3.Brush.Color := clSilver;
              LblP3.Color := clSilver;
              Lbl3.Color := clSilver;
            end
            else
            begin
              SH3.Brush.Color := clWhite;
              LblP3.Color := clWhite;
              Lbl31.Color := clWhite;
            end;
            //endi
          end;
        4:begin
            LblP4.Caption := sP;
            Lbl4.Caption := sL;
            if bDois then
            begin
              SH4.Shape := qrsHorLine;
            end
            else
            begin
              SH4.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH4.Brush.Color := clSilver;
              LblP4.Color := clSilver;
              Lbl4.Color := clSilver;
            end
            else
            begin
              SH4.Brush.Color := clWhite;
              LblP4.Color := clWhite;
              Lbl4.Color := clWhite;
            end;
            //endi
          end;
        5:begin
            LblP5.Caption := sP;
            Lbl5.Caption := sL;
            if bDois then
            begin
              SH5.Shape := qrsHorLine;
            end
            else
            begin
              SH5.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH5.Brush.Color := clSilver;
              LblP5.Color := clSilver;
              Lbl5.Color := clSilver;
            end
            else
            begin
              SH5.Brush.Color := clWhite;
              LblP5.Color := clWhite;
              Lbl5.Color := clWhite;
            end;
            //endi
          end;
        6:begin
            LblP6.Caption := sP;
            Lbl6.Caption := sL;
            if bDois then
            begin
              SH6.Shape := qrsHorLine;
            end
            else
            begin
              SH6.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH6.Brush.Color := clSilver;
              LblP6.Color := clSilver;
              Lbl6.Color := clSilver;
            end
            else
            begin
              SH6.Brush.Color := clWhite;
              LblP6.Color := clWhite;
              Lbl6.Color := clWhite;
            end;
            //endi
          end;
        7:begin
            LblP7.Caption := sP;
            Lbl7.Caption := sL;
            if bDois then
            begin
              SH7.Shape := qrsHorLine;
            end
            else
            begin
              SH7.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH7.Brush.Color := clSilver;
              LblP7.Color := clSilver;
              Lbl7.Color := clSilver;
            end
            else
            begin
              SH7.Brush.Color := clWhite;
              LblP7.Color := clWhite;
              Lbl7.Color := clWhite;
            end;
            //endi
          end;
        8:begin
            LblP8.Caption := sP;
            Lbl8.Caption := sL;
            if bDois then
            begin
              SH8.Shape := qrsHorLine;
            end
            else
            begin
              SH8.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH8.Brush.Color := clSilver;
              LblP8.Color := clSilver;
              Lbl8.Color := clSilver;
            end
            else
            begin
              SH8.Brush.Color := clWhite;
              LblP8.Color := clWhite;
              Lbl8.Color := clWhite;
            end;
            //endi
          end;
        9:begin
            LblP9.Caption := sP;
            Lbl9.Caption := sL;
            if bDois then
            begin
              SH9.Shape := qrsHorLine;
            end
            else
            begin
              SH9.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH9.Brush.Color := clSilver;
              LblP9.Color := clSilver;
              Lbl9.Color := clSilver;
            end
            else
            begin
              SH9.Brush.Color := clWhite;
              LblP9.Color := clWhite;
              Lbl9.Color := clWhite;
            end;
            //endi
          end;
        10:begin
            LblP10.Caption := sP;
            Lbl10.Caption := sL;
            if bDois then
            begin
              SH10.Shape := qrsHorLine;
            end
            else
            begin
              SH10.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH10.Brush.Color := clSilver;
              LblP10.Color := clSilver;
              Lbl10.Color := clSilver;
            end
            else
            begin
              SH10.Brush.Color := clWhite;
              LblP10.Color := clWhite;
              Lbl10.Color := clWhite;
            end;
            //endi
           end;
        11:begin
            LblP11.Caption := sP;
            Lbl11.Caption := sL;
            if bDois then
            begin
              SH11.Shape := qrsHorLine;
            end
            else
            begin
              SH11.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH11.Brush.Color := clSilver;
              LblP11.Color := clSilver;
              Lbl11.Color := clSilver;
            end
            else
            begin
              SH11.Brush.Color := clWhite;
              LblP11.Color := clWhite;
              Lbl11.Color := clWhite;
            end;
            //endi
           end;
        12:begin
            LblP12.Caption := sP;
            Lbl12.Caption := sL;
            if bDois then
            begin
              SH12.Shape := qrsHorLine;
            end
            else
            begin
              SH12.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH12.Brush.Color := clSilver;
              LblP12.Color := clSilver;
              Lbl12.Color := clSilver;
            end
            else
            begin
              SH12.Brush.Color := clWhite;
              LblP12.Color := clWhite;
              Lbl12.Color := clWhite;
            end;
            //endi
           end;
        13:begin
            LblP13.Caption := sP;
            Lbl13.Caption := sL;
            if bDois then
            begin
              SH13.Shape := qrsHorLine;
            end
            else
            begin
              SH13.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH13.Brush.Color := clSilver;
              LblP13.Color := clSilver;
              Lbl13.Color := clSilver;
            end
            else
            begin
              SH13.Brush.Color := clWhite;
              LblP13.Color := clWhite;
              Lbl13.Color := clWhite;
            end;
            //endi
           end;
        14:begin
            LblP14.Caption := sP;
            Lbl14.Caption := sL;
            if bDois then
            begin
              SH14.Shape := qrsHorLine;
            end
            else
            begin
              SH14.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH14.Brush.Color := clSilver;
              LblP14.Color := clSilver;
              Lbl14.Color := clSilver;
            end
            else
            begin
              SH14.Brush.Color := clWhite;
              LblP14.Color := clWhite;
              Lbl14.Color := clWhite;
            end;
            //endi
           end;
        15:begin
            LblP15.Caption := sP;
            Lbl15.Caption := sL;
            if bDois then
            begin
              SH15.Shape := qrsHorLine;
            end
            else
            begin
              SH15.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH15.Brush.Color := clSilver;
              LblP15.Color := clSilver;
              Lbl15.Color := clSilver;
            end
            else
            begin
              SH15.Brush.Color := clWhite;
              LblP15.Color := clWhite;
              Lbl15.Color := clWhite;
            end;
            //endi
           end;
        16:begin
            LblP16.Caption := sP;
            Lbl16.Caption := sL;
            if bDois then
            begin
              SH16.Shape := qrsHorLine;
            end
            else
            begin
              SH16.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH16.Brush.Color := clSilver;
              LblP16.Color := clSilver;
              Lbl16.Color := clSilver;
            end
            else
            begin
              SH16.Brush.Color := clWhite;
              LblP16.Color := clWhite;
              Lbl16.Color := clWhite;
            end;
            //endi
           end;
        17:begin
            LblP17.Caption := sP;
            Lbl17.Caption := sL;
            if bDois then
            begin
              SH17.Shape := qrsHorLine;
            end
            else
            begin
              SH17.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH17.Brush.Color := clSilver;
              LblP17.Color := clSilver;
              Lbl17.Color := clSilver;
            end
            else
            begin
              SH17.Brush.Color := clWhite;
              LblP17.Color := clWhite;
              Lbl17.Color := clWhite;
            end;
            //endi
           end;
        18:begin
            LblP18.Caption := sP;
            Lbl18.Caption := sL;
            if bDois then
            begin
              SH18.Shape := qrsHorLine;  
            end
            else
            begin
              SH18.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH18.Brush.Color := clSilver;
              LblP18.Color := clSilver;
              Lbl18.Color := clSilver;
            end
            else
            begin
              SH18.Brush.Color := clWhite;
              LblP18.Color := clWhite;
              Lbl18.Color := clWhite;
            end;
            //endi
           end;
        19:begin
            LblP19.Caption := sP;
            Lbl19.Caption := sL;
            if bDois then
            begin
              SH19.Shape := qrsHorLine;  
            end
            else
            begin
              SH19.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH19.Brush.Color := clSilver;
              LblP19.Color := clSilver;
              Lbl19.Color := clSilver;
            end
            else
            begin
              SH19.Brush.Color := clWhite;
              LblP19.Color := clWhite;
              Lbl19.Color := clWhite;
            end;
            //endi
           end;
        20:begin
            LblP20.Caption := sP;
            Lbl20.Caption := sL;
            if bDois then
            begin
              SH20.Shape := qrsHorLine;  
            end
            else
            begin
              SH20.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH20.Brush.Color := clSilver;
              LblP20.Color := clSilver;
              Lbl20.Color := clSilver;
            end
            else
            begin
              SH20.Brush.Color := clWhite;
              LblP20.Color := clWhite;
              Lbl20.Color := clWhite;
            end;
            //endi
           end;
        21:begin
            LblP21.Caption := sP;
            Lbl21.Caption := sL;
            if bDois then
            begin
              SH21.Shape := qrsHorLine;  
            end
            else
            begin
              SH21.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH21.Brush.Color := clSilver;
              LblP21.Color := clSilver;
              Lbl21.Color := clSilver;
            end
            else
            begin
              SH21.Brush.Color := clWhite;
              LblP21.Color := clWhite;
              Lbl21.Color := clWhite;
            end;
            //endi
           end;
        22:begin
            LblP22.Caption := sP;
            Lbl22.Caption := sL;
            if bDois then
            begin
              SH22.Shape := qrsHorLine;  
            end
            else
            begin
              SH22.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH22.Brush.Color := clSilver;
              LblP22.Color := clSilver;
              Lbl22.Color := clSilver;
            end
            else
            begin
              SH22.Brush.Color := clWhite;
              LblP22.Color := clWhite;
              Lbl22.Color := clWhite;
            end;
            //endi
           end;
        23:begin
            LblP23.Caption := sP;
            Lbl23.Caption := sL;
            if bDois then
            begin
              SH23.Shape := qrsHorLine;  
            end
            else
            begin
              SH23.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH23.Brush.Color := clSilver;
              LblP23.Color := clSilver;
              Lbl23.Color := clSilver;
            end
            else
            begin
              SH23.Brush.Color := clWhite;
              LblP23.Color := clWhite;
              Lbl23.Color := clWhite;
            end;
            //endi
           end;
        24:begin
            LblP24.Caption := sP;
            Lbl24.Caption := sL;
            if bDois then
            begin
              SH24.Shape := qrsHorLine;  
            end
            else
            begin
              SH24.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH24.Brush.Color := clSilver;
              LblP24.Color := clSilver;
              Lbl24.Color := clSilver;
            end
            else
            begin
              SH24.Brush.Color := clWhite;
              LblP24.Color := clWhite;
              Lbl24.Color := clWhite;
            end;
            //endi
           end;
        25:begin
            LblP25.Caption := sP;
            Lbl25.Caption := sL;
            if bDois then
            begin
              SH25.Shape := qrsHorLine;  
            end
            else
            begin
              SH25.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH25.Brush.Color := clSilver;
              LblP25.Color := clSilver;
              Lbl25.Color := clSilver;
            end
            else
            begin
              SH25.Brush.Color := clWhite;
              LblP25.Color := clWhite;
              Lbl25.Color := clWhite;
            end;
            //endi
           end;
        26:begin
            LblP26.Caption := sP;
            Lbl26.Caption := sL;
            if bDois then
            begin
              SH26.Shape := qrsHorLine;  
            end
            else
            begin
              SH26.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH26.Brush.Color := clSilver;
              LblP26.Color := clSilver;
              Lbl26.Color := clSilver;
            end
            else
            begin
              SH26.Brush.Color := clWhite;
              LblP26.Color := clWhite;
              Lbl26.Color := clWhite;
            end;
            //endi
           end;
        27:begin
            LblP27.Caption := sP;
            Lbl27.Caption := sL;
            if bDois then
            begin
              SH27.Shape := qrsHorLine;  
            end
            else
            begin
              SH27.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH27.Brush.Color := clSilver;
              LblP27.Color := clSilver;
              Lbl27.Color := clSilver;
            end
            else
            begin
              SH27.Brush.Color := clWhite;
              LblP27.Color := clWhite;
              Lbl27.Color := clWhite;
            end;
            //endi
           end;
        28:begin
            LblP28.Caption := sP;
            Lbl28.Caption := sL;
            if bDois then
            begin
              SH28.Shape := qrsHorLine;
            end
            else
            begin
              SH28.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH28.Brush.Color := clSilver;
              LblP28.Color := clSilver;
              Lbl28.Color := clSilver;
            end
            else
            begin
              SH28.Brush.Color := clWhite;
              LblP28.Color := clWhite;
              Lbl28.Color := clWhite;
            end;
            //endi
           end;
        29:begin
            LblP29.Caption := sP;
            Lbl29.Caption := sL;
            if bDois then
            begin
              SH29.Shape := qrsHorLine;
            end
            else
            begin
              SH29.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH29.Brush.Color := clSilver;
              LblP29.Color := clSilver;
              Lbl29.Color := clSilver;
            end
            else
            begin
              SH29.Brush.Color := clWhite;
              LblP29.Color := clWhite;
              Lbl29.Color := clWhite;
            end;
            //endi
           end;
        30:begin
            LblP30.Caption := sP;
            Lbl30.Caption := sL;
            if bDois then
            begin
              SH30.Shape := qrsHorLine;
            end
            else
            begin
              SH30.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH30.Brush.Color := clSilver;
              LblP30.Color := clSilver;
              Lbl30.Color := clSilver;
            end
            else
            begin
              SH30.Brush.Color := clWhite;
              LblP30.Color := clWhite;
              Lbl30.Color := clWhite;
            end;
            //endi
           end;
        31:begin
            LblP31.Caption := sP;
            Lbl31.Caption := sL;
            if bDois then
            begin
              SH31.Shape := qrsHorLine;
            end
            else
            begin
              SH31.Shape := qrsRectangle;
            end;
            //endi

            if bCinza then
            begin
              SH31.Brush.Color := clSilver;
              LblP31.Color := clSilver;
              Lbl31.Color := clSilver;
            end
            else
            begin
              SH31.Brush.Color := clWhite;
              LblP31.Color := clWhite;
              Lbl31.Color := clWhite;
            end;
            //endi
           end;
      end;
      //endcase
    end;
    //endfor
    LblDl.Caption := inttostr(iDia);
    DL := DL + iDia;
  end;
  //endth
end;

procedure TFrmRelCalendario.QRBand4BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  LblTotDL.Caption := inttostr(DL);  
end;

procedure TFrmRelCalendario.QuickRep1BeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
var
  CodCurso: integer;
  ano : String;
begin
  DL := 0;
  with FrmDados do
  begin
    CodCurso := CDS_Calendario.FieldByName('CODCURSO').AsInteger;
    ano := CDS_Calendario.FieldByName('ANO').AsString;
    SqlA := DBX_Calendario.SQL.Text;
    CDS_Calendario.Active := False;
    DBX_Calendario.Active := False;
    DBX_Calendario.SQL.Clear;
    DBX_Calendario.SQL.Add('SELECT * FROM CALENDARIO WHERE CODCURSO = '+inttostr(CodCurso)+' AND ANO = '+ANO);
    DBX_Calendario.Active := True;
    CDS_Calendario.Active := True;
  end;
  //endth
end;

procedure TFrmRelCalendario.QuickRep1AfterPreview(Sender: TObject);
begin
  with FrmDados do
  begin
    CDS_Calendario.Active := False;
    DBX_Calendario.Active := False;
    DBX_Calendario.SQL.Clear;
    DBX_Calendario.SQL.Add(SqlA);
    DBX_Calendario.Active := True;
    CDS_Calendario.Active := True;
  end;
  //endth
end;

end.
