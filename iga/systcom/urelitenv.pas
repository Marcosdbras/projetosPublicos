unit urelitenv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmrelitenv = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    lbltitprcusto: TQRLabel;
    lbltitprpreco: TQRLabel;
    lbltitlucro: TQRLabel;
    lbltotprcusto: TQRLabel;
    lbltotprvenda: TQRLabel;
    lbllucro: TQRLabel;
    QRDBText7: TQRDBText;
    QRLabel7: TQRLabel;
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure rodapeBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    ftotcusto, ftotpreco, ftotlucro:real;
  public
    { Public declarations }
  end;

var
  frmrelitenv: Tfrmrelitenv;

implementation
   uses udados, ugeral;
{$R *.dfm}

procedure Tfrmrelitenv.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
  ftotcusto := 0;
  ftotpreco := 0;
  ftotlucro := 0;
end;

procedure Tfrmrelitenv.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ftotcusto := ftotcusto + frmdados.CdsAdo_ItensV.fieldbyname('custo').asfloat;
  ftotpreco := ftotpreco + frmdados.CdsAdo_ItensV.fieldbyname('preco').asfloat;
end;

procedure Tfrmrelitenv.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.CdsAdo_ItensV.Eof then
   begin
     lbltitprcusto.Caption := '';
     lbltitprpreco.Caption := '';
     lbltitlucro.Caption := '';
     lbltotprcusto.Caption := '';
     lbltotprvenda.Caption := '';
     lbllucro.Caption := '';
   end
else
   begin
     lbltitprcusto.Caption := frmrelitenv.lbltitprcusto.Caption;
     lbltitprpreco.Caption := frmrelitenv.lbltitprpreco.Caption;
     lbltitlucro.Caption :=   frmrelitenv.lbltitlucro.Caption;
     lbltotprcusto.Caption := formatfloat('###,###,##0.00',ftotcusto);
     lbltotprvenda.Caption := formatfloat('###,###,##0.00',ftotpreco);
     lbllucro.Caption := formatfloat('###,###,##0.00',ftotpreco-ftotcusto);
   end;
//endi
end;

procedure Tfrmrelitenv.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelitenv:=nil;

end;

end.
