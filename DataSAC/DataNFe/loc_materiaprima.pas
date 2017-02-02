unit loc_materiaprima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid;

type
  Tfrmloc_materiaprima = class(TForm)
    dsmateria_prima: TDataSource;
    ViewSplit1: TViewSplit;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    wwDBGrid1: TwwDBGrid;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_materiaprima: Tfrmloc_materiaprima;

implementation

uses modulo, produto;

{$R *.dfm}

procedure Tfrmloc_materiaprima.locChange(Sender: TObject);
begin
//  frmmodulo.qrregiao.Locate('regiao',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_materiaprima.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_materiaprima.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then close;
  if (key = #27) then loc.SetFocus;
end;

procedure Tfrmloc_materiaprima.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_materiaprima.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_materiaprima.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_materiaprima.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmloc_materiaprima.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then wwdbgrid1.setfocus;
end;

end.
