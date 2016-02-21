unit urelrec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, DBCtrls;

type
  Tfrmrelrec = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRShape2: TQRShape;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit4: TQRLabel;
    lbltit3: TQRLabel;
    lbltit2: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRDBText6: TQRDBText;
    QRDBText7: TQRDBText;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRLabel6: TQRLabel;
    QRLabel7: TQRLabel;
    lbltittot: TQRLabel;
    lbltotal: TQRLabel;
    QRDBText8: TQRDBText;
    QRLabel8: TQRLabel;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
    iPag:integer;
    ftotal:real;
  public
    { Public declarations }
  end;

var
  frmrelrec: Tfrmrelrec;

implementation
   uses udados, ugeral, upesqrecbto;
{$R *.dfm}

procedure Tfrmrelrec.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrelrec.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;
ftotal := 0;

lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
lbltit1.Caption := datetostr(date);
lbltit3.Caption := 'Contas';
lbltit4.Caption := frmpesqrecbto.sTitRel;

end;

procedure Tfrmrelrec.QRBand3BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin

  lbltotal.Caption := '';
  lbltittot.caption := '';
  with frmdados do
    begin
      if cds_vencto.Eof then
        begin
          //dbx_exec.Active := false;
          //dbx_exec.SQL.Clear;
          //dbx_exec.SQL.Add('Select sum(valor) as total from vencimentos where ehvenda = '+quotedstr('T'));
          //dbx_exec.Active := true;
          lbltittot.caption := 'Total';
          lbltotal.Caption := formatfloat('###,###,##0.00',ftotal);
        end;
      //endi

    end;
  //endi


end;

procedure Tfrmrelrec.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
  ftotal := ftotal + frmdados.Cds_Vencto.fieldbyname('valor').asfloat;
end;

procedure Tfrmrelrec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelrec:=nil;

end;

end.
