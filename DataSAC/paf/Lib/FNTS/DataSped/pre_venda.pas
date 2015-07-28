unit pre_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, AdvOfficeImage, StdCtrls,
  RzLabel, jpeg, ExtCtrls, Menus, AdvMenus, DB, MemDS, DBAccess, IBC;

type
  TfrmPre_Venda = class(TForm)
    Image1: TImage;
    lb_cliente: TRzLabel;
    img_cliente: TAdvOfficeImage;
    grid_venda: TNextGrid;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel1: TRzLabel;
    NxTextColumn1: TNxTextColumn;
    NxDateColumn1: TNxDateColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    pop_principal: TAdvPopupMenu;
    Retornar1: TMenuItem;
    Finalizar1: TMenuItem;
    Cancelar1: TMenuItem;
    MenuFiscal1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    qrPre_Venda: TIBCQuery;
    tm_Atualiza: TTimer;
    NxNumberColumn2: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    RzLabel2: TRzLabel;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    RzLabel3: TRzLabel;
    Conciliar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Retornar1Click(Sender: TObject);
    procedure tm_AtualizaTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Finalizar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure MenuFiscal1Click(Sender: TObject);
    procedure Conciliar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPre_Venda: TfrmPre_Venda;
  bConcilia : boolean;
  scod_conciliada : string;

implementation

uses modulo, funcoes, principal, msg_Operador, venda, senha_supervisor,
  menu_fiscal, prevenda_conciliar;

{$R *.dfm}

procedure TfrmPre_Venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPre_Venda.FormCreate(Sender: TObject);
begin
  left := 0;
  top := 0;
end;

procedure TfrmPre_Venda.Retornar1Click(Sender: TObject);
begin
  close;
end;

procedure TfrmPre_Venda.tm_AtualizaTimer(Sender: TObject);
var i : integer;
x : integer;
q : integer;
b : boolean;
begin
//  frmMsg_Operador.lb_msg.caption := 'Aguarde! Atualizando relação de pré-vendas...';
//  frmMsg_Operador.show;
//  frmMsg_Operador.Refresh;

  if grid_venda.RowCount > 0 then
    if grid_venda.SelectedRow >= 0 then
      x := grid_venda.SelectedRow;


  tm_Atualiza.Enabled := false;
  qrPre_Venda.CLOSE;
  qrPre_Venda.SQL.CLEAR;
  qrPre_Venda.SQL.ADD('select');
  qrPre_Venda.SQL.ADD('  c000074.*,');
  qrPre_Venda.SQL.ADD('  c000007.Nome Cliente,');
  qrPre_Venda.SQL.ADD('  c000008.Nome Vendedor');
  qrPre_Venda.SQL.ADD('from');
  qrPre_Venda.SQL.ADD('  c000074, c000007, c000008');
  qrPre_Venda.SQL.ADD('where');
  qrPre_Venda.SQL.ADD('  c000074.codcliente = c000007.codigo and');
  qrPre_Venda.SQL.ADD('  c000074.codvendedor = c000008.codigo and');
  qrPre_Venda.SQL.ADD('  c000074.tipo <> 9 and');
  qrPre_Venda.sql.add('  c000074.situacao = 1');
  qrPre_Venda.sql.add('ORDER BY c000074.CODIGO');
  qrPre_Venda.OPEN;



  qrpre_venda.First;
  while not qrpre_venda.Eof do
  begin
    b := false;
    for q := 0 to grid_venda.rowcount - 1 do
    begin
      if grid_venda.cell[0,q].asstring = qrPre_Venda.fieldbyname('codigo').asstring then
      begin
        b := true;
        break;
      end;
    end;

    if not b then
    begin
      i := grid_venda.AddRow(1);
      grid_venda.Cell[0,i].Asstring := qrPre_Venda.fieldbyname('codigo').asstring;
      grid_venda.Cell[1,i].AsDateTime := qrpre_venda.fieldbyname('data').asdatetime;
      grid_venda.Cell[2,i].Asstring := qrPre_Venda.fieldbyname('cliente').asstring;
      grid_venda.Cell[3,i].Asfloat := qrPre_Venda.fieldbyname('total').asfloat;
      grid_venda.Cell[4,i].Asstring := qrPre_Venda.fieldbyname('vendedor').asstring;
      grid_venda.Cell[5,i].Asinteger := qrPre_Venda.fieldbyname('codcliente').asinteger;
      grid_venda.Cell[6,i].Asinteger := qrPre_Venda.fieldbyname('codvendedor').asinteger;
      grid_venda.Cell[7,i].Asfloat := qrPre_Venda.fieldbyname('desconto').asfloat;
      grid_venda.Cell[8,i].Asfloat := qrPre_Venda.fieldbyname('acrescimo').asfloat;
    end;
    qrpre_venda.Next;
  end;
  grid_venda.SelectedRow := x;
  grid_venda.SetFocus;
  tm_Atualiza.Enabled := true;
//  hide;
//  frmmsg_Operador.Refresh;
end;

procedure TfrmPre_Venda.FormShow(Sender: TObject);
begin
  bConcilia := false;
  tm_AtualizaTimer(frmPre_Venda);
end;

procedure TfrmPre_Venda.Finalizar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;
  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma pré-venda!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;
  i := grid_venda.SelectedRow;

  frmmodulo.query_servidor.Close;
  frmmodulo.query_servidor.SQL.Clear;
  frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
  frmmodulo.query_servidor.sql.add('from c000075 orc,');
  frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+
                  grid_venda.cell[0,i].asstring+'''');
  frmmodulo.query_servidor.SQL.Add('and data = :vdat');
  frmmodulo.query_servidor.params.ParamByName('vdat').AsDateTime := grid_venda.Cell[1,i].AsDateTime;
  frmmodulo.query_servidor.Open;
  if frmmodulo.query_servidor.RecordCount = 0 then
  begin
    if Application.messagebox('Não itens lançados para esta pré-venda! Deseja fazer o cancelamento?','Atenção!',mb_yesno+MB_ICONEXCLAMATION) = idno then
      exit
    else
      Cancelar1Click(frmpre_venda);
      
  end
  else
  begin
    if not bConcilia then
      if application.messagebox('Confirma a impressão do cupom desta pré-venda?','Atenção',mb_yesno+
                                MB_ICONQUESTION) = idno then exit;

    bLanca_pre_venda := true;
    iPre_Venda_cliente := grid_venda.cell[5,i].asinteger;
    iPre_Venda_vendedor := grid_venda.cell[6,i].asinteger;
    iPre_venda_codigo := grid_venda.Cell[0,i].asinteger;
    sPre_Venda_Numero := 'PV'+ZERAR(grid_venda.Cell[0,i].asSTRING,10);
    close;
  end;
end;

procedure TfrmPre_Venda.Cancelar1Click(Sender: TObject);
var i : integer;
begin
  if grid_venda.RowCount = 0 then exit;

  if grid_venda.SelectedRow < 0 then
  begin
    application.MessageBox('Favor selecionar uma pré-venda!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;

  // verificar se eh uma conciliacao, caso negativo, solicitar senha
  if not bConcilia then
  begin
    frmsenha_supervisor := tfrmsenha_supervisor.create(self);
    frmsenha_supervisor.showmodal;
    frmvenda.Imprime_display_anterior;
    // verisificar se o supervisor foi logado
    if not bSupervisor_autenticado then exit;
    if application.messagebox('Confirma o cancelamento desta pré-venda?','Atenção',mb_yesno+
                                MB_ICONWARNING) = idno then
     begin
       exit;
     end;
   end;

  i := grid_venda.SelectedRow;

      bLanca_pre_venda := true;
      iPre_Venda_cliente := grid_venda.cell[5,i].asinteger;
      iPre_Venda_vendedor := grid_venda.cell[6,i].asinteger;
      iPre_venda_codigo := grid_venda.Cell[0,i].asinteger;
      sPre_Venda_Numero := 'PV'+ZERAR(grid_venda.Cell[0,i].asSTRING,10);

          frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando pré-venda nº '+grid_venda.cell[0,i].asstring+'...';
          frmMsg_Operador.Show;
          frmMsg_Operador.Refresh;

          bLanca_pre_venda := true;
          with frmVenda do
          begin
            if not Abre_Venda then
            begin
              // Caso o comando de abertura de venda retornou false, abortar o processo;
              application.messagebox('Erro ao abrir o cupom fiscal','Erro',mb_ok+MB_ICONERROR);
              exit;
            end;

            iPre_venda_codigo := grid_venda.cell[0,i].AsInteger;

            frmmodulo.query_servidor.Close;
            frmmodulo.query_servidor.SQL.Clear;
            frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
            frmmodulo.query_servidor.sql.add('from c000075 orc,');
            frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+
                            grid_venda.cell[0,i].asstring+'''');
            frmmodulo.query_servidor.SQL.Add('and data = :vdat');
            frmmodulo.query_servidor.params.ParamByName('vdat').AsDateTime := grid_venda.Cell[1,i].AsDateTime;
            frmmodulo.query_servidor.Open;





            // vender os itens
            // rodar a query do modulo filtrada com os produtos da pre-venda
            frmmodulo.query_servidor.first;
            while not frmmodulo.query_servidor.eof do
            begin
              sProd_nome := frmmodulo.query_servidor.fieldbyname('produto').asstring;
              sProd_unidade := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
              sProd_CST := frmmodulo.query_servidor.fieldbyname('cst').asstring;
              rProd_aliquota := frmmodulo.query_servidor.fieldbyname('aliquota').asfloat;
              iProd_codigo := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
              sProd_barra := frmmodulo.query_servidor.fieldbyname('codbarra').asstring;
              rProd_qtde    := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
              rProd_preco   := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
              rProd_total := frmmodulo.query_servidor.fieldbyname('total').asfloat;
              rProd_desconto := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
              rProd_acrescimo := frmmodulo.query_servidor.fieldbyname('acrescimo').asfloat;
              // registrar o item
              Registra_Item;
              frmMsg_Operador.lb_msg.caption := 'Aguarde cancelando pré-venda nº '+grid_venda.cell[0,i].asstring+'...';
              frmMsg_Operador.Show;
              frmMsg_Operador.Refresh;
              Application.ProcessMessages;
              frmmodulo.query_servidor.next;
            end;
            Cancela_cupom_aberto;
          end;
          Application.processmessages;


        bLanca_pre_venda := false;
        if not bConcilia then
          grid_venda.ClearRows;
        frmMsg_Operador.Hide;
        frmMsg_Operador.Refresh;

end;

procedure TfrmPre_Venda.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

procedure TfrmPre_Venda.Conciliar1Click(Sender: TObject);
var i : integer;
x, q : integer;

icli, iprod : integer;
begin
  try
    tm_Atualiza.Enabled := false;
    bConcilia := false;
    if grid_venda.RowCount = 0 then exit;

    x := 0;

    for i := 0 to grid_venda.RowCount - 1 do
    begin
      if grid_venda.cell[9,i].AsBoolean then
      begin
        Inc(x)
      end;
    end;

    if x < 2 then
    begin
     Application.messagebox('Favor selecionar mais de uma pré-venda!','Erro',MB_OK+MB_ICONERROR);
     exit;
    end;

    frmPrevenda_conciliar := tfrmprevenda_conciliar.create(self);
    frmprevenda_conciliar.ed_total.Value := 0;
    frmPrevenda_conciliar.ed_qtde.intvalue := 0;

    frmPrevenda_conciliar.grid_produto.ClearRows;
    frmPrevenda_conciliar.grid_cliente.ClearRows;
    for i := 0 to grid_venda.RowCount - 1 do
    begin
      q := 0; // contar o cliente
      if grid_venda.cell[9,i].AsBoolean then
      begin
        for x := 0 to frmPrevenda_conciliar.grid_cliente.RowCount - 1 do
        begin
          if frmPrevenda_conciliar.grid_cliente.cell[1,x].AsInteger = grid_venda.Cell[5,i].AsInteger then
          begin
            inc(q);
          end;
        end;
        if q = 0 then
        begin
          // nao achou nenhum cliente igual
          // lancar ele no grid
          q := frmPrevenda_conciliar.grid_cliente.AddRow(1);
          if q = 0 then frmPrevenda_conciliar.grid_cliente.Cell[0,q].AsBoolean := true;
          frmPrevenda_conciliar.grid_cliente.cell[1,q].AsInteger := grid_venda.cell[5,i].AsInteger;
          frmPrevenda_conciliar.grid_cliente.cell[2,q].asstring := grid_venda.cell[2,i].asstring;
        end;


        frmmodulo.query_servidor.Close;
        frmmodulo.query_servidor.SQL.Clear;
        frmmodulo.query_servidor.SQL.Add('select orc.*, prod.produto, prod.codbarra, prod.cst, prod.comissao, prod.aliquota');
        frmmodulo.query_servidor.sql.add('from c000075 orc,');
        frmmodulo.query_servidor.sql.add('c000025 prod where orc.codproduto = prod.codigo and numeronota = '''+
                        grid_venda.cell[0,i].asstring+'''');
        frmmodulo.query_servidor.SQL.Add('and data = :vdat');
        frmmodulo.query_servidor.params.ParamByName('vdat').AsDateTime := grid_venda.Cell[1,i].AsDateTime;
        frmmodulo.query_servidor.Open;
        frmmodulo.query_servidor.first;
        while not frmmodulo.query_servidor.Eof do
        begin
           with frmPrevenda_conciliar.grid_produto do
           begin
             q := AddRow(1);
             // selecao
             Cell[0,q].asboolean := true;
             // codigo
             Cell[1,q].asinteger := frmmodulo.query_servidor.fieldbyname('codproduto').asinteger;
             // produto
             Cell[2,q].asstring := frmmodulo.query_servidor.fieldbyname('produto').asstring;
             // qtde
             Cell[3,q].asfloat := frmmodulo.query_servidor.fieldbyname('qtde').asfloat;
             // unitario
             Cell[4,q].asfloat := frmmodulo.query_servidor.fieldbyname('unitario').asfloat;
             // desconto
             Cell[5,q].asfloat := frmmodulo.query_servidor.fieldbyname('desconto').asfloat;
             // total
             Cell[6,q].asfloat := frmmodulo.query_servidor.fieldbyname('total').asfloat;
             // cod_vendedor
             Cell[7,q].asstring := frmmodulo.query_servidor.fieldbyname('codvendedor').asstring;
             // unidade
             cell[8,q].asstring := frmmodulo.query_servidor.fieldbyname('unidade').asstring;
           end;
           frmPrevenda_conciliar.ed_total.value :=
             frmPrevenda_conciliar.ed_total.value +
               frmModulo.query_servidor.fieldbyname('TOTAL').AsFloat;

           frmPrevenda_conciliar.ed_qtde.value :=
             frmPrevenda_conciliar.ed_qtde.value + 1;
          frmmodulo.query_servidor.next;
        end;
      end;
    end;
    frmprevenda_conciliar.showmodal;
  finally

    if bConcilia then
    begin
      tm_AtualizaTimer(frmPre_Venda);
      // fazer o cancelamento das prevendas selecionadas
      for i := 0 to grid_venda.RowCount - 1 do
      begin
        if grid_venda.Cell[9,i].AsBoolean then
        begin
          grid_venda.SelectedRow := i;
          Cancelar1Click(frmpre_venda);
        end;
      end;

      for i := 0 to grid_venda.rowcount - 1 do
      begin
        if grid_venda.cell[0,i].asstring = scod_conciliada then
        begin
          grid_venda.SelectedRow := i;
          break;
        end;
      end;
      Finalizar1Click(frmPre_Venda);
    end;
   // tirar as selecoes
    for i := 0 to grid_venda.rowcount - 1 do
    begin
      grid_venda.Cell[9,i].AsBoolean := false;
    end;
    tm_Atualiza.Enabled := true;
  end;
end;

end.
