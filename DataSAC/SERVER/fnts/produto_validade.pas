unit produto_validade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, RzEdit, RzBtnEdt, ExtCtrls, AdvGlowButton,
  Grids, Wwdbigrd, Wwdbgrid, Menus, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, RzButton, RzRadChk, RzPanel, rxtooledit,
  PageView, frxClass, frxDBSet, frxDesgn;

type
  Tfrmproduto_validade = class(TForm)
    Panel1: TPanel;
    Panel3: TPanel;
    bfechar: TAdvGlowButton;
    bgravar: TAdvGlowButton;
    pop1: TPopupMenu;
    sair1: TMenuItem;
    qrvalidade: TZQuery;
    dsvalidade: TDataSource;
    qrvalidadeCODPRODUTO: TStringField;
    qrvalidadeLOTE_FABRICACAO: TStringField;
    qrvalidadeLOTE_VALIDADE: TDateTimeField;
    qrvalidadeproduto: TStringField;
    qrvalidadeDATA: TDateTimeField;
    pagina_principal: TPageView;
    PageSheet10: TPageSheet;
    Bevel7: TBevel;
    PageSheet11: TPageSheet;
    Bevel8: TBevel;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    di_entrada: TDateEdit;
    df_entrada: TDateEdit;
    bfiltro_entrada: TAdvGlowButton;
    combo_entrada: TComboBox;
    GroupBox13: TGroupBox;
    eentrada: TLabel;
    RzPanel1: TRzPanel;
    rtodos: TRzRadioButton;
    rvencidos: TRzRadioButton;
    rvencer: TRzRadioButton;
    grid1: TwwDBGrid;
    qrvalidadedias: TIntegerField;
    qrproduto: TZQuery;
    dsproduto: TDataSource;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoLOTE_FABRICACAO: TStringField;
    qrprodutoLOTE_VALIDADE: TDateTimeField;
    grid: TwwDBGrid;
    bfiltro: TAdvGlowButton;
    Imprimir1: TMenuItem;
    fxproduto: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsvalidade: TfrxDBDataset;
    fsproduto: TfrxDBDataset;
    bitbtn1: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bfecharClick(Sender: TObject);
    procedure sair1Click(Sender: TObject);
    procedure bfiltroClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure rtodosClick(Sender: TObject);
    procedure pagina_principalChange(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bitbtn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_validade: Tfrmproduto_validade;

implementation

uses modulo;

{$R *.dfm}

procedure Tfrmproduto_validade.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure Tfrmproduto_validade.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_validade.sair1Click(Sender: TObject);
begin
  bfecharClick(frmproduto_validade);
end;

procedure Tfrmproduto_validade.bfiltroClick(Sender: TObject);
begin

  qrvalidade.close;
  qrvalidade.sql.clear;
  qrvalidade.sql.add('select codproduto,data,lote_fabricacao,lote_validade from c000088');
  if rtodos.Checked = False then
    begin
      if rvencidos.Checked = True then qrvalidade.sql.add('where lote_validade <= :datai');
      if rvencer.Checked   = True then qrvalidade.sql.add('where lote_validade >  :datai');
      qrvalidade.Params.ParamByName('datai').asdatetime := date;
    end
  else
    begin
      qrvalidade.sql.add('where lote_validade is not null');
    end;
  qrvalidade.sql.add('order by lote_validade');
  qrvalidade.open;
  Grid1.SetFocus;

end;

procedure Tfrmproduto_validade.FormShow(Sender: TObject);
begin

  qrproduto.close;
  qrproduto.sql.clear;
  qrproduto.sql.add('select codigo,produto,data_ultimacompra,lote_fabricacao,lote_validade from c000025');
  qrproduto.sql.add('where lote_validade is not null');
  qrproduto.sql.add('order by lote_validade');
  qrproduto.open;
  Grid.SetFocus;
   
end;

procedure Tfrmproduto_validade.rtodosClick(Sender: TObject);
begin
  bfiltroClick(frmproduto_validade);
end;

procedure Tfrmproduto_validade.pagina_principalChange(Sender: TObject);
begin
  if pagina_principal.ActivePageIndex = 1 then
    bfiltroClick(frmproduto_validade);
end;

procedure Tfrmproduto_validade.Imprimir1Click(Sender: TObject);
begin
//
end;

procedure Tfrmproduto_validade.bgravarClick(Sender: TObject);
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

  frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE PRODUTOS / DATA DE VALIDADE';

  if pagina_principal.ActivePageIndex = 0 then
    begin
      fXproduto.LoadFromFile('\DATASAC\server\rel\f000205.fr3');
      fxproduto.ShowReport;
    end;
  if pagina_principal.ActivePageIndex = 1 then
    begin
      fXproduto.LoadFromFile('\DATASAC\server\rel\f000206.fr3');
      fxproduto.ShowReport;
    end;

end;

procedure Tfrmproduto_validade.bitbtn1Click(Sender: TObject);
begin
  if pagina_principal.ActivePageIndex = 0 then
    begin
      fXproduto.LoadFromFile('\DATASAC\server\rel\f000205.fr3');
      fxproduto.designreport;
    end;
  if pagina_principal.ActivePageIndex = 1 then
    begin
      fXproduto.LoadFromFile('\DATASAC\server\rel\f000206.fr3');
      fxproduto.designreport;
    end;
end;

end.
