unit produto2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, DBCtrls, StdCtrls, Buttons, Collection, TFlatPanelUnit,
  Menus, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, Grids, DBGrids,
  Mask, ToolEdit, CurrEdit, maskutils, RXDBCtrl, PageView, Wwdbigrd,
  Wwdbgrid, TFlatHintUnit, HpHint, LMDCustomButton, LMDButton, wwdblook,
  Wwdbdlg, wwdbedit, Wwdotdot, ExtDlgs;

type
  Tfrmproduto2 = class(TForm)
    HeaderView1: THeaderView;
    bincluir: TBitBtn;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    blocalizar: TBitBtn;
    bfechar: TBitBtn;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    bcancelar: TBitBtn;
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
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    BitBtn3: TBitBtn;
    BitBtn4: TBitBtn;
    dsproduto2: TDataSource;
    qrproduto: TZQuery;
    BitBtn5: TBitBtn;
    Relatrios1: TMenuItem;
    Regies1: TMenuItem;
    dsproduto: TDataSource;
    pficha: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label37: TLabel;
    DBEdit1: TDBEdit;
    edata_cadastro: TDBDateEdit;
    DBEdit2: TDBEdit;
    efornecedor: TDBEdit;
    blocfornecedor: TBitBtn;
    DBEdit31: TDBEdit;
    Label3: TLabel;
    DBEdit16: TDBEdit;
    Label6: TLabel;
    esubgrupo: TDBEdit;
    blocsubgrupo: TBitBtn;
    DBEdit4: TDBEdit;
    Label7: TLabel;
    emarca: TDBEdit;
    blocmarca: TBitBtn;
    DBEdit6: TDBEdit;
    Label8: TLabel;
    DBEdit7: TDBEdit;
    Label4: TLabel;
    DBEdit8: TDBEdit;
    Label9: TLabel;
    DBEdit9: TDBEdit;
    Label10: TLabel;
    DBDateEdit1: TDBDateEdit;
    Label11: TLabel;
    Label12: TLabel;
    DBDateEdit2: TDBDateEdit;
    BitBtn9: TBitBtn;
    Label13: TLabel;
    DBEdit11: TDBEdit;
    ViewSplit1: TViewSplit;
    Label15: TLabel;
    DBEdit12: TDBEdit;
    gestoque: TGroupBox;
    DBEdit10: TDBEdit;
    GroupBox2: TGroupBox;
    ealiquota: TDBEdit;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    PageSheet5: TPageSheet;
    PageSheet6: TPageSheet;
    PageSheet7: TPageSheet;
    blocaliquota: TBitBtn;
    pobservacao: TPanel;
    Label14: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label35: TLabel;
    DBMemo1: TDBMemo;
    DBEdit15: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    DBCheckBox1: TDBCheckBox;
    DBEdit62: TDBEdit;
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
    pserial: TPanel;
    DBCheckBox3: TDBCheckBox;
    pcomposicao: TPanel;
    Label34: TLabel;
    ereceita: TDBEdit;
    blocreceita: TBitBtn;
    DBEdit61: TDBEdit;
    GroupBox6: TGroupBox;
    wwDBGrid3: TwwDBGrid;
    Button1: TButton;
    Button2: TButton;
    pnutricional: TPanel;
    Label157: TLabel;
    Label29: TLabel;
    Label76: TLabel;
    GroupBox5: TGroupBox;
    DBEdit39: TDBEdit;
    FlatPanel3: TFlatPanel;
    FlatPanel4: TFlatPanel;
    FlatPanel5: TFlatPanel;
    FlatPanel6: TFlatPanel;
    Shape6: TShape;
    Shape5: TShape;
    Shape4: TShape;
    Shape3: TShape;
    Shape1: TShape;
    Label145: TLabel;
    Label148: TLabel;
    Label149: TLabel;
    Label150: TLabel;
    Label151: TLabel;
    Label152: TLabel;
    Label153: TLabel;
    Label154: TLabel;
    Label155: TLabel;
    Label156: TLabel;
    FlatPanel7: TFlatPanel;
    Shape10: TShape;
    Shape9: TShape;
    Shape8: TShape;
    Shape7: TShape;
    Shape2: TShape;
    Label158: TLabel;
    Label159: TLabel;
    Label160: TLabel;
    Label161: TLabel;
    Label162: TLabel;
    Label163: TLabel;
    Label165: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    FlatPanel8: TFlatPanel;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    DBEdit42: TDBEdit;
    DBEdit43: TDBEdit;
    DBEdit44: TDBEdit;
    DBEdit45: TDBEdit;
    DBEdit46: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit48: TDBEdit;
    DBEdit49: TDBEdit;
    DBEdit50: TDBEdit;
    DBEdit51: TDBEdit;
    DBEdit52: TDBEdit;
    DBEdit53: TDBEdit;
    DBEdit54: TDBEdit;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    DBEdit57: TDBEdit;
    DBEdit58: TDBEdit;
    DBEdit59: TDBEdit;
    pbarra: TFlatPanel;
    INIMAGE: TImage;
    dspreco: TDataSource;
    ptampapreco: TFlatPanel;
    Label38: TLabel;
    BitBtn7: TBitBtn;
    F31: TMenuItem;
    ClculodePreo1: TMenuItem;
    FlatPanel9: TFlatPanel;
    Label39: TLabel;
    FlatPanel10: TFlatPanel;
    Label40: TLabel;
    DBEdit3: TDBEdit;
    Label41: TLabel;
    DBEdit5: TDBEdit;
    BitBtn10: TBitBtn;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    dsgrade_produto: TDataSource;
    dsserial_produto: TDataSource;
    Shape11: TShape;
    Label42: TLabel;
    Button3: TButton;
    ptampaserial: TFlatPanel;
    Shape12: TShape;
    Label43: TLabel;
    LMDButton1: TLMDButton;
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
    comboproduto: TwwDBLookupComboDlg;
    qrcomposicao_produtoPRODUTO: TStringField;
    qrcomposicao_produtoprod: TStringField;
    ptampainfnutricional: TFlatPanel;
    BitBtn6: TBitBtn;
    Label44: TLabel;
    qrinfnutricional_produto: TDataSource;
    PageSheet8: TPageSheet;
    OpenPictureDialog1: TOpenPictureDialog;
    PFOTO: TPanel;
    Image2: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    dsproduto_mov: TDataSource;
    Label48: TLabel;
    NaturezadeOperaoCFOP1: TMenuItem;
    qrproduto_mov: TZQuery;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movMOV: TStringField;
    qrproduto_movMOVIMENTO: TIntegerField;
    BitBtn14: TBitBtn;
    BitBtn13: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    wwDBGrid2: TwwDBGrid;
    qrproduto_movQTDE: TFloatField;
    baltera: TBitBtn;
    N1: TMenuItem;
    Exportarparaarquivo1: TMenuItem;
    ImportardeArquivo1: TMenuItem;
    N2: TMenuItem;
    otalizarestoque1: TMenuItem;
    query: TZQuery;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    ComboBox1: TComboBox;
    Label55: TLabel;
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
    procedure efornecedorExit(Sender: TObject);
    procedure blocfornecedorClick(Sender: TObject);
    procedure DateEdit1Exit(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure Edit1Exit(Sender: TObject);
    procedure DBEdit16Exit(Sender: TObject);
    procedure DBEdit1Change(Sender: TObject);
    procedure esubgrupoExit(Sender: TObject);
    procedure emarcaExit(Sender: TObject);
    procedure blocsubgrupoClick(Sender: TObject);
    procedure blocmarcaClick(Sender: TObject);
    procedure ealiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure DBMemo1KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit62KeyPress(Sender: TObject; var Key: Char);
    procedure DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
    procedure esubgrupoEnter(Sender: TObject);
    procedure blocaliquotaClick(Sender: TObject);
    procedure ealiquotaExit(Sender: TObject);
    procedure PageView1Change(Sender: TObject);
    procedure BitBtn7Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure DBEdit19Exit(Sender: TObject);
    procedure DBEdit22Exit(Sender: TObject);
    procedure DBEdit37Exit(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure wwDBGrid2DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Button3Click(Sender: TObject);
    procedure Receitas1Click(Sender: TObject);
    procedure Regies1Click(Sender: TObject);
    procedure blocreceitaClick(Sender: TObject);
    procedure ereceitaExit(Sender: TObject);
    procedure qrcomposicao_produtoBeforePost(DataSet: TDataSet);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBEdit40Exit(Sender: TObject);
    procedure DBEdit42Exit(Sender: TObject);
    procedure BitBtn6Click(Sender: TObject);
    procedure DBEdit59KeyPress(Sender: TObject; var Key: Char);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure wwDBGrid4DrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure Fornecedor1Click(Sender: TObject);
    procedure MarcaFabricanteLaboratrio1Click(Sender: TObject);
    procedure GrupoSubgrupo1Click(Sender: TObject);
    procedure Alquotas1Click(Sender: TObject);
    procedure NaturezadeOperaoCFOP1Click(Sender: TObject);
    procedure qrproduto_movCalcFields(DataSet: TDataSet);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure balteraClick(Sender: TObject);
    procedure Exportarparaarquivo1Click(Sender: TObject);
    procedure ImportardeArquivo1Click(Sender: TObject);
    procedure otalizarestoque1Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto2: Tfrmproduto2;
  comando : string;
  estoque_anterior : real;

implementation

uses modulo, principal, loc_regiao, regiao, loc_funci, loc_grupo,
  loc_fornecedor, loc_subgrupo, loc_marca, loc_aliquota, receita,
  loc_receita, webcam, fornecedor, marca, grupo, aliquota, cfop,
  produto_exportar, produto_importar, produto_total, lista_produto2,
  xloc_produto;

{$R *.dfm}


procedure Tfrmproduto2.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto2.FormShow(Sender: TObject);
begin
  OpenPictureDialog1.InitialDir := caminho_fotos_produtos;

  ptampapreco.Align := alClient;
  ptampainfnutricional.Align := alClient;

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





  pgravar.visible := false;
  pgravar.Align := alClient;


  frmmodulo.qrPRODUTO.close;
  frmmodulo.qrPRODUTO.SQL.clear;
  frmmodulo.qrPRODUTO.SQL.add('select * from c000025 order by produto');
  frmmodulo.qrPRODUTO.open;
  frmmodulo.qrPRODUTO.first;
  pficha.Enabled := false;
  bincluir.SetFocus;
end;

procedure Tfrmproduto2.enomeEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmproduto2.enomeExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto2.bincluirClick(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.insert;
  frmmodulo.qrproduto.FieldByName('usa_balanca').asinteger := 0;
  frmmodulo.qrproduto.FieldByName('usa_serial').asinteger := 0;
  frmmodulo.qrproduto.FieldByName('usa_grade').asinteger := 0;


  frmmodulo.qrPRODUTO.fieldbyname('codigo').asstring := frmprincipal.codifica('000025');

  gestoque.Enabled := true;
  pficha.Enabled := true;
  PFOTO.Enabled := TRUE;
  dbedit16.setfocus;
  pgravar.Visible := true;

  pobservacao.Enabled := true;
  ppreco.Enabled := true;
  pgrade.Enabled := true;
  pserial.Enabled := true;
  pcomposicao.Enabled := true;
  pnutricional.Enabled := true;


  pageview1.ActivePageindex := 0;



  PopupMenu := pop2;
end;

procedure Tfrmproduto2.balterarClick(Sender: TObject);
begin








  IF dbedit1.Text <> '' THEN
  BEGIN

  pobservacao.Enabled := true;
  PFOTO.Enabled := TRUE;
  ppreco.Enabled := true;
  pgrade.Enabled := true;
  pserial.Enabled := true;
  pcomposicao.Enabled := true;
  pnutricional.Enabled := true;


    dbedit10.Top := 36;
    baltera.Visible := true;
    gestoque.Enabled := false;


   estoque_anterior := frmmodulo.qrproduto.fieldbyname('estoque').asfloat;




    frmmodulo.qrPRODUTO.Edit;
    pficha.Enabled := true;
    dbedit16.setfocus;
    pgravar.Visible := true;
    PopupMenu := pop2;
  END
  ELSE
  BEGIN
    Showmessage('Nenhum registro foi selecionado!');
  END;

end;

Procedure Tfrmproduto2.bexcluirClick(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir PRODUTO',4) then
  begin

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

procedure Tfrmproduto2.blocalizarClick(Sender: TObject);
begin
   frmxloc_PRODUTO := tfrmxloc_PRODUTO.create(self);
  frmxloc_PRODUTO.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrPRODUTO.Locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);
  end;
end;

procedure Tfrmproduto2.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto2.bgravarClick(Sender: TObject);
var situacao, tipo : integer;
DATA: STRING;
begin
  if frmmodulo.qrproduto.fieldbyname('estoque').asfloat <> estoque_anterior then
  begin
                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 10;
                qrproduto_mov.fieldbyname('codvendedor').asstring := frmmodulo.qrUsuario.FIELDBYNAME('CODIGO').ASSTRING;
                qrproduto_mov.fieldbyname('qtde').asfloat := FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT-ESTOQUE_ANTERIOR;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat*(FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT-ESTOQUE_ANTERIOR);
                qrProduto_mov.Post;

  end;



  IF (frmmodulo.qrprODUTO.State = dsinsert) then
  BEGIN
    IF FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT <> 0 THEN
    BEGIN
                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 0;
                qrproduto_mov.fieldbyname('codvendedor').asstring := frmmodulo.qrUsuario.FIELDBYNAME('CODIGO').ASSTRING;
                qrproduto_mov.fieldbyname('qtde').asfloat := FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat*FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT;
                qrProduto_mov.Post;

    END;
  END;

  baltera.Visible := false;
  dbedit10.Top := 28;
  gestoque.Enabled := false;

  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then
   frmmodulo.qrpreco.Post;
  if (frmmodulo.qrinfnutricional_produto.State = dsedit) or (frmmodulo.qrinfnutricional_produto.State = dsinsert) then frmmodulo.qrinfnutricional_produto.Post;

  pobservacao.Enabled := false;
  ppreco.Enabled := false;
  pgrade.Enabled := false;
  pserial.Enabled := false;
  pcomposicao.Enabled := false;
  pnutricional.Enabled := false;
  PFOTO.Enabled := FALSE;
  
  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.post;
  end;

  frmmodulo.Conexao.Commit;
  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;


  pageview1.ActivePageindex := 0;


end;

procedure Tfrmproduto2.bcancelarClick(Sender: TObject);
begin
  if (frmmodulo.qrpreco.State = dsedit) or (frmmodulo.qrpreco.State = dsinsert) then frmmodulo.qrpreco.cancel;

  if (frmmodulo.qrPRODUTO.State = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
      frmmodulo.qrPRODUTO.cancel;

  baltera.Visible := false;
  dbedit10.Top := 28;
  gestoque.Enabled := false;

  FRMMODULO.Conexao.Rollback;


  pobservacao.Enabled := false;
  ppreco.Enabled := false;
  pgrade.Enabled := false;
  pserial.Enabled := false;
  pcomposicao.Enabled := false;
  pnutricional.Enabled := false;
  PFOTO.Enabled := FALSE;



  pficha.Enabled := false;
  pgravar.Visible := false;
  PopupMenu := pop1;
  bincluir.setfocus;
  comando := '';
  pageview1.ActivePageindex := 0;
end;

procedure Tfrmproduto2.enomeKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto2.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.first;
end;

procedure Tfrmproduto2.BitBtn2Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.last;
end;

procedure Tfrmproduto2.BitBtn3Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.prior;
end;

procedure Tfrmproduto2.BitBtn4Click(Sender: TObject);
begin
  frmmodulo.qrPRODUTO.next;
end;

procedure Tfrmproduto2.etipoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto2.edata_cadastroEnter(Sender: TObject);
begin
 tedit(sender).Color := clyellow;
 if (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.state = dsinsert) then
 begin
    if edata_cadastro.text = '  /  /    ' then  EDATA_CADASTRO.Date := DATE;
 end;
end;

procedure Tfrmproduto2.elimiteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto2.DBEdit1Enter(Sender: TObject);
begin
tedit(sender).Color := clyellow;


end;

procedure Tfrmproduto2.DBEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto2.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto2.RxDBCalcEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto2.efornecedorExit(Sender: TObject);
begin

  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codfornecedor').asstring := frmprincipal.zerarcodigo(efornecedor.text,6);
    if efornecedor.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrfornecedor,efornecedor.text,'codigo') then blocfornecedorclick(frmproduto) else dbdateedit1.setfocus
    else
      blocfornecedor.SetFocus;
  end;


end;

procedure Tfrmproduto2.blocfornecedorClick(Sender: TObject);
begin
  frmloc_fornecedor := tfrmloc_fornecedor.create(self);
  frmloc_fornecedor.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codfornecedor').asstring := frmmodulo.qrfornecedor.fieldbyname('codigo').asstring;
  dbdateedit1.setfocus;

end;

procedure Tfrmproduto2.DateEdit1Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto2.DBEdit4Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
end;

procedure Tfrmproduto2.Edit1Exit(Sender: TObject);
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

procedure Tfrmproduto2.DBEdit16Exit(Sender: TObject);
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
  pbarra.visible :=false;


end;

procedure Tfrmproduto2.DBEdit1Change(Sender: TObject);
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

    if PageView1.ActivePageIndex = 2 then // grade
    begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;
    end;
    if PageView1.ActivePageIndex = 3 then // seriais
    begin
       frmmodulo.qrserial_produto.close;
       frmmodulo.qrserial_produto.sql.clear;
       frmmodulo.qrserial_produto.sql.add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       frmmodulo.qrserial_produto.Open;
       if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
         ptampaserial.Visible := false else ptampaserial.Visible := true;

    end;

    if PageView1.ActivePageIndex = 4 then // composicao
    begin
       qrcomposicao_produto.close;
       qrcomposicao_produto.sql.clear;
       qrcomposicao_produto.sql.add('select * from c000027 where produto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       qrcomposicao_produto.Open;
    end;

    if PageView1.ActivePageIndex = 5 then // informacao nutricional
    begin
       frmmodulo.qrinfnutricional_produto.close;
       frmmodulo.qrinfnutricional_produto.sql.clear;
       frmmodulo.qrinfnutricional_produto.sql.add('select * from c000028 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrinfnutricional_produto.Open;

        if frmmodulo.qrinfnutricional_produto.RecordCount = 0 then
        begin
          ptampainfnutricional.visible := true;
        end
        else
        begin
          ptampainfnutricional.visible := false;
        end;
    end;

    if PageView1.ActivePageIndex = 6 then // MOVIMENTO
    begin
       QRPRODUTO_MOV.close;
       QRPRODUTO_MOV.sql.clear;
              QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA desc');
       QRPRODUTO_MOV.Open;
    end;
    

    

    if PageView1.ActivePageIndex = 7 then // FOTO
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

procedure Tfrmproduto2.esubgrupoExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codsubgrupo').asstring := frmprincipal.zerarcodigo(esubgrupo.text,6);
    if esubgrupo.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrsubgrupo,esubgrupo.text,'codigo') then blocsubgrupoclick(frmproduto) else efornecedor.setfocus
    else
      blocsubgrupo.SetFocus;
  end;
end;

procedure Tfrmproduto2.emarcaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codmarca').asstring := frmprincipal.zerarcodigo(emarca.text,6);
    if emarca.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrmarca,emarca.text,'codigo') then blocmarcaclick(frmproduto) else dbedit8.setfocus
    else
      blocmarca.SetFocus;
  end;
end;

procedure Tfrmproduto2.blocsubgrupoClick(Sender: TObject);
begin
  frmloc_subgrupo := tfrmloc_subgrupo.create(self);
  frmloc_subgrupo.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codsubgrupo').asstring := frmmodulo.qrsubgrupo.fieldbyname('codigo').asstring;
  efornecedor.setfocus;

end;

procedure Tfrmproduto2.blocmarcaClick(Sender: TObject);
begin
  frmloc_marca := tfrmloc_marca.create(self);
  frmloc_marca.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codmarca').asstring := frmmodulo.qrmarca.fieldbyname('codigo').asstring;
  dbedit8.setfocus;

end;

procedure Tfrmproduto2.ealiquotaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;

  end;
end;

procedure Tfrmproduto2.DBMemo1KeyPress(Sender: TObject; var Key: Char);
begin
{
With Memo1 do
begin
Line:= Perform(EM_LINEFROMCHAR,SelStart, 0);
sum:= SelStart - Perform(EM_LINEINDEX, Line, 0);
end;


With Memo1 do
  SelStart := Perform(EM_LINEINDEX, Linha, 0);


}
  if key = #13 then
  begin
    if dbmemo1.Lines.Count >= 5 then perform(wm_nextdlgctl,0,0);
  end;
end;

procedure Tfrmproduto2.DBEdit62KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then dbcheckbox1.SetFocus;
end;

procedure Tfrmproduto2.DBCheckBox1KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto2.esubgrupoEnter(Sender: TObject);
begin
tedit(sender).Color := clyellow;

end;

procedure Tfrmproduto2.blocaliquotaClick(Sender: TObject);
begin
  frmloc_ALIQUOTA := tfrmloc_ALIQUOTA.create(self);
  frmloc_ALIQUOTA.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codALIQUOTA').asstring := frmmodulo.qrALIQUOTA.fieldbyname('codigo').asstring;
    PageView1.ActivePageIndex := 0;
    dbmemo1.SetFocus;


end;

procedure Tfrmproduto2.ealiquotaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codALIQUOTA').asstring := frmprincipal.zerarcodigo(eALIQUOTA.text,2);
    if eALIQUOTA.text <> '00' then
    begin
      if not FrmPrincipal.Locregistro(frmmodulo.qrALIQUOTA,eALIQUOTA.text,'codigo') then blocALIQUOTAclick(frmproduto) else begin PageView1.ActivePageIndex := 0; dbmemo1.SetFocus; end;
    end
    else
      blocALIQUOTA.SetFocus;
  end;
end;

procedure Tfrmproduto2.PageView1Change(Sender: TObject);
begin
  try
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
    if PageView1.ActivePageIndex = 2 then // grade
    begin
       frmmodulo.qrgrade_produto.close;
       frmmodulo.qrgrade_produto.sql.clear;
       frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrgrade_produto.Open;
    end;

    if PageView1.ActivePageIndex = 3 then // seriais
    begin
       frmmodulo.qrserial_produto.close;
       frmmodulo.qrserial_produto.sql.clear;
       frmmodulo.qrserial_produto.sql.add('select * from c000022 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' and situacao <> 4 order by codigo');
       frmmodulo.qrserial_produto.Open;

       if frmmodulo.qrproduto.FieldByName('usa_serial').asinteger = 1 then
         ptampaserial.Visible := false else ptampaserial.Visible := true;
    end;

    if PageView1.ActivePageIndex = 4 then // composicao
    begin
       qrcomposicao_produto.close;
       qrcomposicao_produto.sql.clear;
       qrcomposicao_produto.sql.add('select * from c000027 where produto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       qrcomposicao_produto.Open;

       qrproduto_loc.open;

    end;
    if PageView1.ActivePageIndex = 5 then // informacao nutricional
    begin
       frmmodulo.qrinfnutricional_produto.close;
       frmmodulo.qrinfnutricional_produto.sql.clear;
       frmmodulo.qrinfnutricional_produto.sql.add('select * from c000028 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
       frmmodulo.qrinfnutricional_produto.Open;

        if frmmodulo.qrinfnutricional_produto.RecordCount = 0 then
        begin
          ptampainfnutricional.visible := true;
        end
        else
        begin
          ptampainfnutricional.visible := false;
        end;
    end;

    if PageView1.ActivePageIndex = 6 then // MOVIMENTO
    begin
       combobox1.ItemIndex := 0;
       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA desc');
       QRPRODUTO_MOV.Open;
    end;


    if PageView1.ActivePageIndex = 7 then // FOTO
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

procedure Tfrmproduto2.BitBtn7Click(Sender: TObject);
begin
  frmmodulo.qrpreco.insert;
  frmmodulo.qrpreco.fieldbyname('codigo').asstring := frmprincipal.codifica('000026');
  frmmodulo.qrpreco.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
  frmmodulo.qrpreco.fieldbyname('VALOR_ULTIMA_COMPRA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOCUSTO').asfloat;
  frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat := frmmodulo.qrproduto.fieldbyname('PRECOCUSTO').asfloat;


  ptampapreco.Visible := false;
  dbedit19.setfocus;
end;

procedure Tfrmproduto2.BitBtn9Click(Sender: TObject);
begin
  PageView1.ActivePageIndex := 1;
end;

procedure Tfrmproduto2.DBEdit19Exit(Sender: TObject);
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

procedure Tfrmproduto2.DBEdit22Exit(Sender: TObject);
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
      frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat := frmmodulo.qrpreco.fieldbyname('CUSTO_COMPRA').asfloat / (1-(frmmodulo.qrpreco.fieldbyname('TOTAL_CUSTO_P').asfloat/100));

      if frmmodulo.qrpreco.FieldByName('icms_entrada_p').asfloat <> 0 then
      begin
        frmmodulo.qrpreco.FieldByName('icms_entrada').asfloat :=
        frmmodulo.qrpreco.FieldByName('preco_venda').asfloat *
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

procedure Tfrmproduto2.DBEdit37Exit(Sender: TObject);
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

procedure Tfrmproduto2.BitBtn10Click(Sender: TObject);
begin
  frmmodulo.qrproduto.fieldbyname('precovenda').asfloat :=
  frmmodulo.qrpreco.fieldbyname('preco_venda').asfloat;

  frmmodulo.qrproduto.fieldbyname('precocusto').asfloat :=
  frmmodulo.qrpreco.fieldbyname('custo_compra').asfloat;

end;

procedure Tfrmproduto2.wwDBGrid1Exit(Sender: TObject);
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

procedure Tfrmproduto2.wwDBGrid2DrawDataCell(Sender: TObject;
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

procedure Tfrmproduto2.Button3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Baixar Serial',4) then
  begin
    case frmmodulo.qrserial_produto.FieldByName('situacao').asinteger of
    1:
    begin
      If application.MessageBox('Tem certeza que deseja BAIXAR este serial do Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        frmmodulo.qrserial_produto.edit;
        frmmodulo.qrserial_produto.fieldbyname('situacao').asinteger := 3;
        frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := 'BAIXADO - '+frmmodulo.qrUsuario.FIELDBYNAME('USUARIO').ASSTRING;
        FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').ASDATETIME := DATE;
        frmmodulo.qrserial_produto.Post;
        FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT := FRMMODULO.qrproduto.FIELDBYNAME('ESTOQUE').ASFLOAT - 1;
        (****************************************)


                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 5;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  frmmodulo.qrUsuario.FIELDBYNAME('CODIGO').ASSTRING;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrProduto_mov.Post;



        (****************************************)
      end;
    end;
    2:
    begin
      showmessage('Este serial já foi vendido! Impossível BAIXAR/RETORNAR o mesmo!');
    end;
    3:
    begin
      If application.MessageBox('Tem certeza que deseja RETORNAR este serial para o Estoque?','Atenção',mb_yesno+mb_iconwarning) = idyes then
      begin
        frmmodulo.qrserial_produto.edit;
        frmmodulo.qrserial_produto.fieldbyname('situacao').asinteger := 1;
        frmmodulo.qrserial_produto.fieldbyname('cliente').asstring := '';
        FRMMODULO.qrserial_produto.FieldByName('DATAVENDA').ASstring := '';
        frmmodulo.qrserial_produto.Post;
        FRMMODULO.qrproduto.FieldByName('ESTOQUE').ASFLOAT := FRMMODULO.qrproduto.FIELDBYNAME('ESTOQUE').ASFLOAT + 1;
        (****************************************)
                qrProduto_mov.Open;
                qrproduto_mov.Insert;
                qrproduto_mov.fieldbyname('codigo').AsString := frmprincipal.codifica('000032');
                qrproduto_mov.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
                qrproduto_mov.fieldbyname('data').asdatetime := date;
                qrproduto_mov.fieldbyname('movimento').asinteger := 8;
                qrproduto_mov.fieldbyname('codvendedor').asstring :=  frmmodulo.qrUsuario.FIELDBYNAME('CODIGO').ASSTRING;
                qrproduto_mov.fieldbyname('qtde').asfloat := 1;
                qrproduto_mov.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrproduto_mov.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
                qrProduto_mov.Post;
        (****************************************)
      end;
    end;

    end; //case

//    frmmodulo.qrserial_produto.Refresh;


  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto2.Receitas1Click(Sender: TObject);
begin
  frmreceita := tfrmreceita.create(self);
  frmreceita.showmodal;
end;

procedure Tfrmproduto2.Regies1Click(Sender: TObject);
begin
LMDButton1.Click;
end;

procedure Tfrmproduto2.blocreceitaClick(Sender: TObject);
begin
  frmloc_receita := tfrmloc_receita.create(self);
  frmloc_receita.showmodal;
  frmmodulo.qrPRODUTO.fieldbyname('codreceita').asstring := frmmodulo.qrreceita.fieldbyname('codigo').asstring;
  wwdbgrid3.setfocus;
end;

procedure Tfrmproduto2.ereceitaExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  IF (frmmodulo.qrPRODUTO.state = dsinsert) or (frmmodulo.qrPRODUTO.State = dsedit) then
  begin
    frmmodulo.qrPRODUTO.fieldbyname('codreceita').asstring := frmprincipal.zerarcodigo(ereceita.text,6);
    if ereceita.text <> '000000' then
      if not FrmPrincipal.Locregistro(frmmodulo.qrreceita,ereceita.text,'codigo') then blocreceitaclick(frmproduto) else wwdbgrid3.setfocus
    else
      blocreceita.SetFocus;
  end;
end;

procedure Tfrmproduto2.qrcomposicao_produtoBeforePost(DataSet: TDataSet);
begin
  qrcomposicao_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000027');
  qrcomposicao_produto.fieldbyname('produto').asstring := FRMMODULO.qrproduto.FIELDBYNAME('CODIGO').ASSTRING;


end;

procedure Tfrmproduto2.Button1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir COMPOSIÇÃO',4) then
  begin
    WHILE QRCOMPOSICAO_PRODUTO.RecordCount <> 0 DO
    qrCOMPOSICAO_PRODUTO.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto2.Button2Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir COMPOSIÇÃO',4) then
  begin
    qrCOMPOSICAO_PRODUTO.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmproduto2.DBEdit40Exit(Sender: TObject);
begin
  tdbedit(sender).Color := $00F9F7E6;
end;

procedure Tfrmproduto2.DBEdit42Exit(Sender: TObject);
begin
tedit(sender).Color := clbtnface;
end;

procedure Tfrmproduto2.BitBtn6Click(Sender: TObject);
begin
  frmmodulo.qrinfnutricional_produto.insert;
  frmmodulo.qrinfnutricional_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000028');
  frmmodulo.qrinfnutricional_produto.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;

  ptampainfnutricional.Visible := false;
  dbedit39.setfocus;
end;

procedure Tfrmproduto2.DBEdit59KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto2.SpeedButton1Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    image2.Picture.LoadFromFile(OpenPictureDialog1.Filename);
    FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := OpenPictureDialog1.FileName;
  end;
end;

procedure Tfrmproduto2.SpeedButton2Click(Sender: TObject);
begin
  frmwebcam := tfrmwebcam.create(self);
  frmwebcam.showmodal;
end;

procedure Tfrmproduto2.SpeedButton3Click(Sender: TObject);
begin
  image2.Picture := nil;
  FRMMODULO.QRPRODUTO.FIELDBYNAME('FOTO').ASSTRING := '';
end;

procedure Tfrmproduto2.wwDBGrid4DrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
begin
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
end;

procedure Tfrmproduto2.Fornecedor1Click(Sender: TObject);
begin
  frmfornecedor := tfrmfornecedor.create(self);
  frmfornecedor.showmodal;
end;

procedure Tfrmproduto2.MarcaFabricanteLaboratrio1Click(Sender: TObject);
begin
  frmmarca := tfrmmarca.create(self);
  frmmarca.showmodal;
end;

procedure Tfrmproduto2.GrupoSubgrupo1Click(Sender: TObject);
begin
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
end;

procedure Tfrmproduto2.Alquotas1Click(Sender: TObject);
begin
  frmaliquota := tfrmaliquota.create(self);
  frmaliquota.showmodal;
end;

procedure Tfrmproduto2.NaturezadeOperaoCFOP1Click(Sender: TObject);
begin
  frmcfop := tfrmcfop.create(self);
  frmcfop.showmodal;
end;

procedure Tfrmproduto2.qrproduto_movCalcFields(DataSet: TDataSet);
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
  END;

end;

procedure Tfrmproduto2.BitBtn14Click(Sender: TObject);
begin
//VERIFICAR
end;

procedure Tfrmproduto2.BitBtn13Click(Sender: TObject);
begin
  // VERIFICAR
  {
   CRIAR INFORMACOES DE TODOS OS TIPOS DE MOVIMENTACOES


  }

end;

procedure Tfrmproduto2.balteraClick(Sender: TObject);
begin
 if frmprincipal.autentica('Alterar Estoque',4) then
 begin
   gestoque.enabled := true;
   dbedit10.setfocus;
 end;
end;

procedure Tfrmproduto2.Exportarparaarquivo1Click(Sender: TObject);
begin
  frmproduto_exportar := tfrmproduto_exportar.create(self);
  frmproduto_exportar.showmodal;
end;

procedure Tfrmproduto2.ImportardeArquivo1Click(Sender: TObject);
begin
  if frmPrincipal.autentica('Atualizar Produtos',4) then
  begin
    frmproduto_importar := tfrmproduto_importar.create(self);
    frmproduto_importar.showmodal;
  end;
end;

procedure Tfrmproduto2.otalizarestoque1Click(Sender: TObject);
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

procedure Tfrmproduto2.BitBtn5Click(Sender: TObject);
begin
  Frmlista_produto2 := tfrmlista_produto2.create(self);
  frmlista_produto2.ShowModal;
end;

procedure Tfrmproduto2.ComboBox1Change(Sender: TObject);
begin
  if combobox1.Text = '-- TODAS AS MOVIMENTAÇÕES --' then
  begin
       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA,CODIGO');
       QRPRODUTO_MOV.Open;
  end
  else
  begin
       qrproduto_mov.close;
       QRPRODUTO_MOV.sql.clear;
       QRPRODUTO_MOV.sql.add('select * from c000032 where movimento = '+copy(combobox1.Text,1,1)+' and codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by DATA,CODIGO');
       QRPRODUTO_MOV.Open;
  end;
end;

end.



////  ecpf.text := FormatMaskText('99.999.999/9999-99;0;_',ecpf.text);
