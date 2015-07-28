unit preco_consultap;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, RzLabel, jpeg, ExtCtrls, AdvOfficeImage, Mask, RzEdit,
  Menus, AdvMenus, DB, MemDS, DBAccess, IBC;

type
  Tfrmpreco_consultap = class(TForm)
    Image1: TImage;
    LB_MENU_FISCAL: TRzLabel;
    lb_status: TRzLabel;
    img_pgto: TAdvOfficeImage;
    lb_produto: TRzLabel;
    lb_promocao: TRzLabel;
    lb_nome_produto: TRzLabel;
    lb_preco: TRzLabel;
    ed_barra: TRzEdit;
    img_foto: TImage;
    RzLabel1: TRzLabel;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    N2: TMenuItem;
    Retornar1: TMenuItem;
    Estoque1: TMenuItem;
    query: TIBCQuery;
    procedure FormCreate(Sender: TObject);
    procedure ed_barraEnter(Sender: TObject);
    procedure ed_barraKeyPress(Sender: TObject; var Key: Char);
    procedure Retornar1Click(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure Estoque1Click(Sender: TObject);
    function Localizar_Produto(referencia:string):boolean;
    function Truncar_Valor(valor:real):real;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  frmpreco_consultap: Tfrmpreco_consultap;

implementation

uses funcoes, modulo, venda, principal, consulta_estoque, menu_fiscal;

{$R *.dfm}


// -------------------------------------------------------------------------- //
// Funcao para truncar o valor para nao dar diferencao no ECF
function tfrmPreco_Consultap.Truncar_Valor(valor:real):real;
var txt_desconto : string;
i : integer;
begin
  txt_desconto := formatfloat('#############0.00000000000',valor);
  i := pos(',',txt_desconto);
  if i > 0 then
  begin
    txt_desconto :=
    copy(txt_desconto,1,i-1)+','+
    copy(txt_desconto,i+1,2);
    result := strtofloat(txt_desconto);
  end
  else
    result := valor;
end;


// -------------------------------------------------------------------------- //
// Funcao de busca de produtos
function Tfrmpreco_consultap.Localizar_Produto(referencia:string):boolean;
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
    rProd_Estoque  := 0;
    rProd_preco    := 0;
    rProd_qtde     := 1;
    rProd_total    := 0;
    bProd_promocao := false;
    sProd_Tamanho := '';
    sProd_Cor := '';

    // verificar se foi digitado a quantidade no campo de busca do produto utilizando os
    // caracteres "X" ou "*"

    if (pos('X',ansiuppercase(referencia)) > 0) or
       (pos('*',ansiuppercase(referencia)) > 0) then
    begin
      iPosicao := pos('X',ansiuppercase(referencia));
      if iPosicao = 0 then iPosicao := pos('*',ansiuppercase(referencia));
      try
        // alimenta a varivel de qtde
        rProd_Qtde := Strtofloat(copy(referencia,1,iPosicao-1));
        // copia apenas a parte que contem a informacao da busca do produto
        referencia := copy(referencia,iPosicao+1,99);
      except
        // retornou erro, zera a qtde e deixa a referencia como estah.
        rProd_qtde := 1;
      end;
    end;

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
          // encontrou o registro pelo codigo de barras
          result := true;
        end
        else
        begin
          // nao achou pelo codigo de barras, procurar pelo codigo
          try
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
          except
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
          query.sql.add('where upper(REFERENCIA) LIKE '''+ANSIUPPERCASE(referencia)+'%''');
          query.sql.add('order by REFERENCIA, COR, TAMANHO');
          query.open;

          if query.RecordCount > 0 then
          begin
            Result := True;
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
                if iPesquisa_produto = 1 then
                begin
                //  frmProduto_consulta := TfrmProduto_consulta.create(self);
                //  frmproduto_consulta.ed_barra.text := ed_barra.text;
                //  frmProduto_consulta.showmodal;
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
                  result := True;
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
      end;
    end
    else
    begin
      // verificar se o produto é pesado em balanca
      if (copy(referencia,1,1) = '2') and (length(referencia) <= 13) then
      begin
        try //Exemplo de codigo na etiqueta: 2000010002550 -> Codigo = 00001 Valor = 000255 = 2,55
           query.close;
           query.sql.clear;
           query.sql.add('select * from ESTOQUE');
           // extrair o codigo do produto na etiqueta de codigo de barras conf. o tamanho
           // do codigo da balanca configurado previamente
           query.sql.add('where cod_barra = '''+
                          inttostr(strtoint(copy(referencia,2,iTamanho_codigo_balanca)))+'''');
           query.open;
           if query.RecordCount > 0 then
           begin
             // encontrou um registro e estah lancando o valor contido na etiqueta de cod.barras
             rProd_total := strtofloat(copy(referencia,7,6))/100;
             result := true;
           end
           else
             // nao encontrou nenhum registro
             result := false;
        except
           // retornou erro ao tentar buscar pelo codigo do produto pesasdo
            result := false;
        end;
      end
      else
      begin
        // nao achou pelo codigo de barras, procurar pelo nome
        query.close;
        query.sql.clear;
        query.sql.add('select * from ESTOQUE');
        query.sql.add('where upper(REFERENCIA) LIKE '''+ANSIUPPERCASE(referencia)+'%''');
        query.sql.add('order by REFERENCIA, COR, TAMANHO');
        query.open;

        if query.RecordCount > 0 then
        begin
          // nao encontrou nenhum produto
          // result := false;
          result:=true;
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
            // encontrou o registro pelo codigo de barras
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
      end;
    end;
  finally
    if result then
    begin
      // encontrou o produto, alimentar as variaveis de retorno
      sProd_nome     := query.fieldbyname('nome').asstring;
      if Length(Trim(Query.FieldByName('cod_barra').asString))>0 then
        sProd_barra    := query.fieldbyname('cod_barra').asstring
      else
        sProd_barra    := query.fieldbyname('codigo').asString;

      sprod_unidade  := query.fieldbyname('unidade').asstring;
      iProd_codigo   := query.fieldbyname('codigo').asinteger;
      sProd_CST      := query.fieldbyname('cst').asstring;
      rProd_aliquota := query.fieldbyname('aliquota').asfloat;
      rProd_Estoque  := query.fieldbyname('estoque').asfloat;
      if bTruncar_Valor then
        rProd_preco    := Truncar_Valor(query.fieldbyname('preco_venda').asfloat)    //mudei aqui 09/12/2011
      else
        rProd_preco    := query.fieldbyname('preco_venda').asfloat;

      rProd_desconto_maximo := query.fieldbyname('desconto_maximo').asfloat;
      bProd_promocao := false;
      rprod_desconto := 0;
      rprod_acrescimo := 0;
      sProd_Tamanho := Query.FieldByName('TAMANHO').AsString;
      sProd_Cor := Query.FieldByName('COR').AsString;

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
      if bTruncar_valor then
      begin
         rProd_total := Truncar_Valor(rProd_Qtde * rProd_preco);
      end
      else
      begin
        if rProd_total = 0 then
          rProd_total := rProd_qtde * rProd_preco;
      end;
    end;
  end;
end;


procedure Tfrmpreco_consultap.FormCreate(Sender: TObject);
begin
  top := 0;
  left := 0;
  img_foto.Picture := nil;
end;

procedure Tfrmpreco_consultap.ed_barraEnter(Sender: TObject);
begin
  lb_status.Caption := 'Informe o Código Barras ou Nome do Produto...';
  if iTeclado_modelo = 1 then
  begin
    Imprime_display_teclado('Consulta de Preco','');
  end;
end;

procedure Tfrmpreco_consultap.ed_barraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ed_barra.Text <> '' then
    begin
      iPesquisa_produto := 1;
      if frmpreco_consultap.Localizar_Produto(ed_barra.text) then
      begin
        lb_nome_produto.caption := sProd_nome;
        lb_preco.caption := FormatFloat('###,###,##0.00',rprod_preco);
        if bProd_promocao then
          lb_promocao.Visible := true else lb_promocao.Visible := false;
        if bBusca_foto_produto then
        begin
          if FileExists(sPasta_foto_produto+'\'+sProd_barra+'.jpg') then
            img_foto.Picture.LoadFromFile(sPasta_foto_produto+'\'+sProd_barra+'.jpg')
          else
            img_foto.Picture := nil;
        end;
        
        if iTeclado_Modelo = 1 then
        begin
          Imprime_display_teclado(sprod_nome,'Preco --> R$ '+
                                  formatfloat('###,###,##0.00',rprod_preco));
        end;
        ed_barra.selectall;
      end
      else
      begin
        img_foto.Picture := nil;
        lb_preco.Caption := '---';
        lb_promocao.Visible := false;
        lb_nome_produto.Caption := '';
        if iTeclado_Modelo = 1 then
           Imprime_display_teclado('A T E N C A O !','Nenhum produto encontrado!');
        lb_produto.Font.color := clred;
        lb_produto.caption := 'Nenhum produto encontrado!';
        Application.ProcessMessages;
        Sleep(1500);
        lb_produto.Font.color := clwhite;
        lb_produto.Caption := 'Consulta de produto';
        ED_barra.TEXT := '';
        if iTeclado_Modelo = 1 then
          Imprime_display_teclado('Consulta de Preco','');
        ed_barra.SelectAll;
      end;
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

procedure Tfrmpreco_consultap.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmpreco_consultap.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure Tfrmpreco_consultap.Estoque1Click(Sender: TObject);
begin
  if lb_nome_produto.Caption = '' then exit;

  // filtrar as vendas deste produto que nao foram exportados
  query.close;
  query.sql.clear;
  query.sql.add('select');
  query.sql.add('(select sum(qtde) from cupom_item, cupom');
  query.sql.add('  where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('  and cupom.ex = 0');
  query.sql.add('  and cupom_item.cancelado = 1');
  query.sql.add('  and cupom_item.cod_produto = '+IntToStr(iProd_codigo)+') as total_cancelado,');
  query.sql.add('sum(qtde) as total_vendido from cupom_item, cupom');
  query.sql.add('  where cupom_item.cod_cupom = cupom.codigo');
  query.sql.add('  and cupom.ex = 0');
  query.sql.add('  and cupom_item.cancelado = 0');
  query.sql.add('  and cupom_item.cod_produto = '+IntToStr(iProd_codigo));
  query.open;

  frmConsulta_Estoque := tfrmConsulta_Estoque.create(self);
  frmConsulta_Estoque.lb_estoque.Caption :=
    FormatFloat('###,###,##0.00',rProd_Estoque-query.fieldbyname('total_vendido').asfloat+
                                 query.fieldbyname('total_cancelado').asfloat)+' '+sProd_unidade;
  frmConsulta_Estoque.StatusBar1.Panels[0].Text := 'Atualizado em: '+sCarga_data+' às '+scarga_hora;
  frmConsulta_Estoque.showmodal;
end;

end.
