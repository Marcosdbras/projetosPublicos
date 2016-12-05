unit uetiqjato60;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, QRCtrls, qrBarcode;

type
  Tfrmetiqjato60 = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    lblempresa1: TQRLabel;
    lblempresa2: TQRLabel;
    lblempresa3: TQRLabel;
    lblnome1: TQRLabel;
    lblnome2: TQRLabel;
    lblnome3: TQRLabel;
    lblcbar1: TQRLabel;
    lblcbar2: TQRLabel;
    lblcbar3: TQRLabel;
    lblvalor1: TQRLabel;
    lblvalor2: TQRLabel;
    lblvalor3: TQRLabel;
    barcode1: TQRAsBarcode;
    barcode2: TQRAsBarcode;
    barcode3: TQRAsBarcode;
    lblempresa4: TQRLabel;
    lblnome4: TQRLabel;
    lblcbar4: TQRLabel;
    lblvalor4: TQRLabel;
    barcode4: TQRAsBarcode;
    lblempresa5: TQRLabel;
    lblnome5: TQRLabel;
    lblcbar5: TQRLabel;
    lblvalor5: TQRLabel;
    barcode5: TQRAsBarcode;
    QRShape1: TQRShape;
    procedure FormCreate(Sender: TObject);
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
  private
    { Private declarations }
    vardir:string;

  public
    { Public declarations }
  end;

var
  frmetiqjato60: Tfrmetiqjato60;

implementation
uses ugeral, udados;


{$R *.dfm}

procedure Tfrmetiqjato60.FormCreate(Sender: TObject);
begin
  vardir:= extractfilepath(application.ExeName);


end;

procedure Tfrmetiqjato60.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  lblempresa1.Caption := '';
  lblempresa2.Caption := '';
  lblempresa3.Caption := '';
  lblempresa4.Caption := '';
  lblempresa5.Caption := '';

  lblcbar1.Caption := '';
  lblcbar2.Caption := '';
  lblcbar3.Caption := '';
  lblcbar4.Caption := '';
  lblcbar5.Caption := '';

  lblvalor1.Caption := '';
  lblvalor2.Caption := '';
  lblvalor3.Caption := '';
  lblvalor4.Caption := '';
  lblvalor5.Caption := '';

  lblnome1.Caption := '';
  lblnome2.Caption := '';
  lblnome3.Caption := '';
  lblnome4.Caption := '';
  lblnome5.Caption := '';

  barcode1.Text := '';
  barcode2.Text := '';
  barcode3.Text := '';
  barcode4.Text := '';
  barcode5.Text := '';

  lblnome1.Caption := frmdados.cdsetiq.FieldByName('nome1').asString;
  lblnome2.Caption := frmdados.cdsetiq.FieldByName('nome2').asString;
  lblnome3.Caption := frmdados.cdsetiq.FieldByName('nome3').asString;
  lblnome4.Caption := frmdados.cdsetiq.FieldByName('nome4').asString;
  lblnome5.Caption := frmdados.cdsetiq.FieldByName('nome5').asString;

  lblempresa1.Caption := copy(frmdados.cdsetiq.FieldByName('empresa1').asString,1,10);
  lblempresa2.Caption := copy(frmdados.cdsetiq.FieldByName('empresa2').asString,1,10);
  lblempresa3.Caption := copy(frmdados.cdsetiq.FieldByName('empresa3').asString,1,10);
  lblempresa4.Caption := copy(frmdados.cdsetiq.FieldByName('empresa4').asString,1,10);
  lblempresa5.Caption := copy(frmdados.cdsetiq.FieldByName('empresa5').asString,1,10);

  lblcbar1.Caption := frmdados.cdsetiq.FieldByName('cbar1').asString;
  lblcbar2.Caption := frmdados.cdsetiq.FieldByName('cbar2').asString;
  lblcbar3.Caption := frmdados.cdsetiq.FieldByName('cbar3').asString;
  lblcbar4.Caption := frmdados.cdsetiq.FieldByName('cbar4').asString;
  lblcbar5.Caption := frmdados.cdsetiq.FieldByName('cbar5').asString;

  barcode1.text := frmdados.cdsetiq.FieldByName('cbar1').asString;
  barcode2.text := frmdados.cdsetiq.FieldByName('cbar2').asString;
  barcode3.text := frmdados.cdsetiq.FieldByName('cbar3').asString;
  barcode4.text := frmdados.cdsetiq.FieldByName('cbar4').asString;
  barcode5.text := frmdados.cdsetiq.FieldByName('cbar5').asString;


  if frmdados.Cds_Indice.FieldByName('impvlrcb').AsInteger = 1 then
     begin
       lblvalor1.Caption := frmdados.cdsetiq.FieldByName('valor1').asString;
       lblvalor2.Caption := frmdados.cdsetiq.FieldByName('valor2').asString;
       lblvalor3.Caption := frmdados.cdsetiq.FieldByName('valor3').asString;
       lblvalor4.Caption := frmdados.cdsetiq.FieldByName('valor4').asString;
       lblvalor5.Caption := frmdados.cdsetiq.FieldByName('valor5').asString;
     end;
  //endi

end;

end.
