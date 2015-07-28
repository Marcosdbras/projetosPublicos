unit loc_cliente2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid;

type
  Tfrmloc_cliente2 = class(TForm)
    wwDBGrid1: TwwDBGrid;
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_cliente2: Tfrmloc_cliente2;

implementation

uses loc_conhecimento;

{$R *.dfm}

procedure Tfrmloc_cliente2.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then close;
end;

end.
