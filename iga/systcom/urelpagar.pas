unit urelpagar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls;

type
  Tfrmrelpagar = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRSubDetail1: TQRSubDetail;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRLabel1: TQRLabel;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    GroupFooterBand1: TQRBand;
    GroupHeaderBand1: TQRBand;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel4: TQRLabel;
    lbltitprcusto: TQRLabel;
    lbltotprcusto: TQRLabel;
    QRShape1: TQRShape;
    QRShape2: TQRShape;
    QRBand3: TQRBand;
    lbltittotg: TQRLabel;
    lbltotg: TQRLabel;
    procedure GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    totvalor, totG:real;
  public
    { Public declarations }
  end;

var
  frmrelpagar: Tfrmrelpagar;

implementation
       uses udados, ugeral, upesqpag;
{$R *.dfm}

procedure Tfrmrelpagar.GroupFooterBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     lbltitprcusto.Caption := 'Total';
     lbltotprcusto.Caption := formatfloat('###,###,##0.00',frmDados.Dbx_Exec.fieldbyname('totvalor').asfloat);
     totg := totg + frmDados.Dbx_Exec.fieldbyname('totvalor').asfloat;
end;

procedure Tfrmrelpagar.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if not frmdados.Cds_Classe.Eof then
   begin
     lbltittotg.Caption := '';
     lbltotg.Caption := '';
   end
else
   begin
     lbltittotg.Caption := 'Total Geral';
     lbltotg.Caption := formatfloat('###,###,##0.00',totg);
   end;
//endi

end;

procedure Tfrmrelpagar.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
totvalor := 0;

      with frmdados do
        begin

          Dbx_Exec.Active := false;
          Dbx_Exec.SQL.Clear;
          Dbx_Exec.SQL.Add('select sum(valor) as totvalor from pagar where (ccla = '+cds_classe.fieldbyname('codigo').asString+') and ('+frmpesqpag.sCompo+')');
          Dbx_Exec.Active := true;

          Cds_Pagar.Active := false;
          Dbx_Pagar.Active := false;
          Dbx_Pagar.SQL.Clear;
          Dbx_Pagar.SQL.Add('select * from pagar where (ccla = '+cds_classe.fieldbyname('codigo').asString+') and ('+frmpesqpag.sCompo+')');
          Dbx_Pagar.Active := true;
          Cds_Pagar.Active := true;
        end;
      //endi

end;

procedure Tfrmrelpagar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelpagar:=nil;

end;

end.
