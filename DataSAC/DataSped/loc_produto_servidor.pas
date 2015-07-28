unit loc_produto_servidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, RzEdit, RzCmboBx, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  DB, MemDS, DBAccess, IBC;

type
  TfrmLoc_Produto_Servidor = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    cb_localizar: TRzComboBox;
    ed_localizar: TRzEdit;
    grid_produto: TNextGrid;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    qrProduto: TIBCQuery;
    NxNumberColumn2: TNxTextColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ed_localizarKeyPress(Sender: TObject; var Key: Char);
    procedure grid_produtoKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLoc_Produto_Servidor: TfrmLoc_Produto_Servidor;

implementation

uses modulo, Math;

{$R *.dfm}

procedure TfrmLoc_Produto_Servidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmLoc_Produto_Servidor.FormShow(Sender: TObject);
begin
  cb_localizar.ItemIndex := 0;
  ed_localizar.SetFocus;
end;

procedure TfrmLoc_Produto_Servidor.ed_localizarKeyPress(Sender: TObject;
  var Key: Char);
  var i : integer;
begin
  if key = #13 then
  begin
    If ed_localizar.text <> '' then
    begin
      qrproduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.add('select pro.codigo, pro.produto, pro.unidade,');
      qrproduto.sql.add('pro.precovenda, est.estoque_atual as estoque');
      qrproduto.sql.add('from c000025 pro, c000100 est');
      qrproduto.sql.add('where pro.codigo = est.codproduto');
      case cb_localizar.ItemIndex of
      0 : qrproduto.SQL.add('and pro.produto like '''+ed_localizar.text+'%''');
      1 : qrproduto.SQL.add('and pro.codigo = '''+ed_localizar.text+'''');
      2 : qrproduto.SQL.add('and pro.codbarra = '''+ed_localizar.text+'''');
      end;
      qrproduto.sql.add('order by pro.produto');
      qrproduto.open;
      qrproduto.first;
      grid_produto.ClearRows;
      while not qrproduto.eof do
      begin
        i := grid_produto.AddRow(1);
        grid_produto.cell[0,i].asstring := qrproduto.fieldbyname('codigo').asstring;
        grid_produto.cell[1,i].asstring := qrproduto.fieldbyname('produto').asstring;
        grid_produto.cell[2,i].asstring := qrproduto.fieldbyname('unidade').asstring;
        grid_produto.cell[3,i].asfloat := qrproduto.fieldbyname('estoque').asfloat;
        grid_produto.cell[4,i].asfloat := qrproduto.fieldbyname('precovenda').asfloat;
        qrproduto.next;
      end;
      if grid_produto.RowCount > 0 then
      begin
         grid_produto.SetFocus;
         grid_produto.SelectedRow := 0;
      end
      else
      begin
        Application.messagebox('Nenhum produto encontrado!','Erro',mb_ok+mb_iconerror);
        exit;
      end;
    end
    else
    begin
      grid_produto.ClearRows;
    end;
  end;

  if key = #27 then close;
end;

procedure TfrmLoc_Produto_Servidor.grid_produtoKeyPress(Sender: TObject;
  var Key: Char);
var i : integer;
begin
  if key = #13 then
  begin
    i:= grid_produto.SelectedRow;
    if i <0 then exit;
    // codigo
    resultado_pesquisa1 := grid_produto.cell[0,i].asstring;
    // produto
    resultado_pesquisa2 := grid_produto.cell[1,i].asstring;
    // unidade
    resultado_pesquisa3 := grid_produto.cell[2,i].asstring;
    // estoque
    resultado_valor1 := grid_produto.cell[3,i].asfloat;
    // preco
    resultado_valor2 := grid_produto.cell[4,i].asfloat;
    close;
  end;
  if key = #27 then ed_localizar.setfocus;
end;

end.
