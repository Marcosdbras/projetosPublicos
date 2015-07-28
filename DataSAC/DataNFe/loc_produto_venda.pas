unit loc_produto_venda;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, Collection, ExtCtrls, DB, StdCtrls, Wwkeycb,
  Buttons, Menus, Wwdbigrd, Wwdbgrid, ZAbstractRODataset, ZAbstractDataset,
  ZDataset;

type
  Tfrmloc_produto_venda = class(TForm)
    dsproduto: TDataSource;
    ViewSplit1: TViewSplit;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    wwDBGrid1: TwwDBGrid;
    qrproduto: TZQuery;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutomarca: TStringField;
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
    loc: TEdit;
    qrprodutoCODALIQUOTA: TStringField;
    procedure locKeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure locEnter(Sender: TObject);
    procedure locExit(Sender: TObject);
    procedure locKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmloc_produto_venda: Tfrmloc_produto_venda;

implementation

uses modulo, produto, venda_item_2;

{$R *.dfm}

procedure Tfrmloc_produto_venda.locKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then
  begin
    qrproduto.close;
    qrproduto.SQL.clear;
    qrproduto.SQL.add('select * from c000025 where upper(produto) like ''%'+loc.text+'%'' order by produto');
    qrproduto.open;
    wwdbgrid1.setfocus;
  end;
  if (key = #27) then
  begin
   produto_loc := '';
   close;
  end;

end;

procedure Tfrmloc_produto_venda.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13)  then
  begin
   produto_loc := qrproduto.fieldbyname('codigo').asstring;
   produto_loc_NOME := qrproduto.fieldbyname('PRODUTO').asstring;

   close;
  end;
  if (key = #27) then loc.SetFocus;
end;

procedure Tfrmloc_produto_venda.DBGrid1DblClick(Sender: TObject);
begin
   produto_loc := qrproduto.fieldbyname('codigo').asstring;
   produto_loc_NOME := qrproduto.fieldbyname('PRODUTO').asstring;
  CLOSE;
end;

procedure Tfrmloc_produto_venda.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
ACTION := CAFREE;
end;

procedure Tfrmloc_produto_venda.locEnter(Sender: TObject);
begin
  tedit(sender).Color := clyellow;
end;

procedure Tfrmloc_produto_venda.locExit(Sender: TObject);
begin
  tedit(sender).color := clwindow;
end;

procedure Tfrmloc_produto_venda.locKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = vk_down then wwdbgrid1.setfocus;
end;

procedure Tfrmloc_produto_venda.FormShow(Sender: TObject);
begin
    qrproduto.close;
    qrproduto.SQL.clear;
    qrproduto.SQL.add('select * from c000025 where upper(produto) like ''%'+loc.text+'%'' order by produto');
    qrproduto.open;
end;

end.
