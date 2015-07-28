unit loc_cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid, AdvGlowButton;

type
  Tfrmloc_cliente = class(TForm)
    dscliente: TDataSource;
    PopupMenu1: TPopupMenu;
    CadastrarNovoFornecedor1: TMenuItem;
    DBGRID1: TwwDBGrid;
    Bevel1: TBevel;
    Panel1: TPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    bitbtn1: TAdvGlowButton;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_cliente: Tfrmloc_cliente;

implementation

uses modulo, fornecedor, cliente;

{$R *.dfm}

procedure Tfrmloc_cliente.locChange(Sender: TObject);
begin
//  frmmodulo.qrregiao.Locate('regiao',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_cliente.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_cliente.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then close;
  IF KEY = #27 THEN LOC.SetFocus;
end;

procedure Tfrmloc_cliente.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_cliente.BitBtn1Click(Sender: TObject);
begin
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
end;

procedure Tfrmloc_cliente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   action := cafree;
end;

procedure Tfrmloc_cliente.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_cliente.locExit(Sender: TObject);
begin
    TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmloc_cliente.FormShow(Sender: TObject);
begin
  LOC.SETFOCUS;
end;

procedure Tfrmloc_cliente.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  IF KEY = VK_DOWN THEN DBGRID1.SETFOCUS;
end;

end.
