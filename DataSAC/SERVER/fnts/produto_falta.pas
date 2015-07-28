unit produto_falta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls, Mask, rxtooledit, Collection,
  TFlatPanelUnit, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, Wwdbigrd, Wwdbgrid, Menus, frxDesgn, frxClass, frxDBSet,
  AdvGlowButton, MemDS, VirtualTable;

type
  Tfrmproduto_falta = class(TForm)
    FlatPanel1: TFlatPanel;
    GroupBox1: TGroupBox;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label1: TLabel;
    Label2: TLabel;
    Bevel1: TBevel;
    GroupBox2: TGroupBox;
    combo_subgrupo: TComboBox;
    wwDBGrid1: TwwDBGrid;
    qrdata: TZQuery;
    dsproduto: TDataSource;
    GroupBox3: TGroupBox;
    combo_estoque: TComboBox;
    PopupMenu1: TPopupMenu;
    Excluir1: TMenuItem;
    Relatrio1: TMenuItem;
    Fechar1: TMenuItem;
    qrdataCODIGO: TStringField;
    qrdataPRODUTO: TStringField;
    qrdataPRECOVENDA: TFloatField;
    qrdataPRECOCUSTO: TFloatField;
    qrdataQTDE: TFloatField;
    fsproduto: TfrxDBDataset;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    N1: TMenuItem;
    EditarRelatrio1: TMenuItem;
    qrdataCODMARCA: TStringField;
    qrdatamarca: TStringField;
    qrdataPESO: TFloatField;
    Bevel2: TBevel;
    bfiltrar: TAdvGlowButton;
    Bevel3: TBevel;
    bitbtn2: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bitbtn3: TAdvGlowButton;
    qrdataESTOQUE_ATUAL: TFloatField;
    qrproduto: TVirtualTable;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutomarca: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoPESO: TFloatField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoQTDE: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFILTRARClick(Sender: TObject);
    procedure combo_subgrupoChange(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure combo_subgrupoKeyPress(Sender: TObject; var Key: Char);
    procedure combo_estoqueKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure EditarRelatrio1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_falta: Tfrmproduto_falta;

implementation

uses modulo, xloc_subgrupo;

{$R *.dfm}

procedure Tfrmproduto_falta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  FRMMODULO.Conexao.Rollback;
  action := cafree;
end;

procedure Tfrmproduto_falta.BFILTRARClick(Sender: TObject);
begin
  QRDATA.CLOSE;
  QRDATA.SQL.CLEAR;
  QRDATA.SQL.ADD('select');
  QRDATA.SQL.ADD('pro.codigo,');
  QRDATA.SQL.ADD('pro.produto,');
  QRDATA.SQL.ADD('pro.precovenda,');
  QRDATA.SQL.ADD('pro.precocusto,');
  QRDATA.SQL.ADD('est.estoque_atual,');
  QRDATA.sql.add('pro.codmarca,');
  QRDATA.sql.add('pro.peso,');
  QRDATA.SQL.ADD('sum(mov.qtde) qtde');
  QRDATA.SQL.ADD('from');
  QRDATA.SQL.ADD('c000025 pro,');
  QRDATA.sql.add('c000100 est');
  QRDATA.SQL.ADD('JOIN');
  QRDATA.SQL.ADD('c000032 mov on pro.codigo = mov.codproduto');
  QRDATA.SQL.ADD('and mov.data >= :datai and mov.data <= :dataf');
  if combo_subgrupo.ItemIndex > 0 then
  QRDATA.sql.add('and pro.codsubgrupo = '''+copy(combo_subgrupo.text,1,6)+'''');
  if combo_estoque.ItemIndex = 1 then
  QRDATA.sql.add('and est.estoque_atual < 1');
  if combo_estoque.ItemIndex = 2 then
  QRDATA.sql.add('and est.ESTOQUE_atual <= pro.ESTOQUEMINIMO');
  QRDATA.sql.add('and pro.codigo = est.codproduto');
  QRDATA.SQL.ADD('group by');
  QRDATA.SQL.ADD('pro.produto,');
  QRDATA.SQL.ADD('pro.codigo,');
  QRDATA.SQL.ADD('pro.precovenda,');
  QRDATA.SQL.ADD('pro.precocusto,');
  QRDATA.SQL.ADD('est.estoque_atual,');
  QRDATA.sql.add('pro.codmarca,');
  QRDATA.sql.add('pro.peso');
  QRDATA.SQL.ADD('order by');
  QRDATA.SQL.ADD('pro.produto');
  QRDATA.Params.ParamByName('datai').asdatetime := DateEdit1.Date;
  QRDATA.Params.ParamByName('dataf').asdatetime := DateEdit2.Date;
  QRDATA.open;
  qrproduto.open;
  QRPRODUTO.REFRESH;

  QRDATA.FIRST;
  WHILE NOT QRDATA.EOF DO
  BEGIN
    QRPRODUTO.INSERT;
    QRPRODUTO.FIELDBYNAME('CODIGO').ASSTRING       := QRDATA.FIELDBYNAME('CODIGO').asstring;
    QRPRODUTO.FIELDBYNAME('produto').ASSTRING      := QRDATA.FIELDBYNAME('produto').asstring;
    QRPRODUTO.FIELDBYNAME('precovenda').ASfloat    := QRDATA.FIELDBYNAME('precovenda').asfloat;
    QRPRODUTO.FIELDBYNAME('precocusto').ASfloat    := QRDATA.FIELDBYNAME('precocusto').asfloat;
    QRPRODUTO.FIELDBYNAME('estoque_atual').ASfloat := QRDATA.FIELDBYNAME('estoque_atual').asfloat;
    QRPRODUTO.FIELDBYNAME('codmarca').ASSTRING     := QRDATA.FIELDBYNAME('codmarca').asstring;
    QRPRODUTO.FIELDBYNAME('qtde').ASfloat          := QRDATA.FIELDBYNAME('qtde').asfloat;
    qrproduto.post;
    QRDATA.NEXT;
  END;

  qrproduto.IndexFieldNames := 'produto';


  wwdbgrid1.setfocus;


end;

procedure Tfrmproduto_falta.combo_subgrupoChange(Sender: TObject);
begin
  IF combo_subgrupo.Text = 'SELECIONAR' THEN
  BEGIN
    frmXloc_SUBGRUPO := tfrmXloc_SUBGRUPO.create(self);
    frmXloc_SUBGRUPO.showmodal;

    if resultado_pesquisa1 <> '' then
    begin
      combo_SUBGRUPO.Items.Add(RESULTADO_PESQUISA1+' '+RESULTADO_PESQUISA2);
      combo_SUBGRUPO.ItemIndex := combo_SUBGRUPO.Items.Count - 1;
    end
    else
      combo_subgrupo.ItemIndex := 0;
  END;
end;

procedure Tfrmproduto_falta.FormShow(Sender: TObject);
begin
  qrproduto.close;

  DATEEDIT1.DATE := DATE;
  DATEEDIT2.DATE := DATE;
end;

procedure Tfrmproduto_falta.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0);
end;

procedure Tfrmproduto_falta.combo_subgrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN COMBO_ESTOQUE.SETFOCUS;
end;

procedure Tfrmproduto_falta.combo_estoqueKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN BFILTRAR.SETFOCUS;
end;

procedure Tfrmproduto_falta.BitBtn2Click(Sender: TObject);
begin
  QRPRODUTO.DELETE;
end;

procedure Tfrmproduto_falta.BitBtn3Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_falta.BitBtn1Click(Sender: TObject);
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := 'RELATÓRIO DE FALTAS';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := 'PERÍODO: '+DATEEDIT1.TEXT+' A '+DATEEDIT2.TEXT;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'SEÇÃO: '+COMBO_SUBGRUPO.TEXT;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := 'ESTOQUE: '+COMBO_ESTOQUE.TEXT;


    fXproduto.LoadFromFile('\DATASAC\server\rel\f000084.fr3');
    fxproduto.ShowReport;
end;

procedure Tfrmproduto_falta.EditarRelatrio1Click(Sender: TObject);
begin
    fXproduto.LoadFromFile('\DATASAC\server\rel\f000084.fr3');
    fxproduto.DesignReport;
end;

end.
