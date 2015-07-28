unit lista_conhecimento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_conhecimento = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    Bevel1: TBevel;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnota: TZQuery;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    Label4: TLabel;
    combo_situacao: TComboBox;
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
    qrnotaCODIGO: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaDATA: TDateTimeField;
    qrnotaCFOP: TStringField;
    qrnotaCODREMETENTE: TStringField;
    qrnotaCODDESTINATARIO: TStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaTIPO: TStringField;
    qrnotaCONSIG_NOME: TStringField;
    qrnotaCONSIG_ENDERECO: TStringField;
    qrnotaCONSIG_CIDADE: TStringField;
    qrnotaCONSIG_UF: TStringField;
    qrnotaCONSIG_TIPO: TStringField;
    qrnotaCONSIG_CALCULADO: TStringField;
    qrnotaREDE_NOME: TStringField;
    qrnotaREDE_ENDERECO: TStringField;
    qrnotaREDE_CIDADE: TStringField;
    qrnotaREDE_UF: TStringField;
    qrnotaREDE_TIPO: TStringField;
    qrnotaREDE_CNPJ: TStringField;
    qrnotaCARGA_NATUREZA: TStringField;
    qrnotaCARGA_NF: TStringField;
    qrnotaCARGA_VALOR: TFloatField;
    qrnotaCARGA_QTDE: TFloatField;
    qrnotaCARGA_VOL_QTDE: TFloatField;
    qrnotaCARGA_VOL_ESPECIE: TStringField;
    qrnotaCARGA_MARCA1: TStringField;
    qrnotaCARGA_MARCA2: TStringField;
    qrnotaFRETE_PESO: TFloatField;
    qrnotaFRETE_VALOR: TFloatField;
    qrnotaFRETE_ADICIONAL: TFloatField;
    qrnotaFRETE_SEGURO: TFloatField;
    qrnotaFRETE_DESPACHO: TFloatField;
    qrnotaFRETE_OUTROS: TFloatField;
    qrnotaFRETE_TOTAL: TFloatField;
    qrnotaFRETE_TARIFA: TFloatField;
    qrnotaFRETE_BASE: TFloatField;
    qrnotaFRETE_ALIQUOTA: TIntegerField;
    qrnotaFRETE_ICMS: TFloatField;
    qrnotaFRETE_PRONT: TStringField;
    qrnotaFRETE_APOLICE: TStringField;
    qrnotaFRETE_CIA: TStringField;
    qrnotaFRETE_CARREGAR: TStringField;
    qrnotaFRETE_DESCARREGAR: TStringField;
    qrnotaCODVEICULO: TStringField;
    qrnotaCODTRANSPORTADOR: TStringField;
    qrnotaOBS: TBlobField;
    qrnotaCODFILIAL: TStringField;
    qrnotaLOCAL: TStringField;
    qrnotaMOTIVO: TStringField;
    qrnotaVEICULO_LOCAL: TStringField;
    qrnotaVEICULO_UF: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaSERIE: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaESPECIE_NF: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaDATA_NF: TDateTimeField;
    qrnotaVALOR_CONHECIMENTO: TFloatField;
    qrnotaINF1: TStringField;
    qrnotaINF2: TStringField;
    qrnotaINF3: TStringField;
    qrnotaINF4: TStringField;
    qrnotaINF5: TStringField;
    qrnotaremetente: TStringField;
    qrnotadestinatario: TStringField;
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
  frmlista_conhecimento: Tfrmlista_conhecimento;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu;

{$R *.dfm}

procedure Tfrmlista_conhecimento.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_conhecimento.FormShow(Sender: TObject);
begin
 combo_relatorio.ItemIndex := 0;
 dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);
end;

procedure Tfrmlista_conhecimento.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_conhecimento.bimprimirClick(Sender: TObject);
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



  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := 'SITUACAO: '+COMBO_SITUACAO.Text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: '+dateedit1.TEXT+' A '+dateedit2.TEXT;



    if combo_situacao.ItemIndex = 0 then
    situacao := '' else situacao := ' and situacao = '+inttostr(combo_situacao.itemIndex);

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.add('select * from c000068 where data BETWEEN :datai and :dataf '+situacao+' order by data');
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
    qrnota.open;

    frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE CONHECIMENTOS DE TRANSPORTE';
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000068_2.fr3');
    FXNOTA.ShowReport;


end;

procedure Tfrmlista_conhecimento.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000068_2.fr3');
    FXNOTA.DesignReport;

end;

procedure Tfrmlista_conhecimento.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

end.
