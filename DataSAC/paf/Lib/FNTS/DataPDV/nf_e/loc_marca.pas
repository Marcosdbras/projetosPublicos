unit loc_marca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, Buttons, Menus, AdvGlowButton, ComCtrls;

type
  Tfrmloc_marca = class(TForm)
    dsmarca: TDataSource;
    DBGRID1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    Cadastrar1: TMenuItem;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    bitbtn1: TAdvGlowButton;
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
    procedure FormShow(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_marca: Tfrmloc_marca;

implementation

uses modulo_nfe, grupo, marca;

{$R *.dfm}

procedure Tfrmloc_marca.locChange(Sender: TObject);
begin
  frmmodulo.qrMARCA.Locate('NOME',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_marca.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_marca.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then close;
  IF (KEY = #27) THEN LOC.SETFOCUS;
end;

procedure Tfrmloc_marca.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_marca.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_marca.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_marca.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_marca.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

procedure Tfrmloc_marca.FormShow(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmloc_marca.Cadastrar1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmloc_marca.BitBtn1Click(Sender: TObject);
begin
   frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

end.
