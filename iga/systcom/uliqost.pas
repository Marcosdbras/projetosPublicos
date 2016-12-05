unit uliqost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, DBCtrls, Mask;

type
  Tfrmliqost = class(TForm)
    Label19: TLabel;
    edicsit: TDBEdit;
    edinsit: TDBLookupComboBox;
    Label22: TLabel;
    edidtl: TDBEdit;
    Label26: TLabel;
    edidtb: TDBEdit;
    Label29: TLabel;
    edivalliq: TDBEdit;
    Label28: TLabel;
    cbxntipoop: TDBLookupComboBox;
    btnfechar: TBitBtn;
    btncancelar: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmliqost: Tfrmliqost;

implementation

{$R *.dfm}

end.
