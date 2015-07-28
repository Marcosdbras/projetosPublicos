unit urelrecbtop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QRCtrls, QuickRpt, ExtCtrls, StdCtrls, DBCtrls;

type
  Tfrmrelrecbtop = class(TForm)
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
    lblvalor: TQRDBText;
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
    lblforma: TQRLabel;
    lblntipoop: TQRDBText;
    procedure QRBand1BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
    procedure QRBand3BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure QRBand2BeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    iPag:integer;
    ftotal:real;
  public
    { Public declarations }
  end;

var
  frmrelrecbtop: Tfrmrelrecbtop;

implementation
   uses udados, ugeral, upesqrecbtop;
{$R *.dfm}

procedure Tfrmrelrecbtop.QRBand1BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
ipag := ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);

end;

procedure Tfrmrelrecbtop.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
ipag := 0;
ftotal := 0;

lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
lbltit1.Caption := datetostr(date);
lbltit3.Caption := 'Contas';
lbltit4.Caption := frmpesqrecbtop.sTitRel;

end;

procedure Tfrmrelrecbtop.QRBand3BeforePrint(Sender: TQRCustomBand;
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

procedure Tfrmrelrecbtop.QRBand2BeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
if frmdados.Cds_Temp.FieldByName('CODSITREC').asInteger = 1 then
   begin
     ftotal := ftotal + frmdados.Cds_Vencto.fieldbyname('valor').asfloat;
   end;
//endi
if frmdados.Cds_Temp.FieldByName('CODSITREC').asInteger = 2 then
   begin
     ftotal := ftotal + frmdados.Cds_Vencto.fieldbyname('valliq').asfloat;
   end;
//endi
end;

procedure Tfrmrelrecbtop.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmrelrecbtop:=nil;

end;

procedure Tfrmrelrecbtop.FormCreate(Sender: TObject);
begin
if frmdados.Cds_Temp.FieldByName('CODSITREC').asInteger = 1 then
   begin
     lblforma.Caption := 'Forma Comb.';
     lblvalor.DataField := 'valor';
     lblntipoop.DataField := 'n_tipo_pgto';
   end;
//endi
if frmdados.Cds_Temp.FieldByName('CODSITREC').asInteger = 2 then
   begin
     lblforma.Caption := 'Forma Recbto.';
     lblvalor.DataField := 'valliq';
     lblntipoop.DataField := 'ntipoop';
   end;
//endi


end;

end.
