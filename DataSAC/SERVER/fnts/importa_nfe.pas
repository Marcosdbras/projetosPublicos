unit importa_nfe;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ACBrNFe, OleCtrls, SHDocVw, Buttons, Grids, Wwdbigrd,
  Wwdbgrid, DB, Wwdatsrc, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZConnection, Mask, rxtooledit, rxcurredit, ExtCtrls, RzPanel, MemDS,
  DBAccess, IBC, pcnConversao, pcnNFeW, Menus, RzPrgres, ImgList, wwdblook,
  RzDBEdit, DBCtrls, RzCmboBx, RzDBCmbo, RzDBSpin, RzEdit, RzDBBnEd,
  AdvGlowButton, RzTabs, AdvShapeButton, jpeg, frxClass, frxDBSet, frxDesgn,
  ACBrBase, ACBrDFe;

type
  Tfrmimporta_nfe = class(TForm)
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    qrnota: TZQuery;
    qritem: TZQuery;
    qrnotaCODIGO: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaCODEMPRESA: TStringField;
    qrnotaCODFORNECEDOR: TStringField;
    qrnotaMODELO: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaSERIE: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaDATA_EMISSAO: TDateTimeField;
    qrnotaDATA_LANCAMENTO: TDateTimeField;
    qrnotaCONF_BASEICMS: TFloatField;
    qrnotaCONF_VALORICMS: TFloatField;
    qrnotaCONF_BASESUB: TFloatField;
    qrnotaCONF_VALORSUB: TFloatField;
    qrnotaCONF_FRETE: TFloatField;
    qrnotaCONF_SEGURO: TFloatField;
    qrnotaCONF_OUTRAS: TFloatField;
    qrnotaCONF_IPI: TFloatField;
    qrnotaCONF_DESCONTO: TFloatField;
    qrnotaCONF_TOTALPRODUTOS: TFloatField;
    qrnotaCONF_TOTALNOTA: TFloatField;
    qrnotaCONF_ICMSRETIDO: TFloatField;
    qrnotaCONF_ICMSREDITO_PERC: TFloatField;
    qrnotaBASE_ICMS: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaBASE_SUB: TFloatField;
    qrnotaVALOR_SUB: TFloatField;
    qrnotaFRETE: TFloatField;
    qrnotaSEGURO: TFloatField;
    qrnotaOUTRAS: TFloatField;
    qrnotaIPI: TFloatField;
    qrnotaDESCONTO: TFloatField;
    qrnotaTOTAL_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    qrnotaTRANSP_NOME: TStringField;
    qrnotaTRANSP_FRETE: TStringField;
    qrnotaTRANSP_PLACA: TStringField;
    qrnotaTRANSP_PLACAUF: TStringField;
    qrnotaTRANSP_IE: TStringField;
    qrnotaTRANSP_CNPJ: TStringField;
    qrnotaTRANSP_ENDERECO: TStringField;
    qrnotaTRANSP_CIDADE: TStringField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaTRANSP_QTDE: TFloatField;
    qrnotaTRANSP_ESPECIE: TStringField;
    qrnotaTRANSP_MARCA: TStringField;
    qrnotaTRANSP_NUMERO: TStringField;
    qrnotaTRANSP_PESOBRUTO: TFloatField;
    qrnotaTRANSP_PESOLIQUIDO: TFloatField;
    qrnotaOBS1: TStringField;
    qrnotaOBS2: TStringField;
    qrnotaOBS3: TStringField;
    qrnotaOBS4: TStringField;
    qrnotaOBS5: TStringField;
    qrnotaOBS6: TStringField;
    qrnotaOBS7: TStringField;
    qrnotaSITUACAO: TIntegerField;
    qrnotaITENS: TIntegerField;
    qrnotaTIPO: TStringField;
    qrnotaNOTA_FISCAL: TStringField;
    qrnotaVALOR_MERCADORIAS: TFloatField;
    qrnotaCODREMETENTE: TStringField;
    qrnotaICMS_ISENTO: TFloatField;
    qrnotaICMS_OUTRAS: TFloatField;
    qrnotaDESCONTO_INCIDENTE: TIntegerField;
    qrnotaITEM_FRETE_VALOR: TFloatField;
    qrnotaITEM_FRETE_BASE: TFloatField;
    qrnotaITEM_FRETE_ALIQUOTA: TFloatField;
    qrnotaITEM_FRETE_ICMS: TFloatField;
    qrnotaITEM_SEGURO_VALOR: TFloatField;
    qrnotaITEM_SEGURO_BASE: TFloatField;
    qrnotaITEM_SEGURO_ALIQUOTA: TFloatField;
    qrnotaITEM_SEGURO_ICMS: TFloatField;
    qrnotaITEM_PIS_VALOR: TFloatField;
    qrnotaITEM_PIS_BASE: TFloatField;
    qrnotaITEM_PIS_ALIQUOTA: TFloatField;
    qrnotaITEM_PIS_ICMS: TFloatField;
    qrnotaITEM_COMPLEMENTO_VALOR: TFloatField;
    qrnotaITEM_COMPLEMENTO_BASE: TFloatField;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA: TFloatField;
    qrnotaITEM_COMPLEMENTO_ICMS: TFloatField;
    qrnotaITEM_SERVICO_VALOR: TFloatField;
    qrnotaITEM_SERVICO_BASE: TFloatField;
    qrnotaITEM_SERVICO_ALIQUOTA: TFloatField;
    qrnotaITEM_SERVICO_ICMS: TFloatField;
    qrnotaITEM_OUTRAS_VALOR: TFloatField;
    qrnotaITEM_OUTRAS_BASE: TFloatField;
    qrnotaITEM_OUTRAS_ALIQUOTA: TFloatField;
    qrnotaITEM_OUTRAS_ICMS: TFloatField;
    qrnotaITEM_ESPECIAL_TOTAL: TFloatField;
    qrnotaITEM_ESPECIAL_VALOR: TFloatField;
    qrnotaBASEICMS_PRODUTOS: TIntegerField;
    qrnotaCONF_ITEM_ESPECIAL: TFloatField;
    qrnotaOBS8: TStringField;
    qrnotaCREDITO_ICMS: TFloatField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    dsnota: TwwDataSource;
    dsitem: TwwDataSource;
    query: TZQuery;
    enota: TEdit;
    eserie: TEdit;
    emodelo: TEdit;
    enota_uf: TEdit;
    edata_emissao: TEdit;
    edata_saida: TEdit;
    ecod_municipio: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    edv: TEdit;
    Label8: TLabel;
    eid: TEdit;
    enatureza: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    eemitente: TEdit;
    Label12: TLabel;
    edestinatario: TEdit;
    ecnpj_emitente: TEdit;
    ecnpj_destinatario: TEdit;
    ebase_calculo: TCurrencyEdit;
    evalor_icms: TCurrencyEdit;
    ebase_substituicao: TCurrencyEdit;
    evalor_substituicao: TCurrencyEdit;
    evalor_produtos: TCurrencyEdit;
    efrete: TCurrencyEdit;
    eseguro: TCurrencyEdit;
    eoutras_despesas: TCurrencyEdit;
    evalor_ipi: TCurrencyEdit;
    Label13: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    edesconto: TCurrencyEdit;
    Label24: TLabel;
    evalor_pis: TCurrencyEdit;
    Label25: TLabel;
    evalor_cofins: TCurrencyEdit;
    Label26: TLabel;
    evalor_isento: TCurrencyEdit;
    RzPanel1: TRzPanel;
    Label27: TLabel;
    Label28: TLabel;
    qritemCODIGO: TStringField;
    qritemITEM: TStringField;
    qritemCODNOTA: TStringField;
    qritemCODPRODUTO: TStringField;
    qritemCODLANCAMENTO: TStringField;
    qritemUN_COMPRA: TStringField;
    qritemUN_FRACAO: TStringField;
    qritemFRACAO: TFloatField;
    qritemCST: TStringField;
    qritemCFOP: TStringField;
    qritemQTDE: TFloatField;
    qritemUNITARIO: TFloatField;
    qritemSUBTOTAL: TFloatField;
    qritemDESCONTO: TFloatField;
    qritemTOTAL: TFloatField;
    qritemDESCONTO_P: TFloatField;
    qritemICMS_RETIDO: TStringField;
    qritemICMS_ALIQUOTA: TFloatField;
    qritemICMS_REDUCAO: TFloatField;
    qritemICMS_BASE: TFloatField;
    qritemICMS_VALOR: TFloatField;
    qritemICMS_VALORRETIDO: TFloatField;
    qritemICMS_ISENTO: TFloatField;
    qritemICMS_NAOTRIBUTADO: TFloatField;
    qritemSUB_MARGEM: TFloatField;
    qritemSUB_BASE: TFloatField;
    qritemSUB_VALOR: TFloatField;
    qritemIPI_TIPO: TStringField;
    qritemIPI_ALIQUOTA: TFloatField;
    qritemIPI_BASE: TFloatField;
    qritemIPI_VALOR: TFloatField;
    qritemDATA: TDateTimeField;
    qritemTIPO: TIntegerField;
    qritemNOTAFISCAL: TStringField;
    qritemFRETE: TFloatField;
    qritemOUTRAS: TFloatField;
    qritemSEGURO: TFloatField;
    qritemCLASSIFICACAO_FISCAL: TStringField;
    qritemSUB_PRODUTOS: TFloatField;
    qritemCODFORNECEDOR: TStringField;
    qritemITEM_ESPECIAL_VALOR: TFloatField;
    qritemCREDITO_ICMS: TFloatField;
    qritemPIS: TFloatField;
    qritemCOFINS: TFloatField;
    ecod_fornecedor: TEdit;
    ecod_destinatario: TEdit;
    qrproduto_mov: TZQuery;
    qrproduto_movCODIGO: TStringField;
    qrproduto_movCODNOTA: TStringField;
    qrproduto_movCODPRODUTO: TStringField;
    qrproduto_movUNITARIO: TFloatField;
    qrproduto_movTOTAL: TFloatField;
    qrproduto_movICMS: TFloatField;
    qrproduto_movIPI: TFloatField;
    qrproduto_movCFOP: TStringField;
    qrproduto_movDATA: TDateTimeField;
    qrproduto_movNUMERONOTA: TStringField;
    qrproduto_movCODCLIENTE: TStringField;
    qrproduto_movDESCONTO: TFloatField;
    qrproduto_movACRESCIMO: TFloatField;
    qrproduto_movMOVIMENTO: TIntegerField;
    qrproduto_movCODVENDEDOR: TStringField;
    qrproduto_movCODGRADE: TStringField;
    qrproduto_movSERIAL: TStringField;
    qrproduto_movUNIDADE: TStringField;
    qrproduto_movQTDE: TFloatField;
    qrproduto_movVALOR_ICMS: TFloatField;
    qrproduto_movICMS_REDUZIDO: TFloatField;
    qrproduto_movBASE_CALCULO: TFloatField;
    qrproduto_movVALOR_IPI: TFloatField;
    qrproduto_movSITUACAO: TIntegerField;
    qrproduto_movECF_SERIE: TStringField;
    qrproduto_movECF_CAIXA: TStringField;
    qrproduto_movCODALIQUOTA: TStringField;
    qrproduto_movCUPOM_NUMERO: TStringField;
    qrproduto_movCUPOM_MODELO: TStringField;
    qrproduto_movCUPOM_ITEM: TStringField;
    qrproduto_movALIQUOTA: TFloatField;
    qrproduto_movCST: TStringField;
    qrproduto_movLOTE_FABRICACAO: TStringField;
    qrproduto_movMOVIMENTO_ESTOQUE: TFloatField;
    qrproduto_movLANCADO: TIntegerField;
    qrproduto_movVENCIMENTO: TDateTimeField;
    qrproduto_movCODBARRA: TStringField;
    qrproduto_movLOJA: TStringField;
    qrproduto_movTIPO: TStringField;
    qrproduto_movCREDITO_ICMS: TFloatField;
    qrproduto_movPIS: TFloatField;
    qrproduto_movCOFINS: TFloatField;
    qrproduto_movMARGEM_DESCONTO: TFloatField;
    eicms_retido: TCurrencyEdit;
    Label29: TLabel;
    Label30: TLabel;
    evalor_itemespecial: TCurrencyEdit;
    Label31: TLabel;
    ecfop: TEdit;
    Label32: TLabel;
    ecredito_icms: TCurrencyEdit;
    qrproduto: TZQuery;
    qrprodutoCODIGO: TStringField;
    qrprodutoPRODUTO: TStringField;
    qrprodutoCODBARRA: TStringField;
    qrprodutoUNIDADE: TStringField;
    qrprodutoPRECOVENDA: TFloatField;
    qrprodutoPRECOCUSTO: TFloatField;
    qrprodutoCST: TStringField;
    qrprodutoALIQUOTA: TFloatField;
    qritemLOTE_FABRICACAO: TStringField;
    qrfornecedor_codigo: TZQuery;
    qrfornecedor_codigoCODFORNECEDOR: TStringField;
    qrfornecedor_codigoCODPRODUTO: TStringField;
    qrfornecedor_codigoCODIGO: TStringField;
    qrfornecedor_codigoPRECO: TFloatField;
    Label33: TLabel;
    Label34: TLabel;
    emunicipio_emitente: TEdit;
    emunicipio_destinatario: TEdit;
    eitems: TCurrencyEdit;
    Label35: TLabel;
    qrnotaOPERACAO: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    Memo1: TMemo;
    etipo_nota: TEdit;
    etipo_venda: TEdit;
    Label36: TLabel;
    Label37: TLabel;
    bsair: TBitBtn;
    pop1: TPopupMenu;
    sair1: TMenuItem;
    qritemproduto: TStringField;
    bar: TRzProgressBar;
    euf_emitente: TEdit;
    euf_destinatario: TEdit;
    qritemPIS_BASE: TFloatField;
    qritemCOFINS_BASE: TFloatField;
    qritemALTERA_ITEM: TIntegerField;
    qritemchave: TIntegerField;
    ImageList1: TImageList;
    bgravar: TBitBtn;
    bimporta: TBitBtn;
    page_dados: TRzPageControl;
    TabSheet1: TRzTabSheet;
    TabSheet2: TRzTabSheet;
    TabSheet3: TRzTabSheet;
    TabSheet4: TRzTabSheet;
    wwDBGrid2: TwwDBGrid;
    pfatura: TPanel;
    Label83: TLabel;
    Label84: TLabel;
    Label85: TLabel;
    Bevel3: TBevel;
    bgerar: TAdvGlowButton;
    econta: TRzDBButtonEdit;
    edit5: TRzDBEdit;
    ecount: TRzDBSpinEdit;
    RzDBEdit1: TRzDBEdit;
    wwDBGrid1: TwwDBGrid;
    Panel7: TPanel;
    AdvGlowButton2: TAdvGlowButton;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    RzDBComboBox1: TRzDBComboBox;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    RzDBNumericEdit14: TRzDBNumericEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    RzDBNumericEdit15: TRzDBNumericEdit;
    RzDBNumericEdit16: TRzDBNumericEdit;
    dbedit4: TwwDBLookupCombo;
    qrtransportador: TZQuery;
    qrtransportadorCODIGO: TStringField;
    qrtransportadorNOME: TStringField;
    qrtransportadorENDERECO: TStringField;
    qrtransportadorBAIRRO: TStringField;
    qrtransportadorCIDADE: TStringField;
    qrtransportadorUF: TStringField;
    qrtransportadorCEP: TStringField;
    qrtransportadorCPF: TStringField;
    qrtransportadorRG: TStringField;
    qrtransportadorTELEFONE: TStringField;
    qrtransportadorCELULAR: TStringField;
    qrtransportadorPLACA: TStringField;
    qrtransportadorUFPLACA: TStringField;
    qrtransportadorOBS1: TStringField;
    qrtransportadorOBS2: TStringField;
    qrtransportadorOBS3: TStringField;
    qrtransportadorDATA: TDateTimeField;
    qrtransportadorTIPO: TIntegerField;
    qrplano: TZQuery;
    qrplanoCODIGO: TStringField;
    qrplanoCONTA: TStringField;
    qrplanoTIPO: TIntegerField;
    qrplanoENTRADA: TFloatField;
    qrplanoSAIDA: TFloatField;
    qrplanoSALDO: TFloatField;
    qrplanoFILTRO: TIntegerField;
    qrplanoCLASSIFICACAO: TStringField;
    qrplanoCODGRUPO: TStringField;
    qrplanogrupo: TStringField;
    qrplanoNIVEL: TIntegerField;
    qrnotaconta: TStringField;
    qrplano2: TZQuery;
    dspagar: TDataSource;
    qrpagar: TZQuery;
    qrpagarDATA_VENCIMENTO: TDateTimeField;
    qrpagarDOCUMENTO: TStringField;
    qrpagarESPECIE: TStringField;
    qrpagarHISTORICO: TStringField;
    qrpagarVALOR: TFloatField;
    qrpagarVALORPAGO: TFloatField;
    qrpagarCODIGO: TStringField;
    qrpagarDATA_EMISSAO: TDateTimeField;
    qrpagarDATA_PAGAMENTO: TDateTimeField;
    qrpagarCODCONTA: TStringField;
    qrpagarCODFORNECEDOR: TStringField;
    qrpagarLIQUIDO: TFloatField;
    qrpagarDESCONTO: TFloatField;
    qrpagarACRESCIMO: TFloatField;
    qrpagarNOTAFISCAL: TStringField;
    qrpagarC: TStringField;
    qrpagarE: TStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TStringField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TStringField;
    blimpa_variavel: TBitBtn;
    qritemcodbarra: TStringField;
    evalor_nota: TCurrencyEdit;
    Label14: TLabel;
    bexcluir: TBitBtn;
    bprodutos: TBitBtn;
    lstatus: TLabel;
    bcancelar: TBitBtn;
    Image1: TImage;
    bimprime: TBitBtn;
    fximprime: TfrxReport;
    frxDesigner1: TfrxDesigner;
    fsitem: TfrxDBDataset;
    fsnota: TfrxDBDataset;
    qritemLOTE_VALIDADE: TDateTimeField;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    bitbtn5: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    AdvGlowButton5: TAdvGlowButton;
    procedure bimportaClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure sair1Click(Sender: TObject);
    procedure qritemCalcFields(DataSet: TDataSet);
    procedure blimpa_variavelClick(Sender: TObject);
    procedure econtaButtonClick(Sender: TObject);
    procedure econtaKeyPress(Sender: TObject; var Key: Char);
    procedure bexcluirClick(Sender: TObject);
    procedure bprodutosClick(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure bimprimeClick(Sender: TObject);
    procedure eidEnter(Sender: TObject);
    procedure eidExit(Sender: TObject);
  private
    { Private declarations }
  public
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    { Public declarations }
  end;

var
  frmimporta_nfe: Tfrmimporta_nfe;
  altera_custo : integer;
  continua : boolean;

implementation

uses ACBrNFeNotasFiscais, pcnNFe, MaskUtils, loc_conta, modulo, principal,
  produto, produto_ligth, produto_farma, produto_auto;

{$R *.dfm}

procedure Tfrmimporta_nfe.bimportaClick(Sender: TObject);
var
  x,i : Integer;
  vid,vnat,vnota,vserie,vcfop,vmodelo,vemissao,vsaida,vuf,vcodmunicipio,vdv : string;
  vemitente ,vdestinatario, vemitente_cnpj,vdestinatario_cnpj : string;
  vcod_item , vcod_fornecedor ,vcod_produto : string;
  vmunemitente , vmundestinatario : string;
  va : double;
  vfracao : Double;

begin

  continua := true;
  bcancelar.Enabled := true;

  page_dados.ActivePageIndex := 0;

//  if trim(eid.Text) = '' then
//    begin

      OpenDialog1.Title := 'Selecione a NFE';
      OpenDialog1.DefaultExt := '*.XML';
      OpenDialog1.Filter := '*.XML'; //'Arquivos NFE (*-nfe.XML)|*-nfe.XML|Arquivos XML (*.XML)|*.XML|Todos os Arquivos (*.*)|*.*';
      //OpenDialog1.InitialDir := ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+'Notas';

//    end
//  else
//    OpenDialog1.FileName := ACBrNFe1.Configuracoes.Geral.PathSalvar+'\'+eid.Text;

  if OpenDialog1.Execute then
    begin

      bimporta.Enabled := false;

      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(OpenDialog1.FileName);

      vid := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
      vnat := ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.natOp;

      vnota := frmprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.nNF),6);
      vserie := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.serie);
      vmodelo := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.modelo);
      vcfop := '';
      vuf := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cUF);

      if ( DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> ' / /' ) and
         ( DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi) <> '30/12/1899' ) then
        vemissao := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dEmi)
      else
        vemissao := '  /  /    ';

      if ( DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> ' / /' ) and
         ( DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt) <> '30/12/1899' ) then
        vsaida := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.dSaiEnt)
      else
        vsaida := vemissao;

      vcodmunicipio := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cMunFG);
      vdv := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.cDV);

      vemitente := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.xNome;
      vemitente_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.CNPJCPF;
      vmunemitente := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.cMun);

      vdestinatario := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.xNome;
      vdestinatario_cnpj := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.CNPJCPF;
      vmundestinatario := IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.cMun);

      // tipo de nota (saida/entrada)
      //if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpNF = tnSaida then
      //  etipo_nota.Text := 'S'
      //else
      //  etipo_nota.Text := 'E';

      // tipo de venda (vista/prazo)
      //if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.indPag = ipVista then
      //  etipo_venda.Text := 'V'
      //else
      //  etipo_venda.Text := 'P';

      eid.Text := vid;
      enatureza.Text := vnat;
      enota.Text := vnota;
      emodelo.Text := vmodelo;
      eserie.Text := vserie;
      ecfop.Text := vcfop;

      enota_uf.Text := vuf;
      edata_emissao.Text := vemissao;
      edata_saida.Text := vsaida;
      ecod_municipio.Text := vcodmunicipio;
      edv.Text := vdv;
      eemitente.Text := vemitente;
      edestinatario.Text := vdestinatario;
      ecnpj_emitente.Text := FormatMaskText('99.999.999/9999-99;0;_',vemitente_cnpj);
      ecnpj_destinatario.Text := FormatMaskText('99.999.999/9999-99;0;_',vdestinatario_cnpj);

      euf_emitente.Text     := ACBrNFe1.NotasFiscais.Items[0].NFe.Emit.EnderEmit.UF;
      euf_destinatario.Text := ACBrNFe1.NotasFiscais.Items[0].NFe.Dest.EnderDest.UF;

      emunicipio_emitente.Text := vmunemitente;
      emunicipio_destinatario.Text := vmundestinatario;

      ecod_fornecedor.Text := '';
      ecod_destinatario.Text := '000001';

      query.Close;
      query.SQL.Clear;
      query.SQL.Add('select * from c000009');
      query.SQL.Add('where cnpj = '''+ ecnpj_emitente.Text + '''');
      query.Open;

      if query.RecordCount > 0 then
        begin
          ecod_fornecedor.Text := query.fieldbyname('codigo').AsString;
        end
      else
        begin
          application.messagebox('Fornecedor Não Cadastrado ou CNPJ Inválido, Verifique!','Atenção',mb_ok+MB_ICONEXCLAMATION);
          blimpa_variavelClick(frmimporta_nfe);
          qritem.Close;
          qritem.SQL.Clear;
          qritem.SQL.Add('select * from c000088');
          qritem.SQL.Add('where codigo = ''XXXXXX''');
          qritem.Open;
          bimporta.Enabled := True;
          Exit;
        end;

      x := 0;

      query.close;
      query.SQL.clear;
      query.SQL.Add('select * from c000087 where numero = '''+enota.Text+'''');
      query.SQL.Add('and codfornecedor = '''+ecod_fornecedor.Text+'''');
      query.SQL.Add('and modelo = '''+emodelo.Text+'''');
      query.open;
      if query.recordcount > 0 then
      begin
        application.messagebox('Nota Fiscal Já Importada! Verifique!','Atenção',mb_ok+mb_iconerror);
        //enumero.SetFocus;
        blimpa_variavelClick(frmimporta_nfe);
        qritem.Close;
        qritem.SQL.Clear;
        qritem.SQL.Add('select * from c000088');
        qritem.SQL.Add('where codigo = ''XXXXXX''');
        qritem.Open;
        exit;
      end;

      qrnota.Close;
      qrnota.SQL.Clear;
      qrnota.SQL.Add('select * from c000087');
      qrnota.Open;

      qrnota.Insert;
      qrnotaCODIGO.asstring             := frmprincipal.codifica('000061');
      qrnotaTIPO.asstring               := 'COMPRA P/ REVENDA';
      qrnotaNUMERO.AsString             := enota.Text;
      qrnotaDESCONTO_INCIDENTE.ASFLOAT  := 0;
      qrnotaOBS7.AsString               := qrnotaCODIGO.AsString;
      qrnotaSITUACAO.AsInteger          := 2;
      qrnotaBASEICMS_PRODUTOS.AsInteger := 1;
      qrnotaDATA_LANCAMENTO.AsDateTime  := date;
      qrnotaDATA_EMISSAO.AsString       := edata_emissao.Text;

      qritem.Close;
      qritem.SQL.Clear;
      qritem.SQL.Add('select * from c000088');
      qritem.SQL.Add('where codnota = '''+ qrnota.FieldByName('codigo').asstring + '''');
      qritem.SQL.Add('and notafiscal = ''' + enota.Text + '''');
      qritem.SQL.Add('order by item');

      qritem.Open;

      //ShowMessage(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[1].Prod.cProd);

      //ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count

      eitems.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Count;

      Application.ProcessMessages;

      bar.PartsComplete := 0;
      bar.TotalParts := eitems.AsInteger;

      for x := 0 to eitems.AsInteger-1 do
        begin

          vcod_item := frmprincipal.codifica('000032');

          qrfornecedor_codigo.Close;
          qrfornecedor_codigo.SQL.Clear;
          qrfornecedor_codigo.SQL.Add('select * from fornecedor_codigo');
          qrfornecedor_codigo.SQL.Add('where codfornecedor = '''+ ecod_fornecedor.Text + '''');
          //qrfornecedor_codigo.SQL.Add('and codigo = '''+ frmprincipal.zerarcodigo(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd,6) + '''');
          qrfornecedor_codigo.SQL.Add('and codigo = '''+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd + '''');
          qrfornecedor_codigo.Open;
          if qrfornecedor_codigo.RecordCount > 0 then
            begin
              vcod_produto := qrfornecedor_codigoCODPRODUTO.AsString;
              query.Close;
              query.SQL.Clear;
              query.SQL.Add('select * from c000025');
              query.SQL.Add('where codigo = '''+ vcod_produto + '''');
              query.Open;
              if query.RecordCount > 0 then
                begin
                  vcod_produto := query.fieldbyname('codigo').AsString;
                  if query.fieldbyname('QTDE_EMBALAGEM').AsFloat > 0 then
                    vfracao := query.fieldbyname('QTDE_EMBALAGEM').AsFloat
                  else
                    vfracao := 1;
                end
              else
                begin
                  //ShowMessage('codigo de barra não encontrado => '+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN);
                  application.messagebox(PChar('Código de Barra Não Encontrado => '+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN +', Verifique!'),'Atenção',mb_ok+MB_ICONERROR);
                  vcod_produto := ''; //zerarcodigo(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd,6);
                end;
            end
          else
            begin
              if ( frmprincipal.somenteNumero(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) <> '' ) and
                 ( frmprincipal.somenteNumero(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN) <> '00000000000000' ) then
                begin
                  query.Close;
                  query.SQL.Clear;
                  query.SQL.Add('select * from c000025');
//                  query.SQL.Add('where codigo = '''+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN + '''');
                  query.SQL.Add('where codbarra = '''+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN + '''');
                  query.Open;
                  if query.RecordCount > 0 then
                    begin
                      SHOWMESSAGE(pchar(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN));
                      vcod_produto := query.fieldbyname('codigo').AsString;
                      if query.fieldbyname('QTDE_EMBALAGEM').AsFloat > 0 then
                        vfracao := query.fieldbyname('QTDE_EMBALAGEM').AsFloat
                      else
                        vfracao := 1;
                    end
                  else
                    begin
                      //application.messagebox(PChar('Código de Barra Não Encontrado => '+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN +', Verifique!'),'Atenção',mb_ok+MB_ICONERROR);
                      vcod_produto := ''; //zerarcodigo(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd,6);
                    end;
                end
              else
                begin
                  application.messagebox(PChar('Referência do Fornecedor Não Encontrado => '+ ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd+', Verifique!'),'Atenção',mb_ok+MB_ICONERROR);
                  vcod_produto := frmPrincipal.zerarcodigo(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd,6);
                  vfracao := 0;
                end;
            end;

          qritem.Insert;
          qritemCODIGO.AsString := vcod_item;
          qritemITEM.AsString := frmprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem),3);
          qritemCODNOTA.AsString := qrnota.FieldByName('codigo').asstring;
          qritemCODPRODUTO.AsString := vcod_produto; //zerarcodigo(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cProd,6);
          qritemCODLANCAMENTO.AsString := vcod_item;
          qritemUN_COMPRA.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib;
          qritemUN_FRACAO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.uTrib;
          qritemFRACAO.AsFloat := vfracao;

          // CST
          if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst00 then
            qritemCST.AsString := '000'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst10 then
            qritemCST.AsString := '010'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst20 then
            qritemCST.AsString := '020'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst30 then
            qritemCST.AsString := '030'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst40 then
            qritemCST.AsString := '040'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst41 then
            qritemCST.AsString := '041'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst50 then
            qritemCST.AsString := '050'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst51 then
            qritemCST.AsString := '051'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst60 then
            qritemCST.AsString := '060'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst70 then
            qritemCST.AsString := '070'
          else if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.CST = cst90 then
            qritemCST.AsString := '090'
          else
            qritemCST.AsString := '';

          // CFOP
          if ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5405' ) or
             ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5403' ) then
            qritemCFOP.AsString := '1403'
          else if ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5101' ) or
                  ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102' ) then
            qritemCFOP.AsString := '1102'
          else if ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6101' ) or
                  ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6102' ) then
            qritemCFOP.AsString := '2102'
          else if ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '6403' ) or
                  ( ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP = '5102' ) then
            qritemCFOP.AsString := '2403'
          else
            qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;  // ''

          //qritemCFOP.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.CFOP;
          if ecfop.Text = '' then
            begin
              ecfop.Text := qritemCFOP.AsString;
            end;

          qritemQTDE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.qCom;
          qritemUNITARIO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vUnCom;

          qritemSUBTOTAL.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vProd;
          qritemDESCONTO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vDesc;
          qritemTOTAL.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vProd;
          qritemDESCONTO_P.AsFloat := 0;
          qritemFRETE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vFrete;
          qritemOUTRAS.AsFloat := 0;
          qritemSEGURO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.vSeg;

          qritemICMS_BASE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBC;
          qritemICMS_RETIDO.AsString := 'N';
          qritemICMS_ALIQUOTA.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pICMS;

          if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBC > 0 then
            qritemICMS_REDUCAO.AsFloat := 7
          else
            qritemICMS_REDUCAO.AsFloat := 0;

          //qritemICMS_REDUCAO.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pRedBCST;

          qritemICMS_VALOR.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMS;;
          qritemICMS_VALORRETIDO.AsFloat := 0;
          qritemICMS_ISENTO.AsFloat := 0;
          qritemICMS_NAOTRIBUTADO.AsFloat := 0;

          qritemSUB_MARGEM.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.pMVAST;
          qritemSUB_BASE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vBCST;
          qritemSUB_VALOR.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.ICMS.vICMSST;
          qritemSUB_PRODUTOS.AsFloat := 0;

          qritemIPI_TIPO.AsFloat := 0;
          qritemIPI_ALIQUOTA.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.pIPI;
          qritemIPI_BASE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.vBC;
          qritemIPI_VALOR.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.IPI.vIPI;

          qritemDATA.AsDateTime := date;
          qritemTIPO.AsInteger := 0;
          qritemNOTAFISCAL.AsString := enota.Text;
          qritemCLASSIFICACAO_FISCAL.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.NCM;
          qritemSUB_PRODUTOS.AsString := '';
          qritemCODFORNECEDOR.AsString := ecod_fornecedor.Text;
          qritemITEM_ESPECIAL_VALOR.AsFloat := 0;
          qritemALTERA_ITEM.AsInteger := 0;

          qritemCREDITO_ICMS.AsFloat := 0;
          qritemPIS_BASE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.PIS.vBC;
          qritemPIS.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.PIS.vPIS;
          qritemCOFINS_BASE.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.COFINS.vBC;
          qritemCOFINS.AsFloat := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Imposto.COFINS.vCOFINS;

          //memo1.lines.add('MEDICAMENTOS ----------------------------------');

          if ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Count > 0 then
            begin
              qritemLOTE_FABRICACAO.AsString := ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].nLote;
              qritemLOTE_VALIDADE.AsString := DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].dVal);

              memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].nLote);
              memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].qLote));
              memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].vPMC));
              memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].dFab));
              memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.med.Items[0].dFab));
            end
          else
            begin
              qritemLOTE_FABRICACAO.AsString := '';
              qritemLOTE_VALIDADE.AsString   := '';
            end;

         {
          memo1.lines.add('ARMAS----------------------------------');
          memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].descr);
          memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nSerie));
          memo1.lines.add(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.arma.Items[0].nCano));
          }

          //memo1.lines.add('COMBUSTIVEIS----------------------------------');

          //PRODUTOS
          query.close;
          query.sql.clear;
          query.sql.add('update c000025 set');
          if altera_custo = 1 then
            query.sql.add('precocusto = :precocusto,');
          query.sql.add('DATA_ULTIMACOMPRA = :DATA_ULTIMACOMPRA,');
          query.sql.add('notafiscal = :notafiscal,');
          query.sql.add('codfornecedor = :codfornecedor');
          query.sql.add('where codigo = '''+vcod_produto+'''');
          if altera_custo = 1 then
            begin
              if qritemFRACAO.asfloat > 0 then
                query.Params.ParamByName('precocusto').asfloat := qritemUNITARIO.asfloat / qritemFRACAO.asfloat
              else
                query.Params.ParamByName('precocusto').asfloat := qritemUNITARIO.asfloat;
            end;
          query.Params.ParamByName('DATA_ULTIMACOMPRA').asdatetime := Date;
          query.Params.ParamByName('notafiscal').asstring := enota.Text;
          query.Params.ParamByName('codfornecedor').asstring := ecod_fornecedor.Text;
          query.execsql;

          bar.PartsComplete := bar.PartsComplete + 1;
          lstatus.caption := '[ '+frmprincipal.zerarcodigo(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.nItem),3)+' ] '+
                             ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.cEAN +' | '+
                             ACBrNFe1.NotasFiscais.Items[0].NFe.Det.Items[x].Prod.xProd ;
          Application.ProcessMessages;

          if not continua then break;

        end;

        if not continua then
          begin

            bar.Percent := 0;
            lstatus.Caption := '...';

            qrnota.Close;
            qrnota.SQL.Clear;
            qrnota.SQL.Add('select * from c000087');
            qrnota.SQL.Add('where codigo = ''XXXXXX''');
            qrnota.Open;

            qritem.Close;
            qritem.SQL.Clear;
            qritem.SQL.Add('select * from c000088');
            qritem.SQL.Add('where codigo = ''XXXXXX''');
            qritem.Open;

            blimpa_variavelClick(frmimporta_nfe);

            exit;
          end;

        bar.Percent := 0;
        lstatus.caption := '';

        qritem.Refresh;

        ebase_calculo.Value       := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBC;
        evalor_icms.Value         := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vICMS;
        ebase_substituicao.Value  := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vBCST;
        evalor_substituicao.Value := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vST;

        efrete.Value              := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vFrete;
        eseguro.Value             := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vSeg;
        eoutras_despesas.Value    := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vOutro;
        evalor_ipi.Value          := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vIPI;

        evalor_isento.Value       := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vII;
        evalor_pis.Value          := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vPIS;
        evalor_cofins.Value       := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vCOFINS;

        edesconto.Value           := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vDesc;
        evalor_produtos.Value     := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vProd;
        evalor_nota.Value         := ACBrNFe1.NotasFiscais.Items[0].NFe.Total.ICMSTot.vNF;

        //memo1.lines.add('TRANSPORTADORA----------------------------------');
        qrnotaTRANSP_NOME.AsString        := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xNome;
        qrnotaTRANSP_IE.AsString          := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.IE;
        qrnotaTRANSP_CNPJ.AsString        := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.CNPJCPF;
        qrnotaTRANSP_ENDERECO.AsString    := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xEnder;

        qrnotaTRANSP_NUMERO.AsString      := '';
        qrnotaTRANSP_CIDADE.AsString      := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.xMun;
        qrnotaTRANSP_UF.AsString          := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Transporta.UF;

        qrnotaTRANSP_PLACA.AsString       := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.placa;
        qrnotaTRANSP_PLACAUF.AsString     := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.veicTransp.UF;

        if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.modFrete = mfContaEmitente then
          qrnotaTRANSP_FRETE.AsString       := '1 - EMITENTE'
        else
          qrnotaTRANSP_FRETE.AsString       := '2 - DESTINATÁRIO';

        if ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Count > 0 then
          begin
            qrnotaTRANSP_ESPECIE.AsString     := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].esp;
            qrnotaTRANSP_MARCA.AsString       := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].marca;

            qrnotaTRANSP_QTDE.AsFloat         := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].qVol;
            qrnotaTRANSP_PESOLIQUIDO.AsFloat  := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoL;
            qrnotaTRANSP_PESOBRUTO.AsFloat    := ACBrNFe1.NotasFiscais.Items[0].NFe.Transp.Vol.Items[0].pesoB;
          end;

        memo1.lines.add('VOLUME----------------------------------');
        memo1.lines.add('REBOQUE----------------------------------');

      qrpagar.CLOSE;
      qrpagar.SQL.CLEAR;
      qrpagar.SQL.ADD('SELECT * FROM C000046 WHERE CODNOTA = '''+enota.Text+''' ORDER BY DATA_VENCIMENTO');
      qrpagar.OPEN;

      if ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count > 0 then
        begin

          qrnotaOBS5.AsString := '';  //'000019';
          qrnotaOBS6.AsString := 'Duplicata a Pagar';
          qrnotaOBS8.AsString := Trim(IntToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count));

          bar.PartsComplete := 0;
          bar.TotalParts := eitems.AsInteger;

          for x := 0 to ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Count-1 do
            begin
              qrpagar.Insert;
              qrpagarCODIGO.AsString            := frmprincipal.codifica('000046');;
              qrpagarDOCUMENTO.AsString         := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].nDup;
              qrpagarESPECIE.AsString           := 'DUPLICATA';
              qrpagarHISTORICO.AsString         := 'Duplicata a Pagar';
              qrpagarDATA_VENCIMENTO.AsDateTime := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].dVenc;
              qrpagarVALOR.AsFloat              := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
              qrpagarVALORPAGO.AsFloat          := 0;
              qrpagarDATA_EMISSAO.AsDateTime    := date;
              qrpagarDATA_PAGAMENTO.AsString    := '';
              qrpagarCODCONTA.AsString          := '000019';
              qrpagarCODFORNECEDOR.AsString     := ecod_fornecedor.Text;
              qrpagarLIQUIDO.AsFloat            := ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[x].vDup;
              qrpagarDESCONTO.AsFloat           := 0;
              qrpagarACRESCIMO.AsFloat          := 0;
              qrpagarNOTAFISCAL.AsString        := enota.Text;
              qrpagarC.AsString                 := '';
              qrpagarE.AsString                 := '';
              qrpagarFILTRO.AsInteger           := 0;
              qrpagarSITUACAO.AsInteger         := 1;
              qrpagarCODNOTA.AsString           := qrnotaCODIGO.asstring;
              qrpagarMOVIMENTO.AsInteger        := 0;
              qrpagarCODCAIXA.AsString          := '000099';
              qrpagar.Post;
            end;
      end;
      bgravar.Enabled := true;
      bimporta.Enabled := true;
      bcancelar.Enabled := false;
      lstatus.caption := '...';
    end;
end;

procedure Tfrmimporta_nfe.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

procedure Tfrmimporta_nfe.bgravarClick(Sender: TObject);
var
  vcodbarra : string;
  vcod_modelo : integer;
  vaceito, vnaoaceito : integer;

begin

  if qrpagar.RecordCount > 0 then
    begin
      if econta.Text = '' then
        begin

          FRMMODULO.QRCONFIG.OPEN;
          if frmmodulo.qrconfigPLANO_DUPLICATA_NFE.AsString <> '' then
            econta.Text := frmmodulo.qrconfigPLANO_DUPLICATA_NFE.AsString
          else
            begin
              application.messagebox('Número da Conta Não Informada, Verifique!','Atenção',mb_ok+MB_ICONEXCLAMATION);
              page_dados.ActivePageIndex := 2;
              econta.SetFocus;
              Exit;
            end;
        end;
    end;

  frmmodulo.qrfiscal_modelo.close;
  frmmodulo.qrfiscal_modelo.sql.clear;
  frmmodulo.qrfiscal_modelo.sql.add('select * from c000082 where sintegra = ''55''');
  frmmodulo.qrfiscal_modelo.open;

  if frmmodulo.qrfiscal_modelo.recordcount = 0 then
    begin
      if application.messagebox('Modelo 55 Nota Fiscal Eletrônica Não Cadastrado, Deseja Cria-lo?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
        begin
          query.Close;
          query.sql.Clear;
          query.sql.add('select * from c000082');
          query.sql.add('order by codigo');
          query.Open;
          if query.recordcount > 0 then
            begin
              query.Last;
              vcod_modelo := query.fieldbyname('codigo').AsInteger + 1;
              query.Append;
              query.FieldByName('codigo').asstring := frmprincipal.zerarcodigo(inttostr(vcod_modelo),2);
              query.FieldByName('modelo').asstring := 'Nota Fiscal Eletronica';
              query.FieldByName('sigla').asstring := 'NFE';
              query.FieldByName('sintegra').asstring := '55';
              query.FieldByName('tipo_registro').asstring := '50';
              query.Post;
              frmmodulo.conexao.commit;
            end;
        end
      else
        begin
          ecfop.setfocus;
          exit;
        end;
    end;

  QRPRODUTO_MOV.CLOSE;
  QRPRODUTO_MOV.SQL.CLEAR;
  QRPRODUTO_MOV.SQL.ADD('SELECT * FROM C000032 WHERE CODNOTA = ''XXXXXX''');
  QRPRODUTO_MOV.OPEN;
  if qritem.recordcount > 0 then
    begin
      qritem.first;
      while not qritem.eof do
        begin
          if qritemCODPRODUTO.AsString <> '' then
            begin
              query.Close;
              query.SQL.Clear;
              query.SQL.Add('select * from c000025');
              query.SQL.Add('where codigo = '''+ qritemCODPRODUTO.AsString + '''');
              query.Open;

              if query.RecordCount > 0 then
                vcodbarra := query.fieldbyname('codigo').AsString
              else
                vcodbarra := '';


              //showmessage(qritem.fieldbyname('codproduto').asstring);

              qrproduto_mov.Insert;
              qrproduto_movCODIGO.AsString       := qritem.fieldbyname('codlancamento').asstring;
              qrproduto_movCODNOTA.AsString      := qritem.fieldbyname('codnota').asstring+'NE';
              qrproduto_movSERIAL.AsString       := qritem.fieldbyname('codigo').asstring;
              qrproduto_movNUMERONOTA.AsString   := qrnota.fieldbyname('NUMERO').asstring;
              qrproduto_movCODPRODUTO.asstring   := qritem.fieldbyname('codproduto').asstring;
              if qritemFRACAO.asfloat > 0 then
                begin
                  qrproduto_movQTDE.asfloat     := qritemQTDE.asfloat * qritemFRACAO.asfloat;
                  qrproduto_movUNITARIO.asfloat := qritemTOTAL.asfloat/(qritemQTDE.asfloat * qritemFRACAO.asfloat);
                end
              ELSE
                begin
                  qrproduto_movQTDE.asfloat     := qritemQTDE.asfloat;
                  qrproduto_movUNITARIO.asfloat := qritemTOTAL.asfloat/qritemQTDE.asfloat;
                end;
              qrproduto_movTOTAL.asfloat              := qritemTOTAL.asfloat;
              qrproduto_movUNIDADE.asstring           := qritemUN_FRACAO.AsString;
              qrproduto_movALIQUOTA.asFLOAT           := qritemICMS_ALIQUOTA.asFLOAT;
              qrproduto_movCUPOM_MODELO.asstring      := qrnotaMODELO.ASSTRING;
              qrproduto_movCODCLIENTE.AsString        := ecod_fornecedor.Text;
              qrproduto_movCODVENDEDOR.AsString       := 'S/VEND';
              qrproduto_movMOVIMENTO.AsINTEGER        := 1;
              qrproduto_movDATA.asstring              := edata_emissao.Text;

              qrproduto_movICMS.AsFloat               := qritemICMS_ALIQUOTA.asFLOAT;;
              qrproduto_movVALOR_ICMS.AsFloat         := qritemICMS_VALOR.asFLOAT;;
              qrproduto_movVALOR_IPI.AsFloat          := qritemIPI_VALOR.asFLOAT;;
              qrproduto_movICMS_REDUZIDO.AsFloat      := qritemICMS_VALORRETIDO.asFLOAT;;
              qrproduto_movBASE_CALCULO.AsFloat       := qritemICMS_BASE.asFLOAT;;

              qrproduto_movIPI.AsFloat                := qritemIPI_ALIQUOTA.asFLOAT;;
              qrproduto_movDESCONTO.AsFloat           := qritemDESCONTO.asFLOAT;;
              qrproduto_movACRESCIMO.AsFloat          := 0;

              qrproduto_movCREDITO_ICMS.AsFloat       := qritemCREDITO_ICMS.asFLOAT;;
              qrproduto_movPIS.AsFloat                := qritemPIS.asFLOAT;;
              qrproduto_movCOFINS.AsFloat             := qritemCOFINS.asFLOAT;;

              qrproduto_movCODBARRA.AsString          := vcodbarra;
              qrproduto_movCFOP.AsString              := qritemCFOP.AsString;
              qrproduto_movCST.AsString               := qritemCST.AsString;
              qrproduto_movLOTE_FABRICACAO.AsString   := qritemLOTE_FABRICACAO.AsString;
              qrproduto_movVENCIMENTO.AsDateTime      := qritemLOTE_VALIDADE.AsDateTime;

              qrproduto_mov.Post;

              lstatus.caption := '[ '+qritem.fieldbyname('codproduto').asstring+' ] '+
                             qritem.fieldbyname('codbarra').asstring +' | '+
                             qritem.fieldbyname('produto').asstring ;
              Application.ProcessMessages;

            end;
            qritem.Next;
          end;
    end;

    qrnotaCODEMPRESA.AsString := ecod_destinatario.Text;
    qrnotaCODFORNECEDOR.AsString := ecod_fornecedor.Text;
    qrnotaMODELO.AsString := emodelo.Text;
    qrnotaESPECIE.AsString := 'NFE';
    qrnotaSERIE.AsString := eserie.Text;
    qrnotaCFOP.AsString := ecfop.Text;
    qrnotaDATA_EMISSAO.AsString := edata_emissao.Text;

    qrnotaOPERACAO.AsString := etipo_venda.Text;
    if etipo_venda.Text = 'P' then
      qrnotaINTEGRACAO.AsInteger := 1
    else
      qrnotaINTEGRACAO.AsInteger := 0;

    // TRANSPORTADOR
    qrnotaTRANSP_NOME.AsString := '';
    qrnotaTRANSP_FRETE.AsString := '';
    qrnotaTRANSP_PLACA.AsString := '';
    qrnotaTRANSP_PLACAUF.AsString := '';
    qrnotaTRANSP_IE.AsString := '';
    qrnotaTRANSP_CNPJ.AsString := '';
    qrnotaTRANSP_ENDERECO.AsString := '';
    qrnotaTRANSP_CIDADE.AsString := '';
    qrnotaTRANSP_UF.AsString := '';
    qrnotaTRANSP_ESPECIE.AsString := '';
    qrnotaTRANSP_MARCA.AsString := '';
    qrnotaTRANSP_NUMERO.AsString := '';
    qrnotaTRANSP_QTDE.AsFloat := 0;
    qrnotaTRANSP_PESOBRUTO.AsFloat := 0;
    qrnotaTRANSP_PESOLIQUIDO.AsFloat := 0;

    // OBSERVACOES
    {
    qrnotaOBS1.AsString := '';
    qrnotaOBS2.AsString := '';
    qrnotaOBS3.AsString := '';
    qrnotaOBS4.AsString := '';
    qrnotaOBS5.AsString := '';
    qrnotaOBS6.AsString := '';
    qrnotaOBS7.AsString := '';
    qrnotaOBS8.AsString := '';
    }

    qrnotaSITUACAO.AsInteger := 2;
    qrnotaITENS.AsInteger := eitems.AsInteger;

    //qrnotaTIPO.AsString := enatureza.Text;
    qrnotaNOTA_FISCAL.AsString := '';
    qrnotaVALOR_MERCADORIAS.AsFloat := 0;
    qrnotaCODREMETENTE.AsString := '';
    qrnotaDESCONTO_INCIDENTE.AsInteger := 0;

    // ITEM ESPECIAL

    qrnotaITEM_FRETE_VALOR.AsFloat := 0;
    qrnotaITEM_FRETE_BASE.AsFloat := 0;
    qrnotaITEM_FRETE_ALIQUOTA.AsFloat := 0;
    qrnotaITEM_FRETE_ICMS.AsFloat := 0;
    qrnotaITEM_SEGURO_VALOR.AsFloat := 0;
    qrnotaITEM_SEGURO_BASE.AsFloat := 0;
    qrnotaITEM_SEGURO_ALIQUOTA.AsFloat := 0;
    qrnotaITEM_SEGURO_ICMS.AsFloat := 0;
    qrnotaITEM_PIS_VALOR.AsFloat := 0;
    qrnotaITEM_PIS_BASE.AsFloat := 0;
    qrnotaITEM_PIS_ALIQUOTA.AsFloat := 0;
    qrnotaITEM_PIS_ICMS.AsFloat := 0;
    qrnotaITEM_COMPLEMENTO_VALOR.AsFloat := 0;
    qrnotaITEM_COMPLEMENTO_BASE.AsFloat := 0;
    qrnotaITEM_COMPLEMENTO_ALIQUOTA.AsFloat := 0;
    qrnotaITEM_COMPLEMENTO_ICMS.AsFloat := 0;
    qrnotaITEM_SERVICO_VALOR.AsFloat := 0;
    qrnotaITEM_SERVICO_BASE.AsFloat := 0;
    qrnotaITEM_SERVICO_ALIQUOTA.AsFloat := 0;
    qrnotaITEM_SERVICO_ICMS.AsFloat := 0;
    qrnotaITEM_OUTRAS_VALOR.AsFloat := 0;
    qrnotaITEM_OUTRAS_BASE.AsFloat := 0;
    qrnotaITEM_OUTRAS_ALIQUOTA.AsFloat := 0;
    qrnotaITEM_OUTRAS_ICMS.AsFloat := 0;
    qrnotaITEM_ESPECIAL_TOTAL.AsFloat := 0;
    qrnotaITEM_ESPECIAL_VALOR.AsFloat := 0;

    // CONFERENCIA DE NOTA
    qrnotaCONF_TOTALNOTA.asfloat := evalor_nota.Value;
    qrnotaCONF_TOTALPRODUTOS.asfloat := evalor_produtos.Value;
    qrnotaCONF_BASEICMS.asfloat := ebase_calculo.Value;
    qrnotaCONF_VALORICMS.asfloat := evalor_icms.Value;
    qrnotaCONF_BASESUB.asfloat := ebase_substituicao.Value;
    qrnotaCONF_VALORSUB.asfloat := evalor_substituicao.Value;
    qrnotaCONF_FRETE.asfloat := efrete.Value;
    qrnotaCONF_SEGURO.asfloat := eseguro.Value;
    qrnotaCONF_OUTRAS.asfloat := eoutras_despesas.Value;
    qrnotaCONF_ITEM_ESPECIAL.asfloat := 0;
    qrnotaCONF_IPI.asfloat := evalor_ipi.Value;
    qrnotaCONF_DESCONTO.asfloat := edesconto.Value;
    qrnotaCONF_ICMSRETIDO.asfloat := eicms_retido.Value;

    // TOTAIS DE NOTA
    qrnotaTOTAL_NOTA.asfloat := evalor_nota.Value;
    qrnotaTOTAL_PRODUTOS.asfloat := evalor_produtos.Value;
    qrnotaBASE_ICMS.asfloat := ebase_calculo.value;
    qrnotaBASE_SUB.asfloat := ebase_substituicao.value;
    qrnotaVALOR_SUB.asfloat := evalor_substituicao.value;
    qrnotaVALOR_ICMS.asfloat := evalor_icms.value;
    qrnotaSEGURO.asfloat := eseguro.value;
    qrnotaOUTRAS.asfloat := eoutras_despesas.value;
    qrnotaFRETE.asfloat := efrete.value;
    qrnotaITEM_ESPECIAL_TOTAL.asfloat := evalor_itemespecial.value;
    qrnotaIPI.asfloat := evalor_ipi.value;
    qrnotaICMS_ISENTO.asfloat :=  evalor_isento.value;
    qrnotaICMS_OUTRAS.AsFloat := eoutras_despesas.Value;
    qrnotaCREDITO_ICMS.AsFloat := ecredito_icms.Value;
    qrnotaPIS.AsFloat := evalor_pis.Value;
    qrnotaCOFINS.AsFloat := evalor_cofins.Value;
    qrnotaDESCONTO.AsFloat := edesconto.Value;

    // FATURAS
    {
    memo1.lines.add(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[0].nDup);
    memo1.lines.add(FloatToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[0].vDup));
    memo1.lines.add(DateToStr(ACBrNFe1.NotasFiscais.Items[0].NFe.Cobr.Dup.Items[0].dVenc));
     }


    qrnota.post;

    frmmodulo.Conexao.Commit;

  qrnota.Close;
  qrnota.SQL.Clear;
  qrnota.SQL.Add('select * from c000087');
  qrnota.SQL.Add('where codigo = ''XXXXXX''');
  qrnota.Open;

  qritem.Close;
  qritem.SQL.Clear;
  qritem.SQL.Add('select * from c000088');
  qritem.SQL.Add('where codigo = ''XXXXXX''');
  qritem.Open;

  blimpa_variavelClick(frmimporta_nfe);
  lstatus.caption := '...';
  application.messagebox('Importação Concluida Com Sucesso!','Atenção',mb_ok+MB_ICONEXCLAMATION);

  eid.SetFocus;
  close;

end;

procedure Tfrmimporta_nfe.FormShow(Sender: TObject);
begin

  qritem.Close;
  qritem.SQL.Clear;
  qritem.SQL.Add('select * from c000088');
  qritem.SQL.Add('where codnota = ''XXXXXX''');
  qritem.Open;

  qrtransportador.open;

  bgravar.Enabled := false;
  bcancelar.Enabled := false;

  blimpa_variavelClick(frmimporta_nfe);

end;

procedure Tfrmimporta_nfe.bsairClick(Sender: TObject);
begin
  close;
end;

procedure Tfrmimporta_nfe.sair1Click(Sender: TObject);
begin
  bsairClick(frmimporta_nfe);
end;


// dados referentes a importação


{
Os impostos referente a importação estão em

Det.Items[n].Imposto.II.vBc = Valor da Base de Calculo para Imposto de Importação
Det.Items[n].Imposto.II.vDespAdu = Valor das Despesas Aduaneiras
Det.Items[n].Imposto.II.vII = Valor do Imposto de Importação
Det.Items[n].Imposto.II.vIOF = Valor do IOF sobre Imposto de Importação

Mas ainda faltam os dados referentes a DI Declaração de Importação no caso o Nº da DI.

 with  Prod.DI.Add do
       begin
        nDi := '1';
        dDi := Date;
        xLocDesemb := 'Local';
        UFDesemb   := 'SP';
        dDesemb := Date;
        cExportador := 'Exportador';
        with adi.Add do
         begin
           nAdicao
           nSeqAdi
           cFabricante
           vDescDI
         end;
       end;
}

procedure Tfrmimporta_nfe.qritemCalcFields(DataSet: TDataSet);
begin
  if qritemCODPRODUTO.AsString = '' then
    qritemchave.AsInteger := 0
  else
    qritemchave.AsInteger := 1;
end;

procedure Tfrmimporta_nfe.blimpa_variavelClick(Sender: TObject);
begin
  eid.Text := '';
  enatureza.Text := '';
  ecod_fornecedor.Text := '';
  ecod_municipio.Text := '';
  ecod_destinatario.Text := '';
  ecnpj_emitente.Text := '';
  ecnpj_destinatario.Text := '';
  enota.Text := '';
  eserie.Text := '';
  emodelo.Text := '';
  enota_uf.Text := '';
  edata_emissao.Text := '';
  edata_saida.Text := '';
  edv.Text := '';
  eid.Text := '';
  eemitente.Text := '';
  edestinatario.Text := '';
  ecfop.Text := '';
  emunicipio_emitente.Text := '';
  emunicipio_destinatario.Text := '';
  etipo_nota.Text := '';
  etipo_venda.Text := '';
  euf_emitente.Text := '';
  euf_destinatario.Text := '';
  ecod_fornecedor.Text := '';
end;

procedure Tfrmimporta_nfe.econtaButtonClick(Sender: TObject);
begin
  frmloc_conta := tfrmloc_conta.create(self);
  frmloc_conta.showmodal;
  econta.text := qrplano.fieldbyname('codigo').asstring;
  edit5.setfocus;
end;

procedure Tfrmimporta_nfe.econtaKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      econta.text := frmprincipal.zerarcodigo(econta.text,6);
      edit5.SetFocus;
    end;
end;

procedure Tfrmimporta_nfe.bexcluirClick(Sender: TObject);
begin
  qritem.Delete;
  frmmodulo.Conexao.commit;
end;

procedure Tfrmimporta_nfe.bprodutosClick(Sender: TObject);
begin

  busca_produto := 2;
  If frmprincipal.acesso(codigo_usuario,'02.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMMODULO.QRCONFIG.OPEN;
  IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL' then
  begin
    frmproduto := tfrmproduto.create(self);
    frmproduto.showmodal;
  end
  else
  begin
    IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'LIGHT' then
    begin
      frmproduto_LIGTH := tfrmproduto_LIGTH.create(self);
      frmproduto_LIGTH.showmodal;
    end
    else
    begin
      IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA' THEN
      BEGIN
          frmproduto_FARMA := tfrmproduto_FARMA.create(self);
          frmproduto_FARMA.showmodal;
      END
      ELSE
      BEGIN
        IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
        begin
          frmproduto_AUTO := tfrmproduto_AUTO.create(self);
          frmproduto_AUTO.showmodal;
        end;
      END;
    end;
  end;

  atualiza_produto_novo := true;

end;

procedure Tfrmimporta_nfe.AdvGlowButton2Click(Sender: TObject);
begin
  if frmprincipal.autentica('Excluir Contas a Pagar',4) then
  begin
    qrpagar.Delete;
    frmmodulo.Conexao.commit;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmimporta_nfe.bcancelarClick(Sender: TObject);
begin
  continua := false;
  application.messagebox('Importação Cancalada pelo usuário!','Atenção',mb_ok+MB_ICONEXCLAMATION);
  bcancelar.Enabled := false;
  bimporta.Enabled := true;
end;


procedure Tfrmimporta_nfe.bimprimeClick(Sender: TObject);
begin

  frmmodulo.qrrelatorio.open;
  frmmodulo.qrrelatorio.edit;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA1').ASSTRING := eemitente.text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA2').ASSTRING := ecnpj_emitente.text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA3').ASSTRING := enota.text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA4').ASSTRING := emodelo.text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA5').ASSTRING := eserie.text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA6').ASSTRING := edata_emissao.text;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('LINHA7').ASSTRING := edata_saida.text;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR1').AsFloat  := ebase_calculo.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR2').AsFloat  := evalor_icms.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR3').AsFloat  := ebase_substituicao.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR4').AsFloat  := evalor_substituicao.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR5').AsFloat  := evalor_produtos.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR6').AsFloat  := efrete.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR7').AsFloat  := eseguro.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR8').AsFloat  := eoutras_despesas.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR9').AsFloat := evalor_ipi.Value;

  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR10').AsFloat := edesconto.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR11').AsFloat := evalor_isento.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR12').AsFloat := evalor_pis.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR13').AsFloat := evalor_cofins.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR14').AsFloat := ecredito_icms.Value;
  FRMMODULO.QRRELATORIO.FIELDBYNAME('VALOR15').AsFloat := evalor_nota.Value;

  fximprime.LoadFromFile('\DATASAC\server\REL\F000197.fr3');
  fximprime.ShowReport;

end;

procedure Tfrmimporta_nfe.eidEnter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmimporta_nfe.eidExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

end.
