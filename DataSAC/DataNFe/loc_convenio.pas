unit loc_convenio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, ComCtrls;

type
  Tfrmloc_convenio = class(TForm)
    dsconvenio: TDataSource;
    dbgrid1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    Bevel1: TBevel;
    StatusBar1: TStatusBar;
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
  frmloc_convenio: Tfrmloc_convenio;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_convenio.locChange(Sender: TObject);
begin
  frmmodulo.qrCONVENIO.Locate('NOME',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_convenio.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_convenio.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_convenio.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_convenio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_convenio.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_convenio.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_convenio.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then dbgrid1.setfocus;
end;

end.
