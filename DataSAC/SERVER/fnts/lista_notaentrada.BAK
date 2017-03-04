unit lista_notaentrada;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus;

type
  Tfrmlista_notaentrada = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    FlatPanel1: TFlatPanel;
    ViewSplit1: TViewSplit;
    bcancelar: TBitBtn;
    bimprimir: TBitBtn;
    fxdesenhar: TfrxDesigner;
    Label6: TLabel;
    combo_ordem: TComboBox;
    BitBtn1: TBitBtn;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
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
  frmlista_notaentrada: Tfrmlista_notaentrada;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_notaentrada.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notaentrada.FormShow(Sender: TObject);
begin

  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;




end;

procedure Tfrmlista_notaentrada.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notaentrada.bimprimirClick(Sender: TObject);
var
  fornecedor_imp,FORNECEDOR, ordem, nota  : string;

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

//  if combo_FORNECEDOR.Text = 'TODOS' then FORNECEDOR := '' else begin  FORNECEDOR := ' and codIGO = '''+copy(combo_FORNECEDOR.text,1,6)+''''; frmmodulo.qrrelatorio.fieldbyname('LINHA3').asstring := 'FORNECEDOR: '+COMBO_FORNECEDOR.TEXT; END;

  if combo_relatorio.Text = 'NOTA FISCAL DE ENTRADA' then

  begin


    if FRMCOMPRA_MENU.efornecedor.Text = '' then fornecedor_imp := ''  else fornecedor_imp := ' and (codfornecedor = '''+copy(FRMCOMPRA_MENU.efornecedor.text,1,6)+''')';
    if FRMCOMPRA_MENU.enumero.text = '000000' then nota := '' else nota := ' and numero = '''+FRMCOMPRA_MENU.enumero.text+'''';

    frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := FRMCOMPRA_MENU.rtotal.Value;
    frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := FRMCOMPRA_MENU.rqde.Value;

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+fornecedor_imp+nota+' order by '+COMBO_ORDEM.TEXT);
  qrnota.params.ParamByName('datai').asdatetime := FRMCOMPRA_MENU.dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := FRMCOMPRA_MENU.dateedit2.date;
  qrnota.open;


    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE ENTRADA';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;
  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE ENTRADA' then
  begin
    //qrFORNECEDOR.close;
    //qrFORNECEDOR.sql.clear;
    //qrFORNECEDOR.sql.add('select * from c000009 where NOME IS NOT NULL '+FORNECEDOR+' order by '+COMBO_ORDEM.TEXT);
    //qrFORNECEDOR.open;
    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE ENTRADA';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088.fr3');
    FXNOTA.ShowReport;
  end;

    if combo_relatorio.ItemIndex = 2 then
  begin
  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000087 where data_lancamento BETWEEN :datai and :dataf '+fornecedor_imp+nota+' order by CFOP, '+COMBO_ORDEM.TEXT);
  qrnota.params.ParamByName('datai').asdatetime := FRMCOMPRA_MENU.dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := FRMCOMPRA_MENU.dateedit2.date;
  qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS DE ENTRADA POR CFOP';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_2.fr3');
    FXNOTA.ShowReport;
  end;

end;

procedure Tfrmlista_notaentrada.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'NOTA FISCAL DE ENTRADA' then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE ENTRADA' then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.Text = 'RELAÇÃO DE NOTAS POR CFOP' then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000088_2.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_notaentrada.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

end;

procedure Tfrmlista_notaentrada.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

end.
