unit venda_pdv;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, TFlatEditUnit,
  Grids, Wwdbigrd, Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, jpeg, Buttons, VrControls, VrButtons, Mask, ToolEdit, CurrEdit;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    qrvenda_produto: TZQuery;
    qrvenda_produtoITEM: TStringField;
    qrvenda_produtoCODPRODUTO: TStringField;
    qrvenda_produtoPRODUTO: TStringField;
    qrvenda_produtoNUMERACAO: TStringField;
    qrvenda_produtoSERIAL: TStringField;
    qrvenda_produtoQTDE: TFloatField;
    qrvenda_produtoUNITARIO: TFloatField;
    qrvenda_produtoTOTAL: TFloatField;
    qrvenda_produtoMIX: TFloatField;
    qrvenda_produtoCODGRADE: TStringField;
    qrvenda_produtoCODBARRAS: TStringField;
    qrvenda_produtoDESCONTO: TFloatField;
    qrvenda_produtoACRESCIMO: TFloatField;
    qrvenda_produtoTIPO: TIntegerField;
    dsvenda_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    Image1: TImage;
    Label15: TLabel;
    FlatEdit1: TFlatEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    FlatPanel1: TFlatPanel;
    Image2: TImage;
    FlatPanel2: TFlatPanel;
    Label25: TLabel;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Label14: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    RxCalcEdit1: TRxCalcEdit;
    RxCalcEdit2: TRxCalcEdit;
    RxCalcEdit3: TRxCalcEdit;
    RxCalcEdit4: TRxCalcEdit;
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
