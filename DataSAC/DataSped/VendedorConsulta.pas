unit VendedorConsulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeImage, jpeg, ExtCtrls, StdCtrls, Mask, RzEdit, RzLabel,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, TFlatPanelUnit, Menus, AdvMenus;

type
  TfrmVendedorConsulta = class(TForm)
    Image1: TImage;
    img_cliente: TAdvOfficeImage;
    lb_cliente: TRzLabel;
    lb_status: TRzLabel;
    edtVendedor: TRzEdit;
    grid: TNextGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel1: TRzLabel;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure edtVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure gridEnter(Sender: TObject);
    procedure edtVendedorEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure MenuFiscal2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedorConsulta: TfrmVendedorConsulta;

implementation

uses modulo, funcoes, Math, principal, menu_fiscal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.FormShow(Sender: TObject);
begin
  edtVendedor.setfocus;


  if edtVendedor.Text <> '' then
    Keybd_Event(VK_RETURN,0,0,0);

end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.edtVendedorKeyPress(Sender: TObject;
  var Key: Char);
var  bBusca_codigo : boolean;
begin
  if key = #13 then
  begin
    grid.ClearRows;
    if edtVendedor.Text <> '' then
    begin
      // buscar pelo nome
      frmmodulo.query.close;
      frmmodulo.query.sql.clear;
      frmmodulo.query.sql.add('select * from VENDEDORES');
      frmmodulo.query.sql.add('where upper(nome) like '''+ansiuppercase(edtVendedor.text)+'%''');
      frmmodulo.query.sql.add('order by nome');
      frmmodulo.query.open;

      if frmmodulo.query.recordcount = 0 then
      begin
          // buscar pelo codigo
        try
          strtoint(edtVendedor.text);
          bBusca_codigo := true;
        except
          on EConvertError do
            Bbusca_codigo := false;
        end;
        if Bbusca_codigo then
        begin
          frmmodulo.query.close;
          frmmodulo.query.sql.clear;
          frmmodulo.query.sql.add('select * from VENDEDORES');
          frmmodulo.query.sql.add('where codigo = '+ FormatFloat('000000', StrToInt(edtVendedor.text)));
          frmmodulo.query.sql.add('order by nome');
          frmmodulo.query.open;
        end;
      end;

      if frmmodulo.query.RecordCount > 0 then
      begin
        if iTeclado_Modelo = 1 then
        begin
          If frmmodulo.query.recordcount = 1 then
          begin
            Imprime_display_teclado(FRMMODULO.QUERY.FIELDBYNAME('NOME').ASSTRING, '');
          end
          else
          begin
            Imprime_display_teclado(INTTOSTR(FRMMODULO.QUERY.RECORDCOUNT)+' VENDEDORES ENCONTRADOS!',
                                    '');
          end;
        end;

        while not frmmodulo.query.eof do
        begin
          grid.AddRow(1);
          grid.Cell[0,grid.LastAddedRow].AsInteger :=
            frmModulo.query.fieldbyname('codigo').asinteger;
          grid.Cell[1,grid.LastAddedRow].AsString := frmmodulo.query.fieldbyname('nome').asstring;
          frmmodulo.query.next;
        end;
        grid.SelectFirstRow;
        grid.SetFocus;
      end
      else
      begin
        if iTeclado_Modelo = 1 then
           Imprime_display_teclado('A T E N C A O !','Nenhum vendedor encontrado!');

        lb_cliente.Font.color := clred;
        lb_cliente.caption := 'Nenhum vendedor encontrado!';
        Application.ProcessMessages;
        Sleep(1500);
        lb_cliente.Font.color := clwhite;
        lb_cliente.Caption := 'Consulta de Vendedor';
        edtVendedor.TEXT := '';
        if iTeclado_Modelo = 1 then
          Imprime_display_teclado('Consulta de Vendedor (Codigo/Nome)','');
      end;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      ModalResult := mrCancel;
    end
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
procedure TfrmVendedorConsulta.gridEnter(Sender: TObject);
begin
  lb_status.caption := 'Escolha o vendedor e pressione [ENTER] para selecionar...'
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.edtVendedorEnter(Sender: TObject);
begin
  lb_status.Caption := 'Informe o Código ou Nome do Vendedor...';
  if iTeclado_modelo = 1 then
  begin
    Imprime_display_teclado('Consulta de Vendedor (Codigo/Nome)','');
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.gridKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if grid.RowCount > 0 then
    begin
      If grid.Cell[0,grid.SelectedRow].AsInteger > 0 then
      begin
        // consultar cliente
        frmmodulo.query.close;
        frmmodulo.query.sql.clear;
        frmmodulo.query.sql.add('select * from VENDEDORES where codigo = '+
                               grid.Cell[0,grid.selectedrow].Asstring);
        frmmodulo.query.open;
        ModalResult := mrOk;
      end;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      edtVendedor.SetFocus;
      edtVendedor.SelectAll;
      Key := #0;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.FormCreate(Sender: TObject);
begin
  left := 0;
  top := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedorConsulta.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

end.
