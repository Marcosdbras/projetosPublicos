unit lista_notacompra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, rxtooledit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton, MemDS, DBAccess, IBC;

type
  Tfrmlista_notacompra = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label7: TLabel;
    ecfop: TEdit;
    ZQuery1: TZQuery;
    qrnota: TZQuery;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    FloatField1: TFloatField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    FloatField7: TFloatField;
    FloatField8: TFloatField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField24: TFloatField;
    StringField20: TStringField;
    StringField21: TStringField;
    StringField22: TStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    StringField23: TStringField;
    StringField24: TStringField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    FloatField27: TFloatField;
    IntegerField2: TIntegerField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    FloatField30: TFloatField;
    IntegerField3: TIntegerField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    FloatField33: TFloatField;
    FloatField34: TFloatField;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    FloatField39: TFloatField;
    FloatField40: TFloatField;
    FloatField41: TFloatField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    FloatField45: TFloatField;
    FloatField46: TFloatField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    FloatField55: TFloatField;
    FloatField56: TFloatField;
    qrnota_itemCODIGO: TStringField;
    qrnota_itemITEM: TStringField;
    qrnota_itemCODNOTA: TStringField;
    qrnota_itemCODPRODUTO: TStringField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrnota_itemUN_COMPRA: TStringField;
    qrnota_itemUN_FRACAO: TStringField;
    qrnota_itemFRACAO: TFloatField;
    qrnota_itemCST: TStringField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemDESCONTO_P: TFloatField;
    qrnota_itemICMS_RETIDO: TStringField;
    qrnota_itemICMS_ALIQUOTA: TFloatField;
    qrnota_itemICMS_REDUCAO: TFloatField;
    qrnota_itemICMS_BASE: TFloatField;
    qrnota_itemICMS_VALOR: TFloatField;
    qrnota_itemICMS_VALORRETIDO: TFloatField;
    qrnota_itemICMS_ISENTO: TFloatField;
    qrnota_itemICMS_NAOTRIBUTADO: TFloatField;
    qrnota_itemSUB_MARGEM: TFloatField;
    qrnota_itemSUB_BASE: TFloatField;
    qrnota_itemSUB_VALOR: TFloatField;
    qrnota_itemIPI_TIPO: TStringField;
    qrnota_itemIPI_ALIQUOTA: TFloatField;
    qrnota_itemIPI_BASE: TFloatField;
    qrnota_itemIPI_VALOR: TFloatField;
    qrnota_itemDATA: TDateTimeField;
    qrnota_itemTIPO: TIntegerField;
    qrnota_itemNOTAFISCAL: TStringField;
    qrnota_itemFRETE: TFloatField;
    qrnota_itemOUTRAS: TFloatField;
    qrnota_itemSEGURO: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnota_itemPRODUTO: TStringField;
    Bevel2: TBevel;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    qrcompra_produto: TZQuery;
    fscompra_produto: TfrxDBDataset;
    qrentrada: TZQuery;
    fxentrada: TfrxDBDataset;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure qrnotaCalcFields(DataSet: TDataSet);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_notacompra: Tfrmlista_notacompra;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_notacompra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notacompra.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);



end;

procedure Tfrmlista_notacompra.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notacompra.bimprimirClick(Sender: TObject);
var
  fornecedor_imp,FORNECEDOR, ordem, nota  : string;
  vqtde: integer;
  vtotal: double;
  SITUACAO : string;
  cfop, movimento : string;
begin
  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := '';
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := '';


  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := 'CFOP: '+ecfop.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: '+dateedit1.TEXT+' A '+dateedit2.TEXT;
  if combo_ordem.ItemIndex = 0 then ordem := 'data_lancamento';
  if combo_ordem.ItemIndex = 1 then ordem := 'numero';
  if combo_ordem.ItemIndex = 2 then ordem := 'cfop';





  if combo_relatorio.itemindex = 0 then

  begin

    fornecedor_imp := '';
    nota := '';

    if ecfop.text <> '' then cfop := ' and cfop = '''+ecfop.text+'''' else cfop := '';


    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by '+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 1 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by '+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE COMPRA';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_3.fr3');
    FXNOTA.ShowReport;
  end;

{  if combo_relatorio.ItemIndex = 2 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by cfop,'+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+CFOP+' order by cfop,'+ordem);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP COM ITENS';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_4.fr3');
    FXNOTA.ShowReport;
  end;}


  if combo_relatorio.itemindex = 2 then
  begin
    qrcompra_produto.Close;
    qrcompra_produto.sql.clear;
    qrcompra_produto.sql.add('select');
    qrcompra_produto.sql.add('sum(c000088.qtde) total_compra,');
    qrcompra_produto.sql.add('c000088.codproduto,');
    qrcompra_produto.sql.add('c000025.produto');
    qrcompra_produto.sql.add('from');
    qrcompra_produto.sql.add('c000088,');
    qrcompra_produto.sql.add('c000025');
    qrcompra_produto.sql.add('where');
    qrcompra_produto.sql.add('c000088.codproduto = c000025.codigo');
    qrcompra_produto.sql.add('and data between :datai and :dataf');
    qrcompra_produto.sql.add('group by');
    qrcompra_produto.sql.add('c000088.codproduto,');
    qrcompra_produto.sql.add('c000025.produto');
    qrcompra_produto.sql.add('order by');
    qrcompra_produto.sql.add('c000025.produto');
    qrcompra_produto.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrcompra_produto.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrcompra_produto.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE COMPRAS DE PRODUTOS';
    frmmodulo.qrrelatorio.fieldbyname('LINHA2').asstring := 'Período: '+dateedit1.text+' a '+dateedit2.text;
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_5.fr3');
    FXNOTA.ShowReport;
  end;


  if combo_relatorio.itemindex = 3 then
  begin
    qrentrada.Close;
    qrentrada.sql.clear;
    qrentrada.sql.add('select');
    qrentrada.sql.add('sum(c000088.TOTAL) VALOR_TOTAL,');
    qrentrada.sql.add('sum(c000088.ICMS_BASE) BASE_CALCULO,');
    qrentrada.sql.add('sum(c000088.ICMS_VALOR) IMPOSTO,');
    qrentrada.sql.add('c000088.icms_aliquota,');
    qrentrada.sql.add('c000088.cst,');
    qrentrada.sql.add('c000088.cfop,');
    qrentrada.sql.add('c000087.numero,');
    qrentrada.sql.add('c000087.data_lancamento,');
    qrentrada.sql.add('c000087.especie,');
    qrentrada.sql.add('c000087.serie,');
    qrentrada.sql.add('c000009.uf');
    qrentrada.sql.add('from');
    qrentrada.sql.add('c000087,');
    qrentrada.sql.add('c000088,');
    qrentrada.sql.add('c000009');
    qrentrada.sql.add('where');
    qrentrada.sql.add('c000088.codnota = c000087.codigo');
    qrentrada.sql.add('and c000087.codfornecedor = c000009.codigo');
    qrentrada.sql.add('and C000087.data_lancamento between :datai and :dataf');
    qrentrada.sql.add('group by');
    qrentrada.sql.add('c000088.icms_aliquota,');
    qrentrada.sql.add('c000088.cst,');
    qrentrada.sql.add('c000088.cfop,');
    qrentrada.sql.add('c000087.numero,');
    qrentrada.sql.add('c000087.data_lancamento,');
    qrentrada.sql.add('c000087.especie,');
    qrentrada.sql.add('c000087.serie,');
    qrentrada.sql.add('c000009.uf');
    qrentrada.sql.add('order by');
    qrentrada.sql.add('c000087.numero');
    qrentrada.params.ParamByName('datai').asdatetime := DateEdit1.date;
    qrentrada.params.ParamByName('dataf').asdatetime := DateEdit2.date;
    qrentrada.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := dateedit1.text+' a '+dateedit2.text;
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000191.fr3');
    FXNOTA.ShowReport;
  end;





end;

procedure Tfrmlista_notacompra.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_3.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_5.fr3');
    FXNOTA.DesignReport;
  end;

{  if combo_relatorio.ItemIndex = 3 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_4.fr3');
    FXNOTA.DesignReport;
  end;
}

end;

procedure Tfrmlista_notacompra.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_notacompra.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

end.
