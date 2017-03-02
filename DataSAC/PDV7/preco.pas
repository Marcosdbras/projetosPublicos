unit preco;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Grids, Wwdbigrd, Wwdbgrid, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, StdCtrls, TFlatEditUnit, ExtCtrls,
  TFlatPanelUnit, Menus, jpeg, DBCtrls;

type
  Tfrmpreco = class(TForm)
    grid: TwwDBGrid;
    DSPRODUTO: TDataSource;
    qrproduto: TZQuery;
    lpesquisa: TLabel;
    LOC: TFlatEdit;
    FlatPanel1: TFlatPanel;
    Image3: TImage;
    FlatPanel3: TFlatPanel;
    Image4: TImage;
    FlatPanel4: TFlatPanel;
    Image5: TImage;
    PopupMenu1: TPopupMenu;
    ipodePesquisa1: TMenuItem;
    Label36: TLabel;
    Image1: TImage;
    FlatPanel2: TFlatPanel;
    Image2: TImage;
    Label25: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    qrprodutoCODIGO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoDATA_CADASTRO: TDateTimeField;
    qrprodutoCODGRUPO: TStringField;
    qrprodutoCODSUBGRUPO: TStringField;
    qrprodutoCODFORNECEDOR: TStringField;
    qrprodutoCODMARCA: TStringField;
    qrprodutoDATA_ULTIMACOMPRA: TDateTimeField;
    qrprodutoNOTAFISCAL: TStringField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoDATA_ULTIMAVENDA: TDateTimeField;
    qrprodutoESTOQUE: TFloatField;
    qrprodutoESTOQUEMINIMO: TFloatField;
    qrprodutoCODALIQUOTA: TStringField;
    qrprodutoAPLICACAO: TMemoField;
    qrprodutoLOCALICAZAO: TStringField;
    qrprodutoPESO: TFloatField;
    qrprodutoVALIDADE: TStringField;
    qrprodutoCOMISSAO: TFloatField;
    qrprodutoUSA_BALANCA: TIntegerField;
    qrprodutoUSA_SERIAL: TIntegerField;
    qrprodutoUSA_GRADE: TIntegerField;
    qrprodutoCODRECEITA: TStringField;
    qrprodutoFOTO: TStringField;
    qrprodutoDATA_ULTIMACOMPRA_ANTERIOR: TDateTimeField;
    qrprodutoNOTAFISCAL_ANTERIOR: TStringField;
    qrprodutoCODFORNECEDOR_ANTERIOR: TStringField;
    qrprodutoPRECOCUSTO_ANTERIOR: TFloatField;
    qrprodutoPRECOVENDA_ANTERIOR: TFloatField;
    qrprodutoCUSTOMEDIO: TFloatField;
    qrprodutoAUTO_APLICACAO: TStringField;
    qrprodutoAUTO_COMPLEMENTO: TStringField;
    qrprodutoDATA_REMARCACAO_CUSTO: TDateTimeField;
    qrprodutoDATA_REMARCACAO_VENDA: TDateTimeField;
    qrprodutoPRECO_PROMOCAO: TFloatField;
    qrprodutoDATA_PROMOCAO: TDateTimeField;
    qrprodutoFIM_PROMOCAO: TDateTimeField;
    qrprodutoNOME: TStringField;
    qrmarca: TZQuery;
    qrprodutomarca: TStringField;
    FlatPanel5: TFlatPanel;
    Image6: TImage;
    Label5: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    DBText4: TDBText;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    qrprodutoESTOQUE_ATUAL: TFloatField;
    FlatPanel6: TFlatPanel;
    qrprodutopreco_prazo: TFloatField;
    Label10: TLabel;
    procedure ipodePesquisa1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LOCKeyPress(Sender: TObject; var Key: Char);
    procedure qrprodutoCalcFields(DataSet: TDataSet);
    procedure FormShow(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure gridEnter(Sender: TObject);
    procedure gridExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmpreco: Tfrmpreco;

implementation

uses modulo, venda_pdv, principal;

{$R *.dfm}

procedure Tfrmpreco.ipodePesquisa1Click(Sender: TObject);
begin
  IF LABEL10.CAPTION = 'GRID' THEN
  BEGIN
    LOC.SETFOCUS;

    EXIT;

  END;



  LOC.SETFOCUS;

  if lpesquisa.Caption = 'F3 | PRODUTO:' THEN BEGIN lpesquisa.Caption := 'F3 | CÓDIGO:';EXIT;END;
  if lpesquisa.Caption = 'F3 | CÓDIGO:' THEN BEGIN lpesquisa.Caption := 'F3 | CÓD.BARRAS:'; EXIT;END;
  if lpesquisa.Caption = 'F3 | CÓD.BARRAS:' THEN BEGIN lpesquisa.Caption := 'F3 | FORNECEDOR:';EXIT;END;
  if lpesquisa.Caption = 'F3 | FORNECEDOR:' THEN BEGIN lpesquisa.Caption := 'F3 | PRODUTO:';EXIT;END;


   end;



procedure Tfrmpreco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmpreco.LOCKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
  begin
    try
    qrPRODUTO.close;
    qrPRODUTO.SQL.Clear;
    if lpesquisa.Caption = 'F3 | PRODUTO:'     then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(PRODUTO) like '''+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    if lpesquisa.Caption = 'F3 | CÓDIGO:'      then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(PRO.CODIGO) like ''%'+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    if lpesquisa.Caption = 'F3 | FORNECEDOR:'  then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(NOME) like '''+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    if lpesquisa.Caption = 'F3 | CÓD.BARRAS:'  then qrPRODUTO.sql.add('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and upper(CODBARRA) like '''+ansiuppercase(loc.text)+'%'' order by PRODUTO');
    qrPRODUTO.open;
    except
      showmessage('Parâmetro inválido!');
    end;

    IF qrPRODUTO.RecordCount = 0 THEN FRMPRINCIPAL.msg('INFO','Nenhum registro encontrado!',false,false,true,'') else grid.setfocus;
  end;


  IF KEY = #27 THEN CLOSE;
end;

procedure Tfrmpreco.qrprodutoCalcFields(DataSet: TDataSet);
begin

    If  aumento_prazo <> 0 then
    begin
       qrproduto.FieldByName('preco_prazo').asfloat :=
       qrproduto.FieldByName('precovenda').asfloat + (qrproduto.FieldByName('precovenda').asfloat * (aumento_prazo/100));
    end
    else
      qrproduto.FieldByName('preco_prazo').asfloat := qrproduto.FieldByName('precovenda').asfloat ;
end;

procedure Tfrmpreco.FormShow(Sender: TObject);
begin
  QRPRODUTO.CLOSE;
  QRPRODUTO.SQL.CLEAR;
  QRPRODUTO.SQL.ADD('select PRO.*, estq.estoque_atual, FORNEC.nome from c000025 PRO, c000009 FORNEC, c000100 estq where pro.codigo = estq.codproduto and PRO.codFORNECEDOR = FORNEC.codigo and PRO.CODIGO = ''XXXXXX''');
  QRPRODUTO.OPEN;
  LOC.SetFocus;
end;

procedure Tfrmpreco.gridKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN LOC.SetFocus;
end;

procedure Tfrmpreco.gridEnter(Sender: TObject);
begin
  LABEL10.CAPTION := 'GRID';
end;

procedure Tfrmpreco.gridExit(Sender: TObject);
begin
  LABEL10.CAPTION := 'LOC';
end;

end.
