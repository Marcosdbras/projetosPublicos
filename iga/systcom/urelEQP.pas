unit urelEQP;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, QuickRpt, QRCtrls, ExtCtrls;

type
  Tfrmreleqp = class(TForm)
    relatorio: TQuickRep;
    cabesalho: TQRBand;
    detalhe: TQRBand;
    lblcab1: TQRLabel;
    lbltit1: TQRLabel;
    lbltit2: TQRLabel;
    lbltit3: TQRLabel;
    lbltit4: TQRLabel;
    lblid1: TQRLabel;
    lblid2: TQRLabel;
    lbldesc1: TQRLabel;
    lbldesc2: TQRLabel;
    procedure detalheBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure cabesalhoBeforePrint(Sender: TQRCustomBand;
      var PrintBand: Boolean);
    procedure relatorioBeforePrint(Sender: TCustomQuickRep;
      var PrintReport: Boolean);
  private
    { Private declarations }
    ipag:integer;
  public
    { Public declarations }
  end;

var
  frmreleqp: Tfrmreleqp;

implementation
 uses udados ,ugeral ,upesqeqp ;
{$R *.dfm}

procedure Tfrmreleqp.detalheBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
     if frmdados.cds_indice.FieldByName('ID1').asString <> '' then
        begin
          lblid1.Caption:=frmDados.Cds_EquipCli.FieldByName('ID1').asString;
        end;
    //endif
    if frmdados.cds_indice.FieldByName('ID2').asString <> '' then
        begin
          lblid2.Caption:=frmDados.Cds_EquipCli.FieldByName('ID2').asString;
        end;
    //endif
     if (frmdados.cds_indice.FieldByName('DESC1').asString <> '') and (frmdados.cds_indice.FieldByName('TDESC1').asString = 'T') then
        begin
          lbldesc1.caption:=frmDados.Cds_EquipCli.FieldByName('DESC1').asString;
        end;
     //endif
     if (frmdados.cds_indice.FieldByName('DESC2').asString <> '') and (frmdados.cds_indice.FieldByName('TDESC2').asString = 'T') then
        begin
          lbldesc2.caption:=frmDados.Cds_EquipCli.FieldByName('DESC2').asString;
        end;
     //endif

end;

procedure Tfrmreleqp.cabesalhoBeforePrint(Sender: TQRCustomBand;
  var PrintBand: Boolean);
begin
    ipag :=   ipag + 1;
lbltit2.Caption := 'PAG. '+inttostr(ipag);
    if frmdados.cds_indice.FieldByName('ID1').asString <> '' then
        begin
          lblid1.Caption:=frmdados.cds_indice.FieldByName('ID1').asString;
        end;
    //endif
    if frmdados.cds_indice.FieldByName('ID2').asString <> '' then
        begin
          lblid2.Caption:=frmdados.cds_indice.FieldByName('ID2').asString;
        end;
    //endif
     if (frmdados.cds_indice.FieldByName('DESC1').asString <> '') and (frmdados.cds_indice.FieldByName('TDESC1').asString = 'T') then
        begin
          lbldesc1.caption:=frmdados.cds_indice.FieldByName('DESC1').asString;
        end;
     //endif
     if (frmdados.cds_indice.FieldByName('DESC2').asString <> '') and (frmdados.cds_indice.FieldByName('TDESC2').asString = 'T') then
        begin
          lbldesc2.caption:=frmdados.cds_indice.FieldByName('DESC2').asString;
        end;
     //endif

end;

procedure Tfrmreleqp.relatorioBeforePrint(Sender: TCustomQuickRep;
  var PrintReport: Boolean);
begin
      ipag := 0;


  lblcab1.Caption := frmdados.cds_config.fieldbyname('campo2').asString;
  lbltit1.Caption := datetostr(date);
  lbltit3.Caption := 'Itens';
  lbltit4.Caption := frmpesqeqp.sTitRel;
end;

end.
