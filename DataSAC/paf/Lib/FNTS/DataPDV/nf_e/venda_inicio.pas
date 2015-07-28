unit venda_inicio;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Collection, Buttons, TFlatPanelUnit, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, jpeg, Mask,
  ToolEdit, AdvShapeButton, AdvGlowButton, RzEdit, RzBtnEdt, Menus,
  RzCmboBx, IBCustomDataSet, IBQuery, Grids, DBGrids, IBDatabase;

type
  Tfrmvenda_inicio = class(TForm)
    Bevel1: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    evendedor: TRzButtonEdit;
    enomevendedor: TRzEdit;
    ecliente: TRzButtonEdit;
    enomecliente: TRzEdit;
    Panel1: TPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel3: TBevel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    eendereco: TRzEdit;
    etelefone: TRzEdit;
    PopupMenu1: TPopupMenu;
    Cancelar1: TMenuItem;
    combobox1: TRzComboBox;
    eretirado: TRzEdit;
    qrfunci: TzQuery;
    qrcontasreceber: TzQuery;
    qrpessoas: TzQuery;
    qrcliente: TzQuery;
    dscliente: TDataSource;
    Confirmar1: TMenuItem;
    bvidalink: TAdvGlowButton;
    Convenio1: TMenuItem;
    query: TZQuery;
    procedure bcancelarClick(Sender: TObject);
    procedure EVENDEDORExit(Sender: TObject);
    procedure EVENDEDORKeyPress(Sender: TObject; var Key: Char);
    procedure ECLIENTEExit(Sender: TObject);
    procedure ECLIENTEKeyPress(Sender: TObject; var Key: Char);
    procedure bgravarClick(Sender: TObject);
    procedure evendedorButtonClick(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure Cancelar1Click(Sender: TObject);
    procedure eretiradoKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bvidalinkClick(Sender: TObject);
    procedure Convenio1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_inicio: Tfrmvenda_inicio;

implementation

uses modulo_nfe, loc_funci, principal, loc_cliente, venda, loc_cliente_VENDA,
  xloc_cliente, ecf, Math, loc_funci_venda, venda_farma_vidalink;

{$R *.dfm}

procedure Tfrmvenda_inicio.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_inicio.EVENDEDORExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;


  evendedor.text := frmprincipal.zerarcodigo(evendedor.text,6);

  if evendedor.text <> '000000' then
  begin
    qrfunci.close;
    qrfunci.sql.clear;
    qrfunci.sql.add('select * from c000008 where f_vendedor = 1 and situacao = 1 and codigo = '''+evendedor.text+'''');
    qrfunci.open;
    if qrfunci.recordcount = 0 then
    begin
        application.messagebox('Vendedor não encontrado!','Atenção!',mb_ok+mb_iconwarning);
        evendedorbuttonclick(Frmvenda_inicio);

    end
     else
     begin
        evendedor.Text := qrfunci.fieldbyname('codigo').asstring;
        enomevendedor.Text := qrfunci.fieldbyname('nome').asstring;
        ecliente.setfocus;
     end;
  end
  else
  begin
    evendedorbuttonclick(frmvenda_inicio);
  end;
end;

procedure Tfrmvenda_inicio.EVENDEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_inicio.ECLIENTEExit(Sender: TObject);
begin

  combobox1.Items.clear;
{
  IBTrans.active := false;
  IBTrans.Active := true;  }
  //frmmodulo.Conexao.StartTransaction;
  frmmodulo.Conexao.Commit;
  tedit(sender).Color := clwindow;
  ecliente.text := frmprincipal.zerarcodigo(ecliente.text,6);
  if ecliente.text <> '000000' then
  begin
     if ecliente.text = '999999' then
     begin
       qrcliente.close;
       qrcliente.sql.clear;
       qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+'''');
       qrcliente.open;
       if qrcliente.RecordCount = 0 then
       begin
         application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
         eclientebuttonclick(frmvenda_inicio);
       end
       else
       begin
         ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
         enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
         eendereco.text := '';
         etelefone.text := '';
         combobox1.visible := false;
         eretirado.Visible := true;
         eretirado.setfocus;
       end;
     end
     else
     begin
       qrcliente.close;
       qrcliente.sql.clear;
       qrcliente.sql.add('select * from c000007 where codigo = '''+ecliente.text+'''');
       qrcliente.open;
       if qrcliente.RecordCount = 0 then
       begin
         application.messagebox('Cliente não encontrado!','Atenção!',mb_ok+mb_iconwarning);
         eclientebuttonclick(frmvenda_inicio);
       end
       else
       begin
         ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
         enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
         eendereco.text := 'Endereços: '+qrcliente.fieldbyname('endereco').asstring+' '+qrcliente.fieldbyname('bairro').asstring;
         etelefone.text := 'Fones: '+qrcliente.fieldbyname('telefone1').asstring+' / '+qrcliente.fieldbyname('celular').asstring+'  CPF/CNPJ: '+qrcliente.fieldbyname('CPF').asstring;
         COMBOBOX1.ItemIndex := 0;
         qrpessoas.close;
         qrpessoas.SQL.clear;
         qrpessoas.SQL.add('select * from c000070 where codcliente = '''+qrcliente.fieldbyname('codigo').asstring+'''');
         qrpessoas.Open;

         IF QRPESSOAS.RecordCount > 0 THEN
         BEGIN
           COMBOBOX1.Style := csDropDownList;
           ComboBox1.Clear;
           COMBOBOX1.ItemS.Add('O MESMO');
           QRPESSOAS.First;
           WHILE NOT QRPESSOAS.EOF DO
           BEGIN
             COMBOBOX1.Items.ADD(QRPESSOAS.FIELDBYNAME('NOME').ASSTRING+' - '+QRPESSOAS.FIELDBYNAME('PARENTESCO').ASSTRING);
             QRPESSOAS.NEXT;
           END;
           COMBOBOX1.ItemIndex := 0;
           combobox1.visible := true;
           eretirado.Visible := false;
           combobox1.setfocus;
         END
         ELSE
           bgravar.setfocus;
       end;
     end;
  end
  else
  begin
    eclienteButtonClick(frmvenda_inicio);
  end;
end;

procedure Tfrmvenda_inicio.ECLIENTEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmvenda_inicio.bgravarClick(Sender: TObject);

var texto : pansichar;
Data: TDateTime;
dia, mes, ano: Word;
dias : integer;
vlimite : double;

begin

  bgravar.Enabled := False;

  if ecliente.text = '' then
  begin
    application.messagebox('Favor informar o cliente!','Atenção!',mb_ok+MB_ICONWARNING);
    ecliente.setfocus;
    bgravar.Enabled := True;
    exit;
  end;

  {
   // verifica se o ramo é FARMACIA
  IF trim(FRMMODULO.QRCONFIG.FIELDBYNAME('CADASTRO_PRODUTO').AsString) = 'FARMA' then
    begin

      showmessage('a');

      Sleep(100);
      query.close;
      query.sql.clear;
      query.sql.add('delete from cl00001');
      query.ExecSQL;

      Application.ProcessMessages;

      Sleep(100);
      query.close;
      query.sql.clear;
      query.SQL.Add('delete from cl00002');
      query.ExecSQL;

      Application.ProcessMessages;
    end;
  }

  qrcontasreceber.close;
  qrcontasreceber.sql.clear;
  qrcontasreceber.sql.add('select codcliente,situacao,data_vencimento,SUM(VALOR_ATUAL) TOTAL_CLIENTE from c000049 where codcliente = '''+ecliente.Text+''' and situacao = 1');
  qrcontasreceber.sql.add('GROUP BY codcliente,situacao,DATA_VENCIMENTO');
  qrcontasreceber.Open;

  (*  VERIFICAR QUANTO AINDA TEM DE LIMITE *)
  vlimite := 0;
  qrcontasreceber.first;
  while not qrcontasreceber.Eof do
  begin
    vlimite := vlimite + qrcontasreceber.fieldbyname('total_cliente').AsFloat;
    qrcontasreceber.Next;
  end;

  (* VERIFICAR SE HA PRESTACOES EM ATRAZO *)
  qrcontasreceber.First;
  if verifica_prestacao_atrazo = '1' then
  begin
    while not qrcontasreceber.Eof do
    begin
      dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      if dias >= frmmodulo.qrconfig.FieldByName('contasreceber_bloqueio').AsInteger then
      begin
        texto := pansichar('Cliente com Prestação vencida a ' + inttostr(dias)+' Dias!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
        begin
          if not frmPrincipal.autentica('Liberar venda',3) then
          begin
            application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
            ECLIENTE.SetFocus;
            bgravar.Enabled := True;
            exit;
          end;
        end
        else
        begin
          ECLIENTE.SetFocus;
          bgravar.Enabled := True;
          exit;
        end;
        Break;
      end;
      qrcontasreceber.Next;
    end;
  end;


  case qrcliente.FieldByName('situacao').asinteger of

  2 : begin // em observacao
        texto := pansichar('Cliente com Crédito em Observação:'+#13+
                           qrcliente.fieldbyname('obs1').asstring+#13+
                           qrcliente.fieldbyname('obs2').asstring+#13+
                           qrcliente.fieldbyname('obs3').asstring+#13+
                           qrcliente.fieldbyname('obs4').asstring+#13+
                           'Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
              bgravar.Enabled := True;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            bgravar.Enabled := True;
            exit;
          end;

      end;



  3 : begin // bloqueado
        texto := pansichar('Cliente com crédito Bloqueado!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',4) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
              bgravar.Enabled := True;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            bgravar.Enabled := True;
            exit;
          end;

      end;
  4 : begin // inativo
        texto := pansichar('Cliente INATIVO!, Deseja continuar?');
        if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
          begin
            if not frmPrincipal.autentica('Liberar venda',3) then
            begin
              application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
              ECLIENTE.SetFocus;
              bgravar.Enabled := True;
             exit;
            end;
          end
        else
          begin
            ECLIENTE.setfocus;
            bgravar.Enabled := True;
            exit;
          end;

      end;
  5 : begin // spc
        application.messagebox('Desculpe! Cliente no SPC, Verifique!','Aviso',mb_ok+MB_ICONEXCLAMATION);
        ECLIENTE.SetFocus;
        bgravar.Enabled := True;
        exit;

      end;
  end;




     if qrcliente.FIELDBYNAME('LIMITE').ASFLOAT <> 0 then
     begin
       IF limite_disponivel <= 0 THEN
       BEGIN
         texto := pansichar('Este cliente possue um limite disponível de:'+#13+' ---> R$ '+formatfloat('###,###,##0.00',(qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite))+'  <--- '+#13+'É necessário autorização para prosseguir! '+#13+'Deseja continuar?');
         if application.MessageBox(texto,'Atenção',mb_yesno+MB_ICONWARNING) = idyes then
         begin
           if not frmPrincipal.autentica('Liberar venda',3) then
           begin
             application.messagebox('Desculpe! Seu acesso não foi autorizado!','Aviso',mb_ok+MB_ICONERROR);
             ECLIENTE.SetFocus;
             bgravar.Enabled := True;
             exit;
           end;
         end
         else
         begin
           ECLIENTE.SetFocus;
           bgravar.Enabled := True;
           exit;
         end;
       END;
     END;





  movimento_venda := 1; // inclusao


  ecf_impressao := 0;


  numero_cupomx := '';
  if ecf_impressao = 1 then
  begin
    IF  ecf_abre_cupom(ecf_modelo,'') = 'ERRO' THEN
    BEGIN
      application.messagebox('Erro ao iniciar cupom!','Erro',mb_ok+mb_iconerror);
      bgravar.Enabled := True;
      exit;
    END;
    numero_cupomx := ecf_numero_cupom(ecf_modelo);
  end;

  limite_disponivel := qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite;

  frmvenda := tfrmvenda.create( application );
  try
    frmvenda.lvenda_data.Caption     :=   frmmodulo.qrcaixa_operador.fieldbyname('data').asstring;
    frmvenda.lcliente_codigo.Caption :=   ecliente.Text;
    frmvenda.lcliente_nome.caption   :=   enomecliente.Text;
    frmvenda.lcliente_cpf.caption    :=   qrcliente.fieldbyname('cpf').asstring;
    frmvenda.LRETIRADO.Caption       :=   COMBOBOX1.TEXT;
    frmvenda.lvenda_codigo.Caption   :=   frmprincipal.codifica('000048');
    frmvenda.lcliente_limite.caption := formatfloat('###,###,##0.00',(qrcliente.FIELDBYNAME('LIMITE').ASFLOAT - vlimite));
    frmvenda.lvendedor_nome.caption := enomevendedor.Text;
    frmvenda.lvendedor_codigo.caption := evendedor.Text;
    frmvenda.lcaixa_codigo.Caption := FRMMODULO.qrcaixa_operador.FIELDBYNAME('CODIGO').ASSTRING;
    frmvenda.lvenda_cupom.Caption := numero_cupomX;
    frmvenda.ShowModal
  finally
    frmvenda.Release;
    frmvenda := nil;
    close;
  end;

end;

procedure Tfrmvenda_inicio.evendedorButtonClick(Sender: TObject);
begin
  frmloc_funci_venda := tfrmloc_funci_venda.create(self);
  qrfunci.close;
  qrfunci.sql.clear;
  qrfunci.sql.add('select * from c000008 where f_vendedor = 1 and situacao = 1');
  qrfunci.open;
  frmloc_funci_venda.showmodal;

  evendedor.Text := qrfunci.fieldbyname('codigo').asstring;
  enomevendedor.Text := qrfunci.fieldbyname('nome').asstring;
  evendedor.setfocus;
end;

procedure Tfrmvenda_inicio.eclienteButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    if resultado_pesquisa1 = '999999' then
    begin
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
      qrcliente.open;
      ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
      enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
      eendereco.text := '';
      etelefone.text := '';

      combobox1.visible := false;
      eretirado.Visible := true;

      eretirado.setfocus;

    end
    else
    begin
      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from c000007 where codigo = '''+resultado_pesquisa1+'''');
      qrcliente.open;
      ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
      enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
      ecliente.Text := qrcliente.fieldbyname('codigo').asstring;
      enomecliente.Text := qrcliente.fieldbyname('nome').asstring;
      eendereco.text := 'Endereços: '+qrcliente.fieldbyname('endereco').asstring+' '+qrcliente.fieldbyname('bairro').asstring;
      etelefone.text := 'Fones: '+qrcliente.fieldbyname('telefone1').asstring+' / '+qrcliente.fieldbyname('celular').asstring+'  CPF/CNPJ: '+qrcliente.fieldbyname('CPF').asstring;

      COMBOBOX1.ItemIndex := 0;
      qrpessoas.close;
      qrpessoas.SQL.clear;
      qrpessoas.SQL.add('select * from c000070 where codcliente = '''+qrcliente.fieldbyname('codigo').asstring+'''');
      qrpessoas.Open;

      IF QRPESSOAS.RecordCount > 0 THEN
      BEGIN
        ComboBox1.Clear;
        COMBOBOX1.ItemS.Add('O MESMO');

        QRPESSOAS.First;
        WHILE NOT QRPESSOAS.EOF DO
        BEGIN
          COMBOBOX1.Items.ADD(QRPESSOAS.FIELDBYNAME('NOME').ASSTRING+' - '+QRPESSOAS.FIELDBYNAME('PARENTESCO').ASSTRING);
          QRPESSOAS.NEXT;
        END;
        COMBOBOX1.ItemIndex := 0;

         combobox1.visible := true;
          eretirado.Visible := false;
          combobox1.setfocus;


      END
      ELSE
         bgravar.setfocus;
    end;
  end
  else
    ecliente.setfocus;
end;

procedure Tfrmvenda_inicio.ComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_inicio.Cancelar1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmvenda_inicio.eretiradoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmvenda_inicio.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmvenda_inicio.bvidalinkClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.01') = 'NAO' then
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;

    query.close;
    query.sql.clear;
    query.sql.add('select * from cl00001');
    query.Open;
    if query.RecordCount > 0 then
      begin
        //showmessage('a');
        query.First;
        while not query.Eof do begin
          query.Delete;
        end;
        frmmodulo.Conexao.Commit;
        Application.ProcessMessages;
      end;

  frmvenda_farma_vidalink := tfrmvenda_farma_vidalink.create(Application);
  try
    frmvenda_farma_vidalink.showmodal;
  finally
    frmvenda_farma_vidalink.Release;
    frmvenda_farma_vidalink := nil;
    close;
  end;

end;

procedure Tfrmvenda_inicio.Convenio1Click(Sender: TObject);
begin
  bvidalinkClick(frmvenda_inicio);
end;

procedure Tfrmvenda_inicio.FormShow(Sender: TObject);
begin
  IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA' THEN
    bvidalink.Visible := true;
end;

end.
