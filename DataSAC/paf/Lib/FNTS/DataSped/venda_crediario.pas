unit venda_crediario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, StdCtrls, Mask, RzEdit, AdvGlowButton,
  ExtCtrls, RzLabel, TFlatPanelUnit, RzSpnEdt;

type
  TfrmVenda_Crediario = class(TForm)
    pn_consumidor: TFlatPanel;
    RzLabel10: TRzLabel;
    RzLabel9: TRzLabel;
    sh_cred_cliente: TShape;
    sh_consumid_endereco: TShape;
    RzLabel12: TRzLabel;
    sh_cred_prestacao: TShape;
    FlatPanel3: TFlatPanel;
    bt_gravar_crediario: TAdvGlowButton;
    bt_cancelar_crediario: TAdvGlowButton;
    ed_cred_cliente: TRzEdit;
    pop_consumid: TAdvPopupMenu;
    MenuItem2: TMenuItem;
    Shape1: TShape;
    FlatPanel1: TFlatPanel;
    Shape2: TShape;
    lb_cred_nome: TRzLabel;
    lb_cred_endereco: TRzLabel;
    lb_cred_bairro: TRzLabel;
    lb_cred_cidade: TRzLabel;
    lb_cred_cpf: TRzLabel;
    RzLabel6: TRzLabel;
    lb_cred_situacao: TRzLabel;
    RzLabel8: TRzLabel;
    lb_cred_limite: TRzLabel;
    RzLabel13: TRzLabel;
    lb_cred_utilizado: TRzLabel;
    RzLabel15: TRzLabel;
    lb_cred_disponivel: TRzLabel;
    lb_cred_uf: TRzLabel;
    lb_cred_cep: TRzLabel;
    lb_cred_codigo: TRzLabel;
    lb_cred_atualizado: TRzLabel;
    ed_cred_prestacao: TRzSpinEdit;
    pn_tampa: TFlatPanel;
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
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure bt_gravar_crediarioClick(Sender: TObject);
    procedure bt_cancelar_crediarioClick(Sender: TObject);
    procedure ed_cred_clienteEnter(Sender: TObject);
    procedure ed_cred_clienteExit(Sender: TObject);
    procedure ed_cred_prestacaoEnter(Sender: TObject);
    procedure ed_cred_prestacaoExit(Sender: TObject);
    procedure ed_cred_clienteKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cred_prestacaoKeyPress(Sender: TObject; var Key: Char);
    procedure bt_gravar_crediarioEnter(Sender: TObject);
    procedure bt_cancelar_crediarioEnter(Sender: TObject);
    procedure ed_consumid_vendedorKeyPress(Sender: TObject; var Key: Char);
    function LocalizarCliente: Integer;
    procedure PreencherDadosCliente(pbVazio: Boolean = False);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmVenda_Crediario: TfrmVenda_Crediario;
  bcontinua_creadiario : Boolean;
  rdisponivel : real;

implementation

uses modulo, cliente_consulta, funcoes, venda, principal, Math,
  senha_supervisor;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.FormCreate(Sender: TObject);
begin
  pn_tampa.Align := alClient;
  pn_tampa.visible := true;

  TOP := 111;
  left := 35;

  if not bCadastra_Placa then
    pn_veiculo.Visible := false
  else
    pn_veiculo.Visible := true;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.FormShow(Sender: TObject);
var key : char;
begin
  bcontinua_creadiario := false;

  If bLanca_pre_venda then
  begin
    ed_cred_cliente.Text := IntToStr(iPre_venda_cliente);
    Application.ProcessMessages;
    key := #13;
    ed_cred_clienteKeyPress(frmvenda_crediario,key);
  end
  else
    ed_cred_cliente.SetFocus;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.MenuItem2Click(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.bt_gravar_crediarioClick(Sender: TObject);
var bsenha : boolean;
begin
  IF NOT bcontinua_creadiario then
  begin
    exit;
  end;

  bsenha := false;

  if lb_cred_situacao.caption = '2' then bsenha := true;
  if lb_cred_situacao.caption = '3' then
  begin
    Application.messagebox('Cliente com crédito bloqueado! Impossível prosseguir!','Erro',mb_ok+mb_iconerror);
    exit;
  end;

  if (frmmodulo.query.fieldbyname('limite').asfloat > 0.00) and (rdisponivel < rvalor_total_crediario) THEN
  begin
    if application.messagebox('Este cliente necessita de autorização para efetuar compra no crediário!'#13+
                              'Verifique o limite/situação do cadastro!'+#13+
                              'Deseja prosseguir?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
    begin
      bsenha := true;
    end
    else
      exit;
  END;


  if bsenha then
  begin
      // abrir o formulario solicitando a senha do supervisor
      frmsenha_supervisor := tfrmsenha_supervisor.create(self);
      frmsenha_supervisor.showmodal;
      // verisificar se o supervisor foi logado
      if not bSupervisor_autenticado then
      begin
        application.MessageBox('Não autorizado!','Erro',mb_ok+mb_iconerror);
        exit;
      end;
  end;

  sCli_Nome     := lb_cred_nome.caption;
  sCli_Endereco := lb_cred_endereco.caption;
  sCli_Cidade   := lb_cred_cidade.caption;
  sCli_uf       := lb_cred_uf.caption;
  scli_cep      := lb_cred_cep.caption;
  sCli_CPF      := lb_cred_cpf.caption;
  sCli_codigo   := lb_cred_codigo.caption;

  sCli_Placa    := ed_consumid_placa.text;
  sCli_Km       := ed_consumid_km.text;
  sCli_vendedor := ed_consumid_vendedor.text;

  iCrediario_prestacao := ed_cred_prestacao.IntValue;

  bContinua     := true;
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.bt_cancelar_crediarioClick(Sender: TObject);
begin
  sCli_codigo   := '';
  bContinua     := false;
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_cred_clienteEnter(Sender: TObject);
begin
  sh_cred_cliente.Brush.Color := $00DD6F00;

  frmvenda.Imprime_display('Informe o CODIGO/CPF ou NOME do cliente',clwhite,tiCliente);

  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_cred_cliente.TEXT);
     DispStr(@men);
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_cred_clienteExit(Sender: TObject);
begin
  sh_cred_cliente.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_cred_prestacaoEnter(Sender: TObject);
begin
  sh_cred_prestacao.Brush.Color := $00DD6F00;
  frmvenda.Imprime_display('Informe a quantidade de prestações',clwhite,tiCliente);

  if iTeclado_modelo = 1 then
  begin
     blimpa_edit_display := true;
     strpcopy(@men,ed_cred_prestacao.TEXT);
     DispStr(@men);
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_cred_prestacaoExit(Sender: TObject);
begin
  sh_cred_prestacao.Brush.Color := clblack;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_cred_clienteKeyPress(Sender: TObject;
  var Key: Char);
var
  iRet: Integer;

begin
  if key = #13 then
  begin

   bcontinua_creadiario := false;
   bcontinua := false;

   try

    if ed_cred_cliente.Text <> '' then
    begin
      // CGT: Apenas fará a pesquisa caso haja modificação no campo
      if ed_cred_cliente.Modified then
      begin
        // GUIO: 0 - Não achou, e o cliente irá digitar os dados
        //       1 - Achou e não abrirá a pesquisa, localizou apenas um cliente
        //       2 - Achou mais de um cliente

        iRet := LocalizarCliente;

        if (iRet = 0) or (iRet = 2) then
        begin
          Application.CreateForm(TfrmCliente_consulta, frmCliente_consulta);

          try
            frmCliente_consulta.ed_cliente.Text := AnsiUpperCase(ed_cred_cliente.Text);

            bConsulta_crediario := True;

            if frmCliente_consulta.ShowModal = mrOK then
            begin
              ed_cred_cliente.Text := frmModulo.Query.FieldByName('CODIGO').AsString;
              LocalizarCliente;
              bcontinua_creadiario := true;
              bContinua := True;
              ed_cred_prestacao.SetFocus;
            end
            else
            begin
              // GUIO: Limpa as labels com os dados do cliente
              PreencherDadosCliente(True);
              ed_cred_cliente.SetFocus;
              bcontinua := false;
            end;

          finally
            FreeAndNil(frmCliente_Consulta);
          end;
        end;

        ed_cred_cliente.Modified := False;
      end;

      if bcontinua then
      begin
        pn_tampa.visible := false;
      end;

      {end
      else
      begin
        pn_tampa.visible := true;
        frmvenda.Imprime_display('Nenhum cliente encontrado!',clRed,tiErro);
        Application.ProcessMessages;
        Sleep(1500);
        frmVenda.Imprime_display_anterior;
      end;}
    end;

    finally
      bcontinua := false;
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

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_cred_prestacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key= #13 then
  begin
    if pn_veiculo.Visible then
      ed_consumid_km.SetFocus
    else
      bt_gravar_crediario.setfocus;
  end
  else
    if iTeclado_Modelo = 1 then
    begin
      strpcopy(@men,key);
      DispStr(@men);
    end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.bt_gravar_crediarioEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('ENTER confirmar o cliente!',clwhite,tiCliente);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.bt_cancelar_crediarioEnter(Sender: TObject);
begin
  frmvenda.Imprime_display('ENTER cancelar o crediário!',clwhite,tiCliente);
end;

// -------------------------------------------------------------------------- //
procedure TfrmVenda_Crediario.ed_consumid_vendedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    bt_gravar_crediario.setfocus;
end;

// -------------------------------------------------------------------------- //
function TfrmVenda_Crediario.LocalizarCliente: Integer;
begin
  with frmModulo.Query do
  begin
    // buscar pelo nome
    close;
    sql.clear;
    sql.add('select * from cliente');
    sql.add('where upper(nome) LIKE ' + QuotedStr(ansiuppercase(ed_cred_cliente.text + '%')));
    open;

    if IsEmpty then
    begin
      // Busca pelo código
      try
        StrToInt(ed_cred_cliente.Text);

        close;
        SQL.clear;
        SQL.add('select * from cliente');
        SQL.add('where codigo = ' + QuotedStr(ed_cred_cliente.Text));
        open;

      except
      end;

      if IsEmpty then
      begin
        // buscar pelo nome
        close;
        sql.clear;
        SQL.add('select * from cliente');
        SQL.add('where cpf LIKE ' + QuotedStr(ed_cred_cliente.Text + '%'));
        open;
      end;
    end;

    if not IsEmpty and (RecordCount = 1) then
    begin
      PreencherDadosCliente;

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
procedure TfrmVenda_Crediario.PreencherDadosCliente(pbVazio: Boolean);
begin
  // GUIO: Preenche as labels com os dados do cliente
  if not pbVazio then
  begin
    ed_cred_cliente.text := '';

    lb_cred_codigo.caption := frmmodulo.query.fieldbyname('codigo').asstring;
    lb_cred_nome.Caption := frmmodulo.query.fieldbyname('nome').asstring;
    lb_cred_endereco.caption := frmModulo.query.fieldbyname('endereco').asstring;
    lb_cred_bairro.Caption := frmModulo.query.fieldbyname('bairro').asstring;
    lb_cred_cidade.caption := frmModulo.query.fieldbyname('cidade').asstring;
    lb_cred_uf.caption := frmModulo.query.fieldbyname('uf').asstring;
    lb_cred_cep.caption := frmModulo.query.fieldbyname('cep').AsString;
    lb_cred_cpf.caption := 'CPF/CNPJ: '+frmModulo.query.fieldbyname('cpf').asstring;
    lb_cred_situacao.caption := frmmodulo.query.fieldbyname('SITUACAO').asstring;
    lb_cred_limite.caption := formatfloat('###,###,##0.00',
                             frmmodulo.query.fieldbyname('limite').asfloat);

    lb_cred_utilizado.caption := formatfloat('###,###,##0.00',
                             frmmodulo.query.fieldbyname('utilizado').asfloat);

    lb_cred_disponivel.caption := formatfloat('###,###,##0.00',
                             frmmodulo.query.fieldbyname('disponivel').asfloat);
    rdisponivel := frmmodulo.query.fieldbyname('disponivel').asfloat;

    if frmmodulo.query.FieldByName('disponivel').asfloat <= 0 then
      lb_cred_disponivel.Font.color := clred
    else
      lb_cred_disponivel.font.color := cllime;

    if lb_cred_situacao.Caption = '1' then
      lb_cred_situacao.Font.color := clblue
    else
    if lb_cred_situacao.Caption = '2' then
      lb_cred_situacao.Font.color := clblack
    else
    if lb_cred_situacao.Caption = '3' then
      lb_cred_situacao.Font.color := clred;

    lb_cred_atualizado.Caption
      := frmmodulo.query.fieldbyname('atualizado').asstring;
  end
  else
  begin
    ed_cred_cliente.text := '';
    lb_cred_codigo.caption := '';
    lb_cred_nome.Caption := '';
    lb_cred_endereco.caption := '';
    lb_cred_bairro.Caption := '';
    lb_cred_cidade.caption := '';
    lb_cred_uf.caption := '';
    lb_cred_cep.caption := '';
    lb_cred_cpf.caption := '';
    lb_cred_situacao.caption := '';
    lb_cred_limite.caption := 'R$ 0,00';
    lb_cred_utilizado.caption := 'R$ 0,00';
    lb_cred_disponivel.caption := 'R$ 0,00';

    rdisponivel := 0.00;
    lb_cred_disponivel.Font.color := clWhite;
    lb_cred_disponivel.font.color := clWhite;
    lb_cred_atualizado.Caption := '';
  end
end;

end.
