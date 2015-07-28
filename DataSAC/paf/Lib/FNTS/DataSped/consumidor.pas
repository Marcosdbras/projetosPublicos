unit consumidor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, StdCtrls, Mask, RzEdit, AdvGlowButton,
  ExtCtrls, RzLabel, TFlatPanelUnit, TypInfo;

type
  TfrmConsumidor = class(TForm)
    pn_consumidor: TFlatPanel;
    RzLabel10: TRzLabel;
    RzLabel9: TRzLabel;
    sh_cosumid_nome: TShape;
    RzLabel11: TRzLabel;
    sh_consumid_endereco: TShape;
    RzLabel12: TRzLabel;
    sh_consumid_cidade: TShape;
    RzLabel13: TRzLabel;
    sh_consumid_uf: TShape;
    RzLabel14: TRzLabel;
    sh_consumid_cep: TShape;
    RzLabel15: TRzLabel;
    sh_consumid_cpf: TShape;
    FlatPanel3: TFlatPanel;
    bt_gravar_consumid: TAdvGlowButton;
    bt_cancelar_consumid: TAdvGlowButton;
    ed_consumid_nome: TRzEdit;
    ed_consumid_endereco: TRzEdit;
    ed_consumid_cidade: TRzEdit;
    ed_consumid_uf: TRzEdit;
    ed_consumid_cep: TRzEdit;
    ed_consumid_cpf: TRzEdit;
    pn_veiculo: TFlatPanel;
    RzLabel21: TRzLabel;
    sh_consumid_km: TShape;
    RzLabel22: TRzLabel;
    sh_consumid_placa: TShape;
    RzLabel16: TRzLabel;
    sh_consumid_vendedor: TShape;
    RzLabel17: TRzLabel;
    ed_consumid_km: TRzEdit;
    ed_consumid_placa: TRzEdit;
    ed_consumid_vendedor: TRzEdit;
    pop_consumid: TAdvPopupMenu;
    MenuItem2: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ed_consumid_cpfKeyPress(Sender: TObject; var Key: Char);
    procedure ed_consumid_vendedorKeyPress(Sender: TObject; var Key: Char);
    procedure MenuItem2Click(Sender: TObject);
    procedure bt_gravar_consumidClick(Sender: TObject);
    procedure bt_cancelar_consumidClick(Sender: TObject);
    procedure ed_consumid_nomeEnter(Sender: TObject);
    procedure ed_consumid_nomeExit(Sender: TObject);
    procedure ed_consumid_enderecoEnter(Sender: TObject);
    procedure ed_consumid_enderecoExit(Sender: TObject);
    procedure ed_consumid_cidadeEnter(Sender: TObject);
    procedure ed_consumid_cidadeExit(Sender: TObject);
    procedure ed_consumid_ufEnter(Sender: TObject);
    procedure ed_consumid_ufExit(Sender: TObject);
    procedure ed_consumid_cepEnter(Sender: TObject);
    procedure ed_consumid_cpfEnter(Sender: TObject);
    procedure ed_consumid_cpfExit(Sender: TObject);
    procedure ed_consumid_kmEnter(Sender: TObject);
    procedure ed_consumid_kmExit(Sender: TObject);
    procedure ed_consumid_placaExit(Sender: TObject);
    procedure ed_consumid_placaEnter(Sender: TObject);
    procedure ed_consumid_vendedorEnter(Sender: TObject);
    procedure ed_consumid_vendedorExit(Sender: TObject);
    procedure ed_consumid_cepExit(Sender: TObject);
    procedure ed_consumid_nomeKeyPress(Sender: TObject; var Key: Char);
    procedure ed_consumid_enderecoKeyPress(Sender: TObject; var Key: Char);
    procedure bt_gravar_consumidEnter(Sender: TObject);
    procedure bt_cancelar_consumidEnter(Sender: TObject);
    function LocalizarCliente: Integer;
    procedure LimpaCampos;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmConsumidor: TfrmConsumidor;

implementation

uses modulo, funcoes, principal, venda, cliente_consulta;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.FormCreate(Sender: TObject);
begin
  TOP := 111;
  left := 35;

  if not bCadastra_Placa then
    pn_veiculo.Visible := false;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.FormShow(Sender: TObject);
begin
  ed_consumid_nome.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cpfKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if pn_veiculo.Visible then
      ed_consumid_km.SetFocus else
    bt_gravar_consumid.SetFocus
  ELSE
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

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_vendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    bt_gravar_consumid.setfocus
  else
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

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.MenuItem2Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.bt_gravar_consumidClick(Sender: TObject);
begin
  sCli_Nome     := ed_consumid_nome.text;
  sCli_Endereco := ed_consumid_endereco.text;
  sCli_Cidade   := ed_consumid_cidade.text;
  sCli_uf       := ed_consumid_uf.text;
  scli_cep      := ed_consumid_cep.text;
  sCli_CPF      := ed_consumid_cpf.text;
  sCli_Placa    := ed_consumid_placa.text;
  sCli_Km       := ed_consumid_km.text;
  sCli_vendedor := ed_consumid_vendedor.text;
  sCli_codigo   := '';
  bContinua     := true;
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.bt_cancelar_consumidClick(Sender: TObject);
begin
  sCli_codigo   := '';
  bContinua     := false;
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_nomeEnter(Sender: TObject);
begin
  sh_cosumid_nome.Brush.Color := $00DD6F00;

  frmvenda.Imprime_display('Informe o nome do cliente',clwhite,tiCliente);

  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_nome.TEXT);
     DispStr(@men);
  end;


end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_nomeExit(Sender: TObject);
begin
  sh_cosumid_nome.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_enderecoEnter(Sender: TObject);
begin
  sh_consumid_endereco.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe o endereço do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_ENDERECO.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_enderecoExit(Sender: TObject);
begin
  sh_consumid_endereco.Brush.Color := clblack;

end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cidadeEnter(Sender: TObject);
begin
  sh_consumid_cidade.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe a cidade do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_CIDADE.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cidadeExit(Sender: TObject);
begin
  sh_consumid_cidade.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_ufEnter(Sender: TObject);
begin
  sh_consumid_uf.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe o estado do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_UF.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_ufExit(Sender: TObject);
begin
  sh_consumid_uf.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cepEnter(Sender: TObject);
begin
  sh_consumid_cep.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe o cep do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_CEP.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cpfEnter(Sender: TObject);
begin
  sh_consumid_cpf.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe o CPF/CNPJ do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_CPF.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cpfExit(Sender: TObject);
begin
  sh_consumid_cpf.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_kmEnter(Sender: TObject);
begin
  sh_consumid_km.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe o Km do veículo do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_KM.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_kmExit(Sender: TObject);
begin
  sh_consumid_km.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_placaExit(Sender: TObject);
begin
  sh_consumid_placa.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_placaEnter(Sender: TObject);
begin
  sh_consumid_placa.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe a placa do veículo do cliente',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_PLACA.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_vendedorEnter(Sender: TObject);
begin
  sh_consumid_vendedor.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe o vendedor deste cupom',clwhite,tiCliente);
  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_consumid_VENDEDOR.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_vendedorExit(Sender: TObject);
begin
  sh_consumid_vendedor.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_cepExit(Sender: TObject);
begin
    sh_consumid_cep.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.ed_consumid_nomeKeyPress(Sender: TObject;
  var Key: Char);
var
  iRet: Integer;

begin
  if key = #13 then
  begin
    if ed_consumid_nome.text = '' then
      bt_gravar_consumid.SetFocus
    else
    begin
      // CGT: Apenas fará a pesquisa caso haja modificação no campo
      if ed_consumid_nome.Modified then
      begin
        // GUIO: 0 - Não achou, e o cliente irá digitar os dados
        //       1 - Achou e não abrirá a pesquisa, localizou apenas um cliente
        //       2 - Achou mais de um cliente

        iRet := LocalizarCliente;

        if (iRet = 0) or (iRet = 2) then
        begin
          Application.CreateForm(TfrmCliente_consulta, frmCliente_consulta);

          try
            frmCliente_consulta.ed_cliente.Text := AnsiUpperCase(ed_consumid_nome.text);

            if frmCliente_consulta.ShowModal = mrOK then
            begin
              bConsulta_crediario := True;
              ed_consumid_nome.Text := frmModulo.Query.FieldByName('CODIGO').AsString;
              LocalizarCliente;
            end
            else
            begin
              // LimpaCampos;
            end;

          finally
            FreeAndNil(frmCliente_Consulta);
          end;
        end;

        ed_consumid_nome.Modified := False;

      end
      else
        Perform(wm_nextdlgctl,0,0);

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
procedure TfrmConsumidor.ed_consumid_enderecoKeyPress(Sender: TObject;
  var Key: Char);
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

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.bt_gravar_consumidEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('ENTER para confirmar o consumidor',clwhite,tiCliente);
end;

// -------------------------------------------------------------------------- //
procedure TfrmConsumidor.bt_cancelar_consumidEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('ENTER para cancelar o consumidor',clwhite,tiCliente);
end;

// -------------------------------------------------------------------------- //
function TfrmConsumidor.LocalizarCliente: Integer;
begin
  with frmModulo.Query do
  begin
    // buscar pelo nome
    close;
    sql.clear;
    sql.add('select * from cliente');
    sql.add('where upper(nome) LIKE ' + QuotedStr(ansiuppercase(ed_consumid_nome.text + '%')));
    open;

    if IsEmpty then
    begin
      // Busca pelo código
      try
        StrToInt(ed_consumid_nome.Text);

        close;
        SQL.clear;
        SQL.add('select * from cliente');
        SQL.add('where codigo = ' + QuotedStr(ed_consumid_nome.Text));
        open;

      except
      end;

      if IsEmpty then
      begin
        // buscar pelo nome
        close;
        sql.clear;
        SQL.add('select * from cliente');
        SQL.add('where cpf LIKE ' + QuotedStr(ed_consumid_nome.Text + '%'));
        open;
      end;
    end;

    if not IsEmpty and (RecordCount = 1) then
    begin
      ed_consumid_nome.Text := FieldByName('nome').AsString;
      ed_consumid_cpf.Text := FieldByName('cpf').AsString;
      ed_consumid_endereco.Text := frmmodulo.query.FieldByName('endereco').AsString;

      if trim(FieldByName('bairro').AsString) <> '' then
      begin
        ed_consumid_endereco.Text := ed_consumid_endereco.Text
           + ' - ' + FieldByName('bairro').AsString;
      end;

      ed_consumid_cidade.Text := FieldByName('cidade').AsString;
      ed_consumid_uf.Text := FieldByName('uf').AsString;
      ed_consumid_cep.Text := FieldByName('cep').AsString;

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
procedure TfrmConsumidor.LimpaCampos;
var
  I: Integer;

begin
  for I := 0 to ComponentCount-1 do
  begin
    if GetPropInfo(Components[I], 'Text') <> nil then
      TCustomEdit(Components[I]).Clear;
  end;
end;

end.
