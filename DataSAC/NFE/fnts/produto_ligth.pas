unit produto_ligth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ExtCtrls, TFlatPanelUnit, StdCtrls, Collection, rxtooledit,
  RXDBCtrl, Buttons, Mask, DBCtrls, 
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, Wwdbigrd, Wwdbgrid,
  wwdbedit, Wwdotdot, Wwdbcomb, Menus, rxcurredit, RzEdit, RzDBEdit,
  wwdblook, Wwdbdlg, PageView, ExtDlgs, RzPanel, RzBtnEdt, AdvToolBar,
  AdvGlowButton, AdvShapeButton;

type

  Tfrmproduto_ligth = class(TForm)
    dsproduto: TDataSource;
    dscodbarra: TDataSource;
    qrcodbarra: TZQuery;
    PopupMenu1: TPopupMenu;
    AtualizarPDV1: TMenuItem;
    Industrializao1: TMenuItem;
    N2: TMenuItem;
    GerarInventrio1: TMenuItem;
    N3: TMenuItem;
    GrupoSubgrupo1: TMenuItem;
    Fornecedor1: TMenuItem;
    MarcaFabricanteLaboratrio1: TMenuItem;
    Alquotas1: TMenuItem;
    Receitas1: TMenuItem;
    NaturezadeOperaoCFOP1: TMenuItem;
    popnormal: TPopupMenu;
    Alterar1: TMenuItem;
    Excluir1: TMenuItem;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    Fechar1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
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
    qrprodutosubgrupo: TStringField;
    qrprodutoreceita: TStringField;
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
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoCST: TStringField;
    qrprodutoCLASSIFICACAO_FISCAL: TStringField;
    qrprodutoNBM: TStringField;
    qrprodutoNCM: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qrprodutoIPI: TFloatField;
    qrprodutoREDUCAO: TFloatField;
    qrprodutoULTIMA_ALTERACAO: TDateTimeField;
    qrprodutoPESO_LIQUIDO: TFloatField;
    qrprodutoDATA_INVENTARIO: TDateTimeField;
    qrprodutoESTOQUE_INVENTARIO: TFloatField;
    qrprodutoCUSTO_INVENTARIO: TFloatField;
    popedicao: TPopupMenu;
    AlteraEstoque1: TMenuItem;
    Cancelar1: TMenuItem;
    N1: TMenuItem;
    ExcluirCdigodeBarras1: TMenuItem;
    VerCdigos1: TMenuItem;
    qrbarra: TZQuery;
    Localizar1: TMenuItem;
    baltera: TBitBtn;
    qrentrada: TZQuery;
    qrsaida: TZQuery;
    qrproduto_estoque: TZQuery;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    pprincipal: TPanel;
    PageSheet8: TPageSheet;
    PFOTO: TPanel;
    Label58: TLabel;
    SpeedButton1: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label68: TLabel;
    Label70: TLabel;
    Image2: TImage;
    dsproduto_mov: TDataSource;
    qrproduto_mov: TZQuery;
    qrproduto_movMOV: TStringField;
    qrproduto_movcliente: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movLOTE_FABRICACAO: TStringField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    OpenPictureDialog1: TOpenPictureDialog;
    Incluir1: TMenuItem;
    Gravar1: TMenuItem;
    cadastro1: TMenuItem;
    historicoestoque1: TMenuItem;
    Panel2: TPanel;
    elocalizar: TEdit;
    Bevel3: TBevel;
    Label13: TLabel;
    combo_referencia: TComboBox;
    N4: TMenuItem;
    RefernciadaBusca1: TMenuItem;
    Panel3: TPanel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn6: TAdvGlowButton;
    LMDButton1: TAdvGlowMenuButton;
    bfechar: TAdvGlowButton;
    pedicao: TFlatPanel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel5: TBevel;
    Label2: TLabel;
    Label14: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    Label4: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    ecodigo: TEdit;
    combocodbarra: TComboBox;
    bcodigo: TAdvGlowButton;
    eproduto: TEdit;
    eunidade: TEdit;
    ealiq: TRxCalcEdit;
    enome_cst: TEdit;
    enome_subgrupo: TEdit;
    enome_fornecedor: TEdit;
    bcadastro: TBitBtn;
    GroupBox5: TGroupBox;
    Label6: TLabel;
    Label8: TLabel;
    ecusto: TRxCalcEdit;
    evenda: TRxCalcEdit;
    ECST: TRzButtonEdit;
    ESUBGRUPO: TRzButtonEdit;
    EFORNECEDOR: TRzButtonEdit;
    GroupBox1: TGroupBox;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    epreco_promocao: TRxCalcEdit;
    einicio_promocao: TDateEdit;
    efim_promocao: TDateEdit;
    GroupBox8: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    ebalanca: TCheckBox;
    evalidade: TRxCalcEdit;
    ereceita: TRzButtonEdit;
    edata_cadastro: TDateEdit;
    blocalizar: TAdvGlowButton;
    FlatPanel1: TFlatPanel;
    Image1: TImage;
    FlatPanel2: TFlatPanel;
    Image3: TImage;
    FlatPanel11: TFlatPanel;
    Image4: TImage;
    FlatPanel13: TFlatPanel;
    Image6: TImage;
    FlatPanel14: TFlatPanel;
    RINICIAL: TRxCalcEdit;
    FlatPanel15: TFlatPanel;
    rentrada: TRxCalcEdit;
    FlatPanel16: TFlatPanel;
    rsaida: TRxCalcEdit;
    FlatPanel18: TFlatPanel;
    restoque: TRxCalcEdit;
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    PageSheet6: TPageSheet;
    PageView2: TPageView;
    PageSheet11: TPageSheet;
    Bevel8: TBevel;
    GroupBox2: TGroupBox;
    Label42: TLabel;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    bfiltro_entrada: TAdvGlowButton;
    combo_entrada: TComboBox;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    wwDBGrid4: TwwDBGrid;
    PageSheet12: TPageSheet;
    Bevel9: TBevel;
    wwDBGrid5: TwwDBGrid;
    GroupBox14: TGroupBox;
    Label43: TLabel;
    di_saida: TDateEdit;
    df_saida: TDateEdit;
    bfiltro_saida: TAdvGlowButton;
    combo_saida: TComboBox;
    GroupBox15: TGroupBox;
    esaida: TLabel;
    bitbtn7: TAdvGlowButton;
    gestoque: TGroupBox;
    Label1: TLabel;
    eestoque: TRxCalcEdit;
    qrestoque: TZQuery;
    GroupBox7: TGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    ldata_compra: TLabel;
    lnf: TLabel;
    GroupBox9: TGroupBox;
    ldata_venda: TLabel;
    dsmov_entrada: TDataSource;
    dsmov_saida: TDataSource;
    qrmov_entrada: TZQuery;
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
    IntegerField2: TIntegerField;
    StringField18: TStringField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    StringField19: TStringField;
    StringField20: TStringField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    StringField21: TStringField;
    StringField22: TStringField;
    Bevel1: TBevel;
    rsituacao: TCheckBox;
    qrprodutoSITUACAO: TIntegerField;
    qrduplo: TZQuery;
    MovimentarEstoque1: TMenuItem;
    qroperator: TZQuery;
    Label5: TLabel;
    combo_tipo: TComboBox;
    qrprodutoTIPO: TStringField;
    episcofins: TComboBox;
    Label89: TLabel;
    qrprodutoPISCOFINS: TStringField;
    PageSheet2: TPageSheet;
    Panel4: TPanel;
    Bevel12: TBevel;
    Bevel13: TBevel;
    Label37: TLabel;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    Panel5: TPanel;
    Label9: TLabel;
    elocproduto: TRzButtonEdit;
    RzEdit1: TRzEdit;
    erentabilidade: TRzNumericEdit;
    brent_gravar: TAdvGlowButton;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    rtotal_rent: TRzNumericEdit;
    wwDBGrid6: TwwDBGrid;
    QRRENTABILIDADE: TZQuery;
    QRRENTABILIDADECODPRODUTO: TStringField;
    QRRENTABILIDADEPRODUTO: TStringField;
    QRRENTABILIDADERENDIMENTO: TFloatField;
    QRRENTABILIDADERENTABILIDADE: TStringField;
    QRRENTABILIDADEQUANTIDADE: TFloatField;
    QRRENTABILIDADEVALOR: TFloatField;
    QRRENTABILIDADECODIGO: TStringField;
    dsrentabilidade: TDataSource;
    qrproduto_loc: TZQuery;
    AdvShapeButton1: TAdvShapeButton;
    Label55: TLabel;
    check_rentabilidade: TDBCheckBox;
    qrprodutoUSA_RENTABILIDADE: TIntegerField;
    N5: TMenuItem;
    Exportar1: TMenuItem;
    Importar1: TMenuItem;
    bfornecedor_codigo: TAdvGlowButton;
    procedure FormShow(Sender: TObject);
    procedure elocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure blocsubgrupoClick(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure esubgrupoExit(Sender: TObject);
    procedure efornecedorExit(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure elocalizarEnter(Sender: TObject);
    procedure qrprodutoAfterInsert(DataSet: TDataSet);
    procedure qrprodutoAfterEdit(DataSet: TDataSet);
    procedure bexcluirClick(Sender: TObject);
    procedure qrprodutoAfterPost(DataSet: TDataSet);
    procedure qrprodutoAfterCancel(DataSet: TDataSet);
    procedure balterarClick(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure bcodigoClick(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure edata_cadastroEnter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure qrcodbarraBeforePost(DataSet: TDataSet);
    procedure AtualizarPDV1Click(Sender: TObject);
    procedure DBDateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ecstExit(Sender: TObject);
    procedure BLOCCSTClick(Sender: TObject);
    procedure qrprodutoBeforePost(DataSet: TDataSet);
    procedure Industrializao1Click(Sender: TObject);
    procedure GerarInventrio1Click(Sender: TObject);
    procedure ecodigoEnter(Sender: TObject);
    procedure ecodigoExit(Sender: TObject);
    procedure ecodigoKeyPress(Sender: TObject; var Key: Char);
    procedure eunidadeExit(Sender: TObject);
    procedure combocodbarraExit(Sender: TObject);
    procedure combocodbarraEnter(Sender: TObject);
    procedure edata_cadastroExit(Sender: TObject);
    procedure epreco_promocaoExit(Sender: TObject);
    procedure einicio_promocaoExit(Sender: TObject);
    procedure efim_promocaoExit(Sender: TObject);
    procedure ereceitaExit(Sender: TObject);
    procedure bcadastroClick(Sender: TObject);
    procedure eestoqueExit(Sender: TObject);
    procedure Localizar1Click(Sender: TObject);
    procedure qrproduto_movCalcFields(DataSet: TDataSet);
    procedure wwDBGrid5DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure Incluir1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure cadastro1Click(Sender: TObject);
    procedure historicoestoque1Click(Sender: TObject);
    procedure RefernciadaBusca1Click(Sender: TObject);
    procedure ESUBGRUPOButtonClick(Sender: TObject);
    procedure ereceitaButtonClick(Sender: TObject);
    procedure EFORNECEDORButtonClick(Sender: TObject);
    procedure ECSTButtonClick(Sender: TObject);
    procedure ereceitaKeyPress(Sender: TObject; var Key: Char);
    procedure ECSTKeyPress(Sender: TObject; var Key: Char);
    procedure elocalizarExit(Sender: TObject);
    procedure ESUBGRUPOKeyPress(Sender: TObject; var Key: Char);
    procedure EFORNECEDORKeyPress(Sender: TObject; var Key: Char);
    procedure efim_promocaoKeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueKeyPress(Sender: TObject; var Key: Char);
    procedure eestoqueEnter(Sender: TObject);
    procedure di_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure df_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure combo_entradaKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltro_entradaClick(Sender: TObject);
    procedure di_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure df_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure bfiltro_saidaClick(Sender: TObject);
    procedure PageView2Change(Sender: TObject);
    procedure combo_saidaKeyPress(Sender: TObject; var Key: Char);
    procedure qrmov_saidaCalcFields(DataSet: TDataSet);
    procedure qrmov_entradaCalcFields(DataSet: TDataSet);
    procedure eprodutoExit(Sender: TObject);
    procedure MovimentarEstoque1Click(Sender: TObject);
    procedure combo_tipoKeyPress(Sender: TObject; var Key: Char);
    procedure ealiqExit(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure brent_gravarClick(Sender: TObject);
    procedure elocprodutoButtonClick(Sender: TObject);
    procedure elocprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure erentabilidadeKeyPress(Sender: TObject; var Key: Char);
    procedure Exportar1Click(Sender: TObject);
    procedure Importar1Click(Sender: TObject);
    procedure bfornecedor_codigoClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;
var
  frmproduto_ligth: Tfrmproduto_ligth;
  codigo : string;
  estoque_anterior : real;
  preco_venda_anterior : double;
  vrecno : integer;
  vopcao : integer;
  vcodbarra_anterior : string;

implementation

uses modulo, loc_produto_ligth, principal, lista_produto2, loc_subgrupo,
  loc_fornecedor, loc_aliquota, loc_receita, grupo, fornecedor, marca,
  aliquota, receita, cfop, produto_pdv, xloc_cst,
  industrializacao, inventario, webcam, produto_movimentar, xloc_produto,
  produto_exportar, produto_importar, fornecedor_codigo;

{$R *.dfm}

procedure Tfrmproduto_ligth.FormShow(Sender: TObject);
begin
 di_entrada.Text := '01/'+copy(datetostr(date),4,7);
 df_entrada.date := frmprincipal.UltimoDiaMes(date);

 di_saida.Text := '01/'+copy(datetostr(date),4,7);
 df_saida.date := frmprincipal.UltimoDiaMes(date);




  frmmodulo.qrreceita.close;
  frmmodulo.qrreceita.sql.clear;
  frmmodulo.qrreceita.SQL.add('select * from c000024 order by receita');
  frmmodulo.qrreceita.open;
  frmmodulo.qrreceita.IndexFieldNames := 'receita';

  frmmodulo.qrSUBGRUPO.close;
  frmmodulo.qrSUBGRUPO.sql.clear;
  frmmodulo.qrSUBGRUPO.SQL.add('select * from c000018 order by SUBGRUPO');
  frmmodulo.qrSUBGRUPO.open;
  frmmodulo.qrSUBGRUPO.IndexFieldNames := 'SUBGRUPO';


  frmmodulo.qrFORNECEDOR.close;
  frmmodulo.qrFORNECEDOR.sql.clear;
  frmmodulo.qrFORNECEDOR.SQL.add('select * from c000009 order by nome');
  frmmodulo.qrFORNECEDOR.open;
  frmmodulo.qrFORNECEDOR.IndexFieldNames := 'nome';

  if busca_produto = 1 then
    begin
      qrPRODUTO.close;
      qrPRODUTO.SQL.clear;
      qrPRODUTO.SQL.add('select * from c000025 where codigo = '''+busca_produto_codigo+'''');
      qrPRODUTO.open;
      balterarClick(frmproduto_ligth);
    end
  else
    begin
      qrproduto.close;
      qrproduto.SQL.clear;
      qrproduto.SQL.add('select * from c000025 order by codigo');
      qrproduto.open;
      qrproduto.first;
   end;

  frmmodulo.qrfiscal_cst.CLOSE;
  frmmodulo.QRFISCAL_CST.SQL.CLEAR;
  frmmodulo.QRFISCAL_CST.SQL.ADD('SELECT * FROM C000083 WHERE CODIGO = '''+ecst.TEXT+'''');
  frmmodulo.qrfiscal_cst.Open;
  IF frmmodulo.qrfiscal_cst.RecordCount > 0 THEN
    begin
      ecst.Text := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
      enome_cst.Text := frmmodulo.qrfiscal_cst.fieldbyname('situacao').asstring;
    end;

  qrcodbarra.close;
  qrcodbarra.sql.clear;
  qrcodbarra.sql.add('select * from c000055');
  qrcodbarra.open;

  panel1.top := 39;
  panel1.left := 212;

  bcadastroClick(frmproduto_ligth);

  ecusto.DisplayFormat := mascara_valor;
  evenda.DisplayFormat := mascara_valor;

  RINICIAL.DisplayFormat := mascara_qtde;
  rentrada.DisplayFormat := mascara_qtde;
  rsaida.DisplayFormat   := mascara_qtde;
  restoque.DisplayFormat := mascara_qtde;

  //batualiza_estoqueClick(frmproduto_ligth);
  elocalizar.setfocus;

end;

procedure Tfrmproduto_ligth.elocalizarKeyPress(Sender: TObject;
  var Key: Char);
  var a : string;
  i : integer;
begin
if key = #13 then
begin

  //pprincipal.Enabled := true;

   if elocalizar.text = '' then
   begin
     //qrproduto.edit;
     //eproduto.setfocus;
     elocalizar.SetFocus;
     balterarClick(frmproduto_ligth);
     PageView1.ActivePageIndex := 0;

      //batualiza_estoqueClick(frmproduto_ligth);

     eproduto.SetFocus;
     exit;
   end;

    a :=  copy(elocalizar.text,1,1);
    for I := 1 To Length(A) Do
      begin

        if (A[I] in ['A'..'Z']) or (A[I] in ['a'..'z']) then
          begin
            frmloc_produto_ligth := tfrmloc_produto_ligth.create(self);
            frmloc_produto_ligth.qrproduto.close;
            frmloc_produto_ligth.qrproduto.sql.clear;
            if combo_referencia.itemindex = 0 then
              frmloc_produto_ligth.qrproduto.sql.add('select * from c000025 where upper(produto) like '''+ansiuppercase(elocalizar.text)+'%'' order by produto')
            else
              frmloc_produto_ligth.qrproduto.sql.add('select * from c000025 where upper(produto) like ''%'+ansiuppercase(elocalizar.text)+'%'' order by produto');

            frmloc_produto_ligth.qrproduto.open;
            IF FRMLOC_PRODUTO_LIGTH.QRPRODUTO.RECORDCOUNT > 0 THEN
            BEGIN
              if frmloc_produto_ligth.qrproduto.RecordCount = 1 then
              begin
                  qrproduto.close;
                  qrproduto.sql.clear;
                  qrproduto.sql.add('select * from c000025 where codigo = '''+frmloc_produto_ligth.qrproduto.fieldbyname('codigo').asstring+'''');
                  qrproduto.Open;
                  frmloc_produto_ligth.Destroy;
                  bcadastroClick(frmproduto_ligth);
                  balterarClick(frmproduto_ligth);
                  PageView1.ActivePageIndex := 0;
                  eproduto.SetFocus;
                  EXIT;
              end
              else
              begin
                frmloc_produto_ligth.ShowModal;
                if codigo = '' then
                begin
                  elocalizar.setfocus;
                  exit;
                end
                ELSE
                BEGIN
                  qrproduto.close;
                  qrproduto.sql.clear;
                  qrproduto.sql.add('select * from c000025 where codigo = '''+codigo+'''');
                  qrproduto.Open;
                  bcadastroClick(frmproduto_ligth);
                  balterarClick(frmproduto_ligth);
                  PageView1.ActivePageIndex := 0;
                  eproduto.SetFocus;
                  EXIT;
                END;
              end;
            END
            ELSE
            BEGIN
              APPLICATION.MESSAGEBOX('Produto não encontrado!','Atenção',mb_ok+mb_iconerror);
              elocalizar.SetFocus;
              exit;
            END;
          end;
      END;

    qrproduto.close;
    qrproduto.sql.clear;
    qrproduto.sql.add('select * from c000025 where codigo = '''+elocalizar.text+''' or codbarra ='''+copy(elocalizar.text,1,13)+'''');
    qrproduto.Open;
    if qrproduto.recordcount > 0 then
      begin
        //qrproduto.edit;
        //eproduto.setfocus;

        bcadastroClick(frmproduto_ligth);
        //elocalizar.SetFocus;
        balterarClick(frmproduto_ligth);
        PageView1.ActivePageIndex := 0;
        //batualiza_estoqueClick(frmproduto_ligth);
        eproduto.SetFocus;
      end
    else
      begin
        qrcodbarra.close;
        qrcodbarra.sql.clear;
        qrcodbarra.sql.add('select * from c000055 where codbarra = '''+elocalizar.text+'''');
        qrcodbarra.open;
      if qrcodbarra.RecordCount > 0 then
      begin
        qrproduto.close;
        qrproduto.sql.clear;
        qrproduto.sql.add('select * from c000025 where codigo = '''+qrcodbarra.fieldbyname('codproduto').asstring+'''');
        qrproduto.Open;
        if qrproduto.recordcount > 0 then
        begin
          //qrproduto.edit;
          //eproduto.setfocus;

          bcadastroClick(frmproduto_ligth);
          //elocalizar.SetFocus;
          balterarClick(frmproduto_ligth);
          PageView1.ActivePageIndex := 0;
          //batualiza_estoqueClick(frmproduto_ligth);

        eproduto.SetFocus;

        end
        else
        begin
          application.messagebox('Produto não encontrado!!','AViso',mb_ok+MB_ICONWARNING);
          elocalizar.setfocus;
        end;
      end
      else
      begin
        application.messagebox('Produto não encontrado!!!','AViso',mb_ok+MB_ICONWARNING);
        elocalizar.setfocus;
      end;
   end;
   //elocalizar.SetFocus;
end;

end;

procedure Tfrmproduto_ligth.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrproduto.close;
  action := cafree;
end;

procedure Tfrmproduto_ligth.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_ligth.bincluirClick(Sender: TObject);
begin
  eestoque.value := 0;
  vopcao := 1;

  estoque_anterior := 0;
  vrecno := qrproduto.RecNo;

  qrPRODUTO.insert;

  combo_tipo.itemindex := 0;
  rsituacao.checked := false;
  eproduto.Text := '';
  eunidade.Text := 'UN';
  ealiq.Value := 17;
  esubgrupo.Text := '';
  enome_subgrupo.Text := '';
  efornecedor.Text := '';
  enome_fornecedor.Text := '';
  eestoque.Value := 0;
  ecusto.Value := 0;
  evenda.Value := 0;
  ecst.Text := '000';

  combocodbarra.Text := '';
  ebalanca.Checked := false;
  evalidade.Text := '';
  ereceita.Text := '';
  edata_cadastro.Date := date;
  epreco_promocao.Value := 0;
  einicio_promocao.Text := '';
  efim_promocao.Text    := '';

  ecodigo.Text := frmprincipal.codifica('000025');

  gestoque.visible := true;

  frmproduto_ligth.PopupMenu := popedicao;
  pageview1.ActivePageindex := 0;
  pprincipal.Enabled := true;
  pfoto.enabled := true;

  rinicial.Value       := 0;
  rentrada.Value       := 0;
  rsaida.Value         := 0;
  restoque.Value       := 0;

  combocodbarra.setfocus;

end;

procedure Tfrmproduto_ligth.BitBtn6Click(Sender: TObject);
begin
  frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.showmodal;
end;

procedure Tfrmproduto_ligth.blocsubgrupoClick(Sender: TObject);
begin
  if (qrproduto.state <> dsinsert) then
  begin
    if (qrproduto.state <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  //qrproduto.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  esubgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  enome_subgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
  efornecedor.setfocus;
end;

procedure Tfrmproduto_ligth.blocfornecedorClick(Sender: TObject);
begin
  if (qrproduto.state <> dsinsert) then
  begin
    if (qrproduto.state <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  //qrproduto.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  efornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  enome_fornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
  ecusto.setfocus;


end;

procedure Tfrmproduto_ligth.esubgrupoExit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  if (qrproduto.state <> dsinsert) then
  begin
    if (qrproduto.state <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  tedit(sender).Color := clwindow;
  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
    begin
      esubgrupo.text := frmprincipal.zerarcodigo(esubgrupo.text,6);
      if esubgrupo.text <> '000000' then
      begin
        if not FrmPrincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then
          begin
            esubgrupoButtonClick(frmproduto_ligth);
            enome_subgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
          end
        else
          begin
            enome_subgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
            //efornecedor.setfocus;
          end;
      end
      else
        esubgrupobuttonclick(frmproduto_ligth);
    end;
end;

procedure Tfrmproduto_ligth.efornecedorExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  if (qrproduto.state <> dsinsert) then
  begin
    if (qrproduto.state <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;

  IF (qrproduto.state = dsinsert) or (qrproduto.State = dsedit) then
  begin
    efornecedor.text := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then
        begin
      efornecedorbuttonclick(frmproduto_ligth);
          enome_fornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
        end
     else
       begin
         enome_fornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;

       end;
    end
    else
      efornecedorbuttonclick(frmproduto_ligth);
  end;
end;

procedure Tfrmproduto_ligth.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.bgravarClick(Sender: TObject);
begin

  if evenda.Value = 0 then
    begin
      showmessage('Favor Informar O Preço de Venda!');
      evenda.SetFocus;
      exit;
    end;

  if eproduto.text = '' then
  begin
    application.messagebox('Favor informar o nome do produto!','Atenção',mb_ok+mb_iconerror);
    eproduto.text;
    exit;
  end;


  if episcofins.text = '' then
  begin
    application.messagebox('Favor informar o PIS/COFINS do produto!','Atenção',mb_ok+mb_iconerror);
    episcofins.SetFocus;
    exit;
  end;

  try

  {
  if episcofins.Text = '' then
    begin
      if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
        begin
          qrproduto.FieldByName('PISCOFINS').AsString := 'N';
        end;
    end;
  }

    if (qrproduto.state = dsinsert) then
      begin
        qrproduto.fieldbyname('codigo').asstring      := ecodigo.Text;
        qrproduto.FieldByName('usa_serial').asinteger := 0;
        qrproduto.FieldByName('usa_grade').asinteger  := 0;
      end;
    qrproduto.FieldByName('produto').AsString := eproduto.Text;
    qrproduto.FieldByName('unidade').AsString := eunidade.Text;
    qrproduto.FieldByName('aliquota').AsFloat := ealiq.Value;
    qrproduto.FieldByName('codsubgrupo').AsString := esubgrupo.Text;
    qrproduto.FieldByName('codfornecedor').AsString := efornecedor.Text;
    qrproduto.FieldByName('estoque').AsFloat := eestoque.Value;
    qrproduto.FieldByName('precocusto').AsFloat := ecusto.Value;
    qrproduto.FieldByName('precovenda').AsFloat := evenda.Value;
    qrproduto.FieldByName('cst').AsString := ecst.Text;
    qrproduto.FieldByName('piscofins').AsString := episcofins.Text;
    qrproduto.FieldByName('codbarra').AsString := combocodbarra.Text;
    if ebalanca.Checked = true  then qrproduto.FieldByName('usa_balanca').AsInteger := 1;
    if ebalanca.Checked = false then qrproduto.FieldByName('usa_balanca').AsInteger := 2;
    qrproduto.FieldByName('validade').AsString := evalidade.Text;
    qrproduto.FieldByName('codreceita').AsString := ereceita.Text;
    qrproduto.FieldByName('data_cadastro').AsDateTime := edata_cadastro.Date;
    qrproduto.FieldByName('preco_promocao').AsFloat := epreco_promocao.Value;
    qrproduto.FieldByName('data_promocao').AsDateTime := einicio_promocao.Date;
    qrproduto.FieldByName('fim_promocao').AsDateTime := efim_promocao.Date;

    qrproduto.fieldbyname('tipo').asstring := 'VENDA';
    case combo_tipo.itemindex of
      0: qrproduto.fieldbyname('tipo').asstring := 'VENDA';
      1: qrproduto.fieldbyname('tipo').asstring := 'CONSUMO';
      2: qrproduto.fieldbyname('tipo').asstring := 'MATÉRIA-PRIMA';
      3: qrproduto.fieldbyname('tipo').asstring := 'IMOBILIZADO';
    end;

    if rsituacao.checked then qrproduto.fieldbyname('situacao').asinteger := 1 else
    qrproduto.fieldbyname('situacao').asinteger := 0;

    qrproduto.Post;
    frmmodulo.Conexao.Commit;

    //elocalizar.setfocus;
  except
    bcancelarClick(frmproduto_ligth);
  end;





  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

  PFOTO.Enabled := FALSE;
  pageview1.ActivePageindex := 0;

  pprincipal.Enabled := false;
  pfoto.Enabled := false;

  gestoque.Visible := false;

  frmproduto_ligth.PopupMenu := popnormal;

  bcadastroclick(frmproduto_ligth);



  elocalizar.SetFocus;

end;

procedure Tfrmproduto_ligth.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmproduto_ligth);

end;

procedure Tfrmproduto_ligth.bcancelarClick(Sender: TObject);
begin
  gestoque.Visible := false;

  pageview1.ActivePageindex := 0;
  PFOTO.Enabled := FALSE;

  qrproduto.Cancel;
  frmmodulo.Conexao.Rollback;

  if busca_produto = 1 then
    begin
      busca_produto := 0;
      close;
    end;

  //qrproduto.Open;
  qrproduto.RecNo := vrecno;


  frmproduto_ligth.PopupMenu := popnormal;

  bcadastroClick(frmproduto_ligth);
  //batualiza_estoqueClick(frmproduto_ligth);

  balterar.SetFocus;
  pprincipal.Enabled := false;
  pfoto.Enabled := false;
  elocalizar.SetFocus;

end;

procedure Tfrmproduto_ligth.elocalizarEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

  if (qrproduto.State = dsinsert) or (qrproduto.state = dsedit) then
  begin
     qrproduto.cancel;
     frmmodulo.Conexao.Rollback;
  end;


end;

procedure Tfrmproduto_ligth.qrprodutoAfterInsert(DataSet: TDataSet);
begin
  //frmproduto_ligth.PopupMenu := popedicao;
  pedicao.visible := true;
  pedicao.Align := alClient;
  //bcodigo.visible := true;
end;

procedure Tfrmproduto_ligth.qrprodutoAfterEdit(DataSet: TDataSet);
begin
  //frmproduto_ligth.PopupMenu := popedicao;
  pedicao.visible := true;
  pedicao.Align := alClient;
  //bcodigo.visible := true;

end;

procedure Tfrmproduto_ligth.bexcluirClick(Sender: TObject);
begin
  vrecno := qrproduto.RecNo;

  if frmprincipal.autentica('Excluir PRODUTO',4) then
  begin
      qrcodbarra.close;
      qrcodbarra.SQL.clear;
      qrcodbarra.sql.add('SELECT * from c000055 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
      qrcodbarra.OPEN;
      WHILE QRCODBARRA.RECORDCOUNT <> 0 DO
      BEGIN
        QRCODBARRA.DELETE;
      END;

       frmmodulo.qrproduto_mov.close;
       frmmodulo.qrproduto_mov.sql.clear;
       frmmodulo.qrproduto_mov.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
       frmmodulo.qrproduto_mov.Open;

       if frmmodulo.qrproduto_mov.RecordCount > 1 then
       begin
         application.messagebox('Este produto possue movimentações entradas/saídas! Impossível excluí-lo!','Atenção',mb_ok+mb_iconwarning);
         exit;
       end
       else
       begin
        frmprincipal.log(codigo_usuario,'PRODUTO',qrproduto.fieldbyname('codigo').asstring,'EXCLUIU',qrPRODUTO.fieldbyname('PRODUTO').asstring);

        qrproduto.Delete;
        frmmodulo.Conexao.commit;
        qrproduto.RecNo := vrecno-1;
        bcancelarClick(frmproduto_ligth);
      end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto_ligth.qrprodutoAfterPost(DataSet: TDataSet);
begin
  frmproduto_ligth.PopupMenu := popnormal;
  pedicao.visible := false;
  pedicao.Align := alClient;
  //bcodigo.visible := false;
  PANEL1.VISIBLE := FALSE;
end;

procedure Tfrmproduto_ligth.qrprodutoAfterCancel(DataSet: TDataSet);
begin
  frmproduto_ligth.PopupMenu := popnormal;
  pedicao.visible := false;
  pedicao.Align := alClient;
  //bcodigo.visible := false;
  PANEL1.VISIBLE := FALSE;

end;

procedure Tfrmproduto_ligth.balterarClick(Sender: TObject);
begin

  vopcao := 2;

  pprincipal.Enabled := true;
  pfoto.Enabled := true;
  vrecno := qrproduto.RecNo;


  estoque_anterior := frmmodulo.qrproduto.fieldbyname('estoque').asfloat;
  preco_venda_anterior := frmmodulo.qrproduto.fieldbyname('precovenda').asfloat;

  vcodbarra_anterior := frmmodulo.qrproduto.fieldbyname('codbarra').AsString;

  qrproduto.edit;

  gestoque.visible := false;


  PageView1.ActivePageIndex := 0;

  frmproduto_ligth.PopupMenu := popedicao;

  eproduto.setfocus;
end;

procedure Tfrmproduto_ligth.Regies1Click(Sender: TObject);
begin
  LMDButton1.Click;
end;

procedure Tfrmproduto_ligth.bcodigoClick(Sender: TObject);
begin

  try
    if combocodbarra.Text = 'VARIOS' then
    begin
      qrcodbarra.close;
      qrcodbarra.SQL.clear;
      qrcodbarra.sql.add('select * from c000055 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+''' order by codbarra');
      qrcodbarra.open;

      PANEL1.VISIBLE := TRUE;

      WWDBGRID1.SETFOCUS;
    end;
  except
  end;

end;

procedure Tfrmproduto_ligth.BitBtn7Click(Sender: TObject);
begin
  if application.messagebox('Tem certeza que deseja exlcuir este código de barras?','Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
    qrcodbarra.Delete;
  end;
end;

procedure Tfrmproduto_ligth.edata_cadastroEnter(Sender: TObject);
begin
  TDateEdit(sender).color := $00A0FAF8;
  if edata_cadastro.text = '  /  /    ' THEN edata_cadastro.Date := date;
end;

procedure Tfrmproduto_ligth.BitBtn1Click(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.showmodal;
  //qrproduto.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  ereceita.Text := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  edata_cadastro.setfocus;
end;

procedure Tfrmproduto_ligth.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
  elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.MarcaFabricanteLaboratrio1Click(
  Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
    elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
    elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.showmodal;
    elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
    elocalizar.setfocus;
end;

procedure Tfrmproduto_ligth.qrcodbarraBeforePost(DataSet: TDataSet);
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
 qrcodbarra.FieldByName('codproduto').asstring := qrproduto.fieldbyname('codigo').asstring;



end;

procedure Tfrmproduto_ligth.AtualizarPDV1Click(Sender: TObject);
begin
  frmproduto_pdv := tfrmproduto_pdv.create(self);
  frmproduto_pdv.showmodal;
end;

procedure Tfrmproduto_ligth.DBDateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_ligth.ecstExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (qrPRODUTO.state = dsinsert) or (qrPRODUTO.State = dsedit) then
  begin
    if ecst.text <> '' then
    begin
      FRMMODULO.qrfiscal_cst.CLOSE;
      FRMMODULO.QRFISCAL_CST.SQL.CLEAR;
      FRMMODULO.QRFISCAL_CST.SQL.ADD('SELECT * FROM C000083 WHERE CODIGO = '''+ecst.TEXT+'''');
      FRMMODULO.qrfiscal_cst.Open;
      IF FRMMODULO.QRFISCAL_CST.RecordCount > 0 THEN
      BEGIN
        //QRPRODUTO.fieldbyname('CST').asstring := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
        ecst.Text := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
        enome_cst.Text := frmmodulo.qrfiscal_cst.fieldbyname('situacao').asstring;
      END
      ELSE
      BEGIN
        FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
        FRMXLOC_CST.SHOWMODAL;
        //QRPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
        ecst.Text := RESULTADO_PESQUISA1;
        enome_cst.Text := RESULTADO_PESQUISA2;
        EALIQ.SETFOCUS;
      END;
    end
    else
      ecstbuttonclick(frmproduto_ligth);
  end;
end;

procedure Tfrmproduto_ligth.BLOCCSTClick(Sender: TObject);
begin
      FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
      FRMXLOC_CST.SHOWMODAL;
      //QRPRODUTO.fieldbyname('CST').asstring := RESULTADO_PESQUISA1;
      ecst.Text := RESULTADO_PESQUISA1;
      enome_cst.Text := RESULTADO_PESQUISA2;

      EALiq.SETFOCUS;

end;

procedure Tfrmproduto_ligth.qrprodutoBeforePost(DataSet: TDataSet);
begin
      if eproduto.Text = '' then
      begin
        showmessage('Favor Informar O Nome do Produto!');
        eproduto.SetFocus;
        abort;
      end;



  qrproduto.FieldByName('ultima_alteracao').AsDateTime := date;
end;

procedure Tfrmproduto_ligth.Industrializao1Click(Sender: TObject);
begin
  frmindustrializacao := Tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;

end;

procedure Tfrmproduto_ligth.GerarInventrio1Click(Sender: TObject);
begin
  frminventario := Tfrminventario.create(self);
  frminventario.showmodal;
  bcadastroClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.ecodigoEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;

end;

procedure Tfrmproduto_ligth.ecodigoExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;

end;

procedure Tfrmproduto_ligth.ecodigoKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmproduto_ligth.eunidadeExit(Sender: TObject);
begin
  if eunidade.Text = '' then
    begin
      showmessage('Favor Informar a Unidade do produto!');
      eunidade.SetFocus;
      exit;
    end;
  tedit(sender).color := clwindow;

end;

procedure Tfrmproduto_ligth.combocodbarraExit(Sender: TObject);
var
  key : char;
begin
    if combocodbarra.Text = '' then
    begin
      combocodbarra.Text := inttostr(strtoint(ecodigo.Text));
      //showmessage('Código de Barra Não Pode Ser Branco, deve ser Informado o código do Produto!');
      //combocodbarra.SetFocus;
      //exit;
    end;


  if (qrproduto.State = dsinsert) or (qrproduto.State = dsedit) then
  begin
    if combocodbarra.text <> '' then
    begin
      if combocodbarra.text <> 'VARIOS' then
        begin
          qrbarra.close;
          qrbarra.sql.clear;
          qrbarra.sql.add('select codbarra from c000025 where codbarra = '''+combocodbarra.text+''' and codigo <> '''+qrproduto.fieldbyname('codigo').asstring+'''');
          qrbarra.Open;
          if qrbarra.RecordCount > 0 then
          begin
            //if application.messagebox('Já existe um produto cadastro com este código! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
            if combocodbarra.Text <> vcodbarra_anterior then
              application.messagebox('Já existe um produto cadastro com este código de barra! Verifique','Atenção',mb_ok+mb_iconwarning);
            combocodbarra.setfocus;
            exit;
          end;
        end
      else
        begin
          bcodigo.Visible := true;
          eproduto.SetFocus;
        end;  
    end;
  end;

  if key = #13 then
    eproduto.SetFocus;
  TComboBox(sender).color := clwindow;

end;

procedure Tfrmproduto_ligth.combocodbarraEnter(Sender: TObject);
begin
  TComboBox(sender).color := $00A0FAF8;

end;

procedure Tfrmproduto_ligth.edata_cadastroExit(Sender: TObject);
var
  key : char;
begin
  TDateEdit(sender).color := clwindow;
  if key = #13 then
    epreco_promocao.SetFocus;

end;

procedure Tfrmproduto_ligth.epreco_promocaoExit(Sender: TObject);
begin

  TRxCalcEdit(SENDER).COLOR := CLWINDOW;
  IF QRPRODUTO.STATE <> DSINSERT THEN
    IF QRPRODUTO.STATE <> DSEDIT THEN
      QRPRODUTO.EDIT;
  IF epreco_promocao.Value = 0 THEN

  BEGIN
    einicio_promocao.Text := '';
    efim_promocao.Text := '';
  END;

end;

procedure Tfrmproduto_ligth.einicio_promocaoExit(Sender: TObject);
begin
  TDateEdit(sender).color := clwindow;

end;

procedure Tfrmproduto_ligth.efim_promocaoExit(Sender: TObject);
begin


  TDateEdit(sender).color := clwindow;

  if efim_promocao.date < einicio_promocao.date then
  begin

    application.messagebox('Data final não pode ser menor que a data inicial!','Erro',mb_ok+mb_iconerror);
    efim_promocao.setfocus;
    exit;
  end;


end;

procedure Tfrmproduto_ligth.ereceitaExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmproduto_ligth.bcadastroClick(Sender: TObject);
begin

  ecodigo.Text := qrprodutoCODIGO.AsString;
  eproduto.Text := qrprodutoPRODUTO.AsString;
  ealiq.Value := qrprodutoALIQUOTA.AsFloat;
  eunidade.Text := qrprodutoUNIDADE.AsString;
  esubgrupo.Text := qrprodutoCODSUBGRUPO.AsString;
  efornecedor.Text := qrprodutoCODFORNECEDOR.AsString;
  ecusto.Value := qrprodutoPRECOCUSTO.AsFloat;
  evenda.Value := qrprodutoPRECOVENDA.AsFloat;
  ecst.Text := qrprodutoCST.AsString;
  combocodbarra.Text := qrprodutoCODBARRA.AsString;
  ebalanca.Checked := false;
  if qrprodutoUSA_BALANCA.AsInteger = 1 then ebalanca.Checked := true;
  evalidade.Text := qrprodutoVALIDADE.AsString;
  ereceita.Text := qrprodutoCODRECEITA.AsString;
  edata_cadastro.Date := qrprodutoDATA_CADASTRO.AsDateTime;
  epreco_promocao.Value := qrprodutoPRECO_PROMOCAO.AsFloat;
  einicio_promocao.Date := qrprodutoDATA_PROMOCAO.AsDateTime;
  efim_promocao.Date := qrprodutoFIM_PROMOCAO.AsDateTime;

  if qrprodutoPISCOFINS.AsString = 'S' then
    episcofins.ItemIndex := 0
  else
    episcofins.ItemIndex := 1;

  combo_tipo.itemindex := -1;

  if qrproduto.fieldbyname('tipo').asstring = 'VENDA'         then combo_tipo.itemindex := 0;
  if qrproduto.fieldbyname('tipo').asstring = 'CONSUMO'       then combo_tipo.itemindex := 1;
  if qrproduto.fieldbyname('tipo').asstring = 'MATÉRIA-PRIMA' then combo_tipo.itemindex := 2;
  if qrproduto.fieldbyname('tipo').asstring = 'IMOBILIZADO'   then combo_tipo.itemindex := 3;

  if qrproduto.fieldbyname('situacao').asinteger = 1 then rsituacao.checked := true else rsituacao.Checked := false;

  if trim(esubgrupo.Text) = '' then
  else
    begin
     if  frmmodulo.qrsubgrupo.Locate('codigo',esubgrupo.text,[loCaseInsensitive]) then
        enome_subgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring
     else
       enome_subgrupo.Text := '';
    end;

  if trim(efornecedor.Text) = '' then
  else
    begin
      if frmmodulo.qrfornecedor.locate('codigo',efornecedor.text,[loCaseInsensitive]) then
        enome_fornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring
      else
        enome_fornecedor.text := '';
    end;

  frmmodulo.qrfiscal_cst.CLOSE;
  frmmodulo.QRFISCAL_CST.SQL.CLEAR;
  frmmodulo.QRFISCAL_CST.SQL.ADD('SELECT * FROM C000083 WHERE CODIGO = '''+ecst.TEXT+'''');
  frmmodulo.qrfiscal_cst.Open;
  IF frmmodulo.qrfiscal_cst.RecordCount > 0 THEN
    begin
      ecst.Text := frmmodulo.qrfiscal_cst.fieldbyname('codigo').asstring;
      enome_cst.Text := frmmodulo.qrfiscal_cst.fieldbyname('situacao').asstring;
    end;


  if combocodbarra.Text = 'VARIOS' then
    bcodigo.Visible := true
  else
    bcodigo.Visible := false;


        qrestoque.Connection := frmmodulo.Conexao;
        qrestoque.close;
        qrestoque.SQL.clear;
        qrestoque.sql.add('select * from c000100 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
        qrestoque.open;

        ldata_compra.Caption := qrestoque.fieldbyname('ultima_entrada').asstring;
        ldata_venda.Caption  := qrestoque.fieldbyname('ultima_saida').asstring;
        lnf.Caption          := qrestoque.fieldbyname('nota_fiscal').asstring;
        rinicial.Value       := qrestoque.fieldbyname('estoque_inicial').asfloat;
        rentrada.Value       := qrestoque.fieldbyname('entradas').asfloat;
        rsaida.Value         := qrestoque.fieldbyname('saidas').asfloat;
        restoque.Value       := qrestoque.fieldbyname('estoque_atual').asfloat;



end;

procedure Tfrmproduto_ligth.eestoqueExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmproduto_ligth.Localizar1Click(Sender: TObject);
begin
  elocalizar.SetFocus;
end;

procedure Tfrmproduto_ligth.qrproduto_movCalcFields(DataSet: TDataSet);
begin


  CASE QRPRODUTO_MOV.FieldByName('MOVIMENTO').ASINTEGER OF
  0:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';
  1:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'COMPRA';
  2:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA';
  3:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';
  4:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';
  5:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';
  6:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';
  7:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';
  8:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';
  9:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';
 10:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';
 11:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';
 12:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';
 13:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';
 14:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';
 15:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';
 16:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';

 17:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';
 18:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';
 19:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';
 20:QRPRODUTO_MOV.FieldByName('MOV').ASSTRING := 'DOAÇÃO';


  END;

end;

procedure Tfrmproduto_ligth.wwDBGrid5DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin


  CASE QRPRODUTO_MOV.FieldByName('movimento').asinteger OF
  0 : WWDBGRID5.Canvas.FONT.Color := clFuchsia;
  1 : WWDBGRID5.Canvas.FONT.Color := clBLUE;
  2,9 :BEGIN
       WWDBGRID5.Canvas.FONT.Color:= clGREEN;
       WWDBGRID5.Canvas.FONT.Style := [FSBOLD];
     END;
  3 : WWDBGRID5.Canvas.FONT.Color:= clRED;
  4 : WWDBGRID5.Canvas.FONT.Color:= clRED;
  5 : WWDBGRID5.Canvas.FONT.Color:= clRED;
  6 : WWDBGRID5.Canvas.FONT.Color:= clRED;
  7 : WWDBGRID5.Canvas.FONT.Color:= clBLUE;
  8 : WWDBGRID5.Canvas.FONT.Color:= clBLUE;

 10 : WWDBGRID5.Canvas.FONT.Color:= clMaroon;

 11 : WWDBGRID5.Canvas.FONT.Color:= clGREEN;
 12 : WWDBGRID5.Canvas.FONT.Color:= clRED;
 13 : WWDBGRID5.Canvas.FONT.Color:= clGREEN;
 14 : WWDBGRID5.Canvas.FONT.Color:= clRED;
 15 : WWDBGRID5.Canvas.FONT.Color:= clGREEN;
 16 : WWDBGRID5.Canvas.FONT.Color:= clRED;



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

  WWDbgrid5.DefaultDrawDataCell(Rect, field, State);


end;

procedure Tfrmproduto_ligth.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    qrproduto.locate('codigo',ecodigo.text,[loCaseInsensitive]);
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    QRPRODUTO.EDIT;
    QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
    QRPRODUTO.POST;
    FRMMODULO.CONEXAO.COMMIT;
  end;

end;

procedure Tfrmproduto_ligth.SpeedButton3Click(Sender: TObject);
begin
  image2.Picture := nil;
    QRPRODUTO.EDIT;
    QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := '';
    QRPRODUTO.POST;
    FRMMODULO.CONEXAO.COMMIT;

end;

procedure Tfrmproduto_ligth.PageView1Change(Sender: TObject);
begin
  try


    if PageView1.ActivePageIndex = 1 then // FOTO
    begin
       IF QRPRODUTO.FieldByName('FOTO').ASSTRING <> '' THEN
       BEGIN
          IMAGE2.Picture.LoadFromFile(QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING);
       END
       ELSE
       BEGIN
         IMAGE2.Picture := NIL;
       END;
    end;

    if pageview1.activepageindex = 2 then
    begin

      if PageView2.ActivePageIndex = 0 then
      begin
        bfiltro_entradaClick(frmproduto_ligth);
      end;
      if PageView2.ActivePageIndex = 1 then
      begin
        bfiltro_saidaClick(frmproduto_ligth);
      end;
    end;


    if PageView1.ActivePageIndex = 3 then // rentabilidade
    begin
       rtotal_rent.value := 0;
       if qrproduto.fieldbyname('usa_rentabilidade').asinteger = 1 then
       begin
         qrrentabilidade.close;
         qrrentabilidade.sql.clear;
         qrrentabilidade.sql.add('select * from c000078 where RENTABILIDADE = '''+qrproduto.fieldbyname('codigo').asstring+'''');
         qrrentabilidade.Open;

         qrrentabilidade.first;
         while not qrrentabilidade.Eof do
         begin
           rtotal_rent.value := rtotal_rent.value + qrrentabilidade.fieldbyname('rendimento').asfloat;
           qrrentabilidade.next;
         end;
       end
       else
       begin
        qrrentabilidade.close;
       end;
    end;






  except
  end;

end;

procedure Tfrmproduto_ligth.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmproduto_ligth);
end;

procedure Tfrmproduto_ligth.cadastro1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 0;

end;

procedure Tfrmproduto_ligth.historicoestoque1Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 2;

end;

procedure Tfrmproduto_ligth.RefernciadaBusca1Click(Sender: TObject);
VAR X : INTEGER;
begin
  X := combo_referencia.Items.Count - 1;
  if combo_referencia.ItemIndex = x then
     combo_referencia.ItemIndex := 0
  else
     combo_referencia.ItemIndex := combo_referencia.ItemIndex + 1
end;

procedure Tfrmproduto_ligth.ESUBGRUPOButtonClick(Sender: TObject);
begin
  if (qrproduto.state <> dsinsert) then
  begin
    if (qrproduto.state <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  //qrproduto.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  esubgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  enome_subgrupo.Text := frmmodulo.qrsubgrupo.fieldbyname('subgrupo').asstring;
  efornecedor.setfocus;

end;

procedure Tfrmproduto_ligth.ereceitaButtonClick(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.showmodal;
  //qrproduto.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  ereceita.Text := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
    if gestoque.visible then eestoque.SetFocus
    else
    if pedicao.visible then
      bgravar.setfocus;
end;

procedure Tfrmproduto_ligth.EFORNECEDORButtonClick(Sender: TObject);
begin
  if (qrproduto.state <> dsinsert) then
  begin
    if (qrproduto.state <> dsedit) then
    begin
      qrproduto.edit;
    end;
  end;
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  //qrproduto.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  efornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  enome_fornecedor.Text := frmmodulo.qrfornecedor.fieldbyname('nome').asstring;
  ecusto.setfocus;

end;

procedure Tfrmproduto_ligth.ECSTButtonClick(Sender: TObject);
begin
      FRMXLOC_CST := TFRMXLOC_CST.CREATE(SELF);
      FRMXLOC_CST.SHOWMODAL;
      if resultado_pesquisa1 <> '' then
      begin
        ecst.Text := RESULTADO_PESQUISA1;
        enome_cst.Text := RESULTADO_PESQUISA2;
      end;

      Ealiq.SETFOCUS;
end;

procedure Tfrmproduto_ligth.ereceitaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if gestoque.visible then eestoque.SetFocus
    else
    if pedicao.visible then
      bgravar.setfocus;


  end;
end;

procedure Tfrmproduto_ligth.ECSTKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.elocalizarExit(Sender: TObject);
begin
  TEDIT(SENDER).COLOR := CLWINDOW;
end;

procedure Tfrmproduto_ligth.ESUBGRUPOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.EFORNECEDORKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.efim_promocaoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.eestoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    if pedicao.visible then
      bgravar.setfocus;
end;

procedure Tfrmproduto_ligth.eestoqueEnter(Sender: TObject);
begin
  tedit(sender).color := $00A0FAF8;
end;

procedure Tfrmproduto_ligth.di_entradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.df_entradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.combo_entradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltro_entrada.SetFocus;
end;

procedure Tfrmproduto_ligth.bfiltro_entradaClick(Sender: TObject);
var ve : real;
begin
  if combo_entrada.ItemIndex = 0 then
  begin
    qrmov_entrada.close;
    qrmov_entrada.sql.clear;
    qrmov_entrada.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
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
    qrmov_entrada.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
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

procedure Tfrmproduto_ligth.di_saidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.df_saidaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_ligth.bfiltro_saidaClick(Sender: TObject);
var ve : real;
begin
  if combo_saida.ItemIndex = 0 then
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
    qrmov_saida.sql.Add('and data >= :datai and data <= :dataf');
    qrmov_saida.sql.add('and movimento in (2,3,4,5,6,9,11,12,14,15,17,18,19,20,99)');
    qrmov_saida.Params.ParamByName('datai').asdatetime := di_saida.Date;
    qrmov_saida.Params.ParamByName('dataf').asdatetime := df_saida.Date;
    qrmov_saida.open;
    qrmov_saida.first;
  end
  else
  begin
    qrmov_saida.close;
    qrmov_saida.sql.clear;
    qrmov_saida.sql.add('select * from c000032 where codproduto = '''+qrproduto.fieldbyname('codigo').asstring+'''');
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

procedure Tfrmproduto_ligth.PageView2Change(Sender: TObject);
begin
  if pageview1.ActivePageIndex = 2 then
  begin
    if PageView2.ActivePageIndex = 0 then
    begin
      bfiltro_entradaClick(frmproduto_ligth);
    end;
    if PageView2.ActivePageIndex = 1 then
    begin
      bfiltro_saidaClick(frmproduto_ligth);
    end;
  end;
end;

procedure Tfrmproduto_ligth.combo_saidaKeyPress(Sender: TObject;
  var Key: Char);
begin
   if key = #13 then bfiltro_saida.setfocus;
end;

procedure Tfrmproduto_ligth.qrmov_saidaCalcFields(DataSet: TDataSet);
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
 99:qrmov_saida.FieldByName('MOV').ASSTRING := 'SEM BAIXA DE ESTOQUE';           // saida


  END;
end;

procedure Tfrmproduto_ligth.qrmov_entradaCalcFields(DataSet: TDataSet);
begin
  CASE qrmov_entrada.FieldByName('MOVIMENTO').ASINTEGER OF
  0:qrmov_entrada.FieldByName('MOV').ASSTRING := 'IMPLANTAÇÃO DE SALDO';           // ENTRADA
  1:qrmov_entrada.FieldByName('MOV').ASSTRING := 'COMPRA';                         // ENTRADA
  2:qrmov_entrada.FieldByName('MOV').ASSTRING := 'VENDA';                          // SAIDA
  3:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE COMPRA';            // ENTRADA
  4:qrmov_entrada.FieldByName('MOV').ASSTRING := 'OUTRAS SAÍDAS';                  // SAIDA
  5:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA DE SERIAL';                // SAIDA
  6:qrmov_entrada.FieldByName('MOV').ASSTRING := 'EXCLUSÃO SERIAL';                // SAIDA
  7:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DEVOLUÇÃO DE VENDA';             // ENTRADA
  8:qrmov_entrada.FieldByName('MOV').ASSTRING := 'RETORNO SERIAL';                 // ENTRADA
  9:qrmov_entrada.FieldByName('MOV').ASSTRING := 'VENDA EM O.S';                   // SAIDA
 10:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ACERTO ESTOQUE';                 // ENTRADA
 11:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA MATÉRIA-PRIMA';            // SAIDA
 12:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ESTORNA MATÉRIA-PRIMA';          // ENTRADA
 13:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ENTRADA PRODUTO ACABADO';        // ENTRADA
 14:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ESTORNA PRODUTO ACABADO';        // SAIDA
 15:qrmov_entrada.FieldByName('MOV').ASSTRING := 'BAIXA PARA RENTABILIDADE';       // SAIDA
 16:qrmov_entrada.FieldByName('MOV').ASSTRING := 'ENTRADA DA RENTABILIDADE';       // ENTRADA

 17:qrmov_entrada.FieldByName('MOV').ASSTRING := 'INSTALAÇÃO';                     // saida
 18:qrmov_entrada.FieldByName('MOV').ASSTRING := 'GARANTIA DE SERVIÇO';            // saida
 19:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SAIDA PARA OFICINA';             // saida
 20:qrmov_entrada.FieldByName('MOV').ASSTRING := 'DOAÇÃO';                         // saida
 99:qrmov_entrada.FieldByName('MOV').ASSTRING := 'SEM BAIXA DE ESTOQUE';           // saida


  END;
end;

procedure Tfrmproduto_ligth.eprodutoExit(Sender: TObject);
var texto : pansichar;
begin

  tedit(sender).Color := clwindow;
  if VOPCAO = 1 then
  begin
    qrduplo.close;
    qrduplo.sql.clear;
    qrduplo.sql.add('select * from c000025');
    qrduplo.sql.add('where upper(produto) = '''+ANSIUPPERCASE(EPRODUTO.TEXT)+'''');
    qrduplo.open;
    if qrduplo.recordcount > 0 then
    begin
      texto := pansichar( 'Existe um produto cadastrado com este nome!'+#13+
               qrduplo.fieldbyname('codigo').asstring+' - '+qrduplo.fieldbyname('produto').asstring+#13+
               'Preço de Venda: '+formatfloat('###,###,##0.00',qrduplo.fieldbyname('precovenda').asfloat)+'!'+#13+
               'Deseja prosseguir?');
      if application.messagebox(texto,'Atenção',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idNO then
      begin
        BCANCELARCLICK(FRMPRODUTO_LIGTH);
        EXIT;
      end;
    end;
  end;
end;

procedure Tfrmproduto_ligth.MovimentarEstoque1Click(Sender: TObject);
var recor : string;
begin
  if frmprincipal.autentica('Movimentar Estoque',4) then
  begin
    recor := qrproduto.fieldbyname('codigo').asstring;
    frmproduto_movimentar := tfrmproduto_movimentar.create(self);
    frmproduto_movimentar.LCODIGO.Caption := qrproduto.fieldbyname('codigo').asstring;
    frmproduto_movimentar.Lproduto.Caption := qrproduto.fieldbyname('produto').asstring;
    frmproduto_movimentar.Lestoque.Caption := formatfloat('###,###,##0.000',restoque.value);
    frmproduto_movimentar.rqtde.Value := 1;
    frmproduto_movimentar.runitario.Value := qrproduto.fieldbyname('precovenda').asfloat;
    frmproduto_movimentar.rtotal.Value := qrproduto.fieldbyname('precovenda').asfloat;
    frmproduto_movimentar.lunidade.Caption := QRPRODUTO.FIELDBYNAME('UNIDADE').ASSTRING;
    frmproduto_movimentar.showmodal;
    bcadastroClick(frmproduto_ligth);
  end;





  


end;

procedure Tfrmproduto_ligth.combo_tipoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then edata_cadastro.setfocus;
end;

procedure Tfrmproduto_ligth.ealiqExit(Sender: TObject);
begin
  if ( ealiq.value <> 0.00 )  and
     ( ealiq.value <> 7.00 )  and
     ( ealiq.value <> 12.00 ) and
     ( ealiq.value <> 17.00 ) and
     ( ealiq.value <> 25.00 ) and
     ( ealiq.value <> 27.00 ) then
    begin
      application.messagebox('Aliquota fora da faixa!','Atenção',mb_ok+mb_iconwarning);
      ealiq.Value := 0;
      ealiq.SetFocus;
      exit;
    end;

end;

procedure Tfrmproduto_ligth.AdvGlowButton4Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE',4) then
  begin
  rtotal_rent.Value := rtotal_rent.value - qrrentabilidade.fieldbyname('rendimento').asfloat;
    qrRENTABILIDADE.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmproduto_ligth.AdvGlowButton3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir RENTABILIDADE',4) then
  begin
    WHILE QRRENTABILIDADE.RecordCount <> 0 DO
    qrRENTABILIDADE.Delete;
  rtotal_rent.Value := 0;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmproduto_ligth.brent_gravarClick(Sender: TObject);
begin
 IF check_rentabilidade.Checked THEN
 BEGIN


 if radiobutton1.checked then
 begin
    qrrentabilidade.Insert;
    qrrentabilidade.fieldbyname('codproduto').asstring := elocproduto.text;
    qrrentabilidade.fieldbyname('produto').asstring := eproduto.text;
    qrrentabilidade.fieldbyname('rendimento').asfloat := erentabilidade.Value;
    qrrentabilidade.fieldbyname('codigo').asstring := frmprincipal.codifica('000078');
    qrrentabilidade.fieldbyname('rentabilidade').asstring := qrproduto.FIELDBYNAME('CODIGO').ASSTRING;
    qrrentabilidade.post;
 end
 else
 begin
    qrrentabilidade.Insert;
    qrrentabilidade.fieldbyname('codproduto').asstring := '000000';
    qrrentabilidade.fieldbyname('produto').asstring := 'P E R D A';
    qrrentabilidade.fieldbyname('rendimento').asfloat := erentabilidade.Value;
    qrrentabilidade.fieldbyname('codigo').asstring := frmprincipal.codifica('000078');
    qrrentabilidade.fieldbyname('rentabilidade').asstring := qrproduto.FIELDBYNAME('CODIGO').ASSTRING;
    qrrentabilidade.post;
 end;

  rtotal_rent.Value := rtotal_rent.value + qrrentabilidade.fieldbyname('rendimento').asfloat;

  RADIOBUTTON1.Checked := TRUE;
  elocproduto.setfocus;
  elocproduto.text := '';
  eproduto.text := '';
  erentabilidade.value := 0;


  END
  ELSE
  BEGIN
    application.messagebox('Este produto não utiliza rentabilidade! Favor verificar!','Atenção',mb_ok+mb_iconerror);
    exit;
  END;



end;

procedure Tfrmproduto_ligth.elocprodutoButtonClick(Sender: TObject);
begin
  resultado_pesquisa1 := '';
  resultado_pesquisa2 := '';
  frmxloc_Produto := tfrmxloc_Produto.create(self);
  frmxloc_Produto.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    elocproduto.text := resultado_pesquisa1;
    eproduto.text := resultado_pesquisa2;
    erentabilidade.setfocus;
  end;

end;

procedure Tfrmproduto_ligth.elocprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    elocproduto.text := frmprincipal.zerarcodigo(elocproduto.text,6);
    if elocproduto.text <> '000000' then
    begin
      qrproduto_loc.close;
      qrproduto_loc.SQL.clear;
      qrproduto_loc.sql.add('select * from c000025 where codigo = '''+elocproduto.text+'''');
      qrproduto_loc.open;
      if qrproduto_loc.RecordCount > 0 then
      begin
        eproduto.text := qrproduto_loc.fieldbyname('produto').asstring;
        elocproduto.text := qrproduto_loc.fieldbyname('codigo').asstring;
        erentabilidade.setfocus;
      end
      else
      begin
          application.messagebox('Produto não cadastrado!','Atenção',mb_ok+mb_iconerror);
          elocproduto.setfocus;
          exit;
      end;
    end
    else
      elocprodutoButtonClick(frmproduto_ligth);


  end;

end;

procedure Tfrmproduto_ligth.erentabilidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then brent_gravar.setfocus;

end;

procedure Tfrmproduto_ligth.Exportar1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto_ligth.Importar1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Atualizar Produtos',4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
    qrproduto.refresh;
  end;
end;

procedure Tfrmproduto_ligth.bfornecedor_codigoClick(Sender: TObject);
begin
  frmfornecedor_codigo := tfrmfornecedor_codigo.create(self);
  frmfornecedor_codigo.lproduto.Caption := qrprodutoCODIGO.AsString+'-'+qrprodutoPRODUTO.AsString;
  frmfornecedor_codigo.showmodal;
end;

end.
