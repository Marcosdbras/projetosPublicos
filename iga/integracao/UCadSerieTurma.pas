unit UCadSerieTurma;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, Buttons;

type
  TFrmCadSerieTurma = class(TForm)
    DBEdit1: TDBEdit;
    Label1: TLabel;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCadSerieTurma: TFrmCadSerieTurma;

implementation

uses UDados;

{$R *.dfm}

end.
