unit orcamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, TFlatPanelUnit, rxtooledit, RXDBCtrl, StdCtrls, Mask,
  DBCtrls, Collection, Buttons, Grids, Wwdbigrd, Wwdbgrid, PageView, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, wwdblook, wwdbedit,
  rxcurredit, RXCtrls, Menus, RpDefine, RpCon, RpConDS, RzEdit, RzDBEdit,
  RzDBBnEd, AdvShapeButton, AdvGlowButton, MemDS, DBAccess, IBC;

type
  TfrmOrcamento = class(TForm)
    dsorcamento: TDataSource;
    qrorcamento_produto: TZQuery;
    dsorcamento_produto: TDataSource;
    qrorcamento_produtoCODPRODUTO: TStringField;
    qrorcamento_produtoPRODUTO: TStringField;
    qrorcamento_produtoUNIDADE: TStringField;
    qrorcamento_produtoQTDE: TFloatField;
    qrorcamento_produtoUNITARIO: TFloatField;
    qrorcamento_produtoDESCONTO: TFloatField;
    qrorcamento_produtoACRESCIMO: TFloatField;
    qrorcamento_produtoTOTAL: TFloatField;
    qrorcamento_produtoCODORCAMENTO: TStringField;
    eproduto: TwwDBEdit;
    eqtde: TwwDBEdit;
    eunitario: TwwDBEdit;
    edesconto: TwwDBEdit;
    eacrescimo: TwwDBEdit;
    etotal: TwwDBEdit;
    popnormal: TPopupMenu;
    popedicao: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    pficha: TPanel;
    ViewSplit2: TViewSplit;
    ViewSplit4: TViewSplit;
    Panel1: TPanel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    rsubtotal: TRxDBCalcEdit;
    rdesconto: TRxDBCalcEdit;
    racrescimo: TRxDBCalcEdit;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Relatrios1: TMenuItem;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    FinalizarEdio1: TMenuItem;
    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit6: TDBEdit;
    FlatPanel3: TFlatPanel;
    Label9: TLabel;
    Label10: TLabel;
    combocondpgto: TwwDBLookupCombo;
    rqtde: TRxCalcEdit;
    wwDBGrid2: TwwDBGrid;
    combotipo: TwwDBLookupCombo;
    dsorcamento_contasreceber: TDataSource;
    qrorcamento_contasreceber: TZQuery;
    qrorcamento_contasreceberCODORCAMENTO: TStringField;
    qrorcamento_contasreceberPRESTACAO: TIntegerField;
    qrorcamento_contasreceberVALOR: TFloatField;
    qrorcamento_contasreceberDOCUMENTO: TStringField;
    qrorcamento_contasreceberTIPO: TStringField;
    Panel3: TPanel;
    Label8: TLabel;
    rtotal: TRxDBCalcEdit;
    ExcluirProduto1: TMenuItem;
    qrorcamento_contasreceberVENCIMENTO: TDateTimeField;
    rdesconto1: TRxCalcEdit;
    Bevel2: TBevel;
    Bevel3: TBevel;
    Panel6: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
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
    Bevel4: TBevel;
    Panel4: TPanel;
    Bevel5: TBevel;
    AdvShapeButton1: TAdvShapeButton;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DBEdit1: TDBEdit;
    DBDateEdit1: TDBDateEdit;
    enomecliente: TDBEdit;
    ecliente: TRzDBButtonEdit;
    evendedor: TRzDBButtonEdit;
    DBEdit5: TDBEdit;
    Bevel1: TBevel;
    comboproduto: TwwDBLookupCombo;
    racrescimo1: TRxCalcEdit;
    QRPRODUTO: TZQuery;
    QRPRODUTOCODIGO: TStringField;
    QRPRODUTOCODBARRA: TStringField;
    QRPRODUTOPRODUTO: TStringField;
    QRPRODUTOUNIDADE: TStringField;
    QRPRODUTOPRECOVENDA: TFloatField;
    babrir: TAdvGlowButton;
    OramentoPDV1: TMenuItem;
    qrorcamento_produtoestoque: TFloatField;
    qrestoque: TZQuery;
    DBEdit7: TDBEdit;
    Label1: TLabel;
    QRPRODUTOestoque: TFloatField;
    procedure qrorcamento_produtoBeforePost(DataSet: TDataSet);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DBDateEdit1Enter(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure DBDateEdit1Exit(Sender: TObject);
    procedure evendedorExit(Sender: TObject);
    procedure evendedorKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure rdescontoEnter(Sender: TObject);
    procedure rdescontoExit(Sender: TObject);
    procedure rdescontoKeyPress(Sender: TObject; var Key: Char);
    procedure racrescimoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Enter(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit6KeyPress(Sender: TObject; var Key: Char);
    procedure combocondpgtoEnter(Sender: TObject);
    procedure combocondpgtoExit(Sender: TObject);
    procedure rqtdeExit(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure eclienteEnter(Sender: TObject);
    procedure evendedorEnter(Sender: TObject);
    procedure comboprodutoExit(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure qrorcamento_produtoBeforeInsert(DataSet: TDataSet);
    procedure qrorcamento_produtoBeforeEdit(DataSet: TDataSet);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrorcamento_produtoBeforeDelete(DataSet: TDataSet);
    procedure eqtdeExit(Sender: TObject);
    procedure eunitarioExit(Sender: TObject);
    procedure edescontoExit(Sender: TObject);
    procedure eacrescimoExit(Sender: TObject);
    procedure rqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1KeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Exit(Sender: TObject);
    procedure eclienteButtonClick(Sender: TObject);
    procedure evendedorButtonClick(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure rdesconto1Enter(Sender: TObject);
    procedure racrescimo1Exit(Sender: TObject);
    procedure racrescimoExit(Sender: TObject);
    procedure babrirClick(Sender: TObject);
    procedure qrorcamento_produtoCalcFields(DataSet: TDataSet);
    procedure QRPRODUTOCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmOrcamento: TfrmOrcamento;
  valor_anterior : real;
  codigo_orcamento : string;

implementation

uses modulo, loc_cliente, principal, loc_funci, Math, orcamento_impressao,
  orcamento_localizar, xloc_cliente, orcamento_abrir;

{$R *.dfm}

procedure TfrmOrcamento.qrorcamento_produtoBeforePost(DataSet: TDataSet);
begin
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  qrorcamento_produto.fieldbyname('total').asfloat -
  valor_anterior;

  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrorcamento.fieldbyname('desconto').asfloat ;



  qrorcamento_produto.FieldByName('codorcamento').asstring :=
  frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
end;

procedure TfrmOrcamento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  ACTION := CAFREE;
end;

procedure TfrmOrcamento.FormShow(Sender: TObject);
begin
  pgravar.Align := alClient;

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.sql.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.SQL.clear;
  frmmodulo.qrfunci.sql.add('select * from c000008 order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrformapgto.Open;

  qrproduto.open;

  frmmodulo.qrorcamento.close;
  frmmodulo.qrorcamento.SQL.Clear;
  frmmodulo.qrorcamento.SQL.Add('select * from c000056 order by codigo');
  frmmodulo.qrorcamento.open;
  frmmodulo.qrorcamento.indexfieldnames := 'codigo';

  frmmodulo.qrcondpgto.close;
  frmmodulo.qrcondpgto.sql.clear;
  frmmodulo.qrcondpgto.sql.add('select * from c000015 order by condpgto');
  frmmodulo.qrcondpgto.Open;
  frmmodulo.qrcondpgto.IndexFieldNames := 'condpgto';

  qrorcamento_produto.close;
  qrorcamento_contasreceber.Close;
  if frmmodulo.qrorcamento.FieldByName('codigo').AsString <> '' then
  begin
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.sql.Add('select * from c000057 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_produto.Open;

    qrorcamento_contasreceber.sql.clear;
    qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+''' order by prestacao');
    qrorcamento_contasreceber.Open;


  end;

end;

procedure TfrmOrcamento.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure TfrmOrcamento.DBDateEdit1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
  if dbdateedit1.text = '  /  /    ' then dbdateedit1.Date := date;

end;

procedure TfrmOrcamento.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrorcamento.insert;
  frmmodulo.qrorcamento.fieldbyname('codigo').asstring := frmprincipal.codifica('000056');
  pficha.Enabled := true;
  frmOrcamento.PopupMenu := popedicao;
  pgravar.visible := true;
  if pficha.enabled then ecliente.setfocus;
end;

procedure TfrmOrcamento.DBDateEdit1Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmOrcamento.evendedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrorcamento.state = dsinsert) or (frmmodulo.qrorcamento.State = dsedit) then
  begin
     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
     frmmodulo.qrfunci.open;

    frmmodulo.qrorcamento.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(evendedor.text,6);
    if evendedor.text <> '000000' then
    BEGIN
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,evendedor.text,'codigo') then
      BEGIN
        evendedorbuttonclick(frmorcamento);
      END
      else
      begin
        if pficha.enabled then  wwdbgrid1.SetFocus;
      end;
    END
    else
    BEGIN
        evendedorbuttonclick(frmorcamento);
    END;
  end;
end;

procedure TfrmOrcamento.evendedorKeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
  begin
    if pficha.enabled then wwdbgrid1.setfocus;
  end;
end;

procedure TfrmOrcamento.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure TfrmOrcamento.bgravarClick(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
  pgravar.Visible := false;
  frmOrcamento.PopupMenu := popnormal;
  pficha.Enabled := false;
  frmmodulo.qrorcamento.Post;



  frmmodulo.Conexao.Commit;
  if application.messagebox('Deseja imprimir este orçamento?','Aviso',mb_yesno+MB_ICONQUESTION) = idyes then
  begin
    frmmodulo.qrcliente.locate('codigo',frmmodulo.qrorcamento.fieldbyname('codcliente').asstring,[loCaseInsensitive]);
    frmorcamento_impressao := tfrmorcamento_impressao.create(self);
    frmorcamento_impressao.showmodal;
  end;

end;

procedure TfrmOrcamento.bcancelarClick(Sender: TObject);
begin
   PageView1.ActivePageIndex := 0;
  pgravar.Visible := false;
  frmOrcamento.PopupMenu := popnormal;
  pficha.Enabled := false;
  frmmodulo.qrorcamento.cancel;
  frmmodulo.Conexao.Rollback;
end;

procedure TfrmOrcamento.balterarClick(Sender: TObject);
begin
  frmmodulo.qrorcamento.edit;
  pficha.Enabled := true;
  frmOrcamento.PopupMenu := popedicao;
  pgravar.Visible := true;
  if pficha.enabled then 
  ecliente.setfocus;

end;

procedure TfrmOrcamento.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Orçamento',4) then
  begin
    qrorcamento_produto.close;
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.sql.Add('delete from c000057 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_produto.execsql;

    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.sql.clear;
    qrorcamento_contasreceber.sql.Add('delete from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_contasreceber.execsql;


    frmmodulo.qrorcamento.Delete;
    frmmodulo.Conexao.commit;
    qrorcamento_produto.close;
    qrorcamento_produto.sql.clear;
    qrorcamento_produto.sql.Add('select * from c000057 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
    qrorcamento_produto.Open;

    qrorcamento_contasreceber.close;
    qrorcamento_contasreceber.sql.clear;
    qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+''' order by prestacao');
    qrorcamento_contasreceber.Open;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmOrcamento.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.prior;
end;

procedure TfrmOrcamento.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.first;
end;

procedure TfrmOrcamento.BitBtn5Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.next;
end;

procedure TfrmOrcamento.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrorcamento.Last;
end;

procedure TfrmOrcamento.BitBtn7Click(Sender: TObject);
begin
   frmorcamento_impressao := Tfrmorcamento_impressao.create(self);
   frmmodulo.qrcliente.open;
   frmmodulo.qrcliente.locate('codigo',frmmodulo.qrorcamento.fieldbyname('codcliente').asstring,[loCaseInsensitive]);
   frmorcamento_impressao.showmodal;
end;

procedure TfrmOrcamento.DBEdit1Change(Sender: TObject);
begin
  try
    qrorcamento_produto.close;
    qrorcamento_contasreceber.Close;
    if frmmodulo.qrorcamento.FieldByName('codigo').AsString <> '' then
    begin
      qrorcamento_produto.sql.clear;
      qrorcamento_produto.sql.Add('select * from c000057 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
      qrorcamento_produto.Open;

      qrorcamento_contasreceber.sql.clear;
      qrorcamento_contasreceber.sql.Add('select * from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+''' order by prestacao');
      qrorcamento_contasreceber.Open;

      rqtde.value := qrorcamento_contasreceber.recordcount;

    end;

  except
  end;
end;

procedure TfrmOrcamento.blocalizarClick(Sender: TObject);
begin
  codigo_orcamento := '';

  frmorcamento_localizar := tfrmorcamento_localizar.create(self);
  frmorcamento_localizar.showmodal;

  if codigo_orcamento <> '' then
  frmmodulo.qrorcamento.Locate('codigo',codigo_orcamento,[loCaseInsensitive]);

end;

procedure TfrmOrcamento.wwDBGrid1Enter(Sender: TObject);
begin
  FinalizarEdio1.Enabled := true;
  ExcluirProduto1.Enabled := true;
end;

procedure TfrmOrcamento.wwDBGrid1Exit(Sender: TObject);
begin
  FinalizarEdio1.Enabled := false;
  ExcluirProduto1.Enabled := false;
end;

procedure TfrmOrcamento.rdescontoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.rdescontoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrorcamento.fieldbyname('desconto').asfloat ;

  rdesconto1.value := 0;

end;

procedure TfrmOrcamento.rdescontoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then if pficha.enabled then  racrescimo1.setfocus;
end;

procedure TfrmOrcamento.racrescimoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    if pficha.enabled then  combocondpgto.SetFocus;
  end;
end;

procedure TfrmOrcamento.DBEdit2Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.DBEdit2Exit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure TfrmOrcamento.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento.DBEdit6KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure TfrmOrcamento.combocondpgtoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.combocondpgtoExit(Sender: TObject);
var prestacao : integer;
valor : real;
begin
  tedit(sender).color := clwindow;
try
  if combocondpgto.text <> '' then
  begin
    if frmmodulo.qrcondpgto.locate('condpgto',combocondpgto.text,[loCaseInsensitive]) then
    begin
      frmmodulo.qrcondpgto_parcela.close;
      frmmodulo.qrcondpgto_parcela.sql.clear;
      frmmodulo.qrcondpgto_parcela.sql.add('select * from c000016 where codcondpgto = '''+frmmodulo.qrcondpgto.fieldbyname('codigo').asstring+''' order by codigo');
      frmmodulo.qrcondpgto_parcela.open;
      if frmmodulo.qrcondpgto_parcela.RecordCount > 0 then
      begin
        qrorcamento_contasreceber.close;
        qrorcamento_contasreceber.sql.clear;
        qrorcamento_contasreceber.SQL.Add('delete from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
        qrorcamento_contasreceber.ExecSQL;
        qrorcamento_contasreceber.sql.clear;
        qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+''' order by prestacao ');
        qrorcamento_contasreceber.open;

        frmmodulo.qrcondpgto_parcela.first;
        prestacao := 1;


        while not frmmodulo.qrcondpgto_parcela.eof do
        begin
          qrorcamento_contasreceber.Insert;
          qrorcamento_contasreceber.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
          qrorcamento_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          qrorcamento_contasreceber.FieldByName('vencimento').asdatetime := dbdateedit1.date+frmmodulo.qrcondpgto_parcela.fieldbyname('dias').AsInteger;
          valor := rtotal.value *
                   (frmmodulo.qrcondpgto_parcela.fieldbyname('percentual').asfloat/100);
          if frmmodulo.qrcondpgto_parcela.FieldByName('juros').asfloat > 0 then
             valor := valor + (valor *  (frmmodulo.qrcondpgto_parcela.fieldbyname('juros').asfloat / 100));

          qrorcamento_contasreceber.fieldbyname('valor').asfloat := valor;
          qrorcamento_contasreceber.FieldByName('TIPO').asstring := '';
          qrorcamento_contasreceber.post;
          prestacao := prestacao + 1;
          frmmodulo.qrcondpgto_parcela.Next;
        end;
        qrorcamento_contasreceber.Refresh;

        if pficha.enabled then wwdbgrid2.SetFocus;
      end
      else
      begin
        application.messagebox('Esta Condição de Pagamento não possue parcelas! Seu cadastro não foi feito corretamente!','Atenção',mb_ok+MB_ICONWARNING);
        if pficha.enabled then combocondpgto.setfocus;
      end;
    end
    else
    begin
      application.messagebox('Condição de Pagamento não encontrada!','Aviso',mb_ok+MB_ICONERROR);
      if pficha.enabled then combocondpgto.setfocus;
    end;
  end
  else
  begin
//    rqtde.setfocus;
  end;
except

end;

end;

procedure TfrmOrcamento.rqtdeExit(Sender: TObject);
var qtde, prestacao : integer;
valor : real;
begin

  tedit(sender).color := clwindow;
try
  if rqtde.value > 0 then
  begin
        prestacao := 1;
        qtde := trunc(rqtde.value);

        VALOR := rtotal.value / qtde;

        qrorcamento_contasreceber.close;
        qrorcamento_contasreceber.sql.clear;
        qrorcamento_contasreceber.SQL.Add('delete from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+'''');
        qrorcamento_contasreceber.ExecSQL;
        qrorcamento_contasreceber.sql.clear;
        qrorcamento_contasreceber.SQL.Add('select * from c000060 where codorcamento = '''+frmmodulo.qrorcamento.fieldbyname('codigo').asstring+''' order by prestacao ');
        qrorcamento_contasreceber.open;
        while QTDE <> 0 do
        begin
          qrorcamento_contasreceber.Insert;
          qrorcamento_contasreceber.fieldbyname('codorcamento').asstring := frmmodulo.qrorcamento.fieldbyname('codigo').asstring;
          qrorcamento_contasreceber.FieldByName('prestacao').asinteger :=  prestacao;
          qrorcamento_contasreceber.FieldByName('vencimento').asdatetime := incmonth(DBDateEdit1.date,prestacao);
          qrorcamento_contasreceber.fieldbyname('valor').asfloat := valor;
          qrorcamento_contasreceber.FieldByName('TIPO').asstring := '';
          qrorcamento_contasreceber.post;
          prestacao := prestacao + 1;
          qtde := qtde - 1;
        end;

        qrorcamento_contasreceber.Refresh;
      //  wwdbgrid2.SetFocus;
  end;
except
end;
end;

procedure TfrmOrcamento.wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
    IF KEY = #13 THEN
    begin
      PageView1.ActivePageIndex := 1;
      if pficha.enabled then dbedit2.setfocus;
    end;
end;

procedure TfrmOrcamento.eclienteEnter(Sender: TObject);
begin
  tedit(SENDER).Color := $00A8FFFF;
   if dbdateedit1.text = '  /  /    ' then dbdateedit1.Date := date;
end;

procedure TfrmOrcamento.evendedorEnter(Sender: TObject);
begin
  tedit(SENDER).color := $00A8FFFF;
end;

procedure TfrmOrcamento.comboprodutoExit(Sender: TObject);
begin
  Application.ProcessMessages;
  if comboproduto.Text <> '' then
  begin
    if qrproduto.Locate('produto',comboproduto.Text,[loPartialKey]) then
    begin
      qrorcamento_produto.fieldbyname('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      qrorcamento_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
    end
    else
    begin
      qrorcamento_produto.fieldbyname('codproduto').asstring := '999999';
      qrorcamento_produto.fieldbyname('UNIDADE').asstring := 'UN';
      qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
      qrorcamento_produto.fieldbyname('unitario').asfloat := 0;
      qrorcamento_produto.fieldbyname('total').asfloat := 0;
    end;
  end;
end;

procedure TfrmOrcamento.eprodutoExit(Sender: TObject);
begin
  if Eproduto.Text <> '' then
  begin
    qrorcamento_produto.fieldbyname('codproduto').asstring := frmPrincipal.zerarcodigo(eproduto.Text,6);
    if qrproduto.Locate('codigo',eproduto.Text,[loCaseInsensitive]) then
    begin
      qrorcamento_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
        qrorcamento_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
        qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
        qrorcamento_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
        qrorcamento_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      
    end
    else
    begin
      if qrproduto.Locate('codbarra',eproduto.Text,[loCaseInsensitive]) then
      begin
        qrorcamento_produto.fieldbyname('produto').asstring := qrproduto.fieldbyname('produto').asstring;
        qrorcamento_produto.fieldbyname('UNIDADE').asstring := qrproduto.fieldbyname('UNIDADE').asstring;
        qrorcamento_produto.fieldbyname('qtde').asfloat := 1;
        qrorcamento_produto.fieldbyname('unitario').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
        qrorcamento_produto.fieldbyname('total').asfloat := qrproduto.fieldbyname('precovenda').asfloat;
      end
      else
      begin
        application.MessageBox('Produto não cadastrado!','Atenção',mb_ok+MB_ICONWARNING );
        eproduto.Text := '';
      end;
    end;
  end;
end;

procedure TfrmOrcamento.qrorcamento_produtoBeforeInsert(DataSet: TDataSet);
begin
  valor_anterior := 0;
end;

procedure TfrmOrcamento.qrorcamento_produtoBeforeEdit(DataSet: TDataSet);
begin
  valor_anterior := qrorcamento_produto.fieldbyname('total').asfloat;
end;

procedure TfrmOrcamento.BitBtn2Click(Sender: TObject);
begin

    if application.messagebox('Tem certeza que deseja excluir este item?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
    begin
      qrorcamento_produto.Delete;
    end;

end;

procedure TfrmOrcamento.BitBtn1Click(Sender: TObject);
begin
  if pficha.enabled then rdesconto1.setfocus;
end;

procedure TfrmOrcamento.qrorcamento_produtoBeforeDelete(DataSet: TDataSet);
begin
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat -
  qrorcamento_produto.fieldbyname('total').asfloat;

  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrorcamento.fieldbyname('desconto').asfloat ;

end;

procedure TfrmOrcamento.eqtdeExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
    (qrorcamento_produto.fieldbyname('qtde').asfloat *
    qrorcamento_produto.fieldbyname('unitario').asfloat) -
    qrorcamento_produto.fieldbyname('desconto').asfloat +
    qrorcamento_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure TfrmOrcamento.eunitarioExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
    (qrorcamento_produto.fieldbyname('qtde').asfloat *
    qrorcamento_produto.fieldbyname('unitario').asfloat) -
    qrorcamento_produto.fieldbyname('desconto').asfloat +
    qrorcamento_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure TfrmOrcamento.edescontoExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
    (qrorcamento_produto.fieldbyname('qtde').asfloat *
    qrorcamento_produto.fieldbyname('unitario').asfloat) -
    qrorcamento_produto.fieldbyname('desconto').asfloat +
    qrorcamento_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure TfrmOrcamento.eacrescimoExit(Sender: TObject);
begin
  if (qrorcamento_produto.State = dsedit) or (qrorcamento_produto.State = dsinsert) then
  begin
    qrorcamento_produto.fieldbyname('total').asfloat :=
    (qrorcamento_produto.fieldbyname('qtde').asfloat *
    qrorcamento_produto.fieldbyname('unitario').asfloat) -
    qrorcamento_produto.fieldbyname('desconto').asfloat +
    qrorcamento_produto.fieldbyname('acrescimo').asfloat ;
  end;
end;

procedure TfrmOrcamento.rqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento.rdesconto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure TfrmOrcamento.rdesconto1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if rdesconto1.value > 0 then
  begin
    frmmodulo.qrorcamento.fieldbyname('desconto').asfloat :=
    rsubtotal.value *
    (rdesconto1.value / 100);


  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrorcamento.fieldbyname('desconto').asfloat ;
  if pficha.enabled then racrescimo1.setfocus;
  end;
end;

procedure TfrmOrcamento.eclienteButtonClick(Sender: TObject);
begin
  frmXloc_cliente := tfrmXloc_cliente.create(self);
  frmXloc_cliente.showmodal;
  frmmodulo.qrorcamento.fieldbyname('CODcliente').asstring := RESULTADO_PESQUISA1;

  if pficha.enabled then evendedor.setfocus;
end;

procedure TfrmOrcamento.evendedorButtonClick(Sender: TObject);
begin
     frmmodulo.qrfunci.close;
     frmmodulo.qrfunci.sql.clear;
     frmmodulo.qrfunci.sql.add('select * from c000008 WHERE SITUACAO = 1 AND F_vendedor = 1 order by nome');
     frmmodulo.qrfunci.open;

  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrorcamento.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  if pficha.enabled then wwdbgrid1.SetFocus;
end;

procedure TfrmOrcamento.eclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if frmmodulo.qrorcamento.State <> dsedit then if frmmodulo.qrorcamento.State <> dsinsert then exit;

    frmmodulo.qrorcamento.fieldbyname('codcliente').asstring := frmprincipal.zerarcodigo(ecliente.Text,6);

    if ecliente.text <> '000000' then
    begin
      frmmodulo.qrcliente.close;
      frmmodulo.qrcliente.sql.clear;
      frmmodulo.qrcliente.sql.add('select * from c000007 where codigo = '''+eCliente.text+'''');
      frmmodulo.qrcliente.open;
      if frmmodulo.qrcliente.recordcount = 0 then
      begin
        application.messagebox('Cliente não cadastrado!','Aviso',mb_ok+mb_iconwarning);
        eCliente.Text := '';
        if pficha.enabled then eCliente.setfocus;
        exit;
      end
      else
         Perform(wm_nextdlgctl,0,0);
    end
    else
    begin
      eClienteButtonClick(frmorcamento);
    end;
  end;
end;

procedure TfrmOrcamento.rdesconto1Enter(Sender: TObject);
begin
  tedit(sender).color := $00A8FFFF;
end;

procedure TfrmOrcamento.racrescimo1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if racrescimo1.value > 0 then
  begin
    frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat :=
    rsubtotal.value *
    (racrescimo1.value / 100);


  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat ;
  if pficha.enabled then racrescimo.setfocus;
  end;
end;

procedure TfrmOrcamento.racrescimoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  frmmodulo.qrorcamento.fieldbyname('total').asfloat :=
  frmmodulo.qrorcamento.fieldbyname('subtotal').asfloat +
  frmmodulo.qrorcamento.fieldbyname('acrescimo').asfloat -
  frmmodulo.qrorcamento.fieldbyname('desconto').asfloat ;

  if pficha.enabled then racrescimo1.value := 0;
end;

procedure TfrmOrcamento.babrirClick(Sender: TObject);
begin
  frmorcamento_abrir := tfrmorcamento_abrir.create(self);
  frmorcamento_abrir.showmodal;
end;

procedure TfrmOrcamento.qrorcamento_produtoCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrorcamento_produto.fieldbyname('CODPRODUTO').asstring+'''');
  qrestoque.open;

  if qrestoque.recordcount > 0 then
    qrorcamento_produto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrorcamento_produto.fieldbyname('estoque').asfloat := 0;
end;

procedure TfrmOrcamento.QRPRODUTOCalcFields(DataSet: TDataSet);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('CODIGO').asstring+'''');
  qrestoque.open;

  if qrestoque.recordcount > 0 then
    qrproduto.fieldbyname('estoque').asfloat := qrestoque.fieldbyname('estoque_atual').asfloat
  else
    qrproduto.fieldbyname('estoque').asfloat := 0;
end;

end.
