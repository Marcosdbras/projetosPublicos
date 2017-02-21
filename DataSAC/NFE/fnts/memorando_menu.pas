unit memorando_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, AdvMenus, AdvToolBar, AdvToolBarStylers, AdvPreviewMenu,
  AdvPreviewMenuStylers, AdvOfficeStatusBar, AdvOfficeStatusBarStylers,
  ImgList, frxClass, frxPreview, StdCtrls, RzEdit, Grids, Wwdbigrd,
  Wwdbgrid, AdvGlowButton, Mask, rxtooledit, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ExtCtrls, DBCtrls, RzDBNav, RzDBEdit,
  Collection, RzPanel;

type
  Tfrmmemorando_menu = class(TForm)
    AdvOfficeStatusBar2: TAdvOfficeStatusBar;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    Bfiltrar: TAdvGlowButton;
    tab_principal: TAdvToolBarPager;
    AdvPage1: TAdvPage;
    AdvPage2: TAdvPage;
    AdvOfficeStatusBar1: TAdvOfficeStatusBar;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    ImageList1: TImageList;
    ImageList2: TImageList;
    AdvOfficeStatusBarOfficeStyler5: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeStatusBarOfficeStyler4: TAdvOfficeStatusBarOfficeStyler;
    AdvPreviewMenu1: TAdvPreviewMenu;
    AdvPreviewMenuOfficeStyler1: TAdvPreviewMenuOfficeStyler;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    qrmemorando: TZQuery;
    dsmemorando: TDataSource;
    qrfornecedor: TZQuery;
    qrapoio: TZQuery;
    qrapoioCODPRODUTO: TStringField;
    qrapoioPRODUTO: TStringField;
    qrapoioCF: TStringField;
    qrapoioSTR: TStringField;
    qrapoioUN: TStringField;
    qrapoioQTDE: TStringField;
    qrapoioUNITARIO: TStringField;
    qrapoioTOTAL: TStringField;
    qrapoioICMS: TStringField;
    qrapoioIPI: TStringField;
    qrapoioIPI_ALIQUOTA: TStringField;
    qrapoioTEXTO1: TStringField;
    qrapoioTEXTO2: TStringField;
    qrapoioTEXTO3: TStringField;
    qrapoioTEXTO4: TStringField;
    qrapoioTEXTO6: TStringField;
    qrapoioTEXTO7: TStringField;
    qrapoioTEXTO8: TStringField;
    qrapoioTEXTO9: TStringField;
    qrapoioTEXTO10: TStringField;
    Qrsoma: TZQuery;
    qrmemorando_entrada: TZQuery;
    dsmemorando_entrada: TDataSource;
    qrmemorando_entradaMEMORANDO: TStringField;
    qrmemorando_entradaNOTAFISCAL: TStringField;
    qrmemorando_entradaNF_DATA: TDateTimeField;
    qrmemorando_entradaNF_MODELO: TStringField;
    qrmemorando_entradaNF_SERIE: TStringField;
    qrmemorando_entradaNF_QUANTIDADE: TFloatField;
    qrmemorando_entradaNF_UNIDADE: TStringField;
    dsnotafiscal_item: TDataSource;
    qrnotafiscal_item: TZQuery;
    qrnotafiscal_itemCODPRODUTO: TStringField;
    qrnotafiscal_itemproduto: TStringField;
    qrnotafiscal_itemCLASSIFICACAO_FISCAL: TStringField;
    qrnotafiscal_itemCST: TStringField;
    qrnotafiscal_itemICMS: TFloatField;
    qrnotafiscal_itemIPI: TFloatField;
    qrnotafiscal_itemCFOP: TStringField;
    qrnotafiscal_itemQTDE: TFloatField;
    qrnotafiscal_itemUNITARIO: TFloatField;
    qrnotafiscal_itemDESCONTO: TFloatField;
    qrnotafiscal_itemTOTAL: TFloatField;
    qrnotafiscal_itemISENTO: TFloatField;
    qrnotafiscal_itemCODLANCAMENTO: TStringField;
    qrnotafiscal_itemCODNOTA: TStringField;
    qrnotafiscal_itemunidade: TStringField;
    qrnotafiscal_itemCODGRADE: TStringField;
    qrnotafiscal_itemSERIAL: TStringField;
    qrnotafiscal_itemVALOR_IPI: TFloatField;
    qrnotafiscal_itemVALOR_ICMS: TFloatField;
    qrnotafiscal_itemICMS_REDUZIDO: TFloatField;
    qrnotafiscal_itemBASE_CALCULO: TFloatField;
    qrnotafiscal_itemMARGEM_AGREGADA: TFloatField;
    qrnotafiscal_itemBASE_SUB: TFloatField;
    qrnotafiscal_itemICMS_SUB: TFloatField;
    qrnotafiscal_itemSUBTOTAL: TFloatField;
    qrnotafiscal_itemPESO_BRUTO: TFloatField;
    qrnotafiscal_itemPESO_LIQUIDO: TFloatField;
    qrnotafiscal: TZQuery;
    dsnotafiscal: TDataSource;
    qrnotafiscalCODIGO: TStringField;
    qrnotafiscalNUMERO: TStringField;
    qrnotafiscalCFOP: TStringField;
    qrnotafiscalDATA: TDateTimeField;
    qrnotafiscalCODCLIENTE: TStringField;
    qrnotafiscalVALOR_PRODUTOS: TFloatField;
    qrnotafiscalTOTAL_NOTA: TFloatField;
    qrnotafiscalBASE_CALCULO: TFloatField;
    qrnotafiscalVALOR_ICMS: TFloatField;
    qrnotafiscalBASE_SUB: TFloatField;
    qrnotafiscalICMS_SUB: TFloatField;
    qrnotafiscalFRETE: TFloatField;
    qrnotafiscalSEGURO: TFloatField;
    qrnotafiscalOUTRAS_DESPESAS: TFloatField;
    qrnotafiscalVALOR_TOTAL_IPI: TFloatField;
    qrnotafiscalITENS: TIntegerField;
    qrnotafiscalDESCONTO: TFloatField;
    qrnotafiscalCODTRANSPORTADOR: TStringField;
    qrnotafiscalFRETE_CONTA: TIntegerField;
    qrnotafiscalPLACA: TStringField;
    qrnotafiscalPLACA_UF: TStringField;
    qrnotafiscalVOL_QTDE: TFloatField;
    qrnotafiscalVOL_ESPECIE: TStringField;
    qrnotafiscalVOL_MARCA: TStringField;
    qrnotafiscalVOL_NUMERO: TStringField;
    qrnotafiscalPESO_LIQUIDO: TFloatField;
    qrnotafiscalPESO_BRUTO: TFloatField;
    qrnotafiscalSITUACAO: TIntegerField;
    qrnotafiscalMOTIVO: TStringField;
    qrnotafiscalFATURAMENTO_DATA1: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA2: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA3: TDateTimeField;
    qrnotafiscalFATURAMENTO_DATA4: TDateTimeField;
    qrnotafiscalFATURAMENTO_NUMERO1: TStringField;
    qrnotafiscalFATURAMENTO_NUMERO2: TStringField;
    qrnotafiscalFATURAMENTO_NUMERO3: TStringField;
    qrnotafiscalFATURAMENTO_NUMERO4: TStringField;
    qrnotafiscalFATURAMENTO_VALOR1: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR2: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR3: TFloatField;
    qrnotafiscalFATURAMENTO_VALOR4: TFloatField;
    qrnotafiscalCODFILIAL: TStringField;
    qrnotafiscalOBS1: TStringField;
    qrnotafiscalOBS2: TStringField;
    qrnotafiscalOBS3: TStringField;
    qrnotafiscalINF1: TStringField;
    qrnotafiscalINF2: TStringField;
    qrnotafiscalINF3: TStringField;
    qrnotafiscalINF4: TStringField;
    qrnotafiscalINF5: TStringField;
    qrnotafiscalDATA_SAIDA: TDateTimeField;
    qrnotafiscalHORA: TStringField;
    qrnotafiscalSITUACAO_A: TStringField;
    qrnotafiscalMODELO_NF: TStringField;
    qrnotafiscalSERIE_NF: TStringField;
    qrnotafiscalVALOR_ISENTO_ICMS: TFloatField;
    qrnotafiscalALIQUOTA_ICMS: TFloatField;
    qrnotafiscalSIT: TStringField;
    qrnotafiscalCODLANCAMENTO: TStringField;
    qrnotafiscalMOVIMENTO: TStringField;
    RzDBNavigator1: TRzDBNavigator;
    HeaderView1: THeaderView;
    Label3: TLabel;
    HeaderView2: THeaderView;
    Label5: TLabel;
    grid: TwwDBGrid;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    RzDBEdit1: TRzDBEdit;
    RzDBEdit2: TRzDBEdit;
    RzDBEdit3: TRzDBEdit;
    RzDBEdit4: TRzDBEdit;
    Label10: TLabel;
    RzDBEdit5: TRzDBEdit;
    Label11: TLabel;
    RzDBEdit6: TRzDBEdit;
    RzDBEdit7: TRzDBEdit;
    RzDBEdit8: TRzDBEdit;
    RzDBEdit9: TRzDBEdit;
    RzDBEdit10: TRzDBEdit;
    RzDBEdit11: TRzDBEdit;
    RzDBEdit12: TRzDBEdit;
    Label12: TLabel;
    RzDBEdit13: TRzDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    RzDBEdit14: TRzDBEdit;
    Label16: TLabel;
    AdvOfficeStatusBar15: TAdvOfficeStatusBar;
    Label18: TLabel;
    AdvOfficeStatusBar3: TAdvOfficeStatusBar;
    Label17: TLabel;
    Label19: TLabel;
    RzDBEdit15: TRzDBEdit;
    Label20: TLabel;
    RzDBEdit16: TRzDBEdit;
    Label21: TLabel;
    RzDBEdit17: TRzDBEdit;
    RzDBEdit18: TRzDBEdit;
    RzDBEdit19: TRzDBEdit;
    RzDBEdit20: TRzDBEdit;
    Label22: TLabel;
    RzDBEdit21: TRzDBEdit;
    Label23: TLabel;
    Label24: TLabel;
    pop: TPopupMenu;
    Incluir1: TMenuItem;
    IMprimir1: TMenuItem;
    Retorna1: TMenuItem;
    Label25: TLabel;
    Alterar1: TMenuItem;
    apagar1: TMenuItem;
    ememorando: TRzEdit;
    pesquisa1: TMenuItem;
    qrnotafiscalBAIXA_ESTOQUE: TStringField;
    qrcliente: TZQuery;
    qrclienteCODIGO: TStringField;
    qrclienteNOME: TStringField;
    qrclienteAPELIDO: TStringField;
    qrclienteENDERECO: TStringField;
    qrclienteBAIRRO: TStringField;
    qrclienteCIDADE: TStringField;
    qrclienteUF: TStringField;
    qrclienteCEP: TStringField;
    qrclienteCOMPLEMENTO: TStringField;
    qrclienteMORADIA: TIntegerField;
    qrclienteTIPO: TIntegerField;
    qrclienteSITUACAO: TIntegerField;
    qrclienteTELEFONE1: TStringField;
    qrclienteTELEFONE2: TStringField;
    qrclienteTELEFONE3: TStringField;
    qrclienteCELULAR: TStringField;
    qrclienteEMAIL: TStringField;
    qrclienteRG: TStringField;
    qrclienteCPF: TStringField;
    qrclienteFILIACAO: TStringField;
    qrclienteESTADOCIVIL: TStringField;
    qrclienteCONJUGE: TStringField;
    qrclientePROFISSAO: TStringField;
    qrclienteEMPRESA: TStringField;
    qrclienteRENDA: TFloatField;
    qrclienteLIMITE: TFloatField;
    qrclienteREF1: TStringField;
    qrclienteREF2: TStringField;
    qrclienteCODVENDEDOR: TStringField;
    qrclienteDATA_CADASTRO: TDateTimeField;
    qrclienteDATA_ULTIMACOMPRA: TDateTimeField;
    qrclienteOBS1: TStringField;
    qrclienteOBS2: TStringField;
    qrclienteOBS3: TStringField;
    qrclienteOBS4: TStringField;
    qrclienteOBS5: TStringField;
    qrclienteOBS6: TStringField;
    qrclienteNASCIMENTO: TStringField;
    qrclienteCODREGIAO: TStringField;
    qrclienteCODCONVENIO: TStringField;
    qrclienteCODUSUARIO: TStringField;
    qrmemorandoCODIGO: TStringField;
    qrmemorandoDATA: TDateTimeField;
    qrmemorandoMEMORANDO: TStringField;
    qrmemorandoNOTAFISCAL: TStringField;
    qrmemorandoNOTAFISCAL_MODELO: TStringField;
    qrmemorandoNOTAFISCAL_SERIE: TStringField;
    qrmemorandoNOTAFISCAL_DATA: TDateTimeField;
    qrmemorandoDESPACHO: TStringField;
    qrmemorandoDESPACHO_DATA: TDateTimeField;
    qrmemorandoREGISTRO: TStringField;
    qrmemorandoREGISTRO_DATA: TDateTimeField;
    qrmemorandoCONHECIMENTO_EMBARQUE: TStringField;
    qrmemorandoCONHECIMENTO_EMBARQUE_DATA: TDateTimeField;
    qrmemorandoESTADO_FABRICANTE: TStringField;
    qrmemorandoPAIS_DESTINO: TStringField;
    qrmemorandoCODFORNECEDOR: TStringField;
    qrmemorandoCONHECIMENTO: TStringField;
    qrmemorandoCONHECIMENTO_MODELO: TStringField;
    qrmemorandoCONHECIMENTO_SERIE: TStringField;
    qrmemorandoCONHECIMENTO_DATA: TDateTimeField;
    qrmemorandoTRANSPORTADOR_CODIGO: TStringField;
    qrmemorandoTRANSPORTADOR_NOME: TStringField;
    qrmemorandoTRANSPORTADOR_ENDERECO: TStringField;
    qrmemorandoTRANSPORTADOR_BAIRRO: TStringField;
    qrmemorandoTRANSPORTADOR_CIDADE: TStringField;
    qrmemorandoTRANSPORTADOR_UF: TStringField;
    qrmemorandoTRANSPORTADOR_PAIS: TStringField;
    qrmemorandoTRANSPORTADOR_CNPJCPF: TStringField;
    qrmemorandoTRANSPORTADOR_INSCRG: TStringField;
    qrmemorandoSITUACAO: TStringField;
    qrmemorandocliente: TStringField;
    qrfornecedorCODIGO: TStringField;
    qrfornecedorNOME: TStringField;
    qrfornecedorAPELIDO: TStringField;
    qrfornecedorENDERECO: TStringField;
    qrfornecedorBAIRRO: TStringField;
    qrfornecedorCIDADE: TStringField;
    qrfornecedorUF: TStringField;
    qrfornecedorCEP: TStringField;
    qrfornecedorCOMPLEMENTO: TStringField;
    qrfornecedorMORADIA: TIntegerField;
    qrfornecedorTIPO: TIntegerField;
    qrfornecedorSITUACAO: TIntegerField;
    qrfornecedorTELEFONE1: TStringField;
    qrfornecedorTELEFONE2: TStringField;
    qrfornecedorTELEFONE3: TStringField;
    qrfornecedorCELULAR: TStringField;
    qrfornecedorEMAIL: TStringField;
    qrfornecedorRG: TStringField;
    qrfornecedorCPF: TStringField;
    qrfornecedorFILIACAO: TStringField;
    qrfornecedorESTADOCIVIL: TStringField;
    qrfornecedorCONJUGE: TStringField;
    qrfornecedorPROFISSAO: TStringField;
    qrfornecedorEMPRESA: TStringField;
    qrfornecedorRENDA: TFloatField;
    qrfornecedorLIMITE: TFloatField;
    qrfornecedorREF1: TStringField;
    qrfornecedorREF2: TStringField;
    qrfornecedorCODVENDEDOR: TStringField;
    qrfornecedorDATA_CADASTRO: TDateTimeField;
    qrfornecedorDATA_ULTIMACOMPRA: TDateTimeField;
    qrfornecedorOBS1: TStringField;
    qrfornecedorOBS2: TStringField;
    qrfornecedorOBS3: TStringField;
    qrfornecedorOBS4: TStringField;
    qrfornecedorOBS5: TStringField;
    qrfornecedorOBS6: TStringField;
    qrfornecedorNASCIMENTO: TStringField;
    qrfornecedorCODREGIAO: TStringField;
    qrfornecedorCODCONVENIO: TStringField;
    qrfornecedorCODUSUARIO: TStringField;
    qrfornecedorSEXO: TStringField;
    qrfornecedorHISTORICO: TBlobField;
    qrfornecedorPREVISAO: TDateTimeField;
    qrfornecedorCOD_MUNICIPIO_IBGE: TStringField;
    qrfornecedorTAMANHO_CALCA: TStringField;
    qrfornecedorTAMANHO_BLUSA: TStringField;
    qrfornecedorTAMANHO_SAPATO: TStringField;
    qrfornecedorRG_ORGAO: TStringField;
    qrfornecedorRG_ESTADO: TStringField;
    qrfornecedorRG_EMISSAO: TDateTimeField;
    qrfornecedorCNAE: TStringField;
    qrfornecedorIBGE: TStringField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    blocalizar: TAdvGlowButton;
    procedure bfecharClick(Sender: TObject);
    procedure Sair2Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure balterarClick(Sender: TObject);
    procedure bimprimirClick(Sender: TObject);
    procedure dsmemorandoDataChange(Sender: TObject; Field: TField);
    procedure Incluir1Click(Sender: TObject);
    procedure IMprimir1Click(Sender: TObject);
    procedure Retorna1Click(Sender: TObject);
    procedure Alterar1Click(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure apagar1Click(Sender: TObject);
    procedure ememorandoEnter(Sender: TObject);
    procedure ememorandoKeyPress(Sender: TObject; var Key: Char);
    procedure ememorandoExit(Sender: TObject);
    procedure BfiltrarClick(Sender: TObject);
    procedure pesquisa1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2Exit(Sender: TObject);
  private
    { Private declarations }
  public
  vopcao : integer;
    { Public declarations }
  end;

var
  frmmemorando_menu: Tfrmmemorando_menu;

implementation

uses memorando, principal, modulo, notafiscal_impressao,
  memorando_impressao;

{$R *.dfm}

procedure Tfrmmemorando_menu.bfecharClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmmemorando_menu.Sair2Click(Sender: TObject);
begin
  bfecharClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.bincluirClick(Sender: TObject);
var
 vcodigo : integer;
begin
  vopcao := 1;
  frmmemorando := Tfrmmemorando.create(self);

  qrmemorando.Open;
  qrmemorando.Last;
  if qrmemorando.RecordCount > 0 then
    frmmemorando.ememorando.Text := frmprincipal.zerarcodigo(inttostr(strtoint(qrmemorandoCODIGO.AsString)+1),6)
  else
    frmmemorando.ememorando.Text := '000001';

  frmmemorando.edata.Date := date;
  frmmemorando.esituacao.Text := '1';
  frmmemorando.showmodal;

end;

procedure Tfrmmemorando_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;

end;

procedure Tfrmmemorando_menu.balterarClick(Sender: TObject);
begin
  vopcao := 2;

  frmmemorando := Tfrmmemorando.create(self);

  qrmemorando_entrada.close;
  qrmemorando_entrada.sql.clear;
  qrmemorando_entrada.sql.add('select * from c000095 where memorando = '''+qrmemorando.fieldbyname('memorando').asstring+'''');
  qrmemorando_entrada.open;

  if qrmemorando.RecordCount > 0 then
    frmmemorando.enotafiscal_entrada.Text := qrmemorando_entradaNOTAFISCAL.AsString;

  frmmemorando.showmodal;
end;

procedure Tfrmmemorando_menu.bimprimirClick(Sender: TObject);
var f : textfile;
TEXTO8, texto, texto1, texto2, texto3, texto4, texto5, texto6, texto7 : string;
i : integer;
NNOTA, cfops : INTEGER;

vvalor_cfop1,vvalor_cfop2 : double;
vcfop1,vcfop2 : string;
cfop : string;
vnotafiscal : string;

begin

  if qrmemorando.fieldbyname('codfornecedor').asstring <> '' then
    begin
      frmmodulo.qrfornecedor.close;
      frmmodulo.qrfornecedor.sql.clear;
      frmmodulo.qrfornecedor.sql.add('select * from c000007 where codigo = '''+qrmemorando.fieldbyname('codfornecedor').asstring+'''');
      frmmodulo.qrfornecedor.open;
    end;   

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.sql.add('select * from c000010 where codigo = '''+qrmemorando.fieldbyname('transportador_codigo').asstring+'''');
  frmmodulo.qrtransportador.open;

  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('delete from cl00004');
  qrapoio.execsql;
  qrapoio.close;
  qrapoio.sql.clear;
  qrapoio.sql.add('select * from cl00004');
  qrapoio.open;

  frmmodulo.qrconfig.open;

  nnota := 0;
  vvalor_cfop1 := 0;
  vvalor_cfop2 := 0;

  I := 1;

  qrnotafiscal.Close;
  qrnotafiscal.SQL.Clear;
  qrnotafiscal.SQL.Add('select * from c000061 where numero = ''' + qrmemorando.FieldByName('notafiscal').AsString + '''');
  qrnotafiscal.Open;

  if qrnotafiscal.RecordCount > 0 then
    begin
      vnotafiscal := qrnotafiscalCODIGO.AsString;

      qrnotafiscal_item.Close;
      qrnotafiscal_item.SQL.Clear;
      qrnotafiscal_item.SQL.Add('select * from c000062 where codnota = ''' + vnotafiscal + '''');
      qrnotafiscal_item.Open;

      qrmemorando_entrada.Close;
      qrmemorando_entrada.SQL.Clear;
      qrmemorando_entrada.SQL.Add('select * from c000095 where memorando = ''' + qrmemorando.FieldByName('memorando').AsString + '''');
      qrmemorando_entrada.Open;
   end;

  qrnotafiscal_item.Refresh;
  qrnotafiscal_item.First;

  qrsoma.close;
  qrsoma.sql.clear;
  qrsoma.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000062 where codnota = '''+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring+'''');
  qrsoma.sql.add('and cfop = '''+qrnotafiscal_item.fieldbyname('cfop').asstring+'''');
  qrsoma.open;
  vvalor_cfop1 := qrsoma.fieldbyname('total_geral').asfloat;
  vcfop1 := qrnotafiscal_item.fieldbyname('cfop').asstring;


  cfop := qrnotafiscal_item.fieldbyname('cfop').asstring;
  cfops := 1;
  while not qrnotafiscal_item.eof do
  begin
    IF I = frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger THEN
    BEGIN
      WHILE I <> frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger  DO
      BEGIN
        I :=  I + 1;
        IF I = frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger THEN
        BEGIN
          qrapoio.INSERT;
          qrapoio.FIELDBYNAME('TOTAL').ASSTRING := 'TRANSPORTAR';
            qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';

          qrapoio.POST;
        END
        ELSE
        BEGIN
          qrapoio.INSERT;
          if i = frmmodulo.qrconfig.fieldbyname('NF_LINHA_SUBTOTAL').asinteger THEN
          BEGIN
            qrapoio.fieldbyname('TEXTO1').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO2').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO3').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO4').asstring := 'XXXXXXXXXX';
            qrapoio.fieldbyname('TEXTO6').asstring := 'XXXXXXXXXX';
          END;
          qrapoio.POST;
        END;
      END;
      qrapoio.INSERT;
      qrapoio.FIELDBYNAME('PRODUTO').ASSTRING := '*** T R A N S P O R T A D O ***';
      qrapoio.POST;
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);

      qrapoio.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring :=  qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring :=  qrnotafiscal_item.fieldbyname('codgrade').asstring;


      qrapoio.post;
      NNOTA := NNOTA + 1;
      I := 2;
    END
    ELSE
    BEGIN
      qrapoio.insert;
      qrapoio.fieldbyname('codproduto').asstring :=    qrnotafiscal_item.fieldbyname('codproduto').asstring;
      qrapoio.fieldbyname('produto').asstring :=       qrnotafiscal_item.fieldbyname('produto').asstring;
      if qrnotafiscal_item.fieldbyname('qtde').asfloat > 0 then qrapoio.fieldbyname('qtde').asstring := formatfloat('###,###,##0.000',qrnotafiscal_item.fieldbyname('qtde').asfloat);
      if qrnotafiscal_item.fieldbyname('unitario').asfloat > 0 then qrapoio.fieldbyname('unitario').asstring := formatfloat('###,###,##0.0000',qrnotafiscal_item.fieldbyname('unitario').asfloat);
      if qrnotafiscal_item.fieldbyname('total').asfloat > 0 then  qrapoio.fieldbyname('total').asstring := formatfloat('###,###,##0.00',qrnotafiscal_item.fieldbyname('total').asfloat);

      qrapoio.fieldbyname('cf').asstring :=   qrnotafiscal_item.fieldbyname('classificacao_fiscal').asstring;
      qrapoio.fieldbyname('str').asstring :=  qrnotafiscal_item.fieldbyname('cst').asstring;
      qrapoio.fieldbyname('un').asstring :=   qrnotafiscal_item.fieldbyname('unidade').asstring;
      qrapoio.fieldbyname('icms').asstring := qrnotafiscal_item.fieldbyname('icms').asstring;
      qrapoio.fieldbyname('ipi').asstring :=  qrnotafiscal_item.fieldbyname('ipi').asstring;
      qrapoio.fieldbyname('texto8').asstring :=  qrnotafiscal_item.fieldbyname('cfop').asstring;
      qrapoio.fieldbyname('texto7').asstring :=  qrnotafiscal_item.fieldbyname('codgrade').asstring;
      qrapoio.post;

    END;



    if cfops = 1 then
    begin
      if qrnotafiscal_item.fieldbyname('cfop').ASSTRING <> '' then
      begin
       if cfop <> qrnotafiscal_item.fieldbyname('cfop').asstring then
       begin
         cfop := cfop + '/'+ qrnotafiscal_item.fieldbyname('cfop').asstring;

         qrsoma.close;
         qrsoma.sql.clear;
         qrsoma.sql.add('select SUM(TOTAL) TOTAL_GERAL from c000062 where codnota = '''+frmmodulo.qrnotafiscal.fieldbyname('codigo').asstring+'''');
         qrsoma.sql.add('and cfop = '''+qrnotafiscal_item.fieldbyname('cfop').asstring+'''');
         qrsoma.open;
         vvalor_cfop2 := qrsoma.fieldbyname('total_geral').asfloat;
         vcfop2 := qrnotafiscal_item.fieldbyname('cfop').asstring;

         cfops := 2;
       end;
      end;

    end;

    qrnotafiscal_item.next;
    I := I + 1;
  end;

  WHILE i < frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger DO
  BEGIN
    qrapoio.INSERT;
    qrapoio.POST;
    i := i+1;
  END;

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  if frmmodulo.qrnotafiscalDESCONTO.AsFloat > 0 then
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := 'DESCONTO INCONDICIONAL : R$ ' + FORMATFLOAT('###,###,##0.00',frmmodulo.qrnotafiscalDESCONTO.AsFloat)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha4').asstring := '';

  if vvalor_cfop1 > 0 then
    frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := 'SUB-TOTAL DO CFOP ' + vcfop1 + ' = R$ ' + FORMATFLOAT('###,###,##0.00',vvalor_cfop1)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha5').asstring := '';

  if vvalor_cfop2 > 0 then
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := 'SUB-TOTAL DO CFOP ' + vcfop2 + ' = R$ ' + FORMATFLOAT('###,###,##0.00',vvalor_cfop2)
  else
    frmmodulo.qrrelatorio.fieldbyname('linha6').asstring := '';

  frmmodulo.qrrelatorio.fieldbyname('linha8').asstring := cfop;

  frmmodulo.qrrelatorio.FieldByName('valor1').Asfloat := vvalor_cfop1;
  frmmodulo.qrrelatorio.FieldByName('valor2').Asfloat := vvalor_cfop2;

  frmmodulo.qrrelatorio.post;

  QRAPOIO.Refresh;

  frmmemorando_impressao := Tfrmmemorando_impressao.create(self);
  frmmemorando_impressao.showmodal;

  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';

  frmmodulo.qrcliente.close;
  frmmodulo.qrcliente.sql.clear;
  frmmodulo.qrcliente.SQL.add('select * from c000007 order by nome');
  frmmodulo.qrcliente.open;
  frmmodulo.qrcliente.IndexFieldNames := 'nome';

end;

procedure Tfrmmemorando_menu.dsmemorandoDataChange(Sender: TObject;
  Field: TField);
var
  vnotafiscal : string;
begin

{
  qrnotafiscal.Close;
  qrnotafiscal.SQL.Clear;
  qrnotafiscal.SQL.Add('select * from c000061 where numero = ''' + qrmemorando.FieldByName('notafiscal').AsString + '''');
  qrnotafiscal.Open;

  if qrnotafiscal.RecordCount > 0 then
    begin
      vnotafiscal := qrnotafiscalCODIGO.AsString;

      qrnotafiscal_item.Close;
      qrnotafiscal_item.SQL.Clear;
      qrnotafiscal_item.SQL.Add('select * from c000062 where codnota = ''' + vnotafiscal + '''');
      qrnotafiscal_item.Open;

      qrmemorando_entrada.Close;
      qrmemorando_entrada.SQL.Clear;
      qrmemorando_entrada.SQL.Add('select * from c000095 where memorando = ''' + qrmemorando.FieldByName('memorando').AsString + '''');
      qrmemorando_entrada.Open;
   end;
}
end;

procedure Tfrmmemorando_menu.Incluir1Click(Sender: TObject);
begin
  bincluirClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.IMprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.Retorna1Click(Sender: TObject);
begin
  bfecharClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.Alterar1Click(Sender: TObject);
begin
  balterarClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.bexcluirClick(Sender: TObject);
begin
  if application.messagebox('Confirma a exclusão desta memorando?','Excluir',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    if frmprincipal.autentica('Exluir NF',4) then
    begin

      qrmemorando_entrada.Close;
      qrmemorando_entrada.SQL.CLEAR;
      qrmemorando_entrada.SQL.ADD('DELETE FROM C000095 WHERE memorando = '''+qrmemorando.FIELDBYNAME('memorando').ASSTRING+'''');
      qrmemorando_entrada.ExecSQL;

      qrmemorando.delete;
      
      frmmodulo.Conexao.commit;
    end;
  end;

end;

procedure Tfrmmemorando_menu.apagar1Click(Sender: TObject);
begin
  bexcluirClick(frmmemorando_menu);
end;

procedure Tfrmmemorando_menu.ememorandoEnter(Sender: TObject);
begin
  TRzEdit(sender).Color := $00A0FAF8;

end;

procedure Tfrmmemorando_menu.ememorandoKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmmemorando_menu.ememorandoExit(Sender: TObject);
begin
  TRzEdit(sender).Color := clwindow;
  ememorando.Text := frmprincipal.zerarcodigo(ememorando.Text,6);

end;

procedure Tfrmmemorando_menu.BfiltrarClick(Sender: TObject);
var
  nota : string;
begin
  if (ememorando.text = '000000') or (ememorando.text = '') then nota := '' else nota := ' and memorando = '''+ememorando.text+'''';

  qrmemorando.close;
  qrmemorando.sql.clear;
  qrmemorando.SQL.add('select * from c000094 where data BETWEEN :datai and :dataf '+nota+' order by data');
  qrmemorando.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrmemorando.params.ParamByName('dataf').asdatetime := dateedit2.date;
  qrmemorando.open;

  ememorando.Text := '';
  grid.SetFocus;

end;

procedure Tfrmmemorando_menu.pesquisa1Click(Sender: TObject);
begin
  ememorando.SetFocus;
end;

procedure Tfrmmemorando_menu.FormShow(Sender: TObject);
begin
 dateedit1.text := '01/'+copy(datetostr(date),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);

 grid.SetFocus;
end;

procedure Tfrmmemorando_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)

end;

procedure Tfrmmemorando_menu.DateEdit2Exit(Sender: TObject);
begin
  BfiltrarClick(frmmemorando_menu);
end;

end.
