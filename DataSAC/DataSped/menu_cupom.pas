unit menu_cupom;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, NxColumnClasses,
  NxColumns, NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid,
  DB, MemDS, DBAccess, IBC, Menus, AdvMenus, ComCtrls;

type
  TfrmCupom_Menu = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Label1: TLabel;
    ed_data: TDateEdit;
    Label2: TLabel;
    ed_ecf: TEdit;
    Panel2: TPanel;
    Bevel2: TBevel;
    grid_cupom: TNextGrid;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn3: TNxTextColumn;
    NxTextColumn4: TNxTextColumn;
    NxNumberColumn2: TNxNumberColumn;
    BitBtn1: TBitBtn;
    bt_fechar: TBitBtn;
    query: TIBCQuery;
    pop_fechamento: TAdvPopupMenu;
    Cancelar1: TMenuItem;
    qrcupom: TIBCQuery;
    StatusBar1: TStatusBar;
    MenuFiscal1: TMenuItem;
    Visualizar1: TMenuItem;
    procedure bt_fecharClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure grid_cupomCellFormating(Sender: TObject; ACol, ARow: Integer;
      var TextColor: TColor; var FontStyle: TFontStyles;
      CellState: TCellState);
    procedure MenuFiscal1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCupom_Menu: TfrmCupom_Menu;

implementation

uses funcoes, modulo, principal, cupom_impressao, menu_fiscal;

{$R *.dfm}

procedure TfrmCupom_Menu.bt_fecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCupom_Menu.BitBtn1Click(Sender: TObject);
var i : integer;
begin
  if grid_cupom.RowCount = 0 then exit;
  if grid_cupom.SelectedRow < 0 then
  begin
    application.messagebox('Favor selecionar um cupom!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  frmcupom_impressao := Tfrmcupom_impressao.create(self);
  with frmcupom_impressao do
  begin
    grid_impressao.ClearRows;
    // fazendo o cabecario
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      texto_justifica('R E I M P R E S S A O    D E    C U P O M',48,' ',taCentralizado);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      texto_justifica('No: '+grid_cupom.Cell[0,grid_cupom.SelectedRow].asstring+
                      ' Data:'+ed_data.text+
                      ' Hora:'+grid_cupom.cell[1,grid_cupom.selectedrow].asstring,48,
                      ' ',taCentralizado);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      'Item Codigo        Descricao';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                    Qtde Un.  Vl.Unit    Vl.Item';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';

    // filtrando os itens
    query.close;
    query.sql.clear;
    query.sql.add('select cupom_item.*, estoque.nome nome_produto from cupom_item, estoque');
    query.sql.add('where cod_cupom = '''+grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+'''');
    query.sql.add('and cupom_item.cod_produto = estoque.codigo and cupom_item.cancelado = 0');
    query.sql.add('order by cupom_item.item');
    query.open;
    query.first;
    while not query.eof do
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :=
        texto_justifica(query.fieldbyname('item').asstring,3,'0',taDireita)+' '+
        texto_justifica(query.fieldbyname('cod_produto').asstring,13,'0',taDireita)+' '+
        texto_justifica(query.fieldbyname('nome_produto').asstring,30,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :='              '+
        texto_justifica(formatfloat('###,###,##0.000',query.fieldbyname('qtde').asfloat),10,' ',taDireita)+
        texto_justifica(query.fieldbyname('unidade').asstring,2,' ',taEsquerda)+' '+
        texto_justifica(formatfloat('###,###,##0.000',query.fieldbyname('valor_unitario').asfloat),10,' ',taDireita)+
        texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor_total').asfloat),11,' ',taDireita);

      if query.fieldbyname('valor_desconto').asfloat > 0 then
      begin
         grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :='              '+
           'Desconto:  -'+texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor_desconto').asfloat),8,' ',taDireita);
      end;
      if query.fieldbyname('valor_acrescimo').asfloat > 0 then
      begin
         grid_impressao.AddRow(1);
         grid_impressao.Cell[0,grid_impressao.LastAddedRow].asstring :='              '+
           'Acréscimo: +'+texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor_acrescimo').asfloat),8,' ',taDireita);
      end;
      query.next;
    end;

    // filtrar o cupom fiscal

    qrcupom.Close;
    qrcupom.sql.clear;
    qrcupom.sql.add('select cupom.*,');
    qrcupom.sql.add('       cupom_consumidor.*');
    qrcupom.sql.add('from cupom, cupom_consumidor');
    qrcupom.sql.add('where');
    qrcupom.sql.add('  cupom.codigo = cupom_consumidor.codigo');
    qrcupom.sql.add('  and cupom.data = :data');
    qrcupom.sql.add('  and cupom.ecf = '''+sECF_Serial+'''');
    qrcupom.sql.add('  and cupom.codigo = '''+grid_cupom.Cell[4,grid_cupom.selectedrow].asstring+'''');
    qrcupom.sql.add('order by cupom.numero');
    qrcupom.parambyname('data').asdatetime := dData_Sistema;
    qrcupom.open;


    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                   Subtotal do Cupom:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_produto').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                            Desconto:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_desconto').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                           Acrescimo:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_acrescimo').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '                      Total do Cupom:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_total').asfloat),11,' ',taDireita);
    grid_impressao.AddRow(1);
    grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
      '------------------------------------------------';
    // filtrar os pagamentos

    query.close;
    query.sql.clear;
    query.sql.add('select * from cupom_forma where cod_cupom = '''+grid_cupom.cell[4,grid_cupom.selectedrow].asstring+'''');
    query.open;
    query.first;
    while not query.eof do
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica(query.fieldbyname('forma').asstring,36,' ',taDireita)+':'+texto_justifica(formatfloat('###,###,##0.00',query.fieldbyname('valor').asfloat),11,' ',taDireita);
      query.Next;
    end;
    if qrcupom.fieldbyname('valor_troco').asfloat > 0 then
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        '                               Troco:'+texto_justifica(formatfloat('###,###,##0.00',qrcupom.fieldbyname('valor_troco').asfloat),11,' ',taDireita);
    end;
    if qrcupom.FieldByName('nome').asstring <> '' then
    begin
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Nome....:'+qrcupom.fieldbyname('nome').asstring,48,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Endereco:'+qrcupom.fieldbyname('endereco').asstring,48,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Cidad/UF:'+qrcupom.fieldbyname('cidade').asstring+'/'+qrcupom.fieldbyname('uf').asstring,48,' ',taEsquerda);
      grid_impressao.AddRow(1);
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('CPF.....:'+qrcupom.fieldbyname('cpf').asstring,48,' ',taEsquerda);

      if qrcupom.fieldbyname('placa').asstring <> '' then
      grid_impressao.Cell[0,grid_impressao.LastAddedRow].AsString :=
        texto_justifica('Placa...:'+qrcupom.fieldbyname('PLACA').asstring
      +'  Km: '+qrcupom.fieldbyname('km').asstring+' Vd: '+
      qrcupom.fieldbyname('vendedor').asstring,48,' ',taEsquerda);

    end;
  end;
  hide;
  frmcupom_impressao.ShowModal;
  show;
end;

procedure TfrmCupom_Menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCupom_Menu.FormShow(Sender: TObject);
begin
  ed_data.Date := dData_Sistema;
  ed_ecf.Text := sECF_Serial;


  qrcupom.Close;
  qrcupom.sql.clear;
  qrcupom.sql.add('select cupom.*,');
  qrcupom.sql.add('       cupom_consumidor.nome Consumidor');
  qrcupom.sql.add('from cupom, cupom_consumidor');
  qrcupom.sql.add('where');
  qrcupom.sql.add('  cupom.codigo = cupom_consumidor.codigo');
  qrcupom.sql.add('  and cupom.data = :data');
  qrcupom.sql.add('  and cupom.ecf = '''+sECF_Serial+'''');
  qrcupom.sql.add('order by cupom.numero');
  qrcupom.parambyname('data').asdatetime := dData_Sistema;
  qrcupom.open;

  grid_cupom.ClearRows;

  qrcupom.first;
  while not qrcupom.eof do
  begin
    grid_cupom.AddRow(1);
    grid_cupom.Cell[0,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('numero').asstring;
    grid_cupom.Cell[1,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('hora').asstring;
    grid_cupom.Cell[2,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('consumidor').asstring;
    grid_cupom.Cell[3,grid_cupom.LastAddedRow].Asfloat := qrcupom.fieldbyname('valor_total').asfloat;
    grid_cupom.Cell[4,grid_cupom.LastAddedRow].AsString := qrcupom.fieldbyname('codigo').asstring;
    grid_cupom.Cell[5,grid_cupom.LastAddedRow].Asinteger:= qrcupom.fieldbyname('cancelado').asinteger;
    qrcupom.Next;
  end;
  grid_cupom.SelectedRow := grid_cupom.LastAddedRow;
  grid_cupom.SetFocus;
end;

procedure TfrmCupom_Menu.grid_cupomCellFormating(Sender: TObject; ACol,
  ARow: Integer; var TextColor: TColor; var FontStyle: TFontStyles;
  CellState: TCellState);
begin
  if grid_cupom.Cell[5,arow].AsInteger = 1 then TextColor := clred;
end;

procedure TfrmCupom_Menu.MenuFiscal1Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
