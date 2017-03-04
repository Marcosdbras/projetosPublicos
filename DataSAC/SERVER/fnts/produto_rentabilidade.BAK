unit produto_rentabilidade;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, StdCtrls,
  Buttons, ExtCtrls, TFlatPanelUnit, Collection, Grids, Wwdbigrd, Wwdbgrid,
  Menus, Mask, ToolEdit, CurrEdit, AdvGlowButton;

type
  Tfrmproduto_rentabilidade = class(TForm)
    dsrentabilidade_produto: TDataSource;
    wwDBGrid1: TwwDBGrid;
    qrrentabilidade_entrada: TZQuery;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Fechar1: TMenuItem;
    qrrentabilidade_entradaRENTABILIDADE: TStringField;
    qrrentabilidade_entradaCODPRODUTO: TStringField;
    qrrentabilidade_entradaPRODUTO: TStringField;
    qrrentabilidade_entradaRENDIMENTO: TFloatField;
    qrrentabilidade_entradaQUANTIDADE: TFloatField;
    qrrentabilidade_entradaVALOR: TFloatField;
    QUERY: TZQuery;
    QUERY1: TZQuery;
    Panel1: TPanel;
    Label6: TLabel;
    Bevel1: TBevel;
    Bevel2: TBevel;
    lcodigo: TLabel;
    lproduto: TLabel;
    Label4: TLabel;
    Bevel3: TBevel;
    elote: TLabel;
    Label5: TLabel;
    Bevel4: TBevel;
    RTOTAL: TRxCalcEdit;
    Bevel5: TBevel;
    Panel2: TPanel;
    Bevel6: TBevel;
    Label1: TLabel;
    Label7: TLabel;
    RDIGITADO: TRxCalcEdit;
    RDIFERENCA: TRxCalcEdit;
    Bevel7: TBevel;
    bgravar: TAdvGlowButton;
    bretorna: TAdvGlowButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure RDIFERENCAChange(Sender: TObject);
    procedure qrrentabilidade_entradaBeforeInsert(DataSet: TDataSet);
    procedure wwDBGrid1Enter(Sender: TObject);
    procedure wwDBGrid1Exit(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure bretornaClick(Sender: TObject);
    procedure qrrentabilidade_entradaBeforeEdit(DataSet: TDataSet);
    procedure qrrentabilidade_entradaAfterPost(DataSet: TDataSet);
    procedure qrrentabilidade_entradaBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_rentabilidade: Tfrmproduto_rentabilidade;
  qtde_anterior : real;
  nao_incluir : boolean;
  vqde_ant,vqde_ant_item: double;
  atualizar : boolean;


implementation

uses modulo, produto_entrada, principal, compra, compra_menu;

{$R *.dfm}

procedure Tfrmproduto_rentabilidade.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmproduto_rentabilidade.FormShow(Sender: TObject);
begin
  atualizar := false;
  nao_incluir := false;

  RTOTAL.Value := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
  lcodigo.Caption := frmcompra.qrnota_item.fieldbyname('codproduto').asstring;

  RDIGITADO.Value := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;
  elote.Caption := '';

  vqde_ant := frmcompra.qrnota_item.fieldbyname('qtde').asfloat;

  if frmcompra_menu.vopcao_item = 1 then
  begin
    if frmcompra_menu.vopcao_nfe = 2 then vqde_ant := frmcompra.QRNOTA_item.fieldbyname('qtde').asfloat;
    qrrentabilidade_entrada.close;
    qrrentabilidade_entrada.SQL.clear;
    qrrentabilidade_entrada.SQL.add('select * from c000078 where rentabilidade = '''+frmcompra.QRNOTA_item.fieldbyname('codproduto').asstring+''' order by produto');
    qrrentabilidade_entrada.open;
    IF qrrentabilidade_entrada.RecordCount > 0 THEN
    BEGIN
      qrrentabilidade_entrada.First;
      while not qrrentabilidade_entrada.eof do
      begin
        qrrentabilidade_entrada.Edit;
        qrrentabilidade_entrada.fieldbyname('quantidade').AsFloat :=  (qrrentabilidade_entrada.fieldbyname('rendimento').AsFloat* RTOTAL.Value)/100;
        qrrentabilidade_entrada.fieldbyname('valor').AsFloat :=       (frmcompra.QRNOTA_item.fieldbyname('unitario').AsFloat*  qrrentabilidade_entrada.fieldbyname('quantidade').AsFloat);
        qrrentabilidade_entrada.post;
        qrrentabilidade_entrada.Next;
      end;
      Rdiferenca.Value := (RTOTAL.Value-RDIGITADO.Value);
    END;
    qrrentabilidade_entrada.First;
  end;

  atualizar := true;

  Application.ProcessMessages;
  wwDBGrid1.setfocus;
end;

procedure Tfrmproduto_rentabilidade.bgravarClick(Sender: TObject);
var
  vlot,vcod,vpro : string;
  vcodproduto,vproduto : string;
  vqde,vqde_produto : double;
  vval : double;
  vrec_item,vcodigo,vrecno : integer;
begin
  if rdiferenca.value <> 0 then
  begin
    if application.messagebox('Há diferença no rateio! Deseja continuar?','Atenção',mb_yesno+mb_iconquestion) = idno then
    begin
     exit;
    end;

  end;
               
  vrec_item := frmcompra.QRNOTA_item.RecNo;
  vcod := lcodigo.Caption;
  vqde := frmcompra.QRNOTA_item.fieldbyname('qtde').asfloat;
  vval := frmcompra.QRNOTA_item.fieldbyname('total').asfloat;
  if frmcompra_menu.vopcao_item = 1 then
  begin
    if application.messagebox('Tem certeza que deseja Processar a Rentabilidade?','Atenção',mb_yesno+mb_iconquestion) = idno then  exit;

    query.close;
    query.SQL.clear;
    query.SQL.add('select * from c000078 where rentabilidade = '''+vcod+'''');
    query.open;

    frmmodulo.qrlote_rentabilidade.Open;
    frmmodulo.qrlote_rentabilidade.Last;

    if frmmodulo.qrlote_rentabilidade.FieldByName('lote').AsString = '' then
      vcodigo := 1
    else
      vcodigo := strtoint(frmmodulo.qrlote_rentabilidade.FieldByName('lote').AsString)+1;

    elote.Caption := frmPrincipal.zerarcodigo(inttostr(vcodigo),10);

    frmmodulo.qrlote_rentabilidade.insert;
    frmmodulo.qrlote_rentabilidade.FieldByName('situacao').AsFloat    := 1;
    frmmodulo.qrlote_rentabilidade.FieldByName('lote').AsString       := elote.Caption;
    frmmodulo.qrlote_rentabilidade.FieldByName('codproduto').AsString := lcodigo.Caption;
    frmmodulo.qrlote_rentabilidade.FieldByName('unidade').AsString    := frmcompra.QRNOTA_item.fieldbyname('UN_COMPRA').AsString;
    frmmodulo.qrlote_rentabilidade.FieldByName('notafiscal').AsString := frmcompra.enumero.Text;
    frmmodulo.qrlote_rentabilidade.FieldByName('data').AsDateTime     := frmcompra.eentrada.Date;
    frmmodulo.qrlote_rentabilidade.FieldByName('quantidade').AsFloat  := RTOTAL.Value;
    frmmodulo.qrlote_rentabilidade.FieldByName('valor').AsFloat       := frmcompra.QRNOTA_item.fieldbyname('TOTAL').asfloat;
    frmmodulo.qrlote_rentabilidade.FieldByName('observacao').AsString := '';
    frmmodulo.qrlote_rentabilidade.Post;

    FRMMODULO.QRPRODUTO_MOV.CLOSE;
    FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
    FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
    FRMMODULO.QRPRODUTO_MOV.OPEN;

    query.first;
    while not query.eof do
    begin
      if query.fieldbyname('codproduto').asstring <> '000000' then // verificando se nao eh perda
      begin
        frmmodulo.qrproduto_mov.Insert;
        frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
        frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := frmmodulo.qrlote_rentabilidade.FIELDBYNAME('lote').ASSTRING;
        frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';
        frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra.enumero.Text;
        frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := query.fieldbyname('codproduto').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat          := query.FieldByName('quantidade').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat      := frmcompra.QRNOTA_item.FieldByName('unitario').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := query.fieldbyname('valor').asfloat;
        frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := frmcompra.QRNOTA_item.fieldbyname('un_compra').AsString;
        frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := 0;
        frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
        frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := frmcompra_menu.qrnota.fieldbyname('codfornecedor').asstring;
        frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
        frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 16; // entrada nos produto
        frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmmodulo.qrlote_rentabilidade.FIELDBYNAME('data').ASSTRING;
        frmmodulo.qrproduto_mov.Post;
      end;
      query.Next;
    end;
    // produto acabado
    frmmodulo.qrproduto_mov.Insert;
    frmmodulo.qrproduto_mov.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
    frmmodulo.qrproduto_mov.fieldbyname('lote_fabricacao').AsString := frmmodulo.qrlote_rentabilidade.FIELDBYNAME('lote').ASSTRING;
    frmmodulo.qrproduto_mov.fieldbyname('codnota').AsString      := frmcompra_menu.qrnota.fieldbyname('codigo').asstring;
    frmmodulo.qrproduto_mov.fieldbyname('SERIAL').AsString       := '';
    frmmodulo.qrproduto_mov.fieldbyname('numeronota').AsString   := frmcompra.enumero.Text;
    frmmodulo.qrproduto_mov.fieldbyname('codproduto').asstring   := frmmodulo.qrlote_rentabilidade.fieldbyname('codproduto').AsString;
    frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat          := frmmodulo.qrlote_rentabilidade.FieldByName('quantidade').asfloat;
    frmmodulo.qrproduto_mov.fieldbyname('unitario').asfloat      := frmcompra.QRNOTA_item.FieldByName('unitario').asfloat;
    frmmodulo.qrproduto_mov.fieldbyname('total').asfloat         := frmmodulo.qrlote_rentabilidade.fieldbyname('valor').asfloat;
    frmmodulo.qrproduto_mov.fieldbyname('unidade').asstring      := frmcompra.QRNOTA_item.fieldbyname('un_compra').AsString;
    frmmodulo.qrproduto_mov.fieldbyname('aliquota').asFLOAT      := 0; // query.fieldbyname('aliquota').asFLOAT;
    frmmodulo.qrproduto_mov.fieldbyname('cupom_modelo').asstring := '';
    frmmodulo.qrproduto_mov.fieldbyname('codcliente').AsString   := '000000';
    frmmodulo.qrproduto_mov.fieldbyname('codvendedor').AsString  := 'S/VEND';
    frmmodulo.qrproduto_mov.fieldbyname('MOVIMENTO').AsINTEGER   := 15; // baixa na rentabilidade
    frmmodulo.qrproduto_mov.FieldByName('data').asstring         := frmmodulo.qrlote_rentabilidade.FIELDBYNAME('data').ASSTRING;
    frmmodulo.qrproduto_mov.Post;
    /////////////////
    frmmodulo.qrlote_rentabilidade.RecNo := vrecno;
    frmmodulo.qrlote_rentabilidade.Edit;
    frmmodulo.qrlote_rentabilidade.FieldByName('situacao').AsInteger := 2;
    frmmodulo.qrlote_rentabilidade.Post;
  end
  else  // alteração
  begin
    if application.messagebox('Tem certeza que Deseja Alterar a Rentabilidade?','Atenção',mb_yesno+mb_iconquestion) = idno then exit;

    query.close;
    query.SQL.clear;
    query.SQL.add('select * from c000078 where codigo = '''+vcod+'''');
    query.open;

    frmcompra.QRNOTA_item.Open;
    frmcompra.QRNOTA_item.First;

    while not frmcompra.QRNOTA_item.eof do
    begin
      query.close;
      query.SQL.clear;
      query.SQL.add('select * from c000078 where codigo = '''+frmcompra.QRNOTA_item.FIELDBYNAME('codproduto').ASSTRING+'''');
      query.open;
      query.First;

      while not query.eof do
      begin
        FRMMODULO.QRPRODUTO_MOV.CLOSE;
        FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
        FRMMODULO.QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = '''+frmcompra.QRNOTA_item.FIELDBYNAME('CODNOTA').ASSTRING+'''');
        FRMMODULO.QRPRODUTO_MOV.SQL.ADD('and CODPRODUTO = '''+query.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
        FRMMODULO.QRPRODUTO_MOV.OPEN;
        IF FRMMODULO.QRPRODUTO_MOV.RecordCount > 0 THEN
        BEGIN
          frmmodulo.qrproduto_mov.EDIT;
          frmmodulo.qrproduto_mov.fieldbyname('qtde').asfloat := query.FieldByName('quantidade').asfloat;
          frmmodulo.qrproduto_mov.Post;
        END;
        query.next;
      end;
      frmcompra.QRNOTA_item.Next;
    end;
    frmcompra.QRNOTA_item.RecNo := vrec_item;
  end;
  close;
end;

procedure Tfrmproduto_rentabilidade.bcancelarClick(Sender: TObject);
begin
 close;
end;

procedure Tfrmproduto_rentabilidade.RDIFERENCAChange(Sender: TObject);
begin
  try
    if rdiferenca.Value = 0 then rdiferenca.Font.Color := clblue else rdiferenca.Font.Color := clred;
  except
  end;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaBeforeInsert(DataSet: TDataSet);
begin
  qtde_anterior := 0;
end;

procedure Tfrmproduto_rentabilidade.wwDBGrid1Enter(Sender: TObject);
begin
  nao_incluir := true;
end;

procedure Tfrmproduto_rentabilidade.wwDBGrid1Exit(Sender: TObject);
begin
  nao_incluir := false;
end;

procedure Tfrmproduto_rentabilidade.Fechar1Click(Sender: TObject);
begin
  bretornaClick(frmproduto_rentabilidade);
end;

procedure Tfrmproduto_rentabilidade.bretornaClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaBeforeEdit(
  DataSet: TDataSet);
begin
  qtde_anterior := qrrentabilidade_entrada.fieldbyname('quantidade').asfloat;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaAfterPost(
  DataSet: TDataSet);
begin
  rdigitado.value := rdigitado.value - qtde_anterior +
  qrrentabilidade_entrada.fieldbyname('quantidade').asfloat;
  rdiferenca.value := rtotal.value - rdigitado.value;
end;

procedure Tfrmproduto_rentabilidade.qrrentabilidade_entradaBeforePost(
  DataSet: TDataSet);
begin
  if atualizar then
  begin
    qrrentabilidade_entrada.fieldbyname('rendimento').asfloat :=
    (qrrentabilidade_entrada.fieldbyname('quantidade').asfloat * 100) /
    rtotal.value;
  end;
end;

end.
