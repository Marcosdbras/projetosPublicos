unit loc_setor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, ComCtrls;

type
  Tfrmloc_setor = class(TForm)
    dssetor: TDataSource;
    DBGRID1: TwwDBGrid;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    Bevel1: TBevel;
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
  frmloc_setor: Tfrmloc_setor;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_setor.locChange(Sender: TObject);
begin
  frmmodulo.qrSETOR.Locate('SETOR',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_setor.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_setor.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_setor.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_setor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_setor.locEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure Tfrmloc_setor.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_setor.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

end.
