unit aviso;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, Collection, ExtCtrls, TFlatPanelUnit, jpeg;

type
  Tfrmaviso = class(TForm)
    BitBtn1: TBitBtn;
    Image1: TImage;
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmaviso: Tfrmaviso;

implementation

{$R *.dfm}

procedure Tfrmaviso.BitBtn1Click(Sender: TObject);
begin
  close;
end;

end.
