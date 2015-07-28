unit loc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid, RzDBEdit, Mask, RzEdit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, ComCtrls, AdvGlowButton;

type
  Tfrmloc_produto = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    CadastrarNovoFornecedor1: TMenuItem;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    loc: TwwIncrementalSearch;
    bitbtn1: TAdvGlowButton;
    StatusBar1: TStatusBar;
    Panel2: TPanel;
    Label2: TLabel;
    qrestoque: TZQuery;
    eestoque: TRzNumericEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Label3: TLabel;
    Label4: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBEdit1: TRzDBEdit;
    procedure locChange(Sender: TObject);
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure wwDBGrid1RowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto: Tfrmloc_produto;

implementation

uses modulo, produto;

{$R *.dfm}

procedure Tfrmloc_produto.locChange(Sender: TObject);
begin
//  frmmodulo.qrregiao.Locate('regiao',loc.text,[lopartialkey]);
end;

procedure Tfrmloc_produto.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) or (key = #27) then close;
end;

procedure Tfrmloc_produto.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then close;
  if (key = #27) then loc.SetFocus;
end;

procedure Tfrmloc_produto.DBGrid1DblClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmloc_produto.BitBtn1Click(Sender: TObject);
begin
  frmproduto := tfrmproduto.create(self);
  frmproduto.showmodal;
end;

procedure Tfrmloc_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_produto.locEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmloc_produto.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmloc_produto.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then wwdbgrid1.setfocus;
end;

procedure Tfrmloc_produto.wwDBGrid1RowChanged(Sender: TObject);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
  qrestoque.open;
end;

end.
