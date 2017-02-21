unit loc_grupo;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, Buttons, Menus, AdvGlowButton, ComCtrls;

type
  Tfrmloc_grupo = class(TForm)
    dsgrupo: TDataSource;
    DBGRID1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    Cadastrar1: TMenuItem;
    StatusBar1: TStatusBar;
    Panel1: TPanel;
    bitbtn1: TAdvGlowButton;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_grupo: Tfrmloc_grupo;

implementation

uses modulo_nfe, grupo;

{$R *.dfm}

procedure Tfrmloc_grupo.locChange(Sender: TObject);
begin
  frmmodulo.qrGRUPO.Locate('GRUPO',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_grupo.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_grupo.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then close;
  IF (KEY = #27) THEN LOC.SETFOCUS;
end;

procedure Tfrmloc_grupo.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_grupo.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_grupo.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_grupo.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_grupo.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

procedure Tfrmloc_grupo.FormShow(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmloc_grupo.Cadastrar1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmloc_grupo.BitBtn1Click(Sender: TObject);
begin
    frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

end.
