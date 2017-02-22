unit venda_farma_produto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, StdCtrls, Collection, ExtCtrls,
  TFlatPanelUnit, DBCtrls, ZAbstractRODataset, ZAbstractDataset, ZDataset;

type
  Tfrmvenda_farma_produto = class(TForm)
    dsproduto: TDataSource;
    wwDBGrid2: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    lestoque: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    Label6: TLabel;
    DBText1: TDBText;
    Label7: TLabel;
    DBText2: TDBText;
    Label8: TLabel;
    DBText3: TDBText;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    qrestoque: TZQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid2DblClick(Sender: TObject);
    procedure wwDBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure wwDBGrid2RowChanged(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmvenda_farma_produto: Tfrmvenda_farma_produto;

implementation

uses venda_farma, modulo_nfe;

{$R *.dfm}

procedure Tfrmvenda_farma_produto.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 action := cafree;
end;

procedure Tfrmvenda_farma_produto.wwDBGrid2DblClick(Sender: TObject);
begin
  IF frmvenda_farma.qrproduto.RecordCount > 0 then
  begin

          IF NOT ESTOQUE_NEGATIVO THEN
          BEGIN
            IF qrestoque.fieldbyname('estoque_atual').asfloat < 0.01 THEN
            BEGIN
              APPLICATION.MESSAGEBOX('Este produto não possue ESTOQUE!','Atenção',mb_ok+MB_ICONWARNING);
              exit;
            END;
          END;

    resultado_pesquisa1 := frmvenda_farma.qrproduto.fieldbyname('codigo').asstring;
    close;
  end;
end;

procedure Tfrmvenda_farma_produto.wwDBGrid2KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then close;
  if key = #13 then
  begin
    wwDBGrid2DblClick(frmvenda_farma_produto);
  end;
end;

procedure Tfrmvenda_farma_produto.wwDBGrid2RowChanged(Sender: TObject);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+frmvenda_farma.qrproduto.fieldbyname('codigo').asstring+'''');
  qrestoque.open;
  if qrestoque.fieldbyname('estoque_atual').asfloat > 0 then lestoque.Font.Color := clblue else lestoque.Font.Color := clred;
  lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);
end;

procedure Tfrmvenda_farma_produto.FormShow(Sender: TObject);
begin
  qrestoque.close;
  qrestoque.sql.clear;
  qrestoque.sql.add('select * from c000100 where codproduto = '''+frmvenda_farma.qrproduto.fieldbyname('codigo').asstring+'''');
  qrestoque.open;
  if qrestoque.fieldbyname('estoque_atual').asfloat > 0 then lestoque.Font.Color := clblue else lestoque.Font.Color := clred;
  lestoque.caption := formatfloat('###,###,##0.000',qrestoque.fieldbyname('estoque_atual').asfloat);
end;

end.
