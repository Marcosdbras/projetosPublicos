unit ecf_reducao_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, AdvToolBar, AdvToolBarStylers,
  AdvPreviewMenu, AdvPreviewMenuStylers, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, DB, StdCtrls, Mask, ToolEdit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus;

type
  Tfrmecf_reducao_menu = class(TForm)
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    brelatorio: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList2: TImageList;
    tab_principal: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    grid: TwwDBGrid;
    dsecf: TDataSource;
    AdvToolBar1: TAdvToolBar;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    wwDBGrid1: TwwDBGrid;
    qrecf: TZQuery;
    dsreducao: TDataSource;
    DateEdit1: TDateEdit;
    Label2: TLabel;
    DateEdit2: TDateEdit;
    Bfiltrar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    altera1: TMenuItem;
    incluir1: TMenuItem;
    excluir1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    procedure DateEdit1DblClick(Sender: TObject);
    procedure DateEdit2DblClick(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure bincluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure brelatorioClick(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure retorna1Click(Sender: TObject);
    procedure altera1Click(Sender: TObject);
    procedure incluir1Click(Sender: TObject);
    procedure excluir1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmecf_reducao_menu: Tfrmecf_reducao_menu;

implementation

uses modulo, ECF_REDUCAO;

{$R *.dfm}

procedure Tfrmecf_reducao_menu.DateEdit1DblClick(Sender: TObject);
begin
  dateedit1.date := date;
end;

procedure Tfrmecf_reducao_menu.DateEdit2DblClick(Sender: TObject);
begin
  dateedit2.date := date;
end;

procedure Tfrmecf_reducao_menu.bfecharClick(Sender: TObject);
begin
  CLOSE;
end;

procedure Tfrmecf_reducao_menu.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Tem certeza que deseja excluir este registro?','Atenção',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    frmmodulo.qrsintegra_r60.Delete;
    frmmodulo.Conexao.Commit;
  end;
end;

procedure Tfrmecf_reducao_menu.gridRowChanged(Sender: TObject);
begin
  frmmodulo.qrsintegra_r60.close;
  frmmodulo.qrsintegra_r60.sql.clear;
  frmmodulo.qrsintegra_r60.sql.add('select * from sintegra_reg60 where nro_serie_eqp = '''+qrecf.fieldbyname('serie_equipamento').asstring+'''order by data_emissao');
  frmmodulo.qrsintegra_r60.Open;
end;

procedure Tfrmecf_reducao_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmecf_reducao_menu.FormShow(Sender: TObject);
begin
  qrecf.open;
end;

procedure Tfrmecf_reducao_menu.BfiltrarClick(Sender: TObject);
begin
  frmmodulo.qrsintegra_r60.close;
  frmmodulo.qrsintegra_r60.sql.clear;
  frmmodulo.qrsintegra_r60.sql.add('select * from sintegra_reg60 where nro_serie_eqp = '''+qrecf.fieldbyname('serie_equipamento').asstring+''' and data_emissao >= :datai and data_emissao <= :dataf order by data_emissao');
  frmmodulo.qrsintegra_r60.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qrsintegra_r60.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  frmmodulo.qrsintegra_r60.Open;
end;

procedure Tfrmecf_reducao_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then dateedit2.setfocus;
end;

procedure Tfrmecf_reducao_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;
end;

procedure Tfrmecf_reducao_menu.bincluirClick(Sender: TObject);
begin



     frmmodulo.QRSINTEGRA_R60.Insert;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('nro_serie_eqp').asstring := QRECF.fieldbyname('SERIE_EQUIPAMENTO').asstring;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('nro_ordem_eqp').asstring := QRECF.fieldbyname('serie_empresa').asstring;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('modelo_doc').asstring    := '2D';
     frmmodulo.QRSINTEGRA_R60.fieldbyname('movimento').asstring    := '1';

     frmmodulo.qrFilial.open;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('codigo_empresa').asstring    := frmmodulo.qrfilial.fieldbyname('codigo').asstring;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('cnpj').asstring    := frmmodulo.qrfilial.fieldbyname('cnpj').asstring;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('ie').asstring    := frmmodulo.qrfilial.fieldbyname('ie').asstring;
     frmmodulo.QRSINTEGRA_R60.fieldbyname('uf').asstring    := frmmodulo.qrfilial.fieldbyname('uf').asstring;

     frmecf_reducao := tfrmecf_reducao.create(self);
     frmecf_reducao.showmodal;
end;

procedure Tfrmecf_reducao_menu.balterarClick(Sender: TObject);
begin
     frmmodulo.qrsintegra_r60.Edit;
     frmecf_reducao := tfrmecf_reducao.create(self);
     frmecf_reducao.showmodal;
end;

procedure Tfrmecf_reducao_menu.brelatorioClick(Sender: TObject);
begin
  //frmlista_ecf_reducao := tfrmlista_ecf_reducao.create(self);
  //frmlista_ecf_reducao.showmodal;
end;

procedure Tfrmecf_reducao_menu.AdvGlowButton1Click(Sender: TObject);
begin
  //FRMECF_CUPOM := TFRMECF_CUPOM.CREATE(SELF);
  //FRMECF_CUPOM.SHOWMODAL;
end;

procedure Tfrmecf_reducao_menu.retorna1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmecf_reducao_menu.altera1Click(Sender: TObject);
begin
  balterarClick(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.incluir1Click(Sender: TObject);
begin
  bincluirClick(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.excluir1Click(Sender: TObject);
begin
  bexcluirClick(frmecf_reducao_menu);
end;

end.
