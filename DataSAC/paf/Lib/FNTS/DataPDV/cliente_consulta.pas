unit cliente_consulta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, AdvOfficeImage, jpeg, ExtCtrls, StdCtrls, Mask, RzEdit, RzLabel,
  NxColumnClasses, NxColumns, NxScrollControl, NxCustomGridControl,
  NxCustomGrid, NxGrid, TFlatPanelUnit, Menus, AdvMenus;

type
  TfrmCliente_consulta = class(TForm)
    Image1: TImage;
    img_cliente: TAdvOfficeImage;
    lb_cliente: TRzLabel;
    lb_status: TRzLabel;
    ed_cliente: TRzEdit;
    grid: TNextGrid;
    NxNumberColumn1: TNxNumberColumn;
    NxTextColumn1: TNxTextColumn;
    NxTextColumn2: TNxTextColumn;
    NxTextColumn3: TNxTextColumn;
    pn_cliente_info: TFlatPanel;
    Label1: TLabel;
    lb_nome: TLabel;
    Label2: TLabel;
    lb_cpf: TLabel;
    Label4: TLabel;
    lb_endereco: TLabel;
    Label6: TLabel;
    lb_bairro: TLabel;
    Label8: TLabel;
    lb_complemento: TLabel;
    Label10: TLabel;
    lb_cidade: TLabel;
    Label12: TLabel;
    lb_cadastro: TLabel;
    Label14: TLabel;
    lb_limite: TLabel;
    Label16: TLabel;
    lb_utilizado: TLabel;
    Label18: TLabel;
    lb_disponivel: TLabel;
    lb_atualizado: TLabel;
    Edit1: TEdit;
    Label3: TLabel;
    LB_MENU_FISCAL: TRzLabel;
    RzLabel1: TRzLabel;
    pop_principal: TAdvPopupMenu;
    MenuFiscal2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ed_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure gridEnter(Sender: TObject);
    procedure ed_clienteEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure MenuFiscal2Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCliente_consulta: TfrmCliente_consulta;

implementation

uses modulo, funcoes, Math, principal, menu_fiscal;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  // action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.FormShow(Sender: TObject);
begin
  {if bConsulta_crediario then
  begin
    grid.SetFocus;
    grid.SelectFirstRow;
  end
  else}
    ed_cliente.setfocus;

  if ed_cliente.Text <> '' then
    Keybd_Event(VK_RETURN,0,0,0);

end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.ed_clienteKeyPress(Sender: TObject;
  var Key: Char);
var  bBusca_codigo : boolean;
begin
  if key = #13 then
  begin
    grid.ClearRows;
    if ed_cliente.Text <> '' then
    begin
      // buscar pelo nome
      frmmodulo.query.close;
      frmmodulo.query.sql.clear;
      frmmodulo.query.sql.add('select * from cliente');
      frmmodulo.query.sql.add('where upper(nome) like '''+ansiuppercase(ed_cliente.text)+'%''');
      frmmodulo.query.sql.add('order by nome');
      frmmodulo.query.open;
      if frmmodulo.query.recordcount = 0 then
      begin
          // buscar pelo codigo
        try
          strtoint(ed_cliente.text);
          bBusca_codigo := true;
        except
          on EConvertError do
            Bbusca_codigo := false;
        end;
        if Bbusca_codigo then
        begin
          frmmodulo.query.close;
          frmmodulo.query.sql.clear;
          frmmodulo.query.sql.add('select * from cliente');
          frmmodulo.query.sql.add('where codigo = '+ed_cliente.text);
          frmmodulo.query.sql.add('order by nome');
          frmmodulo.query.open;
        end;
        if frmmodulo.query.RecordCount = 0 then
        begin
          // buscar pelo nome
          frmmodulo.query.close;
          frmmodulo.query.sql.clear;
          frmmodulo.query.sql.add('select * from cliente');
          frmmodulo.query.sql.add('where cpf = '''+ed_cliente.text+'''');
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
            Imprime_display_teclado(FRMMODULO.QUERY.FIELDBYNAME('NOME').ASSTRING,'CPF: '+
                                    FRMMODULO.QUERY.FIELDBYNAME('CPF').ASSTRING+' END:'+
                                    FRMMODULO.QUERY.FIELDBYNAME('ENDERECO').ASSTRING);
          end
          else
          begin
            Imprime_display_teclado(INTTOSTR(FRMMODULO.QUERY.RECORDCOUNT)+' CLIENTES ENCONTRADOS!',
                                    '');
          end;
        end;


        while not frmmodulo.query.eof do
        begin
          grid.AddRow(1);
          grid.Cell[0,grid.LastAddedRow].AsInteger :=
            frmModulo.query.fieldbyname('codigo').asinteger;
          grid.Cell[1,grid.LastAddedRow].AsString := frmmodulo.query.fieldbyname('nome').asstring;
          grid.Cell[2,grid.LastAddedRow].AsString := frmModulo.query.fieldbyname('cpf').asstring;
          grid.Cell[3,grid.LastAddedRow].asstring :=
            frmModulo.query.fieldbyname('endereco').asstring;
          frmmodulo.query.next;
        end;
        grid.SelectFirstRow;
        grid.SetFocus;
      end
      else
      begin
        if iTeclado_Modelo = 1 then
           Imprime_display_teclado('A T E N C A O !','Nenhum cliente encontrado!');
        lb_cliente.Font.color := clred;
        lb_cliente.caption := 'Nenhum cliente encontrado!';
        Application.ProcessMessages;
        Sleep(1500);
        lb_cliente.Font.color := clwhite;
        lb_cliente.Caption := 'Consulta de Cliente';
        ED_CLIENTE.TEXT := '';
        if iTeclado_Modelo = 1 then
          Imprime_display_teclado('Consulta de Cliente (Nome/Codigo/CPF)','');
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
procedure TfrmCliente_consulta.gridEnter(Sender: TObject);
begin
  lb_status.caption := 'Escolha o cliente e pressione [ENTER] para selecionar...'
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.ed_clienteEnter(Sender: TObject);
begin
  lb_status.Caption := 'Informe o Código, CPF ou Nome do Cliente...';
  if iTeclado_modelo = 1 then
  begin
    Imprime_display_teclado('Consulta de Cliente (Nome/Codigo/CPF)','');
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.gridKeyPress(Sender: TObject;
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
        frmmodulo.query.sql.add('select * from cliente where codigo = '+
                               grid.Cell[0,grid.selectedrow].Asstring);
        frmmodulo.query.open;
        // aqui

        
        // CGT: Se não precisar mostrar os dados do crediário, fecha imediatamente
        if bConsulta_crediario then
        begin
          ModalResult := mrOk;
        end
        else
        begin
          lb_cliente.caption := frmmodulo.query.fieldbyname('nome').asstring;
          lb_nome.caption := frmmodulo.query.fieldbyname('nome').asstring;
          lb_cpf.Caption     := frmmodulo.query.fieldbyname('cpf').asstring;
          lb_endereco.caption:= frmmodulo.query.fieldbyname('endereco').asstring;
          lb_bairro.Caption  := frmmodulo.query.fieldbyname('bairro').asstring;
          lb_complemento.Caption     := frmmodulo.query.fieldbyname('complemento').asstring;
          lb_cidade.Caption     := frmmodulo.query.fieldbyname('cidade').asstring+'/'+
                                   frmmodulo.query.fieldbyname('uf').asstring;
          lb_cadastro.caption     := frmmodulo.query.fieldbyname('SITUACAO').asstring;
          lb_limite.caption     := formatfloat('###,###,##0.00',
                                    frmmodulo.query.fieldbyname('limite').asfloat);

          lb_utilizado.caption     := formatfloat('###,###,##0.00',
                                    frmmodulo.query.fieldbyname('utilizado').asfloat);

          lb_disponivel.caption     := formatfloat('###,###,##0.00',
                                    frmmodulo.query.fieldbyname('disponivel').asfloat);

          if frmmodulo.query.FieldByName('disponivel').asfloat <= 0 then
            lb_disponivel.Font.color := clred else
            lb_disponivel.font.color := clgreen;

          if lb_cadastro.Caption = '1' then lb_cadastro.Font.color := clblue;
          if lb_cadastro.Caption = '2' then lb_cadastro.Font.color := clblack;
          if lb_cadastro.Caption = '3' then lb_cadastro.Font.color := clred;

          lb_atualizado.Caption := frmmodulo.query.fieldbyname('atualizado').asstring;

          pn_cliente_info.Visible := true;
          lb_status.Caption := '[ENTER] Selecionar [ESC] Retornar a Pesquisa';

          if iTeclado_Modelo = 1 then Imprime_display_teclado('[ENTER] Selecionar','[ESC] Retornar a Pesquisa');
            Edit1.setfocus;
        end;
      end;
    end;
  end
  else
  begin
    if key = #27 then
    begin
      ed_cliente.SetFocus;
      ed_cliente.SelectAll;
      Key := #0;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.FormCreate(Sender: TObject);
begin
  pn_cliente_info.Top := 155;
  pn_cliente_info.Left:=  33;

  left := 0;
  top := 0;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.Edit1Exit(Sender: TObject);
begin
  pn_cliente_info.Visible := FALSE;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.Edit1KeyPress(Sender: TObject;
  var Key: Char);
begin
// GUIO: Removido por mim, o logaritimo abaixo pode ser apagado
//  if key = #27 then
//    ModalResult := mrCancel;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.MenuFiscal2Click(Sender: TObject);
begin
  frmMenu_fiscal := tfrmMenu_fiscal.create(self);
  frmMenu_fiscal.showmodal;
end;

// -------------------------------------------------------------------------- //
procedure TfrmCliente_consulta.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
  begin
    if pn_Cliente_Info.Visible then
      ModalResult := mrOK;
  end
  else
  if Key = VK_ESCAPE then
  begin
    if pn_Cliente_Info.Visible then
    begin
      pn_Cliente_Info.Visible := False;
      grid.SetFocus;
      Key := 0;
    end;
  end;
end;

end.
