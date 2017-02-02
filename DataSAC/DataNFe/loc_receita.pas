unit loc_receita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  ComCtrls;

type
  Tfrmloc_receita = class(TForm)
    DBGrid1: TDBGrid;
    dsreceita: TDataSource;
    Panel1: TPanel;
    Bevel1: TBevel;
    loc: TwwIncrementalSearch;
    Label1: TLabel;
    StatusBar1: TStatusBar;
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_receita: Tfrmloc_receita;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_receita.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_receita.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_receita.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_receita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

end.
