unit ubaixarec;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Buttons, DBCtrls, StdCtrls, Mask;

type
  Tfrmbaixarrec = class(TForm)
    Label20: TLabel;
    edidtl: TDBEdit;
    Label22: TLabel;
    edidtb: TDBEdit;
    cbxntipoop: TDBLookupComboBox;
    Label28: TLabel;
    edivalliq: TDBEdit;
    Label26: TLabel;
    spdbaixar: TSpeedButton;
    spdestornar: TSpeedButton;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbaixarrec: Tfrmbaixarrec;

implementation

{$R *.dfm}

end.
