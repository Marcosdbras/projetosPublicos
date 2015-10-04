unit uimpproducao3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QuickRpt, QRCtrls, ExtCtrls;

type
  TForm2 = class(TForm)
    relatorio: TQuickRep;
    QRBand1: TQRBand;
    QRShape19: TQRShape;
    QRShape6: TQRShape;
    QRShape5: TQRShape;
    QRShape4: TQRShape;
    QRShape3: TQRShape;
    QRShape2: TQRShape;
    QRShape1: TQRShape;
    lblCab2: TQRLabel;
    lbltit1: TQRLabel;
    lblCab3: TQRLabel;
    lblCab4: TQRLabel;
    lbltit2: TQRLabel;
    lblcabcodigo: TQRLabel;
    lblOS: TQRLabel;
    QRLabel3: TQRLabel;
    lblNome: TQRLabel;
    lbltitdesc1: TQRLabel;
    lbldesc1: TQRLabel;
    lblid1: TQRLabel;
    lbltitid1: TQRLabel;
    lblcab6: TQRLabel;
    lblcab7: TQRLabel;
    lbldatasehoras: TQRLabel;
    imgfoto: TQRImage;
    lbltitid2: TQRLabel;
    lblid2: TQRLabel;
    lbltitdesc2: TQRLabel;
    lbldesc2: TQRLabel;
    QRSubDetail1: TQRSubDetail;
    QRShape17: TQRShape;
    QRShape16: TQRShape;
    QRShape15: TQRShape;
    QRShape14: TQRShape;
    QRShape18: TQRShape;
    QRShape13: TQRShape;
    lblQuant: TQRLabel;
    lblUni: TQRLabel;
    lblnpro: TQRLabel;
    lblsubs: TQRLabel;
    lblaltmais: TQRLabel;
    lblaltmenos: TQRLabel;
    GroupFooterBand2: TQRBand;
    GroupHeaderBand2: TQRBand;
    QRShape12: TQRShape;
    QRShape11: TQRShape;
    QRShape10: TQRShape;
    QRShape9: TQRShape;
    QRShape8: TQRShape;
    QRShape7: TQRShape;
    lblcabquant: TQRLabel;
    lblcabuni: TQRLabel;
    lblcabdesc: TQRLabel;
    lblCabSubs: TQRLabel;
    lblcabaltmais: TQRLabel;
    lblCabaltmenos: TQRLabel;
    tabindice: TTable;
    tabConfig: TTable;
    tabConfigCAMPO1: TStringField;
    tabConfigCAMPO2: TStringField;
    tabConfigCAMPO3: TStringField;
    tabConfigCAMPO4: TStringField;
    tabConfigCAMPO5: TStringField;
    tabConfigCAMPO6: TStringField;
    tabConfigCAMPO7: TStringField;
    tabConfigCAMPO8: TStringField;
    tabConfigCAMPO9: TStringField;
    tabConfigCAMPO10: TStringField;
    tabConfigCAMPO11: TStringField;
    tabConfigCAMPO12: TStringField;
    tabConfigCAMPO13: TBooleanField;
    tabConfigCAMPO14: TSmallintField;
    tabConfigCAMPO15: TStringField;
    tabConfigCAMPO16: TStringField;
    tabConfigLOGO: TBlobField;
    QRShape20: TQRShape;
    QRLabel2: TQRLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

end.
