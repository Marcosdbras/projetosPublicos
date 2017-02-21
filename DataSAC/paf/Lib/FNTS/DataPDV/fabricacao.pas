unit fabricacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, Mask, RzEdit, RzBtnEdt,
  Buttons, DB, MemDS, DBAccess, IBC, Menus;

type
  TfrmFabricacao = class(TForm)
    Panel1: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    Panel2: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    ed_produto_codigo: TRzButtonEdit;
    ed_produto_nome: TRzEdit;
    ed_produto_unidade: TRzEdit;
    Label2: TLabel;
    Bevel2: TBevel;
    grid_insumo: TNextGrid;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    Panel3: TPanel;
    Panel4: TPanel;
    Bevel3: TBevel;
    Label3: TLabel;
    ed_insumo_codigo: TRzButtonEdit;
    ed_insumo_nome: TRzEdit;
    ed_insumo_un: TRzEdit;
    Label4: TLabel;
    ed_insumo_qtde: TRzNumericEdit;
    Label5: TLabel;
    bt_insumo_gravar: TButton;
    Panel5: TPanel;
    BitBtn1: TBitBtn;
    qrProduto: TIBCQuery;
    qrInsumo: TIBCQuery;
    query: TIBCQuery;
    NxNumberColumn2: TNxTextColumn;
    Label6: TLabel;
    ed_qtde_prod: TRzNumericEdit;
    Label7: TLabel;
    ed_insumo_qtde_prod: TRzNumericEdit;
    Label8: TLabel;
    ed_insumo_un2: TRzEdit;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxTextColumn5: TNxTextColumn;
    NxNumberColumn5: TNxNumberColumn;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    Gravar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_okClick(Sender: TObject);
    procedure ed_produto_codigoButtonClick(Sender: TObject);
    procedure ed_produto_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ed_insumo_codigoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_insumo_codigoButtonClick(Sender: TObject);
    procedure bt_insumo_gravarClick(Sender: TObject);
    procedure ed_qtde_prodKeyPress(Sender: TObject; var Key: Char);
    procedure ed_insumo_qtdeExit(Sender: TObject);
    procedure ed_qtde_prodExit(Sender: TObject);
  private
    { Private declarations }
    procedure filtra_insumo();
  public
    { Public declarations }
  end;

var
  frmFabricacao: TfrmFabricacao;
  rQtde_estoque, rvalor, rcusto_produto : real;

implementation

uses modulo, principal, funcoes, loc_produto_servidor, unECF;

{$R *.dfm}
procedure TfrmFabricacao.filtra_insumo();
var i : integer;
begin
  qrInsumo.Close;
  qrinsumo.SQL.clear;
  qrinsumo.sql.add('select c000079.*, c000025.produto as nome_produto,');
  qrinsumo.sql.add('c000025.precocusto as preco_custo_prod from c000079, c000025');
  qrinsumo.sql.add('where c000079.codproduto = c000025.codigo and');
  qrinsumo.sql.add('C000079.codigo = '''+ed_produto_codigo.text+'''');
  qrinsumo.open;

  grid_insumo.ClearRows;

  qrinsumo.First;
  while not qrinsumo.eof do
  begin
    i := grid_insumo.AddRow(1);
    grid_insumo.Cell[0,i].asstring := qrinsumo.fieldbyname('codproduto').asstring;
    grid_insumo.Cell[1,i].asstring := qrinsumo.fieldbyname('nome_produto').asstring;

    grid_insumo.Cell[2,i].asfloat  := qrinsumo.fieldbyname('quantidade').asfloat;
    grid_insumo.Cell[3,i].asstring := qrinsumo.fieldbyname('unidade_materiaprima').asstring;

    grid_insumo.Cell[4,i].asfloat  := ed_qtde_prod.value;
    grid_insumo.Cell[5,i].asstring := ed_produto_unidade.text;

    grid_insumo.Cell[6,i].asfloat  := qrinsumo.fieldbyname('quantidade').asfloat * ed_qtde_prod.value;
    grid_insumo.Cell[7,i].asstring := qrinsumo.fieldbyname('unidade_materiaprima').asstring;

    grid_insumo.cell[8,i].asfloat := qrinsumo.fieldbyname('preco_custo_prod').asfloat;
    qrinsumo.next;
  end;
end;

procedure TfrmFabricacao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFabricacao.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFabricacao.bt_okClick(Sender: TObject);
var i : integer;
 b : boolean;
begin
   bcontinua := true;
  // verificar estoques
  for i := 0 to grid_insumo.rowcount - 1 do
  begin
    qrProduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select c000025.codigo, c000025.produto, c000025.unidade, c000025.precocusto,');
    qrproduto.sql.add('c000100.estoque_atual as estoque');
    qrproduto.sql.add('from c000025, c000100');
    qrproduto.sql.add('where c000025.codigo = c000100.codproduto and c000025.codigo = '''+grid_insumo.Cell[0,i].asstring+'''');
    qrproduto.open;
    if qrproduto.fieldbyname('estoque').asfloat < grid_insumo.cell[6,i].asfloat then
    begin
      Application.messagebox(pansichar('Produto com estoque insuficiente!'+#13+
                                       'Produto: '+grid_insumo.cell[1,i].asstring+#13+
                                       'Quantidade em Estoque: '+formatfloat('###,###,##0.00',qrproduto.fieldbyname('estoque').asfloat)+#13+
                                       'Quantidade solicitada: '+formatfloat('###,###,##0.00',grid_insumo.cell[6,i].asfloat)),
                                       'Erro',MB_OK+MB_ICONERROR);
      bContinua := FALSE;
      BREAK;

    end;
  end;
  if not bcontinua then exit;









  if application.messagebox(pansichar('Confirma a fabricação do produto:'+#13+
                                      ed_produto_nome.text+#13+
                                      'Quantidade: '+ed_qtde_prod.text+' '+ed_produto_unidade.text+'?'),
                                      'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    // atualizar o banco de dados do servidor
    // excluir todos os registro da tabela 000079 e depois refazer
    qrinsumo.close;
    qrinsumo.sql.clear;
    qrinsumo.sql.add('delete from c000079 where codigo = '''+ed_produto_codigo.text+'''');
    qrinsumo.ExecSQL;

    // excluir tb do bd do paf

    query.close;
    query.sql.clear;
    query.sql.add('delete from estoque_indice where cod_produto = '+inttostr(strtoint(ed_produto_codigo.text)));
    query.execsql;


    // atualizar a tabela de insumos do servidor
    for i := 0 to grid_insumo.RowCount - 1 do
    begin
      qrinsumo.close;
      qrinsumo.sql.clear;
      qrinsumo.sql.add('insert into c000079');
      qrinsumo.sql.add('(codigo, produto, unidade_produto, codproduto,');
      qrinsumo.sql.add('unidade_materiaprima, quantidade)');
      qrinsumo.sql.add('values');
      qrinsumo.sql.add('(:codigo, :produto, :unidade_produto, :codproduto,');
      qrinsumo.sql.add(':unidade_materiaprima, :quantidade)');

      qrinsumo.parambyname('codigo').asstring := ed_produto_codigo.text;
      qrinsumo.ParamByName('produto').asstring := copy(ed_produto_nome.text,1,50);
      qrinsumo.ParamByName('unidade_produto').asstring := ed_produto_unidade.text;
      qrinsumo.parambyname('codproduto').asstring := grid_insumo.Cell[0,i].asstring;
      qrinsumo.parambyname('unidade_materiaprima').asstring := grid_insumo.cell[3,i].asstring;
      qrinsumo.parambyname('quantidade').asfloat := grid_insumo.cell[2,i].asfloat;
      qrinsumo.ExecSQL;

      // bd paf

      query.close;
      query.sql.clear;
      query.sql.add('insert into estoque_indice');
      query.sql.add('(cod_produto, cod_indice, qtde)');
      query.sql.add('values');
      query.sql.add('(:cod_produto, :cod_indice, :qtde)');
      query.parambyname('cod_produto').asinteger := strtoint(ed_produto_codigo.text);
      query.parambyname('cod_indice').asinteger := StrToInt(grid_insumo.cell[0,i].asstring);
      query.parambyname('qtde').asfloat := grid_insumo.cell[2,i].asfloat;
      query.ExecSQL;


      // fazer o lancamento na tabela 32 para baixar estes produtos no estoque

      qrinsumo.CLOSE;
      qrinsumo.SQL.CLEAR;
      qrinsumo.SQL.Add('insert into c000032');
      qrinsumo.SQL.add('(codigo,codnota,serial,numeronota,');
      qrinsumo.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,');
      qrinsumo.SQL.add('total,unidade,aliquota,');
      qrinsumo.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
      qrinsumo.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
      qrinsumo.sql.add('base_calculo, valor_icms)');
      qrinsumo.SQL.add('values');

      qrinsumo.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
      qrinsumo.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,');
      qrinsumo.SQL.add(':total,:unidade,:aliquota,');
      qrinsumo.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
      qrinsumo.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
      qrinsumo.sql.add(':base_calculo, :valor_icms)');

      qrinsumo.Params.ParamByName('CODIGO').ASSTRING      := frmPrincipal.codifica('000032',10);
      qrinsumo.Params.ParamByName('CODNOTA').ASSTRING     := '';
      qrinsumo.Params.ParamByName('SERIAL').ASSTRING      := '';
      qrinsumo.Params.ParamByName('NUMERONOTA').ASSTRING  := '';
      qrinsumo.Params.ParamByName('CODPRODUTO').ASSTRING  := grid_insumo.cell[0,i].asstring;
      qrinsumo.Params.ParamByName('CODCLIENTE').ASSTRING  := '';
      qrinsumo.Params.ParamByName('CODVENDEDOR').ASSTRING := '';

      qrinsumo.Params.ParamByName('QTDE').ASFLOAT := grid_insumo.cell[6,i].asfloat;
      qrinsumo.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := -grid_insumo.cell[6,i].asfloat;
      qrinsumo.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;

      qrinsumo.Params.ParamByName('UNIDADE').ASSTRING  := grid_insumo.cell[3,i].asstring;
      qrinsumo.Params.ParamByName('CST').ASSTRING  := '';
      qrinsumo.Params.ParamByName('MOVIMENTO').ASINTEGER  := 11;
      qrinsumo.Params.ParamByName('DATA').ASDATETIME  := dData_sistema;
      qrinsumo.Params.ParamByName('ECF_CAIXA').ASSTRING  := '';
      qrinsumo.Params.ParamByName('ECF_SERIE').ASSTRING  := '';
      qrinsumo.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := '';
      qrinsumo.Params.ParamByName('CUPOM_ITEM').ASSTRING  := '0';
      qrinsumo.Params.ParamByName('CUPOM_MODELO').ASSTRING  := '';
      qrinsumo.params.parambyname('desconto').asfloat := 0;
      qrinsumo.Params.ParamByName('UNITARIO').ASFLOAT := grid_insumo.cell[8,i].asfloat;
      qrinsumo.Params.ParamByName('TOTAL').ASFLOAT := grid_insumo.cell[8,i].asfloat * grid_insumo.cell[6,i].asfloat;
      qrinsumo.Params.ParamByName('base_calculo').ASFLOAT := 0;
      qrinsumo.Params.ParamByName('valor_icms').ASFLOAT := 0;
      qrinsumo.ExecSQL;
    end;
    // fazer o lancamento na tabela 32 para dar entrada no produto fabricado no estoque
    qrinsumo.CLOSE;
    qrinsumo.SQL.CLEAR;
    qrinsumo.SQL.Add('insert into c000032');
    qrinsumo.SQL.add('(codigo,codnota,serial,numeronota,');
    qrinsumo.SQL.add('codproduto,qtde,movimento_estoque,unitario,desconto,');
    qrinsumo.SQL.add('total,unidade,aliquota,');
    qrinsumo.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
    qrinsumo.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst,');
    qrinsumo.sql.add('base_calculo, valor_icms)');
    qrinsumo.SQL.add('values');

    qrinsumo.SQL.add('(:codigo,:codnota,:serial,:numeronota,');
    qrinsumo.SQL.add(':codproduto,:qtde,:movimento_estoque,:unitario,:desconto,');
    qrinsumo.SQL.add(':total,:unidade,:aliquota,');
    qrinsumo.SQL.add(':cupom_item,:cupom_numero,:cupom_modelo,');
    qrinsumo.SQL.add(':ecf_serie,:ecf_caixa,:codcliente,:codvendedor,:movimento,:data,:cst,');
    qrinsumo.sql.add(':base_calculo, :valor_icms)');

    qrinsumo.Params.ParamByName('CODIGO').ASSTRING      := frmPrincipal.codifica('000032',10);
    qrinsumo.Params.ParamByName('CODNOTA').ASSTRING     := '';
    qrinsumo.Params.ParamByName('SERIAL').ASSTRING      := '';
    qrinsumo.Params.ParamByName('NUMERONOTA').ASSTRING  := '';
    qrinsumo.Params.ParamByName('CODPRODUTO').ASSTRING  := ed_produto_codigo.text;
    qrinsumo.Params.ParamByName('CODCLIENTE').ASSTRING  := '';
    qrinsumo.Params.ParamByName('CODVENDEDOR').ASSTRING := '';

    qrinsumo.Params.ParamByName('QTDE').ASFLOAT := ed_qtde_prod.Value;
    qrinsumo.Params.ParamByName('MOVIMENTO_ESTOQUE').ASFLOAT := ed_qtde_prod.Value;
    qrinsumo.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;

    qrinsumo.Params.ParamByName('UNIDADE').ASSTRING  := ed_produto_unidade.text;
    qrinsumo.Params.ParamByName('CST').ASSTRING  := '';
    qrinsumo.Params.ParamByName('MOVIMENTO').ASINTEGER  := 13;
    qrinsumo.Params.ParamByName('DATA').ASDATETIME  := dData_sistema;
    qrinsumo.Params.ParamByName('ECF_CAIXA').ASSTRING  := '';
    qrinsumo.Params.ParamByName('ECF_SERIE').ASSTRING  := '';
    qrinsumo.Params.ParamByName('CUPOM_NUMERO').ASSTRING  := '';
    qrinsumo.Params.ParamByName('CUPOM_ITEM').ASSTRING  := '0';
    qrinsumo.Params.ParamByName('CUPOM_MODELO').ASSTRING  := '';
    qrinsumo.params.parambyname('desconto').asfloat := 0;
    qrinsumo.Params.ParamByName('UNITARIO').ASFLOAT := rcusto_produto;
    qrinsumo.Params.ParamByName('TOTAL').ASFLOAT := ed_qtde_prod.value * rcusto_produto;
    qrinsumo.Params.ParamByName('base_calculo').ASFLOAT := 0;
    qrinsumo.Params.ParamByName('valor_icms').ASFLOAT := 0;
    qrinsumo.ExecSQL;

    if application.MessageBox('Fabricação feita com sucesso!'+#13+
                           'Deseja imprimir o pedido?','Aviso',mb_yesno+mb_iconquestion) = idyes then
    begin
      repeat
        // COO

        sMsg := cECF_Abre_Gerencial(iECF_Modelo,'PEDIDO DE PRODUÇÃO');
        sNumero_Cupom := cECF_Numero_Cupom(iECF_Modelo);
        if sMsg <> 'OK' then
        begin
          if application.messagebox(pansichar('Erro ao abrir relatório gerencial!'+#13+
                                              'Mensagem: '+sMsg+#13+
                                              'Deseja tentar outra vez?'),'Erro',
                                              mb_yesno+mb_iconerror ) = idno
          then
          begin
            break;
          end;
        end
        else
        begin
          // extrair GNF E GRG

          sGNF := cECF_Numero_Contador_Operacao_NF(iECF_Modelo);
          sGRG := cECF_Numero_Contador_Relatorio_Gerencial(iECF_Modelo);
        end;
      until sMsg = 'OK';




      if sMsg = 'OK' then
      begin
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'************************************************');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,
        'Produto: '+Zerar( ed_produto_codigo.text,6 )+' - '+
                    ed_produto_nome.text);
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Qtde...: '+ed_qtde_prod.Text+' '+ed_produto_unidade.text);

        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'Indice Descricao                      Quantidade');
        SMsg := cECF_Usa_Gerencial(iECF_Modelo,'------------------------------------------------');







            repeat
              for i := 0 to grid_insumo.RowCount - 1 do
              begin
                SMsg := cECF_Usa_Gerencial(iECF_Modelo,zerar(grid_insumo.cell[0,i].asstring,6)+' '+
                                           texto_justifica(grid_insumo.cell[1,i].asstring,27,' ',taEsquerda)+' '+
                                           texto_justifica(formatfloat('###,###,##0.000',grid_insumo.cell[6,i].asfloat)+
                                                                  grid_insumo.cell[7,i].asstring,13,' ',taDireita));

                if sMsg <> 'OK' then
                begin
                  if application.messagebox(pansichar('Erro na impressão do relatório gerencial!'+#13+
                                                      'Mensagem: '+sMsg+#13+
                                                      'Deseja tentar outra vez?'),'Erro',
                                                      mb_yesno+mb_iconerror ) = idno
                  then
                  begin
                    break;
                  end;
                end;
              end;
            until sMsg = 'OK';

      end;

      if sMsg = 'OK' then
      begin
        repeat
          sMsg := cECF_Fecha_Gerencial(iECF_Modelo);
          if sMsg <> 'OK' then
          begin
            if application.messagebox(pansichar('Erro ao fechar relatório gerencial!'+#13+
                                                'Mensagem: '+sMsg+#13+
                                                'Deseja tentar outra vez?'),'Erro',
                                                mb_yesno+mb_iconerror ) = idno
            then
            begin
              break;
            end;
          end
          else
          begin
            // registrar Gerencial no banco de dados
            with frmmodulo do
            begin
              spNao_Fiscal.Close;
              spNao_Fiscal.parambyname('codigo').asstring := codifica_cupom;
              spNao_fiscal.parambyname('ecf').asstring := sECF_Serial;
              spNao_fiscal.ParamByName('data').asdatetime := dData_Sistema;
              spNao_fiscal.ParamByName('hora').Astime := strtotime(copy(cECF_Data_Hora(iECF_Modelo),12,8));
              spNao_fiscal.ParamByName('indice').asstring := 'RG';
              spNao_fiscal.ParamByName('Descricao').asstring := 'RELATÓRIO GERENCIAL';
              spNao_fiscal.ParamByName('valor').asfloat := 0;
              spNao_fiscal.ParamByName('COO').asstring := sNumero_Cupom;
              spNao_fiscal.ParamByName('GNF').asstring := sGNF;
              spNao_fiscal.ParamByName('GRG').asstring := sGRG;
              spNao_fiscal.ParamByName('CDC').Clear;
              spNao_fiscal.ParamByName('DENOMINACAO').asstring := 'RG';
              spNao_Fiscal.Prepare;
              spNao_Fiscal.Execute;
            end;

          end;
        until sMsg = 'OK';
      end;
    end;

    close;
  end;


end;

procedure TfrmFabricacao.ed_produto_codigoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmLoc_Produto_Servidor := TfrmLoc_Produto_Servidor.create(self);
  frmLoc_Produto_Servidor.ShowModal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_produto_codigo.text := resultado_pesquisa1;
    ed_produto_nome.text := resultado_pesquisa2;
    ed_produto_unidade.text := resultado_pesquisa3;
    rcusto_produto := resultado_valor2;
    ed_qtde_prod.value := 1;
    filtra_insumo;
    ed_qtde_prod.setfocus;
  end;
  
end;

procedure TfrmFabricacao.ed_produto_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ed_produto_codigo.text <> '' then
    begin
      ed_produto_codigo.text := Zerar(ed_produto_codigo.text,6);
      qrProduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.add('select codigo, produto, unidade, precocusto');
      qrproduto.sql.add('from c000025');
      qrproduto.sql.add('where codigo = '''+ed_produto_codigo.text+'''');
      qrproduto.open;
      if qrproduto.recordcount > 0 then
      begin
        ed_produto_nome.text := qrproduto.fieldbyname('produto').asstring;
        ed_produto_unidade.text := qrproduto.fieldbyname('unidade').asstring;
        rcusto_produto := qrProduto.fieldbyname('precocusto').asfloat;
        ed_qtde_prod.value := 1;
        filtra_insumo;
        ed_qtde_prod.setfocus;
      end
      else
      begin
        ed_produto_codigoButtonClick(frmFabricacao);
      end;
    end
    else
    begin
      ed_produto_codigoButtonClick(frmFabricacao);
    end;
  end;
end;

procedure TfrmFabricacao.FormShow(Sender: TObject);
begin
  grid_insumo.ClearRows;
  ed_produto_codigo.setfocus;
 
end;

procedure TfrmFabricacao.BitBtn1Click(Sender: TObject);
var i : integer;
begin
  i := grid_insumo.SelectedRow;

  if i < 0 then exit;

  if application.messagebox('Confirma a exclusão do item selecionado?','Atenção',
     mb_yesno+MB_ICONWARNING) = idYes then
  begin
    grid_insumo.DeleteRow(i);
  end;
end;

procedure TfrmFabricacao.ed_insumo_codigoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ed_insumo_codigo.text <> '' then
    begin
      ed_insumo_codigo.text := Zerar(ed_insumo_codigo.text,6);
      qrProduto.close;
      qrproduto.sql.clear;
      qrproduto.sql.add('select c000025.codigo, c000025.produto, c000025.unidade, c000025.precocusto,');
      qrproduto.sql.add('c000100.estoque_atual as estoque');
      qrproduto.sql.add('from c000025, c000100');
      qrproduto.sql.add('where c000025.codigo = c000100.codproduto and c000025.codigo = '''+ed_insumo_codigo.text+'''');
      qrproduto.open;
      if qrproduto.recordcount > 0 then
      begin
        ed_insumo_nome.text := qrproduto.fieldbyname('produto').asstring;
        ed_insumo_un.text := qrproduto.fieldbyname('unidade').asstring;
        if qrproduto.fieldbyname('estoque').asfloat <= 0 then
        begin
          Application.messagebox('Produto não possue estoque!','Erro',mb_ok+mb_iconerror);
          ed_insumo_nome.text := '';
          ed_insumo_un.text := '';
          exit;
        end
        else
          rQtde_estoque := qrproduto.fieldbyname('estoque').asfloat;

        rvalor := qrproduto.fieldbyname('precocusto').asfloat;
        ed_insumo_un2.Text := qrproduto.fieldbyname('unidade').asstring;
        ed_insumo_qtde.setfocus;

      end
      else
      begin
        ed_insumo_codigoButtonClick(frmFabricacao);
      end;
    end
    else
    begin
      ed_insumo_codigoButtonClick(frmFabricacao);
    end;
  end;
end;

procedure TfrmFabricacao.ed_insumo_codigoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmLoc_Produto_Servidor := TfrmLoc_Produto_Servidor.create(self);
  frmLoc_Produto_Servidor.ShowModal;

  if resultado_pesquisa1 <> '' then
  begin
    if resultado_valor1 <= 0 then
    begin
      Application.messagebox('Produto não possue estoque!','Erro',mb_ok+mb_iconerror);
      exit;
    end
    else
      rQtde_estoque := resultado_valor1;
    ed_insumo_codigo.text := resultado_pesquisa1;
    ed_insumo_nome.text := resultado_pesquisa2;
    ed_insumo_un.text := resultado_pesquisa3;
    ed_insumo_un2.text := resultado_pesquisa3;
    rvalor := resultado_valor2;
    ed_insumo_qtde.setfocus;
  end;
end;

procedure TfrmFabricacao.bt_insumo_gravarClick(Sender: TObject);
var i : integer;
begin
  if ed_produto_codigo.Text = '' then
  begin
    application.messagebox('Favor informar o produto!','Erro',mb_ok+mb_iconerror);
    ed_produto_codigo.setfocus;
    exit;
  end;
  if ed_insumo_codigo.Text = '' then
  begin
    application.messagebox('Favor informar o produto de insumo!','Erro',mb_ok+mb_iconerror);
    ed_insumo_codigo.setfocus;
    exit;
  end;

  if ed_insumo_qtde.Value = 0 then
  begin
    application.messagebox('Favor informar a quantidade!','Erro',mb_ok+mb_iconerror);
    ed_insumo_qtde.setfocus;
    exit;
  end;

  if ed_insumo_qtde_prod.value > rQtde_estoque then
  begin
    Application.messagebox('Produto não possue esta quantidade em estoque!','Erro',mb_ok+mb_iconerror);
    exit;
  end;


  i := grid_insumo.AddRow(1);
  grid_insumo.Cell[0,i].asstring := ed_insumo_codigo.text;
  grid_insumo.Cell[1,i].asstring := ed_insumo_nome.text;
  grid_insumo.Cell[2,i].asfloat  := ed_insumo_qtde.value;

  grid_insumo.Cell[3,i].asstring := ed_insumo_un.Text;

  grid_insumo.Cell[4,i].asfloat  := ed_qtde_prod.value;
  grid_insumo.Cell[5,i].asstring := ed_produto_unidade.text;

  grid_insumo.Cell[6,i].asfloat  := ed_insumo_qtde_prod.Value;
  grid_insumo.Cell[7,i].asstring := ed_insumo_un2.text;
  grid_insumo.cell[8,i].asfloat := rvalor;


  ed_insumo_codigo.text := '';
  ed_insumo_qtde.value := 0;
  ed_insumo_qtde_prod.Value := 0;
  ed_insumo_nome.text := '';
  ed_insumo_un.text := '';
  ed_insumo_un2.text := '';

  ed_insumo_codigo.SetFocus;

end;

procedure TfrmFabricacao.ed_qtde_prodKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if grid_insumo.RowCount > 0 then
      bt_ok.setfocus
    else
      ed_insumo_codigo.setfocus;
end;

procedure TfrmFabricacao.ed_insumo_qtdeExit(Sender: TObject);
begin
  ed_insumo_qtde_prod.value := ed_insumo_qtde.value * ed_qtde_prod.Value;
end;

procedure TfrmFabricacao.ed_qtde_prodExit(Sender: TObject);
var i : integer;
begin
  for i := 0 to grid_insumo.rowcount - 1 do
  begin
    grid_insumo.cell[4,i].asfloat := ed_qtde_prod.value;
    grid_insumo.cell[6,i].asfloat := ed_qtde_prod.value * grid_insumo.cell[2,i].asfloat;
  end;
end;

end.




