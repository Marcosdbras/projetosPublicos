unit loc_produto_industria;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfrmloc_produto_industria = class(TForm)
    ViewSplit1: TViewSplit;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    PopupMenu1: TPopupMenu;
    CadastrarNovoFornecedor1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    dsindustria: TDataSource;
    qrindustria: TZQuery;
    qrindustriaCODIGO: TStringField;
    qrindustriaPRODUTO: TStringField;
    qrindustriaUNIDADE_PRODUTO: TStringField;
    qrindustriaPRECOCUSTO: TFloatField;
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto_industria: Tfrmloc_produto_industria;

implementation

uses modulo, produto;

{$R *.dfm}

procedure Tfrmloc_produto_industria.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_produto_industria.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then close;
  if (key = #27) then loc.SetFocus;
end;

procedure Tfrmloc_produto_industria.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_produto_industria.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_produto_industria.locEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmloc_produto_industria.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmloc_produto_industria.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then wwdbgrid1.setfocus;
end;

procedure Tfrmloc_produto_industria.FormShow(Sender: TObject);
begin
  qrindustria.Close;
  qrindustria.SQL.clear;
  qrindustria.SQL.add('select codigo,produto,unidade_produto,precocusto from c000079');
  qrindustria.SQL.add('GROUP BY');
  qrindustria.SQL.add('codigo,produto,unidade_produto,precocusto');
  qrindustria.SQL.add('ORDER BY');
  qrindustria.SQL.add('produto');
  qrindustria.open;
end;

end.
