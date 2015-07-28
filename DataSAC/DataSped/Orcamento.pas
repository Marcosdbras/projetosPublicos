unit Orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, NxColumnClasses, NxColumns,
  NxScrollControl, NxCustomGridControl, NxCustomGrid, NxGrid, Mask,
  ToolEdit, ComCtrls, RzEdit, RzSpnEdt, Menus, AdvMenus;

type
  TfrmOrcamento = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    bt_gravar: TBitBtn;
    bt_cancelar: TBitBtn;
    Panel2: TPanel;
    Bevel2: TBevel;
    Panel3: TPanel;
    Label9: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Edit2: TEdit;
    Label5: TLabel;
    Edit3: TEdit;
    Button2: TButton;
    Edit4: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label7: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    grid_item: TNextGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxNumberColumn2: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxNumberColumn3: TNxNumberColumn;
    NxNumberColumn4: TNxNumberColumn;
    NxNumberColumn5: TNxNumberColumn;
    NxNumberColumn6: TNxNumberColumn;
    Bevel5: TBevel;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    ed_subtotal: TRzNumericEdit;
    ed_desconto: TRzNumericEdit;
    ed_total: TRzNumericEdit;
    ed_desconto_p: TRzNumericEdit;
    Panel4: TPanel;
    pg_rodape: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    Panel5: TPanel;
    bt_incluir: TBitBtn;
    bt_excluir: TBitBtn;
    Bevel6: TBevel;
    Label12: TLabel;
    ed_obs1: TEdit;
    ed_obs2: TEdit;
    ed_obs3: TEdit;
    Label13: TLabel;
    RzSpinEdit1: TRzSpinEdit;
    grid_prestacao: TNextGrid;
    NxNumberColumn7: TNxNumberColumn;
    NxDateColumn1: TNxDateColumn;
    NxNumberColumn8: TNxNumberColumn;
    StatusBar1: TStatusBar;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    procedure BitBtn6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bt_incluirClick(Sender: TObject);
    procedure bt_excluirClick(Sender: TObject);
    procedure bt_cancelarClick(Sender: TObject);
    procedure bt_gravarClick(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento: TfrmOrcamento;

implementation

uses Orcamento_Item, menu_fiscal;

{$R *.dfm}

procedure TfrmOrcamento.BitBtn6Click(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmOrcamento.bt_incluirClick(Sender: TObject);
begin
  frmOrcamento_Item := tfrmOrcamento_item.create(self);
  frmOrcamento_Item.showmodal;
end;

procedure TfrmOrcamento.bt_excluirClick(Sender: TObject);
var i : integer;
begin
  // verificar se existem itens lancados
  if grid_item.RowCount = 0 then
  begin
    Application.messagebox('Não existem itens lançados!','Atenção',MB_OK+MB_ICONWARNING);
    exit;
  end;
  // verificar se existe algum item selecionado
  if grid_item.SelectedRow < 0 then
  begin
    Application.MessageBox('Favor selecionar um item!','Atenção',mb_ok+MB_ICONWARNING);
  end;
  if application.messagebox('Confirma a exclusão do Item? ',
                                       'Atenção',MB_YESNO+MB_ICONWARNING) = idYes then
  begin
    // deletar a linha do grid
    grid_item.DeleteRow(grid_item.SelectedRow);

    // atualizar os totalizadores
    ed_subtotal.Value := 0;
    for i := 0 to grid_item.rowcount - 1 do
    begin
      ed_subtotal.value := ed_subtotal.value + grid_item.cell[6,i].asfloat;
      grid_item.cell[0,i].AsInteger := i+1;
    end;
  end;
end;

procedure TfrmOrcamento.bt_cancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.bt_gravarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
