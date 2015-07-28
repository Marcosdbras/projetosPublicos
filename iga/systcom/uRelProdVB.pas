unit uRelProdVB;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  TfrmrelprodVB = class(TForm)
    relatorio: TQuickRep;
    rodape: TQRBand;
    detalhe: TQRBand;
    cabecalho: TQRBand;
    QRLabel1: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel6: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRLabel2: TQRLabel;
    QRLabel4: TQRLabel;
    QRDBText2: TQRDBText;
    QRDBText5: TQRDBText;
    lbltittprcu: TQRLabel;
    lbltprcu: TQRLabel;
    lbltittprve: TQRLabel;
    lbltprve: TQRLabel;
    QRShape1: TQRShape;
    QRDBText6: TQRDBText;
    lbltitlucro: TQRLabel;
    lbltlucro: TQRLabel;
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
  frmrelprodVB: TfrmrelprodVB;

implementation
   uses udados, ugeral;
{$R *.dfm}

procedure TfrmrelprodVB.rodapeBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.cds_vDvendas.Eof then
   begin
     lbltittprcu.Caption := 'Total Geral Pr. Custo';
     lbltittprve.Caption := 'Total Geral Pr. Venda';
     lbltitlucro.Caption := 'Total Geral Mrg.Contr.';
     lbltprcu.Caption := formatfloat('###,###,##0.00',frmdados.Dbx_Exec.fieldbyname('subtotct').asfloat);
     lbltprve.Caption := formatfloat('###,###,##0.00',frmdados.Dbx_Exec.fieldbyname('subtotvt').asfloat);;
     lbltlucro.Caption := formatfloat('###,###,##0.00',frmdados.Dbx_Exec.fieldbyname('subtotvt').asfloat - frmdados.Dbx_Exec.fieldbyname('subtotct').asfloat);;
   end
else
   begin
     lbltittprcu.Caption := '';
     lbltittprve.Caption := '';
     lbltitlucro.Caption := '';
     lbltprcu.Caption := '';
     lbltprve.Caption := '';
     lbltlucro.Caption := '';
   end;
//endi
end;

procedure TfrmrelprodVB.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmRelProdVB:=nil;

end;

end.
