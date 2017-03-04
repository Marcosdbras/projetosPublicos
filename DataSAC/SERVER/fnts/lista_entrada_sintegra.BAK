unit lista_entrada_sintegra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask, ToolEdit, Collection, TFlatPanelUnit,
  Buttons, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, frxClass,
  frxDBSet, frxDesgn, Menus, AdvGlowButton;

type
  Tfrmlista_entrada_sintegra = class(TForm)
    Label1: TLabel;
    combo_relatorio: TComboBox;
    ViewSplit1: TViewSplit;
    fxdesenhar: TfrxDesigner;
    fxnota: TfrxReport;
    fsnota: TfrxDBDataset;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    qrnota_item: TZQuery;
    fsnota_item: TfrxDBDataset;
    dsnota: TDataSource;
    ZQuery1: TZQuery;
    qrnota: TZQuery;
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
    qrnotaCODIGO: TStringField;
    qrnotaTURBO: TIntegerField;
    qrnotaTIPO: TStringField;
    qrnotaCODIGO_EMPRESA: TIntegerField;
    qrnotaCFOP: TStringField;
    qrnotaNOTAFISCAL: TStringField;
    qrnotaSERIE: TStringField;
    qrnotaSUBSERIE: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaSINTEGRA: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaS_TRIB: TStringField;
    qrnotaCODIGO_CLIENTE: TIntegerField;
    qrnotaCPF_CLIENTE: TStringField;
    qrnotaCNPJ_CLIENTE: TStringField;
    qrnotaIE_CLIENTE: TStringField;
    qrnotaUF_IE_CLIENTE: TStringField;
    qrnotaTIPO_VENDA: TStringField;
    qrnotaTIPO_FRETE: TStringField;
    qrnotaDATA: TDateTimeField;
    qrnotaDATA_ESCRITURACAO: TDateTimeField;
    qrnotaCODIGO_CONTABIL: TIntegerField;
    qrnotaDESDOBRAMENTO: TStringField;
    qrnotaVALOR_CONTABIL: TFloatField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaCONDPGTO: TStringField;
    qrnotaCONDICAO_PAGAMENTO: TStringField;
    qrnotaCODEMPRESA: TIntegerField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS_CREDITADO: TFloatField;
    qrnotaVALOR_ICMS_ISENTAS: TFloatField;
    qrnotaVALOR_ICMS_OUTRAS: TFloatField;
    qrnotaALIQUOTA_IPI: TFloatField;
    qrnotaBASE_IPI: TFloatField;
    qrnotaVALOR_IPI_CREDITADO: TFloatField;
    qrnotaVALOR_IPI_CREDITADO50: TFloatField;
    qrnotaVALOR_IPI_ISENTAS: TFloatField;
    qrnotaVALOR_IPI_OUTRAS: TFloatField;
    qrnotaVALOR_IPI_NAO_CREDITADO: TFloatField;
    qrnotaBASE_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_SUBSTITUICAO: TFloatField;
    qrnotaVALOR_FRETE: TFloatField;
    qrnotaVALOR_SEGURO: TFloatField;
    qrnotaVALOR_DESPESAS: TFloatField;
    qrnotaALIQUOTA_ISS: TFloatField;
    qrnotaVALOR_ISS: TFloatField;
    qrnotaOBS3: TStringField;
    qrnotaCONTABIL: TIntegerField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaCODIGO_MINICIPIO: TIntegerField;
    qrnotaCNPJ: TStringField;
    qrnotaINSC_ESTADUAL: TStringField;
    qrnotaUF: TStringField;
    qrnotaCODIGO_PISCONFINS: TStringField;
    qrnotaNOTA_CANCELADA: TStringField;
    qrnotaOBSERVACAO: TBlobField;
    qrnotaTRANSPORTE_NOME: TStringField;
    qrnotaTRANSPORTE_PLACA: TStringField;
    qrnotaTRANSPORTE_UF: TStringField;
    qrnotaTRANSPORTE_CNPJCPF: TStringField;
    qrnotaTRANSPORTE_ENDERECO: TStringField;
    qrnotaTRANSPORTE_CIDADE: TStringField;
    qrnotaTRANSPORTE_MUNICIPIO_UF: TStringField;
    qrnotaTRANSPORTE_IE: TStringField;
    qrnotaTRANSPORTE_QUANTIDADE: TFloatField;
    qrnotaTRANSPORTE_MARCA: TStringField;
    qrnotaTRANSPORTE_ESPECIE: TStringField;
    qrnotaTRANSPORTE_NUMERO: TStringField;
    qrnotaTRANSPORTE_PESO_BRUTO: TFloatField;
    qrnotaTRANSPORTE_PESO_LIQUIDO: TFloatField;
    qrnotaFORNECEDOR: TStringField;
    QUERY: TZQuery;
    Panel1: TPanel;
    bimprimir: TAdvGlowButton;
    bitbtn1: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
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
  frmlista_entrada_sintegra: Tfrmlista_entrada_sintegra;

implementation

uses loc_cliente, modulo, loc_funci, loc_veiculo, loc_setor, loc_regiao,
  xloc_cliente, principal, xloc_fornecedor, compra_menu, sintegra_gerar;

{$R *.dfm}

procedure Tfrmlista_entrada_sintegra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmlista_entrada_sintegra.FormShow(Sender: TObject);
begin
  combo_relatorio.ItemIndex := 0;
end;

procedure Tfrmlista_entrada_sintegra.bcancelarClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmlista_entrada_sintegra.bimprimirClick(Sender: TObject);
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

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := 'PERIODO: '+frmsintegra_gerar.dateedit1.TEXT+' A '+frmsintegra_gerar.dateedit2.TEXT;

  IF XENTRADA THEN
  BEGIN

    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.Text := frmsintegra_gerar.qrentrada_check.sql.text;
    qrnota.open;
  END
  ELSE
  BEGIN
    qrnota.close;
    qrnota.sql.clear;
    qrnota.SQL.Text := frmsintegra_gerar.QRsaida_check.sql.text;
    qrnota.open;
  END;


  if combo_relatorio.itemindex = 0 then
  begin
    IF XENTRADA THEN
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA - FORNECEDOR'
    else
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE EMITIDA - FORNECEDOR';

    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000094.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 1 then
  begin
    qrnota.close;
    qrnota.sql.clear;
    IF XENTRADA THEN
    BEGIN
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE COMPRA POR CFOP';
       qrnota.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY CFOP,NOTAFISCAL');
    END
    else
    BEGIN
      frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RELAÇÃO DE NOTA FISCAL DE EMITIDA POR CFOP';
      qrnota.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY CFOP,NOTAFISCAL');
    END;
    qrnota.open;
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000095.fr3');
    FXNOTA.ShowReport;
  end;

  if combo_relatorio.itemindex = 2 then
  begin
    qrnota.close;
    qrnota.sql.clear;

    IF XENTRADA THEN
      begin
        frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DAS NOTAS FISCAIS DE ENTRADA';
        qrnota.SQL.ADD('SELECT * FROM SINTEGRA_ENTRADA ORDER BY DATA_ESCRITURACAO');
      end
    else
      begin
        frmmodulo.qrrelatorio.fieldbyname('LINHA1').asstring := 'RESUMO DAS NOTAS FISCAIS DE SAÍDA';
        qrnota.SQL.ADD('SELECT * FROM SINTEGRA_SAIDA ORDER BY DATA_ESCRITURACAO');
      end;

    qrnota.open;
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000127.fr3');
    FXNOTA.ShowReport;
  end;


end;

procedure Tfrmlista_entrada_sintegra.BitBtn1Click(Sender: TObject);
begin
  if not frmprincipal.autentica('Editar Relatórios',4) then
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
    exit;
  end;



  if combo_relatorio.itemindex = 0 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000094.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 1 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000095.fr3');
    FXNOTA.DesignReport;
  end;
  if combo_relatorio.itemindex = 2 then
  begin
    FXNOTA.LoadFromFile('\DATASAC\server\rel\f000127.fr3');
    FXNOTA.DesignReport;
  end;

end;

procedure Tfrmlista_entrada_sintegra.qrnotaCalcFields(DataSet: TDataSet);
begin
  //if QRFORNECEDORTIPO.Value = 2 then QRFORNECEDORpessoa.Value := 'JURIDICA' else QRFORNECEDORpessoa.Value := 'FISICA';

  IF XENTRADA THEN
  BEGIN
  QUERY.CLOSE;
  QUERY.SQL.CLEAR;
  QUERY.SQL.ADD('SELECT * FROM C000009 WHERE CODIGO = '''+frmPrincipal.zerarcodigo(QRNOTA.FIELDBYNAME('CODIGO_CLIENTE').ASSTRING,6)+'''');
  QUERY.OPEN;

  QRNOTA.FIELDBYNAME('FORNECEDOR').ASSTRING := QUERY.FIELDBYNAME('NOME').ASSTRING;

  END
  ELSE
  BEGIN
  QUERY.CLOSE;
  QUERY.SQL.CLEAR;
  QUERY.SQL.ADD('SELECT * FROM C000007 WHERE CODIGO = '''+frmPrincipal.zerarcodigo(QRNOTA.FIELDBYNAME('CODIGO_CLIENTE').ASSTRING,6)+'''');
  QUERY.OPEN;

  QRNOTA.FIELDBYNAME('FORNECEDOR').ASSTRING := QUERY.FIELDBYNAME('NOME').ASSTRING;


  END;

end;

procedure Tfrmlista_entrada_sintegra.combo_relatorioKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

end.
