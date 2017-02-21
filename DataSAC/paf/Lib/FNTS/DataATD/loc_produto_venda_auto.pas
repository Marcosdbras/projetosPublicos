unit loc_produto_venda_auto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  Collection, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, DBCtrls,
  wwdblook, Menus, Buttons, AdvGlowButton;

type
  Tfrmloc_venda_produto_auto = class(TForm)
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
    PopupMenu1: TPopupMenu;
    Sair1: TMenuItem;
    SelecionarProduto1: TMenuItem;
    N1: TMenuItem;
    ipodePesquisa1: TMenuItem;
    qrprodutoCODALIQUOTA: TStringField;
    FlatPanel2: TFlatPanel;
    GroupBox1: TGroupBox;
    lestoque: TLabel;
    GroupBox2: TGroupBox;
    DBText2: TDBText;
    GroupBox3: TGroupBox;
    DBText4: TDBText;
    GroupBox4: TGroupBox;
    DBText5: TDBText;
    GroupBox5: TGroupBox;
    DBText3: TDBText;
    bfechar: TAdvGlowButton;
    Bevel2: TBevel;
    DBGRID1: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    eproduto: TEdit;
    ecodigo: TEdit;
    ereferencia: TEdit;
    eaplicacao: TEdit;
    ecomplemento: TEdit;
    efornecedor: TwwDBLookupCombo;
    emarca: TwwDBLookupCombo;
    combo_referencia: TComboBox;
    qrestoque: TZQuery;
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
    procedure DBGRID1KeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure bfiltroClick(Sender: TObject);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure DBGRID1RowChanged(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_venda_produto_auto: Tfrmloc_venda_produto_auto;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmloc_venda_produto_auto.eprodutoChange(Sender: TObject);
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
    qrproduto.SQL.Add('select * from c000025 where situacao <> 1 and '+produto+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;
end;

procedure Tfrmloc_venda_produto_auto.FormShow(Sender: TObject);
begin
  produto_loc := '';
  resultado_pesquisa1 := '';

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

  eprodutoChange(FRMLOC_VENDA_PRODUTO_AUTO);

end;

procedure Tfrmloc_venda_produto_auto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  try
  cod_produto := qrproduto.fieldbyname('codigo').asstring;
  except
    cod_produto := '';
  end;


  action := cafree;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).color := clyellow;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoExit(Sender: TObject);
begin
  tedit(sender).color := clwhite;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_venda_produto_auto.efornecedorExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin
  if combo_referencia.ItemIndex = 0 then ref := '' else ref := '%';
  tedit(sender).color := clwindow;
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
    qrproduto.SQL.Add('select * from c000025 where  situacao <> 1 and  '+produto+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;



end;

procedure Tfrmloc_venda_produto_auto.emarcaExit(Sender: TObject);
var produto, codigo, aplicacao, referencia, marca, fornecedor, complemento, ref : string;
begin

  tedit(sender).color := clwindow;
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
    qrproduto.SQL.Add('select * from c000025 where  situacao <> 1 and '+produto+codigo+referencia+aplicacao+complemento+fornecedor+marca+' order by produto');
    qrproduto.open;
  except
  end;
end;

procedure Tfrmloc_venda_produto_auto.Sair1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmloc_venda_produto_auto.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_venda_produto_auto.emarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmloc_venda_produto_auto.DBGRID1DblClick(Sender: TObject);
begin
    produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
  close;
end;

procedure Tfrmloc_venda_produto_auto.DBGRID1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
    close;
  end;
end;

procedure Tfrmloc_venda_produto_auto.eprodutoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if key = vk_down then dbgrid1.setfocus;

end;

procedure Tfrmloc_venda_produto_auto.bfiltroClick(Sender: TObject);
begin
      produto_loc := qrproduto.fieldbyname('codigo').asstring;
    resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
      close;
end;

procedure Tfrmloc_venda_produto_auto.ipodePesquisa1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1


end;

procedure Tfrmloc_venda_produto_auto.DBGRID1RowChanged(Sender: TObject);
begin
    qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
  qrestoque.open;
  lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);
end;

end.
