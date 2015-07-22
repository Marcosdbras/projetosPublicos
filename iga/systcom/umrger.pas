unit umrger;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, DBCtrls;

type
  Tfrmmrger = class(TForm)
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label1: TLabel;
    Label2: TLabel;
    rgbrel: TRadioGroup;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmmrger: Tfrmmrger;

implementation

{$R *.dfm}

end.
