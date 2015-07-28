unit produto_gradeFS;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, Mask, ToolEdit, CurrEdit;

type
  Tfrmproduto_gradeFS = class(TForm)
    dsgrade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    qrgrade_entrada: TZQuery;
    qrgrade_entradaCODIGO: TStringField;
    qrgrade_entradaCODPRODUTO: TStringField;
    qrgrade_entradaCODNOTA: TStringField;
    qrgrade_entradaQTDE: TFloatField;
    qrgrade_entradaCODGRADE: TStringField;
    qrgrade_entradaNUMERACAO: TStringField;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    RTOTAL: TRxCalcEdit;
    RDIGITADO: TRxCalcEdit;
    Label3: TLabel;
    RDIFERENCA: TRxCalcEdit;
    qrgrade_entradaCODITEM: TStringField;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrgrade_entradaBeforeEdit(DataSet: TDataSet);
    procedure qrgrade_entradaBeforeInsert(DataSet: TDataSet);
    procedure qrgrade_entradaAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrgrade_entradaAfterInsert(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_gradeFS: Tfrmproduto_gradeFS;
  qtde_anterior : real;
  nao_incluir : boolean;

implementation

uses modulo,  principal, NOTAFISCAL_ITEM, notafiscal;

{$R *.dfm}

procedure Tfrmproduto_gradeFS.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_gradeFS.FormShow(Sender: TObject);
begin

  nao_incluir := false;


  qrgrade_entrada.close;
  qrgrade_entrada.SQL.clear;
  qrgrade_entrada.SQL.add('select * from c000033 where codITEM = '''+codigo_it+''' order by codigo');
  qrgrade_entrada.open;


  IF QRGRADE_ENTRADA.RecordCount = 0 THEN
  BEGIN
    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
    frmmodulo.qrgrade_produto.Open;
    frmmodulo.qrgrade_produto.First;
    while not frmmodulo.qrgrade_produto.eof do
    begin
      qrgrade_entrada.Insert;
      qrgrade_entrada.fieldbyname('codigo').asstring     := frmprincipal.codifica('000033');
      qrgrade_entrada.fieldbyname('codproduto').asstring := frmmodulo.qrproduto.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('codnota').asstring    := frmmodulo.qrnotafiscal.fieldbyname('codcliente').asstring+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('coditem').asstring    := codigo_it;
      qrgrade_entrada.fieldbyname('codgrade').asstring   := frmmodulo.qrgrade_produto.fieldbyname('codigo').asstring;
      qrgrade_entrada.fieldbyname('qtde').asfloat   := 0;
      qrgrade_entrada.post;
      frmmodulo.qrgrade_produto.Next;
    end;
    RTOTAL.Value := frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat;
    rdigitado.Value := 0;
    Rdiferenca.Value := RTOTAL.VALUE;
  END
  else
  begin

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    qrgrade_entrada.first;

      RTOTAL.Value := frmnotafiscal.qrnotafiscal_item.fieldbyname('qtde').asfloat;


    while not qrgrade_entrada.eof do
    begin
      rdigitado.Value := qrgrade_entrada.fieldbyname('qtde').asfloat + rdigitado.value;
      qrgrade_entrada.Next;
    end;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;

  qrgrade_entrada.Refresh;
  wwDBGrid1.setfocus;
end;

procedure Tfrmproduto_gradeFS.bgravarClick(Sender: TObject);
begin



  if qrgrade_entrada.State = dsedit then
     qrgrade_entrada.Post;


  application.ProcessMessages;



  if (rdiferenca.value <> 0) then
  begin
    if rdigitado.Value <> 0 then
    begin
      application.MessageBox('Os valores digitados nesta grade não confere com a quantidade deste produto! Caso não queira utilizar esta grade, favor zerar todos os valores no campo "QTDE".','Atenção',mb_ok+MB_ICONWARNING);
      wwdbgrid1.setfocus;
    end
    else
    begin
      qrgrade_entrada.Refresh;
      close;
    end;
  end
  else
  begin
    qrgrade_entrada.Refresh;
    close;
  end;
end;

procedure Tfrmproduto_gradeFS.bcancelarClick(Sender: TObject);
begin
 close;
end;

procedure Tfrmproduto_gradeFS.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;  
  except
  end;
end;

procedure Tfrmproduto_gradeFS.qrgrade_entradaBeforeEdit(DataSet: TDataSet);
begin
  qtde_anterior := qrgrade_entrada.fieldbyname('qtde').asfloat;
end;

procedure Tfrmproduto_gradeFS.qrgrade_entradaBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_gradeFS.qrgrade_entradaAfterPost(DataSet: TDataSet);
begin
  if frmmodulo.qrgrade_produto.Locate('codigo',qrgrade_entrada.fieldbyname('codgrade').asstring,[loCaseInsensitive]) then
  begin
    frmmodulo.qrgrade_produto.Edit;
    frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat := frmmodulo.qrgrade_produto.fieldbyname('estoque').asfloat +
                                                                qrgrade_entrada.fieldbyname('qtde').asfloat -
                                                                qtde_anterior;
    frmmodulo.qrgrade_produto.Post;
  end;

  rdigitado.Value := rdigitado.value + qrgrade_entrada.fieldbyname('qtde').asfloat - qtde_anterior;
  rdiferenca.Value := rdigitado.value - rtotal.value;
end;

procedure Tfrmproduto_gradeFS.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_gradeFS.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_gradeFS.qrgrade_entradaAfterInsert(DataSet: TDataSet);
begin
  if nao_incluir then qrgrade_entrada.Cancel;
end;

procedure Tfrmproduto_gradeFS.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_gradefS);
end;

end.
