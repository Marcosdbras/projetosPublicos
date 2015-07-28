unit loc_produto_ligth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, ExtCtrls, Collection, Grids, Wwdbigrd,
  Wwdbgrid, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  AdvGlowButton;

type
  Tfrmloc_produto_ligth = class(TForm)
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoCODBARRA: TStringField;
    dsproduto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    Bevel1: TBevel;
    bitbtn1: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    procedure bfecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure wwDBGrid1KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto_ligth: Tfrmloc_produto_ligth;

implementation

uses produto_ligth;

{$R *.dfm}

procedure Tfrmloc_produto_ligth.bfecharClick(Sender: TObject);
begin
  codigo := '';
  close;
end;

procedure Tfrmloc_produto_ligth.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrproduto.close;
  action := cafree;
end;

procedure Tfrmloc_produto_ligth.BitBtn1Click(Sender: TObject);
begin
  codigo := qrproduto.fieldbyname('codigo').asstring;
  close;
end;

procedure Tfrmloc_produto_ligth.wwDBGrid1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then BitBtn1Click(frmloc_produto_ligth);
end;

end.
