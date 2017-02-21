unit financeira;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls,
  AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB, DBAccess, IBC, MemDS,
  DBCtrls, Menus, frxDesgn, frxClass, frxDBSet, frxIBXComponents, frxDCtrl,
  ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmFinanceira = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    ed_cod_financeira: TRzButtonEdit;
    ed_financeira: TRzEdit;
    Label2: TLabel;
    combo_periodo: TComboBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label3: TLabel;
    blocalizar: TAdvGlowButton;
    Label4: TLabel;
    combo_situacao: TComboBox;
    Panel2: TPanel;
    Bevel3: TBevel;
    grid: TwwDBGrid;
    qrfinanceira: TZQuery;
    dsfinanceira: TDataSource;
    Panel3: TPanel;
    Bevel4: TBevel;
    Label5: TLabel;
    rqtde: TRzNumericEdit;
    Label6: TLabel;
    rtotal: TRzNumericEdit;
    qrfinanceiraCODIGO: TStringField;
    qrfinanceiraCODBANCO: TStringField;
    qrfinanceiraDATA: TDateTimeField;
    qrfinanceiraCODCLIENTE: TStringField;
    qrfinanceiraVALOR: TFloatField;
    qrfinanceiraSITUACAO: TIntegerField;
    qrfinanceiraDATA_PGTO: TDateTimeField;
    qrfinanceiraVALOR_PAGO: TFloatField;
    qrfinanceiraBORDERO: TStringField;
    qrfinanceiraPROPOSTA: TStringField;
    qrfinanceiraOBS: TStringField;
    qrfinanceiraCODVENDA: TStringField;
    qrfinanceiraNOME: TStringField;
    qrfinanceiraBANCO: TStringField;
    Panel4: TPanel;
    Bevel5: TBevel;
    Label7: TLabel;
    DBText1: TDBText;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios1: TMenuItem;
    Sair1: TMenuItem;
    query: TzQuery;
    bliquidar: TAdvGlowButton;
    Baixar1: TMenuItem;
    fxfinanceira: TfrxReport;
    fsfinanceira: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fsConexao: TfrxIBXComponents;
    fsDialog: TfrxDialogControls;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_cod_financeiraKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_financeiraButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure combo_periodoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Enter(Sender: TObject);
    procedure DateEdit2Enter(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure bliquidarClick(Sender: TObject);
    procedure fxfinanceiraGetValue(const VarName: String;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFinanceira: TfrmFinanceira;

implementation

uses xloc_financeira, modulo, principal, financeira_pgto, financeira_ficha,
  financeira_alterar, lista_financeira;

{$R *.dfm}

procedure TfrmFinanceira.bincluirClick(Sender: TObject);
begin
  fi_codigo := '';

  frmfinanceira_ficha := tfrmfinanceira_ficha.create(self);
  frmfinanceira_ficha.showmodal;

  if fi_codigo <> '' then
  begin
      query.close;
      query.sql.clear;
      query.sql.add('insert into c000123');
      query.sql.add('(CODIGO, CODBANCO, DATA, CODCLIENTE, VALOR, SITUACAO, DATA_PGTO, VALOR_PAGO, BORDERO, PROPOSTA, OBS, CODVENDA)');
      query.sql.add('values');
      query.sql.add('(:CODIGO, :CODBANCO, :DATA, :CODCLIENTE, :VALOR, :SITUACAO, :DATA_PGTO, :VALOR_PAGO, :BORDERO, :PROPOSTA, :OBS, :CODVENDA)');

      query.ParamByName('CODIGO').ASSTRING      :=  frmprincipal.codifica('000123');
      query.ParamByName('CODbanco').ASSTRING    :=  FI_CODIGO;
      query.ParamByName('DATA').ASDATETIME      :=  STRTODATE(FI_DATA);
      query.ParamByName('CODCLIENTE').ASSTRING  :=  FI_CLIENTE;
      query.ParamByName('VALOR').ASFLOAT        :=  STRTOFLOAT(FI_VALOR);
      query.ParamByName('SITUACAO').ASSTRING    :=  '1';
      query.ParamByName('DATA_PGTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
      query.ParamByName('VALOR_PAGO').ASFLOAT   :=  0;
      query.ParamByName('BORDERO').ASSTRING     :=  FI_BORDERO;
      query.ParamByName('PROPOSTA').ASSTRING    :=  FI_PROPOSTA;
      query.ParamByName('OBS').ASSTRING         :=  FI_OBS;
      query.ParamByName('CODVENDA').ASSTRING    :=  FI_VENDA;
      query.ExecSQL;

      blocalizarClick(frmfinanceira);
  end;
end;

procedure TfrmFinanceira.balterarClick(Sender: TObject);
VAR CODX : STRING;
begin
   if qrfinanceira.RecNo = 0 then exit;

   if qrfinanceira.fieldbyname('situacao').asinteger = 1 then
   begin
     fi_codigo := '';
     frmfinanceira_alterar := tfrmfinanceira_alterar.create(self);
     with frmfinanceira_alterar do
     begin
       DateEdit1.Date         := qrfinanceira.fieldbyname('data_pgto').asdatetime;
       Dateedit2.date         := qrfinanceira.fieldbyname('data').asdatetime;
       ed_cod_financeira.Text := qrfinanceira.fieldbyname('codbanco').asstring;
       ed_financeira.text     := qrfinanceira.fieldbyname('banco').asstring;
       ed_cod_cliente.text    := qrfinanceira.fieldbyname('codcliente').asstring;
       ed_cliente.text        := qrfinanceira.fieldbyname('nome').asstring;
       ed_valor.value         := qrfinanceira.fieldbyname('valor').asfloat;
       ed_obs.text            := qrfinanceira.fieldbyName('obs').asstring;
       ed_proposta.text       := qrfinanceira.fieldbyName('proposta').asstring;
       ed_bordero.text        := qrfinanceira.fieldbyName('bordero').asstring;
     end;


     frmfinanceira_alterar.showmodal;

      if fi_codigo <> '' then
      begin
          CODX := QRFINANCEIRA.FIELDBYNAME('CODIGO').ASSTRING;
          query.close;
          query.sql.clear;
          query.sql.add('update c000123 SET');
          query.sql.add('DATA_PGTO = :DATA_PGTO, BORDERO = :BORDERO, PROPOSTA = :PROPOSTA, OBS = :OBS, VALOR = :VALOR');
          query.SQL.add('where codigo = '''+qrfinanceira.fieldbyname('codigo').asstring+'''');

          query.ParamByName('DATA_PGTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
          query.ParamByName('BORDERO').ASSTRING     :=  FI_BORDERO;
          query.ParamByName('PROPOSTA').ASSTRING    :=  FI_PROPOSTA;
          query.ParamByName('OBS').ASSTRING         :=  FI_OBS;
          query.parambyname('VALOR').ASFLOAT        :=  STRTOFLOAT(FI_VALOR);
          query.ExecSQL;

          blocalizarClick(frmfinanceira);

          QRFINANCEIRA.Locate('CODIGO',CODX,[loCaseInsensitive]);
      end;




   end
   else
   begin
     application.messagebox('Este lançamento já foi baixado! Impossível alterá-lo!','Atenção',mb_yesno+mb_iconerror);
   end;
end;

procedure TfrmFinanceira.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Lançamento',4) then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('delete from c000123');
    query.sql.add('where codigo = '''+qrfinanceira.fieldbyname('codigo').asstring+'''');
    query.execsql;
    blocalizarClick(frmfinanceira);
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmFinanceira.bitbtn5Click(Sender: TObject);
begin
  FRMLISTA_FINANCEIRA := TFRMLISTA_FINANCEIRA.CREATE(SELF);
  FRMLISTA_FINANCEIRA.SHOWMODAL;
end;

procedure TfrmFinanceira.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmFinanceira.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmFinanceira.ed_cod_financeiraKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF ED_COD_FINANCEIRA.Text <> '' THEN
    BEGIN
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where financeira = 1 and');
      query.sql.add('numero = '''+ed_cod_financeira.Text+'''');
      query.open;

      if query.RecordCount >  0 then
      begin
        ed_financeira.Text := query.fieldbyname('banco').asstring;
        combo_periodo.setfocus;
      end
      else
      begin
        application.messagebox('Registro não encontrado!','Erro',mb_ok+mb_iconerror);
        ed_cod_financeira.setfocus;
        exit;
      end;

    END
    ELSE
    BEGIN
      ed_cod_financeiraButtonClick(frmFINANCEIRA);
    END;
  END;
end;

procedure TfrmFinanceira.ed_cod_financeiraButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_financeira := tfrmxloc_financeira.create(self);
  frmxloc_financeira.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_financeira.text := resultado_pesquisa1;
    ed_financeira.Text := resultado_pesquisa2;
    combo_periodo.setfocus;
  end
  else
  begin
    ed_cod_financeira.text := '';
    ed_financeira.Text := '';
    ed_cod_financeira.setfocus;
  end;
end;

procedure TfrmFinanceira.FormShow(Sender: TObject);
begin
  dateedit1.text := '01/01/1900';
  dateedit2.text := '31/12/2100';
  combo_situacao.ItemIndex := 1;
  combo_periodo.ItemIndex := 0;
  blocalizarclick(frmfinanceira);
end;

procedure TfrmFinanceira.blocalizarClick(Sender: TObject);
var i, q : real;
begin
  qrfinanceira.close;
  qrfinanceira.sql.clear;
  qrfinanceira.sql.add('select c000123.*,');
  qrfinanceira.sql.add('c000007.nome,');
  qrfinanceira.sql.add('c000013.banco');
  qrfinanceira.sql.add('from');
  qrfinanceira.sql.add('c000123,');
  qrfinanceira.sql.add('c000007,');
  qrfinanceira.sql.add('c000013');
  qrfinanceira.sql.add('where');
  qrfinanceira.sql.add('c000123.codcliente = c000007.codigo and');
  qrfinanceira.sql.add('c000123.codbanco = c000013.numero');
  if ed_cod_financeira.Text <> '' then
    qrfinanceira.SQL.Add('and c000123.codbanco = '''+ed_cod_financeira.Text+'''');
  if combo_situacao.ItemIndex = 1 then
     qrfinanceira.SQL.Add('and c000123.situacao = 1')
  else
    if combo_situacao.ItemIndex = 2 then
      qrfinanceira.SQL.add('and c000123.situacao = 2');

  if combo_periodo.ItemIndex = 0 then
    qrfinanceira.SQL.Add('and c000123.data_pgto between :datai and :dataf')
  else
    qrfinanceira.SQL.Add('and c000123.data between :datai and :dataf');
  qrfinanceira.sql.add('order by data');
  qrfinanceira.ParamByName('datai').asdatetime := dateedit1.date;
  qrfinanceira.ParamByName('dataf').asdatetime := dateedit2.date;
  qrfinanceira.open;

  i := 0;
  q := 0;
  qrfinanceira.first;
  while not qrfinanceira.eof do
  begin
    i := i + 1;
    q := q + qrfinanceira.fieldbyname('valor').asfloat;
    qrfinanceira.next;
  end;
  rqtde.value := i;
  rtotal.value := q;


  grid.setfocus;
end;

procedure TfrmFinanceira.combo_periodoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then DATEEDIT1.SETFOCUS;
end;

procedure TfrmFinanceira.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmFinanceira.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmFinanceira.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BLOCALIZAR.SETFOCUS;
end;

procedure TfrmFinanceira.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00C1FFFF;
end;

procedure TfrmFinanceira.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00C1FFFF;
end;

procedure TfrmFinanceira.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmFinanceira.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmFinanceira.bliquidarClick(Sender: TObject);
begin
   if qrfinanceira.RecNo = 0 then exit;

   if qrfinanceira.fieldbyname('situacao').asinteger = 1 then
   begin
     frmfinanceira_pgto := tfrmfinanceira_pgto.create(self);
     frmfinanceira_pgto.DateEdit1.date := Date;
     frmfinanceira_pgto.rvalor.value := qrfinanceira.fieldbyname('valor').asfloat;
     frmfinanceira_pgto.showmodal;
     blocalizarclick(frmfinanceira);
   end
   else
   begin
     if application.messagebox('Este lançamento já foi baixado! Deseja extornar a baixa?','Atenção',mb_yesno+mb_iconwarning) = idyes then
     begin
       query.close;
       query.sql.clear;
       query.sql.add('update c000123 set situacao = 1, valor_pago = 0');
       query.sql.add('where codigo = '''+qrfinanceira.fieldbyname('codigo').asstring+'''');
       query.execsql;
       blocalizarClick(frmfinanceira);
     end;
   end;
end;

procedure TfrmFinanceira.fxfinanceiraGetValue(const VarName: String;
  var Value: Variant);
begin
//  if CompareText(VarName, 'keila') = 0 then Value := 'PEDRO JOAQUIM';

end;

end.
