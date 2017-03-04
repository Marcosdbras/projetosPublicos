unit lista_notasaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_notasaida = class(TForm)
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
    qrnota: TZQuery;
    qrnotaCODIGO: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaDATA: TDateTimeField;
    qrnotaCODCLIENTE: TStringField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaICMS_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS_DESPESAS: TFloatField;
    qrnotaVALOR_TOTAL_IPI: TFloatField;
    qrnotaITENS: TIntegerField;
    qrnotaDESCONTO: TFloatField;
    qrnotaCODTRANSPORTADOR: TStringField;
    qrnotaFRETE_CONTA: TIntegerField;
    qrnotaPLACA: TStringField;
    qrnotaPLACA_UF: TStringField;
    qrnotaVOL_QTDE: TFloatField;
    qrnotaVOL_ESPECIE: TStringField;
    qrnotaVOL_MARCA: TStringField;
    qrnotaVOL_NUMERO: TStringField;
    qrnotaPESO_LIQUIDO: TFloatField;
    qrnotaPESO_BRUTO: TFloatField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaMOTIVO: TStringField;
    qrnotaFATURAMENTO_DATA1: TDateTimeField;
    qrnotaFATURAMENTO_DATA2: TDateTimeField;
    qrnotaFATURAMENTO_DATA3: TDateTimeField;
    qrnotaFATURAMENTO_DATA4: TDateTimeField;
    qrnotaFATURAMENTO_NUMERO1: TStringField;
    qrnotaFATURAMENTO_NUMERO2: TStringField;
    qrnotaFATURAMENTO_NUMERO3: TStringField;
    qrnotaFATURAMENTO_NUMERO4: TStringField;
    qrnotaFATURAMENTO_VALOR1: TFloatField;
    qrnotaFATURAMENTO_VALOR2: TFloatField;
    qrnotaFATURAMENTO_VALOR3: TFloatField;
    qrnotaFATURAMENTO_VALOR4: TFloatField;
    qrnotaCODFILIAL: TStringField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaINF1: TStringField;
    qrnotaINF2: TStringField;
    qrnotaINF3: TStringField;
    qrnotaINF4: TStringField;
    qrnotaINF5: TStringField;
    qrnotaDATA_SAIDA: TDateTimeField;
    qrnotaHORA: TStringField;
    qrnotaSITUACAO_A: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaMOVIMENTO: TStringField;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnotanome: TStringField;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label4: TLabel;
    combo_situacao: TComboBox;
    Label5: TLabel;
    combo_movimento: TComboBox;
    Label7: TLabel;
    ecfop: TEdit;
    qrnota_itemCODNOTA: TStringField;
    qrnota_itemCODPRODUTO: TStringField;
    qrnota_itemQTDE: TFloatField;
    qrnota_itemUNITARIO: TFloatField;
    qrnota_itemTOTAL: TFloatField;
    qrnota_itemIPI: TFloatField;
    qrnota_itemICMS: TFloatField;
    qrnota_itemCFOP: TStringField;
    qrnota_itemCODGRADE: TStringField;
    qrnota_itemSERIAL: TStringField;
    qrnota_itemVALOR_IPI: TFloatField;
    qrnota_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnota_itemCST: TStringField;
    qrnota_itemVALOR_ICMS: TFloatField;
    qrnota_itemICMS_REDUZIDO: TFloatField;
    qrnota_itemBASE_CALCULO: TFloatField;
    qrnota_itemMARGEM_AGREGADA: TFloatField;
    qrnota_itemBASE_SUB: TFloatField;
    qrnota_itemICMS_SUB: TFloatField;
    qrnota_itemISENTO: TFloatField;
    qrnota_itemCODLANCAMENTO: TStringField;
    qrnota_itemDESCONTO: TFloatField;
    qrnota_itemSUBTOTAL: TFloatField;
    ZQuery1: TZQuery;
    qrnota_itemproduto: TStringField;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    Bevel2: TBevel;
    qrnotatransportador: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure combo_relatorioKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmlista_notasaida: Tfrmlista_notasaida;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_notasaida.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_notasaida.FormShow(Sender: TObject);
begin
  frmmodulo.qrtransportador.open;


  combo_relatorio.ItemIndex := 0;

  combo_ordem.ItemIndex := 0;

dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);



end;

procedure Tfrmlista_notasaida.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_notasaida.bimprimirClick(Sender: TObject);
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



  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := 'MOVIMENTO: '+COMBO_MOVIMENTO.TEXT;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := 'SITUACAO: '+COMBO_SITUACAO.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := 'CFOP: '+ecfop.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: '+dateedit1.TEXT+' A '+dateedit2.TEXT;


  CASE COMBO_ORDEM.ITEMINDEX OF
  0 : ORDEM := ' ORDER BY DATA, NUMERO';
  1 : ORDEM := ' ORDER BY DATA_SAIDA, NUMERO';
  2 : ORDEM := ' ORDER BY NUMERO';
  3 : ORDEM := ' ORDER BY CFOP';
  END;




  if combo_relatorio.Text = 'NOTA FISCAL DE SAÍDA' then

  begin

    fornecedor_imp := '';
    nota := '';

    if ecfop.text <> '' then cfop := ' and cfop = '''+ecfop.text+'''' else cfop := '';
    if combo_movimento.ItemIndex = 0 then movimento := '';
    if combo_movimento.ItemIndex = 1 then movimento := ' and movimento = ''S''';
    if combo_movimento.ItemIndex = 2 then movimento := ' and movimento = ''E''';

    if combo_situacao.ItemIndex = 0 then
    situacao := '' else situacao := ' and situacao = '+inttostr(combo_situacao.itemIndex);

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+fornecedor_imp+nota+situacao+movimento+cfop+ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE SAÍDA';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000089.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE SAÍDA' then
  begin
    if combo_situacao.ItemIndex = 0 then
    situacao := '' else situacao := ' and situacao = '+inttostr(combo_situacao.itemIndex);

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+fornecedor_imp+nota+situacao+movimento+cfop+ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE ITENS DA NOTA FISCAL DE SAIDA';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000089_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+fornecedor_imp+nota+situacao+movimento+cfop+ORDEM);
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000061_2.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+fornecedor_imp+nota+situacao+movimento+cfop+ORDEM);
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTAS POR CFOP COM ITENS';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000061_3.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure Tfrmlista_notasaida.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.Text = 'NOTA FISCAL DE SAÍDA' then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000089.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.Text = 'ITENS DA NOTA FISCAL DE SAÍDA' then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000089_2.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 2 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000061_2.fr3');
    FXNOTA.DesignReport;
  end;

  if combo_relatorio.ItemIndex = 3 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000061_3.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_notasaida.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

end.
