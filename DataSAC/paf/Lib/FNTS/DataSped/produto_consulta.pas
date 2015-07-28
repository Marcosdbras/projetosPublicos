unit produto_consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, ExtCtrls, StdCtrls, RzLabel, AdvOfficeImage, Mask, RzEdit,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, Menus, AdvMenus, DB, MemDS, DBAccess, IBC;

type
  TfrmProduto_consulta = class(TForm)
    Image1: TImage;
    RzLabel1: TRzLabel;
    ed_barra: TRzEdit;
    img_cliente: TAdvOfficeImage;
    lb_produto: TRzLabel;
    grid: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    lb_status: TRzLabel;
    NxNumberColumn3: TNxNumberColumn;
    RzLabel2: TRzLabel;
    LB_MENU_FISCAL: TRzLabel;
    pop_principal: TAdvPopupMenu;
    Estoque1: TMenuItem;
    MenuFiscal2: TMenuItem;
    query: TIBCQuery;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn1: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxTextColumn5: TNxTextColumn;
    NxTextColumn6: TNxTextColumn;
    NxTextColumn7: TNxTextColumn;
    procedure ed_barraEnter(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure Estoque1Click(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure LocalizarProduto(referencia: string);
    procedure PreencherGrid;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProduto_consulta: TfrmProduto_consulta;

implementation

uses venda, funcoes, modulo, Math, principal, consulta_estoque,
  menu_fiscal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.ed_barraEnter(Sender: TObject);
begin
  lb_status.Caption := 'Informe o Produto...';
  if iTeclado_modelo = 1 then
  begin
    Imprime_display_teclado('Informe o Produto','');
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.ed_barraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    Key := #0;

    if ed_barra.Text <> '' then
    begin
      if bVenda then
        iPesquisa_produto := 1
      else
        iPesquisa_produto := 0;

      LocalizarProduto(ANSIUPPERCASE(ed_barra.text));
    end;
  end
  else
  begin
    if key = #27 then close
    else
    begin
      if iTeclado_Modelo = 1 then
      begin
        strpcopy(@men,key);
        DispStr(@men);
      end;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  iPesquisa_produto := 0;
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.FormCreate(Sender: TObject);
begin
  top := 0;
  left := 0;
  iprod_codigo := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.FormShow(Sender: TObject);
begin
  if ed_barra.Text <> '' then
  begin
    LocalizarProduto(ed_barra.Text);
  end
  else
    ed_barra.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.gridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     Key := #0;

     if grid.RowCount > 0 then
     begin
       If grid.Cell[0,grid.SelectedRow].AsInteger > 0 then
       begin
         If iPesquisa_produto > 0 then
         begin
           iProd_codigo := grid.cell[0,grid.SelectedRow].asinteger;
           close;
         end;
       end;
     end;
  end
  else
  begin
    if key = #27 then
    begin
      ed_barra.setfocus;
    end
    else
    begin

    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.Estoque1Click(Sender: TObject);
begin
  if grid.SelectedRow < 0 then exit;

  // filtrar as vendas deste produto que nao foram exportados
  query.close;
  query.sql.clear;
  query.sql.add('select');
  query.sql.add('(select sum(qtde) from cupom_item, cupom');
  query.sql.add('  where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('  and cupom.ex = 0');
  query.sql.add('  and cupom_item.cancelado = 1');
  query.sql.add('  and cupom_item.cod_produto = '+IntToStr(grid.cell[0,grid.selectedrow].asinteger)+') as total_cancelado,');
  query.sql.add('sum(qtde) as total_vendido from cupom_item, cupom');
  query.sql.add('  where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('  and cupom.ex = 0');
  query.sql.add('  and cupom_item.cancelado = 0');
  query.sql.add('  and cupom_item.cod_produto = '+IntToStr(grid.cell[0,grid.selectedrow].asinteger));
  query.open;

  frmConsulta_Estoque := tfrmConsulta_Estoque.create(self);
  frmConsulta_Estoque.lb_estoque.Caption :=
    FormatFloat('###,###,##0.00',grid.Cell[5,grid.selectedrow].asfloat-
                                 query.fieldbyname('total_vendido').asfloat+
                                 query.fieldbyname('total_cancelado').asfloat)+' '+
                                 grid.cell[3,grid.selectedrow].asstring;
  frmConsulta_Estoque.StatusBar1.Panels[0].Text := 'Atualizado em: '+sCarga_data+' às '+scarga_hora;
  frmConsulta_Estoque.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.MenuFiscal2Click(Sender: TObject);
begin
   if bVenda then
   begin
     Application.MessageBox('Existe uma venda aberta! Favor finalizar para acessar o menu fiscal!',
                            'Atenção',mb_ok+MB_ICONWARNING);
     exit;
   end;
   frmMenu_fiscal := tfrmMenu_fiscal.create(self);
   frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
// CGT: 04/03/2010 - Procedure para corrigir um problema que
// estava ocorrendo quando a consulta era iníciada pela digitação de um
// produto na tela de venda
procedure TfrmProduto_consulta.LocalizarProduto(referencia: string);
var
  bBusca_codigo: boolean; // variavel de para ativar ou nao a busca pelo campo codigo

begin
  bBusca_codigo := False;

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
        bBusca_codigo := false;
    end;

    if bBusca_codigo then
    begin
      // comando SQL para filtrar o produto pelo codigo de barras
      frmVenda.query.close;
      frmVenda.query.sql.clear;
      frmVenda.query.sql.add('select * from ESTOQUE');
      frmVenda.query.sql.add('where cod_barra = '''+referencia+'''');
      frmVenda.query.sql.add('and SITUACAO = 0');
      frmVenda.query.Open;

      if frmVenda.query.IsEmpty then
      begin
        // nao achou pelo codigo de barras, procurar pelo codigo
        frmVenda.query.close;
        frmVenda.Query.sql.clear;
        frmVenda.Query.sql.add('select * from ESTOQUE');
        frmVenda.Query.sql.add('where codigo = '+referencia);
        frmVenda.query.sql.add('and SITUACAO = 0');
        frmVenda.Query.open;
      end;
    end
    else
    begin
      // GUIO: Tenta localizar a referencia do produto
      frmVenda.Query.close;
      frmVenda.Query.sql.clear;
      frmVenda.Query.sql.add('select * from ESTOQUE');
      frmVenda.Query.sql.add('where upper(REFERENCIA) LIKE '''+ANSIUPPERCASE(referencia)+'%''');
      frmVenda.query.sql.add('and SITUACAO = 0');
      frmVenda.Query.sql.add('order by REFERENCIA, COR, TAMANHO');
      frmVenda.Query.open;

      if frmVenda.query.IsEmpty then
      begin
        // nao achou pelo codigo de barras, procurar pelo nome
        frmVenda.Query.close;
        frmVenda.Query.sql.clear;
        frmVenda.Query.sql.add('select * from ESTOQUE');
        frmVenda.Query.sql.add('where upper(nome) like '''+ANSIUPPERCASE(referencia)+'%''');
        frmVenda.query.sql.add('and SITUACAO = 0');
        frmVenda.Query.sql.add('order by nome');
        frmVenda.Query.open;
      end;
    end;

    PreencherGrid;

    if frmVenda.Query.IsEmpty then
    begin
      if iTeclado_Modelo = 1 then
        Imprime_display_teclado('A T E N C A O !','Nenhum produto encontrado!');

      lb_produto.Font.color := clred;
      lb_produto.caption := 'Nenhum produto encontrado!';
      Application.ProcessMessages;
      Sleep(1500);

      lb_produto.Font.color := clwhite;
      lb_produto.Caption := 'Pesquisa de produtos';
      ED_barra.TEXT := '';

      if iTeclado_Modelo = 1 then
        Imprime_display_teclado('Pesquisa de produtos','');

      ed_barra.SelectAll;
    end;
  end
end;

// -------------------------------------------------------------------------- //
procedure TfrmProduto_consulta.PreencherGrid;
begin
  grid.ClearRows;
  frmVenda.query.First;
  while not frmvenda.query.eof do
  begin
    if iTeclado_Modelo = 1 then
    begin
        Imprime_display_teclado(INTTOSTR(FRMvenda.QUERY.RECORDCOUNT)
          + ' PRODUTOS ENCONTRADOS!', '');
    end;

    grid.AddRow(1);
    grid.Cell[0,grid.LastAddedRow].asstring :=
      zerar(frmvenda.query.fieldbyname('codigo').asstring,14);

    case iColunaCOnsultaProdutos of
      0: begin
        grid.Columns[1].Header.Caption := 'Cód.Barras';

        grid.cell[1,grid.LastAddedRow].asstring :=
          frmvenda.query.fieldbyname('cod_barra').asstring;
      end;
      1: begin
        grid.Columns[1].Header.Caption := 'Refêrência';

        grid.cell[1,grid.LastAddedRow].asstring :=
          frmvenda.query.fieldbyname('referencia').asstring;
      end;
      2: begin
        grid.Columns[1].Header.Caption := 'Ref/Tam/Cor';
        grid.cell[1,grid.LastAddedRow].asstring :=
          frmvenda.query.fieldbyname('referencia').asstring
          + '/' + frmvenda.query.fieldbyname('tamanho').asstring
          + '/' + frmvenda.query.fieldbyname('cor').asstring;
      end;
    end;

    grid.cell[2,grid.LastAddedRow].asstring :=
      frmvenda.query.fieldbyname('nome').asstring;
    grid.cell[3,grid.LastAddedRow].asstring :=
      frmvenda.query.fieldbyname('unidade').asstring;
    grid.cell[4,grid.LastAddedRow].asfloat :=
      frmvenda.query.fieldbyname('preco_venda').asfloat;

    // verificar se o produto estah em promocao
    if frmvenda.query.fieldbyname('preco_promocao').asfloat > 0 then
    begin
      IF (dData_Sistema >= frmvenda.query.fieldbyname('inicio_promocao').AsDateTime) AND
         (dData_Sistema <= frmvenda.query.fieldbyname('final_promocao').ASDATETIME) then
      begin
        grid.cell[4,grid.LastAddedRow].asfloat :=
          frmvenda.query.fieldbyname('preco_promocao').asfloat;
      end;
    end;

    grid.cell[5,grid.LastAddedRow].asfloat :=
      frmvenda.query.fieldbyname('estoque').asfloat;

    grid.cell[6,grid.LastAddedRow].asstring := frmVenda.query.fieldbyname('st').asstring;
    grid.cell[7,grid.lastaddedrow].asstring := frmvenda.query.fieldbyname('aliquota').asstring;
    grid.cell[8,grid.lastaddedrow].asstring := frmvenda.query.fieldbyname('IAT').asstring;
    grid.cell[9,grid.lastaddedrow].asstring := frmvenda.query.fieldbyname('IPPT').asstring;


    frmvenda.query.next;
  end;
  
  grid.SelectFirstRow;
  grid.setfocus;
end;

end.
