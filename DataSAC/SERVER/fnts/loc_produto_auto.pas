unit loc_produto_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Collection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,
  wwdblook, Menus, Buttons, AdvGlowButton;

type
  Tfrmloc_produto_auto = class(TForm)
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    eproduto: TEdit;
    Label2: TLabel;
    ecodigo: TEdit;
    ereferencia: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    eaplicacao: TEdit;
    Label5: TLabel;
    ecomplemento: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    DBGRID1: TwwDBGrid;
    dsproduto: TDataSource;
    qrproduto: TZQuery;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutogrupo: TStringField;
    qrprodutosubgrupo: TStringField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    FlatPanel2: TFlatPanel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    GroupBox3: TGroupBox;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    efornecedor: TwwDBLookupCombo;
    emarca: TwwDBLookupCombo;
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    Label9: TLabel;
    combo_referencia: TComboBox;
    N1: TMenuItem;
    ipodaPesquisa1: TMenuItem;
    qrprodutoCODALIQUOTA: TStringField;
    Bevel1: TBevel;
    Bevel2: TBevel;
    bfechar: TAdvGlowButton;
    lestoque: TLabel;
    qrestoque: TZQuery;
    Bevel3: TBevel;
    combo_situacao: TComboBox;
    Label11: TLabel;
    procedure eprodutoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorExit(Sender: TObject);
    procedure emarcaExit(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure DBGRID1DblClick(Sender: TObject);
    procedure eprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bfecharClick(Sender: TObject);
    procedure ipodaPesquisa1Click(Sender: TObject);
    procedure DBGRID1RowChanged(Sender: TObject);
    procedure DBGRID1KeyPress(Sender: TObject; var Key: Char);
    procedure ecomplementoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_situacaoChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto_auto: Tfrmloc_produto_auto;
  situacao : string;

implementation

uses modulo, produto_auto;

{$R *.dfm}

procedure Tfrmloc_produto_auto.eprodutoChange(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin

  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';

  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like '''+ref+eproduto.text+'%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%'+ecodigo.text+'%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%'+ereferencia.text+'%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%'+eaplicacao.text+'%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%'+ecomplemento.text+'%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = '''+frmmodulo.qrmarca.fieldbyname('codigo').asstring+'''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where '+produto+situacao+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;

    if qrproduto.recno > 0 then
    begin
      qrestoque.close;
      qrestoque.sql.clear;
      qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
      qrestoque.open;
      lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);
    end;

  except
  end;
end;

procedure Tfrmloc_produto_auto.FormShow(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := '';

  qrproduto.close;

  frmmodulo.qrfornecedor.close;
  frmmodulo.qrfornecedor.sql.clear;
  frmmodulo.qrfornecedor.sql.add('select * from c000009 order by nome');
  frmmodulo.qrfornecedor.open;
  frmmodulo.qrfornecedor.IndexFieldNames := 'nome';

  frmmodulo.qrmarca.close;
  frmmodulo.qrmarca.sql.clear;
  frmmodulo.qrmarca.sql.add('select * from c000019 order by nome');
  frmmodulo.qrmarca.open;
  frmmodulo.qrmarca.IndexFieldNames := 'nome';

end;

procedure Tfrmloc_produto_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
  cod_produto := qrproduto.fieldbyname('codigo').asstring;
  except
    cod_produto := '';
  end;


  action := cafree;
end;

procedure Tfrmloc_produto_auto.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmloc_produto_auto.eprodutoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmloc_produto_auto.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_produto_auto.efornecedorExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  tedit(sender).color := clbtnface;
  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like '''+ref+eproduto.text+'%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%'+ecodigo.text+'%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%'+ereferencia.text+'%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%'+eaplicacao.text+'%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%'+ecomplemento.text+'%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = '''+frmmodulo.qrmarca.fieldbyname('codigo').asstring+'''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where '+produto+situacao+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;



end;

procedure Tfrmloc_produto_auto.emarcaExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin

  tedit(sender).color := clbtnface;
    if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  try
    qrproduto.close;
    qrproduto.sql.clear;
    if eproduto.Text <> '' then produto := ' upper(produto) like '''+ref+eproduto.text+'%''' else produto := ' produto <> ''''';
    if ecodigo.text <> '' then codigo := ' and codigo like ''%'+ecodigo.text+'%''' else codigo := '';
    if ereferencia.text <> '' then referencia := ' and upper(codbarra) like ''%'+ereferencia.text+'%''' else referencia := '';
    if eaplicacao.text <> '' then aplicacao := ' and upper(auto_aplicacao) like ''%'+eaplicacao.text+'%''' else aplicacao := '';
    if ecomplemento.text <> '' then complemento := ' and upper(auto_complemento) like ''%'+ecomplemento.text+'%''' else complemento := '';
    if efornecedor.Text <> '' then fornecedor := ' and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''' else fornecedor := '';
    if emarca.Text <> '' then marca := ' and codmarca = '''+frmmodulo.qrmarca.fieldbyname('codigo').asstring+'''' else marca := '';
    qrproduto.SQL.Add('select * from c000025 where '+produto+codigo+situacao+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;
end;

procedure Tfrmloc_produto_auto.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_produto_auto.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_produto_auto.emarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_produto_auto.DBGRID1DblClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_produto_auto.eprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_down then dbgrid1.setfocus;
end;

procedure Tfrmloc_produto_auto.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_produto_auto.ipodaPesquisa1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1

end;

procedure Tfrmloc_produto_auto.DBGRID1RowChanged(Sender: TObject);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
  qrestoque.open;
  lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);
end;

procedure Tfrmloc_produto_auto.DBGRID1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
    close;
  end;
end;

procedure Tfrmloc_produto_auto.ecomplementoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dbgrid1.setfocus;
end;

procedure Tfrmloc_produto_auto.combo_situacaoChange(Sender: TObject);
begin
  if combo_situacao.itemindex = 0 then situacao := ' and situacao <> 1';
  if combo_situacao.itemindex = 1 then situacao := ' and situacao = 1';
  if combo_situacao.itemindex = 2 then situacao := ''
end;

end.
