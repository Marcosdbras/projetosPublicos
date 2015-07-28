unit fornecedor;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, Wwdbigrd, SHELLAPI,
  Wwdbgrid, ImgList, AdvGlowButton;

type
  Tfrmfornecedor = class(TForm)
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsfornecedor2: TDataSource;
    Relatrios1: TMenuItem;
    panel99: TPanel;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    pficha: TFlatPanel;
    Label5: TLabel;
    LAPELIDO: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    LRG: TLabel;
    LCPF: TLabel;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label3: TLabel;
    Label36: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label6: TLabel;
    edata_cadastro: TDBDateEdit;
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
    econtato1: TDBEdit;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    ViewSplit1: TViewSplit;
    FlipView1: TFlipView;
    wwDBGrid1: TwwDBGrid;
    GroupBox3: TGroupBox;
    gridcompra: TwwDBGrid;
    GroupBox4: TGroupBox;
    PageView2: TPageView;
    PageSheet3: TPageSheet;
    Label27: TLabel;
    wwDBGrid4: TwwDBGrid;
    rtotal: TRxCalcEdit;
    PageSheet4: TPageSheet;
    Label28: TLabel;
    wwDBGrid5: TwwDBGrid;
    rtotal_pago: TRxCalcEdit;
    HeaderView2: THeaderView;
    wwDBGrid3: TwwDBGrid;
    QUERY: TZQuery;
    qrcontasPAGAR: TZQuery;
    QRCOMPRA_MES: TZQuery;
    QRCOMPRA_MESsum_0: TFloatField;
    QRCOMPRA_MESsum: TFloatField;
    QRCOMPRA_MESsum_1: TFloatField;
    QRCOMPRA_MESsum_2: TFloatField;
    QRCOMPRA_MESsum_3: TFloatField;
    QRCOMPRA_MESsum_4: TFloatField;
    QRCOMPRA_MESsum_5: TFloatField;
    QRCOMPRA_MESsum_6: TFloatField;
    QRCOMPRA_MESsum_7: TFloatField;
    QRCOMPRA_MESsum_8: TFloatField;
    QRCOMPRA_MESsum_9: TFloatField;
    QRCOMPRA_MESsum_10: TFloatField;
    qrproduto: TZQuery;
    qrprodutoCODPRODUTO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoQTDE: TFloatField;
    qrprodutoUNITARIO: TFloatField;
    qrprodutoTOTAL: TFloatField;
    qrprodutoSERIAL: TStringField;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODNOTA: TStringField;
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
    qrprodutoVALOR_ICMS: TFloatField;
    qrprodutoICMS_REDUZIDO: TFloatField;
    qrprodutoBASE_CALCULO: TFloatField;
    qrprodutoVALOR_IPI: TFloatField;
    qrcompra: TZQuery;
    ImageList1: TImageList;
    dspagar: TDataSource;
    dsproduto: TDataSource;
    dsPAGARpg: TDataSource;
    dsCOMPRA_mes: TDataSource;
    dscompra: TDataSource;
    qrcompraCODIGO: TStringField;
    qrcompraNUMERO: TStringField;
    qrcompraCFOP: TStringField;
    qrcompraDATA: TDateTimeField;
    qrcompraCODFORNECEDOR: TStringField;
    qrcompraVALOR_PRODUTOS: TFloatField;
    qrcompraTOTAL_NOTA: TFloatField;
    qrcompraBASE_CALCULO: TFloatField;
    qrcompraVALOR_ICMS: TFloatField;
    qrcompraBASE_SUB: TFloatField;
    qrcompraICMS_SUB: TFloatField;
    qrcompraFRETE: TFloatField;
    qrcompraSEGURO: TFloatField;
    qrcompraOUTRAS_DESPESAS: TFloatField;
    qrcompraVALOR_TOTAL_IPI: TFloatField;
    qrcompraITENS: TIntegerField;
    qrcompraDESCONTO: TFloatField;
    qrcompraMODELO: TStringField;
    qrcompraSERIE: TStringField;
    qrcompraALIQUOTA: TFloatField;
    qrcompraSITUACAO: TIntegerField;
    qrcompraMODELO_NF: TStringField;
    qrcompraSERIE_NF: TStringField;
    qrcompraVALOR_ISENTO_ICMS: TFloatField;
    qrcompraALIQUOTA_ICMS: TFloatField;
    qrcompraSITUACAO_A: TStringField;
    qrcontasPAGARpg: TZQuery;
    qrcontasPAGARFILTRO: TIntegerField;
    qrcontasPAGARsituacao2: TIntegerField;
    qrcontasPAGARDATA_VENCIMENTO: TDateTimeField;
    qrcontasPAGARfornecedor: TStringField;
    qrcontasPAGARNOTAFISCAL: TStringField;
    qrcontasPAGARDOCUMENTO: TStringField;
    qrcontasPAGARESPECIE: TStringField;
    qrcontasPAGARVALOR: TFloatField;
    qrcontasPAGARSITUACAO: TIntegerField;
    qrcontasPAGARVALORPAGO: TFloatField;
    qrcontasPAGARCODCONTA: TStringField;
    qrcontasPAGARCODFORNECEDOR: TStringField;
    qrcontasPAGARCODIGO: TStringField;
    qrcontasPAGARDATA_EMISSAO: TDateTimeField;
    qrcontasPAGARDATA_PAGAMENTO: TDateTimeField;
    qrcontasPAGARLIQUIDO: TFloatField;
    qrcontasPAGARDESCONTO: TFloatField;
    qrcontasPAGARACRESCIMO: TFloatField;
    qrcontasPAGARHISTORICO: TStringField;
    qrcontasPAGARC: TStringField;
    qrcontasPAGARE: TStringField;
    qrcontasPAGARCODNOTA: TStringField;
    qrcontasPAGARconta: TStringField;
    qrcontasPAGARMOVIMENTO: TIntegerField;
    qrcontasPAGARCODCAIXA: TStringField;
    N1: TMenuItem;
    FichadeCadastro1: TMenuItem;
    Movimentaes1: TMenuItem;
    euf: TDBComboBox;
    compras1: TMenuItem;
    Panel1: TPanel;
    Label29: TLabel;
    Label30: TLabel;
    Label33: TLabel;
    Bevel1: TBevel;
    DBEdit1: TDBEdit;
    combo_pessoa: TComboBox;
    DBEdit2: TDBEdit;
    bitbtn6: TAdvGlowButton;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    bcompras: TAdvGlowButton;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    Label4: TLabel;
    LTOTAL: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    dsnf: TDataSource;
    qrnf: TZQuery;
    qrnfCODIGO: TStringField;
    qrnfNUMERO: TStringField;
    qrnfCODEMPRESA: TStringField;
    qrnfCODFORNECEDOR: TStringField;
    qrnfMODELO: TStringField;
    qrnfESPECIE: TStringField;
    qrnfSERIE: TStringField;
    qrnfCFOP: TStringField;
    qrnfDATA_EMISSAO: TDateTimeField;
    qrnfDATA_LANCAMENTO: TDateTimeField;
    qrnfCONF_BASEICMS: TFloatField;
    qrnfCONF_VALORICMS: TFloatField;
    qrnfCONF_BASESUB: TFloatField;
    qrnfCONF_VALORSUB: TFloatField;
    qrnfCONF_FRETE: TFloatField;
    qrnfCONF_SEGURO: TFloatField;
    qrnfCONF_OUTRAS: TFloatField;
    qrnfCONF_IPI: TFloatField;
    qrnfCONF_DESCONTO: TFloatField;
    qrnfCONF_TOTALPRODUTOS: TFloatField;
    qrnfCONF_TOTALNOTA: TFloatField;
    qrnfCONF_ICMSRETIDO: TFloatField;
    qrnfCONF_ICMSREDITO_PERC: TFloatField;
    qrnfBASE_ICMS: TFloatField;
    qrnfVALOR_ICMS: TFloatField;
    qrnfBASE_SUB: TFloatField;
    qrnfVALOR_SUB: TFloatField;
    qrnfFRETE: TFloatField;
    qrnfSEGURO: TFloatField;
    qrnfOUTRAS: TFloatField;
    qrnfIPI: TFloatField;
    qrnfDESCONTO: TFloatField;
    qrnfTOTAL_PRODUTOS: TFloatField;
    qrnfTOTAL_NOTA: TFloatField;
    qrnfTRANSP_NOME: TStringField;
    qrnfTRANSP_FRETE: TStringField;
    qrnfTRANSP_PLACA: TStringField;
    qrnfTRANSP_PLACAUF: TStringField;
    qrnfTRANSP_IE: TStringField;
    qrnfTRANSP_CNPJ: TStringField;
    qrnfTRANSP_ENDERECO: TStringField;
    qrnfTRANSP_CIDADE: TStringField;
    qrnfTRANSP_UF: TStringField;
    qrnfTRANSP_QTDE: TFloatField;
    qrnfTRANSP_ESPECIE: TStringField;
    qrnfTRANSP_MARCA: TStringField;
    qrnfTRANSP_NUMERO: TStringField;
    qrnfTRANSP_PESOBRUTO: TFloatField;
    qrnfTRANSP_PESOLIQUIDO: TFloatField;
    qrnfOBS1: TStringField;
    qrnfOBS2: TStringField;
    qrnfOBS3: TStringField;
    qrnfOBS4: TStringField;
    qrnfOBS5: TStringField;
    qrnfOBS6: TStringField;
    qrnfOBS7: TStringField;
    qrnfSITUACAO: TIntegerField;
    qrnfITENS: TIntegerField;
    qrnfTIPO: TStringField;
    qrnfNOTA_FISCAL: TStringField;
    qrnfVALOR_MERCADORIAS: TFloatField;
    qrnfCODREMETENTE: TStringField;
    qrnfICMS_ISENTO: TFloatField;
    qrnfICMS_OUTRAS: TFloatField;
    qrnfDESCONTO_INCIDENTE: TIntegerField;
    qrnfITEM_FRETE_VALOR: TFloatField;
    qrnfITEM_FRETE_BASE: TFloatField;
    qrnfITEM_FRETE_ALIQUOTA: TFloatField;
    qrnfITEM_FRETE_ICMS: TFloatField;
    qrnfITEM_SEGURO_VALOR: TFloatField;
    qrnfITEM_SEGURO_BASE: TFloatField;
    qrnfITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnfITEM_SEGURO_ICMS: TFloatField;
    qrnfITEM_PIS_VALOR: TFloatField;
    qrnfITEM_PIS_BASE: TFloatField;
    qrnfITEM_PIS_ALIQUOTA: TFloatField;
    qrnfITEM_PIS_ICMS: TFloatField;
    qrnfITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnfITEM_COMPLEMENTO_BASE: TFloatField;
    qrnfITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnfITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnfITEM_SERVICO_VALOR: TFloatField;
    qrnfITEM_SERVICO_BASE: TFloatField;
    qrnfITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnfITEM_SERVICO_ICMS: TFloatField;
    qrnfITEM_OUTRAS_VALOR: TFloatField;
    qrnfITEM_OUTRAS_BASE: TFloatField;
    qrnfITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnfITEM_OUTRAS_ICMS: TFloatField;
    qrnfITEM_ESPECIAL_TOTAL: TFloatField;
    qrnfITEM_ESPECIAL_VALOR: TFloatField;
    qrnfBASEICMS_PRODUTOS: TIntegerField;
    qrnfCONF_ITEM_ESPECIAL: TFloatField;
    QRNF_MES: TZQuery;
    gridnf: TwwDBGrid;
    QRNF_PRODUTO: TZQuery;
    DSNF_PRODUTO: TDataSource;
    QRNF_PRODUTOCODIGO: TStringField;
    QRNF_PRODUTOITEM: TStringField;
    QRNF_PRODUTOCODNOTA: TStringField;
    QRNF_PRODUTOCODPRODUTO: TStringField;
    QRNF_PRODUTOCODLANCAMENTO: TStringField;
    QRNF_PRODUTOUN_COMPRA: TStringField;
    QRNF_PRODUTOUN_FRACAO: TStringField;
    QRNF_PRODUTOFRACAO: TFloatField;
    QRNF_PRODUTOCST: TStringField;
    QRNF_PRODUTOCFOP: TStringField;
    QRNF_PRODUTOQTDE: TFloatField;
    QRNF_PRODUTOUNITARIO: TFloatField;
    QRNF_PRODUTOSUBTOTAL: TFloatField;
    QRNF_PRODUTODESCONTO: TFloatField;
    QRNF_PRODUTOTOTAL: TFloatField;
    QRNF_PRODUTODESCONTO_P: TFloatField;
    QRNF_PRODUTOICMS_RETIDO: TStringField;
    QRNF_PRODUTOICMS_ALIQUOTA: TFloatField;
    QRNF_PRODUTOICMS_REDUCAO: TFloatField;
    QRNF_PRODUTOICMS_BASE: TFloatField;
    QRNF_PRODUTOICMS_VALOR: TFloatField;
    QRNF_PRODUTOICMS_VALORRETIDO: TFloatField;
    QRNF_PRODUTOICMS_ISENTO: TFloatField;
    QRNF_PRODUTOICMS_NAOTRIBUTADO: TFloatField;
    QRNF_PRODUTOSUB_MARGEM: TFloatField;
    QRNF_PRODUTOSUB_BASE: TFloatField;
    QRNF_PRODUTOSUB_VALOR: TFloatField;
    QRNF_PRODUTOIPI_TIPO: TStringField;
    QRNF_PRODUTOIPI_ALIQUOTA: TFloatField;
    QRNF_PRODUTOIPI_BASE: TFloatField;
    QRNF_PRODUTOIPI_VALOR: TFloatField;
    QRNF_PRODUTODATA: TDateTimeField;
    QRNF_PRODUTOTIPO: TIntegerField;
    QRNF_PRODUTONOTAFISCAL: TStringField;
    QRNF_PRODUTOFRETE: TFloatField;
    QRNF_PRODUTOOUTRAS: TFloatField;
    QRNF_PRODUTOSEGURO: TFloatField;
    QRNF_PRODUTOCLASSIFICACAO_FISCAL: TStringField;
    QRNF_PRODUTOSUB_PRODUTOS: TFloatField;
    QRNF_PRODUTOCODFORNECEDOR: TStringField;
    QRNF_PRODUTOITEM_ESPECIAL_VALOR: TFloatField;
    QRNF_PRODUTOPRODUTO: TStringField;
    qrduplo: TZQuery;
    PageSheet5: TPageSheet;
    Panel4: TPanel;
    Label2: TLabel;
    ldias: TLabel;
    Label13: TLabel;
    ldataini_remarcado: TDateEdit;
    ldatafim_remarcado: TDateEdit;
    Sugestesdecompra1: TMenuItem;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label1: TLabel;
    Label15: TLabel;
    qrsugestao: TZQuery;
    qrsugestaoCODIGO: TStringField;
    qrsugestaoCODBARRA: TStringField;
    qrsugestaoPRODUTO: TStringField;
    qrsugestaoUNIDADE: TStringField;
    qrsugestaoCODFORNECEDOR: TStringField;
    qrsugestaoESTOQUE: TFloatField;
    qrsugestaosugestao: TFloatField;
    qrsugestaovendas: TFloatField;
    qrsugestaoPRECOCUSTO: TFloatField;
    qrsugestaoPRECOVENDA: TFloatField;
    qrsugestaoESTOQUE_ATUAL: TFloatField;
    dssugestao: TDataSource;
    GRID5: TwwDBGrid;
    bfiltrar: TAdvGlowButton;
    qrsugestaoSITUACAO: TIntegerField;
    QUERY1: TZQuery;
    Label18: TLabel;
    DBEdit7: TDBEdit;
    ecnae: TDBEdit;
    Label19: TLabel;
    Label31: TLabel;
    ecodmunicipio: TDBEdit;
    bibge: TAdvGlowButton;
    bcnae: TAdvGlowButton;
    Label32: TLabel;
    eibge: TDBEdit;
    PageSheet6: TPageSheet;
    Panel3: TPanel;
    Bevel8: TBevel;
    wwDBGrid2: TwwDBGrid;
    dsfornecedor_codigo: TDataSource;
    AdvGlowButton1: TAdvGlowButton;
    Label34: TLabel;
    DBEdit16: TDBEdit;
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
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15Exit(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure DBEdit24KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit31KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Change(Sender: TObject);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure PageView1Change(Sender: TObject);
    procedure qrcontasPAGARCalcFields(DataSet: TDataSet);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FichadeCadastro1Click(Sender: TObject);
    procedure Movimentaes1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure eufEnter(Sender: TObject);
    procedure eufExit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure bcomprasClick(Sender: TObject);
    procedure compras1Click(Sender: TObject);
    procedure combo_pessoaExit(Sender: TObject);
    procedure combo_pessoaKeyPress(Sender: TObject; var Key: Char);
    procedure Sugestesdecompra1Click(Sender: TObject);
    procedure bfiltrarClick(Sender: TObject);
    procedure ldataini_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure ldatafim_remarcadoKeyPress(Sender: TObject; var Key: Char);
    procedure qrsugestaoCalcFields(DataSet: TDataSet);
    procedure GRID5DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure DBEdit8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit15KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit14Exit(Sender: TObject);
    procedure bibgeClick(Sender: TObject);
    procedure bcnaeClick(Sender: TObject);
    procedure DBEdit6Exit(Sender: TObject);
    procedure ecnaeExit(Sender: TObject);
    procedure DBEdit16KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10Exit(Sender: TObject);
    procedure DBEdit11Exit(Sender: TObject);
    procedure DBEdit12Exit(Sender: TObject);
    procedure DBEdit29Exit(Sender: TObject);
    procedure DBEdit30Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmfornecedor: Tfrmfornecedor;
  comando : string;
  CONTINUA_INCLUSAO : BOOLEAN;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_fornecedor,
  lista_fornecedor2, fornecedor_compras, xloc_cidade, xloc_cnae;

{$R *.dfm}


procedure Tfrmfornecedor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmfornecedor.FormShow(Sender: TObject);
begin
  ldataini_remarcado.Date := date-90;
  ldatafim_remarcado.Date := date;

  ldias.Caption := floattostr(ldatafim_remarcado.Date-ldataini_remarcado.Date);


  pgravar.visible := false;
  pgravar.Align := alClient;



    frmmodulo.qrFORNECEDOR.close;
    frmmodulo.qrFORNECEDOR.SQL.clear;
    frmmodulo.qrFORNECEDOR.SQL.add('select * from c000009 order by codigo');
    frmmodulo.qrFORNECEDOR.open;
    frmmodulo.qrFORNECEDOR.first;

  if procura_sintegra = true then
  begin
   frmmodulo.qrfornecedor.Locate('codigo',parametro_pesquisa,[loCaseInsensitive]);
  end;


  procura_sintegra := false;

  pficha.Enabled := false;
  PANEL1.ENABLED := FALSE;
  bincluir.SetFocus;
end;

procedure Tfrmfornecedor.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmfornecedor.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmfornecedor.bincluirClick(Sender: TObject);
begin
  CONTINUA_INCLUSAO := true;

  frmmodulo.qrFORNECEDOR.insert;
  frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring := frmprincipal.codifica('000009');
  frmmodulo.qrfornecedor.fieldbyname('assistencia_tecnica').asinteger := 0;
  combo_pessoa.ItemIndex := 1;
  pficha.Enabled := true;
  PANEL1.ENABLED := TRUE;
  combo_pessoa.setfocus;
  pgravar.Visible := true;
  EDATA_CADASTRO.Date := DATE;


  PopupMenu := pop2;
end;

procedure Tfrmfornecedor.balterarClick(Sender: TObject);
begin
  CONTINUA_INCLUSAO := false;

  IF dbedit1.Text <> '' THEN
  BEGIN

    frmmodulo.qrFORNECEDOR.Edit;
    pficha.Enabled := true;
    PANEL1.ENABLED := TRUE;
    combo_pessoa.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

procedure Tfrmfornecedor.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir FORNECEDOR',4) then
  begin


    QRDUPLO.CLOSE;
    QRDUPLO.SQL.CLEAR;
    QRDUPLO.SQL.ADD('select * from c000046 where codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      application.messagebox('Este fornecedor possue movimento de parcelas (contas a pagar/pagas) em seu nome! Impossível excluir!','Erro',mb_ok+mb_iconerror);
      exit;
    end
    else
    begin

      QRDUPLO.CLOSE;
      QRDUPLO.SQL.CLEAR;
      QRDUPLO.SQL.ADD('select * from c000087 where codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''');
      qrduplo.open;
      if qrduplo.recordcount > 0 then
      begin
        application.messagebox('Este fornecedor possue movimento de compras em seu nome! Impossível excluir!','Erro',mb_ok+mb_iconerror);
        exit;
      end
      else
      begin
      QRDUPLO.CLOSE;
      QRDUPLO.SQL.CLEAR;
      QRDUPLO.SQL.ADD('select * from c000031 where codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''');
      qrduplo.open;
      if qrduplo.recordcount > 0 then
      begin
        application.messagebox('Este fornecedor possue movimento de compras em seu nome! Impossível excluir!','Erro',mb_ok+mb_iconerror);
        exit;
      end

      end;

    end;

    frmmodulo.qrFORNECEDOR.Delete;
    frmmodulo.Conexao.commit;
       PageView1Change(frmFORNECEDOR);
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmfornecedor.blocalizarClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_Fornecedor := tfrmxloc_Fornecedor.create(self);
  frmxloc_Fornecedor.AdvGlowButton1.Enabled := False;
  frmxloc_Fornecedor.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrFornecedor.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
     PageView1Change(frmFornecedor);
  end;
end;

procedure Tfrmfornecedor.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmfornecedor.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
  if dbedit2.text = '' then
  begin
     application.messagebox('Favor informar um nome válido para este fornecedor!','Atenção',mb_ok+mb_iconerror);
     dbedit2.setfocus;
     exit;
  end;

  if euf.text = '' then
    begin
     application.messagebox('Favor informar um Estado válido para este fornecedor!','Atenção',mb_ok+mb_iconerror);
     euf.setfocus;
     exit;
   end;



  if (frmmodulo.qrFORNECEDOR.State = dsinsert) or (frmmodulo.qrFORNECEDOR.State = dsedit) then
  begin
      FRMMODULO.QRfornecedor.FIELDBYNAME('TIPO').ASINTEGER :=  combo_pessoa.ItemIndex + 1;

      frmmodulo.qrFORNECEDOR.post;
  end;

  IF CONTINUA_INCLUSAO THEN
    frmprincipal.agenda('1','FORNECEDOR',DBEdit2.Text,DBEdit10.Text,DBEdit11.Text,'','',DBEdit13.Text,DBEdit12.Text,DBEdit28.Text,'3');

  //else if (frmmodulo.qrcliente.State = dsedit) then
  //  frmprincipal.agenda('2','CLIENTE',DBEdit2.Text,DBEdit10.Text,DBEdit11.Text,'',DBEdit12.Text,DBEdit13.Text,'','','1');

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  PANEL1.ENABLED := FALSE;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;

//     panel2.Enabled := false;
//     panel1.Enabled := false;



  PageView1.ActivePageIndex := 0;

     PageView1Change(frmFORNECEDOR);


end;

procedure Tfrmfornecedor.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrFORNECEDOR.State = dsinsert) or (frmmodulo.qrFORNECEDOR.State = dsedit) then
      frmmodulo.qrFORNECEDOR.cancel;


  pficha.Enabled := false;
  PANEL1.ENABLED := FALSE;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';

//     panel2.Enabled := false;
//     panel1.Enabled := false;

   PageView1.ActivePageIndex := 0;
      PageView1Change(frmFORNECEDOR);
end;

procedure Tfrmfornecedor.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmfornecedor.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.first;
   PageView1Change(frmFORNECEDOR);
end;

procedure Tfrmfornecedor.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.last;
     PageView1Change(frmFORNECEDOR);

end;

procedure Tfrmfornecedor.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.prior;
     PageView1Change(frmFORNECEDOR);

end;

procedure Tfrmfornecedor.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrFORNECEDOR.next;
     PageView1Change(frmFORNECEDOR);

end;

procedure Tfrmfornecedor.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmfornecedor.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrFORNECEDOR.state = dsinsert then
  EDATA_CADASTRO.Date := DATE;
end;

procedure Tfrmfornecedor.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmfornecedor.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfornecedor.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmfornecedor.DBEdit15Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT15.Text <> '' THEN
  BEGIN





    if (frmmodulo.qrFORNECEDOR.state = dsinsert) or (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
      IF combo_pessoa.itemindex <> 1 then
      begin
        frmprincipal.CheckCPF1.Cpf := dbedit15.text;
        if  frmprincipal.CheckCPF1.Valido then
        begin
          if pos('-',dbedit15.text) = 0 then frmmodulo.qrFORNECEDOR.fieldbyname('CNPJ').asstring := FormatMaskText('999.999.999-99;0;_',dbedit15.text);
        end
        else
        begin
          Showmessage('CPF Inválido!');
          dbedit15.SetFocus;
          EXIT;
        end;
      end
      else
      begin
        if frmprincipal.TestaCnpj(dbedit15.Text) then
        begin
          if pos('-',dbedit15.text) = 0 then
          frmmodulo.qrFORNECEDOR.fieldbyname('CNPJ').asstring := FormatMaskText('99.999.999/9999-99;0;_',dbedit15.text);
        end
        else
        begin
          Showmessage('CNPJ Inválido!');
          dbedit15.SetFocus;
          EXIT;
        end;
      end;

      IF DBEDIT15.TEXT <> '' THEN
      BEGIN
        if (frmmodulo.qrfornecedor.state = dsinsert) then
        begin
          query1.close;
          query1.sql.clear;
          query1.sql.Add('select * from c000009 where CNPJ = '''+dbedit15.text+'''');
          query1.open;
          if query1.recordcount > 0 then
          begin
            IF APPLICATION.MESSAGEBOX('Existe um fornecedor cadastrado com este CNPJ/CPF! Deseja cancelar esta ficha de cadastro e ir até a ficha deste fornecedor?','Atenção',mb_yesno+mb_iconquestion+MB_DEFBUTTON2) = idyes then
            begin
              frmmodulo.qrfornecedor.Cancel;
              frmmodulo.qrfornecedor.Locate('codigo',query1.fieldbyname('codigo').asstring,[loCaseInsensitive]);
              frmmodulo.qrfornecedor.Edit;
            end
            ELSE
            BEGIN
               frmmodulo.qrfornecedor.fieldbyname('cnpj').asstring := '';
               DBEDIT15.SETFOCUS;
            END;
            exit;
          end;
        end;
      END;





    end;
  END;
end;

procedure Tfrmfornecedor.DBEdit8Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT8.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrFORNECEDOR.state = dsinsert) or (frmmodulo.qrFORNECEDOR.State = dsedit) then
    begin
     if pos('-',dbedit8.text) = 0 then
       frmmodulo.qrFORNECEDOR.fieldbyname('cEP').asstring := FormatMaskText('99999-999;0;_',dbedit8.text);

    END;
  END;

end;

procedure Tfrmfornecedor.edata_cadastroExit(Sender: TObject);
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

procedure Tfrmfornecedor.DBEdit24KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN BGRAVAR.SETFOCUS;
end;

procedure Tfrmfornecedor.DBEdit31KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbedit22.setfocus;

  end;
end;

procedure Tfrmfornecedor.DBEdit1Change(Sender: TObject);
begin

  qrsugestao.Close;

 PageView1Change(FRMFORNECEDOR);

 IF FRMMODULO.qrFORNECEDOR.State <> DSINSERT THEN
 BEGIN
   IF FRMMODULO.qrFORNECEDOR.STATE <> DSEDIT THEN
   BEGIN

   TRY
      combo_pessoa.ItemIndex := FRMMODULO.QRfornecedor.FIELDBYNAME('TIPO').ASINTEGER - 1;

   IF FRMMODULO.QRFORNECEDOR.FIELDBYNAME('TIPO').ASINTEGER = 2 THEN
   BEGIN
      LAPELIDO.Caption := 'FANTASIA:';
      LRG.CAPTION := 'INSC.EST.:';
      LCPF.CAPTION := 'CNPJ:';
  end
  else
  begin
    LAPELIDO.Caption := 'APELIDO:';
    LRG.CAPTION := 'C.IDENTID.:';
    LCPF.CAPTION := 'CPF';
 END;
 EXCEPT
 END;
 END;
 END;
end;

procedure Tfrmfornecedor.DBCheckBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfornecedor.PageView1Change(Sender: TObject);
var
mes01, mes02, mes03, mes04, mes05, mes06, mes07, mes08, mes09, mes10, mes11, mes12 : string;
T1 : REAL;
begin
  if pageview1.activepageindex = 0 then
  begin
    bincluir.enabled := true;
    bexcluir.enabled := true;
    balterar.Enabled := true;
  end;


  if PageView1.ActivePageIndex = 1 then
  begin
    bincluir.enabled := false;
    bexcluir.enabled := false;
    balterar.Enabled := false;

    QUERY.close;
    QUERY.sql.clear;
    QUERY.sql.add('select SUM(TOTAL_NOTA) TOTAL_GERAL from c000031 where codFORNECEDOR = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''');
    QUERY.open;

    T1 := QUERY.FIELDBYNAME('TOTAL_GERAL').ASFLOAT;

    QUERY.close;
    QUERY.sql.clear;
    QUERY.sql.add('select SUM(TOTAL_NOTA) TOTAL_GERAL from c000087 where codFORNECEDOR = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''');
    QUERY.open;

    T1 := QUERY.FIELDBYNAME('TOTAL_GERAL').ASFLOAT + t1;


    LTOTAL.CAPTION := FORMATFLOAT('###,###,##0.00',T1);


    QRCOMPRA.close;
    QRCOMPRA.sql.clear;
    QRCOMPRA.sql.add('select * from c000031 where codFORNECEDOR = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+''' order by data, NUMERO');
    QRCOMPRA.open;

    QRNF.close;
    QRNF.sql.clear;
    QRNF.sql.add('select * from c000087 where codFORNECEDOR = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+''' order by data_LANCAMENTO, NUMERO');
    QRNF.open;


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



    QRCOMPRA_mes.close;
    QRCOMPRA_mes.SQL.clear;
    QRCOMPRA_mes.sql.add('select sum(TOTAL) sum_0, '+
                     '(select sum(TOTAL) from c000032 where data >= :data11 and data < :data10 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data10 and data < :data09 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data09 and data < :data08 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data08 and data < :data07 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data07 and data < :data06 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data06 and data < :data05 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data05 and data < :data04 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data04 and data < :data03 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data03 and data < :data02 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data02 and data < :data01 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''), '+
                     '(select sum(TOTAL) from c000032 where data >= :data01 and data < :data00 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+''') '+
                     'from c000032 where data >= :data12 and data < :data11 and movimento = 1 and codcliente = '''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').asstring+'''');

    QRCOMPRA_mes.Params.ParamByName('data00').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,1)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data01').asdatetime := strtodate('01/'+copy(datetostr(date),4,7));
    QRCOMPRA_mes.Params.ParamByName('data02').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-1)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data03').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-2)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data04').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-3)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data05').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-4)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data06').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-5)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data07').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-6)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data08').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-7)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data09').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-8)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data10').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-9)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data11').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-10)),4,7));
    QRCOMPRA_mes.Params.ParamByName('data12').asdatetime := strtodate('01/'+copy(datetostr(incmonth(date,-11)),4,7));

    QRCOMPRA_mes.open;







    QRCOMPRA_messum_0.DisplayLabel := mes12;
    QRCOMPRA_messum.DisplayLabel :=   mes11;
    QRCOMPRA_messum_1.DisplayLabel := mes10;
    QRCOMPRA_messum_2.DisplayLabel := mes09;
    QRCOMPRA_messum_3.DisplayLabel := mes08;
    QRCOMPRA_messum_4.DisplayLabel := mes07;
    QRCOMPRA_messum_5.DisplayLabel := mes06;
    QRCOMPRA_messum_6.DisplayLabel := mes05;
    QRCOMPRA_messum_7.DisplayLabel := mes04;
    QRCOMPRA_messum_8.DisplayLabel := mes03;
    QRCOMPRA_messum_9.DisplayLabel := mes02;
    QRCOMPRA_messum_10.DisplayLabel := mes01;






  end;
  if pageview1.activepageindex = 2 then
  begin
    bincluir.enabled := false;
    bexcluir.enabled := false;
    balterar.Enabled := false;
  end;

  if PageView1.ActivePageIndex = 3 then
  begin
  
    frmmodulo.qrfornecedor_codigo.Close;
    frmmodulo.qrfornecedor_codigo.SQL.Clear;
    frmmodulo.qrfornecedor_codigo.SQL.Add('select * from fornecedor_codigo');
    frmmodulo.qrfornecedor_codigo.SQL.Add('where codfornecedor = :vfor');
    frmmodulo.qrfornecedor_codigo.Params.ParamByName('vfor').AsString := frmmodulo.qrfornecedorCODIGO.AsString;
    frmmodulo.qrfornecedor_codigo.Open;

    bincluir.enabled := false;
    bexcluir.enabled := false;
    balterar.Enabled := false;

  end;
end;

procedure Tfrmfornecedor.qrcontasPAGARCalcFields(DataSet: TDataSet);
begin
  if qrcontaspagar.FieldBYNAME('SITUACAO').ASINTEGER = 2 THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 2;
  if qrcontaspagar.FieldBYNAME('SITUACAO').ASINTEGER = 1 THEN
  begin
    if qrcontaspagar.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME = DATE THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 4;
    if qrcontaspagar.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME < DATE THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 3;
    if qrcontaspagar.FieldBYNAME('DATA_VENCIMENTO').ASDATETIME > DATE THEN QRCONTASPAGAR.FieldByName('SITUACAO2').ASINTEGER := 1;
  END;
end;

procedure Tfrmfornecedor.wwDBGrid1DblClick(Sender: TObject);
begin
  qrnf_produto.close;
  qrnf_produto.sql.clear;
  qrnf_produto.sql.add('select * from c000088 where codnota = '''+qrnf.fieldbyname('codigo').asstring+'''');
  qrnf_produto.open;

  groupbox3.Caption := 'PRODUTOS COMPRADOS [NOTA FISCAL: '+QRnf.FIELDBYNAME('NUMERO').ASSTRING+']';

  qrcontasPAGAR.Close;
  qrcontasPAGAR.SQL.Clear;
  qrcontasPAGAR.SQL.Add('select * from c000046 where codNOTA = '''+qrnf.fieldbyname('codigo').asstring+''' and codFORNECEDOR ='''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').ASSTRING+''' and situacao = 1 order by data_vencimento, codigo');
  qrcontasPAGAR.open;

  qrcontasPAGARpg.Close;
  qrcontasPAGARpg.SQL.Clear;
  qrcontasPAGARpg.SQL.Add('select * from c000046 where codNOTA = '''+qrnf.fieldbyname('codigo').asstring+''' and codFORNECEDOR ='''+frmmodulo.qrFORNECEDOR.fieldbyname('codigo').ASSTRING+''' and situacao = 2 order by data_PAGAMENTO, codigo');
  qrcontasPAGARpg.open;
       rtotal_pago.value := 0;
        RTOTAL.VALUE := 0;
        while not qrcontasPAGAR.eof do
        begin
          rTOTAL.value := RTOTAL.VALUE + QRCONTASPAGAR.FIELDBYNAME('VALOR').AsFloat;
           qrcontasPAGAR.next;
        end;
        while not qrcontasPAGARpg.eof do
        begin
          rtotal_pago.value := RTOTAL_pago.VALUE + QRCONTASPAGARpg.FIELDBYNAME('valor_pago').AsFloat;
           qrcontasPAGARpg.next;
        end;

        gridnf.visible := true;
        gridcompra.visible := false;
end;

procedure Tfrmfornecedor.FichadeCadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;
end;

procedure Tfrmfornecedor.Movimentaes1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmfornecedor.BitBtn5Click(Sender: TObject);
begin
  FRMLISTA_FORNECEDOR2 := TFRMLISTA_FORNECEDOR2.CREATE(SELF);
  FRMLISTA_FORNECEDOR2.SHOWMODAL;
end;

procedure Tfrmfornecedor.BitBtn6Click(Sender: TObject);
var tipo, campo, UF : PANSICHAR;
begin
if frmmodulo.qrfornecedor.fieldbyname('uf').ASSTRING = '' then
begin
  showmessage('Favor informar a UF!');
  exit;
end;
UF := PANSICHAR(frmmodulo.qrfornecedor.fieldbyname('uf').asstring);
if frmmodulo.qrfornecedor.fieldbyname('CNPJ').asstring <> '' then
begin
  tipo := 'CNPJ';
  CAMPO := PANSICHAR(FRMPRINCIPAL.somenteNumero(FRMMODULO.QRFORNECEDOR.FIELDBYNAME('CNPJ').ASSTRING));
end
else
begin
  if frmmodulo.qrfornecedor.fieldbyname('IE').asstring <> '' then
  begin
    tipo := 'IE';
    CAMPO := PANSICHAR(FRMPRINCIPAL.somenteNumero(FRMMODULO.QRFORNECEDOR.FIELDBYNAME('IE').ASSTRING));
  end
  else
  begin
    showmessage('Favor informar o CNPJ ou a Inscrição Estadual!');
    exit;
  end;
end;

ShellExecute(0, nil, PChar('\Arquivos de programas\Ibersoft\QSint\' + 'qsint.exe'), PCHAR('UF:'+UF+' DT:'+tipo+' DN:'+CAMPO), nil, 0);
end;

procedure Tfrmfornecedor.eufEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmfornecedor.eufExit(Sender: TObject);
begin

if frmPrincipal.ChecaEstado(euf.Text) = false then
  begin
    showmessage('Unidade de Federação Inválida...');
    euf.SetFocus;
    exit;
  end;
          
tedit(sender).Color := clwindow;

end;

procedure Tfrmfornecedor.DBEdit2Exit(Sender: TObject);
var texto : pansichar;
begin

  tedit(sender).Color := clwindow;
  if frmmodulo.qrfornecedor.state in [dsinsert,dsedit] then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000009');
    qrduplo.sql.add('where upper(NOME) = '''+ANSIUPPERCASE(dbedit2.text)+''' and codigo <> '''+dbedit1.text+'''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      texto := pansichar( 'Existe um fornecedor cadastrado com este nome!'+#13+
               qrduplo.fieldbyname('codigo').asstring+' - '+qrduplo.fieldbyname('nome').asstring+#13+
               'Endereço: '+qrduplo.fieldbyname('ENDERECO').asSTRING+'!'+#13+
               'Deseja prosseguir?');
      if application.messagebox(texto,'Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idNO then
      begin
        BCANCELARCLICK(FRMfornecedor);
        EXIT;
      end;
    end;
  end;
end;

procedure Tfrmfornecedor.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmfornecedor.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmfornecedor.bcomprasClick(Sender: TObject);
begin
  frmfornecedor_compras := Tfrmfornecedor_compras.CREATE(SELF);
  frmfornecedor_compras.SHOWMODAL;

end;

procedure Tfrmfornecedor.compras1Click(Sender: TObject);
begin
  bcomprasClick(frmfornecedor);
end;

procedure Tfrmfornecedor.combo_pessoaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
 IF (FRMMODULO.QRFORNECEDOR.State = DSINSERT) OR (FRMMODULO.qrfORNECEDOR.State = DSEDIT) THEN
 BEGIN

  IF COMBO_PESSOA.ITEMINDEX <> 0 THEN
  begin
    IF COMBO_PESSOA.ITEMINDEX <> 1 THEN
    BEGIN
      IF COMBO_PESSOA.ITEMINDEX <> 2 THEN
      BEGIN
        IF COMBO_PESSOA.ITEMINDEX <> 3 THEN
        BEGIN
          SHOWMESSAGE('Favor escolher uma opção válida!');
          combo_pessoa.setfocus;
        END
        ELSE
        BEGIN
          LAPELIDO.Caption := 'Nome:';
          LRG.CAPTION := 'IE/RG:';
          LCPF.CAPTION := 'CPF/CNPJ::';
        END;
      END
      ELSE
      BEGIN
        LAPELIDO.Caption := 'Nome:';
        LRG.CAPTION := 'Insc.Est.:';
        LCPF.CAPTION := 'CPF:';
      END;
    END
    ELSE
    BEGIN
      LAPELIDO.Caption := 'Fantasia:';
      LRG.CAPTION := 'Insc.Est.:';
      LCPF.CAPTION := 'CNPJ:';
    END;
  end
  else
  begin
    LAPELIDO.Caption := 'Apelido:';
    LRG.CAPTION := 'C.Identidade:';
    LCPF.CAPTION := 'CPF';
  end;
 END;
end;

procedure Tfrmfornecedor.combo_pessoaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
     key := #0;
     dbedit2.setfocus;
  end;
end;

procedure Tfrmfornecedor.Sugestesdecompra1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;
end;

procedure Tfrmfornecedor.bfiltrarClick(Sender: TObject);
begin
  ldias.Caption := floattostr(ldatafim_remarcado.Date-ldataini_remarcado.Date);

  qrsugestao.close;
  qrsugestao.sql.clear;
  qrsugestao.sql.add('select pro.*, est.* from c000025 pro, c000100 est');
  qrsugestao.sql.add('where pro.situacao = 0 and pro.codigo = est.codproduto and codfornecedor = '''+frmmodulo.qrfornecedor.fieldbyname('codigo').asstring+'''');
  qrsugestao.sql.add('order by codfornecedor,produto');
  qrsugestao.open;

end;

procedure Tfrmfornecedor.ldataini_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfornecedor.ldatafim_remarcadoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

procedure Tfrmfornecedor.qrsugestaoCalcFields(DataSet: TDataSet);
begin
  QUERY.close;
  QUERY.sql.clear;
  QUERY.sql.add('select sum(qtde) vendas from c000032');
  QUERY.sql.add('where codproduto = '''+ qrsugestaoCODIGO.AsString+'''');
  QUERY.sql.add('and movimento = ''2''');
  QUERY.sql.add('and data >= :data_ini and data <= :data_fim');
  QUERY.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
  QUERY.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
  QUERY.open;
  if QUERY.RecordCount > 0 then
    begin
      qrsugestao.FIELDBYNAME('vendas').AsFloat := QUERY.FieldByName('vendas').AsFloat;
      qrsugestao.FIELDBYNAME('SUGESTAO').ASFLOAT :=
      qrsugestao.FIELDBYNAME('VENDAS').ASFLOAT -
      qrsugestao.FIELDBYNAME('estoque_atual').ASFLOAT;
    end
  else
    begin
      qrsugestao.FIELDBYNAME('vendas').AsFloat := 0;
      qrsugestao.FIELDBYNAME('sugestao').AsFloat := 0;
    end;



  if qrsugestao.FIELDBYNAME('sugestao').AsFloat < 0 then
    qrsugestao.FIELDBYNAME('sugestao').AsFloat := 0;
end;

procedure Tfrmfornecedor.GRID5DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
    IF qrsugestaosugestao.value > 0 THEN grid5.canvas.font.Color:= clred;
    grid5.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmfornecedor.DBEdit8KeyPress(Sender: TObject; var Key: Char);
begin

  if key <> #8 then
  if key = #13 then perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;


end;

procedure Tfrmfornecedor.DBEdit15KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  if key = #13 then
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmfornecedor.DBEdit14KeyPress(Sender: TObject; var Key: Char);
begin
if (Key in (['A'..'Z']))OR(Key in (['a'..'z'])) then abort;
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmfornecedor.DBEdit14Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if dbedit14.text = '' then
     frmmodulo.qrfornecedor.fieldbyname('IE').asstring := 'ISENTO';
end;

procedure Tfrmfornecedor.bibgeClick(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qrfornecedor.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.qrfornecedor.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.qrfornecedor.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qrfornecedor.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit6.SetFocus;
end;

procedure Tfrmfornecedor.bcnaeClick(Sender: TObject);
begin

  parametro_pesquisa := '';
  frmxloc_cnae := tfrmxloc_cnae.create(self);
  frmxloc_cnae.showmodal;

  frmmodulo.qrfornecedor.FieldByName('CNAE').AsString := resultado_pesquisa2;
  ecodmunicipio.SetFocus;
end;

procedure Tfrmfornecedor.DBEdit6Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
  begin
    if DBEdit6.Text = '' then
       AdvGlowButton1.OnClick (frmfornecedor);
   end;
end;

procedure Tfrmfornecedor.ecnaeExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
  begin
    if ecnae.Text = '' then
       bcnae.OnClick (frmfornecedor);
   end;
end;

procedure Tfrmfornecedor.DBEdit16KeyPress(Sender: TObject; var Key: Char);
begin
  if key <> #8 then
  IF KEY = #13 THEN
  perform(wm_nextdlgctl,0,0)
  else
  if ( key  in ['0'..'9']) then
   //
  else abort;
end;

procedure Tfrmfornecedor.DBEdit10Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT10.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
    begin
     if pos('-',dbedit10.text) = 0 then
       frmmodulo.qrfornecedor.fieldbyname('TELEFONE1').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit10.text);
    END;
  END;
end;

procedure Tfrmfornecedor.DBEdit11Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT11.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
    begin
     if pos('-',dbedit11.text) = 0 then
       frmmodulo.qrfornecedor.fieldbyname('TELEFONE2').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit11.text);
    END;
  END;
end;

procedure Tfrmfornecedor.DBEdit12Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT12.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
    begin
     if pos('-',dbedit12.text) = 0 then
       frmmodulo.qrfornecedor.fieldbyname('FAX').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit12.text);
    END;
  END;
end;

procedure Tfrmfornecedor.DBEdit29Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT29.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
    begin
     if pos('-',dbedit29.text) = 0 then
       frmmodulo.qrfornecedor.fieldbyname('CELULAR1').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit29.text);
    END;
  END;
end;

procedure Tfrmfornecedor.DBEdit30Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF DBEDIT30.Text <> '' THEN
  BEGIN
    if (frmmodulo.qrfornecedor.state = dsinsert) or (frmmodulo.qrfornecedor.State = dsedit) then
    begin
     if pos('-',dbedit30.text) = 0 then
       frmmodulo.qrfornecedor.fieldbyname('CELULAR2').asstring := FormatMaskText('(99)9999-9999;0;_',dbedit30.text);
    END;
  END;
end;

procedure Tfrmfornecedor.DBEdit16Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
frmmodulo.qrfornecedor.fieldbyname('numero').asstring := frmprincipal.zerarcodigo(dbedit16.text,5);
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
