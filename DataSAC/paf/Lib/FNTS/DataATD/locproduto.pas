unit locproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, TFlatEditUnit, DB, Menus, jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls;

type
  Tfrmlocproduto = class(TForm)
    dsproduto: TDataSource;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrmarca: TZQuery;
    qrfornecedor: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutopreco_prazo: TFloatField;
    Panel1: TPanel;
    lpesquisa: TLabel;
    loc: TEdit;
    grid: TwwDBGrid;
    Panel2: TPanel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    Bevel1: TBevel;
    Bevel2: TBevel;
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure gridDblClick(Sender: TObject);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlocproduto: Tfrmlocproduto;

implementation

uses modulo, principal, Math, venda_pdv;

{$R *.dfm}

procedure Tfrmlocproduto.LOCKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
   IF LOC.TEXT <> '' THEN
   BEGIN


    if (lpesquisa.Caption = 'F3 | Produto:') OR (lpesquisa.Caption = 'F3 | Código:') THEN
    BEGIN
      qrproduto.Close;
      qrproduto.sql.clear;
      if lpesquisa.Caption = 'F3 | Produto:' THEN  qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codiGo = estq.codproduto and upper(prod.PRODUTO) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by prod.produto');
      if lpesquisa.Caption = 'F3 | Código:' THEN   qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and upper(prod.CODIGO) like '''+LOC.text+'%'' order by prod.produto');
      qrproduto.open;
      if qrproduto.RecordCount > 0 then
      begin
        if qrproduto.RecordCount = 1 then
        begin
          resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
          resultado_pesquisa2 := qrproduto.fieldbyname('produto').asstring;
        end
        else
        begin
          grid.setfocus;
        end;
      end
      else
      begin
        frmprincipal.msg('LOCE','Registro não encontrado!',false,false,true,'');
        LOC.SelectAll;
        LOC.SetFocus;
      end;
    END
    ELSE
    BEGIN


    END;
   END;
  end;
  if key = #27 then close;
end;

procedure Tfrmlocproduto.FormShow(Sender: TObject);
begin
    if ultima_pesquisa = '' then
    begin
      qrproduto.Close;
      qrproduto.sql.clear;
      IF LOC.Text = '' THEN
      qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null')
      ELSE
      qrproduto.sql.add('select prod.*, estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and upper(prod.PRODUTO) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by prod.produto');
      qrproduto.open;
      IF LOC.Text = '' THEN
        LOC.setfocus
      ELSE
        GRID.SETFOCUS;
    end;
end;

procedure Tfrmlocproduto.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    if qrproduto.RecordCount > 0 then
    begin
      resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := qrproduto.fieldbyname('produto').asstring;
      close;
    end;
  end;
  if key = #27 then close;
end;

procedure Tfrmlocproduto.ipodePesquisa1Click(Sender: TObject);
begin
  if lpesquisa.Caption = 'F3 | Produto:' THEN BEGIN  lpesquisa.Caption := 'F3 | Código:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Código:' THEN BEGIN lpesquisa.Caption := 'F3 | Marca:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Marca:' THEN BEGIN lpesquisa.Caption := 'F3 | Fornecedor:';EXIT;END;
  if lpesquisa.Caption = 'F3 | Fornecedor:' THEN BEGIN  lpesquisa.Caption := 'F3 | Produto:';EXIT;END;


end;

procedure Tfrmlocproduto.gridDblClick(Sender: TObject);
begin
      resultado_pesquisa1 := qrproduto.fieldbyname('codigo').asstring;
      resultado_pesquisa2 := qrproduto.fieldbyname('produto').asstring;
      close;
end;

procedure Tfrmlocproduto.qrprodutoCalcFields(DataSet: TDataSet);
begin
  If  aumento_prazo <> 0 then
  begin
     qrproduto.FieldByName('preco_prazo').asfloat :=
     qrproduto.FieldByName('precovenda').asfloat + (qrproduto.FieldByName('precovenda').asfloat * (aumento_prazo/100));
  end
  else
    qrproduto.FieldByName('preco_prazo').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
end;

end.
