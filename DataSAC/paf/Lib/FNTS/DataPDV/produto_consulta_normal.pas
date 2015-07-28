unit produto_consulta_normal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, RzLabel, AdvOfficeImage, Mask, RzEdit,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, DB, MemDS, DBAccess, IBC, Menus, AdvMenus, ComCtrls;

type
  TfrmProduto_consulta_normal = class(TForm)
    grid: TNextGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    Panel1: TPanel;
    ed_barra: TRzEdit;
    Label1: TLabel;
    query: TIBCQuery;
    StatusBar1: TStatusBar;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridDblClick(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
  private
    { Private declarations }
    function Localizar_Produto(referencia:string):boolean;
  public
    { Public declarations }
  end;

var
  frmProduto_consulta_normal: TfrmProduto_consulta_normal;

implementation

uses funcoes, modulo, Math, principal, menu_fiscal;

{$R *.dfm}

function Tfrmproduto_consulta_normal.Localizar_Produto(referencia:string):boolean;
var bBusca_codigo : boolean; // variavel de para ativar ou nao a busca pelo campo codigo
    bAbre_Grade : boolean; // variavel para ativar ou nao a grade de localizacao de produto
    iPosicao : integer;
begin
  try
    // limpar a variaveis de retorno
    sProd_nome     := '';
    sProd_barra    := '';
    sProd_unidade  := '';
    sProd_CST      := '';
    iProd_codigo   := -1;
    rProd_aliquota := -1;
    rProd_preco    := 0;
    rProd_qtde     := 1;
    rProd_total    := 0;
    bProd_promocao := false;


    // verificar ha possibilidade do texto ser um numero inteiro ou
    // nao ser um produto pesado em balanca --> iniciado por 2
    if length(referencia) < 8 then
    begin
      // verificar se o campo referencia eh um numero inteiro valido
      try
        strtoint(referencia);
        bBusca_codigo := true;
      except
        on EConvertError do
          Bbusca_codigo := false;
      end;
      if Bbusca_codigo then
      begin
        // comando SQL para filtrar o produto pelo codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = '''+referencia+'''');
        query.Open;
        if query.recordcount  > 0 then
        begin
          // econtrou o registro pelo codigo de barras
          result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo codigo
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where codigo = '+referencia);
          query.open;
          if query.RecordCount > 0 then
          begin
            // encontrou o registro pelo codigo
            result := true;
          end
          else
          begin
            // nao encontrou nenhum produto
            result := false;
          end;
        end;
      end
      else
      begin
        // BUSCAR PELO CODIGO DE BARRAS
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = '''+referencia+'''');
        query.Open;
        if query.recordcount  > 0 then
        begin
          // econtrou o registro pelo codigo de barras
          result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo nome
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where upper(nome) like '''+ANSIUPPERCASE(referencia)+'%''');
          query.sql.add('order by nome');
          query.open;
          if query.RecordCount > 0 then
          begin
            // encontrou o registro pelo nome
            result := true;
          end
          else
          begin
            // nao encontrou nenhum produto
            result := false;
          end;
        end;
      end;
    end
    else
    begin
        // busca normal pelo codigo de barras e pelo nome do produto
        // comando SQL para filtrar o produto pelo codigo de barras
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where cod_barra = '''+referencia+'''');
        query.Open;
        if query.recordcount  > 0 then
        begin
          // econtrou o registro pelo codigo de barras
          result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo nome
          query.close;
          query.sql.clear;
          query.sql.add('select * from ESTOQUE');
          query.sql.add('where upper(nome) like '''+referencia+'%''');
          query.sql.add('order by nome');
          query.open;
          if query.RecordCount > 0 then
          begin
            // encontrou o registro pelo nome
            result := true;
          end
          else
          begin
            // nao encontrou nenhum produto
            result := false;
          end;
        end;
    end;
  finally
    if result then
    begin
      // encontrou o produto, alimentar as variaveis de retorno
      sProd_nome     := query.fieldbyname('nome').asstring;
      sProd_barra    := query.fieldbyname('cod_barra').asstring;
      sprod_unidade  := query.fieldbyname('unidade').asstring;
      iProd_codigo   := query.fieldbyname('codigo').asinteger;
      sProd_CST      := query.fieldbyname('cst').asstring;
      rProd_aliquota := query.fieldbyname('aliquota').asfloat;
      rProd_preco    := query.fieldbyname('preco_venda').asfloat;
      rProd_desconto_maximo := query.fieldbyname('desconto_maximo').asfloat;
      bProd_promocao := false;
      rprod_desconto := 0;
      rprod_acrescimo := 0;


      // verificar se o produto estah em promocao
      if query.fieldbyname('preco_promocao').asfloat > 0 then
      begin
        IF (dData_Sistema >= query.fieldbyname('inicio_promocao').AsDateTime) AND
           (dData_Sistema <= query.fieldbyname('final_promocao').ASDATETIME) then
        begin
          rProd_preco    := query.fieldbyname('preco_promocao').asfloat;
          bProd_promocao := true;
        end;
      end;
      if rProd_Total > 0 then
      begin
        // o valor total foi achado caso o produto foi pesado
        // encontrar a qtde do produto
        rProd_qtde := rProd_total / rProd_preco;
      end;

      // verificar seh eh para truncar o valor total
        if rProd_total = 0 then
          rProd_total := rProd_qtde * rProd_preco;
    end;
  end;
end;

procedure TfrmProduto_consulta_normal.ed_barraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ed_barra.Text <> '' then
    begin
      iPesquisa_produto := 0;
      if Localizar_Produto(ANSIUPPERCASE(ed_barra.text)) then
      begin
        grid.ClearRows;
        query.First;
        while not query.eof do
        begin
          grid.AddRow(1);
          grid.Cell[0,grid.LastAddedRow].asinteger :=
            query.fieldbyname('codigo').asinteger;
          grid.cell[1,grid.LastAddedRow].asstring :=
            query.fieldbyname('cod_barra').asstring;
          grid.cell[2,grid.LastAddedRow].asstring :=
            query.fieldbyname('nome').asstring;
          grid.cell[3,grid.LastAddedRow].asstring :=
            query.fieldbyname('unidade').asstring;
          grid.cell[4,grid.LastAddedRow].asfloat :=
            query.fieldbyname('preco_venda').asfloat;
          // verificar se o produto estah em promocao
          if query.fieldbyname('preco_promocao').asfloat > 0 then
          begin
            IF (dData_Sistema >= query.fieldbyname('inicio_promocao').AsDateTime) AND
               (dData_Sistema <= query.fieldbyname('final_promocao').ASDATETIME) then
            begin
              grid.cell[4,grid.LastAddedRow].asfloat :=
                query.fieldbyname('preco_promocao').asfloat;
            end;
          end;
          query.next;
        end;
        grid.SelectFirstRow;
        grid.setfocus;
      end
      else
      begin
        grid.ClearRows;
        application.messagebox('Nenhum produto encontrado!','Erro',mb_ok+mb_iconerror);
        ed_barra.SelectAll;
      end;
    end;
  end
  else
  begin
    if key = #27 then close;
  end;
end;

procedure TfrmProduto_consulta_normal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  iPesquisa_produto := 0;
  action := cafree;
end;

procedure TfrmProduto_consulta_normal.FormCreate(Sender: TObject);
begin
  top := 0;
  left := 0;
end;

procedure TfrmProduto_consulta_normal.FormShow(Sender: TObject);
begin
  grid.ClearRows;
  query.First;
  while not query.eof do
  begin
    grid.AddRow(1);
    grid.Cell[0,grid.LastAddedRow].asinteger :=
      query.fieldbyname('codigo').asinteger;
    grid.cell[1,grid.LastAddedRow].asstring :=
      query.fieldbyname('cod_barra').asstring;
    grid.cell[2,grid.LastAddedRow].asstring :=
      query.fieldbyname('nome').asstring;
    grid.cell[3,grid.LastAddedRow].asstring :=
      query.fieldbyname('unidade').asstring;
    grid.cell[4,grid.LastAddedRow].asfloat :=
      query.fieldbyname('preco_venda').asfloat;
    // verificar se o produto estah em promocao
    if query.fieldbyname('preco_promocao').asfloat > 0 then
    begin
      IF (dData_Sistema >= query.fieldbyname('inicio_promocao').AsDateTime) AND
         (dData_Sistema <= query.fieldbyname('final_promocao').ASDATETIME) then
      begin
        grid.cell[4,grid.LastAddedRow].asfloat :=
          query.fieldbyname('preco_promocao').asfloat;
      end;
    end;
    query.next;
  end;
  grid.SelectFirstRow;
  grid.setfocus;
end;

procedure TfrmProduto_consulta_normal.gridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     if grid.RowCount > 0 then
     begin
       If grid.Cell[0,grid.SelectedRow].AsInteger > 0 then
       begin
           iProd_codigo := grid.cell[0,grid.SelectedRow].asinteger;
           close;
       end;
     end;
  end
  else
  begin
    if key = #27 then
    begin
      ed_barra.setfocus;
    end;
  end;
end;

procedure TfrmProduto_consulta_normal.gridDblClick(Sender: TObject);
begin
     if grid.RowCount > 0 then
     begin
       If grid.Cell[0,grid.SelectedRow].AsInteger > 0 then
       begin
           iProd_codigo := grid.cell[0,grid.SelectedRow].asinteger;
           close;
       end;
     end;
end;

procedure TfrmProduto_consulta_normal.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
