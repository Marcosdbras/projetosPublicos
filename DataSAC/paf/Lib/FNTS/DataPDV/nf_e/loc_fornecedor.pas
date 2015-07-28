unit loc_fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Wwdbigrd, Wwdbgrid, Buttons, Menus, ComCtrls, AdvGlowButton;

type
  TfrmLoc_fornecedor = class(TForm)
    dsfornecedor: TDataSource;
    DBGRID1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    Cadastrar1: TMenuItem;
    Panel1: TPanel;
    Label1: TLabel;
    bitbtn1: TAdvGlowButton;
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
    procedure FormShow(Sender: TObject);
    procedure Cadastrar1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoc_fornecedor: TfrmLoc_fornecedor;

implementation

uses modulo, grupo, fornecedor;

{$R *.dfm}

procedure TfrmLoc_fornecedor.locChange(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.Locate('NOME',loc.text,[lopartialkey]);
end;

procedure TfrmLoc_fornecedor.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure TfrmLoc_fornecedor.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then close;
  IF (KEY = #27) THEN LOC.SETFOCUS;
end;

procedure TfrmLoc_fornecedor.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure TfrmLoc_fornecedor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure TfrmLoc_fornecedor.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure TfrmLoc_fornecedor.locExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmLoc_fornecedor.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

procedure TfrmLoc_fornecedor.FormShow(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure TfrmLoc_fornecedor.Cadastrar1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure TfrmLoc_fornecedor.BitBtn1Click(Sender: TObject);
begin
   frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

end.
