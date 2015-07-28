unit industrializacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, rxtooledit, rxcurredit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, RzCmboBx, RzDBCmbo, RzDBEdit, RzEdit, RzDBBnEd,
  AdvOfficeStatusBar, AdvGlowButton, AdvToolBar, AdvToolBarStylers,
  AdvOfficeStatusBarStylers, RzBtnEdt, ImgList, wwdblook, Wwdbdlg, RzDBNav,
  ComCtrls, RXCtrls, RzPanel, frxClass, frxDBSet;

type
  Tfrmindustrializacao = class(TForm)
    HeaderView1: THeaderView;
    bfechar: TBitBtn;
    pop_produto: TPopupMenu;
    panel99: TPanel;
    dsmateria_prima: TDataSource;
    pop_principal: TPopupMenu;
    Cancelar1: TMenuItem;
    qrmateria_prima: TZQuery;
    tab_principal: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvPage5: TAdvPage;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    AdvPage2: TAdvPage;
    dsindustria: TDataSource;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    AdvOfficeStatusBar6: TAdvOfficeStatusBar;
    bexclui_lote: TAdvGlowButton;
    binclui_lote: TAdvGlowButton;
    baltera_lote: TAdvGlowButton;
    GRID3: TwwDBGrid;
    DBEdit30: TDBEdit;
    fdados_formacao: THeaderView;
    Label8: TLabel;
    Label9: TLabel;
    HeaderView4: THeaderView;
    bgravar_formacao: TBitBtn;
    bretorna_formacao: TBitBtn;
    eproduto1: TEdit;
    blocproduto1: TBitBtn;
    Label7: TLabel;
    qrindustria: TZQuery;
    dsindustria_item: TDataSource;
    qrindustria_item: TZQuery;
    eproduto_formacao: TEdit;
    qrindustriaCODIGO: TStringField;
    qrindustriaPRODUTO: TStringField;
    qrindustria_itemCODPRODUTO: TStringField;
    qrindustria_itemQUANTIDADE: TFloatField;
    qrindustria_itemCUSTO: TFloatField;
    qrindustria_itemPRODUTO: TStringField;
    qrindustria_itemproduto_ind: TStringField;
    eprodutoM: TEdit;
    AdvOfficeStatusBar7: TAdvOfficeStatusBar;
    AdvOfficeStatusBar8: TAdvOfficeStatusBar;
    fdados_padrao: THeaderView;
    Label51: TLabel;
    GRID: TwwDBGrid;
    HeaderView2: THeaderView;
    Label4: TLabel;
    GRID1: TwwDBGrid;
    Label5: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Bfiltrar: TAdvGlowButton;
    enumero: TEdit;
    ImageList1: TImageList;
    HeaderView6: THeaderView;
    Label17: TLabel;
    HeaderView3: THeaderView;
    Label14: TLabel;
    GRID5: TwwDBGrid;
    Shape1: TShape;
    Label15: TLabel;
    Shape2: TShape;
    Label16: TLabel;
    Shape3: TShape;
    Label18: TLabel;
    Shape4: TShape;
    Label19: TLabel;
    Shape5: TShape;
    Shape6: TShape;
    Shape8: TShape;
    Shape9: TShape;
    Shape10: TShape;
    Label20: TLabel;
    Shape11: TShape;
    HeaderView5: THeaderView;
    Label21: TLabel;
    AdvPage3: TAdvPage;
    GRID4: TwwDBGrid;
    dsdespesa_ind: TDataSource;
    AdvOfficeStatusBar10: TAdvOfficeStatusBar;
    dsdespesaitem_ind: TDataSource;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    AdvOfficeStatusBar11: TAdvOfficeStatusBar;
    binclui_formacao: TAdvGlowButton;
    baltera_formacao: TAdvGlowButton;
    bexclui_formacao: TAdvGlowButton;
    blimpa_despesa: TAdvGlowButton;
    bexclui_despesa: TAdvGlowButton;
    wwDBGrid3: TwwDBGrid;
    combodespesa: TwwDBLookupComboDlg;
    bprocessa_despesa: TAdvGlowButton;
    btotal_Produto: TBitBtn;
    AdvOfficeStatusBar12: TAdvOfficeStatusBar;
    Label23: TLabel;
    AdvOfficeStatusBar13: TAdvOfficeStatusBar;
    Ltotal_despesas: TLabel;
    AdvOfficeStatusBar14: TAdvOfficeStatusBar;
    ltotal_mp: TLabel;
    AdvOfficeStatusBar15: TAdvOfficeStatusBar;
    Ltotal_materiaprima: TLabel;
    bexcluir_despesa: TAdvGlowButton;
    binclui_despesa: TAdvGlowButton;
    baltera_despesa: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton8: TAdvGlowButton;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    Gravar2: TMenuItem;
    Retorna1: TMenuItem;
    pop_despesa: TPopupMenu;
    MenuItem1: TMenuItem;
    MenuItem2: TMenuItem;
    Inclui1: TMenuItem;
    Altera1: TMenuItem;
    Del1: TMenuItem;
    dslote_fabricacao: TDataSource;
    DBText3: TDBText;
    DBText4: TDBText;
    DBText5: TDBText;
    DBText6: TDBText;
    DBText7: TDBText;
    fdados_despesas: THeaderView;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    HeaderView8: THeaderView;
    bgravar_despesa: TBitBtn;
    bretorna_despesa: TBitBtn;
    edespesa: TDBEdit;
    epercentual: TDBEdit;
    coddespesa: TDBEdit;
    fdados_producao: THeaderView;
    Label28: TLabel;
    Shape12: TShape;
    Label29: TLabel;
    Label30: TLabel;
    HeaderView9: THeaderView;
    bgravar_lote: TBitBtn;
    bretorna_lote: TBitBtn;
    eproduto_lote: TEdit;
    eprodutoP: TEdit;
    Label26: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    pop_lote: TPopupMenu;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    ImageList2: TImageList;
    blocproduto_lote: TBitBtn;
    Shape13: TShape;
    Label36: TLabel;
    Shape14: TShape;
    DBText8: TDBText;
    Label37: TLabel;
    Label38: TLabel;
    rmes: TRxCalcEdit;
    evalidade: TDateEdit;
    efabricacao: TDateEdit;
    qrindustriaUNIDADE_PRODUTO: TStringField;
    qrindustria_itemUNIDADE_PRODUTO: TStringField;
    qrindustria_itemUNIDADE_MATERIAPRIMA: TStringField;
    Shape15: TShape;
    Label40: TLabel;
    Shape16: TShape;
    DBText9: TDBText;
    eunitario: TRxCalcEdit;
    eunidadeM: TEdit;
    qrindustriaPRECOCUSTO: TFloatField;
    qrindustria_itemPRECOCUSTO: TFloatField;
    query: TZQuery;
    Label39: TLabel;
    ecusto: TRxCalcEdit;
    Label41: TLabel;
    epeso_liquido: TRxCalcEdit;
    Label42: TLabel;
    epeso_bruto: TRxCalcEdit;
    Label43: TLabel;
    sproduto: TFlatPanel;
    Label6: TLabel;
    eproduto: TEdit;
    blocproduto: TBitBtn;
    eprodutoF: TEdit;
    eunidadeP: TEdit;
    Label44: TLabel;
    Shape7: TShape;
    qrindustria_itemCODIGO: TStringField;
    batualiza_lote: TAdvGlowButton;
    Processa1: TMenuItem;
    Produto2: TMenuItem;
    IncDespesa1: TMenuItem;
    AltDespesa1: TMenuItem;
    Relatorio1: TMenuItem;
    etecnico: TEdit;
    ereg_tecnico: TEdit;
    ereg_ma: TEdit;
    evalor: TRxCalcEdit;
    eunidade_lote: TEdit;
    elote: TEdit;
    Shape17: TShape;
    Label1: TLabel;
    Shape18: TShape;
    DBText1: TDBText;
    Shape19: TShape;
    Label3: TLabel;
    Shape20: TShape;
    DBText2: TDBText;
    ViewSplit2: TViewSplit;
    bar: TProgressBar;
    ViewSplit1: TViewSplit;
    efornecedor: TEdit;
    blocproduto_lot: TBitBtn;
    eprodutoL: TEdit;
    Filtra1: TMenuItem;
    bcancela_lote: TAdvGlowButton;
    Cancela1: TMenuItem;
    DBEdit1: TDBEdit;
    binclui_produto: TAdvGlowButton;
    bexclui_produto: TAdvGlowButton;
    DBEdit2: TDBEdit;
    Label12: TLabel;
    ecfop: TRzDBButtonEdit;
    elaudo: TEdit;
    eobservacao: TEdit;
    equantidade: TRxCalcEdit;
    equantidade_lote: TRxCalcEdit;
    AdvPage4: TAdvPage;
    AdvOfficeStatusBar4: TAdvOfficeStatusBar;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton12: TAdvGlowButton;
    dspedido_industria: TDataSource;
    dspedido_industria_item: TDataSource;
    RzGroupBox1: TRzGroupBox;
    wwDBGrid1: TwwDBGrid;
    RzGroupBox2: TRzGroupBox;
    wwDBGrid2: TwwDBGrid;
    qrpedido_industria_item: TZQuery;
    qrpedido_industria_itemCODIGO: TStringField;
    qrpedido_industria_itemPEDIDO: TStringField;
    qrpedido_industria_itemCODPRODUTO: TStringField;
    qrpedido_industria_itemREFERENCIA: TStringField;
    qrpedido_industria_itemTAMANHO: TStringField;
    qrpedido_industria_itemQUANTIDADE: TIntegerField;
    qrpedido_industria_itemVALOR: TFloatField;
    qrpedido_industria_itemCOR: TStringField;
    qrpedido_industria_itemTOTAL: TFloatField;
    qrpedido_industria_itemproduto: TStringField;
    qrpedido_industria_itemcodbarra: TStringField;
    AdvGlowButton13: TAdvGlowButton;
    qrpedido_industria_itemITEM: TIntegerField;
    RzPanel1: TRzPanel;
    Label2: TLabel;
    rtotal_pedido: TRzNumericEdit;
    RzPanel2: TRzPanel;
    Label22: TLabel;
    DBText10: TDBText;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    DBText11: TDBText;
    DBText12: TDBText;
    DBText13: TDBText;
    fsmapa: TfrxDBDataset;
    fxpedido: TfrxReport;
    qrmapa: TZQuery;
    qrmapaPEDIDO: TStringField;
    qrmapaCODCLIENTE: TStringField;
    qrmapaLOTE: TStringField;
    qrmapaCODPRODUTO: TStringField;
    qrmapaPEDIDO_1: TStringField;
    qrmapaCOR: TStringField;
    qrmapaTAMANHO: TStringField;
    qrmapacliente: TStringField;
    qrmapaproduto: TStringField;
    Label48: TLabel;
    DBText14: TDBText;
    qrmapaQTDE: TLargeintField;
    bgrade: TAdvGlowButton;
    qrgrade_entrada: TZQuery;
    qrgrade_entradaNUMERACAO: TStringField;
    qrgrade_entradaQTDE: TFloatField;
    qrgrade_entradaCODGRADE: TStringField;
    qrgrade_entradaCODIGO: TStringField;
    qrgrade_entradaCODPRODUTO: TStringField;
    qrgrade_entradaCODNOTA: TStringField;
    qrgrade_entradaCODITEM: TStringField;
    qrmateria_primaCODIGO: TStringField;
    qrmateria_primaPRODUTO: TStringField;
    qrmateria_primaCST: TStringField;
    qrmateria_primaALIQUOTA: TFloatField;
    qrmateria_primaIPI: TFloatField;
    qrmateria_primaPRECOCUSTO: TFloatField;
    qrmateria_primaESTOQUE: TFloatField;
    qrmateria_primaCLASSIFICACAO_FISCAL: TStringField;
    qrmateria_primaUNIDADE: TStringField;
    qrmateria_primaCODPRODUTO: TStringField;
    qrmateria_primaCODFILIAL: TStringField;
    qrmateria_primaESTOQUE_INICIAL: TFloatField;
    qrmateria_primaENTRADAS: TFloatField;
    qrmateria_primaSAIDAS: TFloatField;
    qrmateria_primaESTOQUE_ATUAL: TFloatField;
    qrmateria_primaULTIMA_ENTRADA: TDateTimeField;
    qrmateria_primaULTIMA_SAIDA: TDateTimeField;
    qrmateria_primaNOTA_FISCAL: TStringField;
    qrestoque: TZQuery;
    qrestoqueCODPRODUTO: TStringField;
    qrestoqueCODFILIAL: TStringField;
    qrestoqueESTOQUE_INICIAL: TFloatField;
    qrestoqueENTRADAS: TFloatField;
    qrestoqueSAIDAS: TFloatField;
    qrestoqueESTOQUE_ATUAL: TFloatField;
    qrestoqueULTIMA_ENTRADA: TDateTimeField;
    qrestoqueULTIMA_SAIDA: TDateTimeField;
    qrestoqueNOTA_FISCAL: TStringField;
    AdvGlowButton14: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    AdvGlowButton15: TAdvGlowButton;
    AdvGlowButton16: TAdvGlowButton;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    AdvGlowButton17: TAdvGlowButton;
    AdvGlowButton18: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    AdvGlowButton19: TAdvGlowButton;
    AdvGlowButton20: TAdvGlowButton;
    DBAdvGlowButton5: TDBAdvGlowButton;
    DBAdvGlowButton6: TDBAdvGlowButton;
    DBAdvGlowButton7: TDBAdvGlowButton;
    DBAdvGlowButton8: TDBAdvGlowButton;
    AdvGlowButton21: TAdvGlowButton;
    AdvGlowButton22: TAdvGlowButton;
    AdvGlowButton23: TAdvGlowButton;
    AdvGlowButton24: TAdvGlowButton;
    AdvGlowButton25: TAdvGlowButton;
    AdvGlowButton26: TAdvGlowButton;
    AdvGlowButton27: TAdvGlowButton;
    AdvGlowButton28: TAdvGlowButton;
    AdvGlowButton29: TAdvGlowButton;
    AdvGlowButton30: TAdvGlowButton;
    AdvGlowButton31: TAdvGlowButton;
    AdvGlowButton32: TAdvGlowButton;
    AdvGlowButton33: TAdvGlowButton;
    AdvGlowButton34: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure enomeEnter(Sender: TObject);
    procedure enomeExit(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure enomeKeyPress(Sender: TObject; var Key: Char);
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure bgravar_formacaoClick(Sender: TObject);
    procedure bretorna_formacaoClick(Sender: TObject);
    procedure eproduto1Exit(Sender: TObject);
    procedure blocproduto1Click(Sender: TObject);
    procedure eproduto1KeyPress(Sender: TObject; var Key: Char);
    procedure binclui_formacaoClick(Sender: TObject);
    procedure baltera_formacaoClick(Sender: TObject);
    procedure bexclui_formacaoClick(Sender: TObject);
    procedure eprodutoEnter(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure blocprodutoClick(Sender: TObject);
    procedure binclui_produtoClick(Sender: TObject);
    procedure bexclui_produtoClick(Sender: TObject);
    procedure dsindustriaDataChange(Sender: TObject;
      Field: TField);
    procedure equantidadeKeyPress(Sender: TObject; var Key: Char);
    procedure combodespesaExit(Sender: TObject);
    procedure bexclui_despesaClick(Sender: TObject);
    procedure blimpa_despesaClick(Sender: TObject);
    procedure btotal_ProdutoClick(Sender: TObject);
    procedure bprocessa_despesaClick(Sender: TObject);
    procedure bgravar_despesaClick(Sender: TObject);
    procedure bretorna_despesaClick(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure binclui_despesaClick(Sender: TObject);
    procedure baltera_despesaClick(Sender: TObject);
    procedure bexcluir_despesaClick(Sender: TObject);
    procedure Gravar2Click(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure MenuItem2Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Inclui1Click(Sender: TObject);
    procedure binclui_loteClick(Sender: TObject);
    procedure baltera_loteClick(Sender: TObject);
    procedure bexclui_loteClick(Sender: TObject);
    procedure Altera1Click(Sender: TObject);
    procedure Del1Click(Sender: TObject);
    procedure MenuItem3Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure bgravar_loteClick(Sender: TObject);
    procedure bretorna_loteClick(Sender: TObject);
    procedure blocproduto_loteClick(Sender: TObject);
    procedure eproduto_loteKeyPress(Sender: TObject; var Key: Char);
    procedure rmesExit(Sender: TObject);
    procedure equantidadeExit(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure batualiza_loteClick(Sender: TObject);
    procedure Processa1Click(Sender: TObject);
    procedure equantidade_loteExit(Sender: TObject);
    procedure bpedidoClick(Sender: TObject);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure blocproduto_lotKeyPress(Sender: TObject; var Key: Char);
    procedure blocproduto_lotClick(Sender: TObject);
    procedure enumeroExit(Sender: TObject);
    procedure DateEdit2Exit(Sender: TObject);
    procedure Filtra1Click(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure bcancela_loteClick(Sender: TObject);
    procedure Cancela1Click(Sender: TObject);
    procedure dspedido_industriaDataChange(Sender: TObject; Field: TField);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure bgradeClick(Sender: TObject);

  private
    procedure AtualizaEstoque(eCodProduto,eTipo : string ; eQtde : Double);
    { Private declarations }
  public
    vopcao,vopcao_item,vopcao_pedido : integer;
    { Public declarations }
  end;

var
  frmindustrializacao: Tfrmindustrializacao;
  comando : string;
  vrendimento_anterior : double;
  vUsa_Grade, vRecno_Formacao : integer;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, xloc_grupo,
  xloc_produto, loc_materiaprima, produto, produto_ligth,
  loc_produto_industria, Math, industrializacao_pedido, produto_gradeI,
  principal2;

{$R *.dfm}


procedure Tfrmindustrializacao.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrmateria_prima.close;
  qrindustria.Close;
  qrindustria_item.Close;
  qrpedido_industria_item.Close;

  frmmodulo.qrdespesas_ind.close;
  frmmodulo.qrdespesasitem_ind.close;
  frmmodulo.qrindustria_produtos.Close;
  frmmodulo.qrpedido_industria.Close;

  action := cafree;
end;

procedure Tfrmindustrializacao.FormShow(Sender: TObject);
begin
  frmmodulo.qrprod.open;

  //pgravar.visible := false;
  //pgravar.Align := alClient;

  qrindustria.close;
  qrindustria.SQL.clear;
  qrindustria.SQL.add('select codigo,produto,unidade_produto,precocusto from c000079');
  qrindustria.SQL.add('GROUP BY');
  qrindustria.SQL.add('codigo,produto,unidade_produto,precocusto');
  qrindustria.SQL.add('ORDER BY');
  qrindustria.SQL.add('produto');
  qrindustria.open;
  qrindustria.first;

  eproduto_formacao.Text := qrindustriaCODIGO.AsString;

  qrindustria_item.close;
  qrindustria_item.SQL.clear;
  qrindustria_item.SQL.add('select * from c000079 where codigo = '''+eproduto_formacao.Text+'''');
  qrindustria_item.open;

  qrestoque.close;
  qrestoque.SQL.clear;
  qrestoque.SQL.add('select * from c000100 where codproduto = '''+eproduto_formacao.Text+'''');
  qrestoque.open;

  qrmateria_prima.close;
  qrmateria_prima.SQL.clear;
  qrmateria_prima.SQL.add('select p.codigo,p.produto,p.cst,p.aliquota,p.ipi,p.precocusto,p.estoque,');
  qrmateria_prima.SQL.add('p.CLASSIFICACAO_FISCAL,p.unidade,e.* from c000025 p, c000100 e');
  qrmateria_prima.SQL.add('where tipo = :vtip');
  qrmateria_prima.Params.ParamByName('vtip').AsString := 'MATÉRIA-PRIMA';
  qrmateria_prima.open;

  frmmodulo.qrdespesas_ind.close;
  frmmodulo.qrdespesas_ind.SQL.clear;
  frmmodulo.qrdespesas_ind.SQL.add('select * from c000090');
  frmmodulo.qrdespesas_ind.SQL.add('ORDER BY codigo');
  frmmodulo.qrdespesas_ind.open;

  frmmodulo.qrdespesasitem_ind.close;
  frmmodulo.qrdespesasitem_ind.SQL.clear;
  frmmodulo.qrdespesasitem_ind.SQL.add('select * from c000091 WHERE codigo = '''+eproduto_formacao.Text+'''');
  frmmodulo.qrdespesasitem_ind.open;

  //dateedit1.text := '01/'+copy(datetostr(date),4,7);
  //dateedit2.date := frmprincipal.UltimoDiaMes(date);

  frmmodulo.qrlote_fabricacao.close;
  frmmodulo.qrlote_fabricacao.SQL.clear;
  frmmodulo.qrlote_fabricacao.SQL.add('select * from c000092');
  frmmodulo.qrlote_fabricacao.SQL.add('ORDER BY lote');
  frmmodulo.qrlote_fabricacao.open;

  frmmodulo.qrpedido_industria.Close;
  frmmodulo.qrpedido_industria.SQL.Clear;
  frmmodulo.qrpedido_industria.SQL.Add('select * from c000126');
  frmmodulo.qrpedido_industria.SQL.Add('where situacao = 1');
  frmmodulo.qrpedido_industria.SQL.Add('order by pedido');
  frmmodulo.qrpedido_industria.Open;

  btotal_ProdutoClick(frmindustrializacao);

  equantidade.DecimalPlaces := decimal_qtde;
  equantidade_lote.DecimalPlaces := decimal_qtde;

  eunitario.DecimalPlaces := decimal_qtde;
  ecusto.DecimalPlaces := decimal_qtde;
  evalor.DecimalPlaces := decimal_qtde;


  equantidade.DisplayFormat := mascara_qtde;
  equantidade_lote.DisplayFormat := mascara_qtde;

  eunitario.DisplayFormat := mascara_qtde;
  ecusto.DisplayFormat := mascara_qtde;
  evalor.DisplayFormat := mascara_qtde;


  GRID5.SetFocus;

  //pficha.Enabled := false;
  //bincluir.SetFocus;
end;

procedure Tfrmindustrializacao.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmindustrializacao.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmindustrializacao.bfecharClick(Sender: TObject);
begin
  close;

end;

procedure Tfrmindustrializacao.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmindustrializacao.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmindustrializacao.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
 if frmmodulo.qrindustria_produtos.state = dsinsert then
end;

procedure Tfrmindustrializacao.bgravar_formacaoClick(Sender: TObject);
begin

  if equantidade.Value = 0 then
    begin
      Application.messagebox('Quantidade Inválida, Verifique!','Rendimentos!',mb_ok+MB_ICONWARNING);
      exit;
    end;

  if vopcao_item = 1 then
    qrindustria_item.Insert
  else if vopcao_item = 2 then
    qrindustria_item.Edit;

  qrindustria_itemCODIGO.AsString := eproduto.Text;
  qrindustria_itemPRODUTO.AsString := eprodutoF.Text;
  qrindustria_itemUNIDADE_PRODUTO.AsString := eunidadeP.Text;
  qrindustria_itemCODPRODUTO.AsString := eproduto1.Text;
  qrindustria_itemPRODUTO.AsString := eprodutoF.Text;
  qrindustria_itemUNIDADE_MATERIAPRIMA.AsString := eunidadeM.Text;
  qrindustria_itemQUANTIDADE.AsFloat := equantidade.Value;
  qrindustria_itemCUSTO.AsFloat := ecusto.Value;
  qrindustria_item.post;

  //btotal_ProdutoClick(frmindustrializacao);

  qrindustria.close;
  qrindustria.SQL.clear;
  qrindustria.SQL.add('select codigo,produto,unidade_produto,precocusto from c000079');
  qrindustria.SQL.add('GROUP BY');
  qrindustria.SQL.add('codigo,produto,unidade_produto,precocusto');
  qrindustria.SQL.add('ORDER BY');
  qrindustria.SQL.add('produto');
  qrindustria.open;
  qrindustria.first;

  eproduto_formacao.Text := qrindustriaCODIGO.AsString;

  if vopcao_item = 1 then
    begin
      eproduto1.Text := '';
      eunidadeM.Text := '';
      equantidade.Value := 0;
      ecusto.Value := 0;

      if vopcao = 1 then
        begin
          frmmodulo.qrdespesas_ind.Open;
          while not frmmodulo.qrdespesas_ind.Eof do
          begin
            frmmodulo.qrdespesasitem_ind.Insert;

            frmmodulo.qrdespesasitem_ind.FieldByName('CODIGO').AsString     := eproduto.Text;
            frmmodulo.qrdespesasitem_ind.FieldByName('CODDESPESA').AsString := frmmodulo.qrdespesas_indCODIGO.AsString;
            frmmodulo.qrdespesasitem_ind.FieldByName('PERCENTUAL').AsString := frmmodulo.qrdespesas_indPERCENTUAL.AsString;

            frmmodulo.qrdespesasitem_ind.Post;
            frmmodulo.qrdespesas_ind.Next;
          end;
          frmmodulo.qrdespesasitem_ind.First;
          vopcao := 0;
          bprocessa_despesaClick(frmindustrializacao);
        end;

      eproduto1.SetFocus;
    end
  else
    begin
      frmmodulo.Conexao.Commit;
      bretorna_formacaoClick(frmindustrializacao);
    end;

  // fdados_rendimento.visible := false;
  // balterar.SetFocus;

end;

procedure Tfrmindustrializacao.bretorna_formacaoClick(Sender: TObject);
begin

  qrindustria_item.Cancel;

  frmmodulo.Conexao.Commit;

  qrindustria.Last;

  btotal_ProdutoClick(frmindustrializacao);

  GRID1.SetFocus;

  if vopcao_item = 2 then
    qrindustria_item.RecNo := vrecno_formacao;

  frmindustrializacao.PopupMenu := pop_principal;
  
  fdados_formacao.visible := false;

  qrindustria.Refresh;
  
end;

procedure Tfrmindustrializacao.eproduto1Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;

end;

procedure Tfrmindustrializacao.blocproduto1Click(Sender: TObject);
begin
  frmloc_materiaprima := tfrmloc_materiaprima.create(self);
  frmloc_materiaprima.showmodal;

  eproduto1.Text := qrmateria_prima.fieldbyname('codigo').asstring;
  eprodutoM.Text := qrmateria_prima.fieldbyname('produto').AsString;
  eunidadeM.Text := qrmateria_prima.fieldbyname('unidade').AsString;
  eunitario.Text := qrmateria_prima.fieldbyname('precocusto').AsString;

  {
  dsindustria_item.dataset.fieldbyname('codproduto').asstring := qrmateria_prima.fieldbyname('codigo').AsString;
  dsindustria_item.dataset.fieldbyname('produto_ind').AsString := qrmateria_prima.fieldbyname('produto').AsString;
  dsindustria_item.dataset.fieldbyname('custo').AsFloat := qrmateria_prima.fieldbyname('precocusto').AsFloat;
  dsindustria_item.dataset.fieldbyname('unidade').AsFloat := qrmateria_prima.fieldbyname('unidade').AsFloat;
  }
  equantidade.SetFocus;

end;

procedure Tfrmindustrializacao.eproduto1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);

//    IF (dsindustria_item.state = dsinsert) or (dsindustria_item.State = dsedit) then
//          begin
               if eproduto1.text <> '' then
                 begin
                   eproduto1.Text := frmPrincipal.zerarcodigo(eproduto1.Text,6);
                   if eproduto1.text <> '' then
                     begin
                       if not qrmateria_prima.LOCATE('codigo',eproduto1.Text,[loCaseInsensitive]) THEN
                         begin
                           blocproduto1click(frmindustrializacao);
                         end
                       else
                         begin
                           eproduto1.Text := qrmateria_prima.fieldbyname('codigo').AsString;
                           eprodutoM.Text := qrmateria_prima.fieldbyname('produto').AsString;
                           eunidadeM.Text := qrmateria_prima.fieldbyname('unidade').AsString;
                           eunitario.Text := qrmateria_prima.fieldbyname('precocusto').AsString;

                           //dsindustria_item.dataset.fieldbyname('codproduto').asstring := qrmateria_prima.fieldbyname('codigo').AsString;
                           //dsindustria_item.dataset.fieldbyname('produto_ind').AsString := qrmateria_prima.fieldbyname('produto').AsString;
                           //dsindustria_item.dataset.fieldbyname('custo').AsFloat := qrmateria_prima.fieldbyname('precocusto').AsFloat;
                           //dsindustria_item.dataset.fieldbyname('unidade').AsFloat := qrmateria_prima.fieldbyname('unidade').AsFloat;

                           equantidade.SetFocus;
                           exit;
                         end;
                     end
                   else
                     blocproduto1click(frmindustrializacao);
                  end;
  //        end
  //  else
  //    showmessage('nao achei');
  end;

end;

procedure Tfrmindustrializacao.binclui_formacaoClick(Sender: TObject);
begin

  frmindustrializacao.PopupMenu := pop_produto;

  vopcao_item := 1;
  fdados_formacao.Visible := true;
  fdados_formacao.Left := 96;
  fdados_formacao.Top := 164;

  eproduto.Text := qrindustriaCODIGO.AsString;
  eprodutoF.Text := qrindustriaPRODUTO.AsString;
  eunidadeP.Text := qrindustriaUNIDADE_PRODUTO.AsString;

  eproduto1.Text := '';
  eprodutoM.Text := '';
  eunidadeM.Text := '';
  eunitario.Value := 0;
  ecusto.Value := 0;
  equantidade.Value := 0;

  if eproduto_formacao.Text = '' then
    begin
      Application.messagebox('Não foi Definido o Produto Acabado, Verifique!','Despesas!',mb_ok+MB_ICONWARNING);
      binclui_produto.SetFocus;
      exit;
    end
  else
    eproduto1.setfocus;

end;

procedure Tfrmindustrializacao.baltera_formacaoClick(Sender: TObject);
begin

  vrecno_formacao := qrindustria_item.RecNo;

  frmindustrializacao.PopupMenu := pop_produto;

  vopcao_item := 2;
  fdados_formacao.Visible := true;
  fdados_formacao.Left := 96;
  fdados_formacao.Top := 164;

  eproduto.Text := qrindustria_itemCODIGO.AsString;

  eprodutoF.Text := qrindustria_itemPRODUTO.AsString;
  eunidadeP.Text := qrindustria_itemUNIDADE_PRODUTO.AsString;

  eproduto1.Text := qrindustria_itemCODPRODUTO.AsString;
  eprodutoM.Text := qrindustria_itemproduto_ind.AsString;
  eunidadeM.Text := qrindustria_itemUNIDADE_MATERIAPRIMA.AsString;
  eunitario.Value   := qrindustria_itemCUSTO.AsFloat/qrindustria_itemQUANTIDADE.AsFloat;
  equantidade.Value := qrindustria_itemQUANTIDADE.AsFloat;
  ecusto.Value := qrindustria_itemCUSTO.AsFloat;

  eproduto1.setfocus;

end;

procedure Tfrmindustrializacao.bexclui_formacaoClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Formação',4) then
    begin
      qrindustria_item.Delete;
      frmmodulo.Conexao.commit;
    end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmindustrializacao.eprodutoEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmindustrializacao.eprodutoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmindustrializacao.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);

     //IF (dsindustria_item.state = dsinsert) or (dsindustria_item.State = dsedit) then
          begin
               if eproduto.text <> '' then
                    begin
                         IF frmmodulo.qrproduto.LOCATE('codbarra',eproduto.Text,[loCaseInsensitive]) THEN
                              begin
                                if frmmodulo.qrproduto.FieldByName('tipo').AsString = 'MATÉRIA-PRIMA' then
                                  begin
                                    Application.messagebox('Produto Inválido (Matéria-Prima), Verifique!','Rendimentos!',mb_ok+MB_ICONWARNING);
                                    eproduto.SetFocus;
                                    exit;
                                  end;

                                eproduto.Text := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                                eprodutoF.Text := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                                eunidadeP.Text := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                                eunitario.Text    := frmmodulo.qrproduto.fieldbyname('precocusto').AsString;

                                if qrindustria.LOCATE('codigo',eproduto.Text,[loCaseInsensitive]) THEN
                                  begin
                                    Application.messagebox('O Produto Já é um Produto Acabado, Verifique!','Produção!',mb_ok+MB_ICONWARNING);
                                    eproduto.SetFocus;
                                    exit;
                                  end;

                                eproduto1.setfocus;
                              end
                         else
                              begin
                                   eproduto.Text := frmPrincipal.zerarcodigo(eproduto.Text,6);
                                   if eproduto.text <> '000000' then
                                        begin
                                             if not frmmodulo.qrproduto.LOCATE('codigo',eproduto.Text,[loCaseInsensitive]) THEN
                                                  begin
                                                       blocprodutoClick(frmindustrializacao);
                                                  end
                                             else
                                                  begin
                                                       eproduto.Text := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                                                       eprodutoF.Text := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                                                       eunidadeP.Text := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
                                                       eunitario.Text    := frmmodulo.qrproduto.fieldbyname('precocusto').AsString;

                                                       if qrindustria.LOCATE('codigo',eproduto.Text,[loCaseInsensitive]) THEN
                                                         begin
                                                           Application.messagebox('O Produto Já é um Produto Acabado, Verifique!','Produção!',mb_ok+MB_ICONWARNING);
                                                           eproduto.SetFocus;
                                                           exit;
                                                         end;

                                                       eproduto1.setfocus;
                                                  end;

                                        end
                                   else
                                        blocprodutoClick(frmindustrializacao);
                              end;
                         end
               else
                    blocprodutoClick(frmindustrializacao);
          end;
       //else
       //showmessage('nao achei');

  end;

end;

procedure Tfrmindustrializacao.blocprodutoClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;

  if resultado_pesquisa1 = '' then exit;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
  frmmodulo.qrproduto.open;

  if frmmodulo.qrproduto.FieldByName('tipo').AsString = 'MATÉRIA-PRIMA' then
    begin
      Application.messagebox('Produto Inválido (Matéria-Prima), Verifique!','Rendimentos!',mb_ok+MB_ICONWARNING);
      eproduto.SetFocus;
      exit;
    end;

  eproduto.Text  := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  eprodutoF.Text := frmmodulo.qrproduto.fieldbyname('produto').AsString;
  eunidadeP.Text  := frmmodulo.qrproduto.fieldbyname('unidade').AsString;
  eunitario.Text    := frmmodulo.qrproduto.fieldbyname('precocusto').AsString;
  {
  dsindustria_item.dataset.fieldbyname('codigo').asstring := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
  dsindustria_item.dataset.fieldbyname('produto').asstring := frmmodulo.qrproduto.fieldbyname('produto').AsString;
  qrindustria.Refresh;
  }
  if qrindustria.LOCATE('codigo',eproduto.Text,[loCaseInsensitive]) THEN
    begin
      Application.messagebox('O Produto Já é um Produto Acabado, Verifique!','Produção!',mb_ok+MB_ICONWARNING);
      eproduto.SetFocus;
      exit;
    end;

  eproduto1.SetFocus;

end;

procedure Tfrmindustrializacao.binclui_produtoClick(Sender: TObject);
begin

  vopcao_item := 1;
  vopcao := 1;
  fdados_formacao.Visible := true;
  fdados_formacao.Left := 96;
  fdados_formacao.Top := 164;
  eproduto.Text := '';
  eproduto1.Text := '';

  //qrindustria_item.insert;

  frmindustrializacao.PopupMenu := pop_produto;
  sproduto.Enabled := true;

  eproduto.setfocus;

end;

procedure Tfrmindustrializacao.bexclui_produtoClick(Sender: TObject);
var
 vexclui_produto : string;
begin
  if frmprincipal.autentica('Excluir Formação',4) then
  begin

    vexclui_produto := eproduto_formacao.Text;

    // matéria prima
    frmmodulo.qrindustria_produtos.Close;
    frmmodulo.qrindustria_produtos.SQL.clear;
    frmmodulo.qrindustria_produtos.SQL.Add('select * from c000079 where codigo = '''+vexclui_produto+'''');
    frmmodulo.qrindustria_produtos.open;

    if frmmodulo.qrindustria_produtos.RecordCount <> 0 then
      begin
        frmmodulo.qrindustria_produtos.Close;
        frmmodulo.qrindustria_produtos.SQL.clear;
        frmmodulo.qrindustria_produtos.SQL.Add('delete from c000079 where codigo = '''+vexclui_produto+'''');
        frmmodulo.qrindustria_produtos.execsql;
      end;
    qrindustria.Refresh;
    qrindustria_item.Refresh;

    // outras despesas
    query.Close;
    query.SQL.clear;
    query.SQL.Add('delete from c000091 where codigo = '''+vexclui_produto+'''');
    query.execsql;

    qrindustria.Refresh;
    qrindustria_item.Refresh;
    frmmodulo.qrdespesasitem_ind.Refresh;

    frmmodulo.Conexao.commit;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmindustrializacao.dsindustriaDataChange(
  Sender: TObject; Field: TField);

var
  vtotal_mp,vtotal_despesa : double;

begin

    eproduto_formacao.Text := qrindustriaCODIGO.AsString;

    qrindustria_item.Close;
    qrindustria_item.SQL.clear;
    qrindustria_item.SQL.Add('select * from c000079 where codigo = '''+eproduto_formacao.Text+'''');
    qrindustria_item.open;

    frmmodulo.qrdespesasitem_ind.Close;
    frmmodulo.qrdespesasitem_ind.SQL.clear;
    frmmodulo.qrdespesasitem_ind.SQL.Add('select * from c000091 where codigo = '''+eproduto_formacao.Text+'''');
    frmmodulo.qrdespesasitem_ind.open;

    // materia prima
    QUERY.Close;
    QUERY.SQL.clear;
    QUERY.SQL.Add('select sum(custo) materiaprima from c000079 where codigo = '''+eproduto_formacao.Text+'''');
    QUERY.open;

    vtotal_mp := QUERY.FIELDBYNAME('materiaprima').ASFLOAT;
    Ltotal_materiaprima.Caption := 'R$ '+formatfloat('###,###,###,##0.000',vtotal_mp);

    // despesas

    frmmodulo.qrdespesasitem_ind.Open;
    frmmodulo.qrdespesasitem_ind.First;
    vtotal_despesa := 0;

    if frmmodulo.qrdespesasitem_ind.RecordCount > 0 then
      while not frmmodulo.qrdespesasitem_ind.Eof do
        begin
          frmmodulo.qrdespesasitem_ind.Edit;
          frmmodulo.qrdespesasitem_indVALOR.AsFloat := vtotal_mp*frmmodulo.qrdespesasitem_indPERCENTUAL.AsFloat/100;
          vtotal_despesa := vtotal_despesa + frmmodulo.qrdespesasitem_indVALOR.AsFloat;
          frmmodulo.qrdespesasitem_ind.Post;
          frmmodulo.qrdespesasitem_ind.Next;
        end;

     Ltotal_despesas.Caption := 'R$ '+formatfloat('###,###,###,##0.000',vtotal_despesa);

     //Ltotal_produto.Caption := formatfloat('###,###,###,##0.00',qrindustriaPRECOCUSTO.AsFloat);

    //btotal_ProdutoClick(frmindustrializacao);

end;

procedure Tfrmindustrializacao.equantidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmindustrializacao.combodespesaExit(Sender: TObject);
var
 vrecno : integer;
begin

  vrecno := frmmodulo.qrdespesasitem_ind.RecNo;

  if eproduto_formacao.Text = '' then
    begin
      Application.messagebox('Não foi Definido o Produto Acabado, Verifique!','Despesas!',mb_ok+MB_ICONWARNING);
      binclui_produto.SetFocus;
      exit;
    end;

  frmmodulo.qrdespesasitem_ind.FieldByName('codigo').AsString := eproduto_formacao.Text;
  frmmodulo.qrdespesasitem_ind.FieldByName('percentual').AsFloat := frmmodulo.qrdespesas_indPERCENTUAL.AsFloat;
  frmmodulo.qrdespesasitem_ind.Post;

  frmmodulo.Conexao.Commit;

  //qrindustria.Next;
  
  btotal_ProdutoClick(frmindustrializacao);

  frmmodulo.qrdespesasitem_ind.RecNo := vrecno;

end;

procedure Tfrmindustrializacao.bexclui_despesaClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Despesas',4) then
    begin
      frmmodulo.qrdespesasitem_ind.Delete;
      frmmodulo.Conexao.commit;
    end
  else
    begin
      Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    end;

  btotal_ProdutoClick(frmindustrializacao);
  
end;

procedure Tfrmindustrializacao.blimpa_despesaClick(Sender: TObject);
begin
  if frmprincipal.autentica('Limpa Despesas',4) then
    begin
      frmmodulo.qrdespesasitem_ind.Open;
      while not frmmodulo.qrdespesasitem_ind.Eof do
        begin
          if frmmodulo.qrdespesasitem_ind.FieldByName('codigo').AsString = eproduto_formacao.Text then
            frmmodulo.qrdespesasitem_ind.Delete;
        end;
      frmmodulo.Conexao.commit;
    end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

  btotal_ProdutoClick(frmindustrializacao);

end;

procedure Tfrmindustrializacao.btotal_ProdutoClick(Sender: TObject);
var
 vtotal_mp,vtotal_despesa,vtotal_produto : double;
 vrecno : integer;
begin


  vtotal_mp := 0;
  vtotal_despesa := 0;

  // materia prima
  QUERY.Close;
  QUERY.SQL.clear;
  QUERY.SQL.Add('select sum(custo) materiaprima from c000079 where codigo = '''+eproduto_formacao.Text+'''');
  QUERY.open;

  vtotal_mp := vtotal_mp + QUERY.FIELDBYNAME('materiaprima').ASFLOAT;
  Ltotal_materiaprima.Caption := 'R$ '+formatfloat('###,###,###,##0.000',vtotal_mp);


  // despesas

  frmmodulo.qrdespesasitem_ind.Open;
  frmmodulo.qrdespesasitem_ind.First;
  vtotal_despesa := 0;

  if frmmodulo.qrdespesasitem_ind.RecordCount > 0 then
    while not frmmodulo.qrdespesasitem_ind.Eof do
      begin
        frmmodulo.qrdespesasitem_ind.Edit;
        frmmodulo.qrdespesasitem_indVALOR.AsFloat := vtotal_mp*frmmodulo.qrdespesasitem_indPERCENTUAL.AsFloat/100;
        vtotal_despesa := vtotal_despesa + frmmodulo.qrdespesasitem_indVALOR.AsFloat;
        frmmodulo.qrdespesasitem_ind.Post;
        frmmodulo.qrdespesasitem_ind.Next;
      end;

  Ltotal_despesas.Caption := 'R$ '+formatfloat('###,###,###,##0.000',vtotal_despesa);
  frmmodulo.qrdespesasitem_ind.First;

  // industria

  if qrindustria.LOCATE('codigo',eproduto_formacao.Text,[loCaseInsensitive]) THEN
    begin
      qrindustria.Edit;
//      qrindustria.FieldByName('precocusto').AsFloat := vtotal_mp+vtotal_despesa;
      qrindustria.Post;
    end;

  // industria itens
  if (vtotal_mp+vtotal_despesa) > 0 then
    begin
      qrindustria_item.Open;
      qrindustria_item.First;
      if qrindustria_item.RecordCount > 0 then
        while not qrindustria_item.Eof do
          begin
            qrindustria_item.Edit;
            qrindustria_item.FieldByName('precocusto').AsFloat := vtotal_mp+vtotal_despesa;
            qrindustria_item.Post;
            qrindustria_item.Next;
          end;
    end;

  //Ltotal_produto.Caption := formatfloat('###,###,###,##0.00',vtotal_mp+vtotal_despesa);

  frmmodulo.qrdespesasitem_ind.Last;

  eproduto_formacao.Text := qrindustriaCODIGO.AsString;

end;

procedure Tfrmindustrializacao.bprocessa_despesaClick(Sender: TObject);
begin
  btotal_ProdutoClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.bgravar_despesaClick(Sender: TObject);
var
  vcod : integer;
begin


  if frmmodulo.qrdespesas_indPERCENTUAL.AsFloat = 0 then
    begin
      Application.messagebox('Percentual Inválida, Verifique!','Rendimentos!',mb_ok+mb_iconerror);
      epercentual.SetFocus;
      exit;
    end;

  if (frmmodulo.qrdespesas_ind.State = dsinsert) or (frmmodulo.qrdespesas_ind.State = dsedit) then
    begin
      frmmodulo.qrdespesas_ind.Post;
      frmmodulo.Conexao.Commit;
    end;

  if vopcao_item = 1 then
    begin
      frmmodulo.qrdespesas_ind.Last;
      vcod := strtoint(frmmodulo.qrdespesas_ind.FieldByName('codigo').AsString)+1;
      frmmodulo.qrdespesas_ind.Append;
      frmmodulo.qrdespesas_ind.FieldByName('codigo').AsString := frmPrincipal.zerarcodigo(inttostr(vcod),6);
      edespesa.setfocus;
    end
  else
    bretorna_despesaClick(frmindustrializacao);

  //fdados_rendimento.visible := false;
  //balterar.SetFocus;

end;

procedure Tfrmindustrializacao.bretorna_despesaClick(Sender: TObject);
begin
  frmmodulo.qrdespesas_ind.Cancel;
  frmmodulo.Conexao.Commit;
  fdados_despesas.visible := false;

  frmindustrializacao.PopupMenu := pop_principal;

  GRID4.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton4Click(Sender: TObject);
begin
  qrindustria.first;
  GRID.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton5Click(Sender: TObject);
begin
  qrindustria.prior;
  GRID.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton6Click(Sender: TObject);
begin
  qrindustria.next;
  GRID.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton7Click(Sender: TObject);
begin
  qrindustria.last;
  GRID.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton8Click(Sender: TObject);
begin
  frmmodulo.qrlote_fabricacao.first;
  GRID5.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton9Click(Sender: TObject);
begin
  frmmodulo.qrlote_fabricacao.prior;
  GRID5.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton10Click(Sender: TObject);
begin
  frmmodulo.qrlote_fabricacao.next;
  GRID5.SetFocus;

end;

procedure Tfrmindustrializacao.AdvGlowButton11Click(Sender: TObject);
begin
  frmmodulo.qrlote_fabricacao.last;
  GRID5.SetFocus;

end;

procedure Tfrmindustrializacao.binclui_despesaClick(Sender: TObject);
var
  vcod : integer;
begin

  frmindustrializacao.PopupMenu := pop_despesa;

  vopcao_item := 1;
  fdados_despesas.Visible := true;
  fdados_despesas.Left := 96;
  fdados_despesas.Top := 164;
  //eproduto.Text := frmmodulo.qrindustria_itemCODIGO.AsString;
 if frmmodulo.qrdespesas_ind.RecordCount > 0 then
 begin

  frmmodulo.qrdespesas_ind.Last;
  vcod := strtoint(frmmodulo.qrdespesas_ind.FieldByName('codigo').AsString)+1;

 end
 else
 begin
  vcod := 1;
 end;
  frmmodulo.qrdespesas_ind.Append;
  frmmodulo.qrdespesas_ind.FieldByName('codigo').AsString := frmPrincipal.zerarcodigo(inttostr(vcod),6);
  edespesa.setfocus;

end;

procedure Tfrmindustrializacao.baltera_despesaClick(Sender: TObject);
begin

  frmindustrializacao.PopupMenu := pop_despesa;

  vopcao_item := 2;

  fdados_despesas.Visible := true;
  fdados_despesas.Left := 96;
  fdados_despesas.Top := 164;

  frmmodulo.qrdespesas_ind.Edit;
  edespesa.setfocus;

end;

procedure Tfrmindustrializacao.bexcluir_despesaClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Despesa',4) then
    begin
      frmmodulo.qrdespesas_ind.Delete;
      frmmodulo.Conexao.commit;
    end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmindustrializacao.Gravar2Click(Sender: TObject);
begin
  bgravar_formacaoClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.Retorna1Click(Sender: TObject);
begin
  bretorna_formacaoClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.MenuItem1Click(Sender: TObject);
begin
  bgravar_despesaClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.MenuItem2Click(Sender: TObject);
begin
  bretorna_despesaClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.Cancelar1Click(Sender: TObject);
begin
  bfecharClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.Inclui1Click(Sender: TObject);
begin
  binclui_loteClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.binclui_loteClick(Sender: TObject);
var
 vcod : integer;
begin
  frmindustrializacao.PopupMenu := pop_lote;

  vopcao_item := 1;
  fdados_producao.Visible := true;
  fdados_producao.Left := 70;
  fdados_producao.Top := 42;
  //eproduto.Text := frmmodulo.qrindustria_itemCODIGO.AsString;


  frmmodulo.qrlote_fabricacao.Open;
  frmmodulo.qrlote_fabricacao.Last;

  if frmmodulo.qrlote_fabricacao.FieldByName('lote').AsString = '' then
    vcod := 1
  else
    vcod := strtoint(frmmodulo.qrlote_fabricacao.FieldByName('lote').AsString)+1;

  elote.Text := frmPrincipal.zerarcodigo(inttostr(vcod),10);

  eproduto_lote.Text := '';
  efabricacao.Date := date;
  evalidade.Date := date;
  rmes.Value := 1;
  equantidade_lote.Value := 1;
  epeso_liquido.Value := 0;
  epeso_bruto.Value := 0;
  etecnico.Text := '';
  ereg_tecnico.Text := '';
  elaudo.Text := '';
  ereg_ma.Text := '';
  evalor.Value := 0;
  eobservacao.Text := '';

  eproduto_lote.setfocus;

end;

procedure Tfrmindustrializacao.baltera_loteClick(Sender: TObject);
begin

  if frmmodulo.qrlote_fabricacao.FieldByName('situacao').AsInteger = 2 then
    begin
      Application.messagebox('Produto já Processado, Verifique!','Lote!',mb_ok+MB_ICONWARNING);
      exit;
    end;

  vrecno_formacao := frmmodulo.qrlote_fabricacao.RecNo;

  frmindustrializacao.PopupMenu := pop_lote;

  vopcao_item := 2;

  fdados_producao.Visible := true;
  fdados_producao.Left := 70;
  fdados_producao.Top := 42;

  elote.Text := frmmodulo.qrlote_fabricacao.FieldByName('lote').AsString;
  eproduto_lote.Text := frmmodulo.qrlote_fabricacao.FieldByName('codproduto').AsString;
  eunidade_lote.Text := frmmodulo.qrlote_fabricacao.FieldByName('unidade').AsString;

  efabricacao.Date := frmmodulo.qrlote_fabricacao.FieldByName('fabricacao').AsDateTime;
  evalidade.Date := frmmodulo.qrlote_fabricacao.FieldByName('validade').AsDateTime;
  rmes.AsInteger := frmmodulo.qrlote_fabricacao.FieldByName('validade_mes').AsInteger;
  equantidade_lote.Value := frmmodulo.qrlote_fabricacao.FieldByName('quantidade').AsFloat;
  epeso_liquido.Value := frmmodulo.qrlote_fabricacao.FieldByName('peso_liquido').AsFloat;
  epeso_bruto.Value := frmmodulo.qrlote_fabricacao.FieldByName('peso_bruto').AsFloat;
  etecnico.Text := frmmodulo.qrlote_fabricacao.FieldByName('tecnico').AsString;
  ereg_tecnico.Text := frmmodulo.qrlote_fabricacao.FieldByName('reg_tecnico').AsString;

  elaudo.Text := frmmodulo.qrlote_fabricacao.FieldByName('laudo_tecnico').AsString;
  ereg_ma.Text := frmmodulo.qrlote_fabricacao.FieldByName('reg_anvisa').AsString;
  evalor.Value := frmmodulo.qrlote_fabricacao.FieldByName('valor').AsFloat;
  eobservacao.Text := frmmodulo.qrlote_fabricacao.FieldByName('observacao').AsString;

  eproduto_lote.setfocus;

end;

procedure Tfrmindustrializacao.bexclui_loteClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Produção',4) then
    begin
      frmmodulo.qrlote_fabricacao.Delete;
      frmmodulo.Conexao.commit;
    end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmindustrializacao.Altera1Click(Sender: TObject);
begin
  baltera_loteClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.Del1Click(Sender: TObject);
begin
  bexclui_loteClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.MenuItem3Click(Sender: TObject);
begin
  bgravar_loteClick(frmindustrializacao);

end;

procedure Tfrmindustrializacao.MenuItem4Click(Sender: TObject);
begin
  bretorna_loteClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.bgravar_loteClick(Sender: TObject);
var
  vcod : integer;
begin


  if eproduto_lote.Text = '' then
    begin
      Application.messagebox('Produto não Informado, Verifique!','Produção!',mb_ok+mb_iconerror);
      eproduto_lote.SetFocus;
      exit;
    end;

  if vopcao_item = 1 then
    begin
      frmmodulo.qrlote_fabricacao.Insert;
      frmmodulo.qrlote_fabricacao.FieldByName('situacao').AsInteger := 1;
    end
  else if vopcao_item = 2 then
    frmmodulo.qrlote_fabricacao.Edit;

  frmmodulo.qrlote_fabricacao.FieldByName('lote').AsString := elote.Text;
  frmmodulo.qrlote_fabricacao.FieldByName('codproduto').AsString := eproduto_lote.Text;
  frmmodulo.qrlote_fabricacao.FieldByName('unidade').AsString := eunidade_lote.Text;

  frmmodulo.qrlote_fabricacao.FieldByName('fabricacao').AsDateTime := efabricacao.Date;
  frmmodulo.qrlote_fabricacao.FieldByName('validade').AsDateTime := evalidade.Date;
  frmmodulo.qrlote_fabricacao.FieldByName('validade_mes').AsInteger := rmes.AsInteger;
  frmmodulo.qrlote_fabricacao.FieldByName('quantidade').AsFloat := equantidade_lote.Value;
  frmmodulo.qrlote_fabricacao.FieldByName('peso_liquido').AsFloat := epeso_liquido.Value;
  frmmodulo.qrlote_fabricacao.FieldByName('peso_bruto').AsFloat := epeso_bruto.Value;
  frmmodulo.qrlote_fabricacao.FieldByName('tecnico').AsString := etecnico.Text;
  frmmodulo.qrlote_fabricacao.FieldByName('reg_tecnico').AsString := ereg_tecnico.Text;

  frmmodulo.qrlote_fabricacao.FieldByName('laudo_tecnico').AsString := elaudo.Text;
  frmmodulo.qrlote_fabricacao.FieldByName('reg_anvisa').AsString := ereg_ma.Text;
  frmmodulo.qrlote_fabricacao.FieldByName('valor').AsFloat := evalor.Value;
  frmmodulo.qrlote_fabricacao.FieldByName('observacao').AsString := eobservacao.Text;

  frmmodulo.qrlote_fabricacao.Post;

  frmmodulo.Conexao.Commit;

  if vopcao_item = 1 then
    begin

      //frmmodulo.qrlote_fabricacao.Open;
      //frmmodulo.qrlote_fabricacao.Last;

      QUERY.Close;
      QUERY.SQL.clear;
      QUERY.SQL.Add('select * from c000092');
      QUERY.SQL.Add('ORDER BY lote');
      QUERY.open;

      query.Last;

      vcod := strtoint(query.FieldByName('lote').AsString)+1;

      elote.Text := frmPrincipal.zerarcodigo(inttostr(vcod),10);

      eproduto_lote.Text := '';
      efabricacao.Date := date;
      evalidade.Date := date;
      rmes.Value := 1;
      equantidade_lote.Value := 1;
      epeso_liquido.Value := 0;
      epeso_bruto.Value := 0;
      etecnico.Text := '';
      ereg_tecnico.Text := '';
      elaudo.Text := '';
      ereg_ma.Text := '';
      evalor.Value := 0;
      eobservacao.Text := '';

      eproduto_lote.setfocus;
    end
  else
    bretorna_loteClick(frmindustrializacao);

  //fdados_rendimento.visible := false;
  //balterar.SetFocus;


end;

procedure Tfrmindustrializacao.bretorna_loteClick(Sender: TObject);
begin
  frmmodulo.qrlote_fabricacao.Cancel;
  frmmodulo.Conexao.Commit;
  fdados_producao.visible := false;

  frmindustrializacao.PopupMenu := pop_principal;

  frmmodulo.qrlote_fabricacao.Refresh;

   if vopcao_item = 2 then
    frmmodulo.qrlote_fabricacao.RecNo := vrecno_formacao;

  GRID5.SetFocus;

end;

procedure Tfrmindustrializacao.blocproduto_loteClick(Sender: TObject);
begin
  frmloc_produto_industria := tfrmloc_produto_industria.create(self);
  frmloc_produto_industria.showmodal;

  eproduto_lote.Text := frmloc_produto_industria.qrindustria.fieldbyname('codigo').AsString;
  eprodutoP.Text := frmloc_produto_industria.qrindustria.fieldbyname('produto').AsString;

  if eproduto_lote.Text = '' then
    begin
      Application.messagebox('Não há Produto com Caracteristica de Indústrialização, Verifique!','Rendimentos!',mb_ok+mb_iconerror);
      bretorna_loteClick(frmindustrializacao);
      tab_principal.ActivePageIndex := 1;
      exit;
    end;

  eunidade_lote.Text := frmloc_produto_industria.qrindustria.fieldbyname('unidade_produto').AsString;
  evalor.Value := frmloc_produto_industria.qrindustria.fieldbyname('precocusto').AsFloat;

  efabricacao.SetFocus;

end;

procedure Tfrmindustrializacao.eproduto_loteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);

            if eproduto_lote.text <> '000000' then
              begin
                if not qrindustria.Locate('codigo',eproduto_lote.Text,[loCaseInsensitive]) THEN
                  begin
                    blocproduto_loteClick(frmindustrializacao);
                  end
                else
                  begin
                    //eproduto_lote.Text := frmloc_produto_industria.qrindustria.fieldbyname('codigo').AsString;
                    //eprodutoP.Text := frmloc_produto_industria.qrindustria.fieldbyname('produto').AsString;
                    eproduto_lote.Text := qrindustria.fieldbyname('codigo').AsString;
                    eprodutoP.Text := qrindustria.fieldbyname('produto').AsString;
                    if eproduto_lote.Text = '' then
                      begin
                        Application.messagebox('Não há Produto com Caracteristica de Indústrialização, Verifique!','Rendimentos!',mb_ok+mb_iconerror);
                        bretorna_loteClick(frmindustrializacao);
                        exit;
                      end;

                    //frmmodulo.qrlote_fabricacao.fieldbyname('codproduto').asstring := frmloc_produto_industria.qrindustria.fieldbyname('codigo').AsString;
                    //frmmodulo.qrlote_fabricacao.fieldbyname('produto').asstring := frmloc_produto_industria.qrindustria.fieldbyname('produto').AsString;
                    eunidade_lote.Text := qrindustria.fieldbyname('unidade_produto').AsString;
                    evalor.Value := qrindustria.fieldbyname('precocusto').AsFloat;

                    //eproduto_lote.setfocus;
                    efabricacao.SetFocus;
                  end;
              end;
          end
      else
        blocproduto_loteClick(frmindustrializacao);


end;

procedure Tfrmindustrializacao.rmesExit(Sender: TObject);
begin
 tedit(sender).Color := clwindow;
 evalidade.Date := IncMonth(efabricacao.Date,rmes.AsInteger);
end;

procedure Tfrmindustrializacao.equantidadeExit(Sender: TObject);
begin
  equantidade.Color := clwindow;
  ecusto.Value := equantidade.Value*eunitario.Value;
end;

procedure Tfrmindustrializacao.BfiltrarClick(Sender: TObject);
var produto, lote : string;

begin
  if efornecedor.Text = '' then produto := ''  else produto := ' and codproduto = '''+copy(efornecedor.text,1,6)+'''';
  if (enumero.text = '0000000000') or (enumero.text = '') then lote := '' else lote := ' and lote = '''+enumero.text+'''';

  if (DateEdit1.Text <> '  /  /    ') or (DateEdit2.Text <> '  /  /    ') then
    begin
      frmmodulo.qrlote_fabricacao.close;
      frmmodulo.qrlote_fabricacao.sql.clear;
      frmmodulo.qrlote_fabricacao.SQL.add('select * from c000092 where fabricacao BETWEEN :datai and :dataf '+produto+lote+' order by lote');
      frmmodulo.qrlote_fabricacao.params.ParamByName('datai').asdatetime := dateedit1.date;
      frmmodulo.qrlote_fabricacao.params.ParamByName('dataf').asdatetime := dateedit2.date;
      frmmodulo.qrlote_fabricacao.open;
    end
  else
    begin
      frmmodulo.qrlote_fabricacao.close;
      frmmodulo.qrlote_fabricacao.sql.clear;
      frmmodulo.qrlote_fabricacao.SQL.add('select * from c000092 order by lote');
      frmmodulo.qrlote_fabricacao.open;
    end;

  //rqde.Value   := qrnota.RecordCount;

  //btotaliza_notaClick(frmcompra_menu);

  //gridRowChanged(frmcompra_menu);

  efornecedor.Text := '';
  eprodutoL.Text := '';
  enumero.Text := '';
  DateEdit1.Text := '';
  DateEdit2.Text := '';

  GRID5.SetFocus;

end;

procedure Tfrmindustrializacao.batualiza_loteClick(Sender: TObject);
var
  vlot,vcod,vpro : string;
  vcodproduto,vproduto : string;
  vqde,vqde_produto : double;
  vval : double;
begin

  if frmmodulo.qrlote_fabricacao.FieldByName('situacao').AsInteger = 2 then
    begin
      Application.messagebox('Lote já Processado, Verifique!','Lote!',mb_ok+mb_iconerror);
      exit;
    end;

  vrecno_formacao := frmmodulo.qrlote_fabricacao.RecNo;

  vcod := frmmodulo.qrlote_fabricacaoCODPRODUTO.AsString;
  vqde := frmmodulo.qrlote_fabricacaoQUANTIDADE.AsFloat;
  vval := frmmodulo.qrlote_fabricacaoVALOR.AsFloat;

  if application.messagebox('Tem certeza que deseja Processar esse lote ?','Atenção',mb_yesno+mb_iconquestion) = idno then
    exit;

  // produto acabado

  vUsa_Grade := 0;

  if frmmodulo.qrproduto.LOCATE('codigo',vcod,[loCaseInsensitive]) THEN
    begin

      vUsa_Grade := frmmodulo.qrproduto.FieldByName('usa_grade').asinteger;

      frmmodulo.qrproduto.Edit;
      //frmmodulo.qrproduto.FieldByName('estoque').AsFloat := frmmodulo.qrproduto.FieldByName('estoque').AsFloat + vqde;
      frmmodulo.qrproduto.FieldByName('precocusto').AsFloat := vval;
      frmmodulo.qrproduto.Post;
      frmmodulo.qrproduto.Refresh;

      AtualizaEstoque(vcod,'E',vqde);

    end;

  query.close;
  query.SQL.clear;
  query.SQL.add('select * from c000079 where codigo = '''+vcod+'''');
  query.open;

  bar.position := 0;
  bar.Max := query.RecordCount;

  query.First;
  // materia prima
  while not query.Eof do
    begin
      vcodproduto := QUERY.FIELDBYNAME('codproduto').AsString;
      vqde_produto := QUERY.FIELDBYNAME('quantidade').AsFloat;

      AtualizaEstoque(vcodproduto,'S',vqde_produto*vqde);

      {
      if frmmodulo.qrproduto.LOCATE('codigo',vcodproduto,[loCaseInsensitive]) THEN
        begin
          frmmodulo.qrproduto.Edit;
          frmmodulo.qrproduto.FieldByName('estoque').AsFloat := frmmodulo.qrproduto.FieldByName('estoque').AsFloat - (vqde_produto*vqde);
          frmmodulo.qrproduto.Post;
        end;
      }
      
      query.Next;
      bar.Position := bar.position + 1;

    end;

  //////////////////   c000032

  begin
      FRMMODULO.QRPRODUTO_MOV.CLOSE;
      FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
      FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
      FRMMODULO.QRPRODUTO_MOV.OPEN;

      query.first;
      // materia prima
      while not query.eof do
      begin
            frmmodulo.qrproduto_mov.Insert;

            frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal2.codifica('000032');
            frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := frmmodulo.qrlote_fabricacao.FIELDBYNAME('lote').ASSTRING;
            frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := '';
            frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';
            frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := '';
            frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := query.fieldbyname('codproduto').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat          := query.FieldByName('quantidade').asfloat*frmmodulo.qrlote_fabricacao.FieldByName('quantidade').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat      := query.FieldByName('precocusto').asfloat/query.FieldByName('quantidade').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := query.fieldbyname('precocusto').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := query.fieldbyname('unidade_produto').AsString;
            frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := 0;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
            frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
            frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
            frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 11; // baixa matéria prima
            frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmmodulo.qrlote_fabricacao.FIELDBYNAME('fabricacao').ASSTRING;
            frmmodulo.qrproduto_mov.Post;
            query.Next;
      end;

      // produto acabado
      frmmodulo.qrproduto_mov.Insert;
      frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal2.codifica('000032');
      frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := frmmodulo.qrlote_fabricacao.FIELDBYNAME('lote').ASSTRING;
      frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := '';
      frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';
      frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := '';
      frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := frmmodulo.qrlote_fabricacao.fieldbyname('codproduto').AsString;
      frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat          := frmmodulo.qrlote_fabricacao.FieldByName('quantidade').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat      := frmmodulo.qrlote_fabricacao.FieldByName('valor').asfloat/query.FieldByName('quantidade').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := frmmodulo.qrlote_fabricacao.fieldbyname('valor').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := frmmodulo.qrlote_fabricacao.fieldbyname('unidade').AsString;
      frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := 0; // query.fieldbyname('aliquota').asFLOAT;
      frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
      frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
      frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
      frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 13; // entrada produto acabado
      frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmmodulo.qrlote_fabricacao.FIELDBYNAME('fabricacao').ASSTRING;
      frmmodulo.qrproduto_mov.Post;

   end;



/////////////////

  frmmodulo.qrlote_fabricacao.RecNo := vrecno_formacao;

  frmmodulo.qrlote_fabricacao.Edit;
  frmmodulo.qrlote_fabricacao.FieldByName('situacao').AsInteger := 2;
  frmmodulo.qrlote_fabricacao.FieldByName('lancamento').AsString   := frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring;
  frmmodulo.qrlote_fabricacao.Post;

  if vUsa_Grade = 1 then
    begin
      bgradeClick(frmindustrializacao);
      if frmproduto_gradeI.RDIFERENCA.Value <> 0 then
        frmmodulo.Conexao.Rollback
      else
        frmmodulo.Conexao.Commit;
    end
  else
    frmmodulo.Conexao.Commit;

  showmessage('Processamento concluído com sucesso!');

  qrmateria_prima.Refresh;

  bar.position := 0;

end;

procedure Tfrmindustrializacao.Processa1Click(Sender: TObject);
begin
  batualiza_loteClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.equantidade_loteExit(Sender: TObject);
begin
 equantidade_lote.Color := clwindow;

 If equantidade_lote.Value = 0 then
   begin
     Application.messagebox('Quantidade Inválida, Verifique!','Produção!',mb_ok+mb_iconerror);
     equantidade_lote.SetFocus;
   end;

end;

procedure Tfrmindustrializacao.bpedidoClick(Sender: TObject);
begin
//
end;

procedure Tfrmindustrializacao.efornecedorKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    perform(wm_nextdlgctl,0,0);

    begin
      if efornecedor.text <> '' then
        begin
          efornecedor.Text := frmPrincipal2.zerarcodigo(efornecedor.Text,6);
          if efornecedor.text <> '000000' then
            begin
              if not frmmodulo.qrproduto.LOCATE('codigo',efornecedor.Text,[loCaseInsensitive]) THEN
                begin
                  blocproduto_lotClick(frmindustrializacao);
                end
              else
                begin
                  efornecedor.Text := frmmodulo.qrproduto.fieldbyname('codigo').AsString;
                  eprodutoL.Text := frmmodulo.qrproduto.fieldbyname('produto').AsString;
                  enumero.SetFocus;
                end;
            end
          else
            blocproduto_lotClick(frmindustrializacao);
        end;
  end;
 end;

end;

procedure Tfrmindustrializacao.blocproduto_lotKeyPress(Sender: TObject;
  var Key: Char);
begin
//
end;

procedure Tfrmindustrializacao.blocproduto_lotClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmxloc_produto := tfrmxloc_produto.create(self);
  frmxloc_produto.showmodal;

  if resultado_pesquisa1 = '' then exit;

  frmmodulo.qrproduto.close;
  frmmodulo.qrproduto.sql.clear;
  frmmodulo.qrproduto.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
  frmmodulo.qrproduto.open;

  if frmmodulo.qrproduto.FieldByName('tipo').AsString = 'MATÉRIA-PRIMA' then
    begin
      Application.messagebox('Produto Inválido (Matéria-Prima), Verifique!','Rendimentos!',mb_ok+MB_ICONWARNING);
      eproduto.SetFocus;
      exit;
    end;

  efornecedor.Text  := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  eprodutoL.Text := frmmodulo.qrproduto.fieldbyname('produto').AsString;

  enumero.SetFocus;

end;

procedure Tfrmindustrializacao.enumeroExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  enumero.Text := frmPrincipal2.zerarcodigo(enumero.Text,10);
  if enumero.Text <> '' then
    begin
      dateedit1.text := '01/'+copy(datetostr(date),4,7);
      dateedit2.date := frmprincipal2.UltimoDiaMes(date);
    end;
end;

procedure Tfrmindustrializacao.DateEdit2Exit(Sender: TObject);
begin
  BfiltrarClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.Filtra1Click(Sender: TObject);
begin
  BfiltrarClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.efornecedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if efornecedor.Text <> '' then
    begin
      dateedit1.text := '01/'+copy(datetostr(date),4,7);
      dateedit2.date := frmprincipal2.UltimoDiaMes(date);
    end;

end;

procedure Tfrmindustrializacao.bcancela_loteClick(Sender: TObject);
var
  vlot,vcod,vpro : string;
  vCodLancamento,vcodproduto,vproduto : string;
  vqde,vqde_produto : double;
  vval : double;
begin

  if frmmodulo.qrlote_fabricacao.FieldByName('situacao').AsInteger = 1 then
    begin
      Application.messagebox('Lote Não Processado, Verifique!','Lote!',mb_ok+mb_iconerror);
      exit;
    end;

  vrecno_formacao := frmmodulo.qrlote_fabricacao.RecNo;

  vcod := frmmodulo.qrlote_fabricacaoCODPRODUTO.AsString;
  vCodLancamento := frmmodulo.qrlote_fabricacaoLANCAMENTO.AsString;
  vqde := frmmodulo.qrlote_fabricacaoQUANTIDADE.AsFloat;
  vval := frmmodulo.qrlote_fabricacaoVALOR.AsFloat;

  if application.messagebox('Tem certeza que deseja Cancelar o Lote Processado?','Atenção',mb_yesno+mb_iconquestion) = idno then
    exit;

  vUsa_Grade := 0;
  if frmmodulo.qrproduto.LOCATE('codigo',vcod,[loCaseInsensitive]) THEN
    begin
      vUsa_Grade := frmmodulo.qrproduto.FieldByName('usa_grade').asinteger;
      frmmodulo.qrproduto.Edit;
      //frmmodulo.qrproduto.FieldByName('estoque').AsFloat := frmmodulo.qrproduto.FieldByName('estoque').AsFloat - vqde;
      frmmodulo.qrproduto.FieldByName('precocusto').AsFloat := vval;
      frmmodulo.qrproduto.Post;

      AtualizaEstoque(vcod,'S',vqde);

    end;

  //  grade de produtos
  if vUsa_Grade = 1 then
    begin

      qrgrade_entrada.Close;
      qrgrade_entrada.SQL.clear;
      qrgrade_entrada.SQL.add('select * from c000033 where coditem = '''+ vCodLancamento +'''');
      qrgrade_entrada.Open;

      frmmodulo.qrgrade_produto.close;
      frmmodulo.qrgrade_produto.sql.clear;
      frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+vcod+'''');
      frmmodulo.qrgrade_produto.open;

      while qrgrade_entrada.RecordCount > 0 do
      BEGIN
        if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
        begin
          frmmodulo.qrgrade_produto.edit;
          frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                      qrgrade_entrada.FieldByName('qtde').asfloat;
          frmmodulo.qrgrade_produto.post;
        end;
        qrgrade_entrada.delete;
      END;

    end;


  //  materia prima

  query.close;
  query.SQL.clear;
  query.SQL.add('select * from c000079 where codigo = '''+vcod+'''');
  query.open;

  bar.position := 0;
  bar.Max := query.RecordCount;

  query.First;

  while not query.Eof do
    begin
      vcodproduto := QUERY.FIELDBYNAME('codproduto').AsString;
      vqde_produto := QUERY.FIELDBYNAME('quantidade').AsFloat;

      AtualizaEstoque(vcodproduto,'E',vqde_produto*vqde);

      {
      if frmmodulo.qrproduto.LOCATE('codigo',vcodproduto,[loCaseInsensitive]) THEN
        begin
          frmmodulo.qrproduto.Edit;
          frmmodulo.qrproduto.FieldByName('estoque').AsFloat := frmmodulo.qrproduto.FieldByName('estoque').AsFloat + (vqde_produto*vqde);
          frmmodulo.qrproduto.Post;
        end;
      }

      query.Next;
      bar.Position := bar.position + 1;

    end;

  //tabale c000032

   begin
      FRMMODULO.QRPRODUTO_MOV.CLOSE;
      FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
      FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
      FRMMODULO.QRPRODUTO_MOV.OPEN;

      query.first;
      // materia prima
      while not query.eof do
      begin
            frmmodulo.qrproduto_mov.Insert;

            frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal2.codifica('000032');
            frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := '';
            frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := copy(frmmodulo.qrlote_fabricacao.FIELDBYNAME('lote').ASSTRING,5,6);
            frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';
            frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := '';
            frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := query.fieldbyname('codproduto').asstring;
            frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat          := query.FieldByName('quantidade').asfloat*frmmodulo.qrlote_fabricacao.FieldByName('quantidade').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat      := query.FieldByName('precocusto').asfloat/query.FieldByName('quantidade').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := query.fieldbyname('precocusto').asfloat;
            frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := query.fieldbyname('unidade_produto').AsString;
            frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := 0;
            frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
            frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
            frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
            frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 12; // estorna matéria prima
            frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmmodulo.qrlote_fabricacao.FIELDBYNAME('fabricacao').ASSTRING;
            frmmodulo.qrproduto_mov.Post;
            query.Next;
      end;

      // produto acabado
      frmmodulo.qrproduto_mov.Insert;
      frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal2.codifica('000032');
      frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := frmmodulo.qrlote_fabricacao.FIELDBYNAME('lote').ASSTRING;
      frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := '';
      frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';
      frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := '';
      frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := frmmodulo.qrlote_fabricacao.fieldbyname('codproduto').AsString;
      frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat          := frmmodulo.qrlote_fabricacao.FieldByName('quantidade').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat      := frmmodulo.qrlote_fabricacao.FieldByName('valor').asfloat/query.FieldByName('quantidade').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := frmmodulo.qrlote_fabricacao.fieldbyname('valor').asfloat;
      frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := frmmodulo.qrlote_fabricacao.fieldbyname('unidade').AsString;
      frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := 0; // query.fieldbyname('aliquota').asFLOAT;
      frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
      frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
      frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
      frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 14; // estorna produto acabado
      frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmmodulo.qrlote_fabricacao.FIELDBYNAME('fabricacao').ASSTRING;
      frmmodulo.qrproduto_mov.Post;
   end;


/////////////////

  frmmodulo.qrlote_fabricacao.RecNo := vrecno_formacao;

  frmmodulo.qrlote_fabricacao.Edit;
  frmmodulo.qrlote_fabricacao.FieldByName('situacao').AsInteger := 1;
  frmmodulo.qrlote_fabricacao.Post;

  frmmodulo.Conexao.Commit;

  showmessage('Cancelamento Processado com sucesso!');

  qrmateria_prima.Refresh;

  bar.position := 0;

end;

procedure Tfrmindustrializacao.Cancela1Click(Sender: TObject);
begin
  bcancela_loteClick(frmindustrializacao);
end;

procedure Tfrmindustrializacao.dspedido_industriaDataChange(
  Sender: TObject; Field: TField);
begin

  // pedidos
  QUERY.Close;
  QUERY.SQL.clear;
  QUERY.SQL.Add('select sum(total) total from c000127 where pedido = '''+frmmodulo.qrpedido_industriaPEDIDO.AsString+'''');
  QUERY.open;

  rtotal_pedido.Value := QUERY.FIELDBYNAME('total').ASFLOAT;

  qrpedido_industria_item.Close;
  qrpedido_industria_item.SQL.Clear;
  qrpedido_industria_item.SQL.Add('select * from c000127');
  qrpedido_industria_item.SQL.Add('where pedido = :vped');
  qrpedido_industria_item.Params.ParamByName('vped').AsString := frmmodulo.qrpedido_industriaPEDIDO.AsString;
  qrpedido_industria_item.Open;
end;

procedure Tfrmindustrializacao.AdvGlowButton2Click(Sender: TObject);
begin
  vopcao_pedido := 1;
  frmindustrializacao_pedido := Tfrmindustrializacao_pedido.create(self);
  frmindustrializacao_pedido.Caption := 'Industrialização | Inclusão de Pedido';
  frmindustrializacao_pedido.showmodal;
  frmmodulo.qrpedido_industria.Refresh;
  frmmodulo.qrpedido_industria.First;
end;

procedure Tfrmindustrializacao.AdvGlowButton3Click(Sender: TObject);
begin
  vopcao_pedido := 2;
  frmindustrializacao_pedido := Tfrmindustrializacao_pedido.create(self);
  frmindustrializacao_pedido.Caption := 'Industrialização | Alteração de Pedido';
  frmindustrializacao_pedido.showmodal;
end;

procedure Tfrmindustrializacao.AdvGlowButton12Click(Sender: TObject);
begin

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA8').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA9').ASSTRING := '';

  qrmapa.Close;
  qrmapa.SQL.Clear;
  qrmapa.SQL.Add('select p.pedido,p.codcliente,p.lote,i.codproduto,i.pedido,i.cor,i.tamanho , sum(i.quantidade) qtde');
  qrmapa.SQL.Add('from c000126 p , c000127 i');
  qrmapa.SQL.Add('where p.situacao = 1 and i.pedido = p.pedido');
  qrmapa.SQL.Add('group by  p.pedido,p.codcliente,p.lote,i.codproduto,i.pedido,i.cor,i.tamanho');
  qrmapa.SQL.Add('order by p.codcliente, p.pedido, p.lote, i.codproduto');
  qrmapa.Open;

  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'GRADE DE CORTE';
  frmmodulo.qrrelatorio.fieldbyname('LINHA8').asstring := datetostr(dateedit1.date) + ' A ' + datetostr(DateEdit2.date);
  frmmodulo.qrrelatorio.fieldbyname('LINHA9').asstring := frmmodulo.qrpedido_industriaRESPONSAVEL.AsString;
  fxpedido.LoadFromFile('\DATASAC\server\rel\F000194.fr3');
  fxpedido.ShowReport;

end;

procedure Tfrmindustrializacao.bgradeClick(Sender: TObject);
begin
  frmproduto_gradeI := tfrmproduto_gradeI.create(self);
  frmproduto_gradeI.showmodal;
  //bgravar_lote.SetFocus;
end;

procedure Tfrmindustrializacao.AtualizaEstoque(eCodProduto,eTipo : string ; eQtde : Double);
begin
  IF qrestoque.LOCATE('CODPRODUTO',eCodProduto,[loCaseInsensitive]) THEN
    begin
      qrestoque.Edit;
      if eTipo = 'E' then
        qrestoqueENTRADAS.AsFloat       := qrestoqueENTRADAS.AsFloat + eQtde
      else
        qrestoqueSAIDAS.AsFloat         := qrestoqueSAIDAS.AsFloat + eQtde;

      qrestoqueESTOQUE_ATUAL.AsFloat  := ( qrestoqueESTOQUE_INICIAL.AsFloat+
                                           qrestoqueENTRADAS.AsFloat )-
                                           qrestoqueSAIDAS.AsFloat;
      qrestoque.Post;
      frmmodulo.Conexao.Commit;

    end;
end;

end.

