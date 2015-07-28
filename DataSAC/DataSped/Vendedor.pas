unit Vendedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, StdCtrls, Mask, RzEdit, AdvGlowButton,
  ExtCtrls, RzLabel, TFlatPanelUnit, TypInfo;

type
  TfrmVendedor = class(TForm)
    pnlVendedor: TFlatPanel;
    RzLabel10: TRzLabel;
    RzLabel9: TRzLabel;
    sh_cosumid_nome: TShape;
    FlatPanel3: TFlatPanel;
    btnConfirmar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    edtVendedor: TRzEdit;
    pop_consumid: TAdvPopupMenu;
    MenuItem2: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure btnConfirmarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure edtVendedorEnter(Sender: TObject);
    procedure edtVendedorKeyPress(Sender: TObject; var Key: Char);
    procedure btnConfirmarEnter(Sender: TObject);
    procedure btnCancelarEnter(Sender: TObject);
    function LocalizarVendedor: Integer;
    procedure LimpaCampos;
    procedure FormDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVendedor: TfrmVendedor;

implementation

uses modulo, funcoes, principal, venda, VendedorConsulta;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.FormCreate(Sender: TObject);
begin
  TOP := 111;
  left := 35;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.FormShow(Sender: TObject);
begin
  edtVendedor.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.MenuItem2Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.btnConfirmarClick(Sender: TObject);
begin
  bContinua := true;
  ModalResult := mrOk;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.btnCancelarClick(Sender: TObject);
begin
  bContinua := false;
  ModalResult := mrCancel;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.edtVendedorEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('Informe o vendedor (Codigo/Nome)',clwhite, tiCliente);

  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men, edtVendedor.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.edtVendedorKeyPress(Sender: TObject;
  var Key: Char);
var
  iRet: Integer;

begin
  if key = #13 then
  begin
    if edtVendedor.text = '' then
    begin
      frmVenda.Imprime_display('Informe o Vendedor!', clRed, tiErro);
      Sleep(1500);
      frmVenda.Imprime_display_anterior;

      edtVendedor.SetFocus;
      Abort;
    end
    else
    begin
      // CGT: Apenas fará a pesquisa caso haja modificação no campo
      if edtVendedor.Modified then
      begin
        // GUIO: 0 - Não achou, e o vendedor irá digitar os dados
        //       1 - Achou e não abrirá a pesquisa, localizou apenas um vendedor
        //       2 - Achou mais de um vendedor

        iRet := LocalizarVendedor;

        if (iRet = 0) then
        begin
          frmVenda.Imprime_display('Vendedor não encontrado!', clRed, tiErro);
          Sleep(1500);
          frmVenda.Imprime_display_anterior;

          edtVendedor.SetFocus;
          Abort;
        end
        else
        if (iRet = 2) then
        begin
          Application.CreateForm(TfrmVendedorConsulta, frmVendedorConsulta);

          try
            frmVendedorConsulta.edtVendedor.Text := AnsiUpperCase(edtVendedor.text);

            if frmVendedorConsulta.ShowModal = mrOK then
            begin
              bContinua := True;
              edtVendedor.Text := frmModulo.Query.FieldByName('CODIGO').AsString;
              LocalizarVendedor;
              btnConfirmar.SetFocus;
            end
            else
            begin
              bContinua := False;
            end;

          finally
            FreeAndNil(frmVendedorConsulta);
          end;
        end
        else
          btnConfirmar.SetFocus;

      end
      else
        btnConfirmar.SetFocus;

    end;
  end
  else
  begin
    if iTeclado_Modelo = 1 then
    begin
      if blimpa_edit_display then
      begin
        CarRet;
        strpcopy(@men,'                       ');
        DispStr(@men);
        CarRet;
        bLimpa_edit_display := false;
      end;
      strpcopy(@men,key);
      DispStr(@men);
    end;
  end;
end;


// -------------------------------------------------------------------------- //
procedure TfrmVendedor.btnConfirmarEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('ENTER para confirmar o vendedor',clwhite,tiCliente);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.btnCancelarEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('ENTER para cancelar o vendedor',clwhite,tiCliente);
end;

// -------------------------------------------------------------------------- //
function TfrmVendedor.LocalizarVendedor: Integer;
begin
  with frmModulo.Query do
  begin
    // buscar pelo nome
    close;
    sql.clear;
    sql.add('select * from VENDEDORES');
    sql.add('where upper(nome) LIKE ' + QuotedStr(ansiuppercase(edtVendedor.text + '%')));
    open;

    if IsEmpty then
    begin
      // Busca pelo código
      try
        StrToInt(edtVendedor.Text);

        close;
        SQL.clear;
        SQL.add('select * from VENDEDORES');
        SQL.add('where codigo = '
          + QuotedStr(FormatFloat('000000', StrToInt(edtVendedor.Text))));
        open;

      except
      end;
    end;

    if not IsEmpty and (RecordCount = 1) then
    begin
      edtVendedor.Text := FieldByName('nome').AsString;
      Result := 1;  // GUIO: Não Precisa Abrir a Pesquisa
    end
    else
    if IsEmpty then
      Result := 0   // GUIO: Não Precisa Abrir a Pesquisa
    else
      Result := 2;   // GUIO: Abrirá a tela de pesquisa

  end;
end;

// -------------------------------------------------------------------------- //
// GUIO: Apaga todo conteúdo de todos os campos
procedure TfrmVendedor.LimpaCampos;
var
  I: Integer;

begin
  for I := 0 to ComponentCount-1 do
  begin
    if GetPropInfo(Components[I], 'Text') <> nil then
      TCustomEdit(Components[I]).Clear;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVendedor.FormDestroy(Sender: TObject);
begin
  frmModulo.Query.Close;
end;

end.
