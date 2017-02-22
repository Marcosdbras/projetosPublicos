unit produto_grade_pedido;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, Mask, ToolEdit, CurrEdit;

type
  Tfrmproduto_grade_pedido = class(TForm)
    dsgrade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    ViewSplit1: TViewSplit;
    pgravar: TFlatPanel;
    bgravar: TBitBtn;
    qrgrade_pedido: TZQuery;
    qrgrade_pedidoCODIGO: TStringField;
    qrgrade_pedidoCODPRODUTO: TStringField;
    qrgrade_pedidoCODNOTA: TStringField;
    qrgrade_pedidoQTDE: TFloatField;
    qrgrade_pedidoCODGRADE: TStringField;
    qrgrade_pedidoNUMERACAO: TStringField;
    FlipPanel1: TFlipPanel;
    Label1: TLabel;
    Label2: TLabel;
    RTOTAL: TRxCalcEdit;
    RDIGITADO: TRxCalcEdit;
    Label3: TLabel;
    RDIFERENCA: TRxCalcEdit;
    qrgrade_pedidoCODITEM: TStringField;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    qrgrade_pedidoQTDE_REC: TFloatField;
    qrgrade_pedidoFALTA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrgrade_pedidoBeforeEdit(DataSet: TDataSet);
    procedure qrgrade_pedidoBeforeInsert(DataSet: TDataSet);
    procedure qrgrade_pedidoAfterPost(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure qrgrade_pedidoAfterInsert(DataSet: TDataSet);
    procedure Fechar1Click(Sender: TObject);
    procedure qrgrade_pedidoCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_grade_pedido: Tfrmproduto_grade_pedido;
  qtde_anterior : real;
  nao_incluir : boolean;

implementation

uses modulo_nfe, produto_pedido, principal;

{$R *.dfm}

procedure Tfrmproduto_grade_pedido.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_grade_pedido.FormShow(Sender: TObject);
begin

  nao_incluir := false;


  qrgrade_pedido.close;
  qrgrade_pedido.SQL.clear;
  qrgrade_pedido.SQL.add('select * from c000039 where codITEM = '''+frmPRODUTO_pedido.qrpedido_ITEM.fieldbyname('codigo').asstring+''' order by codigo');
  qrgrade_pedido.open;


  IF QRGRADE_pedido.RecordCount = 0 THEN
  BEGIN
    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.sql.add('select * from c000021 where codproduto = '''+frmmodulo.qrproduto.fieldbyname('codigo').asstring+''' order by codigo');
    frmmodulo.qrgrade_produto.Open;
    frmmodulo.qrgrade_produto.First;
    while not frmmodulo.qrgrade_produto.eof do
    begin
      qrgrade_pedido.Insert;
      qrgrade_pedido.fieldbyname('codigo').asstring     := frmprincipal.codifica('000033');
      qrgrade_pedido.fieldbyname('codproduto').asstring := frmproduto_pedido.qrpedido_item.fieldbyname('codproduto').asstring;
      qrgrade_pedido.fieldbyname('codnota').asstring    := frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring;
      qrgrade_pedido.fieldbyname('coditem').asstring    := frmproduto_pedido.qrpedido_item.fieldbyname('codigo').asstring;
      qrgrade_pedido.fieldbyname('codgrade').asstring   := frmmodulo.qrgrade_produto.fieldbyname('codigo').asstring;
      qrgrade_pedido.fieldbyname('qtde').asfloat   := 0;
      qrgrade_pedido.fieldbyname('qtde_rec').asfloat   := 0;
      qrgrade_pedido.post;
      frmmodulo.qrgrade_produto.Next;
    end;
    RTOTAL.Value := frmproduto_pedido.qrpedido_item.fieldbyname('qtde').asfloat;
    rdigitado.Value := 0;
    Rdiferenca.Value := frmproduto_pedido.qrpedido_item.fieldbyname('qtde').asfloat;
  END
  else
  begin

    RTOTAL.Value := 0;
    rdigitado.Value := 0;
    Rdiferenca.Value := 0;
    qrgrade_pedido.first;
    RTOTAL.Value := frmproduto_pedido.qrpedido_item.fieldbyname('qtde').asfloat;
    while not qrgrade_pedido.eof do
    begin
      rdigitado.Value := qrgrade_pedido.fieldbyname('qtde').asfloat + rdigitado.value;
      qrgrade_pedido.Next;
    end;
    rdiferenca.Value := rdigitado.Value - rtotal.value;
  end;

  qrgrade_pedido.Refresh;
  wwDBGrid1.setfocus;
end;

procedure Tfrmproduto_grade_pedido.bgravarClick(Sender: TObject);
var recebido : real;
begin






  if qrgrade_pedido.State = dsedit then
     qrgrade_pedido.Post;


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
      qrgrade_pedido.Refresh;
      recebido := 0;
      qrgrade_pedido.First;
      while not qrgrade_pedido.eof do
      begin
        recebido := recebido + qrgrade_pedido.fieldbyname('qtde_rec').asfloat;
        qrgrade_pedido.Next
      end;
      frmproduto_pedido.qrpedido_item.fieldbyname('recebido').asfloat := recebido;
      close;
    end;
  end
  else
  begin
    qrgrade_pedido.Refresh;
      recebido := 0;
      qrgrade_pedido.First;
      while not qrgrade_pedido.eof do
      begin
        recebido := recebido + qrgrade_pedido.fieldbyname('qtde_rec').asfloat;
        qrgrade_pedido.Next
      end;
      frmproduto_pedido.qrpedido_item.fieldbyname('recebido').asfloat := recebido;
      close;
    
    close;
  end;
end;

procedure Tfrmproduto_grade_pedido.bcancelarClick(Sender: TObject);
begin
 close;
end;

procedure Tfrmproduto_grade_pedido.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;
  except
  end;
end;

procedure Tfrmproduto_grade_pedido.qrgrade_pedidoBeforeEdit(DataSet: TDataSet);
begin
  qtde_anterior := qrgrade_pedido.fieldbyname('qtde').asfloat;
end;

procedure Tfrmproduto_grade_pedido.qrgrade_pedidoBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_grade_pedido.qrgrade_pedidoAfterPost(DataSet: TDataSet);
begin
  rdigitado.Value := rdigitado.value + qrgrade_pedido.fieldbyname('qtde').asfloat - qtde_anterior;
  rdiferenca.Value := rdigitado.value - rtotal.value;
end;

procedure Tfrmproduto_grade_pedido.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_grade_pedido.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_grade_pedido.qrgrade_pedidoAfterInsert(DataSet: TDataSet);
begin
  if nao_incluir then qrgrade_pedido.Cancel;
end;

procedure Tfrmproduto_grade_pedido.Fechar1Click(Sender: TObject);
begin
  bgravarclick(frmproduto_grade_PEDIDO);
end;

procedure Tfrmproduto_grade_pedido.qrgrade_pedidoCalcFields(
  DataSet: TDataSet);
begin
  qrgrade_pedido.FieldByName('FALTA').ASFLOAT :=
  qrgrade_pedido.FieldByName('QTDE').ASFLOAT -
  qrgrade_pedido.FieldByName('QTDE_REC').ASFLOAT ;

end;

end.
