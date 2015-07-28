unit notafiscal_menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, AdvOfficeStatusBar, ImgList, AdvMenus, AdvMenuStylers,
  AdvToolBar, AdvToolBarStylers, AdvPreviewMenu, AdvPreviewMenuStylers,
  AdvOfficeStatusBarStylers, AdvGlowButton, Grids, Wwdbigrd, Wwdbgrid, DB,
  ZAbstractRODataset, ZAbstractDataset, ZDataset, Menus, DBCtrls, Mask,
  RzEdit, RzDBEdit, RzDBBnEd, rxtooledit, RzBtnEdt, frxClass, frxPreview,
  frxDesgn, ExtCtrls, MemDS, DBAccess, IBC, Wwdatsrc, Buttons, jpeg,
  ACBrNFe, ACBrNFeDANFEClass, ACBrNFeDANFERave,
  // units nfe acbr
  pcnConversao, ACBrUtil, SHDocVw, ComCtrls, OleCtrls, FileCtrl,
  inifiles;

type
  Tfrmnotafiscal_menu = class(TForm)
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    ImageList1: TImageList;
    dsnota: TDataSource;
    menu_tabelas_fiscais: TAdvPopupMenu;
    ClassesdeRecolhimento1: TMenuItem;
    ModelosdeNotasFiscais1: TMenuItem;
    CFOP1: TMenuItem;
    pop: TAdvPopupMenu;
    Incluir2: TMenuItem;
    Alterar2: TMenuItem;
    Excluir2: TMenuItem;
    LocalizarFiltro2: TMenuItem;
    Relatrios2: TMenuItem;
    Sair2: TMenuItem;
    ConfirmarNotaFiscal1: TMenuItem;
    espelho: TfrxReport;
    Cancelar1: TMenuItem;
    Imprimir1: TMenuItem;
    ImageList2: TImageList;
    N1: TMenuItem;
    MemorandodeExportao1: TMenuItem;
    Panel3: TPanel;
    Label10: TLabel;
    bfiltrar: TAdvGlowButton;
    Bevel1: TBevel;
    Label8: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    ecliente: TRzButtonEdit;
    ENUMERO: TEdit;
    DateEdit1: TDateEdit;
    DateEdit2: TDateEdit;
    N2: TMenuItem;
    ZerarNotaFiscal1: TMenuItem;
    query: TZQuery;
    qrnota: TZQuery;
    qrnotaSITUACAO: TIntegerField;
    qrnotaDATA: TDateTimeField;
    qrnotaDATA_SAIDA: TDateTimeField;
    qrnotacliente: TStringField;
    qrnotaNUMERO: TStringField;
    qrnotaMODELO_NF: TStringField;
    qrnotaSERIE_NF: TStringField;
    qrnotaCFOP: TStringField;
    qrnotaBASE_CALCULO: TFloatField;
    qrnotaVALOR_ICMS: TFloatField;
    qrnotaempresa: TStringField;
    qrnotaCODIGO: TStringField;
    qrnotaCODCLIENTE: TStringField;
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
    qrnotaHORA: TStringField;
    qrnotaSITUACAO_A: TStringField;
    qrnotaVALOR_ISENTO_ICMS: TFloatField;
    qrnotaALIQUOTA_ICMS: TFloatField;
    qrnotaSIT: TStringField;
    qrnotaCODLANCAMENTO: TStringField;
    qrnotaMOVIMENTO: TStringField;
    qrnotaendereco: TStringField;
    qrnotacpf: TStringField;
    qrnotarg: TStringField;
    qrnotaTRANSPORTADOR: TStringField;
    qrnotatransp_endereco: TStringField;
    qrnotatransp_cidade: TStringField;
    qrnotatransp_cpf: TStringField;
    qrnotatransp_rg: TStringField;
    qrnotanatureza: TStringField;
    qrnotafilial: TStringField;
    qrnotaESPECIE: TStringField;
    qrnotaBAIXA_ESTOQUE: TStringField;
    qrnotaTIPO: TStringField;
    qrnotaOS_COD1: TStringField;
    qrnotaOS_COD2: TStringField;
    qrnotaOS_COD3: TStringField;
    qrnotaOS_COD4: TStringField;
    qrnotaOS_COD5: TStringField;
    qrnotaOS_COD6: TStringField;
    qrnotaOS_SERV1: TStringField;
    qrnotaOS_SERV2: TStringField;
    qrnotaOS_SERV3: TStringField;
    qrnotaOS_SERV4: TStringField;
    qrnotaOS_SERV5: TStringField;
    qrnotaOS_SERV6: TStringField;
    qrnotaOS_COMP1: TStringField;
    qrnotaOS_COMP2: TStringField;
    qrnotaOS_COMP3: TStringField;
    qrnotaOS_COMP4: TStringField;
    qrnotaOS_COMP5: TStringField;
    qrnotaOS_COMP6: TStringField;
    qrnotaOS_QTDE1: TFloatField;
    qrnotaOS_QTDE2: TFloatField;
    qrnotaOS_QTDE3: TFloatField;
    qrnotaOS_QTDE4: TFloatField;
    qrnotaOS_QTDE5: TFloatField;
    qrnotaOS_QTDE6: TFloatField;
    qrnotaOS_UNIT1: TFloatField;
    qrnotaOS_UNIT2: TFloatField;
    qrnotaOS_UNIT3: TFloatField;
    qrnotaOS_UNIT4: TFloatField;
    qrnotaOS_UNIT5: TFloatField;
    qrnotaOS_UNIT6: TFloatField;
    qrnotaOS_TOTAL1: TFloatField;
    qrnotaOS_TOTAL2: TFloatField;
    qrnotaOS_TOTAL3: TFloatField;
    qrnotaOS_TOTAL4: TFloatField;
    qrnotaOS_TOTAL5: TFloatField;
    qrnotaOS_TOTAL6: TFloatField;
    qrnotaOS_ISS: TFloatField;
    qrnotaOS_TOTAL_GERAL: TFloatField;
    qrnotaOS_TOTAL_ISS: TFloatField;
    qrnotaFAT_FORMA_PGTO: TStringField;
    qrnotaFAT_QTDE_PRESTACAO: TIntegerField;
    qrnotaFAT_GERAR_RECEBER: TIntegerField;
    qrnotaFAT_GERAR_DUPLICATA: TIntegerField;
    qrproduto2: TZQuery;
    qrcliente2: TZQuery;
    qrcliente2CODIGO: TStringField;
    qrcliente2NOME: TStringField;
    qrcliente2APELIDO: TStringField;
    qrcliente2ENDERECO: TStringField;
    qrcliente2BAIRRO: TStringField;
    qrcliente2CIDADE: TStringField;
    qrcliente2UF: TStringField;
    qrcliente2CEP: TStringField;
    qrcliente2COMPLEMENTO: TStringField;
    qrcliente2MORADIA: TIntegerField;
    qrcliente2TIPO: TIntegerField;
    qrcliente2SITUACAO: TIntegerField;
    qrcliente2TELEFONE1: TStringField;
    qrcliente2TELEFONE2: TStringField;
    qrcliente2TELEFONE3: TStringField;
    qrcliente2CELULAR: TStringField;
    qrcliente2EMAIL: TStringField;
    qrcliente2RG: TStringField;
    qrcliente2CPF: TStringField;
    qrcliente2FILIACAO: TStringField;
    qrcliente2ESTADOCIVIL: TStringField;
    qrcliente2CONJUGE: TStringField;
    qrcliente2PROFISSAO: TStringField;
    qrcliente2EMPRESA: TStringField;
    qrcliente2RENDA: TFloatField;
    qrcliente2LIMITE: TFloatField;
    qrcliente2REF1: TStringField;
    qrcliente2REF2: TStringField;
    qrcliente2CODVENDEDOR: TStringField;
    qrcliente2DATA_CADASTRO: TDateTimeField;
    qrcliente2DATA_ULTIMACOMPRA: TDateTimeField;
    qrcliente2OBS1: TStringField;
    qrcliente2OBS2: TStringField;
    qrcliente2OBS3: TStringField;
    qrcliente2OBS4: TStringField;
    qrcliente2OBS5: TStringField;
    qrcliente2OBS6: TStringField;
    qrcliente2NASCIMENTO: TStringField;
    qrcliente2CODREGIAO: TStringField;
    qrcliente2CODCONVENIO: TStringField;
    qrcliente2CODUSUARIO: TStringField;
    qrempresa: TZQuery;
    qrempresaCODIGO: TStringField;
    qrempresaFILIAL: TStringField;
    qrempresaNOTAFISCAL: TIntegerField;
    qrempresaENDERECO: TStringField;
    qrempresaCIDADE: TStringField;
    qrempresaUF: TStringField;
    qrempresaCEP: TStringField;
    qrempresaTELEFONE: TStringField;
    qrempresaCNPJ: TStringField;
    qrempresaIE: TStringField;
    qrempresaSEQNF: TIntegerField;
    qrempresaFAX: TStringField;
    qrempresaOBS1: TStringField;
    qrempresaOBS2: TStringField;
    qrempresaCONTRIBUINTE_IPI: TStringField;
    qrempresaSUBSTITUTO_TRIBUTARIO: TStringField;
    qrempresaEMPRESA_ESTADUAL: TStringField;
    qrempresaOPTANTE_SIMPLES: TStringField;
    qrempresaOPTANTE_SUPER_SIMPLES: TStringField;
    qrempresaECF: TStringField;
    qrempresaTIPO: TIntegerField;
    qrempresaIPI: TFloatField;
    qrempresaISS: TFloatField;
    qrempresaNUMERO: TStringField;
    qrempresaRESPONSAVEL: TStringField;
    qrempresaCOMPLEMENTO: TStringField;
    qrempresaBAIRRO: TStringField;
    qrmodelo: TZQuery;
    qrmodeloSINTEGRA: TStringField;
    qrmodeloMODELO: TStringField;
    qrmodeloCODIGO: TStringField;
    qrmodeloSIGLA: TStringField;
    qrmodeloTIPO_REGISTRO: TStringField;
    qrcliente: TZQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    StringField9: TStringField;
    IntegerField1: TIntegerField;
    IntegerField2: TIntegerField;
    IntegerField3: TIntegerField;
    StringField10: TStringField;
    StringField11: TStringField;
    StringField12: TStringField;
    StringField13: TStringField;
    StringField14: TStringField;
    StringField15: TStringField;
    StringField16: TStringField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    StringField20: TStringField;
    StringField21: TStringField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    StringField22: TStringField;
    StringField23: TStringField;
    StringField24: TStringField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    StringField25: TStringField;
    StringField26: TStringField;
    StringField27: TStringField;
    StringField28: TStringField;
    StringField29: TStringField;
    StringField30: TStringField;
    StringField31: TStringField;
    StringField32: TStringField;
    StringField33: TStringField;
    StringField34: TStringField;
    qrnota_item: TZQuery;
    qrnota_total: TZQuery;
    qrnota_antes: TZQuery;
    qritem_antes: TZQuery;
    qrgrade_entrada: TZQuery;
    query2: TZQuery;
    N3: TMenuItem;
    NFeExportarNotaFiscal1: TMenuItem;
    qrclienteCOD_MUNICIPIO_IBGE: TStringField;
    qrnotatransp_tipo: TIntegerField;
    qrnotaPIS: TFloatField;
    qrnotaCOFINS: TFloatField;
    qrnotaFAT_TIPO: TIntegerField;
    qrnotaTRANSP_UF: TStringField;
    qrnotaABC: TStringField;
    qrnotaCODVENDEDOR: TStringField;
    qrnotaCUSTO_VENDA: TStringField;
    qrnotaINTEGRACAO: TIntegerField;
    qrnotaOPERACAO: TStringField;
    Panel4: TPanel;
    Panel1: TPanel;
    Label3: TLabel;
    Label6: TLabel;
    Bevel2: TBevel;
    Label7: TLabel;
    rtotal: TRzNumericEdit;
    rqde: TRzNumericEdit;
    RzDBEdit1: TRzDBEdit;
    Panel2: TPanel;
    Bevel3: TBevel;
    bincluir: TAdvGlowButton;
    balterar: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    bitbtn6: TAdvGlowButton;
    bfechar: TAdvGlowButton;
    bimprimir: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    btabela: TAdvGlowMenuButton;
    Panel5: TPanel;
    grid: TwwDBGrid;
    pn_nfe: TPanel;
    Bevel4: TBevel;
    Image1: TImage;
    Bevel5: TBevel;
    Bevel6: TBevel;
    bt_nfe_validar: TBitBtn;
    bt_nfe_assinar: TBitBtn;
    bt_nfe_danfe: TBitBtn;
    bt_nfe_consultar: TBitBtn;
    bt_nfe_cancelar: TBitBtn;
    bt_nfe_exportar: TBitBtn;
    bt_nfe_status: TBitBtn;
    ACBrNFeDANFERave1: TACBrNFeDANFERave;
    bt_log: TBitBtn;
    pn_nfe_log: TPanel;
    Panel7: TPanel;
    Button1: TButton;
    PageControl2: TPageControl;
    TabSheet5: TTabSheet;
    MemoResp: TMemo;
    TabSheet6: TTabSheet;
    WBResposta: TWebBrowser;
    TabSheet8: TTabSheet;
    memoLog: TMemo;
    TabSheet9: TTabSheet;
    trvwNFe: TTreeView;
    ACBrNFe1: TACBrNFe;
    qrnotaNFE_SITUACAO: TIntegerField;
    qrnotaNFE_XML: TStringField;
    BitBtn1: TBitBtn;
    qrNFE_Cliente: TZQuery;
    TabSheet2: TTabSheet;
    PageControl1: TPageControl;
    TabSheet3: TTabSheet;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label9: TLabel;
    sbtnCaminhoCert: TSpeedButton;
    Label25: TLabel;
    sbtnGetCert: TSpeedButton;
    edtCaminho: TEdit;
    edtSenha: TEdit;
    edtNumSerie: TEdit;
    TabSheet4: TTabSheet;
    TabSheet7: TTabSheet;
    gbProxy: TGroupBox;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    edtProxyHost: TEdit;
    edtProxyPorta: TEdit;
    edtProxyUser: TEdit;
    edtProxySenha: TEdit;
    TabSheet11: TTabSheet;
    rgTipoDanfe: TRadioGroup;
    rgFormaEmissao: TRadioGroup;
    Label11: TLabel;
    sbtnLogoMarca: TSpeedButton;
    sbtnPathSalvar: TSpeedButton;
    edtLogoMarca: TEdit;
    edtPathLogs: TEdit;
    ckSalvar: TCheckBox;
    Label12: TLabel;
    ckVisualizar: TCheckBox;
    cbUF: TComboBox;
    rgTipoAmb: TRadioGroup;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    edtSmtpHost: TEdit;
    edtSmtpPort: TEdit;
    edtSmtpUser: TEdit;
    edtSmtpPass: TEdit;
    edtEmailAssunto: TEdit;
    cbEmailSSL: TCheckBox;
    btnSalvarConfig: TBitBtn;
    mmEmailMsg: TMemo;
    Memo1: TMemo;
    OpenDialog1: TOpenDialog;
    RzButtonEdit1: TRzButtonEdit;
    qrnotaDESCONTO_ITEM: TFloatField;
    qrnotaVALOR_PRODUTOS: TFloatField;
    qrnotaTOTAL_NOTA: TFloatField;
    Inutilizar1: TMenuItem;
    qrtransportador2: TZQuery;
    qrtransportador2CODIGO: TStringField;
    qrtransportador2NOME: TStringField;
    qrtransportador2ENDERECO: TStringField;
    qrtransportador2BAIRRO: TStringField;
    qrtransportador2CIDADE: TStringField;
    qrtransportador2UF: TStringField;
    qrtransportador2CEP: TStringField;
    qrtransportador2CPF: TStringField;
    qrtransportador2RG: TStringField;
    qrtransportador2TELEFONE: TStringField;
    qrtransportador2CELULAR: TStringField;
    qrtransportador2PLACA: TStringField;
    qrtransportador2UFPLACA: TStringField;
    qrtransportador2OBS1: TStringField;
    qrtransportador2OBS2: TStringField;
    qrtransportador2OBS3: TStringField;
    qrtransportador2DATA: TDateTimeField;
    qrtransportador2TIPO: TIntegerField;
    qrtransportador2NUMERO: TStringField;
    qrtransportador2COD_MUNICIPIO_IBGE: TStringField;
    qrtransportador2IBGE: TStringField;
    qrtransportador2ANTT: TStringField;
    bt_nfe_inutilizar: TBitBtn;
    bt_nfe_cce: TBitBtn;
    procedure bincluirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure bfecharClick(Sender: TObject);
    procedure balterarClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure bitbtn6Click(Sender: TObject);
    procedure b(Sender: TObject);
    procedure gridRowChanged(Sender: TObject);
    procedure Alterar2Click(Sender: TObject);
    procedure abelasFunes2Click(Sender: TObject);
    procedure CFOP1Click(Sender: TObject);
    procedure ClassesdeRecolhimento1Click(Sender: TObject);
    procedure ModelosdeNotasFiscais1Click(Sender: TObject);
    procedure eclienteKeyPress(Sender: TObject; var Key: Char);
    procedure eclienteButtonClick(Sender: TObject);
    procedure ENUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DateEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure BfiltrarClick(Sender: TObject);
    procedure ENUMEROExit(Sender: TObject);
    procedure btotaliza_notaClick(Sender: TObject);
    procedure eclienteEnter(Sender: TObject);
    procedure gridKeyPress(Sender: TObject; var Key: Char);
    procedure bimprimirClick(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure Imprimir1Click(Sender: TObject);
    procedure bcancelarClick(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure gridTitleButtonClick(Sender: TObject; AFieldName: String);
    procedure DateEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure ZerarNotaFiscal1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure NFeExportarNotaFiscal1Click(Sender: TObject);
    procedure ACBrNFe1StatusChange(Sender: TObject);
    procedure bt_nfe_statusClick(Sender: TObject);
    procedure bt_logClick(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure ACBrNFe1GerarLog(const Mensagem: String);
    procedure bt_nfe_validarClick(Sender: TObject);
    procedure bt_nfe_danfeClick(Sender: TObject);
    procedure bt_nfe_assinarClick(Sender: TObject);
    procedure bt_nfe_exportarClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure bt_nfe_consultarClick(Sender: TObject);
    procedure bt_nfe_cancelarClick(Sender: TObject);
    procedure btnSalvarConfigClick(Sender: TObject);
    procedure sbtnCaminhoCertClick(Sender: TObject);
    procedure sbtnGetCertClick(Sender: TObject);
    procedure sbtnLogoMarcaClick(Sender: TObject);
    procedure sbtnPathSalvarClick(Sender: TObject);
    procedure Inutilizar1Click(Sender: TObject);
    procedure eclienteExit(Sender: TObject);
    procedure ENUMEROEnter(Sender: TObject);
    procedure DateEdit1Enter(Sender: TObject);
    procedure bt_nfe_inutilizarClick(Sender: TObject);
  private
    { Private declarations }
    // nfe
    procedure GravarConfiguracao;
    procedure Inicia_NFe;
    procedure LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
    function Gerar_XML():string;
    function SN(sNum:string):string;

  public
    vopcao_nfs,vopcao_item: integer;
    { Public declarations }
  end;

var
  frmnotafiscal_menu: Tfrmnotafiscal_menu;
     vrecno: integer;
       cancela : boolean;

  bmensagem : boolean;

  // nfe
  ok : boolean;
implementation

uses modulo, principal, compra, cfop, cst, modelo_fiscal, xloc_cliente,
  compra_item, lista_notaentrada, lista_notacompra, notafiscal,
  compra_menu, lista_notasaida, memorando_menu, notafiscal_cancelar, unNFe2,
  status, nfe_legenda, email, math, funcoes;

const
  SELDIRHELP = 1000;

{$R *.dfm}


procedure Tfrmnotafiscal_menu.GravarConfiguracao;
Var IniFile : String ;
    Ini     : TIniFile ;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      Ini.WriteString( 'Certificado','Caminho' ,edtCaminho.Text) ;
      Ini.WriteString( 'Certificado','Senha'   ,edtSenha.Text) ;
      Ini.WriteString( 'Certificado','NumSerie',edtNumSerie.Text) ;

      Ini.WriteInteger( 'Geral','DANFE'       ,rgTipoDanfe.ItemIndex) ;
      Ini.WriteInteger( 'Geral','FormaEmissao',rgFormaEmissao.ItemIndex) ;
      Ini.WriteString( 'Geral','LogoMarca'   ,edtLogoMarca.Text) ;
      Ini.WriteBool(   'Geral','Salvar'      ,ckSalvar.Checked) ;
      Ini.WriteString( 'Geral','PathSalvar'  ,edtPathLogs.Text) ;

      Ini.WriteString( 'WebService','UF'        ,cbUF.Text) ;
      Ini.WriteInteger( 'WebService','Ambiente'  ,rgTipoAmb.ItemIndex) ;
      Ini.WriteBool(   'WebService','Visualizar',ckVisualizar.Checked) ;

      Ini.WriteString( 'Proxy','Host'   ,edtProxyHost.Text) ;
      Ini.WriteString( 'Proxy','Porta'  ,edtProxyPorta.Text) ;
      Ini.WriteString( 'Proxy','User'   ,edtProxyUser.Text) ;
      Ini.WriteString( 'Proxy','Pass'   ,edtProxySenha.Text) ;

      Ini.WriteString( 'Email','Host'    ,edtSmtpHost.Text) ;
      Ini.WriteString( 'Email','Port'    ,edtSmtpPort.Text) ;
      Ini.WriteString( 'Email','User'    ,edtSmtpUser.Text) ;
      Ini.WriteString( 'Email','Pass'    ,edtSmtpPass.Text) ;
      Ini.WriteString( 'Email','Assunto' ,edtEmailAssunto.Text) ;
      Ini.WriteBool(   'Email','SSL'     ,cbEmailSSL.Checked ) ;
      StreamMemo := TMemoryStream.Create;
      mmEmailMsg.Lines.SaveToStream(StreamMemo);
      StreamMemo.Seek(0,soFromBeginning);
      Ini.WriteBinaryStream( 'Email','Mensagem',StreamMemo) ;
      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

function Tfrmnotafiscal_menu.SN(sNum:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := snum;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] in ['0'..'9'] then
               s2 := s2 + s1[i];
     result:=s2;
end;
procedure TfrmNotafiscal_menu.Inicia_NFe();
Var IniFile  : String ;
    Ini     : TIniFile ;
    Ok : Boolean;
    StreamMemo : TMemoryStream;
begin
  IniFile := ChangeFileExt( Application.ExeName, '.ini') ;

  Ini := TIniFile.Create( IniFile );
  try
      {$IFDEF ACBrNFeOpenSSL}
         edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
         edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
         ACBrNFe1.Configuracoes.Certificados.Certificado  := edtCaminho.Text;
         ACBrNFe1.Configuracoes.Certificados.Senha        := edtSenha.Text;
         edtNumSerie.Visible := False;
         Label25.Visible := False;
         sbtnGetCert.Visible := False;
      {$ELSE}
         edtNumSerie.Text := Ini.ReadString( 'Certificado','NumSerie','') ;
         edtCaminho.Text  := Ini.ReadString( 'Certificado','Caminho' ,'') ;
         edtSenha.Text    := Ini.ReadString( 'Certificado','Senha'   ,'') ;
         ACBrNFe1.Configuracoes.Certificados.NumeroSerie := edtNumSerie.Text;
         edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.NumeroSerie;
         {Label5.Caption := 'Informe o número de série do certificado'#13+
                           'Disponível no Internet Explorer no menu'#13+
                           'Ferramentas - Opções da Internet - Conteúdo '#13+
                           'Certificados - Exibir - Detalhes - '#13+
                           'Número do certificado';
         Label2.Visible := False;
         edtCaminho.Visible := False;
         edtSenha.Visible   := False;
         sbtnCaminhoCert.Visible := False;}
      {$ENDIF}

      rgFormaEmissao.ItemIndex := Ini.ReadInteger( 'Geral','FormaEmissao',0) ;
      ckSalvar.Checked    := Ini.ReadBool(   'Geral','Salvar'      ,True) ;
      edtPathLogs.Text    := Ini.ReadString( 'Geral','PathSalvar'  ,'') ;
      ACBrNFe1.Configuracoes.Geral.FormaEmissao := StrToTpEmis(OK,IntToStr(rgFormaEmissao.ItemIndex+1));
      ACBrNFe1.Configuracoes.Geral.Salvar       := ckSalvar.Checked;
      ACBrNFe1.Configuracoes.Geral.PathSalvar   := edtPathLogs.Text;

      cbUF.ItemIndex       := cbUF.Items.IndexOf(Ini.ReadString( 'WebService','UF','AL')) ;
      rgTipoAmb.ItemIndex  := Ini.ReadInteger( 'WebService','Ambiente'  ,0) ;
      ckVisualizar.Checked :=Ini.ReadBool(    'WebService','Visualizar',False) ;
      ACBrNFe1.Configuracoes.WebServices.UF         := cbUF.Text;
      ACBrNFe1.Configuracoes.WebServices.Ambiente   := StrToTpAmb(Ok,IntToStr(rgTipoAmb.ItemIndex+1));
      ACBrNFe1.Configuracoes.WebServices.Visualizar := ckVisualizar.Checked;

      edtProxyHost.Text  := Ini.ReadString( 'Proxy','Host'   ,'') ;
      edtProxyPorta.Text := Ini.ReadString( 'Proxy','Porta'  ,'') ;
      edtProxyUser.Text  := Ini.ReadString( 'Proxy','User'   ,'') ;
      edtProxySenha.Text := Ini.ReadString( 'Proxy','Pass'   ,'') ;
      ACBrNFe1.Configuracoes.WebServices.ProxyHost := edtProxyHost.Text;
      ACBrNFe1.Configuracoes.WebServices.ProxyPort := edtProxyPorta.Text;
      ACBrNFe1.Configuracoes.WebServices.ProxyUser := edtProxyUser.Text;
      ACBrNFe1.Configuracoes.WebServices.ProxyPass := edtProxySenha.Text;

      rgTipoDanfe.ItemIndex     := Ini.ReadInteger( 'Geral','DANFE'       ,0) ;
      edtLogoMarca.Text         := Ini.ReadString( 'Geral','LogoMarca'   ,'') ;
      if ACBrNFe1.DANFE <> nil then
       begin
         ACBrNFe1.DANFE.TipoDANFE  := StrToTpImp(OK,IntToStr(rgTipoDanfe.ItemIndex+1));
         ACBrNFe1.DANFE.Logo       := edtLogoMarca.Text;
       end;  

      edtSmtpHost.Text      := Ini.ReadString( 'Email','Host'   ,'') ;
      edtSmtpPort.Text      := Ini.ReadString( 'Email','Port'   ,'') ;
      edtSmtpUser.Text      := Ini.ReadString( 'Email','User'   ,'') ;
      edtSmtpPass.Text      := Ini.ReadString( 'Email','Pass'   ,'') ;
      edtEmailAssunto.Text  := Ini.ReadString( 'Email','Assunto','') ;
      cbEmailSSL.Checked    := Ini.ReadBool(   'Email','SSL'    ,False) ;
      StreamMemo := TMemoryStream.Create;
      Ini.ReadBinaryStream( 'Email','Mensagem',StreamMemo) ;
      mmEmailMsg.Lines.LoadFromStream(StreamMemo);
      StreamMemo.Free;
  finally
     Ini.Free ;
  end;

end;

procedure TfrmNotafiscal_menu.LoadXML(MyMemo: TMemo; MyWebBrowser: TWebBrowser);
begin
  MyMemo.Lines.SaveToFile(ExtractFileDir(application.ExeName)+'temp.xml');
  MyWebBrowser.Navigate(ExtractFileDir(application.ExeName)+'temp.xml');
end;

function Tfrmnotafiscal_menu.Gerar_XML():string;
var
 vAux : String;
 BnF_VEICULO : BOOLEAN;
 iCRT, i : Integer;
 fsb_valorliquidoitem, fsb_valorliquidocupom:Currency;
 sb_valorliquidoitem,sb_valorliquidocupom:string;

begin
  
  fsb_valorliquidocupom := 0;
  fsb_valorliquidoitem := 0;

  porcibpt := 0;
  vlribpt  := 0;


   if qrnota.RecordCount = 0 then exit;

   // filial
   query2.close;
   query2.sql.clear;
   query2.sql.add('select * from c000004');
   query2.sql.add('where codigo = '''+qrnota.fieldbyname('codfilial').asstring+'''');
   query2.open;

   qrnfe_cliente.close;
   qrnfe_cliente.sql.clear;
   qrnfe_cliente.sql.add('select * from c000007');
   qrnfe_cliente.sql.add('where codigo = '''+qrnota.fieldbyname('codcliente').asstring+'''');
   qrnfe_cliente.open;

   qrtransportador2.close;
   qrtransportador2.sql.clear;
   qrtransportador2.sql.add('select * from c000010');
   qrtransportador2.sql.add('where codigo = '''+qrnota.fieldbyname('codtransportador').asstring+'''');
   qrtransportador2.open;

  ACBrNFe1.NotasFiscais.Clear;

  with ACBrNFe1.NotasFiscais.Add.NFe do
  begin
    infNFe.ID := qrnota.fieldbyname('numero').asstring;

    Ide.natOp     := qrnota.fieldbyname('natureza').asstring;
    Ide.nNF       := StrToInt(qrnota.fieldbyname('numero').asstring);
    Ide.cNF       := StrToInt(qrnota.fieldbyname('numero').asstring);
    Ide.modelo    := 55;
    Ide.serie     := StrToInt(qrnota.fieldbyname('serie_nf').asstring);
    Ide.dEmi      := qrnota.fieldbyname('data').AsDateTime;
    Ide.dSaiEnt   := qrnota.fieldbyname('data_saida').asdatetime;
    Ide.hSaiEnt   := StrToTime(qrnota.fieldbyname('hora').asstring);;

    IF QRNOTA.FIELDBYNAME('MOVIMENTO').ASSTRING = 'S' Then
      Ide.tpNF      := tnSaida
    else
      Ide.tpNF      := tnEntrada;

    if qrnota.FieldByName('fat_tipo').asinteger = 1  then
      Ide.indPag    := ipVista
    else
      Ide.indpag    := ipPrazo;

    Ide.verProc   := '7.0';
    Ide.cUF       := strtoint(Copy(QUERY2.FIELDBYNAME('COD_MUNICIPIO_IBGE').ASstring,1,2));
    Ide.cMunFG    := QUERY2.FIELDBYNAME('COD_MUNICIPIO_IBGE').ASINTEGER;

    // dados do emitente

    Emit.CNPJCPF           := sn(QUERY2.FIELDBYNAME('CNPJ').ASSTRING);

    IF (QUERY2.FIELDBYNAME('IE').ASSTRING = '') or
       (QUERY2.FIELDBYNAME('IE').ASSTRING = 'ISENTO') Then
         Emit.IE          := '1234567890'
    else
         Emit.IE          := SN(QUERY2.FIELDBYNAME('IE').ASSTRING);

    Emit.IM                := sn(QUERY2.FIELDBYNAME('INSC_MUNICIPAL').ASSTRING);
    Emit.CNAE              := sn(QUERY2.FIELDBYNAME('CNAE').ASSTRING);

    IF QUERY2.FIELDBYNAME('CRT').ASSTRING = '1' Then
      Emit.CRT      := crtSimplesNacional
    else
    IF QUERY2.FIELDBYNAME('CRT').ASSTRING = '2' Then
      Emit.CRT      := crtSimplesExcessoReceita
      else
    IF QUERY2.FIELDBYNAME('CRT').ASSTRING = '3' Then
      Emit.CRT      := crtRegimeNormal;

    Emit.xNome             := QUERY2.FIELDBYNAME('FILIAL').ASSTRING;
    Emit.xFant             := QUERY2.FIELDBYNAME('FILIAL').ASSTRING;
    Emit.EnderEmit.fone    := QUERY2.FIELDBYNAME('TELEFONE').ASSTRING;
    Emit.EnderEmit.CEP     := StrToInt(SN(QUERY2.FIELDBYNAME('CEP').ASSTRING));
    Emit.EnderEmit.xLgr    := QUERY2.FIELDBYNAME('ENDERECO').ASSTRING;
    Emit.EnderEmit.nro     := QUERY2.FIELDBYNAME('NUMERO').ASSTRING;
    Emit.EnderEmit.xCpl    := QUERY2.FIELDBYNAME('COMPLEMENTO').ASSTRING;
    Emit.EnderEmit.xBairro := QUERY2.FIELDBYNAME('BAIRRO').ASSTRING;
    Emit.EnderEmit.cMun    := StrToInt(QUERY2.FIELDBYNAME('COD_MUNICIPIO_IBGE').ASSTRING);
    Emit.EnderEmit.xMun    := QUERY2.FIELDBYNAME('CIDADE').ASSTRING;
    Emit.EnderEmit.UF      := QUERY2.FIELDBYNAME('UF').ASSTRING;
    Emit.enderEmit.cPais   := 1058;
    Emit.enderEmit.xPais   := 'BRASIL';

    // destinatario

    Dest.xNome             := qrnfe_cliente.fieldbyname('nome').asstring;
    Dest.CNPJCPF           := sn(qrnfe_cliente.fieldbyname('cpf').asstring);
    Dest.EnderDest.CEP     := StrToInt(sn(qrnfe_cliente.fieldbyname('cep').asstring));
    Dest.EnderDest.xLgr    := qrnfe_cliente.fieldbyname('endereco').asstring;
    Dest.EnderDest.nro     := qrnfe_cliente.fieldbyname('numero').asstring;
    Dest.EnderDest.xCpl    := qrnfe_cliente.fieldbyname('complemento').asstring;
    Dest.EnderDest.xBairro := qrnfe_cliente.fieldbyname('bairro').asstring;
    Dest.EnderDest.cMun    := StrToInt(qrnfe_cliente.fieldbyname('cod_municipio_ibge').asstring);
    Dest.EnderDest.xMun    := qrnfe_cliente.fieldbyname('cidade').asstring;
    Dest.EnderDest.UF      := qrnfe_cliente.fieldbyname('uf').asstring;
    Dest.EnderDest.Fone    := sn(qrnfe_cliente.fieldbyname('telefone1').asstring);
    Dest.IE                := sn(qrnfe_cliente.fieldbyname('rg').asstring);
    Dest.ISUF              := '';
    Dest.EnderDest.cPais   := 1058;
    Dest.EnderDest.xPais   := 'BRASIL';
    Dest.Email             := qrnfe_cliente.fieldbyname('email').asstring;

    // itens

    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select c000062.*, c000025.produto, c000025.codbarra cod_barra, c000025.unidade un');
    qrnota_item.sql.add('from c000062, c000025 where c000062.codproduto = c000025.codigo');
    qrnota_item.sql.add('and c000062.codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
    qrnota_item.open;
    qrnota_item.Last;
    qrnota_item.first;
    while not qrnota_item.eof do
    begin
      bnf_veiculo := false;
      frmmodulo.qrconfig.Open;
      IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
      BEGIN
        query.close;
        query.sql.clear;
        query.sql.add('select * from c000025 where codigo = '''+qrnota_item.fieldbyname('codproduto').asstring+'''');
        query.open;
        IF query.FieldByName('CODRECEITA').ASSTRING = 'SIM' THEN
        BEGIN
          bnf_veiculo := true;
        END;
      END;

      if BNF_VEICULO THEN
      begin

        with Det.Add do
        begin

          Prod.nItem    := qrnota_item.fieldbyname('item').asinteger;
          Prod.cProd    := qrnota_item.fieldbyname('codproduto').asstring;
          if length(trim(qrnota_item.fieldbyname('codbarra').asString))>0 then
            Prod.cEAN     := frmPrincipal.Zerarcodigo(qrnota_item.fieldbyname('codbarra').asstring, 13)
          else
            Prod.cEAN     := '';

          prod.NCM      := sn(qrnota_item.fieldbyname('classificacao_fiscal').asstring);
          Prod.xProd    := copy(query.fieldbyname('veic_especie').asstring,1,3)+'/'+
                           query.fieldbyname('veic_tipo').asstring;
          infAdProd     := query.fieldbyname('veic_cod_marca').asstring+'/'+
                           qrnota_item.fieldbyname('produto').asstring+';'+

                           'Ano: '+query.fieldbyname('veic_ano_fabricacao').asstring+' '+
                           'Mod: '+query.fieldbyname('veic_ano_modelo').asstring+';'+

                           'Cor: '+query.fieldbyname('veic_cor').asstring+';'+

                           'Combustivel: '+query.fieldbyname('veic_tipo_combustivel').asstring+';'+

                           'Placa: '+query.fieldbyname('VEIC_SERIE').asstring+';'+

                           'Renavam: '+query.fieldbyname('veic_renavam').asstring+';'+

                           'Chassi: '+query.fieldbyname('veic_chassi').asstring+';'+

                           'Categoria: '+query.fieldbyname('VEIC_NUMERO_MOTOR').asstring;




          Prod.CFOP     := qrnota_item.fieldbyname('cfop').asstring;
          Prod.EXTIPI   := '23';
          Prod.uCom     := qrnota_item.fieldbyname('UN').asstring;
          Prod.qCom     := qrnota_item.fieldbyname('qtde').asfloat;
          Prod.vUnCom   := qrnota_item.fieldbyname('unitario').asfloat;
          Prod.vProd    := qrnota_item.fieldbyname('total').asfloat;
          Prod.cEANTrib := '';
          Prod.qTrib    := qrnota_item.fieldbyname('qtde').asfloat;
          Prod.vUnTrib  := qrnota_item.fieldbyname('unitario').asfloat;
          prod.uTrib    := qrnota_item.fieldbyname('UN').asstring;
          prod.vDesc    := qrnota_item.fieldbyname('desconto').asfloat;
          Prod.vFrete   := qrnota.fieldbyname('frete').AsCurrency;
          Prod.vSeg     := qrnota.fieldbyname('seguro').AsCurrency;
          Prod.vOutro   := qrnota.fieldbyname('outras_despesas').AsCurrency;
          Prod.IndTot   := itSomaTotalNFE;  // qrnota.fieldbyname('total_nota').AsVariant;

        with Imposto do
        begin

          ICMS.orig  := oeNacional;
          iCRT := StrToInt(frmmodulo.qrfilial.fieldbyname('crt').asstring);

          case iCRT of
          1:begin  // Linhas para o simples nacional
             if qrnota_item.fieldbyname('csosn').asstring = '101' then ICMS.CSOSN :=  csosn101;
             if qrnota_item.fieldbyname('csosn').asstring = '102' then ICMS.CSOSN :=  csosn102;
             if qrnota_item.fieldbyname('csosn').asstring = '103' then ICMS.CSOSN :=  csosn103;
             if qrnota_item.fieldbyname('csosn').asstring = '300' then ICMS.CSOSN :=  csosn300;
             if qrnota_item.fieldbyname('csosn').asstring = '400' then ICMS.CSOSN :=  csosn400;
             if qrnota_item.fieldbyname('csosn').asstring = '201' then ICMS.CSOSN :=  csosn201;
             if qrnota_item.fieldbyname('csosn').asstring = '202' then ICMS.CSOSN :=  csosn202;
             if qrnota_item.fieldbyname('csosn').asstring = '500' then ICMS.CSOSN :=  csosn500;
             if qrnota_item.fieldbyname('csosn').asstring = '900' then ICMS.CSOSN :=  csosn900;

             case ICMS.CSOSN of

              csosn101 : begin
                          ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                          ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                         end;

              csosn102 : begin

                         end;

              csosn103 : begin

                         end;

              csosn300 : begin

                         end;

              csosn400 : begin

                         end;

              csosn201 : begin
                          ICMS.modBCST     := dbisMargemValorAgregado;;
                          ICMS.pMVAST      := qrnota_item.fieldbyname('margem_agregada').Value;
                          ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.pICMSST     := 00.00;
                          ICMS.vICMSST     := qrnota_item.fieldbyname('icms_sub').Value;
                          ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                          ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                         end;

              csosn202 : begin
                          ICMS.modBCST  := dbisMargemValorAgregado;
                          ICMS.pMVAST   := qrnota_item.fieldbyname('margem_agregada').Value;
                          ICMS.pRedBCST := 00.00;
                          ICMS.vBCST    := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.pICMSST  := 00.00;
                          ICMS.vICMSST  := qrnota_item.fieldbyname('icms_sub').Value;
                         end;

              csosn500 : begin
                          ICMS.vBCSTRet   := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.vICMSSTRet := qrnota_item.fieldbyname('icms_sub').Value;
                         end;

              csosn900 : begin
                          ICMS.modBC       := dbiMargemValorAgregado;
                          ICMS.vBC         := qrnota_item.fieldbyname('base_calculo').Value;
                          ICMS.pRedBC      := qrnota_item.fieldbyname('icms_reduzido').Value;
                          ICMS.pICMS       := qrnota_item.fieldbyname('ICMS').asfloat;
                          ICMS.vICMS       := qrnota_item.fieldbyname('valor_icms').Value;
                          ICMS.modBCST     := dbisMargemValorAgregado;
                          ICMS.pMVAST      := qrnota_item.fieldbyname('margem_agregada').Value;
                          ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.pICMSST     := 00.00;
                          ICMS.vICMSST     := qrnota_item.fieldbyname('icms_sub').Value;
                          ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                          ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                         end;
             end; // fim do case icms.csosn

            end;

          2:begin
             //        (...)
            end;

          3:begin
                if qrnota_item.fieldbyname('cst').asstring = '000' then ICMS.CST :=  cst00;
                if qrnota_item.fieldbyname('cst').asstring = '010' then ICMS.CST :=  cst10;
                if qrnota_item.fieldbyname('cst').asstring = '020' then ICMS.CST :=  cst20;
                if qrnota_item.fieldbyname('cst').asstring = '030' then ICMS.CST :=  cst30;
                if qrnota_item.fieldbyname('cst').asstring = '040' then ICMS.CST :=  cst40;
                if qrnota_item.fieldbyname('cst').asstring = '041' then ICMS.CST :=  cst41;
                if qrnota_item.fieldbyname('cst').asstring = '050' then ICMS.CST :=  cst50;
                if qrnota_item.fieldbyname('cst').asstring = '051' then ICMS.CST :=  cst51;
                if qrnota_item.fieldbyname('cst').asstring = '060' then ICMS.CST :=  cst60;
                if qrnota_item.fieldbyname('cst').asstring = '070' then ICMS.CST :=  cst70;
                if qrnota_item.fieldbyname('cst').asstring = '080' then ICMS.CST :=  cst80;
                if qrnota_item.fieldbyname('cst').asstring = '081' then ICMS.CST :=  cst81;
                if qrnota_item.fieldbyname('cst').asstring = '090' then ICMS.CST :=  cst90;
                ICMS.modBC  := dbiPrecoTabelado;
                ICMS.pICMS  := qrnota_item.fieldbyname('ICMS').asfloat;
                ICMS.vICMS  := qrnota_item.fieldbyname('valor_icms').asfloat;
                ICMS.vBC    := qrnota_item.fieldbyname('base_calculo').asfloat;
                ICMS.orig   := oeNacional;
                IPI.CST     := ipi00;
                IPI.clEnq   := '';
                IPI.cEnq    := '999';
              end;

          end;  // fim do case iCRT
        end;  //fim do with imposto
 end;
 end
      ELSE
      BEGIN

     With Det.Add do
      begin
       Prod.nItem    := qrnota_item.fieldbyname('item').asinteger;
       Prod.cProd    := qrnota_item.fieldbyname('codproduto').asstring;
       if length(trim(qrnota_item.fieldbyname('codbarra').asString))>0 then
        Prod.cEAN     := frmPrincipal.Zerarcodigo(qrnota_item.fieldbyname('codbarra').asstring, 13)
       else
        Prod.cEAN     := '';

       prod.NCM      := sn(qrnota_item.fieldbyname('classificacao_fiscal').asstring);
       Prod.xProd    := qrnota_item.fieldbyname('produto').asstring;
       Prod.CFOP     := qrnota_item.fieldbyname('cfop').asstring;
       Prod.uCom     := qrnota_item.fieldbyname('UN').asstring;
       Prod.qCom     := qrnota_item.fieldbyname('qtde').asfloat;
       Prod.vUnCom   := qrnota_item.fieldbyname('unitario').asfloat;
       Prod.vProd    := qrnota_item.fieldbyname('total').asfloat;
       Prod.qTrib    := qrnota_item.fieldbyname('qtde').asfloat;
       Prod.vUnTrib  := qrnota_item.fieldbyname('unitario').asfloat;
       prod.uTrib    := qrnota_item.fieldbyname('UN').asstring;
       prod.vDesc    := qrnota_item.fieldbyname('desconto').AsCurrency;
       Prod.vFrete   := qrnota.fieldbyname('frete').AsCurrency;
       Prod.vSeg     := qrnota.fieldbyname('seguro').AsCurrency;
       Prod.vOutro   := qrnota.fieldbyname('outras_despesas').AsCurrency;
       infAdProd     := ''; // complemento do nome do item
       Prod.EXTIPI   := '23';
       Prod.cEANTrib := '';
       Prod.IndTot   := itSomaTotalNFe;  //qrnota.fieldbyname('total_nota').AsVariant;


       fsb_valorliquidoitem := qrnota_item.fieldbyname('unitario').asfloat-((qrnota_item.fieldbyname('qtde').asfloat*qrnota_item.fieldbyname('unitario').asfloat)-qrnota_item.fieldbyname('total').asfloat);

       fsb_valorliquidocupom := fsb_valorliquidocupom+fsb_valorliquidoitem;

       buscarcalcibpt(qrnota_item.fieldbyname('codproduto').asstring,fsb_valorliquidoitem, fsb_valorliquidocupom);




       with Imposto do
        begin
          ICMS.orig  := oeNacional;
          iCRT := StrToInt(frmmodulo.qrfilial.fieldbyname('crt').asstring);

          case iCRT of
          1:begin  // Linhas para o simples nacional
             if qrnota_item.fieldbyname('csosn').asstring = '101' then ICMS.CSOSN :=  csosn101;
             if qrnota_item.fieldbyname('csosn').asstring = '102' then ICMS.CSOSN :=  csosn102;
             if qrnota_item.fieldbyname('csosn').asstring = '103' then ICMS.CSOSN :=  csosn103;
             if qrnota_item.fieldbyname('csosn').asstring = '300' then ICMS.CSOSN :=  csosn300;
             if qrnota_item.fieldbyname('csosn').asstring = '400' then ICMS.CSOSN :=  csosn400;
             if qrnota_item.fieldbyname('csosn').asstring = '201' then ICMS.CSOSN :=  csosn201;
             if qrnota_item.fieldbyname('csosn').asstring = '202' then ICMS.CSOSN :=  csosn202;
             if qrnota_item.fieldbyname('csosn').asstring = '500' then ICMS.CSOSN :=  csosn500;
             if qrnota_item.fieldbyname('csosn').asstring = '900' then ICMS.CSOSN :=  csosn900;

             case ICMS.CSOSN of

              csosn101 : begin
                          ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                          ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                         end;

              csosn102 : begin

                         end;
              csosn103 : begin

                         end;
              csosn300 : begin

                         end;
              csosn400 : begin

                         end;

              csosn201 : begin
                          ICMS.modBCST     := dbisMargemValorAgregado;
                          ICMS.pMVAST      := qrnota_item.fieldbyname('margem_agregada').Value;
                          ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.pICMSST     := 00.00;
                          ICMS.vICMSST     := qrnota_item.fieldbyname('icms_sub').Value;
                          ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                          ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                         end;

              csosn202 : begin
                          ICMS.modBCST  := dbisMargemValorAgregado;
                          ICMS.pMVAST   := qrnota_item.fieldbyname('margem_agregada').Value;
                          ICMS.pRedBCST := 00.00;
                          ICMS.vBCST    := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.pICMSST  := 00.00;
                          ICMS.vICMSST  := qrnota_item.fieldbyname('icms_sub').Value;
                         end;

              csosn500 : begin
                          ICMS.vBCSTRet   := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.vICMSSTRet := qrnota_item.fieldbyname('icms_sub').Value;
                         end;

              csosn900 : begin
                          ICMS.modBC       := dbiMargemValorAgregado;
                          ICMS.vBC         := qrnota_item.fieldbyname('base_calculo').Value;
                          ICMS.pRedBC      := qrnota_item.fieldbyname('icms_reduzido').Value;
                          ICMS.pICMS       := qrnota_item.fieldbyname('ICMS').asfloat;
                          ICMS.vICMS       := qrnota_item.fieldbyname('valor_icms').Value;
                          ICMS.modBCST     := dbisMargemValorAgregado;
                          ICMS.pMVAST      := qrnota_item.fieldbyname('margem_agregada').Value;
                          ICMS.pRedBCST    := 00.00;
                          ICMS.vBCST       := qrnota_item.fieldbyname('base_sub').Value;
                          ICMS.pICMSST     := 00.00;
                          ICMS.vICMSST     := qrnota_item.fieldbyname('icms_sub').Value;
                          ICMS.pCredSN     := 0.0; // Colocar o percentual do Crédito
                          ICMS.vCredICMSSN := 0.0; // Colocar o valor do Crédito
                         end;
             end; // fim do case icms.csosn

            end;

          2:begin
             //        (...)
            end;

          3:begin
             if qrnota_item.fieldbyname('cst').asstring = '000' then ICMS.CST :=  cst00;
             if qrnota_item.fieldbyname('cst').asstring = '010' then ICMS.CST :=  cst10;
             if qrnota_item.fieldbyname('cst').asstring = '020' then ICMS.CST :=  cst20;
             if qrnota_item.fieldbyname('cst').asstring = '030' then ICMS.CST :=  cst30;
             if qrnota_item.fieldbyname('cst').asstring = '040' then ICMS.CST :=  cst40;
             if qrnota_item.fieldbyname('cst').asstring = '041' then ICMS.CST :=  cst41;
             if qrnota_item.fieldbyname('cst').asstring = '050' then ICMS.CST :=  cst50;
             if qrnota_item.fieldbyname('cst').asstring = '051' then ICMS.CST :=  cst51;
             if qrnota_item.fieldbyname('cst').asstring = '060' then ICMS.CST :=  cst60;
             if qrnota_item.fieldbyname('cst').asstring = '070' then ICMS.CST :=  cst70;
             if qrnota_item.fieldbyname('cst').asstring = '080' then ICMS.CST :=  cst80;
             if qrnota_item.fieldbyname('cst').asstring = '081' then ICMS.CST :=  cst81;
             if qrnota_item.fieldbyname('cst').asstring = '090' then ICMS.CST :=  cst90;

             ICMS.modBC  := dbiPrecoTabelado;
             ICMS.pICMS  := qrnota_item.fieldbyname('ICMS').asfloat;
             ICMS.vICMS  := qrnota_item.fieldbyname('valor_icms').asfloat;
             ICMS.vBC    := qrnota_item.fieldbyname('base_calculo').asfloat;
             ICMS.orig   := oeNacional;
             IPI.CST     := ipi00;
             IPI.clEnq   := '';
             IPI.cEnq    := '999';
            end;

          end; // fim do case iCRT

        end; // fim do with imposto

      end; // fim do with det.add

      qrnota_item.Next;

    end; // fim do loop de itens

    // base de calculo do icms
    Total.ICMSTot.vBC   := qrnota.fieldbyname('base_calculo').asfloat;
    // valor do icms
    Total.ICMSTot.vICMS := qrnota.fieldbyname('valor_icms').asfloat;
    // base de calculo st
    Total.ICMSTot.vBCST   := qrnota.fieldbyname('base_sub').AsFloat;
    // valor st
    Total.ICMSTot.vst := qrnota.fieldbyname('icms_sub').AsFloat;
    // frete
    Total.ICMSTot.vFrete:= qrnota.fieldbyname('frete').asfloat;
    // seguro
    Total.ICMSTot.vSeg  := qrnota.fieldbyname('seguro').AsFloat;
    // outras despesas
    Total.ICMSTot.vOutro:= qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat;
    // ipi
    Total.ICMSTot.vIPI:= qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat;
    // valor da nota
    Total.ICMSTot.vNF   := qrnota.fieldbyname('TOTAL_NOTA').asfloat;
    // valor dos produtos
    Total.ICMSTot.vProd := qrnota.fieldbyname('VALOR_PRODUTOS').asfloat;
    // desconto
    Total.ICMSTot.vDesc := qrnota.fieldbyname('DESCONTO').asfloat;

    //contas a pagar

   cobr.Fat.nFat  := qrnota.fieldbyname('numero').AsString;
   cobr.Fat.vOrig := RoundTo(qrnota.fieldbyname('TOTAL_NOTA').asfloat, -2);
   cobr.Fat.vDesc := RoundTo(0.0, -2);
   cobr.Fat.vLiq  := RoundTo(qrnota.fieldbyname('TOTAL_NOTA').asfloat, -2);

   for i:=1 to qrnota.fieldbyname('fat_qtde_prestacao').AsInteger do
    begin
     with Cobr.Dup.Add do
      begin
//       nDup  := FormatFloat('00', i); -> para que o numero saisse 01, 02, 03...
       case i of
        1: begin
            nDup  := qrnota.fieldbyname('faturamento_numero1').AsString;
            dVenc := qrnota.fieldbyname('faturamento_data1').AsDateTime;
            vDup  := RoundTo(qrnota.fieldbyname('faturamento_valor1').asfloat, -2);
           end;
        2: begin
            nDup  := qrnota.fieldbyname('faturamento_numero2').AsString;
            dVenc := qrnota.fieldbyname('faturamento_data2').AsDateTime;
            vDup  := RoundTo(qrnota.fieldbyname('faturamento_valor2').asfloat, -2);
           end;
        3: begin
            nDup  := qrnota.fieldbyname('faturamento_numero3').AsString;
            dVenc := qrnota.fieldbyname('faturamento_data3').AsDateTime;
            vDup  := RoundTo(qrnota.fieldbyname('faturamento_valor3').asfloat, -2);
           end;
        4: begin
            nDup  := qrnota.fieldbyname('faturamento_numero4').AsString;
            dVenc := qrnota.fieldbyname('faturamento_data4').AsDateTime;
            vDup  := RoundTo(qrnota.fieldbyname('faturamento_valor4').asfloat, -2);
           end;
        5: begin
            nDup  := qrnota.fieldbyname('faturamento_numero5').AsString;
            dVenc := qrnota.fieldbyname('faturamento_data5').AsDateTime;
            vDup  := RoundTo(qrnota.fieldbyname('faturamento_valor5').asfloat, -2);
           end;
        6: begin
            nDup  := qrnota.fieldbyname('faturamento_numero6').AsString;
            dVenc := qrnota.fieldbyname('faturamento_data6').AsDateTime;
            vDup  := RoundTo(qrnota.fieldbyname('faturamento_valor6').asfloat, -2);
           end;
       end;
      end;
    end;

    //trasnportadora

    case qrnota.fieldbyname('frete_conta').AsInteger of
      0 : Transp.modFrete := mfContaEmitente;
      1 : Transp.modFrete := mfContaDestinatario;
      2 : Transp.modFrete := mfContaTerceiros;
      9 : Transp.modFrete := mfSemFrete;
    end;

     Transp.Transporta.CNPJCPF := qrtransportador2.fieldbyname('cpf').asstring;
     Transp.Transporta.xNome   := Trim(qrtransportador2.fieldbyname('nome').asstring);
     Transp.Transporta.IE      := qrtransportador2.fieldbyname('rg').asstring;
     Transp.Transporta.xEnder  := Trim(qrtransportador2.fieldbyname('endereco').asstring)+', '+
                                  Trim(qrtransportador2.fieldbyname('numero').asstring);
     Transp.Transporta.xMun    := Trim(qrtransportador2.fieldbyname('cidade').asstring);
     Transp.Transporta.UF      := qrtransportador2.fieldbyname('uf').asstring;

     Transp.retTransp.vServ    := RoundTo(0.0, -2);;  // X12 - Valor do Serviço
     Transp.retTransp.vBCRet   := RoundTo(0.0, -2);;  // X13 - BC da Retenção do ICMS
     Transp.retTransp.pICMSRet := RoundTo(0.0, -2);;  // X14 - Alíquota da Retenção
     Transp.retTransp.vICMSRet := RoundTo(0.0, -2);;  // X15 - Valor do ICMS Retido
     Transp.retTransp.CFOP     := ''; // X16 - CFOP (Utilizar Tabela de CFOP)
     Transp.retTransp.cMunFG   := 0;  // X17 - Código do município de ocorrência do fato gerador do ICMS do transporte (Tabela do IBGE)

     if qrnota.fieldbyname('frete_conta').AsString = '9' then
       begin
         Transp.Transporta.xEnder  := '';
         Transp.veicTransp.placa   := '';
         Transp.veicTransp.UF      := '';
         Transp.veicTransp.RNTC    := ''; // X21 - Registro Nacional de Transportador de Carga (ANTT)
       end
       else
       begin
         Transp.Transporta.xEnder  := Trim(qrtransportador2.fieldbyname('endereco').asstring)+', '+
                                      Trim(qrtransportador2.fieldbyname('numero').asstring);
         Transp.veicTransp.placa   := qrnota.fieldbyname('placa').asstring;
         Transp.veicTransp.UF      := qrnota.fieldbyname('placa_uf').asstring;
         Transp.veicTransp.RNTC    := qrtransportador2.fieldbyname('antt').asstring; // X21 - Registro Nacional de Transportador de Carga (ANTT)
       end;

      //Dados sobre Volumes Transportados

   with Transp.Vol.Add do
    begin
     qVol  := qrnota.fieldbyname('vol_qtde').AsInteger;
     esp   := qrnota.fieldbyname('vol_especie').AsString;
     marca := qrnota.fieldbyname('vol_marca').AsString;
     nVol  := qrnota.fieldbyname('vol_numero').AsString;
     pesoL := RoundTo(qrnota.fieldbyname('peso_liquido').AsFloat, -3);
     pesoB := RoundTo(qrnota.fieldbyname('peso_bruto').AsFloat, -3);
    end;

     // Informações complementares

    InfAdic.infCpl := 'Val Aprox. dos Tributos R$ '+formatfloat('###,###,##0.00',vlribpt )+' ('+  formatfloat('###,###,##0.00',porcibpt )  +'%) Fonte: IBPT'+';'+
                      qrnota.fieldbyname('inf1').asstring+';'+
                      qrnota.fieldbyname('inf2').asstring+';'+
                      qrnota.fieldbyname('inf3').asstring+';'+
                      qrnota.fieldbyname('inf4').asstring+';'+
                      qrnota.fieldbyname('inf5').asstring+';';

  end;

  ACBrNFe1.NotasFiscais.Items[0].SaveToFile;
  result := ACBrNFe1.NotasFiscais.Items[0].NomeArq;
  MemoResp.Lines.LoadFromFile(PathWithDelim(ACBrNFe1.Configuracoes.Geral.PathSalvar)+copy(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID, (length(ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID)-44)+1, 44)+'-NFe.xml');
  LoadXML(MemoResp, WBResposta);

end;
end;
procedure Tfrmnotafiscal_menu.bincluirClick(Sender: TObject);
begin

  vrecno := qrnota.RecNo;
  vopcao_nfs := 1;

  qrnota.Insert;
  qrnota.FieldByName('codigo').asstring := frmprincipal.codifica('000061');
  qrnota.fieldbyname('situacao').asinteger := 1;
  qrnota.fieldbyname('baixa_estoque').asstring := 'S';
  qrnota.fieldbyname('custo_venda').asstring := 'V';
  qrnota.fieldbyname('sit').asstring := 'N';
  qrnota.fieldbyname('movimento').asstring := 'S';
  qrnota.fieldbyname('codfilial').asstring := '000001';
  qrnota.fieldbyname('codvendedor').asstring := 'S/VEND';

  FRMMODULO.QRCONFIG.OPEN;

  IF FRMMODULO.QRCONFIG.FIELDBYNAME('NF_GERAR_RECEBER').ASSTRING = '1' THEN
     qrnota.fieldbyname('fat_gerar_receber').asinteger := 1 else
     qrnota.fieldbyname('fat_gerar_receber').asinteger := 0 ;

  IF FRMMODULO.QRCONFIG.FIELDBYNAME('NF_GERAR_duplicata').ASSTRING = '1' THEN
     qrnota.fieldbyname('fat_gerar_duplicata').asinteger := 1 else
     qrnota.fieldbyname('fat_gerar_duplicata').asinteger := 0 ;

  frmnotafiscal := tfrmnotafiscal.create(self);
  frmnotafiscal.rtipo.ItemIndex := 0;
  frmnotafiscal.showmodal;

  qrnota.refresh;
  qrnota.RecNo := vrecno;
  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from  c000007');
  qrcliente.Open;

  btotaliza_notaClick(frmnotafiscal_menu);

end;

procedure Tfrmnotafiscal_menu.FormShow(Sender: TObject);
begin
  if sUsa_NFE = '1' then
  begin
    pn_nfe.Visible := True;
    Inicia_NFe();
  end
  else
    pn_nfe.Visible := false;

  qrmodelo.CLOSE;
  QRMODELO.SQL.CLEAR;
  QRMODELO.SQL.ADD('SELECT * FROM C000082 ORDER BY SINTEGRA');
  QRMODELO.OPEN;
  QRMODELO.IndexFieldNames := 'SINTEGRA';

  FRMMODULO.QRFILIAL.close;
  FRMMODULO.QRFILIAL.sql.clear;
  FRMMODULO.QRFILIAL.sql.add('select * from c000004');
  FRMMODULO.QRFILIAL.Open;


  frmmodulo.qrtransportador.close;
  frmmodulo.qrtransportador.sql.clear;
  frmmodulo.qrtransportador.SQL.add('select * from c000010 order by nome');
  frmmodulo.qrtransportador.open;
  frmmodulo.qrtransportador.IndexFieldNames := 'nome';


  frmmodulo.qrcfop.close;
  frmmodulo.qrcfop.sql.clear;
  frmmodulo.qrcfop.SQL.add('select * from c000030 ');
  frmmodulo.qrcfop.open;
  frmmodulo.qrcfop.IndexFieldNames := 'NATUREZA';

  frmmodulo.qrfiscal_modelo.close;
  frmmodulo.qrfiscal_modelo.sql.clear;
  frmmodulo.qrfiscal_modelo.sql.add('SELECT * FROM C000082 ORDER BY MODELO');
  frmmodulo.qrfiscal_modelo.open;
  frmmodulo.qrfiscal_MODELO.IndexFieldNames := 'SINTEGRA';


 dateedit1.text := '01/'+copy(datetostr(incmonth(date,-1)),4,7);
 dateedit2.date := frmprincipal.UltimoDiaMes(date);

  qrnota.close;
  qrnota.sql.clear;
  qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf order by numero');
  qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
  qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;

  qrnota.open;


  //conf_totalnota

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  //gridRowChanged(frmcompra_menu);
  grid.SetFocus;

end;

procedure Tfrmnotafiscal_menu.bfecharClick(Sender: TObject);
begin
   close;
end;

procedure Tfrmnotafiscal_menu.balterarClick(Sender: TObject);
var
  vrecno : integer;
begin

  vrecno := qrnota.RecNo;

  IF QRNOTA.FieldByName('SITUACAO').ASINTEGER = 1 THEN
    BEGIN
      vopcao_nfs := 2;
      IF QRNOTA.RECORDCOUNT = 0 THEN EXIT;

      qrnota.edit;

      frmnotafiscal := tfrmnotafiscal.create(self);
      frmnotafiscal.showmodal;

      qrnota.refresh;

      qrempresa.close;
      qrempresa.sql.clear;
      qrempresa.sql.add('select * from  c000004');
      qrempresa.Open;

      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from  c000007');
      qrcliente.Open;

      btotaliza_notaClick(frmnotafiscal_menu);

      qrnota.RecNo := vrecno;

    END
  else
    begin
      application.messagebox('Nota fiscal cancelada! Impossível alterar!','Atenção',mb_ok+mb_iconerror);
    end;
end;

procedure Tfrmnotafiscal_menu.bexcluirClick(Sender: TObject);
begin
  if qrnota.recordcount = 0 then exit;

  if frmprincipal.autentica('Excluir NF',4) then
    begin
      query2.close;
      query2.sql.clear;
      query2.sql.add('select * from c000049 where codvenda = ''NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
      query2.sql.add('and valor_pago > 0');
      query2.Open;
      if query2.RecordCount > 0 then
        begin
          application.messagebox('Esta nota fiscal possue prestações que já foram feito pagamentos! Favor verificar!',
                                 'Aviso',mb_ok+mb_iconerror);
          EXIT;
        end;
      query2.close;
      query2.sql.clear;
      query2.sql.add('delete from c000117 where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
      query2.execsql;

      query2.close;
      query2.sql.clear;
      query2.sql.add('delete from c000049 where codvenda = ''NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
      query2.execsql;

      IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 1 THEN
        BEGIN
          qrnota_item.Close;
          qrnota_item.sql.clear;
          qrnota_item.sql.add('select * from c000062 where codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
          qrnota_item.open;
          while qrnota_item.RecordCount <> 0 do
            begin
              IF qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' THEN
                BEGIN
                  FRMMODULO.QRPRODUTO_MOV.CLOSE;
                  FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
                  FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
                  FRMMODULO.QRPRODUTO_MOV.ExecSQL;
                end;


              IF QRNOTA.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING = 'S' THEN
                BEGIN
                  if qrnota_item.FieldByName('codgrade').asstring <> '' then
                    begin
                      IF frmnotafiscal_menu.QRNOTA.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING = 'S' THEN
                        BEGIN
                          frmmodulo.qrgrade_produto.close;
                          frmmodulo.qrgrade_produto.sql.clear;
                          frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrnota_item.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
                          frmmodulo.qrgrade_produto.sql.add('and codigo = '''+qrnota_item.fieldbyname('codgrade').asstring+'''');
                          frmmodulo.qrgrade_produto.open;
                          if frmmodulo.qrgrade_produto.RecordCount > 0 then
                          BEGIN
                              frmmodulo.qrgrade_produto.edit;
                              if frmnotafiscal_menu.qrnota.FieldByName('MOVIMENTO').asstring = 'S' then
                                frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat +
                                                                                          qrnota_item.fieldbyname('qtde').asfloat
                              else
                                frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                                          qrnota_item.fieldbyname('qtde').asfloat;
                              frmmodulo.qrgrade_produto.post;
                          END;
                        END;
                    end;
                    if qrnota_item.fieldbyname('serial').asstring <> '' then
                      begin
                        query.close;
                        query.sql.clear;
                        query.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda= :datavenda,');
                        query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
                        query.sql.add('where serial = '''+qrnota_item.fieldbyname('serial').asstring+'''');
                        query.sql.add('and codproduto = '''+qrnota_item.fieldbyname('codigo').asstring+'''');
                        query.params.Parambyname('situacao').AsInteger  := 1;
                        query.params.Parambyname('cliente').asstring    := '';
                        query.params.Parambyname('codcliente').asstring := '';
                        query.params.Parambyname('DATAVENDA').ASSTRING  := '';
                        query.params.Parambyname('codvenda').asstring   := '';
                        query.params.Parambyname('precovenda').asfloat  := 0;
                        query.execsql;
                      end;

        END;
        qrnota_item.delete;
      end;
    END;
    QRNOTA.Delete;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;


end;

procedure Tfrmnotafiscal_menu.bitbtn6Click(Sender: TObject);
begin
     vrecno := qrnota.RecNo;

  frmlista_notasaida := tfrmlista_notasaida.create(self);
  frmlista_notasaida.showmodal;

    qrnota.RecNo := vrecno;

end;

procedure Tfrmnotafiscal_menu.b(Sender: TObject);
begin
//
end;

procedure Tfrmnotafiscal_menu.gridRowChanged(Sender: TObject);
begin
{
  IF QRNOTA.FIELDBYNAME('SITUACAO').ASINTEGER = 1 THEN
    BALTERAR.Enabled := TRUE ELSE BALTERAR.Enabled := FALSE;
}

  if sUsa_NFE = '1' then
  begin
    try
      case qrnota.fieldbyname('nfe_situacao').asinteger of
      3 : // aguardando validacao
      begin
        bt_nfe_validar.Enabled := true;
        bt_nfe_assinar.Enabled := false;
        bt_nfe_inutilizar.Enabled:=true;
        bt_nfe_danfe.Enabled := false;
        bt_nfe_consultar.Enabled := false;
        bt_nfe_cancelar.Enabled := false;
        bt_nfe_exportar.Enabled := false;
      end;
      4 : // validada
      begin
        bt_nfe_validar.Enabled := true;
        bt_nfe_assinar.Enabled := true;
        bt_nfe_inutilizar.Enabled:=true;
        bt_nfe_danfe.Enabled := false;
        bt_nfe_consultar.Enabled := true;
        bt_nfe_cancelar.Enabled := false;
        bt_nfe_exportar.Enabled := false;
      end;
      5 : // enviada. aguardando retorno.
      begin
        bt_nfe_validar.Enabled := false;
        bt_nfe_assinar.Enabled := true;
        bt_nfe_inutilizar.Enabled:=false;
        bt_nfe_danfe.Enabled := false;
        bt_nfe_consultar.Enabled := true;
        bt_nfe_cancelar.Enabled := false;
        bt_nfe_exportar.Enabled := false;
      end;
      6 : // aceita
      begin
        bt_nfe_validar.Enabled := false;
        bt_nfe_assinar.Enabled := false;
        bt_nfe_inutilizar.Enabled:=true;
        bt_nfe_danfe.Enabled := true;
        bt_nfe_consultar.Enabled := true;
        bt_nfe_cancelar.Enabled := true;
        bt_nfe_exportar.Enabled := true;
      end;
      7 : // rejeitada
      begin
        bt_nfe_validar.Enabled := true;
        bt_nfe_assinar.Enabled := true;
        bt_nfe_inutilizar.Enabled:=true;
        bt_nfe_danfe.Enabled := false;
        bt_nfe_consultar.Enabled := true;
        bt_nfe_cancelar.Enabled := false;
        bt_nfe_exportar.Enabled := false;
      end;
      8 : // cancelada
      begin
        bt_nfe_validar.Enabled := false;
        bt_nfe_assinar.Enabled := false;
        bt_nfe_inutilizar.Enabled:=true;
        bt_nfe_danfe.Enabled := false;
        bt_nfe_consultar.Enabled := true;
        bt_nfe_cancelar.Enabled := false;
        bt_nfe_exportar.Enabled := false;
      end;
      end;
    except
    end;
  end;




end;

procedure Tfrmnotafiscal_menu.Alterar2Click(Sender: TObject);
begin
  if balterar.Enabled then balterarClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.abelasFunes2Click(Sender: TObject);
begin
 btabela.Click;
end;

procedure Tfrmnotafiscal_menu.CFOP1Click(Sender: TObject);
begin
  FRMCFOP := TFRMCFOP.CREATE(SELF);
  FRMCFOP.SHOWMODAL;
end;

procedure Tfrmnotafiscal_menu.ClassesdeRecolhimento1Click(Sender: TObject);
begin
  FRMcst := TFRMcst.CREATE(SELF);
  FRMcst.SHOWMODAL;
end;

procedure Tfrmnotafiscal_menu.ModelosdeNotasFiscais1Click(Sender: TObject);
begin
  FRMmodelo_fiscal := TFRMmodelo_fiscal.CREATE(SELF);
  FRMmodelo_fiscal.SHOWMODAL;
end;

procedure Tfrmnotafiscal_menu.eclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
  begin
    if ecliente.text <> '' then
    begin
    qrcliente2.close;
    qrcliente2.sql.Clear;
    qrcliente2.sql.add('select * from c000007 where codigo = '''+frmprincipal.zerarcodigo(copy(ecliente.Text,1,6),6)+'''');
    qrcliente2.Open;
    if qrcliente2.RecordCount > 0 then
    begin
      if qrcliente2.RecordCount = 1 then
      begin
        ecliente.text := qrcliente2.fieldbyname('codigo').asstring +' '+ qrcliente2.fieldbyname('nome').asstring;
        perform(wm_nextdlgctl,0,0);
      end
      else
      begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  'select * from c000007 where upper(nome) like '''+ansiuppercase(ecliente.text)+'%'' order by nome';
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;
          perform(wm_nextdlgctl,0,0);
        end;
      end;
    end
    else
    begin
      application.messagebox('Cliente não encontrado! Favor verificar!','Atenção',mb_ok+mb_iconerror);
      ecliente.setfocus;

    end;
    end;
  end;


end;

procedure Tfrmnotafiscal_menu.eclienteButtonClick(Sender: TObject);
begin
        resultado_pesquisa1 := '';
        parametro_pesquisa :=  ecliente.text;
        frmxloc_cliente := tfrmxloc_cliente.create(self);
        frmxloc_cliente.showmodal;
        if resultado_pesquisa1 <> '' then
        begin
          ecliente.text := resultado_pesquisa1+' '+resultado_pesquisa2;

        end;
        enumero.setfocus;
end;

procedure Tfrmnotafiscal_menu.ENUMEROKeyPress(Sender: TObject; var Key: Char);
begin
IF KEY = #13 THEN PERFORM(WM_NEXTDLGCTL,0,0)
end;

procedure Tfrmnotafiscal_menu.DateEdit2KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #13 THEN bfiltrar.setfocus;
end;

procedure Tfrmnotafiscal_menu.BfiltrarClick(Sender: TObject);
var cliente, nota : string;
begin
  if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
  if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

  qrnota.close;
  qrnota.sql.clear;

  if (enumero.text = '000000') or (enumero.text = '') then
  begin
    qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
    qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
    qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
  end
  else
    qrnota.SQL.add('select * from c000061 where codigo is not null '+cliente+nota+' order by numero');
  qrnota.open;

  rqde.Value   := qrnota.RecordCount;

  btotaliza_notaClick(frmnotafiscal_menu);

  gridRowChanged(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.ENUMEROExit(Sender: TObject);
begin
  enumero.text := frmprincipal.zerarcodigo(enumero.text,6);
tedit(sender).Color := clwindow;
end;

procedure Tfrmnotafiscal_menu.btotaliza_notaClick(Sender: TObject);
begin
  rqde.value := 0;
  rtotal.value := 0;
  dsnota.DataSet := nil;
  qrnota.first;
  while not qrnota.Eof do
  begin
     rqde.Value := rqde.Value + 1;
     rtotal.value := rtotal.value + qrnota.fieldbyname('total_nota').asfloat;

    qrnota.next;
  end;
  dsnota.DataSet := qrnota;

  qrnota.RecNo := vrecno;


end;

procedure Tfrmnotafiscal_menu.eclienteEnter(Sender: TObject);
begin
     ecliente.Text := '';
     tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal_menu.gridKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then
    begin
      vrecno := qrnota.RecNo;

      vopcao_nfs := 0;

      qrnota.edit;

      frmnotafiscal := tfrmnotafiscal.create(self);
      frmnotafiscal.showmodal;
      qrnota.refresh;

      qrnota.RecNo := vrecno;

      qrempresa.close;
      qrempresa.sql.clear;
      qrempresa.sql.add('select * from  c000004');
      qrempresa.Open;

      qrcliente.close;
      qrcliente.sql.clear;
      qrcliente.sql.add('select * from  c000007');
      qrcliente.Open;

      btotaliza_notaClick(frmnotafiscal_menu);

    end;
end;

procedure Tfrmnotafiscal_menu.bimprimirClick(Sender: TObject);
begin

  if qrnota.recordcount = 0 then exit;

  vrecno := qrnota.RecNo;

  vopcao_nfs := 3;

  frmnotafiscal := tfrmnotafiscal.create(self);
  frmnotafiscal.showmodal;
  qrnota.refresh;

  qrnota.RecNo := vrecno;

  qrempresa.close;
  qrempresa.sql.clear;
  qrempresa.sql.add('select * from  c000004');
  qrempresa.Open;

  qrcliente.close;
  qrcliente.sql.clear;
  qrcliente.sql.add('select * from  c000007');
  qrcliente.Open;

  btotaliza_notaClick(frmnotafiscal_menu);

end;

procedure Tfrmnotafiscal_menu.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.Imprimir1Click(Sender: TObject);
begin
  bimprimirClick(frmnotafiscal_menu);
end;

procedure Tfrmnotafiscal_menu.bcancelarClick(Sender: TObject);
begin
  if qrnota.recordcount = 0 then exit;

 if frmprincipal.autentica('Cancelar NF',4) then
  begin
    if QRNOTA.fieldbyname('situacao').AsInteger = 1 then
    begin





      cancela := false;

      frmnotafiscal_cancelar := tfrmnotafiscal_cancelar.create(self);
      frmnotafiscal_cancelar.showmodal;

      if not cancela then exit;



        query2.close;
        query2.sql.clear;
        query2.sql.add('select * from c000049 where codvenda = ''NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
        query2.sql.add('and valor_pago > 0');
        query2.Open;
        if query2.RecordCount > 0 then
        begin
          application.messagebox('Esta nota fiscal possue prestações que já foram feito pagamentos! Favor verificar!',
                                 'Aviso',mb_ok+mb_iconerror);
          EXIT;

        end;



    query2.close;
    query2.sql.clear;
    query2.sql.add('delete from c000117 where cod_nota = '''+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
    query2.execsql;


    query2.close;
    query2.sql.clear;
    query2.sql.add('delete from c000049 where codvenda = ''NF'+frmnotafiscal_menu.qrnota.fieldbyname('codigo').asstring+'''');
    query2.execsql;




       qrnota_item.Close;
       qrnota_item.sql.clear;
       qrnota_item.sql.add('select * from c000062 where codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
       qrnota_item.open;


        qrnota_item.FIRST;
        while NOT  qrnota_item.eof do
        begin
          IF qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING <> 'XXXXXX' THEN
          BEGIN
            FRMMODULO.QRPRODUTO_MOV.CLOSE;
            FRMMODULO.QRPRODUTO_MOV.SQL.CLEAR;
            FRMMODULO.QRPRODUTO_MOV.SQL.ADD('DELETE FROM C000032 WHERE CODIGO = '''+qrnota_item.FIELDBYNAME('CODLANCAMENTO').ASSTRING+'''');
            FRMMODULO.QRPRODUTO_MOV.ExecSQL;
          end;

            IF QRNOTA.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING = 'S' THEN
            BEGIN


              if qrnota_item.FieldByName('codgrade').asstring <> '' then
              begin
                IF frmnotafiscal_menu.QRNOTA.FIELDBYNAME('BAIXA_ESTOQUE').ASSTRING = 'S' THEN
                BEGIN
                  frmmodulo.qrgrade_produto.close;
                  frmmodulo.qrgrade_produto.sql.clear;
                  frmmodulo.qrgrade_produto.SQL.Add('select * from c000021 where codproduto = '''+qrnota_item.FIELDBYNAME('CODPRODUTO').ASSTRING+'''');
                  frmmodulo.qrgrade_produto.sql.add('and codigo = '''+qrnota_item.fieldbyname('codgrade').asstring+'''');
                  frmmodulo.qrgrade_produto.open;
                  if frmmodulo.qrgrade_produto.RecordCount > 0 then
                  BEGIN
                      frmmodulo.qrgrade_produto.edit;
                      frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat := frmmodulo.qrgrade_produto.FieldByName('estoque').asfloat -
                                                                                  qrnota_item.fieldbyname('qtde').asfloat;
                      frmmodulo.qrgrade_produto.post;
                  END;
                END;
              end;


            END;


              if trim(qrnota_item.fieldbyname('serial').asstring) <> '' then
              begin

                query.close;
                query.sql.clear;
                query.sql.add('update c000022 set situacao = :situacao, cliente = :cliente, codcliente = :codcliente, datavenda = :datavenda,');
                query.sql.add('codvenda = :codvenda, precovenda = :precovenda');
                query.sql.add('where serial = '''+qrnota_item.fieldbyname('serial').asstring+'''');
                query.sql.add('and codproduto = '''+qrnota_item.fieldbyname('codproduto').asstring+'''');
                query.params.Parambyname('situacao').AsInteger  := 1;
                query.params.Parambyname('cliente').AsString    := '';
                query.params.Parambyname('codcliente').AsString := '';
                query.params.Parambyname('DATAVENDA').Clear;
                query.params.Parambyname('codvenda').AsString   := '';
                query.params.Parambyname('precovenda').asfloat  := 0;
                query.execsql;

              end;


          qrnota_item.next;
        end;

        QRNOTA.edit;
        QRNOTA.FieldByName('motivo').asstring := inputbox('Cancelar NF','Informe o motivo do Cancelamento:','');
        QRNOTA.fieldbyname('situacao_a').AsString := 'C';
        QRNOTA.fieldbyname('situacao').AsInteger := 2;
        QRNOTA.post;

        frmmodulo.Conexao.Commit;
        Application.ProcessMessages;
    end
    else
    begin
      application.messagebox('Esta nota fiscal já está CANCELADA!','Atenção',mb_ok+mb_iconerror);
    end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure Tfrmnotafiscal_menu.MemorandodeExportao1Click(Sender: TObject);
begin
  frmmemorando_menu := Tfrmmemorando_menu.CREATE(SELF);
  frmmemorando_menu.SHOWMODAL;

end;

procedure Tfrmnotafiscal_menu.gridTitleButtonClick(Sender: TObject;
  AFieldName: String);
var cliente, nota : string;
begin

   if (ansiuppercase(aFieldName) = ansiuppercase('numero'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data'))or
      (ansiuppercase(aFieldName) = ansiuppercase('data_saida'))or
      (ansiuppercase(aFieldName) = ansiuppercase('modelo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('serie'))or
      (ansiuppercase(aFieldName) = ansiuppercase('crop'))or
      (ansiuppercase(aFieldName) = ansiuppercase('total_nota'))or
      (ansiuppercase(aFieldName) = ansiuppercase('base_calculo'))or
      (ansiuppercase(aFieldName) = ansiuppercase('valor_icms'))then

   begin
     if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;

   end;

   if ansiuppercase(afieldname) = 'CLIENTE' then
   begin
     if ecliente.Text = '' then cliente := ''  else cliente := ' and codcliente = '''+copy(ecliente.text,1,6)+'''';
     if (enumero.text = '000000') or (enumero.text = '') then nota := '' else nota := ' and numero = '''+enumero.text+'''';

     qrnota.close;
     qrnota.sql.clear;
     qrnota.SQL.add('select * from c000061 where data BETWEEN :datai and :dataf '+cliente+nota+' order by numero');
     qrnota.params.ParamByName('datai').asdatetime := dateedit1.date;
     qrnota.params.ParamByName('dataf').asdatetime := dateedit2.date;
     qrnota.open;
   end;

end;

procedure Tfrmnotafiscal_menu.DateEdit1KeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmnotafiscal_menu.ZerarNotaFiscal1Click(Sender: TObject);
begin
  if qrnota.recordcount = 0 then exit;

  if QRNOTA.fieldbyname('situacao').AsInteger = 1 then
  begin
    application.messagebox('Esta nota fiscal não está cancelada!','Erro',mb_ok+mb_iconerror);
    exit;
  end;




  if frmprincipal.autentica('Zerar NF',4) then
  begin

    qrnota_item.Close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select * from c000062 where codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
    qrnota_item.open;
    while not qrnota_item.eof do
    begin
      qrnota_item.edit;
      qrnota_item.fieldbyname('qtde').asfloat := 0;
      qrnota_item.fieldbyname('unitario').asfloat := 0;
      qrnota_item.fieldbyname('total').asfloat := 0;
      qrnota_item.fieldbyname('subtotal').asfloat := 0;
      qrnota_item.fieldbyname('desconto').asfloat := 0;
      qrnota_item.fieldbyname('BASE_CALCULO').asfloat := 0;
      qrnota_item.fieldbyname('VALOR_ICMS').asfloat := 0;
      qrnota_item.fieldbyname('ICMS').asfloat := 0;
      qrnota_item.fieldbyname('ICMS_SUB').asfloat := 0;
      qrnota_item.fieldbyname('ISENTO').asfloat := 0;
      qrnota_item.post;
      qrnota_item.next;
    end;

    QRNOTA.edit;
    qrnota.fieldbyname('VALOR_PRODUTOS').asfloat := 0;
    qrnota.fieldbyname('total_nota').asfloat := 0;
    qrnota.fieldbyname('desconto').asfloat := 0;
    qrnota.fieldbyname('BASE_CALCULO').asfloat := 0;
    qrnota.fieldbyname('VALOR_ICMS').asfloat := 0;

    qrnota.fieldbyname('BASE_SUB').asfloat := 0;
    qrnota.fieldbyname('ICMS_SUB').asfloat := 0;
    qrnota.fieldbyname('FRETE').asfloat := 0;
    qrnota.fieldbyname('seguro').asfloat := 0;
    qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat := 0;
    qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat := 0;


    qrnota.post;

  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmnotafiscal_menu.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmnotafiscal_menu.NFeExportarNotaFiscal1Click(Sender: TObject);
var
  mov : integer;
  ALIQUOTA_SUB, BC_IPI : REAL;
  CPF, CNPJ : STRING;
  fat : integer;
  frete_conta : integer;
  vtransportador_nome, vtransportador_rg : string;

begin
  if application.messagebox('Confirma a exportação desta nota fiscal para o sistema de Emissão de Nota Fiscal Eletrônica?',
                            'Aviso',mb_yesno+mb_iconquestion) = idyes then
  begin
     // filial
     query2.close;
     query2.sql.clear;
     query2.sql.add('select * from c000004');
     query2.sql.add('where codigo = '''+qrnota.fieldbyname('codfilial').asstring+'''');
     query2.open;

     if QUERY2.FIELDBYNAME('COD_MUNICIPIO_IBGE').ASSTRING = '' then
      begin
        application.messagebox('Código do Município Não Informado para a Empresa, Verifique!!!','Atenção',mb_ok+mb_iconerror);
        exit;
      end;

     qrcliente.close;
     qrcliente.sql.clear;
     qrcliente.sql.add('select * from c000007');
     qrcliente.sql.add('where codigo = '''+qrnota.fieldbyname('codcliente').asstring+'''');
     qrcliente.open;


     fat := 0;
     if qrnota.fieldbyname('fat_tipo').asstring = '1' then fat := 0;
     if qrnota.fieldbyname('fat_tipo').asstring = '0' then fat := 1;


     CPF := ''; CNPJ := '';

     if qrcliente.fieldbyname('tipo').asinteger = 1 then CPF := QRCLIENTE.FIELDBYNAME('CPF').ASSTRING;
     if qrcliente.fieldbyname('tipo').asinteger = 2 then CNPJ := QRCLIENTE.FIELDBYNAME('CPF').ASSTRING;
     if qrcliente.fieldbyname('tipo').asinteger = 3 then CPF := QRCLIENTE.FIELDBYNAME('CPF').ASSTRING;




    if Exp_Abre_NOTAFISCAL(inputbox('NFe','Nome do Arquivo','NF'+qrnota.fieldbyname('numero').asstring+'.txt')) then
    begin


    // Inicia a inclusao individual da nota
    if qrnota.fieldbyname('movimento').asstring = 'S' then mov := 1 else mov := 0;



    if not Exp_Inicia_NotaFiscal(1,
                            query2.fieldbyname('uf').asstring,
                            qrnota.fieldbyname('natureza').asstring,
                            fat, // 0 - a vista, 1 - a prazo, 3 - outros
                            '55', // modelo
                            '001', // serie
                            frmprincipal.zerarcodigo(qrnota.fieldbyname('numero').asstring,8), // número da nf
                            qrnota.fieldbyname('data').asdatetime, // data de emissao
                            qrnota.fieldbyname('data_saida').asdatetime, // data da saida)
                            mov, // 0 - Entrada, 1 - Saida
                            QUERY2.FIELDBYNAME('COD_MUNICIPIO_IBGE').ASINTEGER,//codigo do municipio
                            1,// Formato de impressao -> 1 retrato, 2 paisagem
                            QUERY2.FIELDBYNAME('FILIAL').ASSTRING,//Emitente - Razao Social
                            QUERY2.FIELDBYNAME('IE').ASSTRING,//Emitente - Inscricao Estadual
                            QUERY2.FIELDBYNAME('CNPJ').ASSTRING,//Emitente - CNPJ
                            QUERY2.FIELDBYNAME('ENDERECO').ASSTRING,//Emitente - Endereco
                            QUERY2.FIELDBYNAME('NUMERO').ASSTRING,//Emitente - Numero
                            QUERY2.FIELDBYNAME('COMPLEMENTO').ASSTRING,//Emitente - Complemento
                            QUERY2.FIELDBYNAME('BAIRRO').ASSTRING,//Emitente - Bairro
                            QUERY2.FIELDBYNAME('COD_MUNICIPIO_IBGE').ASSTRING,//Emitente - Codigo do municipio
                            QUERY2.FIELDBYNAME('CIDADE').ASSTRING,//Emitente - Municipio
                            QUERY2.FIELDBYNAME('UF').ASSTRING,//Emitente - UF
                            QUERY2.FIELDBYNAME('CEP').ASSTRING,//Emitente - CEP
                            QUERY2.FIELDBYNAME('TELEFONE').ASSTRING,//Emitente - Telefone
                            qrcliente.fieldbyname('nome').asstring,// Destinatario - Razao Social
                            qrcliente.fieldbyname('rg').asstring,//Destinatario - Inscricao Estadual
                            '',//Destinatario - Suframa
                            CNPJ,//Destinatario - CNPJ
                            CPF,
                            qrcliente.fieldbyname('endereco').asstring,//Destinatario - Endereco
                            '-',//Destinatario - numero
                            qrcliente.fieldbyname('complemento').asstring,//Destinatario - Complemento
                            qrcliente.fieldbyname('bairro').asstring,//Destinatario - Bairro
                            qrcliente.fieldbyname('cod_municipio_ibge').asstring,//Destinatario - Codigo do municipio
                            qrcliente.fieldbyname('cidade').asstring,//Destinatario - Municipio
                            qrcliente.fieldbyname('uf').asstring,//Destinatario - UF
                            qrcliente.fieldbyname('cep').asstring,//Destinatario - cep
                            qrcliente.fieldbyname('telefone1').asstring,//Destinatario - Telefone
                            '',//local Retirada - CNPJ
                            '',//local Retirada - Endereco
                            '',//local Retirada - Numero
                            '',//local Retirada - Complemento
                            '',//local Retirada - BArrio
                            '',//local Retirada - Codigo Municipio
                            '',//lcoal Retirada - Municipio
                            '',//local Retirada - uf
                            '',//local Entrega - CNPJ
                            '',//local Entrega - Endereco
                            '',//local Entrega - Numero
                            '',//local Entrega - Complemento
                            '',//local Entrega - Bairro
                            '',//local Entrega - Codigo Municipio
                            '',//local Entrega - Municipio
                            ''//local Entrega - UF
                            ) then
    begin
      showmessage('Falha ao inciar nota fiscal');
      exit;
    end;


    qrnota_item.close;
    qrnota_item.sql.clear;
    qrnota_item.sql.add('select c000062.*, c000025.produto, c000025.codbarra cod_barra, c000025.unidade un');
    qrnota_item.sql.add('from c000062, c000025 where c000062.codproduto = c000025.codigo');
    qrnota_item.sql.add('and c000062.codnota = '''+qrnota.fieldbyname('codigo').asstring+'''');
    qrnota_item.open;
    qrnota_item.Last;
    mov := qrnota_item.RecordCount;
    qrnota_item.first;
    while not qrnota_item.eof do
    begin

          IF qrnota_item.fieldbyname('BASE_SUB').asfloat > 0 THEN
            ALIQUOTA_SUB :=  qrnota_item.fieldbyname('ICMS').asfloat;
          IF  qrnota_item.fieldbyname('VALOR_IPI').asfloaT > 0 THEN
             BC_IPI := qrnota_item.fieldbyname('base_calculo').asfloat;



          (**  INCLUSAO DO(S) ITEM(S)   **)
          if NOT Exp_Inclui_item(
                                qrnota_item.fieldbyname('item').asinteger,//Item:integer;
                                qrnota_item.fieldbyname('codproduto').asstring,//Codigo,
                                frmprincipal.zerarcodigo(qrnota_item.fieldbyname('cod_barra').asstring,13),//Cod_Barra,
                                qrnota_item.fieldbyname('produto').asstring,//Produto,
                                qrnota_item.fieldbyname('classificacao_fiscal').asstring,//NCM,
                                qrnota_item.fieldbyname('cfop').asstring,//CFOP,
                                qrnota_item.fieldbyname('UN').asstring,//Unidade:string;
                                qrnota_item.fieldbyname('qtde').asfloat,//Quantidade,
                                qrnota_item.fieldbyname('unitario').asfloat,//Valor_Unitario,
                                qrnota_item.fieldbyname('total').asfloat,//Valor_Total,
                                0,//Valor_Frete,
                                0,//Valor_Seguro,
                                qrnota_item.fieldbyname('desconto').asfloat,//Valor_Desconto:real;
                                qrnota_item.fieldbyname('cst').asstring,//CST:string;
                                0,//Origem:integer; --> 0 NACIONAL, 1 ESTRANG IMPORTACAO DIRETA , 2 ESTRANG ADQUIRIDA MERC INTER
                                1,//Modalidade:integer; 0 MARGEM VLR AGREGADO, 1 PAUTA, 2 PRECO TABELADO, 3 VALOR OPERACAO
                                qrnota_item.fieldbyname('base_calculo').asfloat,//ICMS_Base_Calculo,
                                qrnota_item.fieldbyname('ICMS').asfloat,//ICMS_Aliquota,
                                qrnota_item.fieldbyname('valor_icms').asfloat,//ICMS_Valor,
                                qrnota_item.fieldbyname('ICMS_REDUZIDO').asfloat,//ICMS_Reducao:REAL;
                                0,//ST_Modalidade:integer - 0 PRECO TABELADO, 1 LISTA NEGATIVA, 2 LISTA POSITIVA, 3 LISTA NEUTRA, 5 PAUTA
                                qrnota_item.fieldbyname('MARGEM_AGREGADA').asfloat,//ST_Margem_Adicional,
                                0,//ST_Reducao,
                                qrnota_item.fieldbyname('BASE_SUB').asfloat,//ST_Base_Calculo,
                                ALIQUOTA_SUB,//ST_Aliquota,
                                qrnota_item.fieldbyname('ICMS_SUB').asfloat,//ST_Valor:real;
                                '02',//IPI_Codigo:string;
                                qrnota_item.fieldbyname('VALOR_IPI').asfloat,//IPI_Valor,
                                BC_IPI,//IPI_Base_Calculo,
                                qrnota_item.fieldbyname('IPI').asfloat,//IPI_Aliquota:real
                                qrnota_item.fieldbyname('PIS_ALIQUOTA').asfloat,//PIS_Aliquota,
                                qrnota_item.fieldbyname('PIS_BASE').asfloat,//PIS_Base_Calculo,
                                qrnota_item.fieldbyname('PIS_VALOR').asfloat,//PIS_Valor:real;
                                qrnota_item.fieldbyname('COFINS_ALIQUOTA').asfloat,//COFINS_Aliquota,
                                qrnota_item.fieldbyname('COFINS_VALOR').asfloat,//COFINS_Valor,
                                qrnota_item.fieldbyname('COFINS_BASE').asfloat//COFINS_Base_Calculo:real
                                )
                                THEN
          BEGIN
            showmessage('Falha ao Incluir item na nf');
            exit;
          END;



          qrnota_item.Next;
    end;

    CPF := ''; CNPJ := '';
    IF QRNOTA.FIELDBYNAME('TRANSP_TIPO').ASSTRING = '1' THEN CPF := QRNOTA.FIELDBYNAME('TRANSP_CPF').ASSTRING;
    IF QRNOTA.FIELDBYNAME('TRANSP_TIPO').ASSTRING = '2' THEN CNPJ := QRNOTA.FIELDBYNAME('TRANSP_CPF').ASSTRING;

    if (cpf = '') and (cnpj='') then CNPJ := qrcliente.fieldbyname('cpf').asstring;

    if qrnota.fieldbyname('FRETE_CONTA').asstring = '' then frete_conta := 0;
    if qrnota.fieldbyname('FRETE_CONTA').asinteger = 1 then frete_conta := 0;
    if qrnota.fieldbyname('FRETE_CONTA').asinteger = 2 then frete_conta := 1;

    if qrnota.fieldbyname('TRANSPORTADOR').asstring = 'DESTINATARIO' then  // quando for o próprio destinatário
      begin
        vtransportador_nome := qrnota.fieldbyname('CLIENTE').asstring;
        vtransportador_rg   := qrnota.fieldbyname('RG').asstring;
      end
    else
      begin
        vtransportador_nome := qrnota.fieldbyname('TRANSPORTADOR').asstring;
        vtransportador_rg   := qrnota.fieldbyname('transp_rg').asstring;
      end;

    IF NOT Exp_Termina_NotaFiscal(
                                  qrnota.fieldbyname('base_calculo').asfloat,//Total_ICMS_Base_Calculo,
                                  qrnota.fieldbyname('VALOR_ICMS').asfloat,//Total_ICMS_Valor,
                                  qrnota.fieldbyname('base_sub').asfloat,//Total_ST_Base_Calculo,
                                  qrnota.fieldbyname('icms_sub').asfloat,//Total_ST_Valor,
                                  qrnota.fieldbyname('VALOR_PRODUTOS').asfloat,//Total_Produtos,
                                  qrnota.fieldbyname('FRETE').asfloat,//Total_Frete,
                                  qrnota.fieldbyname('seguro').asfloat,//Total_Seguro,
                                  qrnota.fieldbyname('desconto').asfloat,//Total_Desconto,
                                  qrnota.fieldbyname('VALOR_TOTAL_IPI').asfloat,//Total_IPI,
                                  qrnota.fieldbyname('PIS').asfloat,//Total_PIS,
                                  qrnota.fieldbyname('COFINS').asfloat,//Total_COFINS,
                                  qrnota.fieldbyname('OUTRAS_DESPESAS').asfloat,//Total_Outras_Despesas,
                                  qrnota.fieldbyname('TOTAL_NOTA').asfloat,//Total_Nota_Fiscal:real;
                                  frete_conta,//Frete_por_Conta:integer;
                                  vtransportador_nome,//Frete_Transportador,
                                  vtransportador_rg,//Frete_Inscricao_Estadual,
                                  qrnota.fieldbyname('transp_endereco').asstring,//Frete_Endereco,
                                  qrnota.fieldbyname('ABC').asstring,//Frete_UF,
                                  qrnota.fieldbyname('transp_cidade').asstring,//Frete_Municipio,
                                  CNPJ,//Frete_CNPJ,
                                  CPF,//Frete_CPF,
                                  qrnota.fieldbyname('PLACA').asstring,//Frete_Placa,
                                  qrnota.fieldbyname('PLACA_UF').asstring,//Frete_UF_Placa:string;
                                  qrnota.fieldbyname('vol_qtde').asfloat,//Frete_Volume_Quantidade:real;
                                  qrnota.fieldbyname('vol_especie').asstring,//Frete_Volume_Especie,
                                  qrnota.fieldbyname('vol_marca').asstring,//Frete_Volume_Marca,
                                  qrnota.fieldbyname('vol_numero').asstring,//Frete_Volume_Numero:string;
                                  qrnota.fieldbyname('peso_liquido').asfloat,//Frete_Volume_Peso_Liquido,
                                  qrnota.fieldbyname('peso_bruto').asfloat//Frete_Volume_Peso_Bruto:real
                                  )
    THEN
    BEGIN
      showmessage('Falha ao Terminar nota fiscal');
      exit;
    END;


    if fat  = 1 then
    begin

      if not Exp_Faturamento_NotaFiscal(
                                        frmprincipal.zerarcodigo(qrnota.fieldbyname('numero').asstring,9),//Numero_Fatura:string;
                                        qrnota.fieldbyname('total_nota').asfloat,//Valor_Original,
                                        0,//Desconto,
                                        qrnota.fieldbyname('total_nota').asfloat//Valor_Liquido:real
                                        )
      then
      begin
        showmessage('Falha ao Lançar o faturamento');
        exit;
      end;

    query2.close;
    query2.sql.clear;
    query2.sql.add('select * from c000117');
    query2.sql.add('where cod_nota = '''+qrnota.fieldbyname('codigo').asstring+'''');
    query2.sql.add('order by numero');
    query2.open;
      while not query2.eof do
      begin
        if not Exp_Duplicata_NotaFiscal(
                                        query2.fieldbyname('documento').asstring,//Numero:string;
                                        query2.fieldbyname('vencimento').asdatetime,//Vencimento:tdatetime;
                                        query2.fieldbyname('valor').asfloat//Valor:real
                                        )
        then
        begin
          showmessage('Falha ao Lançar a duplicata');
          exit;
        end;
      end;




    end;

      if Exp_Fecha_NotaFiscal(qrnota.fieldbyname('inf1').asstring+' '+
                              qrnota.fieldbyname('inf2').asstring+' '+
                              qrnota.fieldbyname('inf3').asstring+' '+
                              qrnota.fieldbyname('inf4').asstring+' '+
                              qrnota.fieldbyname('inf5').asstring) then
      begin
       showmessage('Arquivo de Nota Fiscal criado com sucesso!');
      end
      else
      begin
       showmessage('Houve falha na criação do arquivo de Nota Fiscal!');
      end;


    end;

     qrcliente.close;
     qrcliente.sql.clear;
     qrcliente.sql.add('select * from c000007');
     qrcliente.open;
  end;
end;

procedure Tfrmnotafiscal_menu.ACBrNFe1StatusChange(Sender: TObject);
begin
  case ACBrNFe1.Status of
    stIdle :
    begin
      if ( frmStatus <> nil ) then
        frmStatus.Hide;
    end;
    stNFeStatusServico :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Verificando Status do servico...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeRetRecepcao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Recebendo dados da NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeConsulta :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeCancelamento :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando cancelamento de NFe...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNfeInutilizacao :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando pedido de Inutilização...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeRecibo :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Recibo de Lote...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeCadastro :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando Cadastro...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEnvDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeConsultaDPEC :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Consultando DPEC...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
    stNFeEmail :
    begin
      if ( frmStatus = nil ) then
        frmStatus := TfrmStatus.Create(Application);
      frmStatus.lblStatus.Caption := 'Enviando Email...';
      frmStatus.Show;
      frmStatus.BringToFront;
    end;
  end;
  Application.ProcessMessages;

end;

procedure Tfrmnotafiscal_menu.bt_nfe_statusClick(Sender: TObject);
begin
  memoLog.Clear;
  ACBrNFe1.WebServices.StatusServico.Executar;
//  ShowMessage(MemoLog.Text);
  bt_log.Click;
  MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.StatusServico.RetWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure Tfrmnotafiscal_menu.bt_logClick(Sender: TObject);
begin
 if frmprincipal.autentica('Configurações',4) then
   begin
    pn_nfe_log.Visible := true;
   end
 else
   begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
   end;
end;

procedure Tfrmnotafiscal_menu.Button1Click(Sender: TObject);
begin
  pn_nfe_log.Visible := false
end;

procedure Tfrmnotafiscal_menu.ACBrNFe1GerarLog(const Mensagem: String);
begin
  memoLog.Lines.Add(Mensagem);
  if bMensagem then
    showmessage(mensagem);
  bMensagem := false;

end;

procedure Tfrmnotafiscal_menu.bt_nfe_validarClick(Sender: TObject);
var sXML : string;
begin
  case qrnota.FieldByName('nfe_situacao').asinteger of
// 3 - nao validada


  4 : begin // validada
        if Application.messagebox('Esta nota já foi validada! Deseja prosseguir?',
           'Atenção', mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        exit;
      end;
  5 : begin // transmitida
        if Application.messagebox('Esta nota já foi validada e transmitida! Deseja prosseguir?',
           'Atenção', mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        exit;
      end;

  6 : begin // Aceita
        if Application.messagebox('Esta nota já foi validada/aceita pela receita! Deseja prosseguir?',
           'Atenção', mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        exit;
      end;

  7 : begin // rejeitada
        if Application.messagebox('Esta nota já foi validada e rejeitada! Deseja prosseguir?',
           'Atenção', mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idno then
        exit;
      end;
  8 : begin // cancelada
        Application.messagebox('Esta nota já foi cancelada!',
           'Erro', mb_ok+MB_ICONerror);
        exit;
      end;
  end;

  try

    sXML := Gerar_XML;

    Application.ProcessMessages;;

    if FileExists(sXML) then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      ACBrNFe1.NotasFiscais.Valida;
//      Application.MessageBox('Nota Fiscal validada com sucesso!','Aviso',mb_ok+mb_iconinformation);

      qrnota.edit;
      qrnota.FieldByName('nfe_xml').asstring := sXML;
      qrnota.FieldByName('nfe_situacao').asinteger := 4;
      qrnota.post;

      gridRowChanged(frmnotafiscal_menu);

      bt_nfe_assinar.Click;

    end
    else
    begin
      Application.MessageBox('Arquivo XML não encontrado!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
  except
    on E:exception do
    begin
      application.MessageBox(PAnsiChar('Erro ao criar/imprimir NFe!'+#13+
                                       'Mensagem: '+E.message),'Erro',
                                       mb_ok+mb_iconerror);
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.bt_nfe_danfeClick(Sender: TObject);
var sXML : string;
begin


  if qrnota.recordcount = 0 then exit;

  sXML := qrnota.fieldbyname('nfe_xml').asstring;

  if sxml = '' then exit;


  try


    if FileExists(sxml) then
    begin
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      if ACBrNFe1.NotasFiscais.Items[0].NFe.Ide.tpEmis = teDPEC then
      begin
         ACBrNFe1.WebServices.ConsultaDPEC.NFeChave := ACBrNFe1.NotasFiscais.Items[0].NFe.infNFe.ID;
         ACBrNFe1.WebServices.ConsultaDPEC.Executar;
         ACBrNFe1.DANFE.ProtocoloNFe := ACBrNFe1.WebServices.ConsultaDPEC.nRegDPEC +' '+ DateTimeToStr(ACBrNFe1.WebServices.ConsultaDPEC.dhRegDPEC);
      end;
      ACBrNFe1.NotasFiscais.Imprimir;
    end
    else
    begin
      application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
    end;

  except
    on E:exception do
    begin
      application.MessageBox(PAnsiChar('Erro ao criar/imprimir NFe!'+#13+
                                       'Mensagem: '+E.message),'Erro',
                                       mb_ok+mb_iconerror);
    end;
  end;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_assinarClick(Sender: TObject);
var sXML : string;
begin
  if qrnota.recordcount = 0 then exit;
  sXML := qrnota.fieldbyname('nfe_xml').asstring;
  if sxml = '' then exit;
  if FileExists(sxml) then
  begin
    ACBrNFe1.NotasFiscais.Clear;
    ACBrNFe1.NotasFiscais.LoadFromFile(sxml);
    ACBrNFe1.Enviar(0);
//    ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.ProtNFe.Items[0].nProt);
//    ShowMessage(ACBrNFe1.WebServices.Retorno.NFeRetorno.nRec);
    MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Retorno.RetWS);
    LoadXML(MemoResp, WBResposta);
    ACBrNFe1.NotasFiscais.Clear;

      qrnota.edit;
      qrnota.FieldByName('nfe_xml').asstring := sXML;
      qrnota.FieldByName('nfe_situacao').asinteger := 6;
      qrnota.post;

      gridRowChanged(frmnotafiscal_menu);
      
      bt_nfe_danfe.Click;

  end
  else
  begin
    application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_exportarClick(Sender: TObject);
var
 Para : String;
 sXML : string;
 bserv : boolean;
 StreamMemo : TMemoryStream;
 Email : TEmail;
begin
  try
    sXML := Gerar_XML;

    Application.ProcessMessages;;

    if FileExists(sXML) then
    begin
      frmmodulo.qrconfig.open;
      if edtSmtpHost.text = '' then
      begin
        application.messagebox('Favor configurar a conta de email!','Erro',
                               mb_ok+mb_iconerror);
        exit;
      end;

      qrnfe_cliente.close;
      qrnfe_cliente.sql.clear;
      qrnfe_cliente.sql.add('select email from c000007');
      qrnfe_cliente.sql.add('where codigo = '''+qrnota.fieldbyname('codcliente').asstring+'''');
      qrnfe_cliente.open;

      para := qrNFE_Cliente.fieldbyname('email').asstring;

      if para = '' then
        InputBox('Email','Email do Cliente','');




      if frmmodulo.qrconfig.FieldByName('email_exige_conexao').asinteger = 1 then
        bserv := true
      else
        bserv := false;



      Email := TEmail.Create;
      //'' opção de e-mail configurar essa opção
      if  Email.EnviarEmail('',
                         para,
                         edtEmailAssunto.text,
                         mmEmailMsg.Text,
                         sxml,
                         edtSmtpUser.text,
                         edtSmtpPass.text,
                         edtSmtpHost.text,
                         strtoint(edtSmtpPort.Text)
                         ) then
      begin
         Application.MessageBox('Email enviado com sucesso!','Aviso',mb_ok+MB_ICONINFORMATION);
      end
      else
      begin
       application.messagebox('Houve falha no envio deste email... Favor Verificar o endereço do Cliente!','Atenção',mb_ok+MB_ICONERROR);
       close;
     end;

      Email.Free;

    end
    else
    begin
      Application.MessageBox('Arquivo XML não encontrado!','Erro',mb_ok+mb_iconerror);
      exit;
    end;
  except
    on E:exception do
    begin
      application.MessageBox(PAnsiChar('Erro ao criar/imprimir NFe!'+#13+
                                       'Mensagem: '+E.message),'Erro',
                                       mb_ok+mb_iconerror);
    end;
  end;



 

end;

procedure Tfrmnotafiscal_menu.BitBtn1Click(Sender: TObject);
begin
  frmnfe_legenda := tfrmnfe_legenda.create(self);
  frmnfe_legenda.show;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_consultarClick(Sender: TObject);
var sXML : string;
begin


  if qrnota.recordcount = 0 then exit;

  sXML := qrnota.fieldbyname('nfe_xml').asstring;

  if sxml = '' then exit;


  try


    if FileExists(sxml) then
    begin
      bMensagem := true;

      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      ACBrNFe1.Consultar;
      MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
      MemoResp.Lines.Text := UTF8Encode(ACBrNFe1.WebServices.Consulta.RetWS);
      LoadXML(MemoResp, WBResposta);
    end
    else
    begin
      application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
    end;





  except
    on E:exception do
    begin
      application.MessageBox(PAnsiChar('Erro ao criar/imprimir NFe!'+#13+
                                       'Mensagem: '+E.message),'Erro',
                                       mb_ok+mb_iconerror);
    end;
  end;

end;

procedure Tfrmnotafiscal_menu.bt_nfe_cancelarClick(Sender: TObject);
var vAux, sXML : string;
begin
  if qrnota.recordcount = 0 then exit;

  sXML := qrnota.fieldbyname('nfe_xml').asstring;

  if sxml = '' then exit;



    if FileExists(sxml) then
    begin
      bMensagem := true;
      ACBrNFe1.NotasFiscais.Clear;
      ACBrNFe1.NotasFiscais.LoadFromFile(sXML);
      if not(InputQuery('NFe Cancelamento', 'Informe a justificativa', vAux)) then
         exit;
       ACBrNFe1.Cancelamento(vAux);
       MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Cancelamento.RetWS);
       LoadXML(MemoResp, WBResposta);

//       ShowMessage(IntToStr(ACBrNFe1.WebServices.Cancelamento.cStat));
//       ShowMessage(ACBrNFe1.WebServices.Cancelamento.Protocolo);

        qrnota.edit;
        qrnota.FieldByName('nfe_xml').asstring := sXML;
        qrnota.FieldByName('nfe_situacao').asinteger := 8;
        qrnota.post;

        gridRowChanged(frmnotafiscal_menu);


       
    end
    else
    begin
      application.messagebox('Arquivo XML não econtraddo!','Erro',mb_ok+mb_iconerror);
    end;




end;

procedure Tfrmnotafiscal_menu.btnSalvarConfigClick(Sender: TObject);
begin
  GravarConfiguracao;
  Inicia_NFe;
end;

procedure Tfrmnotafiscal_menu.sbtnCaminhoCertClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Certificado';
  OpenDialog1.DefaultExt := '*.pfx';
  OpenDialog1.Filter := 'Arquivos PFX (*.pfx)|*.pfx|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtCaminho.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrmnotafiscal_menu.sbtnGetCertClick(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   edtNumSerie.Text := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   {$ENDIF}
end;

procedure Tfrmnotafiscal_menu.sbtnLogoMarcaClick(Sender: TObject);
begin
  OpenDialog1.Title := 'Selecione o Logo';
  OpenDialog1.DefaultExt := '*.bmp';
  OpenDialog1.Filter := 'Arquivos BMP (*.bmp)|*.bmp|Todos os Arquivos (*.*)|*.*';
  OpenDialog1.InitialDir := ExtractFileDir(application.ExeName);
  if OpenDialog1.Execute then
  begin
    edtLogoMarca.Text := OpenDialog1.FileName;
  end;
end;

procedure Tfrmnotafiscal_menu.sbtnPathSalvarClick(Sender: TObject);
var
  Dir: string;
begin
  if Length(edtPathLogs.Text) <= 0 then
     Dir := ExtractFileDir(application.ExeName)
  else
     Dir := edtPathLogs.Text;

  if SelectDirectory(Dir, [sdAllowCreate, sdPerformCreate, sdPrompt],SELDIRHELP) then
    edtPathLogs.Text := Dir;

end;

procedure Tfrmnotafiscal_menu.Inutilizar1Click(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
 if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza((QREMPRESA.FIELDBYNAME('CNPJ').ASSTRING), Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
  LoadXML(MemoResp, WBResposta);
end;

procedure Tfrmnotafiscal_menu.eclienteExit(Sender: TObject);
begin
  tedit(sender).Color := clwindow;
end;

procedure Tfrmnotafiscal_menu.ENUMEROEnter(Sender: TObject);
begin
 tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal_menu.DateEdit1Enter(Sender: TObject);
begin
  tedit(sender).Color := $00A0FAF8;
end;

procedure Tfrmnotafiscal_menu.bt_nfe_inutilizarClick(Sender: TObject);
var
 Modelo, Serie, Ano, NumeroInicial, NumeroFinal, Justificativa : String;
begin
if not(InputQuery('WebServices Inutilização ', 'Ano',    Ano)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Modelo', Modelo)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Serie',  Serie)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Inicial', NumeroInicial)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Número Final', NumeroFinal)) then
    exit;
 if not(InputQuery('WebServices Inutilização ', 'Justificativa', Justificativa)) then
    exit;
  ACBrNFe1.WebServices.Inutiliza((QREMPRESA.FIELDBYNAME('CNPJ').ASSTRING), Justificativa, StrToInt(Ano), StrToInt(Modelo), StrToInt(Serie), StrToInt(NumeroInicial), StrToInt(NumeroFinal));
  MemoResp.Lines.Text :=  UTF8Encode(ACBrNFe1.WebServices.Inutilizacao.RetWS);
  LoadXML(MemoResp, WBResposta);
end;

end.
