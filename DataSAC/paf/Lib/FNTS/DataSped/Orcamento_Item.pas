unit Orcamento_Item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, RzEdit, DB, MemDS, DBAccess, IBC,
  Buttons;

type
  TfrmOrcamento_Item = class(TForm)
    Label5: TLabel;
    ed_barra: TEdit;
    Label1: TLabel;
    ed_unidade: TEdit;
    Label2: TLabel;
    ed_codigo: TEdit;
    ed_qtde: TRzNumericEdit;
    ed_unitario: TRzNumericEdit;
    ed_desconto_p: TRzNumericEdit;
    ed_total: TRzNumericEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Bevel1: TBevel;
    Panel1: TPanel;
    ed_desconto: TRzNumericEdit;
    Label8: TLabel;
    ed_subtotal: TRzNumericEdit;
    query: TIBCQuery;
    bt_ok: TBitBtn;
    bt_cancelar: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_qtdeExit(Sender: TObject);
    procedure ed_descontoExit(Sender: TObject);
    procedure ed_desconto_pExit(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure ed_barraEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Localizar_Produto(referencia:string):boolean;
  end;

var
  frmOrcamento_Item: TfrmOrcamento_Item;

implementation

uses modulo, principal, produto_consulta_normal, funcoes, Orcamento;

{$R *.dfm}


// Funcao de busca de produtos
function TfrmOrcamento_Item.Localizar_Produto(referencia:string):boolean;
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
            if query.recordcount > 1 then
            begin
              iprod_codigo := 0;
              // encontrou varios registros
              frmProduto_consulta_normal := TfrmProduto_consulta_normal.create(self);
              frmproduto_consulta_normal.ed_barra.text := ed_barra.text;
              frmproduto_consulta_normal.query.close;
              frmproduto_consulta_normal.query.sql.clear;
              frmproduto_consulta_normal.query.sql.text := query.sql.Text;
              frmproduto_consulta_normal.query.open;
              frmProduto_consulta_normal.showmodal;
              if iProd_codigo > 0 then
              begin
                query.Close;
                query.sql.Clear;
                query.sql.add('select * from estoque where codigo = '+inttostr(iprod_codigo));
                query.open;
                result := true;
              end
              else
                result := false;
            end
            else
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



procedure TfrmOrcamento_Item.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrcamento_Item.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento_Item.bt_okClick(Sender: TObject);
var i : integer;
begin
  if (ed_codigo.text = '') or (ed_barra.text = '') then
  begin
    Application.messagebox('Favor informar um produto!','Erro',mb_ok+mb_iconerror);
    ed_barra.setfocus;
    exit;
  end;
  if ed_qtde.value = 0 then
  begin
    application.messagebox('Favor informar a quantidade do produto!','Erro',mb_ok+mb_iconerror);
    ed_qtde.setfocus;
    exit;
  end;

  i := frmOrcamento.grid_item.AddRow(1);
  frmOrcamento.grid_item.Cell[0,i].asinteger := frmOrcamento.grid_item.RowCount;
  frmOrcamento.grid_item.Cell[1,i].asstring  := ed_codigo.text;
  frmOrcamento.grid_item.Cell[2,i].asstring  := ed_barra.text;
  frmOrcamento.grid_item.Cell[3,i].asfloat   := ed_qtde.value;
  frmOrcamento.grid_item.cell[4,i].asfloat   := ed_unitario.Value;
  frmOrcamento.grid_item.cell[5,i].asfloat   := ed_desconto.value;
  frmOrcamento.grid_item.Cell[6,i].AsFloat   := ed_total.value;

  frmOrcamento.ed_subtotal.value := frmOrcamento.ed_subtotal.value +
                                    frmOrcamento.grid_item.cell[6,i].asfloat;
  frmOrcamento.ed_total.value := frmOrcamento.ed_subtotal.value - frmOrcamento.ed_desconto.value;

  ed_barra.text := '';
  ed_unidade.text := '';
  ed_codigo.Text := '';
  ed_qtde.Value := 0;
  ed_desconto_p.Value := 0;
  ed_desconto.value := 0;
  ed_subtotal.value := 0;
  ed_total.value := 0;

  ed_barra.setfocus;

end;

procedure TfrmOrcamento_Item.ed_qtdeExit(Sender: TObject);
begin
  ed_subtotal.value := ed_qtde.value * ed_unitario.value;
  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmOrcamento_Item.ed_descontoExit(Sender: TObject);
begin
  if (ed_desconto.value > 0) and
     (ed_subtotal.value > 0) then
  ed_desconto_p.value :=
    (ed_desconto.Value * 100) / ed_subtotal.value;

  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmOrcamento_Item.ed_desconto_pExit(Sender: TObject);
begin
  if (ed_desconto_p.value > 0) and
     (ed_subtotal.value > 0) then
  ed_desconto.value :=  ed_subtotal.value * (ed_desconto_p.value/100);

  ed_total.value := ed_subtotal.value - ed_desconto.value;
end;

procedure TfrmOrcamento_Item.ed_barraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ed_barra.text = '' then exit;
    // fazer a busca do produto
    If Localizar_Produto(ed_barra.Text) then
    begin
      ed_barra.text       := sProd_nome;
      ed_qtde.value       := rProd_qtde;
      ed_unitario.Value   := rProd_preco;
      ed_subtotal.Value   := rProd_total;
      ed_desconto_p.value := 0;
      ed_desconto.value   := 0;
      ed_total.value      := rProd_total;
      ed_unidade.Text     := sProd_unidade;
      ed_codigo.text      := IntToStr(iProd_codigo);
      ed_qtde.setfocus;
    end
    else
    begin
      // nao achou o produto
      // lancar no display do produto
      Application.messagebox('Produto não encontrado!','Erro',mb_ok+mb_iconerror);
      ed_barra.SelectAll;
    end;
  end;
end;

procedure TfrmOrcamento_Item.ed_barraEnter(Sender: TObject);
begin
  ed_barra.SelectAll;
end;

end.
