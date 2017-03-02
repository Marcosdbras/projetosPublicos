unit cartao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ToolEdit, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls,
  AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB, DBAccess, IBC, MemDS,
  DBCtrls, Menus, frxDesgn, frxClass, frxDBSet, frxIBXComponents, frxDCtrl,
  ImgList, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  TfrmCartao = class(TForm)
    Panel1: TPanel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label1: TLabel;
    ed_cod_cartao: TRzButtonEdit;
    ed_cartao: TRzEdit;
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
    qrcartao: TZQuery;
    dscartap: TDataSource;
    Panel3: TPanel;
    Bevel4: TBevel;
    Label5: TLabel;
    rqtde: TRzNumericEdit;
    Label6: TLabel;
    rtotal: TRzNumericEdit;
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
    query: TZQuery;
    bliquidar: TAdvGlowButton;
    Baixar1: TMenuItem;
    fxcartao: TfrxReport;
    fscartao: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fsConexao: TfrxIBXComponents;
    fsDialog: TfrxDialogControls;
    qrcartaoCODIGO: TStringField;
    qrcartaoCOD_VENDA: TStringField;
    qrcartaoBANCO: TStringField;
    qrcartaoCOD_CLIENTE: TStringField;
    qrcartaoDATA_VENDA: TDateTimeField;
    qrcartaoVALOR: TFloatField;
    qrcartaoCOMISSAO: TFloatField;
    qrcartaoLIQUIDO: TFloatField;
    qrcartaoDATA_RECEBIMENTO: TDateTimeField;
    qrcartaoDATA_BAIXA: TDateTimeField;
    qrcartaoSITUACAO: TStringField;
    qrcartaoTIPO: TStringField;
    qrcartaoPARCELA: TIntegerField;
    qrcartaoVALOR_TOTAL: TFloatField;
    qrcartaoNOME: TStringField;
    qrcartaoBANDEIRA: TStringField;
    ImageList1: TImageList;
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bitbtn5Click(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ed_cod_cartaoKeyPress(Sender: TObject; var Key: Char);
    procedure ed_cod_cartaoButtonClick(Sender: TObject);
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
    procedure fxcartaoBeforeConnect(Sender: TfrxCustomDatabase;
      var Connected: Boolean);
    procedure fxcartaoGetValue(const VarName: String;
      var Value: Variant);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCartao: TfrmCartao;

implementation

uses xloc_Cartao, modulo, principal, cartao_pgto, cartao_ficha,
  cartao_alterar, lista_cartao;

{$R *.dfm}

procedure TfrmCartao.bincluirClick(Sender: TObject);
begin
  fi_codigo := '';

  frmCartao_ficha := tfrmCartao_ficha.create(self);
  frmCartao_ficha.showmodal;

  if fi_codigo <> '' then
  begin
      query.close;
      query.sql.clear;
      query.sql.add('insert into c000124');
      query.sql.add('(codigo, cod_venda, banco, cod_cliente, data_venda, valor, comissao,');
      query.sql.add('liquido, data_recebimento, situacao, tipo, parcela, valor_total)');
      query.sql.Add('values');
      query.sql.add('(:codigo, :cod_venda, :banco, :cod_cliente, :data_venda, :valor, :comissao,');
      query.sql.add(':liquido, :data_recebimento, :situacao, :tipo, :parcela, :valor_total)');
      query.ParamByName('CODIGO').ASSTRING      :=  frmprincipal.codifica('000124');
      query.ParamByName('banco').ASSTRING       :=  FI_CODIGO;
      query.ParamByName('DATA_VENDA').ASDATETIME:=  STRTODATE(FI_DATA);
      query.ParamByName('cod_cliente').ASSTRING :=  FI_CLIENTE;
      query.ParamByName('VALOR').ASFLOAT        :=  STRTOFLOAT(FI_VALOR);
      query.ParamByName('VALOR_TOTAL').ASFLOAT  :=  STRTOFLOAT(FI_VALOR);
      query.ParamByName('SITUACAO').ASSTRING    :=  'ABERTO';
      query.ParamByName('DATA_RECEBIMENTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
      query.ParamByName('COMISSAO').ASFLOAT     :=  STRTOFLOAT(FI_COMISSAO);
      query.ParamByName('LIQUIDO').ASFLOAT      :=  STRTOFLOAT(FI_LIQUIDO);
      query.ParamByName('cod_venda').ASSTRING   :=  FI_VENDA;
      query.ParamByname('tipo').asstring        :=  fi_bordero;
      query.parambyname('parcela').asinteger    := strtoint(FI_PROPOSTA);
      query.ExecSQL;
      blocalizarClick(frmCartao);
  end;

end;

procedure TfrmCartao.balterarClick(Sender: TObject);
VAR CODX : STRING;
begin
   if qrCartao.RecNo = 0 then exit;

   if qrCartao.fieldbyname('situacao').asstring = 'ABERTO' then
   begin
     fi_codigo := '';
     frmCartao_alterar := tfrmCartao_alterar.create(self);
     with frmCartao_alterar do
     begin
       DateEdit1.Date         := qrCartao.fieldbyname('data_recebimento').asdatetime;
       Dateedit2.date         := qrCartao.fieldbyname('data_venda').asdatetime;
       ed_cod_Cartao.Text     := qrCartao.fieldbyname('banco').asstring;
       ed_Cartao.text         := qrCartao.fieldbyname('bandeira').asstring;
       ed_cod_cliente.text    := qrCartao.fieldbyname('cod_cliente').asstring;
       ed_cliente.text        := qrCartao.fieldbyname('nome').asstring;
       ed_valor.value         := qrCartao.fieldbyname('valor').asfloat;
       spin_parcela.intvalue  := qrCartao.fieldbyName('Parcela').asINTEGER;
       ed_venda.text          := qrCartao.fieldbyName('cod_venda').asstring;
       ed_comissao.value      := qrcartao.fieldbyname('comissao').asfloat;
       ed_liquido.value       := qrcartao.fieldbyname('liquido').asfloat;
       if qrcartao.fieldbyname('tipo').asstring = 'CREDITO' then cb_tipo.itemindex := 0
       else cb_tipo.itemindex := 1;
     end;


     frmCartao_alterar.showmodal;

      if fi_codigo <> '' then
      begin
          CODX := QRCartao.FIELDBYNAME('CODIGO').ASSTRING;
          query.close;
          query.sql.clear;
          query.sql.add('update c000124 SET');
          query.sql.add('COMISSaO = :COMISSAO, LIQUIDO = :LIQUIDO, DATA_RECEBIMENTO = :DATA_PGTO, TIPO = :TIPO, PARCELA = :PARCELA, VALOR = :VALOR');
          query.SQL.add('where codigo = '''+qrCartao.fieldbyname('codigo').asstring+'''');

          query.ParamByName('DATA_PGTO').ASDATETIME :=  STRTODATE(FI_VENCIMENTO);
          query.ParamByName('TIPO').ASSTRING     :=  FI_BORDERO;
          query.ParamByName('PARCELA').ASSTRING    :=  FI_PROPOSTA;
          query.parambyname('VALOR').ASFLOAT        :=  STRTOFLOAT(FI_VALOR);
          query.parambyname('COMISSAO').ASFLOAT        :=  STRTOFLOAT(FI_COMISSAO);
          query.parambyname('LIQUIDO').ASFLOAT        :=  STRTOFLOAT(FI_LIQUIDO);

          query.ExecSQL;

          blocalizarClick(frmCartao);

          QRCartao.Locate('CODIGO',CODX,[loCaseInsensitive]);
      end;




   end
   else
   begin
     application.messagebox('Este lançamento já foi baixado! Impossível alterá-lo!','Atenção',mb_yesno+mb_iconerror);
   end;


end;

procedure TfrmCartao.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Lançamento',4) then
  begin
    query.close;
    query.sql.clear;
    query.sql.add('delete from c000124');
    query.sql.add('where codigo = '''+qrCartao.fieldbyname('codigo').asstring+'''');
    query.execsql;
    blocalizarClick(frmCartao);
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmCartao.bitbtn5Click(Sender: TObject);
begin
  FRMLISTA_Cartao := TFRMLISTA_Cartao.CREATE(SELF);
  FRMLISTA_Cartao.SHOWMODAL;
end;

procedure TfrmCartao.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmCartao.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure TfrmCartao.ed_cod_cartaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN
  BEGIN
    IF ED_COD_Cartao.Text <> '' THEN
    BEGIN
      query.close;
      query.sql.clear;
      query.sql.add('select * from c000013 where CARTAO_CREDITO = 1 and');
      query.sql.add('numero = '''+ed_cod_Cartao.Text+'''');
      query.open;

      if query.RecordCount >  0 then
      begin
        ed_Cartao.Text := query.fieldbyname('banco').asstring;
        combo_periodo.setfocus;
      end
      else
      begin
        application.messagebox('Registro não encontrado!','Erro',mb_ok+mb_iconerror);
        ed_cod_Cartao.setfocus;
        exit;
      end;

    END
    ELSE
    BEGIN
      ed_cod_CartaoButtonClick(frmCartao);
    END;
  END;
end;

procedure TfrmCartao.ed_cod_cartaoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_Cartao := tfrmxloc_Cartao.create(self);
  frmxloc_Cartao.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    ed_cod_Cartao.text := resultado_pesquisa1;
    ed_Cartao.Text := resultado_pesquisa2;
    combo_periodo.setfocus;
  end
  else
  begin
    ed_cod_Cartao.text := '';
    ed_Cartao.Text := '';
    ed_cod_Cartao.setfocus;
  end;
end;

procedure TfrmCartao.FormShow(Sender: TObject);
begin
  dateedit1.text := '01/01/1900';
  dateedit2.text := '31/12/2100';
  combo_situacao.ItemIndex := 1;
  combo_periodo.ItemIndex := 0;
  blocalizarclick(frmCartao);
end;

procedure TfrmCartao.blocalizarClick(Sender: TObject);
var i, q : real;
begin
  qrCartao.close;
  qrCartao.sql.clear;
  qrCartao.sql.add('select c000124.*,');
  qrCartao.sql.add('c000007.nome,');
  qrCartao.sql.add('c000013.banco bandeira');
  qrCartao.sql.add('from');
  qrCartao.sql.add('c000124,');
  qrCartao.sql.add('c000007,');
  qrCartao.sql.add('c000013');
  qrCartao.sql.add('where');
  qrCartao.sql.add('c000124.cod_cliente = c000007.codigo and');
  qrCartao.sql.add('c000124.banco = c000013.numero');
  if ed_cod_Cartao.Text <> '' then
    qrCartao.SQL.Add('and c000124.banco = '''+ed_cod_Cartao.Text+'''');
  if combo_situacao.ItemIndex = 1 then
     qrCartao.SQL.Add('and c000124.situacao = ''ABERTO''')
  else
    if combo_situacao.ItemIndex = 2 then
      qrCartao.SQL.add('and c000124.situacao = ''BAIXADO''');

  if combo_periodo.ItemIndex = 0 then
    qrCartao.SQL.Add('and c000124.data_recebimento between :datai and :dataf');

  if combo_periodo.ItemIndex = 1 then
    qrCartao.SQL.Add('and c000124.data_venda between :datai and :dataf');

  if combo_periodo.ItemIndex = 2 then
    qrCartao.SQL.Add('and c000124.data_baixa between :datai and :dataf');


  qrCartao.sql.add('order by data_venda');
  qrCartao.ParamByName('datai').asdatetime := dateedit1.date;
  qrCartao.ParamByName('dataf').asdatetime := dateedit2.date;
  qrCartao.open;

  i := 0;
  q := 0;
  qrCartao.first;
  while not qrCartao.eof do
  begin
    i := i + 1;
    q := q + qrCartao.fieldbyname('liquido').asfloat;
    qrCartao.next;
  end;
  rqtde.value := i;
  rtotal.value := q;


  grid.setfocus;
end;

procedure TfrmCartao.combo_periodoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then DATEEDIT1.SETFOCUS;
end;

procedure TfrmCartao.DateEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmCartao.DateEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmCartao.combo_situacaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BLOCALIZAR.SETFOCUS;
end;

procedure TfrmCartao.DateEdit1Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00C1FFFF;
end;

procedure TfrmCartao.DateEdit2Enter(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := $00C1FFFF;
end;

procedure TfrmCartao.DateEdit1Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmCartao.DateEdit2Exit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure TfrmCartao.bliquidarClick(Sender: TObject);
begin
   if qrCartao.RecNo = 0 then exit;

   if qrCartao.fieldbyname('situacao').asSTRING =  'ABERTO' then
   begin
     frmCartao_pgto := tfrmCartao_pgto.create(self);
     frmCartao_pgto.DateEdit1.date := Date;
     frmCartao_pgto.rvalor.value := qrCartao.fieldbyname('liquido').asfloat;
     frmCartao_pgto.showmodal;
     blocalizarclick(frmCartao);
   end
   else
   begin
     if application.messagebox('Este lançamento já foi baixado! Deseja extornar a baixa?','Atenção',mb_yesno+mb_iconwarning) = idyes then
     begin
       query.close;
       query.sql.clear;
       query.sql.add('update c000124 set situacao = ''ABERTO''');
       query.sql.add('where codigo = '''+qrCartao.fieldbyname('codigo').asstring+'''');
       query.execsql;
       blocalizarClick(frmCartao);
     end;
   end;
end;

procedure TfrmCartao.fxcartaoBeforeConnect(
  Sender: TfrxCustomDatabase; var Connected: Boolean);
begin
  sender.DatabaseName := 'c:\arquivos de programas\cia\bd\base.fdb';
end;

procedure TfrmCartao.fxcartaoGetValue(const VarName: String;
  var Value: Variant);
begin
//  if CompareText(VarName, 'keila') = 0 then Value := 'PEDRO JOAQUIM';

end;

end.
