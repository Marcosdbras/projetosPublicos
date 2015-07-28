unit loc_conta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid;

type
  Tfrmloc_conta = class(TForm)
    dsbanco: TDataSource;
    ViewSplit1: TViewSplit;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    DBGRID1: TwwDBGrid;
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
  frmloc_conta: Tfrmloc_conta;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_conta.locChange(Sender: TObject);
begin
//  frmmodulo.qrregiao.Locate('regiao',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_conta.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_conta.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_conta.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_conta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_conta.locEnter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLYELLOW;
end;

procedure Tfrmloc_conta.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_conta.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

end.
