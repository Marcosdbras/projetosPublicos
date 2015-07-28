unit produto_farma2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, TFlatHintUnit, HpHint, LMDCustomButton, LMDButton, wwdblook,
  Wwdbdlg, wwdbedit, Wwdotdot, ExtDlgs, Wwdbcomb, RzEdit, RzDBEdit,
  RzDBBnEd, AdvGlowButton, AdvToolBar;

type
  Tfrmproduto_farma = class(TForm)
    pfichas: TFlatPanel;
    Pop1: TPopupMenu;
    Incluir1: TMenuItem;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Localizar1: TMenuItem;
    Fechar1: TMenuItem;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dsproduto2: TDataSource;
    qrproduto: TZQuery;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    dspreco: TDataSource;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    dsgrade_produto: TDataSource;
    dsserial_produto: TDataSource;
    PopupMenu1: TPopupMenu;
    Receitas1: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    Alquotas1: TMenuItem;
    dscomposicao_produto: TDataSource;
    qrcomposicao_produto: TZQuery;
    qrcomposicao_produtoCODIGO: TStringField;
    qrcomposicao_produtoCODPRODUTO: TStringField;
    qrcomposicao_produtoQTDE: TFloatField;
    qrproduto_loc: TZQuery;
    StringField1: TStringField;
    StringField3: TStringField;
    qrcomposicao_produtoPRODUTO: TStringField;
    qrcomposicao_produtoprod: TStringField;
    qrinfnutricional_produto: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    NaturezadeOperaoCFOP1: TMenuItem;
    N1: TMenuItem;
    Exportarparaarquivo1: TMenuItem;
    ImportardeArquivo1: TMenuItem;
    N2: TMenuItem;
    otalizarestoque1: TMenuItem;
    query: TZQuery;
    qradic: TZQuery;
    dsadic: TDataSource;
    N3: TMenuItem;
    AtualizaodePreos1: TMenuItem;
    N4: TMenuItem;
    Inventrio1: TMenuItem;
    qrprodutoESTOQUEMINIMO: TFloatField;
    fdados_codbarra: THeaderView;
    Label80: TLabel;
    HeaderView9: THeaderView;
    bexclui_barra: TBitBtn;
    bgrava_barra: TBitBtn;
    qrcodbarra: TZQuery;
    dscodbarra: TDataSource;
    qrbarra: TZQuery;
    qroperator: TZQuery;
    grid_barra: TwwDBGrid;
    pop_barra: TPopupMenu;
    excluircodigodebarra1: TMenuItem;
    gravarcodigodebarra1: TMenuItem;
    N6: TMenuItem;
    BaixanoEstoque1: TMenuItem;
    bservicos: TBitBtn;
    Servicos1: TMenuItem;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    Label1: TLabel;
    Label3: TLabel;
    Label58: TLabel;
    DBEdit1: TDBEdit;
    combo_tipo: TwwDBComboBox;
    combocodbarra: TComboBox;
    PBARRA: TImage;
    Label5: TLabel;
    edata_cadastro: TDBDateEdit;
    Label2: TLabel;
    Label8: TLabel;
    DBEdit2: TDBEdit;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit4: TDBEdit;
    esubgrupo: TRzDBButtonEdit;
    DBEdit8: TDBEdit;
    efornecedor: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    Label68: TLabel;
    emarca: TRzDBButtonEdit;
    DBEdit63: TDBEdit;
    Label69: TLabel;
    label7: TLabel;
    Bevel4: TBevel;
    GroupBox2: TGroupBox;
    Label30: TLabel;
    ealiq: TRxDBCalcEdit;
    Label10: TLabel;
    dbedit13: TRzDBButtonEdit;
    Label73: TLabel;
    PageView1: TPageView;
    PageSheet7: TPageSheet;
    ppreco: TPanel;
    GroupBox3: TGroupBox;
    Label19: TLabel;
    Label20: TLabel;
    Bevel1: TBevel;
    Label21: TLabel;
    DBEdit19: TDBEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Bevel2: TBevel;
    Label28: TLabel;
    Label41: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    FlatPanel9: TFlatPanel;
    Label39: TLabel;
    FlatPanel10: TFlatPanel;
    Label40: TLabel;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    PageSheet8: TPageSheet;
    PFOTO: TPanel;
    Label48: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Image2: TImage;
    Bevel5: TBevel;
    PageSheet9: TPageSheet;
    PageView2: TPageView;
    PageSheet10: TPageSheet;
    PageSheet11: TPageSheet;
    PageSheet12: TPageSheet;
    FlatPanel1: TFlatPanel;
    FlatPanel2: TFlatPanel;
    FlatPanel11: TFlatPanel;
    FlatPanel13: TFlatPanel;
    Image1: TImage;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    FlatPanel14: TFlatPanel;
    FlatPanel15: TFlatPanel;
    FlatPanel16: TFlatPanel;
    FlatPanel18: TFlatPanel;
    Bevel6: TBevel;
    GroupBox10: TGroupBox;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    RzDBNumericEdit1: TRzDBNumericEdit;
    RzDBNumericEdit2: TRzDBNumericEdit;
    DBEdit29: TDBEdit;
    rentrada: TRxCalcEdit;
    rsaida: TRxCalcEdit;
    restoque: TRxCalcEdit;
    RINICIAL: TRxCalcEdit;
    Panel1: TPanel;
    blocaliquota: TBitBtn;
    ealiquota: TDBEdit;
    Panel2: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBAdvGlowButton1: TDBAdvGlowButton;
    DBAdvGlowButton2: TDBAdvGlowButton;
    DBAdvGlowButton3: TDBAdvGlowButton;
    DBAdvGlowButton4: TDBAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    blocalizar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    pgravar: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel7: TBevel;
    bitbtn10: TAdvGlowButton;
    DBEdit16: TDBEdit;
    GroupBox1: TGroupBox;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    Label4: TLabel;
    Bevel8: TBevel;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    bfiltro_entrada: TAdvGlowButton;
    qrmov_entrada: TZQuery;
    dsmov_entrada: TDataSource;
    qrmov_entradaMOV: TStringField;
    qrmov_entradacliente: TStringField;
    qrmov_entradaDATA: TDateTimeField;
    qrmov_entradaNUMERONOTA: TStringField;
    qrmov_entradaQTDE: TFloatField;
    qrmov_entradaUNITARIO: TFloatField;
    qrmov_entradaTOTAL: TFloatField;
    qrmov_entradaCODNOTA: TStringField;
    qrmov_entradaLOTE_FABRICACAO: TStringField;
    qrmov_entradaCODPRODUTO: TStringField;
    qrmov_entradaICMS: TFloatField;
    qrmov_entradaIPI: TFloatField;
    qrmov_entradaCFOP: TStringField;
    qrmov_entradaCODCLIENTE: TStringField;
    qrmov_entradaDESCONTO: TFloatField;
    qrmov_entradaACRESCIMO: TFloatField;
    qrmov_entradaCODIGO: TStringField;
    qrmov_entradaCODVENDEDOR: TStringField;
    qrmov_entradaMOVIMENTO: TIntegerField;
    qrproduto_mov: TZQuery;
    wwDBGrid5: TwwDBGrid;
    GroupBox14: TGroupBox;
    Label9: TLabel;
    di_saida: TDateEdit;
    df_saida: TDateEdit;
    bfiltro_saida: TAdvGlowButton;
    Bevel9: TBevel;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    qrmov_saida: TZQuery;
    StringField13: TStringField;
    StringField14: TStringField;
    DateTimeField2: TDateTimeField;
    StringField15: TStringField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    IntegerField2: TIntegerField;
    dsmov_saida: TDataSource;
    combo_saida: TComboBox;
    combo_entrada: TComboBox;
    bitbtn7: TAdvGlowButton;
    wwDBGrid4: TwwDBGrid;
    Label11: TLabel;
    DBEdit6: TDBEdit;
    GroupBox7: TGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    ecusto: TRzDBNumericEdit;
    evenda: TRzDBNumericEdit;
    AdvGlowButton1: TAdvGlowButton;
    GroupBox8: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    GroupBox9: TGroupBox;
    DBText3: TDBText;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    Label14: TLabel;
    combo_principio: TwwDBComboBox;
    Label18: TLabel;
    Label12: TLabel;
    Label29: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    DBEdit18: TDBEdit;
    DBEdit10: TDBEdit;
    combo_classificacao: TwwDBComboBox;
    combo_generico: TwwDBComboBox;
    DBEdit12: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
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
    procedure etipoExit(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure elimiteKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit1Enter(Sender: TObject);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure RxDBCalcEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Receitas1Click(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure qrcomposicao_produtoBeforePost(DataSet: TDataSet);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure Exportarparaarquivo1Click(Sender: TObject);
    procedure ImportardeArquivo1Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure AtualizaodePreos1Click(Sender: TObject);
    procedure DBEdit13KeyPress(Sender: TObject; var Key: Char);
    procedure ealiqExit(Sender: TObject);
    procedure ealiqKeyPress(Sender: TObject; var Key: Char);
    procedure combo_tipoEnter(Sender: TObject);
    procedure combo_tipoExit(Sender: TObject);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2Exit(Sender: TObject);
    procedure DBEdit7Exit(Sender: TObject);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit7KeyPress(Sender: TObject; var Key: Char);
    procedure Inventrio1Click(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraKeyPress(Sender: TObject; var Key: Char);
    procedure bexclui_barraClick(Sender: TObject);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure bgrava_barraClick(Sender: TObject);
    procedure dsproduto2DataChange(Sender: TObject; Field: TField);
    procedure GravarCodigodeBarra1Click(Sender: TObject);
    procedure excluircodigodebarra1Click(Sender: TObject);
    procedure BaixanoEstoque1Click(Sender: TObject);
    procedure bservicosClick(Sender: TObject);
    procedure Servicos1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure efornecedorButtonClick(Sender: TObject);
    procedure emarcaButtonClick(Sender: TObject);
    procedure esubgrupoButtonClick(Sender: TObject);
    procedure esubgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure efornecedorKeyPress(Sender: TObject; var Key: Char);
    procedure emarcaKeyPress(Sender: TObject; var Key: Char);
    procedure dbedit13ButtonClick(Sender: TObject);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure di_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure df_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure PageView2Change(Sender: TObject);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure df_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit10KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit38KeyPress(Sender: TObject; var Key: Char);
    procedure FormDestroy(Sender: TObject);
    procedure DBDateEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit28KeyPress(Sender: TObject; var Key: Char);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_farma: Tfrmproduto_farma;
  comando : string;
  estoque_anterior : real;
  preco_venda_anterior : double;
  cod_produto : string;



implementation

uses modulo, principal, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto, produto_atualizapreco, xloc_cst, industrializacao,
  rentabilidade, inventario, baixa_estoque, servico, loc_aliquota,
  loc_produto_auto, cliente_veiculo;

{$R *.dfm}


procedure Tfrmproduto_farma.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_farma.FormShow(Sender: TObject);
begin


  di_entrada.date := data_inicial;
  df_entrada.date := data_final;


  di_saida.date := data_inicial;
  df_saida.date := data_final;


  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;

  ptampaserial.Top := 0;
  ptampaserial.left := 0;

  PageView1.ActivePageIndex := 0;
  frmmodulo.qrreceita.close;
  frmmodulo.qrreceita.sql.clear;
  frmmodulo.qrreceita.SQL.add('select * from c000024 order by receita');
  frmmodulo.qrreceita.open;
  frmmodulo.qrreceita.IndexFieldNames := 'receita';

  frmmodulo.qrGRUPO.close;
  frmmodulo.qrGRUPO.sql.clear;
  frmmodulo.qrGRUPO.SQL.add('select * from c000017 order by GRUPO');
  frmmodulo.qrGRUPO.open;
  frmmodulo.qrGRUPO.IndexFieldNames := 'GRUPO';

  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';


  frmmodulo.qrALIQUOTA.close;
  frmmodulo.qrALIQUOTA.sql.clear;
  frmmodulo.qrALIQUOTA.SQL.add('select * from c000023 order by codigo');
  frmmodulo.qrALIQUOTA.open;
  frmmodulo.qrALIQUOTA.IndexFieldNames := 'codigo';

  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.sql.clear;
  frmmodulo.qrFORNECEDOR.SQL.add('select * from c000009 order by nome');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.IndexFieldNames := 'nome';

  frmmodulo.qrMARCA.close;
  frmmodulo.qrMARCA.sql.clear;
  frmmodulo.qrMARCA.SQL.add('select * from c000019 order by nome');
  frmmodulo.qrMARCA.open;
  frmmodulo.qrMARCA.IndexFieldNames := 'nome';


  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.open;

  pgravar.visible := false;
  pgravar.Align := alClient;



  if busca_produto = 1 then
    begin
      frmmodulo.qrPRODUTO.close;
      frmmodulo.qrPRODUTO.SQL.clear;
      frmmodulo.qrPRODUTO.SQL.add('select * from c000025 where codigo = '''+busca_produto_codigo+'''');
      frmmodulo.qrPRODUTO.open;
      balterarClick(frmproduto_auto);
    end
  else
    begin
      frmmodulo.qrPRODUTO.close;
      frmmodulo.qrPRODUTO.SQL.clear;
      frmmodulo.qrPRODUTO.SQL.add('select * from c000025 order by produto');
      frmmodulo.qrPRODUTO.open;
      frmmodulo.qrPRODUTO.first;

      combocodbarra.Text := frmmodulo.qrprodutoCODBARRA.AsString;

      bincluir.SetFocus;
    end;

  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 2 then // supermercado
    Label7.Caption := 'CÓD.REMARCAÇÃO';


end;

procedure Tfrmproduto_farma.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmproduto_farma.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.insert;
  frmmodulo.qrproduto.FieldByName('unidade').AsString := 'UN';
  frmmodulo.qrproduto.FieldByName('cst').AsString := '000';
  frmmodulo.qrproduto.FieldByName('aliquota').asinteger := 17;

  frmmodulo.qrproduto.FieldByName('usa_balanca').asinteger := 2;
  frmmodulo.qrproduto.FieldByName('usa_serial').asinteger := 0;
  frmmodulo.qrproduto.FieldByName('usa_grade').asinteger := 0;
  frmmodulo.qrproduto.fieldbyname('tipo').asstring := 'VENDA';

  frmmodulo.qrproduto.fieldbyname('data_inventario').AsDateTime := strtodate('31/12/'+frmPrincipal.zerarcodigo(inttostr(strtoint(copy(datetostr(date),7,4))-1),4));
  frmmodulo.qrproduto.fieldbyname('custo_inventario').AsFloat := 0;
  frmmodulo.qrproduto.fieldbyname('estoque_inventario').AsFloat := 0;

  frmmodulo.qrPRODUTO.fieldbyname('codigo').asstring := frmprincipal.codifica('000025');
  frmmodulo.qrproduto.fieldbyname('codgrupo').asstring := '000001';

  EDATA_CADASTRO.Date := DATE;

  estoque_anterior := 0;

  combocodbarra.Text := '';
  combocodbarra.SETFOCUS;
  combo_tipo.TEXT:='VENDA';
  pageview1.ActivePageindex := 0;

end;

procedure Tfrmproduto_farma.balterarClick(Sender: TObject);
begin

  IF dbedit1.Text <> '' THEN
  BEGIN


  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;

  pserial.Enabled := true;


   estoque_anterior := frmmodulo.qrproduto.fieldbyname('estoque').asfloat;
   preco_venda_anterior := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;


    frmmodulo.qrPRODUTO.Edit;

    combocodbarra.Text := frmmodulo.qrproduto.fieldbyname('CODBARRA').AsString;

    combocodbarra.SetFocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

Procedure Tfrmproduto_farma.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO',4) then
  begin
      qrcodbarra.close;
      qrcodbarra.SQL.clear;
      qrcodbarra.sql.add('SELECT * from c000055 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
      qrcodbarra.OPEN;
      WHILE QRCODBARRA.RECORDCOUNT <> 0 DO
      BEGIN
        QRCODBARRA.DELETE;
      END;

       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
       QRPRODUTO_MOV.Open;



       if qrproduto_mov.RecordCount > 1 then
       begin
         application.messagebox('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!','Atenção',mb_ok+mb_iconwarning);

       end
       else
       begin
        frmmodulo.qrPRODUTO.Delete;
        frmmodulo.Conexao.commit;
       end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_farma.blocalizarClick(Sender: TObject);
begin
  frmloc_produto_auto := tfrmloc_produto_auto.create(self);
  frmloc_produto_auto.showmodal;

  if cod_produto <> '' then
  begin
    frmmodulo.qrproduto.Locate('codigo',cod_produto,[loCaseInsensitive]);
    
  end;

end;

procedure Tfrmproduto_farma.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_farma.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin


      if DBEdit2.Text = '' then
      begin
        showmessage('Favor Informar O Nome do Produto!');
        DBEdit2.SetFocus;
        exit;
      end;





  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
   frmmodulo.qrpreco.Post;
  if (frmmodulo.qrinfnutricional_produto.State = dsedit) or (frmmodulo.qrinfnutricional_produto.State = dsinsert) then frmmodulo.qrinfnutricional_produto.Post;

  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin

   if ( frmmodulo.qrproduto.FieldByName('precovenda').AsFloat <> preco_venda_anterior ) or (frmmodulo.qrPRODUTO.State = dsinsert) then
      frmmodulo.qrproduto.FieldByName('DATA_REMARCACAO_VENDA').AsDateTime := date;

   //frmmodulo.qrproduto.FieldByName('DATA_CADASTRO').AsDateTime := edata_cadastro.Date;
   frmmodulo.qrproduto.FieldByName('CODBARRA').AsString := combocodbarra.Text;
   frmmodulo.qrPRODUTO.post;

  end;

  frmmodulo.Conexao.Commit;
  bincluir.setfocus;


  pageview1.ActivePageindex := 0;



  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

end;

procedure Tfrmproduto_farma.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then frmmodulo.qrpreco.cancel;

  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
      frmmodulo.qrPRODUTO.cancel;


  FRMMODULO.Conexao.Rollback;



  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  pageview1.ActivePageindex := 0;



  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

end;

procedure Tfrmproduto_farma.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_farma.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := clyellow;
 if (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.state = dsinsert) then
 begin
    if edata_cadastro.text = '  /  /    ' then  EDATA_CADASTRO.Date := DATE;
 end;
end;

procedure Tfrmproduto_farma.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;


end;

procedure Tfrmproduto_farma.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto_farma.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_farma.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto_farma.Edit1Exit(Sender: TObject);
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

procedure Tfrmproduto_farma.DBEdit16Exit(Sender: TObject);
var cd,x : string;
begin
tedit(sender).Color := clwindow;





  if dbedit16.text <> '' then
  begin
   try
     cd := copy(dbedit16.text,1,12);
     x := copy(dbedit16.Text,13,1);
     if x <> '' then
     begin
       if frmprincipal.CalculaDigEAN13(dbedit16.Text) = x then pbarra.visible := false
       else pbarra.visible := true;
     end
     else
     begin
       pbarra.Visible := false;
     end;

    except
      pbarra.visible := true;
    end;
    if frmmodulo.qrproduto.State = dsinsert then
    begin
      QUERY.CLOSE;
      QUERY.SQL.CLEAR;
      QUERY.SQL.ADD('SELECT CODBARRA FROM C000025 WHERE CODBARRA = '''+DBEDIT16.TEXT+'''');
      QUERY.OPEN;
      IF QUERY.RECORDCOUNT > 0 THEN
      BEGIN
        if APPLICATION.MESSAGEBOX('Existe um produto cadastrado com este código de barras! Deseja visualiza-lo?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
       begin
          frmmodulo.qrproduto.cancel;
          frmmodulo.qrproduto.locate('codbarra',query.fieldbyname('codbarra').asstring,[loCaseInsensitive]);
        end
        else
          dbedit16.setfocus;
      END;
    end;
  end
  else
    begin
     //showmessage('Código de Barra Não Pode Ser Branco, deve ser Informado o código do Produto!');
     //dbedit16.SetFocus;
     DBEdit16.Text := inttostr(strtoint(frmmodulo.qrPRODUTO.fieldbyname('codigo').asstring));
     frmmodulo.qrproduto.FieldByName('codbarra').AsString := DBEdit16.Text;
     exit;
    end;

   pbarra.visible :=false;
end;

procedure Tfrmproduto_farma.DBEdit1Change(Sender: TObject);
var cd, x : string;
begin







  if dbedit16.text <> '' then
  begin
   try
     cd := copy(dbedit16.text,1,12);
     x := copy(dbedit16.Text,13,1);
     if x <> '' then
     begin
       if frmprincipal.CalculaDigEAN13(dbedit16.Text) = x then pbarra.visible := false
       else pbarra.visible := true;
     end
     else
     begin
       pbarra.Visible := false;
     end;
    except
      pbarra.visible := true;
    end;
  end
  else
  pbarra.visible :=false;





  try

    if pageview1.ActivePageIndex = 0 then
    begin
      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_entradaClick(frmproduto_auto);
      end;
      if PageView2.ActivePageIndex = 2 then
      begin
        bfiltro_saidaClick(frmproduto_auto);
      end;

    end;



    if PageView1.ActivePageIndex = 1 then
    begin
      frmmodulo.qrpreco.close;
      frmmodulo.qrpreco.SQL.clear;
      frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
      frmmodulo.qrpreco.open;
      if frmmodulo.qrpreco.RecordCount = 0 then
      begin
        ptampapreco.visible := true;
      end
      else
      begin
      ptampapreco.visible := false;
      end;
    end;





    

    

    if PageView1.ActivePageIndex = 3 then // FOTO
    begin
       IF FRMMODULO.QRPRODUTO.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;




  if frmmodulo.qrproduto.fieldbyname('codigo').asstring <> '' then
  begin
    rINICIAL.value := frmmodulo.qrproduto.fieldbyname('estoque_anterior').asfloat;

    qrproduto_mov.close;
    qrproduto_mov.sql.clear;
    QRproduto_mov.sql.add('select sum(qtde) ENTRADA FROM C000032 WHERE CODPRODUTO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
    QRproduto_mov.SQL.ADD('AND movimento in (0,1,7,8,10,13,16) and data >= :datai and data <= :dataf');
    qrproduto_mov.Params.ParamByName('datai').asdatetime := data_inicial;
    qrproduto_mov.Params.ParamByName('dataf').asdatetime := data_final;
    qrproduto_mov.open;
    rentrada.Value := qrproduto_mov.fieldbyname('entrada').asfloat;
    qrproduto_mov.close;
    qrproduto_mov.sql.clear;
    QRproduto_mov.sql.add('select sum(qtde) SAIDA FROM C000032 WHERE CODPRODUTO = '''+FRMMODULO.QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING+'''');
    QRproduto_mov.SQL.ADD('AND movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20) and data >= :datai and data <= :dataf');
    qrproduto_mov.Params.ParamByName('datai').asdatetime := data_inicial;
    qrproduto_mov.Params.ParamByName('dataf').asdatetime := data_final;
    qrproduto_mov.open;
    rSAIDA.Value := qrproduto_mov.fieldbyname('SAIDA').asfloat;
    RESTOQUE.Value := RINICIAL.VALUE + RENTRADA.VALUE - RSAIDA.VALUE;
  end;





  except
  end;

end;

procedure Tfrmproduto_farma.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
   egrupo.setfocus;
  end;
end;

procedure Tfrmproduto_farma.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);  
end;

procedure Tfrmproduto_farma.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codALIQUOTA').asstring := frmmodulo.qrALIQUOTA.fieldbyname('codigo').asstring;
  egrupo.setfocus;


end;

procedure Tfrmproduto_farma.ealiquotaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    if eALIQUOTA.text <> '' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrALIQUOTA,eALIQUOTA.text,'codigo') then blocALIQUOTAclick(frmproduto_auto) else begin egrupo.setfocus; end;
    end
    else
      blocALIQUOTA.SetFocus;
  end;
end;

procedure Tfrmproduto_farma.PageView1Change(Sender: TObject);
begin
  try

    if pageview1.ActivePageIndex = 0 then
    begin
      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_entradaClick(frmproduto_auto);
      end;
      if PageView2.ActivePageIndex = 2 then
      begin
        bfiltro_saidaClick(frmproduto_auto);
      end;
    end;


    if PageView1.ActivePageindex = 1 then // preco
    begin
      frmmodulo.qrpreco.close;
      frmmodulo.qrpreco.SQL.clear;
      frmmodulo.qrpreco.sql.Add('select * from c000026 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
      frmmodulo.qrpreco.open;

      if frmmodulo.qrpreco.RecordCount = 0 then
      begin
        ptampapreco.visible := true;
      end
      else
      begin
        ptampapreco.visible := false;
      end;
    end;


    if PageView1.ActivePageIndex = 2 then // seriais
    begin
       frmmodulo.qrserial_produto.close;
       frmmodulo.qrserial_produto.sql.clear;
       frmmodulo.qrserial_produto.sql.add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       frmmodulo.qrserial_produto.Open;

       if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
         ptampaserial.Visible := false else ptampaserial.Visible := true;
    end;



    if PageView1.ActivePageIndex = 2 then // FOTO
    begin
       IF FRMMODULO.QRPRODUTO.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;




  except

  end;
end;

procedure Tfrmproduto_farma.BitBtn7Click(Sender: TObject);
begin
  frmmodulo.qrpreco.insert;
  frmmodulo.qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
  frmmodulo.qrpreco.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOCUSTO').asfloat;


  ptampapreco.Visible := false;
  dbedit19.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit19Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin
    frmmodulo.qrpreco.FieldByName('custo_compra').asfloat := frmmodulo.qrpreco.FieldByName('VALOR_ULTIMA_COMPRA').asfloat + frmmodulo.qrpreco.FieldByName('frete_ipi_outras').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
        frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;

    if frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
    frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat / (1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));

  end;

end;

procedure Tfrmproduto_farma.DBEdit22Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin



    (***************************** ICMS DE ENTRADA ****************************)

      frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat-
      frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;


      if frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat <> 0 then
      frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat :=
      frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat /
      (1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));



      if frmmodulo.qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_entrada').asfloat :=
        frmmodulo.qrpreco.FieldByName('CUSTO_COMPRA').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_ENTRADA_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('icms_saida_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_saida').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('ICMS_saida_P').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('CUSTO_OPERACIONAL_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('OUTROS_IMPOSTOS_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('outros_impostos').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('outros_impostos_p').asfloat / 100;
      end;

      if frmmodulo.qrpreco.FieldByName('comissao_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('comissao').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('comissao_p').asfloat / 100;
      end;
      if frmmodulo.qrpreco.FieldByName('lucro_P').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('lucro').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
        frmmodulo.qrpreco.FieldByName('lucro_p').asfloat / 100;
      end;


      frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
      frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
      frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
      frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
      frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
      frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
       frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;





  end;



end;

procedure Tfrmproduto_farma.DBEdit37Exit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (frmmodulo.qrpreco.State = dsinsert) or (frmmodulo.qrpreco.State = dsedit) then
  begin
    if frmmodulo.qrpreco.FieldByName('custo_COMPRA').asfloat <> 0 then
    begin
      frmmodulo.qrpreco.FieldByName('lucro_p').asfloat :=
      frmmodulo.qrpreco.FieldByName('lucro').asfloat * 100 /
      frmmodulo.qrpreco.FieldByName('custo_COMPRA').asfloat;
    end;
    frmmodulo.qrpreco.fieldbyname('total_custo').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada').asfloat;

    frmmodulo.qrpreco.fieldbyname('total_custo_p').asfloat :=
    frmmodulo.qrpreco.fieldbyname('icms_saida_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('custo_operacional_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('OUTROS_IMPOSTOS_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('comissao_p').asfloat +
    frmmodulo.qrpreco.fieldbyname('lucro_p').asfloat -
    frmmodulo.qrpreco.fieldbyname('icms_entrada_p').asfloat;



  end;
end;


procedure Tfrmproduto_farma.wwDBGrid1Exit(Sender: TObject);
var estoque : real;
begin
  estoque := 0;
  frmmodulo.qrgrade_produto.First;
  while not frmmodulo.qrgrade_produto.Eof do
  begin
    estoque := estoque + frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat;
    frmmodulo.qrgrade_produto.next;
  end;

  if estoque <> frmmodulo.qrproduto.FieldByName('estoque').asfloat then
  begin
    if estoque < frmmodulo.qrproduto.FieldByName('estoque').asfloat then
    begin
      if application.MessageBox('A somatório do Estoque da Grade está MENOR que o Estoque atual do Produto! Deseja corrigir?','Atenção!',MB_YESNO+MB_ICONWARNING) = idyes then
      begin
        abort;
      end;
    end;

    if estoque > frmmodulo.qrproduto.FieldByName('estoque').asfloat then
    begin
      if application.MessageBox('A somatório do Estoque da Grade está MAIOR que o Estoque atual do Produto! Deseja corrigir?','Atenção!',MB_YESNO+MB_ICONWARNInG) = idyes then
      begin
        abort;
      end;
    end;

  end;

end;

procedure Tfrmproduto_farma.wwDBGrid2DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin

  if frmmodulo.qrserial_produto.FieldByName('situacao').asinteger = 2 then
  begin
    wwDbgrid2.canvas.Brush.Color:= clred;
    wwDbgrid2.Canvas.Pen.Color:= clWhite;
  end;
  if frmmodulo.qrserial_produto.FieldByName('situacao').asinteger = 3 then
  begin
    wwDbgrid2.canvas.Brush.Color:= clyellow;
    wwDbgrid2.Canvas.Pen.Color:= clblack;
  end;
  wwDbgrid2.DefaultDrawDataCell(Rect, field, State);
end;

procedure Tfrmproduto_farma.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.showmodal;
end;

procedure Tfrmproduto_farma.Regies1Click(Sender: TObject);
begin
LMDButton1.Click;
end;

procedure Tfrmproduto_farma.qrcomposicao_produtoBeforePost(DataSet: TDataSet);
begin
  qrcomposicao_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000027');
  qrcomposicao_produto.fieldbyname('produto').asstring := FRMMODULO.qrproduto.FIELDBYNAME('CODIGO').ASSTRING;


end;

procedure Tfrmproduto_farma.DBEdit40Exit(Sender: TObject);
begin
  tdbedit(sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto_farma.DBEdit42Exit(Sender: TObject);
begin
tedit(sender).Color := clbtnface;
end;

procedure Tfrmproduto_farma.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_farma.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmproduto_farma.SpeedButton2Click(Sender: TObject);
begin
  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto_farma.SpeedButton3Click(Sender: TObject);
begin
  image2.Picture := nil;
  FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := '';
end;

procedure Tfrmproduto_farma.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto_farma.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto_farma.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto_farma.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto_farma.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto_farma.BitBtn14Click(Sender: TObject);
begin
//VERIFICAR
end;

procedure Tfrmproduto_farma.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto_farma.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Atualizar Produtos',4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
  end;
end;

procedure Tfrmproduto_farma.otalizarestoque1Click(Sender: TObject);
begin
  query.close;
  query.SQL.Clear;
  query.sql.add('select sum(estoque * precocusto) custo, sum(estoque * precovenda) venda from c000025');
  query.open;
  frmproduto_total := tfrmproduto_total.create(self);
  frmproduto_total.label1.caption := formatfloat('###,###,##0.00',query.fieldbyname('custo').asfloat);
  frmproduto_total.label2.caption := formatfloat('###,###,##0.00',query.fieldbyname('venda').asfloat);
  frmproduto_total.showmodal;
end;

procedure Tfrmproduto_farma.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.ShowModal;
end;

procedure Tfrmproduto_farma.AtualizaodePreos1Click(Sender: TObject);
begin
  frmproduto_farma_preco := tfrmproduto_farma_preco.create(self);
  frmproduto_farma_preco.showmodal;
end;

procedure Tfrmproduto_farma.DBEdit13KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    if DBEDIT13.text <> '' then
    begin
      FRMMODULO.qrfiscal_cst.CLOSE;
      FRMMODULO.QRFISCAL_CST.SQL.CLEAR;
      FRMMODULO.QRFISCAL_CST.SQL.ADD('SELECT * FROM C000083 WHERE CODIGO = '''+DBEDIT13.TEXT+'''');
      FRMMODULO.qrfiscal_cst.Open;
      IF FRMMODULO.QRFISCAL_CST.RecordCount > 0 THEN
      BEGIN
        frmmodulo.qrPRODUTO.fieldbyname('CST').asstring := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
        EALIQ.SetFocus;
      END
      ELSE
      BEGIN
        FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
        FRMXLOC_CST.SHOWMODAL;
        frmmodulo.qrPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
        EALIQ.SETFOCUS;
      END;
    end
    else
      dbedit13ButtonClick(frmproduto_auto);
  end;

  end;
end;

procedure Tfrmproduto_farma.ealiqExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmproduto_farma.ealiqKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    egrupo.setfocus;
  end;
end;

procedure Tfrmproduto_farma.combo_tipoEnter(Sender: TObject);
begin
tedit(sender).Color := clyellow;
end;

procedure Tfrmproduto_farma.combo_tipoExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
DBEdit2.SetFocus;
end;

procedure Tfrmproduto_farma.combo_tipoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then edata_cadastro.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit2Exit(Sender: TObject);
begin

tedit(sender).Color := clwindow;


end;

procedure Tfrmproduto_farma.DBEdit7Exit(Sender: TObject);
begin
     if DBEdit7.Text = '' then
          begin
               showmessage('Favor Informar a Unidade do Produto...');
               DBEdit7.SetFocus;
               exit;
          end;

  tedit(sender).color := clwindow;

end;

procedure Tfrmproduto_farma.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
     if DBEdit2.Text = '' then
          begin
               showmessage('Favor Informar o Nome do Produto...');
               DBEdit2.SetFocus;
               exit;
          end
          else
            perform(wm_nextdlgctl,0,0);

  end;


end;

procedure Tfrmproduto_farma.DBEdit7KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    perform(wm_nextdlgctl,0,0);
  
end;

procedure Tfrmproduto_farma.Inventrio1Click(Sender: TObject);
begin
  frminventario := Tfrminventario.create(self);
  frminventario.showmodal;
end;

procedure Tfrmproduto_farma.combocodbarraEnter(Sender: TObject);
begin
  TComboBox(sender).color := clyellow;

end;

procedure Tfrmproduto_farma.combocodbarraExit(Sender: TObject);
var cd,x : string;
begin
  TComboBox(sender).color := clwindow;

  if combocodbarra.Text = '' then
    begin
      combocodbarra.Text := inttostr(strtoint(frmmodulo.qrprodutoCODIGO.AsString));
    end;

  try
    cd := copy(combocodbarra.Text,1,12);
    x := copy(combocodbarra.Text,13,1);
    if x <> '' then
      begin
        if frmprincipal.CalculaDigEAN13(combocodbarra.Text) = x then pbarra.visible := false
        else pbarra.visible := true;
        end
      else
      begin
        fdados_codbarra.Visible := false;
     end;

    except

      pbarra.visible := true;
    end;

  if (frmmodulo.qrproduto.State = dsinsert) or (frmmodulo.qrproduto.State = dsedit) then
  begin
    if combocodbarra.text <> '' then
    begin
      if combocodbarra.text <> 'VARIOS' then
        begin
          qrbarra.close;
          qrbarra.sql.clear;
          qrbarra.sql.add('select codbarra from c000025 where codbarra = '''+combocodbarra.text+''' and codigo <> '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
          qrbarra.Open;
          if qrbarra.RecordCount > 0 then
          begin
            //if application.messagebox('Já existe um produto cadastro com este código! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
            application.messagebox('Já existe um produto cadastro com este código de barra! Verifique','Atenção',mb_ok+mb_iconwarning);
            combocodbarra.setfocus;
            exit;
          end;
          DBEdit2.SetFocus;
        end;
    end;

    end;

end;

procedure Tfrmproduto_farma.combocodbarraKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto_farma.bexclui_barraClick(Sender: TObject);
begin
  if application.messagebox('Tem certeza que deseja exlcuir este código de barras?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
    qrcodbarra.Delete;
  end;

end;

procedure Tfrmproduto_farma.qrcodbarraBeforePost(DataSet: TDataSet);
begin

 if qrcodbarra.State = dsinsert then
 begin

  QRCODBARRA.FieldByName('CODIGO').AsString := frmPrincipal.codifica('000055');

  qrbarra.Close;
  qrbarra.sql.clear;
  qrbarra.sql.add('select * from c000055 where codbarra = '''+qrcodbarra.fieldbyname('codbarra').asstring+'''');
  qrbarra.open;
  if qrbarra.recordcount > 0 then
  begin
    Application.MessageBox('Existe um produto cadastrado com este Código','Atenção',mb_ok+MB_ICONWARNING );
    Abort;
  end;

 end;
 qrcodbarra.FieldByName('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  qroperator.open;
  qroperator.Insert;
  qroperator.fieldbyname('tiporegistro').asinteger := 2;
  if qrcodbarra.State = dsinsert then qroperator.FieldByName('movimento').asinteger := 1;
  if qrcodbarra.State = dsedit then qroperator.FieldByName('movimento').asinteger := 2;
  qroperator.FieldByName('codregistro').asstring := qrcodbarra.fieldbyname('codigo').asstring;
    QROPERATOR.FieldByName('SITUACAO').ASINTEGER := 0;
  qroperator.post;



end;

procedure Tfrmproduto_farma.bgrava_barraClick(Sender: TObject);
begin
  IF (qrcodbarra.State = dsinsert) or (qrcodbarra.State = dsedit) then
    qrcodbarra.Post;

  fdados_codbarra.Visible := false;
  PopupMenu := Pop2;

  DBEdit2.SetFocus;
end;

procedure Tfrmproduto_farma.dsproduto2DataChange(Sender: TObject; Field: TField);
var
  vqde_ent,vqde_sai : double;
begin
  IF (frmmodulo.qrprODUTO.State = dsbrowse) then
    combocodbarra.Text := frmmodulo.qrprodutoCODBARRA.AsString;
end;

procedure Tfrmproduto_farma.GravarCodigodeBarra1Click(Sender: TObject);
begin
  bgrava_barraClick(frmproduto_auto);
end;

procedure Tfrmproduto_farma.excluircodigodebarra1Click(Sender: TObject);
begin
  bexclui_barraClick(frmproduto_auto);
end;

procedure Tfrmproduto_farma.BaixanoEstoque1Click(Sender: TObject);
begin
  frmbaixa_estoque := Tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure Tfrmproduto_farma.bservicosClick(Sender: TObject);
begin
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
end;

procedure Tfrmproduto_farma.Servicos1Click(Sender: TObject);
begin
  bservicosClick(frmproduto_auto);
end;

procedure Tfrmproduto_farma.AdvGlowButton1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto_farma.efornecedorButtonClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  DBEDIT11.setfocus;
end;

procedure Tfrmproduto_farma.emarcaButtonClick(Sender: TObject);
begin
  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codmarca').asstring := frmmodulo.qrmarca.fieldbyname('codigo').asstring;
  pageview1.ActivePageIndex := 0;
  EFORNECEDOR.SetFocus;
end;

procedure Tfrmproduto_farma.esubgrupoButtonClick(Sender: TObject);
begin
 try
  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 where codgrupo = '''+frmmodulo.qrproduto.fieldbyname('codgrupo').asstring+''' order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';
 except
 end;



  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  DBEDIT6.setfocus;
end;

procedure Tfrmproduto_farma.esubgrupoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codsubgrupo').asstring := frmprincipal.zerarcodigo(esubgrupo.text,6);
    if esubgrupo.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then
      begin
          application.messagebox('Subgrupo não cadastrado!','Atenção',mb_ok+mb_iconerror);
          esubgrupo.setfocus;
          exit;
      end
      else
        DBEDIT6.setfocus
    else
      esubgrupoButtonClick(frmproduto_auto);;
  end;

  end;
end;

procedure Tfrmproduto_farma.efornecedorKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then
      begin
          application.messagebox('Fornecedor não cadastrado!','Atenção',mb_ok+mb_iconerror);
          efornecedor.setfocus;
          exit;
      end
      else
        DBEDIT11.setfocus
    else
      efornecedorButtonClick(frmproduto_auto);
  end;

  end;
end;

procedure Tfrmproduto_farma.emarcaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codmarca').asstring := frmprincipal.zerarcodigo(emarca.text,6);
    if emarca.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrmarca,emarca.text,'codigo') then
      begin
          application.messagebox('Marca não cadastrada!','Atenção',mb_ok+mb_iconerror);
          emarca.setfocus;
          exit;
      end
      else
      begin
        PageView1.ActivePageIndex := 0;
        EFORNECEDOR.setfocus;
      end;
    end
    else
      emarcaButtonClick(frmproduto_auto);
  end;

  end;
end;

procedure Tfrmproduto_farma.dbedit13ButtonClick(Sender: TObject);
begin
      FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
      FRMXLOC_CST.SHOWMODAL;
      frmmodulo.qrPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
      EALiq.SETFOCUS;
end;

procedure Tfrmproduto_farma.bfiltro_entradaClick(Sender: TObject);
var ve : real;
begin
  if combo_entrada.ItemIndex = 0 then
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_entrada.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento in (0,1,7,8,10,13,16)');
    qrmov_entrada.Params.ParamByName('datai').asdatetime := di_entrada.Date;
    qrmov_entrada.Params.ParamByName('dataf').asdatetime := df_entrada.Date;
    qrmov_entrada.open;
    qrmov_entrada.first;
  end
  else
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_entrada.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_entrada.sql.add('and movimento ='+copy(combo_entrada.Text,1,2));
    qrmov_entrada.Params.ParamByName('datai').asdatetime := di_entrada.Date;
    qrmov_entrada.Params.ParamByName('dataf').asdatetime := df_entrada.Date;
    qrmov_entrada.open;
    qrmov_entrada.first;
  end;


  ve := 0;
  while not qrmov_entrada.Eof do
  begin
    ve := ve + qrmov_entrada.fieldbyname('qtde').asfloat;
    qrmov_entrada.next;
  end;
  eentrada.Caption := formatfloat('###,###,##0.000',ve);
end;

procedure Tfrmproduto_farma.di_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_farma.df_entradaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bfiltro_entrada.setfocus;
end;

procedure Tfrmproduto_farma.PageView2Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 0 then
  begin
    if PageView2.ActivePageIndex = 1 then
    begin
      bfiltro_entradaClick(frmproduto_auto);
    end;
    if PageView2.ActivePageIndex = 2 then
    begin
      bfiltro_saidaClick(frmproduto_auto);
    end;
  end;
end;

procedure Tfrmproduto_farma.qrmov_entradaCalcFields(DataSet: TDataSet);
begin

  CASE qrmov_entrada.FieldByName('MOVIMENTO').ASINTEGER OF
  0:qrmov_entrada.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';
  1:qrmov_entrada.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:qrmov_entrada.FieldByName('MOV').ASSTRING := 'VENDA';
  3:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';
  4:qrmov_entrada.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';
  5:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:qrmov_entrada.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';
  8:qrmov_entrada.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:qrmov_entrada.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';
 10:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';
 11:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';
 12:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';
 13:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';
 14:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';
 15:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';
 16:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';

 17:qrmov_entrada.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';
 18:qrmov_entrada.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';
 19:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';
 20:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DOAÇÃO';


  END;

end;

procedure Tfrmproduto_farma.qrmov_saidaCalcFields(DataSet: TDataSet);
begin

  CASE qrmov_SAIDA.FieldByName('MOVIMENTO').ASINTEGER OF
  0:qrmov_saida.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';           // ENTRADA
  1:qrmov_saida.FieldByName('MOV').ASSTRING := 'COMPRA';                         // ENTRADA
  2:qrmov_saida.FieldByName('MOV').ASSTRING := 'VENDA';                          // SAIDA
  3:qrmov_saida.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';            // ENTRADA
  4:qrmov_saida.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';                  // SAIDA
  5:qrmov_saida.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';                // SAIDA
  6:qrmov_saida.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';                // SAIDA
  7:qrmov_saida.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';             // ENTRADA
  8:qrmov_saida.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';                 // ENTRADA
  9:qrmov_saida.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';                   // SAIDA
 10:qrmov_saida.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';                 // ENTRADA
 11:qrmov_saida.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';            // SAIDA
 12:qrmov_saida.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';          // ENTRADA
 13:qrmov_saida.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';        // ENTRADA
 14:qrmov_saida.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';        // SAIDA
 15:qrmov_saida.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';       // SAIDA
 16:qrmov_saida.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';       // ENTRADA

 17:qrmov_saida.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';                     // saida
 18:qrmov_saida.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';            // saida
 19:qrmov_saida.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';             // saida
 20:qrmov_saida.FieldByName('MOV').ASSTRING := 'DOAÇÃO';                         // saida


  END;
end;

procedure Tfrmproduto_farma.bfiltro_saidaClick(Sender: TObject);

var ve : real;
begin
  if combo_saida.ItemIndex = 0 then
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_saida.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20)');
    qrmov_saida.Params.ParamByName('datai').asdatetime := di_saida.Date;
    qrmov_saida.Params.ParamByName('dataf').asdatetime := df_saida.Date;
    qrmov_saida.open;
    qrmov_saida.first;
  end
  else
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_saida.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento ='+copy(combo_saida.Text,1,2));
    qrmov_saida.Params.ParamByName('datai').asdatetime := di_saida.Date;
    qrmov_saida.Params.ParamByName('dataf').asdatetime := df_saida.Date;
    qrmov_saida.open;
    qrmov_saida.first;
  end;
  ve := 0;
  while not qrmov_saida.Eof do
  begin
    ve := ve + qrmov_saida.fieldbyname('qtde').asfloat;
    qrmov_saida.next;
  end;
  esaida.Caption := formatfloat('###,###,##0.000',ve);
end;

procedure Tfrmproduto_farma.df_saidaKeyPress(Sender: TObject; var Key: Char);
begin
    if key = #13 then bfiltro_saida.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit10KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit38KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bitbtn10.setfocus;
end;

procedure Tfrmproduto_farma.FormDestroy(Sender: TObject);
begin
  frmproduto_auto := nil;
end;

procedure Tfrmproduto_farma.DBDateEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dbedit11.setfocus;
end;

procedure Tfrmproduto_farma.DBEdit28KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then if pgravar.Visible then bgravar.setfocus;
end;

end.


////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);




  CASE QRPRODUTO_MOV.FieldByName('movimento').asinteger OF
  0 : WWDBGRID4.Canvas.FONT.Color := clFuchsia;
  1 : WWDBGRID4.Canvas.FONT.Color := clBLUE;
  2,9 :BEGIN
       WWDBGRID4.Canvas.FONT.Color:= clGREEN;
       WWDBGRID4.Canvas.FONT.Style := [FSBOLD];
     END;
  3 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  4 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  5 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  6 : WWDBGRID4.Canvas.FONT.Color:= clRED;
  7 : WWDBGRID4.Canvas.FONT.Color:= clBLUE;
  8 : WWDBGRID4.Canvas.FONT.Color:= clBLUE;

 11 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 12 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 13 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 14 : WWDBGRID4.Canvas.FONT.Color:= clRED;
 15 : WWDBGRID4.Canvas.FONT.Color:= clGREEN;
 16 : WWDBGRID4.Canvas.FONT.Color:= clRED;



  END;

{
  0:                                             'IMPLANTAÇÃO DE SALDO';
  1:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA';
  3:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE COMPRA';
  4:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'SAÍDA';
  5:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOL.DE VENDA';
  8:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA EM O.S.';


}
  WWDbgrid4.DefaultDrawDataCell(Rect, field, State);

   // NULO = 0,10
  // ENTRADA = 1,3,7,8,12,13,16
  // SAIDA   = 2,4,5,6,9,11,14,15,17,18,19,20

