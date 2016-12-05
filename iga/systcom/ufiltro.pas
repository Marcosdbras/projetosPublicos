unit ufiltro;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, ExtCtrls;

type
  Tfrmfiltro = class(TForm)
    pnlesquerda: TPanel;
    pnldireita: TPanel;
    stgfiltro: TStringGrid;
    Panel1: TPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfiltro: Tfrmfiltro;

implementation

{$R *.dfm}

end.
