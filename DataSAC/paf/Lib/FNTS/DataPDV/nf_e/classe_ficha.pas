unit classe_ficha;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, StdCtrls, Mask, DBCtrls, PageView, ExtCtrls, Collection,
  Grids, Wwdbigrd, Wwdbgrid, Buttons;

type
  Tfrmclasse_ficha = class(TForm)
    Label1: TLabel;
    DBEdit1: TDBEdit;
    dsfiscal_classe: TDataSource;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    HeaderView1: THeaderView;
    Panel1: TPanel;
    ViewSplit1: TViewSplit;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    PageSheet2: TPageSheet;
    PageSheet3: TPageSheet;
    PageSheet4: TPageSheet;
    dsfiscal_classe_pis: TDataSource;
    dsfiscal_classe_cofins: TDataSource;
    dsfiscal_classe_csll: TDataSource;
    dsfiscal_classe_irrf: TDataSource;
    balterar: TBitBtn;
    bexcluir: TBitBtn;
    wwDBGrid1: TwwDBGrid;
    BitBtn1: TBitBtn;
    wwDBGrid2: TwwDBGrid;
    BitBtn2: TBitBtn;
    wwDBGrid3: TwwDBGrid;
    BitBtn3: TBitBtn;
    wwDBGrid4: TwwDBGrid;
    BitBtn4: TBitBtn;
    procedure bexcluirClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmclasse_ficha: Tfrmclasse_ficha;

implementation

uses classe, modulo;

{$R *.dfm}

procedure Tfrmclasse_ficha.bexcluirClick(Sender: TObject);
begin
  frmclasse.qrfiscal_classe.Cancel;
  close;
end;

procedure Tfrmclasse_ficha.balterarClick(Sender: TObject);
begin
  frmclasse.qrfiscal_classe.post;
  frmmodulo.conexao.commit;
  close;

end;

procedure Tfrmclasse_ficha.BitBtn1Click(Sender: TObject);
begin
  frmclasse.qrfiscal_classe_pis.Delete;
end;

procedure Tfrmclasse_ficha.BitBtn2Click(Sender: TObject);
begin
  frmclasse.qrfiscal_classe_cofins.Delete;
end;

procedure Tfrmclasse_ficha.BitBtn3Click(Sender: TObject);
begin
  frmclasse.qrfiscal_classe_csll.Delete;
end;

procedure Tfrmclasse_ficha.BitBtn4Click(Sender: TObject);
begin
  frmclasse.qrfiscal_classe_irrf.Delete;
end;

procedure Tfrmclasse_ficha.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

end.
