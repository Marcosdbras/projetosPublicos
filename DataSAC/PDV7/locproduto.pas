unit locproduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, Grids, Wwdbigrd, Wwdbgrid,
  StdCtrls, TFlatEditUnit, DB, Menus, jpeg, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, DBCtrls;

type
  Tfrmlocproduto = class(TForm)
    Image1: TImage;
    LOC: TFlatEdit;
    lpesquisa: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    grid: TwwDBGrid;
    FlatPanel1: TFlatPanel;
    Image3: TImage;
    dsproduto: TDataSource;
    FlatPanel2: TFlatPanel;
    Image2: TImage;
    FlatPanel3: TFlatPanel;
    Image4: TImage;
    Label4: TLabel;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    qrproduto: TZQuery;
    FlatPanel4: TFlatPanel;
    Image5: TImage;
    FlatPanel5: TFlatPanel;
    Image6: TImage;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrmarca: TZQuery;
    qrfornecedor: TZQuery;
    qrprodutomarca: TStringField;
    qrprodutofornecedor: TStringField;
    FlatPanel6: TFlatPanel;
    Image7: TImage;
    Label1: TLabel;
    Label6: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBText1: TDBText;
    Label9: TLabel;
    DBText2: TDBText;
    qrprodutopreco_prazo: TFloatField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODPRODUTO: TStringField;
    qrprodutoCODFILIAL: TStringField;
    qrprodutoESTOQUE_INICIAL: TFloatField;
    qrprodutoENTRADAS: TFloatField;
    qrprodutoSAIDAS: TFloatField;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    qrprodutoULTIMA_ENTRADA: TDateTimeField;
    qrprodutoULTIMA_SAIDA: TDateTimeField;
    qrprodutoNOTA_FISCAL: TStringField;
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


    if (lpesquisa.Caption = 'F3 | PRODUTO:') OR (lpesquisa.Caption = 'F3 | CÓDIGO:') THEN
    BEGIN
      qrproduto.Close;
      qrproduto.sql.clear;
      if lpesquisa.Caption = 'F3 | PRODUTO:' THEN
        begin
          qrproduto.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codfornecedor, ');
          qrproduto.sql.Add('prod.codgrupo, prod.codsubgrupo,prod.codmarca,prod.localicazao,');
          qrproduto.sql.add('estq.* from c000025 prod, c000100 estq where prod.codiGo = estq.codproduto and upper(prod.PRODUTO) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by prod.produto');
        end;
      if lpesquisa.Caption = 'F3 | CÓDIGO:' THEN
        begin
          qrproduto.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codfornecedor, ');
          qrproduto.sql.Add('prod.codgrupo, prod.codsubgrupo,prod.codmarca,prod.localicazao,');
          qrproduto.sql.add('estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and upper(prod.CODIGO) like '''+LOC.text+'%'' order by prod.produto');
        end;
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
        begin
          qrproduto.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codfornecedor, ');
          qrproduto.sql.Add('prod.codgrupo, prod.codsubgrupo,prod.codmarca,prod.localicazao,');
          qrproduto.sql.Add('estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and prod.codigo is null');
        end
      ELSE
        begin
          qrproduto.sql.Add('select prod.codigo,prod.produto, prod.unidade, prod.precovenda,prod.codbarra, prod.codfornecedor, ');
          qrproduto.sql.Add('prod.codgrupo, prod.codsubgrupo,prod.codmarca,prod.localicazao,');
          qrproduto.sql.Add('estq.* from c000025 prod, c000100 estq where prod.codigo = estq.codproduto and upper(prod.PRODUTO) like '''+ANSIUPPERCASE(LOC.text)+'%'' order by prod.produto');
        end;        
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
  if lpesquisa.Caption = 'F3 | PRODUTO:' THEN BEGIN  lpesquisa.Caption := 'F3 | CÓDIGO:';EXIT;END;
  if lpesquisa.Caption = 'F3 | CÓDIGO:' THEN BEGIN lpesquisa.Caption := 'F3 | MARCA:';EXIT;END;
  if lpesquisa.Caption = 'F3 | MARCA:' THEN BEGIN lpesquisa.Caption := 'F3 | FORNECEDOR:';EXIT;END;
  if lpesquisa.Caption = 'F3 | FORNECEDOR:' THEN BEGIN  lpesquisa.Caption := 'F3 | PRODUTO:';EXIT;END;


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
