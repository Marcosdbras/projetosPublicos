unit produto_importanf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Mask, rxtooledit, Menus, Buttons,
  TFlatPanelUnit, Collection, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvGlowButton, Grids, DBGrids, Wwdbigrd,
  Wwdbgrid, DB, ImgList, AdvToolBar, AdvToolBarStylers, RzEdit;

type
  Tfrmproduto_importanf = class(TForm)
    Pop2: TPopupMenu;
    Cancelar1: TMenuItem;
    Confirma1: TMenuItem;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    ImageList1: TImageList;
    dsnota: TDataSource;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    Pesquisa1: TMenuItem;
    Panel1: TPanel;
    bincluir: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    Bevel1: TBevel;
    Panel2: TPanel;
    Label22: TLabel;
    Label5: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    Bevel2: TBevel;
    GRID: TwwDBGrid;
    Panel3: TPanel;
    Bevel3: TBevel;
    Label56: TLabel;
    Label18: TLabel;
    Label1: TLabel;
    edata_inicio: TDateEdit;
    edata_final: TDateEdit;
    ENUMERO: TEdit;
    bfiltrar: TAdvGlowButton;
    procedure Cancelar1Click(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure edata_inicioEnter(Sender: TObject);
    procedure edata_inicioExit(Sender: TObject);
    procedure edata_inicioKeyPress(Sender: TObject; var Key: Char);
    procedure bfecharClick(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure Confirma1Click(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure GRIDDblClick(Sender: TObject);
    procedure GRIDKeyPress(Sender: TObject; var Key: Char);
    procedure Pesquisa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmproduto_importanf: Tfrmproduto_importanf;

implementation

uses modulo, produto_entrada, principal;

{$R *.dfm}

procedure Tfrmproduto_importanf.Cancelar1Click(Sender: TObject);
begin
  bfecharClick(frmproduto_importanf);
end;

procedure Tfrmproduto_importanf.BfiltrarClick(Sender: TObject);
var
  nota : string;
begin

  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

  frmmodulo.qradic_nota.close;
  frmmodulo.qradic_nota.sql.clear;
  frmmodulo.qradic_nota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+nota+' order by data_lancamento');
  frmmodulo.qradic_nota.params.ParamByName('datai').asdatetime := edata_inicio.date;
  frmmodulo.qradic_nota.params.ParamByName('dataf').asdatetime := edata_final.date;
  frmmodulo.qradic_nota.open;

  btotaliza_notaClick(frmproduto_importanf);

  ENUMERO.Text := '';

  //frmmodulo.qradic_nota.First;
  GRID.SetFocus;

end;

procedure Tfrmproduto_importanf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
  frmmodulo.qradic_nota.Close;
  frmmodulo.qradic_nota_item.Close;
end;

procedure Tfrmproduto_importanf.edata_inicioEnter(Sender: TObject);
begin
tedit(sender).Color := $00A0FAF8;

end;

procedure Tfrmproduto_importanf.edata_inicioExit(Sender: TObject);
begin
tedit(sender).Color := clwindow;

end;

procedure Tfrmproduto_importanf.edata_inicioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bfiltrar.setfocus;

end;

procedure Tfrmproduto_importanf.bfecharClick(Sender: TObject);
begin
  Close;
end;

procedure Tfrmproduto_importanf.bincluirClick(Sender: TObject);
var
  vcus,vven : double;
  itens : integer;
begin

  // nota fiscal
  frmmodulo.qrentrada_produto.insert;
  frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring := frmprincipal.codifica('000031');
  frmmodulo.qrentrada_produto.FieldByName('NUMERO').AsString := frmmodulo.qradic_notaNUMERO.AsString;
  frmmodulo.qrentrada_produto.FieldByName('CFOP').AsString   := frmmodulo.qradic_notaCFOP.AsString;
  frmmodulo.qrentrada_produto.FieldByName('DATA').AsDateTime := frmmodulo.qradic_notaDATA_EMISSAO.AsDateTime;
  frmmodulo.qrentrada_produto.FieldByName('CODFORNECEDOR').AsString := frmmodulo.qradic_notaCODFORNECEDOR.AsString;

  frmmodulo.qrentrada_produto.FieldByName('BASE_CALCULO').AsFloat := frmmodulo.qradic_notaCONF_BASEICMS.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('VALOR_ICMS').AsFloat := frmmodulo.qradic_notaCONF_VALORICMS.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('BASE_SUB').AsFloat := frmmodulo.qradic_notaCONF_BASESUB.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('ICMS_SUB').AsFloat := frmmodulo.qradic_notaCONF_VALORSUB.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('FRETE').AsFloat := frmmodulo.qradic_notaCONF_FRETE.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('SEGURO').AsFloat := frmmodulo.qradic_notaCONF_SEGURO.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('OUTRAS_DESPESAS').AsFloat := frmmodulo.qradic_notaCONF_OUTRAS.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('VALOR_TOTAL_IPI').AsFloat := frmmodulo.qradic_notaCONF_IPI.AsFloat;

  frmmodulo.qrentrada_produto.FieldByName('VALOR_PRODUTOS').AsFloat := frmmodulo.qradic_notaCONF_TOTALPRODUTOS.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('DESCONTO').AsFloat := frmmodulo.qradic_notaCONF_DESCONTO.AsFloat;
  frmmodulo.qrentrada_produto.FieldByName('TOTAL_NOTA').AsFloat := frmmodulo.qradic_notaCONF_TOTALNOTA.AsFloat;


  // item da nota fiscal
  frmmodulo.qradic_nota_item.close;
  frmmodulo.qradic_nota_item.sql.clear;
  frmmodulo.qradic_nota_item.SQL.add('select * from c000088 where NOTAFISCAL = :NOTA');
  frmmodulo.qradic_nota_item.params.ParamByName('NOTA').AsString := frmmodulo.qradic_notaNUMERO.AsString;
  frmmodulo.qradic_nota_item.open;
  frmmodulo.qradic_nota_item.First;
                    itens := 0;
  while not frmmodulo.qradic_nota_item.Eof do
  begin

    // altera preco de custo e venda
    frmmodulo.qradic.close;
    frmmodulo.qradic.sql.clear;
    frmmodulo.qradic.SQL.add('select * from c000025');
    frmmodulo.qradic.SQL.add('where codigo = :vcod');
    frmmodulo.qradic.params.ParamByName('vcod').AsString := frmmodulo.qradic_nota_itemCODPRODUTO.AsString;
    frmmodulo.qradic.open;
    if frmmodulo.qradic.RecordCount > 0 then
      begin
        vcus := frmmodulo.qradic.fieldbyname('precocusto').AsFloat;
        vven := frmmodulo.qradic.fieldbyname('precovenda').AsFloat;
      end;

    IF frmmodulo.qrproduto.LOCATE('codigo',frmmodulo.qradic_nota_itemCODPRODUTO.AsString,[loCaseInsensitive]) THEN
      begin

        ///////// LANÇAR DADOS DA ULTIMA COMPRA PARA CAMPO ANTERIORES /////////

        frmmodulo.qrproduto.Edit;
        frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA_ANTERIOR').asstring := frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring;
        frmmodulo.qrproduto.FieldByName('notafiscal_ANTERIOR').asstring :=        frmmodulo.qrproduto.FieldByName('notafiscal').asstring;
        frmmodulo.qrproduto.FieldByName('codfornecedor_ANTERIOR').asstring :=     frmmodulo.qrproduto.FieldByName('codfornecedor').asstring;

        frmmodulo.qrproduto.FieldByName('DATA_ULTIMACOMPRA').asstring := frmmodulo.qrentrada_produto.FieldByName('DATA').AsString;
        frmmodulo.qrproduto.FieldByName('notafiscal').asstring :=        frmmodulo.qrentrada_produto.fieldbyname('numero').asstring;
        frmmodulo.qrproduto.FieldByName('codfornecedor').asstring :=     frmmodulo.qrentrada_produto.fieldbyname('codfornecedor').asstring;
        
        frmmodulo.qrproduto.FieldByName('precocusto').AsFloat := vcus;
        frmmodulo.qrproduto.FieldByName('precovenda').AsFloat := vven;

        frmmodulo.qrproduto.Post;

        /////////  INCLUI O ITEM


        frmproduto_entrada.qrentrada_item.insert;
        frmproduto_entrada.qrentrada_item.fieldbyname('codigo').asstring := frmprincipal.codifica('000032');
        frmproduto_entrada.qrentrada_item.fieldbyname('unitario').asfloat := frmmodulo.qradic_nota_itemUNITARIO.AsFloat;
        frmproduto_entrada.qrentrada_item.fieldbyname('qtde').asfloat     := frmmodulo.qradic_nota_itemQTDE.AsFloat*frmmodulo.qradic_nota_itemFRACAO.AsFloat;
        //frmproduto_entrada.qrentrada_item.fieldbyname('fracao').asfloat     := frmmodulo.qradic_nota_itemFRACAO.AsFloat;
        frmproduto_entrada.qrentrada_item.fieldbyname('total').asfloat    := frmmodulo.qradic_nota_itemTOTAL.AsFloat;
        frmproduto_entrada.qrentrada_item.fieldbyname('codproduto').asstring := frmmodulo.qradic_nota_itemCODPRODUTO.AsString;
        frmproduto_entrada.qrentrada_item.fieldbyname('unidade').asstring := frmmodulo.qradic_nota_itemUN_COMPRA.AsString;
        frmproduto_entrada.qrentrada_item.fieldbyname('cfop').asstring := frmmodulo.qradic_nota_itemCFOP.AsString;

        frmproduto_entrada.qrentrada_item.fieldbyname('icms').asfloat    := frmmodulo.qradic_nota_itemICMS_ALIQUOTA.AsFloat;
        frmproduto_entrada.qrentrada_item.fieldbyname('valor_icms').asfloat    := frmmodulo.qradic_nota_itemICMS_VALOR.AsFloat;

        frmproduto_entrada.qrentrada_item.fieldbyname('ipi').asfloat    := frmmodulo.qradic_nota_itemIPI_ALIQUOTA.AsFloat;
        frmproduto_entrada.qrentrada_item.fieldbyname('valor_ipi').asfloat    := frmmodulo.qradic_nota_itemIPI_VALOR.AsFloat;

        frmproduto_entrada.qrentrada_item.FieldByName('codnota').AsString := frmmodulo.qrentrada_produto.fieldbyname('codigo').asstring;
        frmproduto_entrada.qrentrada_item.FieldByName('numeronota').AsString := frmmodulo.qrentrada_produto.FieldByName('NUMERO').AsString;
        frmproduto_entrada.qrentrada_item.FieldByName('data').asstring := frmmodulo.qradic_nota_itemDATA.AsString;
        frmproduto_entrada.qrentrada_item.fieldbyname('movimento').asinteger := 1;
        frmproduto_entrada.qrentrada_item.Post;
        itens := itens + 1;

       end
     else
       begin
         if application.messagebox(Pchar ('O Código do Produto ' +
            frmmodulo.qradic_nota_itemCODPRODUTO.AsString +
            ' Não Encontrado, Continua?  ') ,'Verificando Produtos',mb_yesno+MB_ICONQUESTION) = idno then
               Break;
       end;
    frmmodulo.qradic_nota_item.Next;
  end;

  frmmodulo.qrentrada_produto.fieldbyname('ITENS').asinteger := itens;
  frmmodulo.qrentrada_produto.Post;


  bfecharClick(frmproduto_importanf);

end;

procedure Tfrmproduto_importanf.Confirma1Click(Sender: TObject);
begin
  bincluirClick(frmproduto_importanf);
end;

procedure Tfrmproduto_importanf.btotaliza_notaClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dsnota.DataSet := nil;
  frmmodulo.qradic_nota.first;
  while not frmmodulo.qradic_nota.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + frmmodulo.qradic_nota.fieldbyname('total_nota').asfloat;
     frmmodulo.qradic_nota.next;
  end;
  dsnota.DataSet := frmmodulo.qradic_nota;

end;

procedure Tfrmproduto_importanf.FormShow(Sender: TObject);
begin
 edata_inicio.text := '01/'+copy(datetostr(date),4,7);
 edata_final.date := frmprincipal.UltimoDiaMes(date);

 BfiltrarClick(frmproduto_importanf);
end;

procedure Tfrmproduto_importanf.ENUMEROExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
  ENUMERO.Text := frmPrincipal.zerarcodigo(ENUMERO.Text,6);
  BfiltrarClick(frmproduto_importanf);
end;

procedure Tfrmproduto_importanf.GRIDDblClick(Sender: TObject);
begin
    bincluirClick(frmproduto_importanf);
end;

procedure Tfrmproduto_importanf.GRIDKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then bincluirClick(frmproduto_importanf);

end;

procedure Tfrmproduto_importanf.Pesquisa1Click(Sender: TObject);
begin
  ENUMERO.SetFocus;
end;

end.
