unit contasreceber_produtos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Grids, Wwdbigrd,
  Wwdbgrid, DB, Buttons, Menus;

type
  Tfrmcontasreceber_produto = class(TForm)
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    Label1: TLabel;
    lvenda: TLabel;
    Label3: TLabel;
    lcliente: TLabel;
    Label2: TLabel;
    ldata: TLabel;
    dsproduto_mov: TDataSource;
    ViewSplit2: TViewSplit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    PopupMenu1: TPopupMenu;
    ReimprimirNota1: TMenuItem;
    Fechar1: TMenuItem;
    pproduto: THeaderView;
    wwDBGrid1: TwwDBGrid;
    pservico: THeaderView;
    wwDBGrid2: TwwDBGrid;
    dsservico_mov: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmcontasreceber_produto: Tfrmcontasreceber_produto;

implementation

uses contasreceber, modulo;

{$R *.dfm}

procedure Tfrmcontasreceber_produto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmcontasreceber.qrproduto_mov.close;
  action := cafree;
end;

procedure Tfrmcontasreceber_produto.BitBtn2Click(Sender: TObject);
begin
  // verificar
end;

procedure Tfrmcontasreceber_produto.BitBtn1Click(Sender: TObject);
begin
  close;
end;

procedure Tfrmcontasreceber_produto.FormShow(Sender: TObject);
begin
  frmmodulo.qrconfig.Open;
  if frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 then
  begin
    pservico.Visible := false;
    pproduto.Height := 320;
  end;
end;

end.
