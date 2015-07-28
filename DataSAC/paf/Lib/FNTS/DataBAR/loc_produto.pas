unit loc_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, DB, MemDS, DBAccess, IBC;

type
  TfrmLoc_produto = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    cb_loc: TComboBox;
    ed_loc: TEdit;
    grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    query: TIBCQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_locKeyPress(Sender: TObject; var Key: Char);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    function zerar(texto:string;qtde:integer):string;
  public
    { Public declarations }
  end;

var
  frmLoc_produto: TfrmLoc_produto;

implementation

uses Modulo, principal;

{$R *.dfm}

function TfrmLoc_produto.zerar(texto:string;qtde:integer):string;
begin
  while length(texto) < qtde do texto := '0'+texto;
  result := texto;
end;

procedure TfrmLoc_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmLoc_produto.ed_locKeyPress(Sender: TObject; var Key: Char);
var i : integer;
begin
  if key = #27 then close;

  if key = #13 then
  begin
    if ed_loc.text <> '' then
    begin
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000025');
      case cb_loc.ItemIndex of
      0 : query.sql.add('where upper(produto) like '''+ed_loc.text+'%''');
      1 : query.sql.add('where codigo = '''+zerar(ed_loc.text,6)+'''');
      2 : query.sql.add('where codbarra = '''+ed_loc.text+'''');
      end;
      query.sql.add('order by produto');
      query.open;

      grid.clearrows;

      if query.recordcount > 0 then
      begin
        query.first;
        while not query.eof do
        begin
          i := grid.AddRow(1);
          grid.Cell[0,i].asstring := query.fieldbyname('codigo').asstring;
          grid.cell[1,i].asstring := query.fieldbyname('codbarra').asstring;
          grid.cell[2,i].asstring := query.fieldbyname('produto').asstring;
          grid.cell[3,i].asstring := query.fieldbyname('unidade').asstring;
          grid.cell[4,i].asfloat := query.fieldbyname('precovenda').asfloat;
          query.next;
        end;
        grid.SetFocus;
        grid.SelectedRow := 0;

      end;
    end;
  end;
end;

procedure TfrmLoc_produto.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if grid.SelectedRow < 0 then exit;
    resultado_pesquisa := grid.cell[0,grid.selectedrow].asstring;
    close;
  end;
  if key = #27 then ed_loc.setfocus;
end;

procedure TfrmLoc_produto.FormShow(Sender: TObject);
begin
  if grid.RowCount > 0 then
  begin
    grid.SetFocus;
    grid.SelectedRow := 0;
  end
  else
    ed_loc.setfocus;
end;

end.
