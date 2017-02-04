unit cliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, wwdbedit,
  Wwdotdot, Wwdbcomb, Wwdbigrd, Wwdbgrid, ImgList, SHELLAPI, AdvGlowButton;

type
  Tfrmcliente = class(TForm)
    HeaderView1: THeaderView;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    blocalizar: TBitBtn;
    bfechar: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dscliente2: TDataSource;
    qrcliente: TZQuery;
    BitBtn5: TBitBtn;
    BitBtn6: TBitBtn;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dscliente: TDataSource;
    query1: TZQuery;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    pficha: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label5: TLabel;
    LAPELIDO: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    LTELEFONE1: TLabel;
    Label14: TLabel;
    LTELEFONE2: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    LNASCIMENTO: TLabel;
    LFILIACAO: TLabel;
    LESTADOCIVIL: TLabel;
    LCONJUGE: TLabel;
    LPROFISSAO: TLabel;
    LEMPRESA: TLabel;
    LRENDA: TLabel;
    Label27: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    GroupBox1: TGroupBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    GroupBox2: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    RxDBCalcEdit2: TRxDBCalcEdit;
    DBDateEdit3: TDBDateEdit;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    EFILIACAO: TDBEdit;
    ECIVIL: TDBComboBox;
    ECONJUGE: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    ERENDA: TRxDBCalcEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit28: TDBEdit;
    blocregiao: TBitBtn;
    DBEdit29: TDBEdit;
    blocvendedor: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    Edit1: TEdit;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Movimento1: TMenuItem;
    wwDBComboBox1: TwwDBComboBox;
    DateEdit1: TDateEdit;
    FlipView1: TFlipView;
    ViewSplit1: TViewSplit;
    wwDBGrid1: TwwDBGrid;
    qrvenda: TZQuery;
    dsvenda: TDataSource;
    qrvendaCODIGO: TStringField;
    qrvendaCODCAIXA: TStringField;
    qrvendaCODVENDEDOR: TStringField;
    qrvendaDATA: TDateTimeField;
    qrvendaCODCLIENTE: TStringField;
    qrvendaOBS: TStringField;
    qrvendaMEIO_DINHEIRO: TFloatField;
    qrvendaMEIO_CHEQUEAV: TFloatField;
    qrvendaMEIO_CHEQUEAP: TFloatField;
    qrvendaMEIO_CARTAOCRED: TFloatField;
    qrvendaMEIO_CARTAODEB: TFloatField;
    qrvendaMEIO_CREDIARIO: TFloatField;
    qrvendaSUBTOTAL: TFloatField;
    qrvendaDESCONTO: TFloatField;
    qrvendaACRESCIMO: TFloatField;
    qrvendaTOTAL: TFloatField;
    qrvendaCUPOM_FISCAL: TIntegerField;
    qrvendaNUMERO_CUPOM_FISCAL: TStringField;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    wwDBGrid2: TwwDBGrid;
    qrvenda_mes: TZQuery;
    dsvenda_mes: TDataSource;
    qrvenda_mesCOLUMN_0: TFloatField;
    qrvenda_mesColumn: TFloatField;
    qrvenda_mesColumn_1: TFloatField;
    qrvenda_mesColumn_2: TFloatField;
    qrvenda_mesColumn_3: TFloatField;
    qrvenda_mesColumn_4: TFloatField;
    qrvenda_mesColumn_5: TFloatField;
    qrvenda_mesColumn_6: TFloatField;
    qrvenda_mesColumn_7: TFloatField;
    qrvenda_mesColumn_8: TFloatField;
    qrvenda_mesColumn_9: TFloatField;
    qrvenda_mesColumn_10: TFloatField;
    HeaderView2: THeaderView;
    wwDBGrid3: TwwDBGrid;
    qrproduto: TZQuery;
    dsproduto: TDataSource;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODNOTA: TStringField;
    qrprodutoCODPRODUTO: TStringField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoICMS: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoCFOP: TStringField;
    qrprodutoDATA: TDateTimeField;
    qrprodutoNUMERONOTA: TStringField;
    qrprodutoCODCLIENTE: TStringField;
    qrprodutoDESCONTO: TFloatField;
    qrprodutoACRESCIMO: TFloatField;
    qrprodutoMOVIMENTO: TIntegerField;
    qrprodutoCODVENDEDOR: TStringField;
    qrprodutoCODGRADE: TStringField;
    qrprodutoSERIAL: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoQTDE: TFloatField;
    qrprodutoVALOR_ICMS: TFloatField;
    qrprodutoICMS_REDUZIDO: TFloatField;
    qrprodutoBASE_CALCULO: TFloatField;
    qrprodutoVALOR_IPI: TFloatField;
    qrprodutoPRODUTO: TStringField;
    ViewSplit2: TViewSplit;
    Label4: TLabel;
    LTOTAL: TLabel;
    QUERY: TZQuery;
    PageView2: TPageView;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    dsreceber: TDataSource;
    qrcontasreceber: TZQuery;
    qrcontasreceberFILTRO: TIntegerField;
    qrcontasrecebersituacao2: TIntegerField;
    qrcontasreceberDATA_EMISSAO: TDateTimeField;
    qrcontasreceberCODIGO: TStringField;
    qrcontasreceberDATA_VENCIMENTO: TDateTimeField;
    qrcontasreceberDOCUMENTO: TStringField;
    qrcontasreceberVALOR_ORIGINAL: TFloatField;
    qrcontasreceberVALOR_PAGO: TFloatField;
    qrcontasreceberVALOR_ATUAL: TFloatField;
    qrcontasreceberjuros: TFloatField;
    qrcontasreceberDIAS: TIntegerField;
    qrcontasreceberRESTANTE: TFloatField;
    qrcontasreceberCODCEDENTE: TStringField;
    qrcontasreceberTIPO: TStringField;
    qrcontasreceberVALOR_JUROS: TFloatField;
    qrcontasreceberDATA_PAGAMENTO: TDateTimeField;
    qrcontasreceberCODVENDEDOR: TStringField;
    qrcontasreceberCODCAIXA: TStringField;
    qrcontasreceberCODCLIENTE: TStringField;
    qrcontasreceberVALOR_DESCONTO: TFloatField;
    qrcontasreceberSITUACAO: TIntegerField;
    qrcontasreceberCODVENDA: TStringField;
    qrcontasreceberNOSSONUMERO: TStringField;
    qrcontasreceberCODREGIAO: TStringField;
    wwDBGrid4: TwwDBGrid;
    ImageList1: TImageList;
    qrcontasreceberpg: TZQuery;
    IntegerField1: TIntegerField;
    DateTimeField1: TDateTimeField;
    StringField1: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    IntegerField2: TIntegerField;
    FloatField5: TFloatField;
    DateTimeField2: TDateTimeField;
    StringField2: TStringField;
    IntegerField3: TIntegerField;
    StringField3: TStringField;
    StringField4: TStringField;
    FloatField6: TFloatField;
    DateTimeField3: TDateTimeField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    FloatField7: TFloatField;
    IntegerField4: TIntegerField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    dsreceberpg: TDataSource;
    wwDBGrid5: TwwDBGrid;
    Label6: TLabel;
    rvalor: TRxCalcEdit;
    Label13: TLabel;
    rjuro: TRxCalcEdit;
    Label15: TLabel;
    rtotal: TRxCalcEdit;
    PPGTO: TFlatPanel;
    HeaderView4: THeaderView;
    SpeedButton1: TSpeedButton;
    qrpgto: TZQuery;
    FlatPanel1: TFlatPanel;
    Memo1: TMemo;
    Label18: TLabel;
    rtotal_pago: TRxCalcEdit;
    FlatPanel2: TFlatPanel;
    PageSheet5: TPageSheet;
    InformaesAdicionais1: TMenuItem;
    qrpessoas: TZQuery;
    dspessoas: TDataSource;
    GroupBox5: TGroupBox;
    wwDBGrid6: TwwDBGrid;
    BitBtn7: TBitBtn;
    wwDBComboBox2: TwwDBComboBox;
    LCONVENIO: TLabel;
    ECODCONVENIO: TDBEdit;
    BLOCCONVENIO: TBitBtn;
    ECONVENIO: TDBEdit;
    Label19: TLabel;
    DBEdit16: TDBEdit;
    DBEdit17: TDBEdit;
    BitBtn8: TBitBtn;
    euf: TDBComboBox;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure blocalizarClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit26Exit(Sender: TObject);
    procedure DBEdit27Exit(Sender: TObject);
    procedure DBEdit28Exit(Sender: TObject);
    procedure blocregiaoClick(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure blocvendedorClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure Movimento1Click(Sender: TObject);
    procedure wwDBComboBox1Change(Sender: TObject);
    procedure wwDBComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBComboBox1Enter(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure qrcontasreceberCalcFields(DataSet: TDataSet);
    procedure wwDBGrid4DblClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure InformaesAdicionais1Click(Sender: TObject);
    procedure qrpessoasBeforePost(DataSet: TDataSet);
    procedure BitBtn7Click(Sender: TObject);
    procedure qrpessoasAfterPost(DataSet: TDataSet);
    procedure BLOCCONVENIOClick(Sender: TObject);
    procedure ECODCONVENIOExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BitBtn8Click(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure eufEnter(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcliente: Tfrmcliente;
  comando : string;
  juro_carencia : integer;
  juro_taxa, juro_multa, total_original, total_juros : real;


implementation

uses modulo, principal, loc_regiao, regiao, loc_funci,
  xloc_cliente, lista_cliente2, Math, loc_convenio;

{$R *.dfm}


procedure Tfrmcliente.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmcliente.FormShow(Sender: TObject);
begin




  total_juros    := 0;
  total_original  := 0;

  FRMMODULO.qrconfig.OPEN;
  juro_carencia := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_CARENCIA').asinteger;
  juro_taxa     := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_TAXAJUROS').asfloat;
  juro_multa    := frmmodulo.qrconfig.FieldByName('CONTASRECEBER_multa').asfloat;

  frmmodulo.qrregiao.close;
  frmmodulo.qrregiao.sql.clear;
  frmmodulo.qrregiao.SQL.add('select * from c000005 order by regiao');
  frmmodulo.qrregiao.open;
  frmmodulo.qrregiao.IndexFieldNames := 'regiao';

  frmmodulo.qrfunci.close;
  frmmodulo.qrfunci.sql.clear;
  frmmodulo.qrfunci.SQL.add('select * from c000008 where upper(funcao) = ''VENDEDOR'' order by nome');
  frmmodulo.qrfunci.open;
  frmmodulo.qrfunci.IndexFieldNames := 'nome';

  frmmodulo.qrconvenio.close;
  frmmodulo.qrconvenio.sql.clear;
  frmmodulo.qrconvenio.SQL.add('select * from c000071 order by nome');
  frmmodulo.qrconvenio.open;
  frmmodulo.qrconvenio.IndexFieldNames := 'nome';

  pgravar.visible := false;
  pgravar.Align := alClient;



  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.SQL.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.first;

  if procura_sintegra = true then
  begin
   frmmodulo.qrcliente.Locate('codigo',parametro_pesquisa,[loCaseInsensitive]);
  end;


  procura_sintegra := false;


  pficha.Enabled := false;
  bincluir.SetFocus;

   CAPTION := 'CLIENTES | Ficha de Cadastro   '+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING;


end;

procedure Tfrmcliente.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmcliente.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrcliente.insert;
  frmmodulo.qrcliente.fieldbyname('codigo').asstring := frmprincipal.codifica('000007',6);
  frmmodulo.qrcliente.fieldbyname('codusuario').asstring := codigo_usuario;
  wwDBComboBox1.ItemIndex :=  0;
  pficha.Enabled := true;
  dbedit26.setfocus;
  pgravar.Visible := true;
  PopupMenu := pop2;
end;

procedure Tfrmcliente.balterarClick(Sender: TObject);
begin
  IF dbedit1.Text <> '' THEN
  BEGIN

    frmmodulo.qrcliente.Edit;
    pficha.Enabled := true;
    dbedit26.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;
end;

procedure Tfrmcliente.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir cliente',4) then
  begin
    //VERIFICAR
    frmmodulo.qrcliente.Delete;
    frmmodulo.Conexao.commit;
     PageView1Change(frmcliente);
      end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmcliente.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrcliente.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
     PageView1Change(frmcliente);
  end;
end;

procedure Tfrmcliente.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmcliente.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
  IF wwDBComboBox1.ItemIndex = 0 THEN BEGIN wwDBComboBox1.Color := CLWINDOW;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 2 THEN BEGIN wwDBComboBox1.Color := $00AAAAFF; wwDBComboBox1.Font.Color := clblack;END;
  IF wwDBComboBox1.ItemIndex = 1 THEN BEGIN wwDBComboBox1.Color := clSkyBlue;wwDBComboBox1.Font.Color := clBLACK;END;







  if (frmmodulo.qrcliente.State = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  Begin
      frmmodulo.qrcliente.fieldbyname('nascimento').asstring := dateedit1.Text;
      FRMMODULO.QRCLIENTE.FieldByName('SITUACAO').ASINTEGER := wwDBComboBox1.ItemIndex + 1;
      frmmodulo.qrcliente.post;
  end;



  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


end;

procedure Tfrmcliente.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrcliente.State = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
      frmmodulo.qrcliente.cancel;


  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
end;

procedure Tfrmcliente.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrcliente.first;
 dateedit1.Text := frmmodulo.qrcliente.fieldbyname('nascimento').asstring;
 PageView1Change(frmcliente);
end;

procedure Tfrmcliente.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrcliente.last;
  dateedit1.Text := frmmodulo.qrcliente.fieldbyname('nascimento').asstring;
  PageView1Change(frmcliente);
end;

procedure Tfrmcliente.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrcliente.prior;
  dateedit1.Text := frmmodulo.qrcliente.fieldbyname('nascimento').asstring;
   PageView1Change(frmcliente);
end;

procedure Tfrmcliente.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrcliente.next;
  dateedit1.Text := frmmodulo.qrcliente.fieldbyname('nascimento').asstring;
   PageView1Change(frmcliente);
end;

procedure Tfrmcliente.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := clyellow;
 if frmmodulo.qrcliente.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmcliente.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcliente.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
end;

procedure Tfrmcliente.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmcliente.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmcliente.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmcliente.DBEdit26Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

 IF (FRMMODULO.QRCLIENTE.State = DSINSERT) OR (FRMMODULO.qrCLIENTE.State = DSEDIT) THEN
 BEGIN

  IF DBEDIT26.Text <> '1' THEN
  begin
    IF DBEDIT26.Text <> '2' THEN
    BEGIN
      SHOWMESSAGE('Favor digitar 1 ou 2!');
      dbedit26.setfocus;
      exit;
    END
    ELSE
    BEGIN
      LAPELIDO.Caption := 'FANTASIA:';
      LTELEFONE1.CAPTION := 'TELEFONE'+#13+'01:';
      LTELEFONE2.CAPTION := 'TELEFONE'+#13+'02:';
      LRG.CAPTION := 'INSC.EST.:';
      LCPF.CAPTION := 'CNPJ:';
      LNASCIMENTO.CAPTION := 'DATA FUNDAÇÃO:';

      LFILIACAO.VISIBLE := FALSE;
      EFILIACAO.Visible := FALSE;
      LESTADOCIVIL.VISIBLE := FALSE;
      ECIVIL.Visible := FALSE;
      LCONJUGE.VISIBLE := FALSE;
      ECONJUGE.Visible := FALSE;

      LPROFISSAO.CAPTION := 'RAMO ATIV.:';
      LEMPRESA.CAPTION := 'TITULAR:';
      LRENDA.Visible := FALSE;
      ERENDA.VISIBLE := FALSE;
    END;
  end
  else
  begin
    LAPELIDO.Caption := 'APELIDO:';
    LTELEFONE1.CAPTION := 'TELEFONE'+#13+'RESIDENCIA:';
    LTELEFONE2.CAPTION := 'TELEFONE'+#13+'COMERCIAL:';
    LRG.CAPTION := 'C.IDENTID.:';
    LCPF.CAPTION := 'CPF';
    LNASCIMENTO.CAPTION := 'DATA DE NASCIMENTO:';

    LFILIACAO.VISIBLE := TRUE;
    EFILIACAO.Visible := TRUE;
    LESTADOCIVIL.VISIBLE := TRUE;
    ECIVIL.Visible := TRUE;
    LCONJUGE.VISIBLE := TRUE;
    ECONJUGE.Visible := TRUE;

    LPROFISSAO.CAPTION := 'PROFISSÃO:';
    LEMPRESA.CAPTION := 'EMPRESA:';
    LRENDA.Visible := TRUE;
    ERENDA.VISIBLE := TRUE;
  end;
 END;


end;

procedure Tfrmcliente.DBEdit27Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit28Exit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    frmmodulo.qrcliente.fieldbyname('codregiao').asstring := frmprincipal.zerarcodigo(dbedit28.text,6);
    if dbedit28.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrregiao,dbedit28.text,'codigo') then blocregiaoclick(Frmcliente) else dbedit29.setfocus
    else
      blocregiao.SetFocus;
  end;




end;

procedure Tfrmcliente.blocregiaoClick(Sender: TObject);
begin
  frmloc_regiao := tfrmloc_regiao.create(self);
  frmloc_regiao.showmodal;
  frmmodulo.qrcliente.fieldbyname('codregiao').asstring := frmmodulo.qrregiao.fieldbyname('codigo').asstring;
  dbedit29.setfocus;
end;

procedure Tfrmcliente.DBEdit29Exit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    frmmodulo.qrcliente.fieldbyname('codvendedor').asstring := frmprincipal.zerarcodigo(dbedit29.text,6);
    if dbedit29.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfunci,dbedit29.text,'codigo') then blocvendedorclick(Frmcliente) else dbedit10.setfocus
    else
      blocvendedor.SetFocus;
  end;


end;

procedure Tfrmcliente.blocvendedorClick(Sender: TObject);
begin
  frmloc_funci := tfrmloc_funci.create(self);
  frmloc_funci.showmodal;
  frmmodulo.qrcliente.fieldbyname('codvendedor').asstring := frmmodulo.qrfunci.fieldbyname('codigo').asstring;
  dbedit10.setfocus;
end;

procedure Tfrmcliente.BitBtn6Click(Sender: TObject);
begin
  FRMREGIAO := TFRMREGIAO.CREATE(SELF);
  FRMREGIAO.SHOWMODAL;
end;

procedure Tfrmcliente.DBEdit15Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;





  IF DBEDIT15.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) then
    begin
      query1.close;
      query1.sql.clear;
      query1.sql.Add('select * from c000007 where cpf = '''+dbedit15.text+'''');
      query1.open;
      if query1.recordcount > 0 then
      begin
        IF APPLICATION.MESSAGEBOX('Existe um cliente cadastrado com este CPF/CNPJ! Deseja cancelar esta ficha de cadastro e ir até a ficha deste cliente?','Atenção',mb_yesno+mb_iconquestion+MB_DEFBUTTON2) = idyes then
        begin
          frmmodulo.qrcliente.Cancel;
          frmmodulo.qrcliente.Locate('codigo',query1.fieldbyname('codigo').asstring,[loCaseInsensitive]);
          frmmodulo.qrcliente.Edit;
        end;
        exit;
      end;


    end;




  if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
     begin

          IF FRMMODULO.qrcliente.FieldByName('TIPO').ASSTRING = '1' then
               begin
                    frmprincipal.CheckCPF1.Cpf := dbedit15.text;
                    if frmprincipal.CheckCPF1.Valido then
                         begin
                              // frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

                              if pos('-',dbedit15.text) = 0 then
                                   frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
                         end
                    else
                         begin
                              Showmessage('CPF Inválido!');
                              dbedit15.SetFocus;
                              exit;
                         end;
               end
          else
               begin
                    if Length(frmprincipal.somenteNumero(dbedit15.Text)) > 11 then
                         begin
                              if frmprincipal.TestaCnpj(dbedit15.Text) then
                                   begin
                                        // frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
                                        if pos('/',dbedit15.text) = 0 then
                                             frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
                                   end
                              else
                                   begin
                                        Showmessage('CNPJ Inválido!');
                                        dbedit15.SetFocus;
                                        exit;
                                   end;
                         end
                    else
                         begin
                              frmprincipal.CheckCPF1.Cpf := dbedit15.text;
                              if frmprincipal.CheckCPF1.Valido then
                                   begin
                                        // frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);

                                        if pos('-',dbedit15.text) = 0 then
                                             frmmodulo.qrcliente.fieldbyname('cpf').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
                                   end
                              else
                                   begin
                                        Showmessage('CPF Inválido!');
                                        dbedit15.SetFocus;
                                        exit;
                                   end;
                         end;
               end;
    end;

     END;
end;

procedure Tfrmcliente.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrcliente.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmcliente.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.Edit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
 if tdbdateedit(sender).text <> '  /  /    ' then
 begin
  TRY
    tdbdateedit(sender).Date := strtodate(tdbdateedit(sender).text);
  EXCEPT
    showmessage('Data Inválida');
    tdbdateedit(sender).SetFocus;
  END;
 end;

end;

procedure Tfrmcliente.DBEdit1Change(Sender: TObject);
begin
  dateedit1.Text := frmmodulo.qrcliente.fieldbyname('nascimento').asstring;
 wwDBComboBox1.ItemIndex := FRMMODULO.QRCLIENTE.FieldByName('SITUACAO').ASINTEGER - 1;

 CAPTION := 'CLIENTES | Ficha de Cadastro   '+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+' - '+FRMMODULO.QRCLIENTE.FIELDBYNAME('NOME').ASSTRING;

 IF FRMMODULO.qrcliente.State <> DSINSERT THEN
 BEGIN
   IF FRMMODULO.qrcliente.STATE <> DSEDIT THEN
   BEGIN

   TRY
   IF FRMMODULO.QRCLIENTE.FIELDBYNAME('TIPO').ASINTEGER = 2 THEN
   BEGIN
      LAPELIDO.Caption := 'FANTASIA:';
      LTELEFONE1.CAPTION := 'TELEFONE'+#13+'01:';
      LTELEFONE2.CAPTION := 'TELEFONE'+#13+'02:';
      LRG.CAPTION := 'INSC.EST.:';
      LCPF.CAPTION := 'CNPJ:';
      LNASCIMENTO.CAPTION := 'DATA FUNDAÇÃO:';

      LFILIACAO.VISIBLE := FALSE;
      EFILIACAO.Visible := FALSE;
      LESTADOCIVIL.VISIBLE := FALSE;
      ECIVIL.Visible := FALSE;
      LCONJUGE.VISIBLE := FALSE;
      ECONJUGE.Visible := FALSE;

      LPROFISSAO.CAPTION := 'RAMO ATIV.:';
      LEMPRESA.CAPTION := 'TITULAR:';
      LRENDA.Visible := FALSE;
      ERENDA.VISIBLE := FALSE;

  end
  else
  begin
    LAPELIDO.Caption := 'APELIDO:';
    LTELEFONE1.CAPTION := 'TELEFONE'+#13+'RESIDENCIA:';
    LTELEFONE2.CAPTION := 'TELEFONE'+#13+'COMERCIAL:';
    LRG.CAPTION := 'C.IDENTID.:';
    LCPF.CAPTION := 'CPF';
    LNASCIMENTO.CAPTION := 'DATA DE NASCIMENTO:';

    LFILIACAO.VISIBLE := TRUE;
    EFILIACAO.Visible := TRUE;
    LESTADOCIVIL.VISIBLE := TRUE;
    ECIVIL.Visible := TRUE;
    LCONJUGE.VISIBLE := TRUE;
    ECONJUGE.Visible := TRUE;

    LPROFISSAO.CAPTION := 'PROFISSÃO:';
    LEMPRESA.CAPTION := 'EMPRESA:';
    LRENDA.Visible := TRUE;
    ERENDA.VISIBLE := TRUE;
 END;
 EXCEPT
 END;
 END;
 END;
end;

procedure Tfrmcliente.BitBtn5Click(Sender: TObject);
begin
  frmlista_cliente2 := tfrmlista_cliente2.create(self);
  frmlista_cliente2.showmodal;
end;

procedure Tfrmcliente.FichadeCadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmcliente.Movimento1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmcliente.wwDBComboBox1Change(Sender: TObject);
begin
  IF wwDBComboBox1.ItemIndex = 0 THEN BEGIN wwDBComboBox1.Color := CLWINDOW;wwDBComboBox1.Font.Color := clBLACK;END;
  IF wwDBComboBox1.ItemIndex = 2 THEN BEGIN wwDBComboBox1.Color := $00AAAAFF; wwDBComboBox1.Font.Color := clblack;END;
  IF wwDBComboBox1.ItemIndex = 1 THEN BEGIN wwDBComboBox1.Color := clSkyBlue;wwDBComboBox1.Font.Color := clBLACK;END;

end;

procedure Tfrmcliente.wwDBComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmcliente.wwDBComboBox1Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
TEDIT(SENDER).FONT.COLOR := CLBLACK;
end;

procedure Tfrmcliente.PageView1Change(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12 : string;
begin
  if PageView1.ActivePageIndex = 1 then                    
  begin
    QUERY.close;
    QUERY.sql.clear;
    QUERY.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000048 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');
    QUERY.open;
    LTOTAL.CAPTION := FORMATFLOAT('###,###,##0.00',QUERY.FIELDBYNAME('TOTAL_GERAL').ASFLOAT);

    qrvenda.close;
    qrvenda.sql.clear;
    qrvenda.sql.add('select * from c000048 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''' order by data, codigo');
    qrvenda.open;


  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000032 where codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+'''');
  qrproduto.open;

  GROUPBOX3.CAPTION := 'PRODUTOS COMPRADOS [TODAS AS NOTAS]';


  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from c000049 where codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasreceber.open;

  qrcontasreceberpg.Close;
  qrcontasreceberpg.SQL.Clear;
  qrcontasreceberpg.SQL.Add('select * from c000049 where codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 2 order by data_vencimento, codigo');
  qrcontasreceberpg.open;
       rtotal_pago.value := 0;

        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
           qrcontasreceber.next;
        end;
        while not qrcontasreceberpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASreceberpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasreceberpg.next;
        end;


    mes01 := copy(datetostr(date),4,7);
    mes02 := copy(datetostr(IncMonth(date,-1)),4,7);
    mes03 := copy(datetostr(IncMonth(date,-2)),4,7);
    mes04 := copy(datetostr(IncMonth(date,-3)),4,7);
    mes05 := copy(datetostr(IncMonth(date,-4)),4,7);
    mes06 := copy(datetostr(IncMonth(date,-5)),4,7);
    mes07 := copy(datetostr(IncMonth(date,-6)),4,7);
    mes08 := copy(datetostr(IncMonth(date,-7)),4,7);
    mes09 := copy(datetostr(IncMonth(date,-8)),4,7);
    mes10 := copy(datetostr(IncMonth(date,-9)),4,7);
    mes11 := copy(datetostr(IncMonth(date,-10)),4,7);
    mes12 := copy(datetostr(IncMonth(date,-11)),4,7);



    qrvenda_mes.close;
    qrvenda_mes.SQL.clear;
    qrvenda_mes.sql.add('select sum(total) column_0, '+
                     '(select sum(total) from c000048 where data >= :data11 and data < :data10 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data10 and data < :data09 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data09 and data < :data08 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data08 and data < :data07 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data07 and data < :data06 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data06 and data < :data05 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data05 and data < :data04 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data04 and data < :data03 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data03 and data < :data02 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data02 and data < :data01 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(total) from c000048 where data >= :data01 and data < :data00 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+''') '+
                     'from c000048 where data >= :data12 and data < :data11 and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').asstring+'''');

    qrvenda_mes.Params.ParamByName('data00').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,1)),4,7));
    qrvenda_mes.Params.ParamByName('data01').asdatetime := strtodate('01/'+copy(datetostr(date),4,7));
    qrvenda_mes.Params.ParamByName('data02').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-1)),4,7));
    qrvenda_mes.Params.ParamByName('data03').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-2)),4,7));
    qrvenda_mes.Params.ParamByName('data04').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-3)),4,7));
    qrvenda_mes.Params.ParamByName('data05').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-4)),4,7));
    qrvenda_mes.Params.ParamByName('data06').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-5)),4,7));
    qrvenda_mes.Params.ParamByName('data07').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-6)),4,7));
    qrvenda_mes.Params.ParamByName('data08').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-7)),4,7));
    qrvenda_mes.Params.ParamByName('data09').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-8)),4,7));
    qrvenda_mes.Params.ParamByName('data10').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-9)),4,7));
    qrvenda_mes.Params.ParamByName('data11').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-10)),4,7));
    qrvenda_mes.Params.ParamByName('data12').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-11)),4,7));

    qrvenda_mes.open;




    qrvenda_mesCOLUMN_0.DisplayLabel := mes12;
    qrvenda_mesCOLUMN.DisplayLabel :=   mes11;
    qrvenda_mesCOLUMN_1.DisplayLabel := mes10;
    qrvenda_mesCOLUMN_2.DisplayLabel := mes09;
    qrvenda_mesCOLUMN_3.DisplayLabel := mes08;
    qrvenda_mesCOLUMN_4.DisplayLabel := mes07;
    qrvenda_mesCOLUMN_5.DisplayLabel := mes06;
    qrvenda_mesCOLUMN_6.DisplayLabel := mes05;
    qrvenda_mesCOLUMN_7.DisplayLabel := mes04;
    qrvenda_mesCOLUMN_8.DisplayLabel := mes03;
    qrvenda_mesCOLUMN_9.DisplayLabel := mes02;
    qrvenda_mesCOLUMN_10.DisplayLabel := mes01;






  end;

  If PageView1.ActivePageIndex = 2 THEN
  BEGIN
    QRPESSOAS.Close;
    QRPESSOAS.SQL.CLEAR;
    QRPESSOAS.SQL.ADD('SELECT * FROM C000070 WHERE CODCLIENTE = '''+FRMMODULO.QRCLIENTE.FIELDBYNAME('CODIGO').ASSTRING+''' ORDER BY NOME');
    QRPESSOAS.OPEN;
  END;
end;

procedure Tfrmcliente.wwDBGrid1DblClick(Sender: TObject);
begin
  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select * from c000032 where codnota = '''+qrvenda.fieldbyname('codigo').asstring+''' and codcliente = '''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+'''');
  qrproduto.open;

  groupbox3.Caption := 'PRODUTOS COMPRADOS [NOTA: '+QRVENDA.FIELDBYNAME('CODIGO').ASSTRING+']';

  qrcontasreceber.Close;
  qrcontasreceber.SQL.Clear;
  qrcontasreceber.SQL.Add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' and codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasreceber.open;

  qrcontasreceberpg.Close;
  qrcontasreceberpg.SQL.Clear;
  qrcontasreceberpg.SQL.Add('select * from c000049 where codcliente ='''+frmmodulo.qrcliente.fieldbyname('codigo').ASSTRING+''' and situacao = 2 order by data_vencimento, codigo');
  qrcontasreceberpg.open;
       rtotal_pago.value := 0;

        RVALOR.VALUE := 0;
        RJURO.VALUE := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasreceber.eof do
        begin
          rvalor.value := RVALOR.VALUE + QRCONTASRECEBER.FIELDBYNAME('VALOR_ATUAL').AsFloat;
          rJURO.value := RJURO.VALUE + QRCONTASRECEBER.FIELDBYNAME('JUROS').AsFloat;
          rTOTAL.value := RTOTAL.VALUE + QRCONTASRECEBER.FIELDBYNAME('RESTANTE').AsFloat;
           qrcontasreceber.next;
        end;
        while not qrcontasreceberpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASreceberpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasreceberpg.next;
        end;


end;

procedure Tfrmcliente.qrcontasreceberCalcFields(DataSet: TDataSet);
var valor, juro, multa: real;
dias : integer;
begin


  valor := qrcontasreceber.fieldbyname('valor_ATUAL').asfloat;


  if qrcontasreceber.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontasreceber.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontasreceber.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASreceber.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
  qrcontasreceber.FieldByName('restante').asfloat := 0;

  if qrcontasreceber.fieldbyname('situacao').asinteger = 1 then
  begin
    if valor > 0 then
    begin
      if qrcontasreceber.FieldByName('data_pagamento').asfloat > 0 then // puxar pelo ultimo pagamento
      begin
        if qrcontasreceber.FieldByName('data_pagamento').asfloat > qrcontasreceber.fieldbyname('data_vencimento').asdatetime then
           dias := trunc(date - qrcontasreceber.fieldbyname('data_pagamento').asdatetime)
        else
          dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);
      end
      else
      begin // puxar pela data de vencimento
        dias := trunc(date - qrcontasreceber.fieldbyname('data_vencimento').asdatetime);

        // soh cobrar a multa se nao tiver nenhum pagamento!
        if juro_multa > 0 then
        begin
          multa := (valor * (juro_multa/100));
        end;
      end;

      if juro_taxa <> 0 then
      begin
        IF (DIAS - JURO_CARENCIA) > 0 THEN
        BEGIN
          juro := (valor * ((juro_taxa/100) * (DIAS {- juro_carencia})));
          valor := valor + juro + multa;
        END;
      end;
      qrcontasreceber.FieldByName('dias').AsInteger := dias;
      if (dias - juro_carencia) > 0 then
      begin
        qrcontasreceber.FieldByName('dias').AsInteger := dias;
        qrcontasreceber.fieldbyname('restante').asfloat := valor;
        qrcontasreceber.fieldbyname('juros').asfloat := juro + multa;
      end
      else
      begin
        qrcontasreceber.fieldbyname('restante').asfloat := qrcontasreceber.fieldbyname('valor_atual').asfloat;
      end;

    end
    else
    begin
      qrcontasreceber.FieldByName('dias').AsInteger := 0;
      qrcontasreceber.fieldbyname('restante').asfloat := valor;
      qrcontasreceber.fieldbyname('juros').asfloat := 0;
      qrcontasreceber.fieldbyname('situacao2').asinteger := 5;

    end;
  end
  else
  begin
    qrcontasreceber.FieldByName('dias').AsInteger := 0;
    qrcontasreceber.fieldbyname('restante').asfloat := valor;
    qrcontasreceber.fieldbyname('juros').asfloat := 0;
  end;









end;

procedure Tfrmcliente.wwDBGrid4DblClick(Sender: TObject);
begin
     if PageView2.ActivePageIndex = 0 then
     begin
       IF qrcontasreceber.FieldByName('VALOR_PAGO').ASFLOAT <> 0 THEN
       BEGIN

             qrpgto.close;
              qrpgto.SQL.Clear;
              qrpgto.SQL.Add('select * from c000050 where CODCONTA = '''+qrcontasreceber.fieldbyname('codigo').asstring+''' and codcliente = '''+qrcontasreceber.fieldbyname('codcliente').asstring+''' order by data');
              qrpgto.open;
              memo1.Text := '';
              qrpgto.First;
              while not qrpgto.Eof do
              begin
                memo1.lines.add(qrpgto.fieldbyname('data').asstring+' -->'+frmPrincipal.texto_justifica(formatfloat('###,###,##0.00',qrpgto.fieldbyname('valor_pago').asfloat),12,' ','E'));
                qrpgto.Next;
              end;
                  PPGTO.Visible := TRUE;
       END;
     end
     else
     begin
              qrpgto.close;
              qrpgto.SQL.Clear;
              qrpgto.SQL.Add('select * from c000050 where CODCONTA = '''+qrcontasreceberpg.fieldbyname('codigo').asstring+''' and codcliente = '''+qrcontasreceber.fieldbyname('codcliente').asstring+''' order by data');
              qrpgto.open;
              memo1.Text := '';
              qrpgto.First;
              while not qrpgto.Eof do
              begin
                memo1.lines.add(qrpgto.fieldbyname('data').asstring+' -->'+frmPrincipal.texto_justifica(formatfloat('###,###,##0.00',qrpgto.fieldbyname('valor_pago').asfloat),12,' ','E'));
                qrpgto.Next;
              end;
                  PPGTO.Visible := TRUE;

     end;



end;

procedure Tfrmcliente.SpeedButton1Click(Sender: TObject);
begin
  ppgto.visible := false;
end;

procedure Tfrmcliente.InformaesAdicionais1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmcliente.qrpessoasBeforePost(DataSet: TDataSet);
begin
  qrpessoas.FieldByName('CODCLIENTE').ASSTRING := frmmodulo.qrcliente.FIELDBYNAME('CODIGO').ASSTRING;
end;

procedure Tfrmcliente.BitBtn7Click(Sender: TObject);
begin
  IF APPLICATION.MESSAGEBOX('Tem certeza que deseja excluir este registro?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    qrpessoas.Delete;
    frmmodulo.Conexao.Commit;
  end;
end;

procedure Tfrmcliente.qrpessoasAfterPost(DataSet: TDataSet);
begin
frmmodulo.Conexao.Commit;
end;

procedure Tfrmcliente.BLOCCONVENIOClick(Sender: TObject);
begin
  frmloc_convenio := tfrmloc_convenio.create(self);
  frmloc_convenio.showmodal;
  frmmodulo.qrcliente.fieldbyname('codconvenio').asstring := frmmodulo.qrconvenio.fieldbyname('codigo').asstring;
  if ECIVIL.Visible then ecivil.setfocus else  dbedit18.setfocus;
end;

procedure Tfrmcliente.ECODCONVENIOExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrcliente.state = dsinsert) or (frmmodulo.qrcliente.State = dsedit) then
  begin
    frmmodulo.qrcliente.fieldbyname('codconvenio').asstring := frmprincipal.zerarcodigo(ecodconvenio.text,6);
    if ecodconvenio.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrconvenio,ecodconvenio.text,'codigo') then blocconvenioclick(Frmcliente)
      else
      begin
        if ECIVIL.Visible then ecivil.setfocus else  dbedit18.setfocus;
      end;
    end
    else
      blocconvenio.SetFocus;
  end;
end;

procedure Tfrmcliente.FormCreate(Sender: TObject);
begin
  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER = 4 THEN  // FARMACIA
  BEGIN
    LCONVENIO.Visible := TRUE;
    ECODCONVENIO.Visible := TRUE;
    ECONVENIO.Visible := TRUE;
    BLOCCONVENIO.Visible := TRUE;
    EFILIACAO.Width := 377;
  END
  ELSE
  BEGIN
    LCONVENIO.Visible := FALSE;
    ECODCONVENIO.Visible := FALSE;
    ECONVENIO.Visible := FALSE;
    BLOCCONVENIO.Visible := FALSE;
    PageView1.Pages[2].Destroy;
    EFILIACAO.Width := 673;
  END;
end;

procedure Tfrmcliente.BitBtn8Click(Sender: TObject);
var tipo, campo, UF : PANSICHAR;
begin
if frmmodulo.qrCLIENTE.fieldbyname('uf').ASSTRING = '' then
begin
  showmessage('Favor informar a UF!');
  exit;
end;
UF := PANSICHAR(frmmodulo.qrCLIENTE.fieldbyname('uf').asstring);
if frmmodulo.qrCLIENTE.fieldbyname('CPF').asstring <> '' then
begin
  tipo := 'CNPJ';
  CAMPO := PANSICHAR(FRMPRINCIPAL.somenteNumero(FRMMODULO.QRCLIENTE.FIELDBYNAME('CPF').ASSTRING));
end
else
begin
  if frmmodulo.qrCLIENTE.fieldbyname('RG').asstring <> '' then
  begin
    tipo := 'IE';
    CAMPO := PANSICHAR(FRMPRINCIPAL.somenteNumero(FRMMODULO.QRCLIENTE.FIELDBYNAME('RG').ASSTRING));
  end
  else
  begin
    showmessage('Favor informar o CNPJ ou a Inscrição Estadual!');
    exit;
  end;
end;

ShellExecute(0, nil, PChar('\Arquivos de programas\Ibersoft\QSint\' + 'qsint.exe'), PCHAR('UF:'+UF+' DT:'+tipo+' DN:'+CAMPO), nil, 0);
end;

procedure Tfrmcliente.DBEdit2Exit(Sender: TObject);
begin
     if DBEdit2.Text = '' then
          begin
               showmessage('Favor Informar O Nome do Cliente!');
               DBEdit2.SetFocus;
               exit;
          end;

tedit(sender).Color := clwindow;

end;

procedure Tfrmcliente.eufExit(Sender: TObject);
begin

if frmPrincipal.ChecaEstado(euf.Text) = false then
  begin
    showmessage('Unidade de Federação Inválida...');
    euf.SetFocus;
    exit;
  end;


tedit(sender).Color := clwindow;
end;

procedure Tfrmcliente.eufEnter(Sender: TObject);
begin
tedit(sender).Color := clyellow;

end;

end.




////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
