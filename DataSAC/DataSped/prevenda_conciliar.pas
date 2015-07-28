unit prevenda_conciliar;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, NxColumnClasses, NxColumns, NxScrollControl,
  NxCustomGridControl, NxCustomGrid, NxGrid, ExtCtrls, StdCtrls, Mask,
  RzEdit;

type
  TfrmPrevenda_conciliar = class(TForm)
    Panel1: TPanel;
    grid_cliente: TNextGrid;
    NxCheckBoxColumn1: TNxCheckBoxColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    Panel2: TPanel;
    grid_produto: TNextGrid;
    NxCheckBoxColumn2: TNxCheckBoxColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    Panel3: TPanel;
    Bevel1: TBevel;
    Panel4: TPanel;
    bt_ok: TButton;
    bt_cancelar: TButton;
    ed_total: TRzNumericEdit;
    Label1: TLabel;
    ed_qtde: TRzNumericEdit;
    Label2: TLabel;
    Label3: TLabel;
    NxNumberColumn7: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_okClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure grid_produtoAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
    procedure grid_clienteAfterEdit(Sender: TObject; ACol, ARow: Integer;
      Value: WideString);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrevenda_conciliar: TfrmPrevenda_conciliar;

implementation

uses pre_venda, modulo, funcoes, principal, IBC;

{$R *.dfm}

procedure TfrmPrevenda_conciliar.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmPrevenda_conciliar.bt_okClick(Sender: TObject);
var i : integer;
scod_cliente : string;
begin
  if ed_total.value <= 0 then
  begin
    Application.messagebox('Total está ZERADO!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  scod_cliente := '';
  for i := 0 to grid_cliente.RowCount - 1 do
  begin
    if grid_cliente.Cell[0,i].AsBoolean then
    begin
      scod_cliente := zerar(grid_cliente.Cell[1,i].asstring,6);
      break;
    end;
  end;
  if scod_cliente = '' then
  begin
    Application.messagebox('Favor selecionar um cliente!','Erro',mb_ok+mb_iconerror);
    exit;
  end;


  with frmmodulo.query_servidor do
  begin
    close;
    sql.clear;
    sql.add('insert into c000074 ');
    sql.add('(codigo , data , codcliente ,');
    sql.add('codvendedor , codcaixa ,');
    sql.add('total , subtotal ,');
    sql.add('meio_crediario , desconto ,');
    sql.add('acrescimo , retirado , obs ,');
    sql.add('cupom_fiscal ,');
    sql.add('tipo , situacao )');
    sql.add('values');
    sql.add('(:codigo , :data , :codcliente ,');
    sql.add(':codvendedor , :codcaixa ,');
    sql.add(':total , :subtotal ,');
    sql.add(':meio_crediario , :desconto ,');
    sql.add(':acrescimo , :retirado , :obs ,');
    sql.add(':cupom_fiscal ,');
    sql.add(':tipo , :situacao )');


    scod_conciliada := frmprincipal.codifica('000048',6);

    parambyname('codigo').asstring         := scod_conciliada;
    parambyname('data').asdatetime         := dData_Sistema;
    parambyname('codcliente').asstring     := scod_cliente;
    parambyname('codvendedor').asstring    := grid_produto.cell[7,0].asstring;
    parambyname('codcaixa').asstring       := '000099';
    parambyname('TOTAL').asfloat           := ed_total.value;
    parambyname('SUBTOTAL').asfloat        := ed_total.value;
    parambyname('meio_crediario').asfloat  := ed_total.value;
    parambyname('desconto').asfloat        := 0;
    parambyname('acrescimo').asfloat       := 0;
    parambyname('RETIRADO').asstring       := '';
    parambyname('OBS').asstring            := '';
    parambyname('cupom_fiscal').asinteger := 0;
    parambyname('tipo').asinteger := 0;
    parambyname('situacao').asinteger := 1;
    execsql;

    // produtos
    for i := 0 to grid_produto.RowCount - 1 do
    begin
      if grid_produto.Cell[0,i].asboolean then
      begin
        close;
        sql.clear;
        sql.add('insert into c000075');
        sql.add('(codigo, codnota, numeronota, codproduto, qtde, unitario, total,');
        sql.add('desconto, acrescimo, unidade, codcliente, codvendedor,');
        sql.add('movimento, data)');
        sql.add('values');
        sql.add('(:codigo, :codnota, :numeronota, :codproduto, :qtde, :unitario, :total,');
        sql.add(':desconto, :acrescimo, :unidade, :codcliente, :codvendedor,');
        sql.add(':movimento, :data)');



        parambyname('codigo').AsString := frmprincipal.codifica('000032',6);
        parambyname('codnota').AsString := scod_conciliada;
        parambyname('numeronota').AsString := scod_conciliada;
        parambyname('codproduto').asstring := zerar(grid_produto.cell[1,i].asstring,6);
        parambyname('qtde').asfloat := grid_produto.cell[3,i].asfloat;
        parambyname('unitario').asfloat := grid_produto.cell[4,i].asfloat;
        parambyname('total').asfloat := grid_produto.cell[6,i].asfloat;
        parambyname('desconto').asfloat := grid_produto.cell[5,i].asfloat;;
        parambyname('acrescimo').asfloat := 0;
        parambyname('unidade').asstring := grid_produto.cell[8,i].asstring;
        parambyname('codcliente').AsString := scod_cliente;
        parambyname('codvendedor').AsString := zerar(grid_produto.cell[7,i].asstring,6);
        parambyname('MOVIMENTO').AsINTEGER := 2;// VENDA
        parambyname('data').asdatetime := dData_Sistema;
        ExecSQL;
      end;
    end;
  end;
  bConcilia := true;
  close;
end;

procedure TfrmPrevenda_conciliar.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmPrevenda_conciliar.grid_produtoAfterEdit(Sender: TObject;
  ACol, ARow: Integer; Value: WideString);
  var i : integer;
begin
  if acol = 3 then
  begin
    grid_produto.cell[6,arow].asfloat :=
      grid_produto.cell[3,arow].asfloat *
      grid_produto.cell[4,arow].asfloat -
      grid_produto.cell[5,arow].asfloat;
  end;
  ed_total.value := 0;
  ed_qtde.value := 0;
  for i := 0 to grid_produto.RowCount - 1 do
  begin
    if grid_produto.cell[0,i].asboolean then
    begin
      ed_total.value := ed_total.value + grid_produto.cell[6,i].asfloat;
      ed_qtde.value := ed_qtde.value + 1;
    end;
  end;
end;

procedure TfrmPrevenda_conciliar.grid_clienteAfterEdit(Sender: TObject;
  ACol, ARow: Integer; Value: WideString);
  var i : integer;
begin
  if acol = 0 then
  begin
    if grid_cliente.Cell[acol,arow].asboolean then
    begin
      for i := 0 to grid_cliente.RowCount - 1 do
      begin
        if i <> arow then
          grid_cliente.cell[0,i].asboolean := false;
      end;
    end;
  end;
end;

end.
