unit UConsAluno;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons;

type
  TFrmConsAluno = class(TForm)
    DBGrid1: TDBGrid;
    BtnSair: TBitBtn;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmConsAluno: TFrmConsAluno;

implementation

{$R *.dfm}

end.
