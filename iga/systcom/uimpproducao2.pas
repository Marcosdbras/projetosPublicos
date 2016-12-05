unit uimpproducao2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, DBTables, QRCtrls, QuickRpt, ExtCtrls;

type
  TForm1 = class(TForm)
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
    GroupFooterBand2: TQRBand;
    QRShape33: TQRShape;
    QRShape36: TQRShape;
    QRShape35: TQRShape;
    QRShape32: TQRShape;
    QRShape31: TQRShape;
    QRShape30: TQRShape;
    QRShape29: TQRShape;
    QRShape28: TQRShape;
    QRShape27: TQRShape;
    QRShape26: TQRShape;
    QRShape25: TQRShape;
    QRShape24: TQRShape;
    QRShape23: TQRShape;
    QRShape22: TQRShape;
    QRShape21: TQRShape;
    QRShape20: TQRShape;
    lbltitdesc3: TQRLabel;
    lbldesc3: TQRLabel;
    lbltitdesc4: TQRLabel;
    lbldesc4: TQRLabel;
    lbltitdesc5: TQRLabel;
    lbldesc5: TQRLabel;
    lbltitdesc6: TQRLabel;
    lbldesc6: TQRLabel;
    lbltitdesc7: TQRLabel;
    lbldesc7: TQRLabel;
    lbltitdesc8: TQRLabel;
    lbldesc8: TQRLabel;
    lbltitdesc9: TQRLabel;
    lbldesc9: TQRLabel;
    lbltitdesc10: TQRLabel;
    lbldesc10: TQRLabel;
    lbltitdesc11: TQRLabel;
    lbldesc11: TQRLabel;
    lbltitdesc12: TQRLabel;
    lbldesc12: TQRLabel;
    lbltitdesc13: TQRLabel;
    lbldesc13: TQRLabel;
    lbltitdesc14: TQRLabel;
    lbldesc14: TQRLabel;
    lbltitdesc15: TQRLabel;
    lbldesc15: TQRLabel;
    mmoobs1: TQRMemo;
    mmoobs: TQRMemo;
    QRShape37: TQRShape;
    QRShape38: TQRShape;
    lbltitdesc17: TQRLabel;
    lbldesc17: TQRLabel;
    lbldesc18: TQRLabel;
    lbltitdesc18: TQRLabel;
    lbltitdesc16: TQRLabel;
    lbldesc16: TQRLabel;
    QRLabel1: TQRLabel;
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
    QRLabel2: TQRLabel;
    QRShape7: TQRShape;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

end.
