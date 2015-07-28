unit usuario;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, ExtCtrls, Collection, TFlatPanelUnit,
  DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, wwdbedit, Wwdotdot,
  Wwdbcomb, Grids, Wwdbigrd, Wwdbgrid, Buttons, Menus, AdvGlowButton,
  RzEdit, RzDBEdit, RzDBBnEd;

type
  Tfrmusuario = class(TForm)
    qrusuario_funcao: TZQuery;
    dsusuario_funcao: TDataSource;
    qrusuario_funcaoCODUSUARIO: TStringField;
    qrusuario_funcaoFUNCAO: TStringField;
    qrusuario_funcaoACESSO: TStringField;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    wwDBGrid1: TwwDBGrid;
    dsusuario: TDataSource;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Fechar1: TMenuItem;
    Label5: TLabel;
    Bevel1: TBevel;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dbedit29: TRzDBButtonEdit;
    DBEdit31: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure balterarClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure wwDBGrid1DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBEdit5Exit(Sender: TObject);
    procedure wwDBGrid1TitleButtonClick(Sender: TObject;
      AFieldName: String);
    procedure DBEdit4Exit(Sender: TObject);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure dbedit29ButtonClick(Sender: TObject);
    procedure dbedit29KeyPress(Sender: TObject; var Key: Char);
    procedure dbedit29Exit(Sender: TObject);
  private
    { Private declarations }
    function nome_funcao(codigo:integer):string;
  public
    { Public declarations }
  end;

var
  frmusuario: Tfrmusuario;

implementation

uses modulo, principal, loc_funci;

{$R *.dfm}
function tfrmusuario.nome_funcao(codigo:integer):string;
begin
  case codigo of
  1  : result := '01.01 - FILIAIS';
  2  : result := '01.02 - CLIENTES';
  3  : result := '01.03 - FORNECEDOR';
  4  : result := '01.04 - TRANSPORTADOR';
  5  : result := '01.05 - FUNCIONARIO';
  6  : result := '01.06 - BANCO';
  7  : result := '01.07 - FORMA DE PGTO.';
  8  : result := '01.08 - COND. DE PGTO.';
  9  : result := '01.09 - PLANO DE CONTAS';
  10 : result := '01.10 - SETOR';
  11 : result := '01.11 - VEICULO - PROPRIO';
  12 : result := '01.12 - VEICULO - CLIENTE';
  13 : result := '01.13 - SERVICO';
  14 : result := '01.14 - CONVENIO';
  15 : result := '02.01 - PRODUTOS';
  16 : result := '02.02 - GRUPO/SUBGRUPO';
  17 : result := '02.03 - MARCA';
  18 : result := '02.04 - ALIQUOTA';
  19 : result := '02.05 - NOTA DE ENTRADA';
  20 : result := '02.06 - PEDIDO DE COMPRA';
  21 : result := '02.07 - NOTA DE SAIDA';
  22 : result := '02.08 - CONSULTA DE PREÇO';
  23 : result := '02.09 - BALANÇA';
  24 : result := '03.01 - PEDIDO DE VENDA';
  25 : result := '03.02 - NOTA FISCAL';
  26 : result := '03.03 - ORÇAMENTO';
  27 : result := '03.04 - ORDEM DE SERVIÇO';
  28 : result := '03.05 - NOTAS DE VENDA';
  29 : result := '03.06 - REGISTRO FISCAL';
  30 : result := '03.07 - EFD';
  31 : result := '03.08 - CONTROLE DE ENTREGA';
  32 : result := '03.09 - INDUSTRIALIZAÇÃO';
  33 : result := '04.01 - CAIXA';
  34 : result := '04.02 - CONTAS A PAGAR';
  35 : result := '04.03 - CHEQUES';
  36 : result := '04.04 - CONTA CORRENTE';
  37 : result := '04.05 - CLIENTES - FINANC.';
  38 : result := '04.06 - BOLETO BANCÁRIO';
  39 : result := '04.07 - CONTAS A RECEBER';
  40 : result := '04.08 - FINANCEIRA';
  41 : result := '04.09 - CARTÃO';
  42 : result := '04.10 - CAIXA ABERTURA DE CAIXA';
  43 : result := '04.11 - CAIXA FECHAMENTO DE CAIXA';
  44 : result := '04.12 - SELECIONAR CAIXA PARA VENDA';
  45 : result := '05.01 - COPIA DE SEGURANÇA';
  46 : result := '05.02 - RESTAURAÇÃO DE DADOS';
  47 : result := '05.03 - AGENDA';
  48 : result := '06.01 - RELATÓRIO VENDAS';
  49 : result := '06.02 - RELATÓRIO CONTAS A PAG';
  50 : result := '06.03 - RELATÓRIO CONTAS A REC';
  51 : result := '06.04 - RELATÓRIO DE CAIXA';

  END;
end;

procedure Tfrmusuario.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure Tfrmusuario.FormShow(Sender: TObject);
begin
  PGRAVAR.Align := alClient;
  frmmodulo.qrusuario.close;
  frmmodulo.qrusuario.sql.clear;
  frmmodulo.qrusuario.sql.add('select * from c000003 order by usuario');
  frmmodulo.qrusuario.open;

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 where upper(funcao) = ''VENDEDOR'' order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';
end;

procedure Tfrmusuario.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmusuario.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmusuario.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmusuario.balterarClick(Sender: TObject);
var i : integer;
  vrecno : integer;
begin
  frmmodulo.qrusuario.Edit;
  qrusuario_funcao.Insert;
  frmmodulo.qrUSUARIO.FieldByName('senha').asstring := frmPrincipal.Cript('D',frmmodulo.qrUSUARIO.FieldByName('senha').asstring);
  if qrusuario_funcao.RecordCount = 0 then
  begin
    for i := 1 to 50 do
    begin
      qrusuario_funcao.Insert;
      qrusuario_funcao.FieldByName('FUNCAO').AsString := nome_funcao(I);
      qrusuario_funcao.FieldByName('codusuario').asstring := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
      IF frmmodulo.qrUsuario.FieldByName('nivel').asinteger = 4 then
        qrusuario_funcao.fieldbyname('ACESSO').asstring := 'SIM' ELSE
        qrusuario_funcao.fieldbyname('ACESSO').asstring := 'NAO';
      qrusuario_funcao.post;
    end;
  end
  ELSE
  begin
    for i := 1 to 50 do
    begin

      if qrusuario_funcao.FieldByName('FUNCAO').AsString = nome_funcao(I) then
        begin
         // qrusuario_funcao.Edit;
        //  IF frmmodulo.qrUsuario.FieldByName('nivel').asinteger = 4 then
        //    qrusuario_funcao.fieldbyname('ACESSO').asstring := 'SIM';
       //   qrusuario_funcao.post;
          qrusuario_funcao.Next;
        end
      else
        begin
          vrecno := qrusuario_funcao.RecNo;
          if not qrusuario_funcao.Locate('funcao',nome_funcao(I),[loCaseInsensitive]) then
            begin
              qrusuario_funcao.Append;
              qrusuario_funcao.FieldByName('FUNCAO').AsString := nome_funcao(I);
              qrusuario_funcao.FieldByName('codusuario').asstring := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
              IF frmmodulo.qrUsuario.FieldByName('nivel').asinteger = 4 then
                qrusuario_funcao.fieldbyname('ACESSO').asstring := 'SIM' ELSE
                qrusuario_funcao.fieldbyname('ACESSO').asstring := 'NAO';
              qrusuario_funcao.post;
            end;
          qrusuario_funcao.RecNo := vrecno;
          qrusuario_funcao.Next;
        end;
    end;
  end;

  qrusuario_funcao.refresh;
  qrusuario_funcao.First;
  pficha.enabled := true;
  pgravar.Visible := true;
  dbedit2.setfocus;
  frmusuario.PopupMenu := pop2;

end;

procedure Tfrmusuario.bincluirClick(Sender: TObject);
var i : integer;
begin
  frmmodulo.qrusuario.insert;
  frmmodulo.qrUsuario.FieldByName('codigo').asstring := frmprincipal.codifica('000003');
  if qrusuario_funcao.RecordCount = 0 then
  begin
    for i := 1 to 50 do
    begin
      qrusuario_funcao.Insert;
      qrusuario_funcao.FieldByName('FUNCAO').AsString := nome_funcao(I);
      qrusuario_funcao.FieldByName('codusuario').asstring := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
      IF frmmodulo.qrUsuario.FieldByName('nivel').asinteger = 4 then
        qrusuario_funcao.fieldbyname('ACESSO').asstring := 'SIM' ELSE
        qrusuario_funcao.fieldbyname('ACESSO').asstring := 'NAO';
      qrusuario_funcao.post;
    end;
  end;
  qrusuario_funcao.refresh;


  pficha.enabled := true;
  pgravar.Visible := true;
  dbedit2.setfocus;
    frmusuario.PopupMenu := pop2;

end;

procedure Tfrmusuario.bgravarClick(Sender: TObject);
begin
  if (frmmodulo.qrUsuario.fieldbyname('usuario').asstring = '') or
     (frmmodulo.qrUsuario.fieldbyname('SENHA').asstring = '') or
     (frmmodulo.qrUsuario.fieldbyname('NIVEL').asstring = '') then
  begin
    application.messagebox('Dados incompletos!','Atenção',mb_ok+mb_iconerror);
    dbedit2.setfocus;
    exit;
  end;

  frmmodulo.qrUSUARIO.FieldByName('senha').asstring := frmPrincipal.Cript('C',frmmodulo.qrUSUARIO.FieldByName('senha').asstring);

  if (qrusuario_funcao.State = dsedit) then
    begin
       qrusuario_funcao.Post;
    end;

  frmmodulo.qrusuario.post;
  frmmodulo.conexao.Commit;
  pgravar.visible := false;
  pficha.Enabled := false;
  frmusuario.PopupMenu := pop1;
end;

procedure Tfrmusuario.bcancelarClick(Sender: TObject);
begin
  frmmodulo.qrusuario.cancel;
  qrusuario_funcao.CancelUpdates;
  frmmodulo.conexao.Rollback;
  pgravar.visible := false;
  pficha.Enabled := false;
  qrusuario_funcao.Refresh;
  frmmodulo.qrUsuario.Refresh;
    frmusuario.PopupMenu := pop1;
end;

procedure Tfrmusuario.DBEdit1Change(Sender: TObject);
begin
  try
    qrusuario_funcao.close;
    qrusuario_funcao.sql.clear;
    qrusuario_funcao.sql.add('select * from c000067 where codusuario = '''+frmmodulo.qrusuario.fieldbyname('codigo').asstring+''' order by funcao');
    qrusuario_funcao.open;

  except
  end;
end;

procedure Tfrmusuario.bfecharClick(Sender: TObject);
begin
  if pgravar.Visible then
    bcancelarClick(sender)
  else
  close;
end;

procedure Tfrmusuario.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrusuario.first;
end;

procedure Tfrmusuario.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrusuario.prior;
end;

procedure Tfrmusuario.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrusuario.next;
end;

procedure Tfrmusuario.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrusuario.last;
end;

procedure Tfrmusuario.bexcluirClick(Sender: TObject);
begin
    IF APPLICATION.MESSAGEBOX('Confirma a exclusão deste registro?','Atenção',mb_yesno+mb_iconquestion) = idyes then
    begin
      qrusuario_funcao.close;
      qrusuario_funcao.sql.clear;
      qrusuario_funcao.sql.add('select * from c000067 where codusuario = '''+frmmodulo.qrusuario.fieldbyname('codigo').asstring+'''');
      qrusuario_funcao.open;
      while qrusuario_funcao.RecordCount <> 0 do qrusuario_funcao.delete;
      frmmodulo.qrusuario.Delete;
      frmmodulo.Conexao.commit;
    end;
end;

procedure Tfrmusuario.wwDBGrid1DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
  if qrusuario_funcao.FieldByName('ACESSO').asstring = 'SIM' then
  begin
    WWDbgrid1.Canvas.font.Color:= clblue;
  end;

  if qrusuario_funcao.FieldByName('ACESSO').asstring = 'NAO' then
  begin
    WWDbgrid1.Canvas.font.Color:= clRED;
  end;

  if qrusuario_funcao.FieldByName('ACESSO').asstring = 'LIMITADO' then
  begin
    WWDbgrid1.Canvas.font.Color:= clGREEN;
  end;


  WWDbgrid1.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmusuario.DBEdit5Exit(Sender: TObject);
begin

  tedit(sender).color := clwindow;
  if frmmodulo.qrusuario.state in [dsinsert, dsedit] then
  begin
    frmmodulo.qrUsuario.fieldbyname('codvendedor').asstring :=
    frmprincipal.zerarcodigo(frmmodulo.qrUsuario.fieldbyname('codvendedor').asstring,6);
  end;

end;

procedure Tfrmusuario.wwDBGrid1TitleButtonClick(Sender: TObject;
  AFieldName: String);
begin
  if afieldname = 'ACESSO' then
  begin
    qrusuario_funcao.first;
    if qrusuario_funcao.FieldByName('acesso').asstring = 'SIM' THEN
    BEGIN
      WHILE NOT QRUSUARIO_funcao.eof do
      begin
        qrusuario_funcao.edit;
        qrusuario_funcao.fieldbyname('acesso').asstring := 'NAO';
        QRUSUARIO_FUNCAO.POST;
        qrusuario_funcao.Next;
      end;

    END
    ELSE
    BEGIN
      WHILE NOT QRUSUARIO_funcao.eof do
      begin
        qrusuario_funcao.edit;
        qrusuario_funcao.fieldbyname('acesso').asstring := 'SIM';
        QRUSUARIO_FUNCAO.POST;
        qrusuario_funcao.Next;
      end;
    END;

  end;
end;

procedure Tfrmusuario.DBEdit4Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
  if ( frmmodulo.qrUsuario.FieldByName('nivel').AsInteger > 4 ) or
     ( frmmodulo.qrUsuario.FieldByName('nivel').AsInteger <= 0 ) then
    begin
      application.messagebox('Favor Verificar o Nível Digitado (1,2,3,4)!','Atenção',mb_ok+mb_iconerror);
      DBEdit4.setfocus;
      exit;
    end;
end;

procedure Tfrmusuario.DBEdit3KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0)
  else
   if (key in (['0'..'9'])) or (key = #8) then
      //
   else
     abort;
end;

procedure Tfrmusuario.dbedit29ButtonClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrusuario.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
end;

procedure Tfrmusuario.dbedit29KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmusuario.dbedit29Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrusuario.state = dsinsert) or (frmmodulo.qrusuario.State = dsedit) then
  begin
    frmmodulo.qrusuario.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(dbedit29.text,6);
    if dbedit29.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,dbedit29.text,'codigo') then
        dbedit29ButtonClick(Frmusuario)
      else
      BEGIN
      perform(wm_nextdlgctl,0,0);
      END;
    END
    else
      dbedit29ButtonClick(Frmusuario);
  end;
end;

end.

// TUDO
// NADA
// VISUALIZAR





