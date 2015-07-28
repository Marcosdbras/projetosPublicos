unit produto_pedido_item;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Collection, TFlatPanelUnit, StdCtrls, Buttons, Mask,
  DBCtrls, DB, Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  Grids, Wwdbigrd, Wwdbgrid, ComCtrls, rxtooledit, AdvGlowButton, RzEdit,
  RzBtnEdt;

type
  Tfrmproduto_pedido_item = class(TForm)
    pgravar: TFlatPanel;
    Pop2: TPopupMenu;
    Gravar1: TMenuItem;
    Cancelar1: TMenuItem;
    dspedido_item: TDataSource;
    qrgrade_pedido: TZQuery;
    qrsugestao: TZQuery;
    dssugestao: TDataSource;
    qrsugestaoCODIGO: TStringField;
    qrsugestaoCODBARRA: TStringField;
    qrsugestaoPRODUTO: TStringField;
    qrsugestaoUNIDADE: TStringField;
    qrsugestaoCODFORNECEDOR: TStringField;
    qrsugestaoESTOQUE: TFloatField;
    qrsugestaosugestao: TFloatField;
    qrsugestaovendas: TFloatField;
    qrsugestaoPRECOCUSTO: TFloatField;
    qrsugestaoPRECOVENDA: TFloatField;
    QUERY: TZQuery;
    Label11: TLabel;
    Label12: TLabel;
    DBText1: TDBText;
    DBText2: TDBText;
    DBText3: TDBText;
    bar: TProgressBar;
    Panel5: TPanel;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    DBEdit30: TDBEdit;
    DBEdit1: TDBEdit;
    Panel2: TPanel;
    Label6: TLabel;
    Label7: TLabel;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    Panel3: TPanel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    lponto: TLabel;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    bgrade: TBitBtn;
    Panel4: TPanel;
    linicio_remarcado: TLabel;
    lfim_remarcado: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    ldias: TLabel;
    Label10: TLabel;
    ldataini_remarcado: TDateEdit;
    ldatafim_remarcado: TDateEdit;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    Bevel3: TBevel;
    qrsugestaoESTOQUE_ATUAL: TFloatField;
    Panel6: TPanel;
    GRID5: TwwDBGrid;
    Panel7: TPanel;
    eproduto: TRzButtonEdit;
    qrloc: TZQuery;
    qrsugestaoSITUACAO: TIntegerField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure bcancelarClick(Sender: TObject);
    procedure eprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5Enter(Sender: TObject);
    procedure DBEdit5Exit(Sender: TObject);
    procedure DBEdit2Exit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure eprodutoExit(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure DBEdit3Exit(Sender: TObject);
    procedure bgradeClick(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit5KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit3KeyPress(Sender: TObject; var Key: Char);
    procedure qrsugestaoCalcFields(DataSet: TDataSet);
    procedure GRID5DblClick(Sender: TObject);
    procedure ldataini_remarcadoExit(Sender: TObject);
    procedure GRID5KeyPress(Sender: TObject; var Key: Char);
    procedure eprodutoButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_pedido_item: Tfrmproduto_pedido_item;
  qtde_anterior, valor_anterior : real;
  vsugestao : integer;
implementation

uses produto_pedido,  modulo, principal, produto_grade_pedido,
  xloc_produto;

{$R *.dfm}

procedure Tfrmproduto_pedido_item.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   if (dspedido_item.State = dsinsert) or (dspedido_item.State = dsedit) then
   begin
      bcancelarclick(frmproduto_pedido_item);
   end;

  action := cafree;
end;

procedure Tfrmproduto_pedido_item.bcancelarClick(Sender: TObject);
begin
  if dspedido_item.State = dsinsert then
  begin
    qrgrade_pedido.Close;
    qrgrade_pedido.SQL.clear;
    qrgrade_pedido.SQL.add('select * from c000039 where coditem = '''+dspedido_item.dataset.fieldbyname('codigo').asstring+'''');
    qrgrade_pedido.Open;

    frmmodulo.qrgrade_produto.close;
    frmmodulo.qrgrade_produto.sql.clear;
    frmmodulo.qrgrade_produto.SQL.Add('delete from c000021 where codproduto = '''+dspedido_item.dataset.fieldbyname('codproduto').asstring+'''');
    frmmodulo.qrgrade_produto.ExecSQL;

  end;
  dspedido_item.dataset.cancel;
  close;
end;

procedure Tfrmproduto_pedido_item.eprodutoKeyPress(Sender: TObject;
  var Key: Char);
begin
    if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmproduto_pedido_item.DBEdit5Enter(Sender: TObject);
begin
   TEdit(sender).Color := $00A0FAF8;
end;

procedure Tfrmproduto_pedido_item.DBEdit5Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
   if dspedido_item.DataSet.FIELDBYNAME('RECEBIDO').ASFLOAT > dspedido_item.DataSet.FIELDBYNAME('qtde').ASFLOAT then
   begin
     application.messagebox('Quantiade recebida está maior que a lançada! Favor corrigir!','Aviso',mb_ok+mb_iconerror);
     dbedit5.setfocus;
   end;
end;

procedure Tfrmproduto_pedido_item.DBEdit2Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dspedido_item.state = dsinsert) or (dspedido_item.State = dsedit) then
  begin
    dspedido_item.DataSet.fieldbyname('total').asfloat :=
    dspedido_item.DataSet.fieldbyname('qtde').asfloat *
    dspedido_item.DataSet.fieldbyname('UNITARIO').asfloat;
  end;
end;

procedure Tfrmproduto_pedido_item.FormShow(Sender: TObject);
begin

  eproduto.text := dspedido_item.dataset.fieldbyname('codproduto').asstring;

  ldataini_remarcado.Date := date-90;
  ldatafim_remarcado.Date := date;

  ldias.Caption := floattostr(ldatafim_remarcado.Date-ldataini_remarcado.Date);

  // sugestao de compra
  qrsugestao.close;
  qrsugestao.sql.clear;
  qrsugestao.sql.add('select pro.*, est.* from c000025 pro, c000100 est');
  qrsugestao.sql.add('where pro.situacao = 0 and pro.codigo = est.codproduto and codfornecedor = '''+frmproduto_pedido.efornecedor.Text+'''');
  qrsugestao.sql.add('order by codfornecedor,produto');
  qrsugestao.open;

  bar.position := 0;
  bar.Max := qrsugestao.RecordCount;

  caption := 'Pedido de Compra - Edição do Item n.: '+dspedido_item.dataset.fieldbyname('codigo').asstring;

  if dspedido_item.state = dsedit then
  begin
    frmmodulo.qrproduto.Locate('codigo',dspedido_item.DataSet.fieldbyname('codproduto').asstring,[loCaseInsensitive]);
    //// verificar se produto usa grade

    if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then
    begin
      bgrade.visible := true;
      dbedit2.Enabled := false;
      lponto.Visible := true;
    end
    else
    begin
     lponto.visible := false;
     bgrade.visible := false;
     dbedit2.Enabled := true;
    end;
    panel1.enabled := false;

  end
  else
  begin
    dbedit2.Enabled := true;
    panel1.enabled := true;
    lponto.visible := false;
  end;
  qtde_anterior := dspedido_item.dataset.fieldbyname('qtde').asfloat;
  valor_anterior := dspedido_item.dataset.fieldbyname('total').asfloat;

  GRID5.SetFocus;

end;

procedure Tfrmproduto_pedido_item.eprodutoExit(Sender: TObject);
begin


   eproduto.text := frmPrincipal.zerarcodigo(eproduto.text,6);
   if eproduto.text <> '000000'  then
   begin
     qrloc.close;
     qrloc.sql.clear;
     if length(eproduto.text) > 6 then
       qrloc.sql.add('select * from c000025 where codbarra = '''+eproduto.text+'''')
     else
       qrloc.sql.add('select * from c000025 where codigo = '''+eproduto.text+'''');
     qrloc.open;
     if qrloc.recordcount > 0 then
     begin
       dspedido_item.dataset.fieldbyname('codproduto').asstring := qrloc.fieldbyname('codigo').asstring;
       dspedido_item.dataset.fieldbyname('unitario').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
       dspedido_item.dataset.fieldbyname('qtde').asfloat := 1;
       dspedido_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
       if frmmodulo.qrproduto.FieldByName('usa_grade').asinteger = 1 then bgrade.visible := true else bgrade.visible := false;
         dbedit2.setfocus;
     end
     else
     begin
       application.messagebox('Produto não encontrado!','Aviso',mb_ok+mb_iconerror);
       eproduto.setfocus;
     end;
   end
   else
   begin
     eprodutoButtonClick(frmproduto_pedido_item);
   end;






  vsugestao := 0;

end;

procedure Tfrmproduto_pedido_item.bgravarClick(Sender: TObject);
var st : integer;
begin

   if dsPedido_item.dataset.State = dsinsert then
   begin
    frmmodulo.qrpedido_produto.FieldByName('itens').asinteger :=
    frmmodulo.qrpedido_produto.FieldByName('itens').asinteger + 1;
    st := 1;
   end
   else
     st := 2;

  dspedido_item.dataset.FieldByName('codnota').asstring := frmmodulo.qrpedido_produto.fieldbyname('codigo').asstring;


  dspedido_item.dataset.post;

  frmmodulo.qrpedido_produto.FieldByName('total_nota').asfloat := frmmodulo.qrpedido_produto.FieldByName('total_nota').asfloat +
                                                                       dspedido_item.DataSet.fieldbyname('TOTAL').asfloat - valor_anterior;

  frmproduto_pedido.qrpedido_item.Insert;
  frmproduto_pedido.qrpedido_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000038');

  eproduto.text := '';


  if st = 1 then
  begin
    if vsugestao = 1 then
      GRID5.SetFocus
    else
      eproduto.SetFocus;
  end
  else
    close;


end;

procedure Tfrmproduto_pedido_item.DBEdit3Exit(Sender: TObject);
begin
   TEdit(sender).Color := clwindow;
  if (dspedido_item.state = dsinsert) or (dspedido_item.State = dsedit) then
  begin
    dspedido_item.DataSet.fieldbyname('total').asfloat :=
    dspedido_item.DataSet.fieldbyname('qtde').asfloat *
    dspedido_item.DataSet.fieldbyname('UNITARIO').asfloat;


  end;
end;

procedure Tfrmproduto_pedido_item.bgradeClick(Sender: TObject);
begin


      frmproduto_grade_PEDIDO := tfrmproduto_grade_PEDIDO.create(self);
      frmproduto_grade_PEDIDO.showmodal;

      dbedit5.setfocus;


end;

procedure Tfrmproduto_pedido_item.DBEdit4KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bgravar.setfocus;
end;

procedure Tfrmproduto_pedido_item.DBEdit5KeyPress(Sender: TObject;
  var Key: Char);
begin
     if key = #13 then BGRAVAR.SETFOCUS;
end;

procedure Tfrmproduto_pedido_item.DBEdit3KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    bgravar.setfocus;

  end;
end;

procedure Tfrmproduto_pedido_item.qrsugestaoCalcFields(DataSet: TDataSet);
begin
  QUERY.close;
  QUERY.sql.clear;
  QUERY.sql.add('select sum(qtde) vendas from c000032');
  QUERY.sql.add('where codproduto = '''+ qrsugestaoCODIGO.AsString+'''');
  QUERY.sql.add('and movimento = ''2''');
  QUERY.sql.add('and data >= :data_ini and data <= :data_fim');
  QUERY.ParamByName('data_ini').asdatetime := ldataini_remarcado.Date;
  QUERY.ParamByName('data_fim').asdatetime := ldatafim_remarcado.Date;
  QUERY.open;
  if QUERY.RecordCount > 0 then
    begin
      qrsugestao.FIELDBYNAME('vendas').AsFloat := QUERY.FieldByName('vendas').AsFloat;
      qrsugestao.FIELDBYNAME('SUGESTAO').ASFLOAT :=
      qrsugestao.FIELDBYNAME('VENDAS').ASFLOAT -
      qrsugestao.FIELDBYNAME('estoque_atual').ASFLOAT;
    end
  else
    begin
      qrsugestao.FIELDBYNAME('vendas').AsFloat := 0;
      qrsugestao.FIELDBYNAME('sugestao').AsFloat := 0;
    end;

  bar.Position := bar.position + 1;

  if qrsugestao.FIELDBYNAME('sugestao').AsFloat < 0 then
    qrsugestao.FIELDBYNAME('sugestao').AsFloat := 0;

end;

procedure Tfrmproduto_pedido_item.GRID5DblClick(Sender: TObject);
begin
  dspedido_item.dataset.fieldbyname('codproduto').AsString := qrsugestao.fieldbyname('codigo').AsString;
  eproduto.text :=qrsugestao.fieldbyname('codigo').AsString;
  dspedido_item.dataset.fieldbyname('produto').AsString := qrsugestao.fieldbyname('produto').AsString;
  dspedido_item.dataset.fieldbyname('unitario').asfloat := qrsugestao.fieldbyname('precocusto').asfloat;
  dspedido_item.dataset.fieldbyname('qtde').asfloat := qrsugestao.fieldbyname('sugestao').asfloat;
  dspedido_item.dataset.fieldbyname('total').asfloat := frmmodulo.qrproduto.fieldbyname('precocusto').asfloat;
  vsugestao := 1;
  DBEdit2.SetFocus;
end;

procedure Tfrmproduto_pedido_item.ldataini_remarcadoExit(Sender: TObject);
begin

  ldias.Caption := floattostr(ldatafim_remarcado.Date-ldataini_remarcado.Date);


  // sugestao de compra
  qrsugestao.close;
  qrsugestao.sql.clear;
  qrsugestao.sql.add('select pro.*, est.* from c000025 pro, c000100 est');
  qrsugestao.sql.add('where pro.codigo = est.codproduto and codfornecedor = '''+frmproduto_pedido.efornecedor.Text+'''');
  qrsugestao.sql.add('order by codfornecedor,produto');
  qrsugestao.open;

  bar.position := 0;
  bar.Max := qrsugestao.RecordCount;

  GRID5.SetFocus;

end;

procedure Tfrmproduto_pedido_item.GRID5KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then GRID5DblClick(frmproduto_pedido_item);
end;

procedure Tfrmproduto_pedido_item.eprodutoButtonClick(
  Sender: TObject);
begin
  resultado_pesquisa1 := '';
  frmXloc_produto := tfrmxloc_produto.create(self);
  frmXloc_produto.showmodal;




  qrloc.close;
  qrloc.sql.clear;
  qrloc.sql.add('select * from c000025 where codigo = '''+resultado_pesquisa1+'''');
  qrloc.open;

  frmmodulo.qrproduto.locate('codigo',resultado_pesquisa1,[loCaseInsensitive]);


  if resultado_pesquisa1 = '' then exit;

  eproduto.text := qrloc.fieldbyname('codigo').asstring;
  dspedido_item.dataset.fieldbyname('codproduto').asstring := qrloc.fieldbyname('codigo').asstring;
  dspedido_item.dataset.fieldbyname('unitario').asfloat := qrloc.fieldbyname('precocusto').asfloat;
  dspedido_item.dataset.fieldbyname('qtde').asfloat := 1;
  dspedido_item.dataset.fieldbyname('total').asfloat := qrloc.fieldbyname('precocusto').asfloat;


    //// verificar se produto usa grade

    if qrloc.FieldByName('usa_grade').asinteger = 1 then bgrade.visible := true else bgrade.visible := false;

  vsugestao := 0;
  dbedit2.setfocus;
end;

end.
