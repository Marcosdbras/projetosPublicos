unit baixa_estoque;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, ToolEdit, RXDBCtrl, StdCtrls, Mask,
  DBCtrls, Collection, Buttons, Grids, Wwdbigrd, Wwdbgrid, PageView, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, wwdblook, wwdbedit,
  CurrEdit, RXCtrls, Menus, RpDefine, RpCon, RpConDS, Wwdotdot, Wwdbcomb,
  AdvGlowButton, AdvShapeButton, frxDesgn, frxClass, frxDBSet;

type
  Tfrmbaixa_estoque = class(TForm)
    dsorcamento: TDataSource;
    dsorcamento_produto: TDataSource;
    comboproduto: TwwDBLookupCombo;
    eunitario: TwwDBEdit;
    popnormal: TPopupMenu;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    ViewSplit2: TViewSplit;
    ViewSplit4: TViewSplit;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    ecliente: TDBEdit;
    bloccliente: TBitBtn;
    enomecliente: TDBEdit;
    evendedor: TDBEdit;
    blocvendedor: TBitBtn;
    DBEdit5: TDBEdit;
    Panel1: TPanel;
    Incluir1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel3: TPanel;
    Label8: TLabel;
    rtotal: TRxDBCalcEdit;
    ExcluirProduto1: TMenuItem;
    eproduto: TwwDBEdit;
    eqtde: TwwDBEdit;
    eacrescimo: TwwDBEdit;
    edesconto: TwwDBEdit;
    etotal: TwwDBEdit;
    qritem_baixa_produtos: TZQuery;
    qritem_baixa_produtosCODPRODUTO: TStringField;
    qritem_baixa_produtosPRODUTO: TStringField;
    qritem_baixa_produtosUNIDADE: TStringField;
    qritem_baixa_produtosQTDE: TFloatField;
    qritem_baixa_produtosUNITARIO: TFloatField;
    qritem_baixa_produtosDESCONTO: TFloatField;
    qritem_baixa_produtosACRESCIMO: TFloatField;
    qritem_baixa_produtosTOTAL: TFloatField;
    qritem_baixa_produtosCODORCAMENTO: TStringField;
    Label9: TLabel;
    Bevel1: TBevel;
    Panel4: TPanel;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel5: TPanel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    Label10: TLabel;
    Label5: TLabel;
    Panel6: TPanel;
    bincluir: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn7: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel10: TBevel;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    Bevel5: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    wwdbComboBox1: TComboBox;
    qrproduto: TZQuery;
    fxorcamento: TfrxReport;
    fsorcamento: TfrxDBDataset;
    fxdesenhar: TfrxDesigner;
    fsitembaixa_produtos: TfrxDBDataset;
    fsorcamento_cliente: TfrxDBDataset;
    procedure qritem_baixa_produtosBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure blocclienteClick(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure blocvendedorClick(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipobaixaEnter(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure comboprodutoExit(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure qritem_baixa_produtosBeforeInsert(DataSet: TDataSet);
    procedure qritem_baixa_produtosBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qritem_baixa_produtosBeforeDelete(DataSet: TDataSet);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure eacrescimoExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure qritem_baixa_produtosAfterInsert(DataSet: TDataSet);
    procedure dsorcamentoDataChange(Sender: TObject; Field: TField);
    procedure wwdbComboBox1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmbaixa_estoque: Tfrmbaixa_estoque;
  valor_anterior : real;
  codigo_orcamento : string;

implementation

uses modulo, loc_cliente, principal, loc_funci, Math, orcamento_impressao,
  orcamento_localizar, orcamento, baixaestoque_impressao, xloc_cliente,
  baixa_localizar;

{$R *.dfm}

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforePost(DataSet: TDataSet);
begin
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat :=
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat +
  qritem_baixa_produtos.fieldbyname('total').asfloat -
  valor_anterior;

  frmmodulo.qrbaixa_produtos.fieldbyname('total').asfloat :=
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat +
  frmmodulo.qrbaixa_produtos.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrbaixa_produtos.fieldbyname('desconto').asfloat ;

  qritem_baixa_produtos.FieldByName('codorcamento').asstring :=
  frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring;

  
end;

procedure Tfrmbaixa_estoque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FRMMODULO.qrbaixa_produtos.close;
  ACTION := CAFREE;
end;

procedure Tfrmbaixa_estoque.FormShow(Sender: TObject);
begin
  pgravar.Align := alClient;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  //frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.SQL.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 order by nome');
  frmmodulo.qrfunci.open;
  //frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 order by produto');
  frmmodulo.qrproduto.open;
  //frmmodulo.qrproduto.indexfieldnames := 'produto';

  qrproduto.open;
  qrproduto.IndexFieldNames := 'produto';

  frmmodulo.qrbaixa_produtos.close;
  frmmodulo.qrbaixa_produtos.SQL.Clear;
  frmmodulo.qrbaixa_produtos.SQL.Add('select * from c000096 order by codigo');
  frmmodulo.qrbaixa_produtos.open;
  //frmmodulo.qrbaixa_produtos.indexfieldnames := 'codigo';

  if frmmodulo.qrbaixa_produtos.FieldByName('codigo').AsString <> '' then
    begin
      qritem_baixa_produtos.close;
      qritem_baixa_produtos.sql.clear;
      qritem_baixa_produtos.sql.Add('select * from c000097 where codorcamento = '''+frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring+'''');
      qritem_baixa_produtos.Open;
    end
  else
    begin
      qritem_baixa_produtos.close;
      qritem_baixa_produtos.sql.clear;
      qritem_baixa_produtos.sql.Add('select * from c000097');
      qritem_baixa_produtos.Open;
    end;

  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 0 THEN wwDBComboBox1.Text := 'INSTALAÇÃO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 1 THEN wwDBComboBox1.Text := 'GARANTIA DE SERVIÇO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 2 THEN wwDBComboBox1.Text := 'SAIDA PARA OFICINA';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 3 THEN wwDBComboBox1.Text := 'DOAÇÃO';

  bincluir.SetFocus;

end;

procedure Tfrmbaixa_estoque.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin

  if key = #13 then perform(wm_nextdlgctl,0,0);



end;

procedure Tfrmbaixa_estoque.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
  if dbdateedit1.text = '  /  /    ' then dbdateedit1.Date := date;
end;

procedure Tfrmbaixa_estoque.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrbaixa_produtos.Insert;
  frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring := frmprincipal.codifica('000096');
  wwdbComboBox1.ITEMINDEX := 0;
  pficha.Enabled := true;
  frmbaixa_estoque.PopupMenu := popedicao;
  pgravar.visible := true;
  DBDateEdit1.SetFocus;
end;

procedure Tfrmbaixa_estoque.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmbaixa_estoque.blocclienteClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;

  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
    frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring := frmmodulo.qrcliente.fieldbyname('codigo').asstring;
    evendedor.setfocus;
  end
  else
    ecliente.setfocus;
end;

procedure Tfrmbaixa_estoque.eclienteExit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrbaixa_produtos.state = dsinsert) or (frmmodulo.qrbaixa_produtos.State = dsedit) then
  begin
    frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.text,6);
    if ecliente.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrcliente,ecliente.text,'codigo') then
      BEGIN
        blocclienteclick(frmbaixa_estoque);
      END
      else
        evendedor.SetFocus;
    END
    else
    BEGIN
      bloccliente.SetFocus;
    END;
  end;
end;

procedure Tfrmbaixa_estoque.evendedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrbaixa_produtos.state = dsinsert) or (frmmodulo.qrbaixa_produtos.State = dsedit) then
  begin
    frmmodulo.qrbaixa_produtos.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(evendedor.text,6);
    if evendedor.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,evendedor.text,'codigo') then
      BEGIN
        blocvendedorclick(frmbaixa_estoque);
      END
      else
        wwdbgrid1.SetFocus;
    END
    else
    BEGIN
      blocvendedor.SetFocus;
    END;
  end;
end;

procedure Tfrmbaixa_estoque.blocvendedorClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrbaixa_produtos.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  wwdbgrid1.SetFocus;
end;

procedure Tfrmbaixa_estoque.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      wwdbgrid1.setfocus;
    end;
end;

procedure Tfrmbaixa_estoque.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmbaixa_estoque.bgravarClick(Sender: TObject);
var
  item : integer;
begin




  if (frmmodulo.qrbaixa_produtos.State = dsinsert) or (frmmodulo.qrbaixa_produtos.State = dsedit) then
    FRMMODULO.qrbaixa_produtos.FieldByName('TIPO').ASINTEGER := wwDBComboBox1.ItemIndex+1;

  frmmodulo.qrbaixa_produtos.Post;

  pgravar.Visible := false;
  frmbaixa_estoque.PopupMenu := popnormal;
  pficha.Enabled := false;  

  FRMMODULO.QRPRODUTO_MOV.CLOSE;
  FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
  FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
  FRMMODULO.QRPRODUTO_MOV.OPEN;

  item := 1;
  qritem_baixa_produtos.first;
  while not qritem_baixa_produtos.eof do
    begin
      frmmodulo.qrproduto_mov.Insert;
      frmmodulo.qrproduto_mov.FieldByName('codigo').AsString := qritem_baixa_produtos.FIELDBYNAME('CODORCAMENTO').ASSTRING;
      frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString := frmmodulo.qrbaixa_produtos.fieldbyname('CODIGO').asstring+'BE';
      frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString := FRMPRINCIPAL.zerarcodigo(INTTOSTR(ITEM),3);
      frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString := frmmodulo.qrbaixa_produtos.fieldbyname('CODIGO').asstring;
      frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring := qritem_baixa_produtos.fieldbyname('codproduto').asstring;
      frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := qritem_baixa_produtos.fieldbyname('qtde').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat := qritem_baixa_produtos.fieldbyname('unitario').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('total').asfloat := qritem_baixa_produtos.fieldbyname('total').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('desconto').asfloat := qritem_baixa_produtos.fieldbyname('desconto').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring := qritem_baixa_produtos.fieldbyname('unidade').AsString;
      frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT := 0; //qritem_baixa_produtos.fieldbyname('ICMS').asFLOAT;
      frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
      frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString := frmmodulo.qrbaixa_produtos.fieldbyname('codCLIENTE').asstring;
      frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString := frmmodulo.qrbaixa_produtos.fieldbyname('codVENDEDOR').asstring;

      IF wwDBComboBox1.ItemIndex = 0 THEN
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 17; // INSTALAÇÃO

      IF wwDBComboBox1.ItemIndex = 1 THEN
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 18; // GARANTIA DE SERVIÇO

      IF wwDBComboBox1.ItemIndex = 2 THEN
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 19; // SAIDA PARA OFICINA

      IF wwDBComboBox1.ItemIndex = 3 THEN
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 20; // DOAÇÃO

      IF wwDBComboBox1.ItemIndex = 4 THEN
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER := 17; // TRANSFERENCIA



      frmmodulo.qrproduto_mov.FieldByName('data').asstring := FRMMODULO.qrbaixa_produtos.FIELDBYNAME('DATA').ASSTRING;
      frmmodulo.qrproduto_mov.Post;

      ITEM := ITEM + 1;
      qritem_baixa_produtos.next;
  end;

  frmmodulo.Conexao.Commit;

  if application.messagebox('Deseja imprimir esta Baixa?','Aviso',mb_yesno+MB_ICONQUESTION) = idyes then
  begin
   BitBtn7Click(frmbaixa_estoque);
  end;

  frmmodulo.qrbaixa_produtos.Refresh;
  frmmodulo.qrbaixa_produtos.Last;

  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 0 THEN wwDBComboBox1.Text := 'INSTALAÇÃO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 1 THEN wwDBComboBox1.Text := 'GARANTIA DE SERVIÇO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 2 THEN wwDBComboBox1.Text := 'SAIDA PARA OFICINA';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 3 THEN wwDBComboBox1.Text := 'DOAÇÃO';

end;

procedure Tfrmbaixa_estoque.bcancelarClick(Sender: TObject);
begin
  frmmodulo.qrbaixa_produtos.cancel;
  qritem_baixa_produtos.cancel;
  frmmodulo.Conexao.Rollback;


  pgravar.Visible := false;
  frmbaixa_estoque.PopupMenu := popnormal;
  pficha.Enabled := false;



  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 0 THEN wwDBComboBox1.Text := 'INSTALAÇÃO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 1 THEN wwDBComboBox1.Text := 'GARANTIA DE SERVIÇO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 2 THEN wwDBComboBox1.Text := 'SAIDA PARA OFICINA';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 3 THEN wwDBComboBox1.Text := 'DOAÇÃO';

end;

procedure Tfrmbaixa_estoque.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Baixa Estoque',4) then
  begin


    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODNOTA = '''+frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring+'BE''');
    FRMMODULO.QRPRODUTO_MOV.EXECSQL;




    qritem_baixa_produtos.close;
    qritem_baixa_produtos.sql.clear;
    qritem_baixa_produtos.sql.Add('delete from c000097 where codorcamento = '''+frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring+'''');
    qritem_baixa_produtos.execsql;

    frmmodulo.qrbaixa_produtos.Delete;
    frmmodulo.Conexao.commit;
    qritem_baixa_produtos.close;
    qritem_baixa_produtos.sql.clear;
    qritem_baixa_produtos.sql.Add('select * from c000097 where codorcamento = '''+frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring+'''');
    qritem_baixa_produtos.Open;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmbaixa_estoque.BitBtn7Click(Sender: TObject);
begin

//   frmbaixaestoque_impressao := Tfrmbaixaestoque_impressao.create(self);
  frmmodulo.qrcliente.locate('codigo',frmmodulo.qrbaixa_produtos.fieldbyname('codcliente').asstring,[loCaseInsensitive]);
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;
  if frmbaixa_estoque.qritem_baixa_produtos.RecordCount > 28 then
  frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '2'
  else
  frmmodulo.qrrelatorio.FieldByName('linha8').asstring := '1';
  frmmodulo.qrrelatorio.post;

  fxorcamento.LoadFromFile('\DATASAC\server\rel\f000069_2.fr3');
  fxorcamento.ShowReport;


//   frmbaixaestoque_impressao.showmodal;

end;

procedure Tfrmbaixa_estoque.DBEdit1Change(Sender: TObject);
begin
  try
    qritem_baixa_produtos.close;
    if frmmodulo.qrbaixa_produtos.FieldByName('codigo').AsString <> '' then
    begin
      qritem_baixa_produtos.sql.clear;
      qritem_baixa_produtos.sql.Add('select * from c000097 where codorcamento = '''+frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring+'''');
      qritem_baixa_produtos.Open;

      wwdbcombobox1.ItemIndex :=  frmmodulo.qrbaixa_produtos.fieldbyname('tipo').asinteger - 1;

    end;

  except
  end;
end;

procedure Tfrmbaixa_estoque.blocalizarClick(Sender: TObject);
begin
  codigo_orcamento := '';

  frmbaixa_localizar := tfrmbaixa_localizar.create(self);
  frmbaixa_localizar.showmodal;

  if codigo_orcamento <> '' then
  frmmodulo.qrbaixa_produtos.Locate('codigo',codigo_orcamento,[loCaseInsensitive]);

end;

procedure Tfrmbaixa_estoque.wwDBGrid1Enter(Sender: TObject);
begin
  FinalizarEdio1.Enabled := true;
  ExcluirProduto1.Enabled := true;
end;

procedure Tfrmbaixa_estoque.wwDBGrid1Exit(Sender: TObject);
begin
  FinalizarEdio1.Enabled := false;
  ExcluirProduto1.Enabled := false;
end;

procedure Tfrmbaixa_estoque.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmbaixa_estoque.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmbaixa_estoque.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmbaixa_estoque.combo_tipobaixaEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    IF KEY = #13 THEN
    begin
      dbedit2.setfocus;
    end;
end;

procedure Tfrmbaixa_estoque.eclienteEnter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.evendedorEnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A0FAF8;
end;

procedure Tfrmbaixa_estoque.comboprodutoExit(Sender: TObject);
begin
  if comboproduto.Text <> '' then
  begin
    if frmmodulo.qrproduto.Locate('produto',comboproduto.Text,[loPartialKey]) then
    begin
      qritem_baixa_produtos.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
      qritem_baixa_produtos.fieldbyname('UNIDADE').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
      qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
      qritem_baixa_produtos.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
      qritem_baixa_produtos.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
    end
    else
    begin
      qritem_baixa_produtos.fieldbyname('codproduto').asstring := '999999';
      qritem_baixa_produtos.fieldbyname('UNIDADE').asstring := 'UN';
      qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
      qritem_baixa_produtos.fieldbyname('unitario').asfloat := 0;
      qritem_baixa_produtos.fieldbyname('total').asfloat := 0;

    end;
  end;
end;

procedure Tfrmbaixa_estoque.eprodutoExit(Sender: TObject);
begin
  if Eproduto.Text <> '' then
  begin
    qritem_baixa_produtos.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text,6);
    if frmmodulo.qrproduto.Locate('codigo',eproduto.Text,[loCaseInsensitive]) then
    begin
      qritem_baixa_produtos.fieldbyname('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').asstring;
      qritem_baixa_produtos.fieldbyname('UNIDADE').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
      qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
      qritem_baixa_produtos.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
      qritem_baixa_produtos.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

    end
    else
    begin
      if frmmodulo.qrproduto.Locate('codbarra',eproduto.Text,[loCaseInsensitive]) then
      begin
        qritem_baixa_produtos.fieldbyname('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').asstring;
        qritem_baixa_produtos.fieldbyname('UNIDADE').asstring := frmmodulo.qrproduto.fieldbyname('UNIDADE').asstring;
        qritem_baixa_produtos.fieldbyname('qtde').asfloat := 1;
        qritem_baixa_produtos.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
        qritem_baixa_produtos.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;
      end
      else
      begin
        application.MessageBox('Produto não cadastrado!','Atenção',mb_ok+MB_ICONWARNING );
        eproduto.Text := '';
      end;
    end;
  end;
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforeInsert(DataSet: TDataSet);
begin

  valor_anterior := 0;
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qritem_baixa_produtos.fieldbyname('total').asfloat;
end;

procedure Tfrmbaixa_estoque.BitBtn2Click(Sender: TObject);
begin
  if (qritem_baixa_produtos.State = dsedit) or (qritem_baixa_produtos.State = dsinsert) then
  begin

  end
  else
  begin
    if application.messagebox('Tem certeza que deseja excluir este item?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
    begin



      qritem_baixa_produtos.Delete;
    end;
  end;
end;

procedure Tfrmbaixa_estoque.BitBtn1Click(Sender: TObject);
begin
  dbedit2.setfocus;
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosBeforeDelete(DataSet: TDataSet);
begin
    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODNOTA = '''+frmmodulo.qrbaixa_produtos.fieldbyname('codigo').asstring+'BE'' and codproduto = '''+qritem_baixa_produtos.fieldbyname('codproduto').asstring+'''');
    FRMMODULO.QRPRODUTO_MOV.EXECSQL;


  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat :=
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat -
  qritem_baixa_produtos.fieldbyname('total').asfloat;

  frmmodulo.qrbaixa_produtos.fieldbyname('total').asfloat :=
  frmmodulo.qrbaixa_produtos.fieldbyname('subtotal').asfloat +
  frmmodulo.qrbaixa_produtos.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrbaixa_produtos.fieldbyname('desconto').asfloat ;

end;

procedure Tfrmbaixa_estoque.eqtdeExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.State = dsedit) or (qritem_baixa_produtos.State = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
    (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
    qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
    qritem_baixa_produtos.fieldbyname('desconto').asfloat +
    qritem_baixa_produtos.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmbaixa_estoque.eunitarioExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.State = dsedit) or (qritem_baixa_produtos.State = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
    (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
    qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
    qritem_baixa_produtos.fieldbyname('desconto').asfloat +
    qritem_baixa_produtos.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmbaixa_estoque.edescontoExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.State = dsedit) or (qritem_baixa_produtos.State = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
    (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
    qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
    qritem_baixa_produtos.fieldbyname('desconto').asfloat +
    qritem_baixa_produtos.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure Tfrmbaixa_estoque.eacrescimoExit(Sender: TObject);
begin
  if (qritem_baixa_produtos.State = dsedit) or (qritem_baixa_produtos.State = dsinsert) then
  begin
    qritem_baixa_produtos.fieldbyname('total').asfloat :=
    (qritem_baixa_produtos.fieldbyname('qtde').asfloat *
    qritem_baixa_produtos.fieldbyname('unitario').asfloat) -
    qritem_baixa_produtos.fieldbyname('desconto').asfloat +
    qritem_baixa_produtos.fieldbyname('acrescimo').asfloat ;
  end;

end;

procedure Tfrmbaixa_estoque.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmbaixa_estoque.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmbaixa_estoque.qritem_baixa_produtosAfterInsert(
  DataSet: TDataSet);
begin
  qritem_baixa_produtos.FieldByName('codigo').AsString := frmprincipal.codifica('000097');
end;

procedure Tfrmbaixa_estoque.dsorcamentoDataChange(Sender: TObject;
  Field: TField);
begin
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 0 THEN wwDBComboBox1.Text := 'INSTALAÇÃO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 1 THEN wwDBComboBox1.Text := 'GARANTIA DE SERVIÇO';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 2 THEN wwDBComboBox1.Text := 'SAIDA PARA OFICINA';
  IF FRMMODULO.qrbaixa_produtos.FIELDBYNAME('tipo').AsInteger = 3 THEN wwDBComboBox1.Text := 'DOAÇÃO';
end;

procedure Tfrmbaixa_estoque.wwdbComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then ecliente.setfocus;
end;

end.
