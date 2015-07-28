unit ecf_reducao_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, Wwdbigrd, Wwdbgrid, AdvToolBar, AdvToolBarStylers,
  AdvPreviewMenu, AdvPreviewMenuStylers, ImgList, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, DB, StdCtrls, Mask, rxtooledit,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, ExtCtrls, RzEdit;

type
  Tfrmecf_reducao_menu = class(TForm)
    ImageList1: TImageList;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    ImageList2: TImageList;
    dsecf: TDataSource;
    qrecf: TZQuery;
    dsreducao: TDataSource;
    PopupMenu1: TPopupMenu;
    retorna1: TMenuItem;
    incluir1: TMenuItem;
    alterar1: TMenuItem;
    excluir1: TMenuItem;
    relatorio1: TMenuItem;
    cupomfiscal1: TMenuItem;
    Panel2: TPanel;
    Bevel1: TBevel;
    grid: TwwDBGrid;
    Panel3: TPanel;
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    brelatorio: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    Bevel3: TBevel;
    Panel4: TPanel;
    Label2: TLabel;
    Bevel2: TBevel;
    Label1: TLabel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    bfiltrar: TAdvGlowButton;
    Panel5: TPanel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Label3: TLabel;
    rtotal: TRzNumericEdit;
    btotal: TButton;
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
    procedure incluir1Click(Sender: TObject);
    procedure alterar1Click(Sender: TObject);
    procedure excluir1Click(Sender: TObject);
    procedure relatorio1Click(Sender: TObject);
    procedure cupomfiscal1Click(Sender: TObject);
    procedure btotalClick(Sender: TObject);
  private
    { Private declarations }
  public
    vopcao : integer;
    { Public declarations }
  end;

var
  frmecf_reducao_menu: Tfrmecf_reducao_menu;
implementation

uses modulo, ECF_REDUCAO, lista_ecf_reducao, ecf_cupom, principal;

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
    BfiltrarClick(frmecf_reducao_menu);
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
 dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);

 BfiltrarClick(frmecf_reducao_menu);


end;

procedure Tfrmecf_reducao_menu.BfiltrarClick(Sender: TObject);
begin
  frmmodulo.qrsintegra_r60.close;
  frmmodulo.qrsintegra_r60.sql.clear;
  frmmodulo.qrsintegra_r60.sql.add('select * from sintegra_reg60 where nro_serie_eqp = '''+qrecf.fieldbyname('serie_equipamento').asstring+''' and data_emissao >= :datai and data_emissao <= :dataf order by data_emissao');
  frmmodulo.qrsintegra_r60.Params.ParamByName('datai').asdatetime := dateedit1.date;
  frmmodulo.qrsintegra_r60.Params.ParamByName('dataf').asdatetime := dateedit2.date;
  frmmodulo.qrsintegra_r60.Open;

  btotalClick(frmecf_reducao_menu);
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

  vopcao := 1;

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
     BfiltrarClick(frmecf_reducao_menu);

end;

procedure Tfrmecf_reducao_menu.balterarClick(Sender: TObject);
begin

  vopcao := 2;

     frmmodulo.qrsintegra_r60.Edit;
     frmecf_reducao := tfrmecf_reducao.create(self);
     frmecf_reducao.showmodal;

     BfiltrarClick(frmecf_reducao_menu);     
end;

procedure Tfrmecf_reducao_menu.brelatorioClick(Sender: TObject);
begin
  frmlista_ecf_reducao := tfrmlista_ecf_reducao.create(self);
  frmlista_ecf_reducao.showmodal;
end;

procedure Tfrmecf_reducao_menu.AdvGlowButton1Click(Sender: TObject);
begin
  FRMECF_CUPOM := TFRMECF_CUPOM.CREATE(SELF);
  FRMECF_CUPOM.SHOWMODAL;
end;

procedure Tfrmecf_reducao_menu.retorna1Click(Sender: TObject);
begin
  Close;
end;

procedure Tfrmecf_reducao_menu.incluir1Click(Sender: TObject);
begin
  bincluirClick(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.alterar1Click(Sender: TObject);
begin
  balterarClick(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.excluir1Click(Sender: TObject);
begin
  bexcluirClick(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.relatorio1Click(Sender: TObject);
begin
  brelatorioClick(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.cupomfiscal1Click(Sender: TObject);
begin
  AdvGlowButton1Click(frmecf_reducao_menu);
end;

procedure Tfrmecf_reducao_menu.btotalClick(Sender: TObject);
begin
  rtotal.value := 0;
  frmmodulo.qrsintegra_r60.first;
  while not frmmodulo.qrsintegra_r60.eof do
  begin
     rtotal.value := rtotal.value + frmmodulo.qrsintegra_r60.fieldbyname('valor_venda_liquida').asfloat;
    frmmodulo.qrsintegra_r60.next;
  end;
end;

end.
