unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, VrControls, VrButtons, ExtCtrls, TFlatPanelUnit, jpeg,
  Collection, StdCtrls, XPMan, Menus, DB, Grids, DBGrids, Registry, Winsock,
  ToolWin, ComCtrls, dxCore, Buttons, CheckCPF,
  RXCtrls, RXDBCtrl, vrLineMeter, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, shellapi, ExeInfo, AdvGlowButton, AdvToolBar, AdvToolBarStylers,
  AdvMenus, AdvMenuStylers, AdvShapeButton, AdvOfficeStatusBar,
  AdvOfficeStatusBarStylers, AdvOfficeHint, ImgList, RzTray, AdvNavBar,
  AdvOfficePager, AdvOfficePagerStylers, AdvPanel, Wwdbigrd, Wwdbgrid,
  MemDS, StrUtils, Mask, RzEdit, RzPanel, IBServices, DBAccess, IBC,
  AdvReflectionLabel, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDGraphicControl, LMDScrollText, pngimage, AdvPicture;
  
type

  TfrmPrincipal = class(TForm)                         
    XPManifest1: TXPManifest;
    CheckCPF1: TCheckCPF;
    ExeInfo1: TExeInfo;
    qrproduto: TZQuery;
    AdvToolBarOfficeStyler1: TAdvToolBarOfficeStyler;
    pop_tabela_fiscal: TAdvPopupMenu;
    AdvMenuOfficeStyler1: TAdvMenuOfficeStyler;
    bcfop2: TMenuItem;
    CSTCdigodaSituaoTributria1: TMenuItem;
    ModelosdeDocumentosFiscais1: TMenuItem;
    ECFCadastrodeEquipamentos1: TMenuItem;
    pop_outros_cadastros: TAdvPopupMenu;
    Setor2: TMenuItem;
    Veculos1: TMenuItem;
    bveiculoc: TMenuItem;                                                             
    pop_nf_saida: TAdvPopupMenu;
    MenuItem1: TMenuItem;
    Bconhecimento: TMenuItem;
    AdvOfficeStatusBarOfficeStyler1: TAdvOfficeStatusBarOfficeStyler;
    AdvOfficeHint1: TAdvOfficeHint;
    parquivo: TAdvToolBar;
    bfiliais: TAdvGlowButton;
    bcliente: TAdvGlowButton;
    bfornecedor: TAdvGlowButton;
    btransp: TAdvGlowButton;
    bfunci: TAdvGlowButton;
    bbanco: TAdvGlowButton;
    bplano: TAdvGlowButton;
    busuario: TAdvGlowButton;
    bopcaixa: TAdvGlowButton;
    boutros: TAdvGlowButton;
    bcfop: TAdvGlowButton;
    bconvenio: TAdvGlowButton;
    bservico: TAdvGlowButton;
    Pestoque: TAdvToolBar;
    bproduto: TAdvGlowButton;
    bgrupo: TAdvGlowButton;
    bmarca: TAdvGlowButton;
    bentrada: TAdvGlowButton;
    bconsulta: TAdvGlowButton;
    VrDemoButton2: TAdvGlowButton;
    bbalanca: TAdvGlowButton;
    pfinanceiro: TAdvToolBar;
    bcaixa: TAdvGlowButton;
    bpagar: TAdvGlowButton;
    breceber: TAdvGlowButton;
    bcheque: TAdvGlowButton;
    bconta: TAdvGlowButton;
    bclientef: TAdvGlowButton;
    bboleto: TAdvGlowButton;
    VrDemoButton3: TAdvGlowButton;
    PMOVIMENTO: TAdvToolBar;
    BVENDA: TAdvGlowButton;
    VrDemoButton5: TAdvGlowButton;
    BNOTAS: TAdvGlowButton;
    AdvGlowButton34: TAdvGlowButton;
    BORCAMENTO: TAdvGlowButton;
    BOS: TAdvGlowButton;
    VrDemoButton4: TAdvGlowButton;
    BSINTEGRA: TAdvGlowButton;
    prelatorio: TAdvToolBar;
    brcliente: TAdvGlowButton;
    brfornecedor: TAdvGlowButton;
    brproduto: TAdvGlowButton;
    brvenda: TAdvGlowButton;
    brreceber: TAdvGlowButton;
    brpagar: TAdvGlowButton;
    brcaixa: TAdvGlowButton;
    bretiqueta: TAdvGlowButton;
    bros: TAdvGlowButton;
    pstatus: TAdvOfficeStatusBar;
    ImageList1: TImageList;
    ptopo: TAdvOfficeStatusBar;
    barquivo: TAdvGlowButton;
    bestoque: TAdvGlowButton;
    bmovimento: TAdvGlowButton;
    bfinanceiro: TAdvGlowButton;
    brelatorio: TAdvGlowButton;
    bsair: TAdvGlowButton;
    butilitario: TAdvGlowButton;
    ptopo2: TAdvOfficeStatusBar;
    pop_principal: TAdvPopupMenu;
    Venda1: TMenuItem;
    ConsultadePreos1: TMenuItem;
    Oramento1: TMenuItem;
    Caixa1: TMenuItem;
    Produtos1: TMenuItem;
    Clientes1: TMenuItem;
    ContasaReceber1: TMenuItem;
    ContasaPagar1: TMenuItem;
    NotaFiscal1: TMenuItem;
    OrdemdeServio1: TMenuItem;
    SairdoSistema1: TMenuItem;
    AnularSaida1: TMenuItem;
    pop_usuario: TAdvPopupMenu;
    rocardeUsurio1: TMenuItem;
    GerencimentodeUsurios1: TMenuItem;
    pop_mov_produto: TAdvPopupMenu;
    Pedido1: TMenuItem;
    Entrada1: TMenuItem;
    Baixa1: TMenuItem;
    ConsultaServio1: TMenuItem;
    query: TZQuery;
    AdvGlowButton1: TAdvGlowButton;
    MemorandodeExportao1: TMenuItem;
    AdvGlowButton2: TAdvGlowButton;
    ImageList2: TImageList;
    pfundo: TFlatPanel;
    putilitario: TAdvToolBar;
    Bcopia: TAdvGlowButton;
    brestore: TAdvGlowButton;
    bagenda: TAdvGlowButton;
    bcalculadora: TAdvGlowButton;
    VrDemoButton49: TAdvGlowButton;
    bconfig: TAdvGlowButton;
    bativacao: TAdvGlowButton;
    bexporta: TAdvGlowButton;
    psuper: TAdvOfficePager;
    AdvOfficePage1: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    AdvOfficePage2: TAdvOfficePage;
    AdvOfficePage3: TAdvOfficePage;
    FormasdePagamento1: TMenuItem;
    CondiesdePagamento1: TMenuItem;
    AdvPanel1: TAdvPanel;
    AdvToolBarOfficeStyler2: TAdvToolBarOfficeStyler;
    AdvPanelStyler1: TAdvPanelStyler;
    AdvPanel2: TAdvPanel;
    Label1: TLabel;
    Bevel2: TBevel;
    Label2: TLabel;
    Bevel3: TBevel;
    Label3: TLabel;
    Bevel4: TBevel;
    Label4: TLabel;
    Bevel5: TBevel;
    Bevel6: TBevel;
    Bevel7: TBevel;
    Label5: TLabel;
    lcaixa: TLabel;
    Label7: TLabel;
    Bevel8: TBevel;
    lsit_caixa: TLabel;
    Bevel9: TBevel;
    Label9: TLabel;
    Bevel10: TBevel;
    Label10: TLabel;
    Bevel11: TBevel;
    Bevel13: TBevel;
    ltcaixa: TLabel;
    ltpagar: TLabel;
    ltreceber: TLabel;
    ltfinal: TLabel;
    wwDBGrid1: TwwDBGrid;
    qrniver: TZQuery;
    AdvPanel3: TAdvPanel;
    pnormal: TAdvPanel;
    AdvPanel4: TAdvPanel;
    ltvenda: TLabel;
    ltos: TLabel;
    dsniver: TDataSource;
    qrcx: TZQuery;
    wwDBGrid2: TwwDBGrid;
    qrpagar: TZQuery;
    dspagar: TDataSource;
    qrpagarCODIGO: TStringField;
    qrpagarDATA_EMISSAO: TDateTimeField;
    qrpagarDATA_VENCIMENTO: TDateTimeField;
    qrpagarDATA_PAGAMENTO: TDateTimeField;
    qrpagarCODCONTA: TStringField;
    qrpagarCODFORNECEDOR: TStringField;
    qrpagarVALOR: TFloatField;
    qrpagarVALORPAGO: TFloatField;
    qrpagarLIQUIDO: TFloatField;
    qrpagarDESCONTO: TFloatField;
    qrpagarACRESCIMO: TFloatField;
    qrpagarDOCUMENTO: TStringField;
    qrpagarNOTAFISCAL: TStringField;
    qrpagarHISTORICO: TStringField;
    qrpagarC: TStringField;
    qrpagarE: TStringField;
    qrpagarFILTRO: TIntegerField;
    qrpagarESPECIE: TStringField;
    qrpagarSITUACAO: TIntegerField;
    qrpagarCODNOTA: TStringField;
    qrpagarMOVIMENTO: TIntegerField;
    qrpagarCODCAIXA: TStringField;
    qrpagarNOME: TStringField;
    Bevel12: TBevel;
    batual: TAdvGlowButton;
    AdvGlowButton3: TAdvGlowButton;
    AdvGlowButton4: TAdvGlowButton;
    bfinanceira: TAdvGlowButton;
    ArquivoLOG1: TMenuItem;
    Cidades1: TMenuItem;
    AdvGlowButton6: TAdvGlowButton;
    AdvGlowButton7: TAdvGlowButton;
    AdvGlowButton10: TAdvGlowButton;
    Memo1: TMemo;
    CNAE1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    Cores1: TMenuItem;
    amanho1: TMenuItem;
    AdvGlowButton8: TAdvGlowButton;
    Timer1: TTimer;
    AdvGlowButton9: TAdvGlowButton;
    AdvGlowButton11: TAdvGlowButton;
    DRE: TAdvGlowButton;
    qrinventario: TZQuery;
    qrinventarioCODPRODUTO: TStringField;
    qrinventarioTIPO: TStringField;
    qrinventarioPRODUTO: TStringField;
    qrinventarioUNIDADE: TStringField;
    qrinventarioCST: TStringField;
    qrinventarioALIQUOTA: TFloatField;
    qrinventarioESTOQUE: TFloatField;
    qrinventarioCUSTO: TFloatField;
    qrinventarioTOTAL: TFloatField;
    qrinventarionome_aliquota: TStringField;
    qrinventarioDATA: TDateTimeField;
    qrinventarioVENDA: TFloatField;
    qrinventarioANO: TIntegerField;
    qrinventarioMES: TIntegerField;
    qrinventarioDATA_POSTERIOR: TDateTimeField;
    BitBtn1: TBitBtn;
    rnumero: TRzNumericEdit;
    qrmestre: TZQuery;
    AdvGlowButton5: TAdvGlowButton;
    alerta_copia: TAlertView;
    Label6: TLabel;
    Label8: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    eConexao: TIBCConnection;
    Backup: TIBBackupService;
    BINDUSTRIALIZACAO: TAdvGlowButton;
    NCMNomenclaturaMercosul1: TMenuItem;
    CSOSNCdigodaOperaodeSituaodoSimplesNacional1: TMenuItem;
    pBackup: TPanel;
    RzPanel4: TRzPanel;
    AdvReflectionLabel1: TAdvReflectionLabel;
    ListBox1: TListBox;
    FlatPanel1: TFlatPanel;
    FlatPanel3: TFlatPanel;
    FlatPanel6: TFlatPanel;
    RzPanel2: TRzPanel;
    Image1: TImage;
    RzPanel3: TRzPanel;
    BSped: TAdvGlowButton;
    Image4: TImage;
    Image6: TImage;
    Image5: TImage;
    Image2: TImage;
    AdvShapeButton1: TAdvShapeButton;

    procedure FormShow(Sender: TObject);
    procedure barquivoEnter(Sender: TObject);
    procedure bestoqueEnter(Sender: TObject);
    procedure BMOVIMENTOEnter(Sender: TObject);
    procedure BFINANCEIROEnter(Sender: TObject);
    procedure BRELATORIOEnter(Sender: TObject);
    procedure BUTILITARIOEnter(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure barquivoClick(Sender: TObject);
    procedure bfiliaisKeyPress(Sender: TObject; var Key: Char);
    procedure bclienteKeyPress(Sender: TObject; var Key: Char);
    procedure bestoqueClick(Sender: TObject);
    procedure BMOVIMENTOClick(Sender: TObject);
    procedure BFINANCEIROClick(Sender: TObject);
    procedure BRELATORIOClick(Sender: TObject);
    procedure BUTILITARIOClick(Sender: TObject);
    procedure bprodutoKeyPress(Sender: TObject; var Key: Char);
    procedure BCAIXAKeyPress(Sender: TObject; var Key: Char);
    procedure BCOPIAKeyPress(Sender: TObject; var Key: Char);
    procedure BCOPIAClick(Sender: TObject);
    procedure BRESTOREKeyPress(Sender: TObject; var Key: Char);
    procedure BRESTOREClick(Sender: TObject);
    procedure BVENDAClick(Sender: TObject);
    procedure BCONSULTAClick(Sender: TObject);
    procedure bprodutoClick(Sender: TObject);
    procedure BCAIXAClick(Sender: TObject);
    procedure BPAGARClick(Sender: TObject);
    procedure BRECEBERClick(Sender: TObject);
    procedure becfClick(Sender: TObject);
    procedure BORCAMENTOClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BFORNECEDORClick(Sender: TObject);
    procedure BTRANSPClick(Sender: TObject);
    procedure BFUNCIClick(Sender: TObject);
    procedure BSERVICOClick(Sender: TObject);
    procedure BBANCOClick(Sender: TObject);
    procedure BGRUPOClick(Sender: TObject);
    procedure BMARCAClick(Sender: TObject);
    procedure BAGENDAClick(Sender: TObject);
    procedure BENTRADAClick(Sender: TObject);
    procedure BCALCULADORAClick(Sender: TObject);
    procedure VrDemoButton49Click(Sender: TObject);
    procedure BPLANOClick(Sender: TObject);
    procedure BSAIDAKeyPress(Sender: TObject; var Key: Char);
    procedure BCHEQUEClick(Sender: TObject);
    procedure BCONTAClick(Sender: TObject);
    procedure BOPCAIXAKeyPress(Sender: TObject; var Key: Char);
    procedure BOPCAIXAClick(Sender: TObject);
    procedure BNOTASKeyPress(Sender: TObject; var Key: Char);
    procedure BNOTASClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure BOSClick(Sender: TObject);
    procedure BCONFIGClick(Sender: TObject);
    procedure BBALANCAClick(Sender: TObject);
    procedure BRRECEBERClick(Sender: TObject);
    procedure BRCAIXAClick(Sender: TObject);
    procedure BCLIENTEFClick(Sender: TObject);
    procedure BRETIQUETAClick(Sender: TObject);
    procedure BBOLETOClick(Sender: TObject);
    procedure BSINTEGRAClick(Sender: TObject);
    procedure BUSUARIOClick(Sender: TObject);
    procedure LUSUARIOClick(Sender: TObject);
    procedure BRVENDAClick(Sender: TObject);
    procedure BRCLIENTEClick(Sender: TObject);
    procedure BRFORNECEDORClick(Sender: TObject);
    procedure BRPRODUTOClick(Sender: TObject);
    procedure BROSClick(Sender: TObject);
    procedure BRPAGARClick(Sender: TObject);
    procedure bativacaoClick(Sender: TObject);
    procedure BCONVENIOClick(Sender: TObject);
    procedure LinkView3Click(Sender: TObject);
    procedure LinkView1Click(Sender: TObject);
    procedure Filiais1Click(Sender: TObject);
    procedure VrDemoButton2Click(Sender: TObject);
    procedure VrDemoButton3Click(Sender: TObject);
    procedure BCFOP2Click(Sender: TObject);
    procedure VrDemoButton4Click(Sender: TObject);
    procedure VrDemoButton5Click(Sender: TObject);
    procedure BEXPORTAClick(Sender: TObject);
    procedure BEXPORTAKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton12Click(Sender: TObject);
    procedure barquivoMouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
    procedure bfiliaisClick(Sender: TObject);
    procedure bclienteClick(Sender: TObject);
    procedure bsairClick(Sender: TObject);
    procedure MenuItem1Click(Sender: TObject);
    procedure BconhecimentoClick(Sender: TObject);
    procedure BVENDAKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton34KeyPress(Sender: TObject; var Key: Char);
    procedure brclienteKeyPress(Sender: TObject; var Key: Char);
    procedure CSTCdigodaSituaoTributria1Click(Sender: TObject);
    procedure ModelosdeDocumentosFiscais1Click(Sender: TObject);
    procedure ECFCadastrodeEquipamentos1Click(Sender: TObject);
    procedure Setor2Click(Sender: TObject);
    procedure Veculos1Click(Sender: TObject);
    procedure bveiculocClick(Sender: TObject);
    procedure bsairEnter(Sender: TObject);
    procedure Clientes1Click(Sender: TObject);
    procedure Produtos1Click(Sender: TObject);
    procedure ConsultadePreos1Click(Sender: TObject);
    procedure ContasaPagar1Click(Sender: TObject);
    procedure ContasaReceber1Click(Sender: TObject);
    procedure Oramento1Click(Sender: TObject);
    procedure Caixa1Click(Sender: TObject);
    procedure OrdemdeServio1Click(Sender: TObject);
    procedure NotaFiscal1Click(Sender: TObject);
    procedure SairdoSistema1Click(Sender: TObject);
    procedure AnularSaida1Click(Sender: TObject);
    procedure bcfopClick(Sender: TObject);
    procedure AdvGlowButton34Click(Sender: TObject);
    procedure boutrosKeyPress(Sender: TObject; var Key: Char);
    procedure bcfopKeyPress(Sender: TObject; var Key: Char);
    procedure rocardeUsurio1Click(Sender: TObject);
    procedure GerencimentodeUsurios1Click(Sender: TObject);
    procedure Baixa1Click(Sender: TObject);
    procedure Pedido1Click(Sender: TObject);
    procedure Entrada1Click(Sender: TObject);
    procedure ConsultaServio1Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure MemorandodeExportao1Click(Sender: TObject);
    procedure bformaClick(Sender: TObject);
    procedure Venda1Click(Sender: TObject);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure FormasdePagamento1Click(Sender: TObject);
    procedure CondiesdePagamento1Click(Sender: TObject);
    procedure batualClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton3KeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure bfinanceiraClick(Sender: TObject);
    procedure ArquivoLOG1Click(Sender: TObject);
    procedure Cidades1Click(Sender: TObject);
    procedure AdvGlowButton6Click(Sender: TObject);
    procedure AdvGlowButton7Click(Sender: TObject);
    procedure AdvGlowButton10Click(Sender: TObject);
    procedure CNAE1Click(Sender: TObject);
    procedure Cores1Click(Sender: TObject);
    procedure amanho1Click(Sender: TObject);
    procedure AdvGlowButton8Click(Sender: TObject);
    procedure AdvGlowButton9Click(Sender: TObject);
    procedure AdvGlowButton11Click(Sender: TObject);
    procedure DREClick(Sender: TObject);
    procedure Label12Click(Sender: TObject);
    procedure BINDUSTRIALIZACAOClick(Sender: TObject);
    procedure NCMNomenclaturaMercosul1Click(Sender: TObject);
    procedure CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click(
      Sender: TObject);
    procedure BSpedClick(Sender: TObject);

  private
    { Private declarations }
   FUltimaExecucao: TDateTime;
//   FHoje: TDateTime;
   FValidate: Integer;
   FNomeProduto: String;
   FVersaoProduto: String;
   FBuilt: String;
   FHistorico: TStrings;
   STime: TDateTime;



  public

    FHoje: TDateTime;

    vfil_codigo,vfil_nome,vfil_cnpj,vfil_ie,vfil_cst,vfil_cipi,vfil_simples,vfil_ssimples,vfil_estadual: string;
    vcontador : integer;
    { Public declarations }

    function Verifica_Conexao : Boolean;
    procedure log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
    procedure agenda(vsituacao,vtipo,vnome,vtelefone1,vtelefone2,vtelefone3,vcelular,vemail,vfax,vhomepage,vtipoi:string);

    function VersaoExe(const Filename: String): String;

    function le_dll_Registro: boolean;
    function le_dll_Registro_servidor: boolean;

    function Cria_DLL_Registro(rexpirado,rinstalacao,rdata,rtermino,rempresa,rrsocial,rcnpj:string):boolean;
    function Cria_DLL_Registro_servidor(rexpirado,rinstalacao,rdata,rtermino,rempresa,rrsocial,rcnpj:string):boolean;

    function formata_valor(valor:string):string;
    
    function Exec_File(File_Path: string): integer;
    function UltimoDiaMes(Mdt: TDateTime) : TDateTime;
    function Space(const Len: integer): string;
    function tbReplChar(const Ch: Char; const Len: integer): string;
    function somenteNumero(sNum:string):string;
    function tira_ponto(texto:string):string;
    function TiraCaracterEspecial(texto:string):string;
    function FormataValorProsoft(fValor:Real;fQtde:Integer):string;
    Procedure ExecutePrograma(Nome, Parametros: String);
    procedure FechePrograma(Programa: Pchar);
    function acesso(usuario:string;funcao:string):string;
    procedure AcertaPadraoData2;
    procedure GravaReducaoZ;
    function DataDeCriacao(Arq: string): TDateTime;
    function RemoveAcentos(Str:String): String;
    function Arredondar(Value: Extended; Decimals: integer): Extended;


    procedure limpaedit (Form:Tform);
    Function AnoBiSexto(Ayear: Integer): Boolean;
    function DiasPorMes(Ayear, AMonth: Integer): Integer;
    function texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
    function tiraacento ( str: String ): String;
    function lancaproduto(codproduto:string;data:tdatetime;movimento:string;codcliente:string;codsaida:string;codentrada:string;codvendedor:string;qtde:real;valor:real;total:real;notafiscal:string):string;
    function CalculaDigEAN13(Cod:String):String;
    function TestaCnpj(xCNPJ: String):Boolean;
    function Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
    Function GetIP:string;

    function ChecaEstado(Dado : string) : boolean;
    function adic_codifica(Tabela:string):string;
    function codifica(Tabela:string):string;
    function zerarcodigo(codigo:string;qtde:integer):string;
    Function Cript(Action, Src: String): String;
    function autentica(funcao : string;nivel:integer) : boolean;
    function autentica_caixa(funcao:string;nivel:integer) : boolean;
    function NomeComputador : String;//External

    function tira_aspa(texto:string):string;
    function nao_arredonda(valor:real):real;
    function FormataCEP(const CEP: string): string;

    function efetua_Backup:boolean;

       (*T E F*)

       Procedure Daruma_Analisa_Retorno();
       Procedure Daruma_Retorno_Impressora();

       function AnalisaRetornoECF: integer;
       function AnalisaRetornoComando(retorno:integer): integer;
       function AnalisaRetorno(retorno:integer): integer;

       function msgcard() : boolean;
       function msgcheck() : boolean;



       (*----------------------------------------*)






  end;

    // funcoes externas da dll ebo7

    procedure AcertaPadraoData;External '\DataSac\server\dll\ebo7.dll';

    function  NumeroSerieHD : String;External '\DataSac\server\dll\ebo7.dll';
    Function  frm(ebo:string): String;External '\DataSac\server\dll\ebo7.dll';
var
  frmPrincipal: TfrmPrincipal;
  autenticado:boolean;
  ativa_sistema : boolean;
  qtde_dias_ativacao : integer;
  DATA_TERMINO : TDATETIME;

  nc_caixa : integer;

  res_expirado,res_instalacao,res_data,res_termino, res_empresa , res_rsocial , res_cnpj :string;
  cont_inventario : boolean;
  novaversao:boolean;
  conexao_sistema : string;
  ExeAtualiza,ExeAtual:string;

  usuario_temp : string;


  // TEF_DIAL
    USA_TEF, usa_tecban : BOOLEAN;
  retmsg, TEFFINAL, jafinalizado, foiconectado : BOOLEAN;
  ret_cheque : integer;
  elcheque : boolean; // variavel q controla o se a venda eh cheque ou cartao para impressao do CV
  daruma_retorno: integer;
  continua : boolean;
  iRet : Integer;
  venda_TEF : boolean;
  //



implementation

uses backup, restore, modulo, senha, filial, papelparede, cliente,
  fornecedor, transportador, funcionario, servico, banco, formapgto,
  condpgto, grupo, marca, aliquota, agenda, produto, produto_entrada,
  produto_consultapreco, Calculad, calendario, plano, produto_saida,
  produto_pedido, cheque, contacorrente, caixa, caixa_operador,
  senha_caixa, contaspagar, venda, venda_inicio,
  contasreceber, notas_venda, os, setor, os_menu, veiculo, config,
  orcamento, balanca, produto_ligth,
  notafiscal, cliente_financeiro, produto_auto, cliente_veiculo,
  etiquetador, boleto, sintegra_gerar, Math, usuario_menu, conhecimento,
  cfop,  loc_produto_auto, acesso, xloc_cliente, lista_venda2,
  lista_cliente2, lista_fornecedor2, lista_produto2, lista_os,
  lista_receber2, lista_pagar2, notafiscalE, lista_caixa2, ativacao,
  aviso_expirado, ativacao2, venda_farma, convenio, produto_farma, log, ecfserver,
  produto_falta, convenio_receber, empresa, cst, modelo_fiscal, ecfs,
  sintegra_menu, ecf,
  ECF_REDUCAO, prevenda, compra, compra_menu, exporta_dados,
  ecf_reducao_menu, notafiscal_menu, progresso, usuario, cheque_menu,
  baixa_estoque, xloc_servico, Produto_consultaserial, memorando_menu,
  lista_servicos_periodicos, produto_pdv2, entrega, notafiscal_item2,
  copia_arquivo, financeira, usuario_log, cidade, msgcartao, msgcheque,
  Tef, unFuncoesTEF, cartao, cnae, cor, tamanho, Lista_ABC_Marca_Grupo,
  lista_frete, fluxo_caixa, DRE, mensagem_inventario, industrializacao, Ncm,
  xloc_csosn;


{$R *.dfm}

Procedure AlinharPanel(AForm: TForm; APanel: TPanel; ACentro: Boolean);
begin
  if ACentro then
  begin
    APanel.Left := (AForm.ClientWidth div 2) - (APanel.Width div 2);
    APanel.Top := (AForm.ClientHeight div 2) - (APanel.Height div 2);
  end
  else
  begin
    APanel.Left := (AForm.ClientWidth + 100);
    APanel.Top := (AForm.ClientHeight + 100);
  end;
  APanel.Update;
  AForm.Update;
end;

function TFrmPrincipal.Efetua_Backup:boolean;
begin

    RzPanel4.Visible := True;

  try

    eConexao.Connected := false;
    Backup.DatabaseName := eConexao.Database;
    BAckup.ServerName   := eConexao.Server;
    application.ProcessMessages;

    Backup.BackupFile.Clear;
    Backup.BackupFile.Add(ChangeFileExt('\DataSAC\server\bkp\' + FormatDateTime('yyyymmddnnhh', now), '.fbk'));
    Backup.Active := true;

    listbox1.Clear;
    listbox1.Items.Add(Format('Backup Iniciado às %s horas', [FormatDateTime('hh:nn:ss', now)]));
    listbox1.Items.add('Local: \DataSAC\server\bkp\');

    AlinharPanel(frmPrincipal,pBackup,true); 
    pBackup.visible := true;
    application.ProcessMessages;

    Backup.ServiceStart;
    While not BackUp.Eof do
    begin
      listbox1.Items.add(BackUp.GetNextLine);
      ListBox1.Update;
      ListBox1.ItemIndex := ListBox1.Items.Count -1;

      Application.ProcessMessages;
    end;
    Backup.Active := false;
    listbox1.items.add(Format('Backup Finalizado às %s horas', [FormatDateTime('hh:nn:ss', now)]));
    showmessage('Processamento finalizado!');
    RzPanel4.Visible := False;
    econexao.Connected := true;
    pBackup.visible := false;
    application.processmessages;
    result := true;

   frmmodulo.Conexao.Connected := TRUE;
   FRMMODULO.ConexaoLOCAL.Connected := TRUE;

   frmmodulo.qrconfig.Open;
   frmmodulo.qrconfig.edit;
   frmmodulo.qrconfig.FieldByName('ultimo_backup').asdatetime := date;
   frmmodulo.qrconfig.post;
   frmmodulo.qrconfig.close;
   frmmodulo.ConexaoLocal.Commit;

  except
    result := false;
  end;



end;

function TfrmPrincipal.Verifica_Conexao : Boolean;
begin
end;

(*FUNCOES ACRESCENTADAS PARA O TEF*)


function Tfrmprincipal.tira_aspa(texto:string):string;
var s1, s2: string;
    i: Integer;
begin
     s1 := texto;
     s2 := '';
     for i := 1 to Length(s1) do
          if s1[i] <> '''' then
               s2 := s2 + s1[i];
     result:=s2;
end;

function tfrmprincipal.msgcard() : boolean;
begin
  frmmsgcartao := tfrmmsgcartao.create(self);
  frmmsgcartao.showmodal;
  result := retmsg;
end;
function tfrmprincipal.msgcheck() : boolean;
begin
  frmmsgcheque := tfrmmsgcheque.create(self);
  frmmsgcheque.showmodal;
  result := retmsg;
end;

Procedure Tfrmprincipal.Daruma_Analisa_Retorno();
  Begin

    if Daruma_Retorno = -27 then
      Daruma_Retorno_Impressora();

    if Daruma_Retorno = 0 then
    begin
       continua := false;
       application.messagebox( 'Erro de comunicação, a Função nao conseguiu enviar o comando','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -1 Then
    begin
       continua := false;
       application.messagebox( 'Erro de Execução da Função','Erro',mb_ok+MB_ICONERROR);
    end;

    if Daruma_Retorno = -2  then
    begin
      continua := false;
      application.messagebox( 'Parâmetro inválido passado na função.!','Erro',mb_ok+MB_ICONERROR);
    end;

    if Daruma_Retorno = -3  then
    begin
      continua := false;
       application.messagebox( 'Alíquota não programada no ECF. !','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -4 Then
    begin
      continua := false;
       application.messagebox( 'A Chave ou Valor no Registry não Foi Encontado.!','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -5 Then
    begin
      continua := false;
       application.messagebox( 'Erro ao Abrir a Porta de Comunicação','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -6 Then
    begin
      continua := false;
       application.messagebox( 'Impressora desligada ou cabo de comunicação desconectado.','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -7 Then
    begin
      continua := false;
       application.messagebox( 'Banco não encontrado ou não cadastrado no Registry','Erro',mb_ok+MB_ICONERROR);
    end;

    If Daruma_Retorno = -8 Then
    begin
      continua := false;
      application.messagebox( ' Erro ao criar ou gravar no arquivo STATUS.TXT ou RETORNO.TXT.','Erro',mb_ok+MB_ICONERROR);
    end;

  END;

{A Rotina Abaixo Analisa o Retorno da Impressora, do ECF}
Procedure Tfrmprincipal.Daruma_Retorno_Impressora();
  Var Daruma_iACK, Daruma_iST1, Daruma_iST2: Integer;
      Daruma_MSG: String;

  Begin
    Daruma_iACK := 0; //Variaveis devem ser inicializadas para Alocar Espaco
    Daruma_iST1 := 0;
    Daruma_iST2 := 0;
    Daruma_MSG :='';
    Daruma_Retorno := Daruma_FI_RetornoImpressora(Daruma_iACK, Daruma_iST1, Daruma_iST2);
    If Daruma_iACK = 6 then
       BEGIN


          // Verifica ST1

          IF Daruma_iST1 >= 128 Then BEGIN Daruma_iST1 := Daruma_iST1 - 128; Daruma_MSG := 'Papel Acabou!!' + #13 + #10; END;
          IF Daruma_iST1 >= 64  Then BEGIN Daruma_iST1 := Daruma_iST1 - 64;  Daruma_MSG := Daruma_MSG + 'Papel Acabando!!' + #13 + #10; continua := true; END;
          IF Daruma_iST1 >= 32  Then BEGIN Daruma_iST1 := Daruma_iST1 - 32;  Daruma_MSG := Daruma_MSG + 'Erro no Relogio!!' + #13 + #10;END;
          IF Daruma_iST1 >= 16  Then BEGIN Daruma_iST1 := Daruma_iST1 - 16;  Daruma_MSG := Daruma_MSG + 'Impressora em Erro!!' + #13 + #10;END;
          IF Daruma_iST1 >= 8   Then BEGIN Daruma_iST1 := Daruma_iST1 - 8;   Daruma_MSG := Daruma_MSG + 'Falta o ESC no comando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 4   Then BEGIN Daruma_iST1 := Daruma_iST1 - 4;   Daruma_MSG := Daruma_MSG + 'Nao existe o Comando!!' + #13 + #10;END;
          IF Daruma_iST1 >= 2   Then BEGIN Daruma_iST1 := Daruma_iST1 - 2;   Daruma_MSG := Daruma_MSG + 'Cupom Aberto!!' + #13 + #10;END;
          IF Daruma_iST1 >= 1   Then BEGIN Daruma_iST1 := Daruma_iST1 - 1;   Daruma_MSG := Daruma_MSG + 'Parametro Errado!!' + #13 + #10;END;

          // Verifica ST2

          IF Daruma_iST2 >= 128 Then BEGIN Daruma_iST2 := Daruma_iST2 - 128; Daruma_MSG := Daruma_MSG + 'Parametro Invalido!!' + #13 + #10;END;
          IF Daruma_iST2 >= 64  Then BEGIN Daruma_iST2 := Daruma_iST2 - 64;  Daruma_MSG := Daruma_MSG + 'MF Lotada!!' + #13 + #10;END;
          IF Daruma_iST2 >= 32  Then BEGIN Daruma_iST2 := Daruma_iST2 - 32;  Daruma_MSG := Daruma_MSG + 'Erro na Ram!!' + #13 + #10;END;
          IF Daruma_iST2 >= 16  Then BEGIN Daruma_iST2 := Daruma_iST2 - 16;  Daruma_MSG := Daruma_MSG + 'Aliquota Nao Programada!!' + #13 + #10;END;
          IF Daruma_iST2 >= 8   Then BEGIN Daruma_iST2 := Daruma_iST2 - 8;   Daruma_MSG := Daruma_MSG + 'Nao cabe mais Aliquota!!' + #13 + #10;END;
          IF Daruma_iST2 >= 4   Then BEGIN Daruma_iST2 := Daruma_iST2 - 4;   Daruma_MSG := Daruma_MSG + 'Canc. Nao Permitido!!' + #13 + #10;END;
          IF Daruma_iST2 >= 2   Then BEGIN Daruma_iST2 := Daruma_iST2 - 2;   Daruma_MSG := Daruma_MSG + 'CNPJ nao Programado!!' + #13 + #10;END;
          IF Daruma_iST2 >= 1   Then BEGIN Daruma_iST2 := Daruma_iST2 - 1;   Daruma_MSG := Daruma_MSG + 'Comando Nao Executado!!' + #13 + #10;END;

          if Length(Daruma_MSG) > 1 then
          APPLICATION.MESSAGEBOX(pansichar(daruma_msg),'Atenção',mb_ok+mb_iconwarning);
       End;

    If Daruma_iACK = 21 Then BEGIN
        APPLICATION.MESSAGEBOX('Erro Fatal na Impressora! A aplicação será finalizada!','Erro',mb_ok+mb_iconerror);
       Application.Terminate;
       Exit;
    End;
   END;


function Tfrmprincipal.AnalisaRetornoECF: integer;
Var iACK, iST1, iST2: Integer;
Begin
  iACK := 0; iST1 := 0; iST2 := 0;
  iRet := Bematech_FI_RetornoImpressora(iACK, iST1, iST2);
  If iACK = 6 then
  begin
    if iST1 = 64  Then
    begin
      iST1 := iST1 - 64;
      application.messagebox('Papel está terminando','Atenção',mb_ok+mb_iconwarning);
      IRET := 1;
      CONTINUA := TRUE;
    end
    ELSE
    BEGIN
      if iST1 = 128 Then
      begin
        iST1 := iST1 - 128;
        application.messagebox('Fim do Papel','Erro',mb_ok+MB_ICONERROR);
        iret := 0;
      end;
      if iST1 = 192 Then
      begin
        iST1 := iST1 - 128;
        application.messagebox('Fim do Papel','Erro',mb_ok+MB_ICONERROR);
        iret := 0;
      end;
      if iST1 = 32  Then
      begin
        iST1 := iST1 - 32;
        application.messagebox('Erro no relógio interno do ECF','Erro',mb_ok+MB_ICONERROR);
      end;
      if iST1 = 16  Then
      begin
        iST1 := iST1 - 16;
        application.messagebox('Impressora em erro - Desligue e ligue o ECF','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 8   Then
      begin
        iST1 := iST1 - 8;
        application.messagebox('Erro no envio do comando','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 4   Then
      begin
        iST1 := iST1 - 4;
        application.messagebox('Comando inexistente','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST1 = 2   Then
      begin
        iST1 := iST1 - 2;
        application.messagebox('Cupom Fiscal aberto','Erro',mb_ok+MB_ICONERROR);
        venda_TEF := true;
      end;
      if iST1 = 1   Then
      begin
        iST1 := iST1 - 1;
        application.messagebox('Parâmetro inválido','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      // Verifica ST2
      if iST2 = 128 Then
      begin
        iST2 := iST2 - 128;
        application.messagebox('Tipo de comando inválido','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 64  Then
      begin
        iST2 := iST2 - 64;
        application.messagebox('Memória Fiscal cheia','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 32  Then
      begin
        iST2 := iST2 - 32;
        application.messagebox('Erro na CMOS do ECF','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 16  Then
      begin
        iST2 := iST2 - 16;
        application.messagebox('Alíquota não programada','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 8   Then
      begin
        iST2 := iST2 - 8;
        application.messagebox('Capacidade de alíquotas esgotada','Erro',mb_ok+MB_ICONERROR);
        continua := false;
      end;
      if iST2 = 5   Then
        begin
          iST2 := iST2 - 4;
          application.messagebox('Cancelamento não permitido! Verifique se o mesmo já foi cancelado!','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;



      if iST2 = 4   Then
        begin
          iST2 := iST2 - 4;
          application.messagebox('Cancelamento não permitido pelo ECF','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
      if iST2 = 2   Then
        begin
          iST2 := iST2 - 2;
          application.messagebox('CNPJ/IE não programados','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
      if iST2 = 1   Then
        begin
          iST2 := iST2 - 1;
          application.messagebox('Comando não executado','Erro',mb_ok+MB_ICONERROR);
          continua := false;
        end;
     END;// ACABANDO O PAPEL....
   end;

    If iACK = 21 Then
      begin
       application.messagebox( pansichar('Atenção!!!' + #13 + #10 +'A Impressora retornou NAK. O programa será abortado.'),'Erro',mb_ok+mb_iconerror);
       continua := false;
       Application.Terminate;
       Exit;
      end;



    result := iRet;
end;


function Tfrmprincipal.AnalisaRetornoComando(retorno:integer): integer;
begin

    if retorno < 1 then continua := false;

    if retorno = 0 then
       application.messagebox( 'Erro de Comunicação !','Erro',mb_ok+MB_ICONERROR);
    If retorno = -1 Then
       application.messagebox( 'Erro de Execução na Função. Verifique!','Erro',mb_ok+MB_ICONERROR);

    if retorno = -2  then
       application.messagebox( 'Parâmetro Inválido!','Erro',mb_ok+MB_ICONERROR);

    if retorno = -3  then
       application.messagebox( 'Alíquota não programada!','Erro',mb_ok+MB_ICONERROR);

    If retorno = -4 Then
       application.messagebox( 'Arquivo BemaFI32.INI não encontrado. Verifique!','Erro',mb_ok+MB_ICONERROR);

    If retorno = -5 Then
       application.messagebox( 'Erro ao Abrir a Porta de Comunicação','Erro',mb_ok+MB_ICONERROR);

    If retorno = -6 Then
       application.messagebox( 'Impressora Desligada ou Desconectada','Erro',mb_ok+MB_ICONERROR);

    If retorno = -7 Then
       application.messagebox( 'Banco Não Cadastrado no Arquivo BemaFI32.ini','Erro',mb_ok+MB_ICONERROR);

    If retorno = -8 Then
       application.messagebox( 'Erro ao Criar ou Gravar no Arquivo Retorno.txt ou Status.txt','Erro',mb_ok+MB_ICONERROR);

    if retorno = -18 then
       application.messagebox( 'Não foi possível abrir arquivo INTPOS.001 !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -19 then
       application.messagebox( 'Parâmetro diferentes !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -20 then
       application.messagebox( 'Transação cancelada pelo Operador !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -21 then
       application.messagebox( 'A Transação não foi aprovada !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -22 then
       application.messagebox( 'Não foi possível terminal a Impressão !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -23 then
       application.messagebox( 'Não foi possível terminal a Operação !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -24 then
       application.messagebox( 'Forma de pagamento não programada.','Erro',mb_ok+MB_ICONERROR);

    if retorno = -25 then
       application.messagebox( 'Totalizador não fiscal não programado.','Erro',mb_ok+MB_ICONERROR);

    if retorno = -26 then
       application.messagebox( 'Transação já Efetuada !','Erro',mb_ok+MB_ICONERROR);

    if retorno = -28 then
       application.messagebox( 'Não há Informações para serem Impressas !','Erro',mb_ok+MB_ICONERROR);
    result := retorno;
end;

function Tfrmprincipal.AnalisaRetorno(retorno:integer): integer;
begin
  iRet := AnalisaRetornoComando(retorno);
  iRet := AnalisaRetornoECF();
  result := iRet;
end;




procedure tfrmprincipal.log(CODUSUARIO,TABELA,CODREGISTRO,FUNCAO,hISTORICO:string);
begin
  frmmodulo.querylog.close;
  frmmodulo.querylog.SQL.clear;
  frmmodulo.querylog.sql.add('insert into c000101');
  frmmodulo.querylog.sql.add('(data,hora,codusuario,tabela,codregistro,funcao,historico)');
  frmmodulo.querylog.SQL.add('values');
  frmmodulo.querylog.sql.add('(:data,:hora,:codusuario,:tabela,:codregistro,:funcao,:historico)');
  frmmodulo.querylog.params.parambyname('data').asdatetime := date;
  frmmodulo.querylog.params.parambyname('hora').asstring := timetostr(time);
  frmmodulo.querylog.params.parambyname('codusuario').asstring := usuario_temp;
  frmmodulo.querylog.params.parambyname('tabela').asstring := TABELA;
  frmmodulo.querylog.params.parambyname('codregistro').asstring := copy(codregistro,1,10);
  frmmodulo.querylog.params.parambyname('funcao').asstring := copy(funcao,1,10);
  frmmodulo.querylog.params.parambyname('historico').asstring := copy(historico,1,80);
  frmmodulo.querylog.execsql;

  usuario_temp := codigo_usuario;

end;

procedure tfrmprincipal.agenda(vsituacao,vtipo,vnome,vtelefone1,vtelefone2,vtelefone3,vcelular,vemail,vfax,vhomepage,vtipoi:string);
begin

  // tipoi
  {
   1. 'CLIENTE'
   2. 'CONTATO'
   3. 'FORNECEDOR'
   4. 'FUNCIONÁRIO'
   5. 'OUTROS'
   6. 'TRANSPORTADOR'
  }

  if vsituacao = '1' then
    begin
      frmmodulo.queryagenda.close;
      frmmodulo.queryagenda.SQL.clear;
      frmmodulo.queryagenda.sql.add('insert into c000034');
      frmmodulo.queryagenda.sql.add('(codigo,tipo,nome,telefone1,telefone2,telefone3,celular,email,fax,homepage,tipoi)');
      frmmodulo.queryagenda.SQL.add('values');
      frmmodulo.queryagenda.sql.add('(:codigo,:tipo,:nome,:telefone1,:telefone2,:telefone3,:celular,:email,:fax,:homepage,:tipoi)');
      frmmodulo.queryagenda.params.parambyname('codigo').AsString := frmprincipal.codifica('000034');
      frmmodulo.queryagenda.params.parambyname('tipo').AsString := vtipo;
      frmmodulo.queryagenda.params.parambyname('nome').asstring := vnome;
      frmmodulo.queryagenda.params.parambyname('telefone1').asstring := vtelefone1;
      frmmodulo.queryagenda.params.parambyname('telefone2').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('telefone3').asstring := vtelefone3;
      frmmodulo.queryagenda.params.parambyname('celular').asstring := vcelular;
      frmmodulo.queryagenda.params.parambyname('email').asstring := vemail;
      frmmodulo.queryagenda.params.parambyname('fax').asstring := vfax;
      frmmodulo.queryagenda.params.parambyname('homepage').asstring := vhomepage;
      frmmodulo.queryagenda.params.parambyname('tipoi').AsInteger := strtoint(vtipoi);
      frmmodulo.queryagenda.execsql;
    end
  else if vsituacao = '2' then
    begin
    {
      frmmodulo.queryagenda.close;
      frmmodulo.queryagenda.SQL.clear;
      frmmodulo.queryagenda.sql.add('update c000034 set ');
      frmmodulo.queryagenda.sql.add('(tipo,nome,telefone1,telefone2,telefone3,celular,email,fax,homepage,tipoi)');
      frmmodulo.queryagenda.SQL.add('values');
      frmmodulo.queryagenda.sql.add('(:tipo,:nome,:telefone1,:telefone2,:telefone3,:celular,:email,:homepage,:tipoi)');
      frmmodulo.queryagenda.params.parambyname('tipo').AsString := vtipo;
      frmmodulo.queryagenda.params.parambyname('nome').asstring := vnome;
      frmmodulo.queryagenda.params.parambyname('telefone1').asstring := vtelefone1;
      frmmodulo.queryagenda.params.parambyname('telefone2').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('telefone3').asstring := vtelefone2;
      frmmodulo.queryagenda.params.parambyname('celular').asstring := vcelular;
      frmmodulo.queryagenda.params.parambyname('email').asstring := vemail;
      frmmodulo.queryagenda.params.parambyname('fax').asstring := vfax;
      frmmodulo.queryagenda.params.parambyname('homepage').asstring := vhomepage;
      frmmodulo.queryagenda.params.parambyname('tipoi').AsInteger := strtoint(vtipoi);
      frmmodulo.queryagenda.execsql;
      }
    end;

end;

function TfrmPrincipal.VersaoExe(const Filename: String): String;
type
  TVersionInfo = packed record
    Dummy: array[0..7] of Byte;
    V2, V1, V4, V3: Word;
  end;
var
  Zero, Size: Cardinal;
  Data: Pointer;
  VersionInfo: ^TVersionInfo;
begin
  Size := GetFileVersionInfoSize(Pointer(Filename), Zero);
  if Size = 0 then
    Result := ''
  else
  begin
    GetMem(Data, Size);
    try
      GetFileVersionInfo(Pointer(Filename), 0, Size, Data);
      VerQueryValue(Data, '\', Pointer(VersionInfo), Size);
      Result := Format('%d.%d.%d.%d', [VersionInfo.V1, VersionInfo.V2, VersionInfo.V3, VersionInfo.V4]);
    finally
      FreeMem(Data);
    end;
  end;
end;


function tfrmprincipal.le_dll_Registro_servidor:boolean;
var
  txt : textfile;
  entrada : string;
  arquivo : string;
  xxx,x : integer;
begin

  //showmessage('estacao');


  arquivo := '';

  if FileExists('\\'+frmmodulo.Conexao.HostName+'\dll\ECFCom.dll') then
     arquivo := '\\'+frmmodulo.Conexao.HostName+'\dll\ECFCom.dll';

  if arquivo = '' then
  begin
    application.messagebox('Não foi possível detectar um compartilhamento válido da pasta DataSAC no servidor!'+
                           'Favor compartilhar a pasta DataSAC no servidor para prosseguir!','Erro',
                           mb_ok+mb_iconerror);
    application.Terminate;
  end;

  Memo1.Text := '';
  Memo1.Lines.LoadFromFile(arquivo);
  Memo1.Lines[0];

  xxx := 1;

  res_expirado := '';
  res_instalacao := '';
  res_data := '';
  res_termino := '';
  res_empresa := '';
  res_rsocial := '';
  res_cnpj := '';


  try
    for x:= 0 to memo1.lines.count-1 do begin
      IF x = 11 THEN
      begin
         res_expirado   := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 12 THEN
      begin
       res_instalacao := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 13 THEN
      begin
        res_data       := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 14 THEN
      begin
        res_termino    := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 15 THEN
      begin
        res_empresa    := Cript('D',copy(Memo1.Lines[x],31,99));
      end;

      IF x = 16 THEN
      begin
          res_rsocial    := Cript('D',copy(Memo1.Lines[x],31,99))
      end;
      IF x = 17 THEN
      begin
          res_cnpj    := Cript('D',copy(Memo1.Lines[x],31,99))
      end;

    end;

    if ( res_empresa <> frmmodulo.qremitenteCODIGO.AsString ) or  ( res_rsocial <> copy(frmmodulo.qremitenteNOME.AsString,1,40) ) or  ( res_cnpj <> frmmodulo.qremitenteCNPJ.AsString ) then
      begin
        application.messagebox('A segurança do Sistema foi Violada, Provavelmente Alguma Informação da Empresa Foi Modificada!','Erro',mb_ok+mb_iconerror);
        DeleteFile('\datasac\server\dll\ECFCom.dll');
        application.terminate;
      end
    else
      begin
        Result := true;
      end;

    Application.ProcessMessages;

  except
    {
    res_empresa := frmmodulo.qremitenteCODIGO.AsString;
    res_rsocial := frmmodulo.qremitenteNOME.AsString;
    res_cnpj := frmmodulo.qremitenteCNPJ.AsString;

    Cria_DLL_Registro(res_expirado,res_instalacao,datetostr(FHoje),res_termino,emitente_codigo,emitente_nome,emitente_cnpj);
    application.messagebox('Segurança atualizada! Favor reiniciar o sistema!','Aviso',mb_ok+mb_iconwarning);
    application.terminate;
    }
  end;

end;
 
function tfrmprincipal.le_dll_Registro:boolean;
var
  txt : textfile;
  entrada : string;
  xxx,x : integer;
begin

  //showmessage('servidor');

  Memo1.Text := '';
  Memo1.Lines.LoadFromFile('\datasac\server\dll\ECFCom.dll');
  Memo1.Lines[0];

  xxx := 1;

  res_expirado := '';
  res_instalacao := '';
  res_data := '';
  res_termino := '';
  res_empresa := '';
  res_rsocial := '';
  res_cnpj := '';

  Application.ProcessMessages;

  try
    for x:= 0 to memo1.lines.count-1 do begin
      IF x = 11 THEN
      begin
         res_expirado   := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 12 THEN
      begin
       res_instalacao := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 13 THEN
      begin
        res_data       := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 14 THEN
      begin
        res_termino    := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 15 THEN
      begin
        res_empresa    := Cript('D',copy(Memo1.Lines[x],31,99));
      end;

      IF x = 16 THEN
      begin
          res_rsocial    := Cript('D',copy(Memo1.Lines[x],31,99));
      end;
      IF x = 17 THEN
      begin
          res_cnpj    := Cript('D',copy(Memo1.Lines[x],31,99));
      end;

    end;

    frmmodulo.qrFilial.Open;

    if ( frmmodulo.qremitenteNOME.AsString = '' ) or
       ( frmmodulo.qremitenteNOME.AsString = '---' ) then
      begin
        //showmessage('Atualizando RAZÃO SOCIAL...');
        frmmodulo.qremitente.Open;
        frmmodulo.qremitente.Edit;
        frmmodulo.qremitenteNOME.AsString := frmmodulo.qrFilialFILIAL.AsString;
        frmmodulo.qremitente.Post;
        frmmodulo.Conexao.Commit;
        frmmodulo.qremitente.Open;

        emitente_nome := frmmodulo.qremitenteNOME.AsString;

      end;

    if ( somenteNumero(frmmodulo.qremitenteCNPJ.AsString) = '' ) then
      begin
        //showmessage('Atualizando CNPJ...');
        frmmodulo.qremitente.Open;
        frmmodulo.qremitente.Edit;
        frmmodulo.qremitenteCNPJ.AsString := frmmodulo.qrFilialCNPJ.AsString;
        frmmodulo.qremitenteIE.AsString := frmmodulo.qrFilialIE.AsString;
        frmmodulo.qremitenteCIDADE.AsString := frmmodulo.qrFilialCIDADE.AsString;
        frmmodulo.qremitenteUF.AsString := frmmodulo.qrFilialUF.AsString;
        frmmodulo.qremitente.Post;
        frmmodulo.Conexao.Commit;
        frmmodulo.qremitente.Open;
      end;

    if ( frmmodulo.qremitenteCODIGO.AsString = '000000' ) or
       ( frmmodulo.qremitenteNOME.AsString = '---' ) or
       ( frmmodulo.qremitenteNOME.AsString = '' ) or
       ( frmmodulo.qremitenteCNPJ.AsString = '' ) or
       ( res_empresa <> frmmodulo.qremitenteCODIGO.AsString ) or
       ( res_rsocial <> copy(frmmodulo.qremitenteNOME.AsString,1,40) ) or
       ( res_cnpj <> frmmodulo.qremitenteCNPJ.AsString ) then

      begin
        application.messagebox(pchar('A Tabela de Emitente esta com Informações Inválidas'+#13+
                                     'sobre o Cliente, Verifique ou contate o suporte para correção.' + #13+ #13+
                                     'Código........: ' + frmmodulo.qremitenteCODIGO.AsString + #13+
                                     'Razão Social.: ' + frmmodulo.qremitenteNOME.AsString + #13+
                                     'CNPJ..........: ' + frmmodulo.qremitenteCNPJ.AsString),'Atenção',mb_ok+MB_ICONEXCLAMATION);

        DeleteFile('\datasac\server\dll\ECFCom.dll');
        application.terminate;
      end
    else
      begin
        Result := true;
      end;

    if Length(trim(res_termino)) < 10 then
      begin
        res_termino := datetostr(strtodate(trim(res_termino)));

        res_empresa := frmmodulo.qremitenteCODIGO.AsString;
        res_rsocial := copy(frmmodulo.qremitenteNOME.AsString,1,40);
        res_cnpj := frmmodulo.qremitenteCNPJ.AsString;

        Cria_DLL_Registro(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj);
        application.messagebox('Segurança atualizada! Favor reiniciar o sistema!','Aviso',mb_ok+mb_iconwarning);
        application.terminate;
      end;

  except

    res_empresa := frmmodulo.qremitenteCODIGO.AsString;
    res_rsocial := copy(frmmodulo.qremitenteNOME.AsString,1,40);
    res_cnpj := frmmodulo.qremitenteCNPJ.AsString;

    application.messagebox(pchar('Atenção, Houve um problema de Acesso!' + #13+
                                 'O Sistema vai criar uma nova configuração para o Cliente.' + #13+ #13+
                                 'Código........: ' + frmmodulo.qremitenteCODIGO.AsString + #13+
                                 'Razão Social.: ' + frmmodulo.qremitenteNOME.AsString + #13+
                                 'CNPJ..........: ' + frmmodulo.qremitenteCNPJ.AsString),'Atenção',mb_ok+MB_ICONEXCLAMATION);


    frmmodulo.qrFilial.Open;

    if ( frmmodulo.qremitenteNOME.AsString = '' ) or
       ( frmmodulo.qremitenteNOME.AsString = '---' ) then
      begin
        //showmessage('Atualizando RAZÃO SOCIAL...');
        frmmodulo.qremitente.Open;
        frmmodulo.qremitente.Edit;
        frmmodulo.qremitenteNOME.AsString := frmmodulo.qrFilialFILIAL.AsString;
        frmmodulo.qremitente.Post;
        frmmodulo.Conexao.Commit;
        frmmodulo.qremitente.Open;

        emitente_nome := frmmodulo.qremitenteNOME.AsString;

      end;

    if ( somenteNumero(frmmodulo.qremitenteCNPJ.AsString) = '' ) then
      begin
        //showmessage('Atualizando CNPJ...');
        frmmodulo.qremitente.Open;
        frmmodulo.qremitente.Edit;
        frmmodulo.qremitenteCNPJ.AsString := frmmodulo.qrFilialCNPJ.AsString;
        frmmodulo.qremitenteIE.AsString := frmmodulo.qrFilialIE.AsString;
        frmmodulo.qremitenteCIDADE.AsString := frmmodulo.qrFilialCIDADE.AsString;
        frmmodulo.qremitenteUF.AsString := frmmodulo.qrFilialUF.AsString;
        frmmodulo.qremitente.Post;
        frmmodulo.Conexao.Commit;
        frmmodulo.qremitente.Open;
      end;

    Cria_DLL_Registro(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj);
    application.messagebox('Segurança atualizada! Favor reiniciar o sistema!','Aviso',mb_ok+mb_iconwarning);
    application.terminate;

  end;

end;


function tfrmprincipal.Exec_File(File_Path: string): integer;
var
 retorno: integer;
 MyOpenDialog: TOpenDialog;
 Error_Msg: String;
begin
 retorno := ERROR_FILE_NOT_FOUND;

 try
   if FileExists(File_Path) then
     retorno := ShellExecute(0, nil, PChar(File_Path), nil, nil, SW_NORMAL)
   else if application.messagebox(PChar('Não foi possível encontrar o arquivo - ' +
     #13 + File_Path + #13#13 +
     'Deseja Localizar o Arquivo?'),
     'Atenção', MB_IconInformation + MB_YESNO) = idYes then
    begin
     MyOpenDialog := TOpenDialog.Create(MyOpenDialog);
     MyOpenDialog.Title := 'Localizando Arquivo...';
     MyOpenDialog.InitialDir := Extractfiledir(application.exename);
     if MyOpenDialog.Execute then
       retorno := ShellExecute(0, nil, PChar(MyOpenDialog.filename), nil, nil, SW_NORMAL);
    end;
 except
   application.MessageBox('Erro no processo de execução do arquivo de Ajuda',
     'Atenção', mb_ok + mb_iconerror);
  end;

 MyOpenDialog.Free;

 Error_Msg := '';
 case retorno of
  0:                      Error_Msg := 'Erro: Não há memória sufiente para executar o arquivo - ' + File_Path;
  ERROR_FILE_NOT_FOUND:   Error_Msg := 'Erro: Arquivo não encontrado em - ' + File_Path;
  ERROR_PATH_NOT_FOUND:   Error_Msg := 'Erro: Arquivo não encontrado em - ' + File_Path;
  ERROR_BAD_FORMAT:       Error_Msg := 'Erro: Arquivo .EXE inválido (non-Win32 .EXE or error in .EXE image).';
  SE_ERR_ACCESSDENIED:    Error_Msg := 'Erro: O Sistema Operacional negou o acesso ao arquivo - ' + File_Path;
  SE_ERR_ASSOCINCOMPLETE: Error_Msg := 'Erro: Associação de tipo de arquivo incompatível ou inválida.';
  SE_ERR_DDEBUSY:         Error_Msg := 'Erro: Transação DDE não pode ser completada devido a execução de outras transações.';
  SE_ERR_DDEFAIL:         Error_Msg := 'Erro: A Transação DDE falhou.';
  SE_ERR_DDETIMEOUT:      Error_Msg := 'Erro: Time de execução da transação DDE';
  SE_ERR_DLLNOTFOUND:     Error_Msg := 'Erro: Dll especificada não foi encontrada.';
  SE_ERR_NOASSOC:         Error_Msg := 'Erro: Não há aplicativo associado ao tipo de arquivo especificado.';
  SE_ERR_OOM:             Error_Msg := 'Erro: Não há memória sufiente para completar a operação.';
  SE_ERR_SHARE:           Error_Msg := 'Erro: Violação de Compartilhamento.';
  //else
  //showmessage('instance handle of the application that was run, or the handle of a dynamic data exchange (DDE) server application is: ' + inttostr(retorno));
 end;

 if trim(Error_Msg) <> '' then
  showmessage(Error_Msg);



end;
function tfrmprincipal.UltimoDiaMes(Mdt: TDateTime) : TDateTime;
{ retorna o ultimo dia o mes, de uma data fornecida}
var
  ano, mes, dia : word;
  mDtTemp : TDateTime;
begin
  Decodedate(mDt, ano, mes, dia);
  mDtTemp := (mDt - dia) + 33;
  Decodedate(mDtTemp, ano, mes, dia);
  Result := mDtTemp - dia;
end;


function tfrmprincipal.Space(const Len: integer): string;
begin
     Result := tbReplChar(#32, Len);
end;
function tfrmprincipal.tbReplChar(const Ch: Char; const Len: integer): string;
var
  I: integer;
begin
  SetLength(Result, Len);
  for I := 1 to Len do
  Result[I] := Ch;
end;

function Tfrmprincipal.somenteNumero(sNum:string):string;
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

function tfrmprincipal.tira_ponto(texto:string):string;
var i : integer;
begin
   i := pos('.',texto) + pos(',',texto);
   while i <> 0 do
   begin
     if pos('.',texto) > 0 then delete(texto,i,1);
     if pos(',',texto) > 0 then delete(texto,i,1);
      i := pos('.',texto) + pos(',',texto);
   end;
   result := texto;
end;

function tfrmprincipal.TiraCaracterEspecial(texto:string):string;
var i : integer;
begin
   i := pos('-',texto) + pos('_',texto);
   while i <> 0 do
   begin
     if pos('-',texto) > 0 then delete(texto,i,1);
     if pos('_',texto) > 0 then delete(texto,i,1);
      i := pos('-',texto) + pos('_',texto);
   end;
   result := texto;
end;

Procedure tfrmprincipal.ExecutePrograma(Nome, Parametros: String);
Var
 Comando: Array[0..1024] of Char;
 Parms: Array[0..1024] of Char;
begin
  StrPCopy(Comando, Nome);
  StrPCopy(Parms, Parametros);
  ShellExecute(0, Nil, Comando, Parms, Nil, SW_ShowNormal);
end;


procedure tfrmprincipal.FechePrograma(Programa: Pchar);
var
   hHandle : THandle;
begin
   hHandle := FindWindow( nil, Programa);

   if hHandle <> 0 then
      PostMessage( hHandle, WM_QUIT, 0, 0);
      
end;

function TFRMPRINCIPAL.NomeComputador : String;
var
lpBuffer : PChar;
nSize : DWord;
const Buff_Size = MAX_COMPUTERNAME_LENGTH + 1;
begin
nSize := Buff_Size;
lpBuffer := StrAlloc(Buff_Size);
GetComputerName(lpBuffer,nSize);
Result := String(lpBuffer);
StrDispose(lpBuffer);
END;

function tfrmprincipal.acesso(usuario:string;funcao:string):string;
begin
  try
    frmmodulo.qrUsuario_funcao.Close;
    frmmodulo.qrusuario_funcao.SQL.clear;
    frmmodulo.qrusuario_funcao.sql.add('select * from c000067 where codusuario ='''+usuario+''' and funcao like '''+funcao+'%''');
    frmmodulo.qrusuario_funcao.open;
    if frmmodulo.qrusuario_funcao.RecNo = 1 then
      begin
        result := FRMMODULO.QRUSUARIO_FUNCAO.FIELDBYNAME('ACESSO').ASSTRING;
      end
    else
      begin
        result :='NAO';
      end;
  except
    result := 'NAO';
  end;

end;
procedure Tfrmprincipal.AcertaPadraoData2;
const arrShortDayNames: array[1..7] of string[3] = ('Dom','Seg','Ter','Qua',
  'Qui','Sex','Sab');
  arrLongDayNames: array[1..7] of string[15] = ('Domingo','Segunda','Terça',
  'Quarta','Quinta','Sexta', 'Sábado');
  arrShortMonthNames: array[1..12] of string[3] = ('Jan','Fev','Mar','Abr',
  'Mai','Jun','Jul','Ago','Set','Out','Nov','Dez');
  arrLongMonthNames: array[1..12] of string[15] = ('Janeiro','Fevereiro',
  'Março','Abril','Maio', 'Junho','Julho','Agosto', 'Setembro','Outubro',
  'Novembro','Dezembro');
var ii: integer;
begin
  ShortDateFormat := 'dd/mm/yyyy';
  DecimalSeparator := ',';
  ThousandSeparator := '.';
  for ii := 1 to 7 do
  begin
    ShortDayNames[ii] := arrShortDayNames[ii];
    LongDayNames[ii] := arrLongDayNames[ii];
  end;
  for ii := 1 to 12 do
  begin
    ShortMonthNames[ii] := arrShortMonthNames[ii];
    LongMonthNames[ii] := arrLongMonthNames[ii];
  end;
end;



procedure tfrmprincipal.LimpaEdit (Form: TForm);
var
i : Integer;
begin
  for i := 0 to Form.ComponentCount - 1 do
  if Form.Components[i] is TCustomEdit then (Form.Components[i] as TCustomEdit).Clear;
end;
function tfrmprincipal.texto_justifica(texto : string; qtde_caracteres : integer; caracter : string; tipo:string) : string;
begin
   texto := tiraacento(texto);
   if tipo = 'E' then
   begin
     while length(texto) < qtde_caracteres do texto := caracter+texto;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'D' then
   begin
     while length(texto) < qtde_caracteres do texto := texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   if tipo = 'C' then
   begin
     if (qtde_caracteres mod 2) <> 0 then qtde_caracteres := qtde_caracteres - 1;
     while length(texto) < qtde_caracteres do texto := caracter+texto+caracter;
     while length(texto) > qtde_caracteres do delete(texto,(qtde_caracteres + 1), 1);
   end;
   result := texto;
end;


Function TFrmprincipal.AnoBiSexto(Ayear: Integer): Boolean;
begin
// Verifica se o ano é Bi-Sexto
Result := (AYear mod 4 = 0) and ((AYear mod 100 <> 0) or
(AYear mod 400 = 0));
end;

function TFrmprincipal.DiasPorMes(Ayear, AMonth: Integer): Integer;
const DaysInMonth: array[1..12] of Integer = (31, 28, 31, 30, 31, 30, 31, 31, 30, 31, 30, 31);
begin
Result := DaysInMonth[AMonth];
if (AMonth = 2) and AnoBiSexto(AYear) then
Inc(Result);
end;




function tfrmprincipal.tiraacento ( str: String ): String;
var
i: Integer;
begin
for i := 1 to Length ( str ) do
case str[i] of
'è': str[i] := 'e';
'ì': str[i] := 'i';
'ù': str[i] := 'u';
'î': str[i] := 'i';
'û': str[i] := 'u';
'á': str[i] := ' ';//
'é': str[i] := '‚';//
'í': str[i] := '¡';//
'ó': str[i] := '¢';//
'ú': str[i] := '£';//
'à': str[i] := '…';//
'ò': str[i] := '•';//
'â': str[i] := 'ƒ';//
'ê': str[i] := 'ˆ';//
'ô': str[i] := '“';//
'ä': str[i] := '„';//
'ë': str[i] := '‰';//
'ï': str[i] := '‹';//
'ö': str[i] := '”';//
'ü': str[i] := '';//
'ã': str[i] := '†';//
'õ': str[i] := 'o';
'ñ': str[i] := '¤';//
'ç': str[i] := '‡';//
'Á': str[i] := 'A';
'É': str[i] := '';//
'Í': str[i] := 'I';
'Ó': str[i] := 'O';
'Ú': str[i] := 'U';
'À': str[i] := 'A';
'È': str[i] := 'E';
'Ì': str[i] := 'I';
'Ò': str[i] := 'O';
'Ù': str[i] := 'U';
'Â': str[i] := '';
'Ê': str[i] := 'E';
'Î': str[i] := 'I';
'Ô': str[i] := 'O';
'Û': str[i] := 'U';
'Ä': str[i] := 'A';
'Ë': str[i] := 'E';
'Ï': str[i] := 'I';
'Ö': str[i] := 'O';
'Ü': str[i] := 'š';//
'Ã': str[i] := 'A';
'Õ': str[i] := 'O';
'Ñ': str[i] := '¥';//
'Ç': str[i] := '€';//
'ª': str[i] := '¦';//
'º': str[i] := '§';//
end;
Result := str;
end;


function tfrmprincipal.lancaproduto(codproduto:string;data:tdatetime;movimento:string;codcliente:string;codsaida:string;codentrada:string;codvendedor:string;qtde:real;valor:real;total:real;notafiscal:string):string;
begin
  result := '';

end;


function tfrmprincipal.CalculaDigEAN13(Cod:String):String;
function Par(Cod:Integer):Boolean;
begin
Result:= Cod Mod 2 = 0 ;
end;
var
  i,
  SomaPar,
  SomaImpar:Integer;
begin
  SomaPar:=0;
  SomaImpar:=0;
  for i:=1 to 12 do
  if Par(i) then
     SomaPar:=SomaPar+StrToInt(Cod[i])
  else
     SomaImpar:=SomaImpar+StrToInt(Cod[i]);

  SomaPar:=SomaPar*3;
  i:=0;
  while i < (SomaPar+SomaImpar) do Inc(i,10);
  Result:=IntToStr(i-(SomaPar+SomaImpar));
end;





function tfrmprincipal.TestaCnpj(xCNPJ: String):Boolean;
Var
  d1,d4,xx,nCount,fator,resto,digito1,digito2 : Integer;
   Check : String;
begin
d1 := 0;
d4 := 0;
xx := 1;
for nCount := 1 to Length( xCNPJ )-2 do
    begin
    if Pos( Copy( xCNPJ, nCount, 1 ), '/-.' ) = 0 then
    begin
    if xx < 5 then
    begin
    fator := 6 - xx;
    end
    else
   begin
   fator := 14 - xx;
   end;
   d1 := d1 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
   if xx < 6 then
    begin
    fator := 7 - xx;
   end
   else
   begin
   fator := 15 - xx;    end;
   d4 := d4 + StrToInt( Copy( xCNPJ, nCount, 1 ) ) * fator;
   xx := xx+1;
   end;
   end;
   resto := (d1 mod 11);
   if resto < 2 then
   begin
   digito1 := 0;
   end
   else
   begin
   digito1 := 11 - resto;
   end;
   d4 := d4 + 2 * digito1;
   resto := (d4 mod 11);
   if resto < 2 then
    begin
    digito2 := 0;
   end
   else
    begin
    digito2 := 11 - resto;
   end;
    Check := IntToStr(Digito1) + IntToStr(Digito2);
   if Check <> copy(xCNPJ,succ(length(xCNPJ)-2),2) then
    begin
    Result := False;
   end
   else
    begin
    Result := True;
   end;
 end;


function tfrmprincipal.Locregistro(tabela : TDataSet; valor:string;campo : string):boolean;
begin
  if tabela.Locate(campo,valor,[loCaseInsensitive]) then
  begin
    result := true;
  end
  else
  begin
    Application.MessageBox('Registro não encontrado!!','Erro',mb_ok+mb_iconwarning);
    result := false;
  end;


end;


function tfrmprincipal.zerarcodigo(codigo:string;qtde:integer):string;
begin
  while length(codigo) < qtde do codigo := '0'+codigo;
  result := codigo;
end;

function TfrmPrincipal.FormataValorProsoft(fValor:Real;fQtde:Integer):string;
var
   troca : string;
begin
  troca := frmPrincipal.zerarcodigo(FRMPRINCIPAL.somenteNumero(formatcurr('0.00', fValor)),fQtde-1);
  result := Copy(troca,1,(fQtde-3))+'.'+Copy(troca,(fQtde-2),2);
end;

Function TFRMPRINCIPAL.GetIP:string;
//--> Declare a Winsock na clausula uses da unit
var
WSAData: TWSAData;
HostEnt: PHostEnt;
Name:string;
begin
WSAStartup(2, WSAData);
SetLength(Name, 255);
Gethostname(PChar(Name), 255);
SetLength(Name, StrLen(PChar(Name)));
HostEnt := gethostbyname(PChar(Name));
with HostEnt^ do
begin
Result := Format('%d.%d.%d.%d',
[Byte(h_addr^[0]),Byte(h_addr^[1]),
Byte(h_addr^[2]),Byte(h_addr^[3])]);
end;
WSACleanup;
END;
//complus
function tfrmprincipal.adic_codifica(tabela:string):string;
begin

  frmmodulo.qradic_mestre.open;
  frmmodulo.qradic_mestre.CommitUpdates;
  frmmodulo.qradic_mestre.Refresh;
  if frmmodulo.qradic_mestre.Locate('codigo',tabela,[loCaseInsensitive]) then
  begin

    if frmmodulo.qradic_mestre.FieldByName('sequencia').asinteger < 1 then
    begin
      result := '000001';
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger := 2;
      frmmodulo.qradic_mestre.Post;
    end
    else
    begin
      result := frmprincipal.zerarcodigo(inttostr(frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger),6);
      frmmodulo.qradic_mestre.Edit;
      frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger := frmmodulo.qradic_mestre.fieldbyname('sequencia').asinteger + 1;
      frmmodulo.qradic_mestre.Post;
    end;
  end
  else
  begin
    Showmessage('Não foi possível concluir com a operação!'+#13+'Erro: Código de sequência não encontrado na tabela de códigos.');
    frmmodulo.conexao_adic.Rollback;
  end;



end;
function tfrmprincipal.codifica(tabela:string):string;
var xcod : integer;
begin
//  transMestre.active := true;
  qrmestre.close;
  qrmestre.sql.clear;
  qrmestre.sql.add('select * from c000000 where codigo = '''+tabela+'''');
  qrmestre.open;
  if qrmestre.recordcount > 0 then
  begin
    xcod := qrmestre.fieldbyname('sequencia').asinteger;
    if xcod < 1 then xcod := 1;
    qrmestre.close;
    qrmestre.sql.clear;
    qrmestre.sql.add('update c000000 set sequencia = sequencia + 1 where codigo = '''+tabela+'''');
    qrmestre.execsql;
  //  transMestre.commit;
    result := frmprincipal.zerarcodigo(inttostr(xcod),6);
  end
  else
  begin
    Showmessage('Não foi possível concluir com a operação!'+#13+'Erro: Código de sequência não encontrado na tabela de códigos.');
  end;
  Application.ProcessMessages;
end;

Function tfrmprincipal.Cript(Action, Src: String): String;
Label Fim;
var KeyLen : Integer;
KeyPos : Integer;
OffSet : Integer;
Dest, Key : String;
SrcPos : Integer;
SrcAsc : Integer;
TmpSrcAsc : Integer;
Range : Integer;
begin
  if (Src = '') Then
  begin
    Result:= '';
    Goto Fim;
  end;
  Key := 'YUQL23KL23DF90WI5E1JAS467NMCXXL6JAOAUWWMCL0AOMM4A4VZYW9KHJUI2347EJHJKDF3424SKL K3LAKDJSL9RTIKJ';
//  Key := 'YUQL%%$#%3DF#0WI5E$JA$46#NM@XXL6JAOAUW%$#@0AOMM4$4VZYW&&HJUI23@7E%#@!DF34#4SKL K3LA@DJSL9RTIKJ';
  Dest := '';
  KeyLen := Length(Key);
  KeyPos := 0;
  SrcPos := 0;
  SrcAsc := 0;
  Range := 256;
  if (Action = UpperCase('C')) then
  begin
    Randomize;
    OffSet := Random(Range);
    Dest := Format('%1.2x',[OffSet]);
    for SrcPos := 1 to Length(Src) do
    begin
      Application.ProcessMessages;
      SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
      if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
      SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      Dest := Dest + Format('%1.2x',[SrcAsc]);
      OffSet := SrcAsc;
    end;
  end
  Else
  if (Action = UpperCase('D')) then
  begin
    OffSet := StrToInt('$'+ copy(Src,1,2));
    SrcPos := 3;
  repeat
  SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
  if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
  TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
  if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
  else TmpSrcAsc := TmpSrcAsc - OffSet;
  Dest := Dest + Chr(TmpSrcAsc);
  OffSet := SrcAsc;
  SrcPos := SrcPos + 2;
  until (SrcPos >= Length(Src));
  end;
  Result:= Dest;
  Fim:
END;

function tfrmprincipal.autentica(funcao:string;nivel:integer) : boolean;
begin
  frmsenha := tfrmsenha.create(self);
  frmsenha.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha.showmodal;
  result := autenticado;
end;

function tfrmprincipal.autentica_caixa(funcao:string;nivel:integer) : boolean;
begin
  frmsenha_caixa := tfrmsenha_caixa.create(self);
  frmsenha_caixa.lfuncao.caption := inttostr(nivel)+' - '+funcao;
  frmsenha_caixa.showmodal;

  result := autenticado;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  d : integer;
  pt:tpoint;
  serial : string;
  x, data_fim, data_inicio : string;
  Registro: TRegistry;
  lSucesso: Boolean;
  a : real;
  texto : string;

// variaveis da dll de registro
   reg_expirado, reg_instalacao, reg_data, reg_termino : string;

   slinha : string;
   f : textfile;


  Dt_Final,Dt_inventario : TDateTime;
  AnoF, MesF , DiaF : Word;
  Ano, Mes , Dia : Word;


  vData_Inventario, Data: TDateTime;
  vInventario_ano : integer;
//  ano, mes, dia : word;


begin

  ptopo2.panels[3].Text := '---';


  if (frmmodulo.Conexao.HostName <> '') and
     (ansiuppercase(frmmodulo.Conexao.HostName) <> 'LOCALHOST') and
     (ansiuppercase(frmmodulo.Conexao.HostName) <> ansiuppercase(NomeComputador)) and
     (frmmodulo.conexao.HostName <> GetIP) then

      // sistema eh uma estacao
  begin


       FHoje       := Trunc(Date);

       if le_dll_Registro_servidor then
       begin

         if (strtodate(trim(res_termino))+10) < FHoje then // expirou a data
         begin
           application.messagebox('Sistema com data de validade expirada!','Atenção!',mb_ok+mb_iconinformation);

           ativa_sistema := false;
           frmativacao := tfrmativacao.create(self);
           frmativacao.showmodal;

           if not ativa_sistema then
           begin
             Application.Terminate;
           end
           else
           begin
           Cria_DLL_Registro_servidor('false',res_instalacao,datetostr(FHoje),datetostr(FHoje+qtde_dias_ativacao),res_empresa,res_rsocial,res_cnpj);
             frmmodulo.qremitente.Open;
             frmmodulo.qremitente.edit;
             frmmodulo.qremitente.fieldbyname('comentarios').asstring := cript('C','1'+datetostr(FHoje+qtde_dias_ativacao));
             frmmodulo.qremitente.post;
             frmmodulo.Conexao.Commit;
           end;
         end
         else
         begin

           IF strtodate(trim(res_data)) > fhoje then
           begin
             // aparecer tela de mudanca de data e bloquear o sistema
             application.messagebox('Foi alterado a data do computador! Favor providenciar o acerto! Este aplicativo será encerrado!','Atenção',mb_ok+mb_iconerror);
             application.Terminate;
           end
           else
           begin
             a := (strtodate(res_termino)+10)-fHoje;
             if a <= 10 then
             begin
               frmaviso_expirado := tfrmaviso_expirado.create(self);
               if a > 1 then texto := floattostr(a)+' dias' else texto := floattostr(a) + ' dia';
               frmaviso_expirado.Label3.caption := texto;
               frmaviso_expirado.showmodal;

                if ativa_sistema then
                begin
                  frmmodulo.qremitente.Open;
                  frmmodulo.qremitente.edit;
                  Cria_DLL_Registro_servidor('true',datetostr(FHoje),datetostr(FHoje),datetostr(FHoje+qtde_dias_ativacao),res_empresa,res_rsocial,res_cnpj);
                  frmmodulo.qremitente.fieldbyname('comentarios').asstring := cript('C','1'+datetostr(FHoje+qtde_dias_ativacao));
                  frmmodulo.qremitente.post;
                  frmmodulo.Conexao.Commit;
                end
                else
                begin
                  Cria_DLL_Registro_servidor(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj)    // Atualiza a data da última execução no registro
                end;

             end
             ELSE
             BEGIN
               Cria_DLL_Registro_servidor(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj)    // Atualiza a data da última execução no registro
             END;
           end;
         end;
       end
       else
       begin
         application.messagebox('Não foi possível acessar o registro do Sistema!','Erro',mb_ok+mb_iconerror);
         application.Terminate;
       end;


       caption := 'DataSAC | Estação                                         ';


  end
  else
  begin


     WinExec('cmd /c net share DLL=C:\datasac\SERVER\DLL',ERROR_BAD_FORMAT);
    bativacao.Visible := true;
    Registro     := TRegistry.Create;
    FHoje        := Trunc(Date);
    DATA_TERMINO := FHOJE;


    if FileExists('\datasac\server\dll\ECFCom.dll') then
    begin





           // verificar dados na dll.
           if le_dll_registro then
           begin


                     if (strtodate(trim(res_termino))+10) < FHoje then // expirou a data
                     begin
                       application.messagebox('Sistema com data de validade expirada!','Atenção!',mb_ok+mb_iconinformation);

                       ativa_sistema := false;
                       frmativacao := tfrmativacao.create(self);
                       frmativacao.showmodal;
                       if not ativa_sistema then
                       begin
                         Application.Terminate;
                       end
                       else
                       begin
                         Cria_DLL_Registro('false',res_instalacao,datetostr(FHoje),datetostr(FHoje+qtde_dias_ativacao),res_empresa,res_rsocial,res_cnpj);
                         frmmodulo.qremitente.Open;
                         frmmodulo.qremitente.edit;
                         frmmodulo.qremitente.fieldbyname('comentarios').asstring := cript('C','1'+datetostr(FHoje+qtde_dias_ativacao));
                         frmmodulo.qremitente.post;
                         frmmodulo.Conexao.Commit;
                       end;
                     end
                     else
                     begin
                       IF strtodate(trim(res_data)) > fhoje then
                       begin
                         // aparecer tela de mudanca de data e bloquear o sistema
                         application.messagebox('Foi alterado a data do computador! Favor providenciar o acerto! Este aplicativo será encerrado!','Atenção',mb_ok+mb_iconerror);
                         application.Terminate;
                       end
                       else
                       begin
                         a := (strtodate(res_termino)+10)-fHoje;
                         if a <= 10 then
                         begin
                           frmaviso_expirado := tfrmaviso_expirado.create(self);
                           if a > 1 then texto := floattostr(a)+' dias' else texto := floattostr(a) + ' dia';
                           frmaviso_expirado.Label3.caption := texto;
                           frmaviso_expirado.showmodal;

                            if ativa_sistema then
                            begin
                              frmmodulo.qremitente.Open;
                              frmmodulo.qremitente.edit;
                              Cria_DLL_Registro('true',datetostr(FHoje),datetostr(FHoje),datetostr(FHoje+qtde_dias_ativacao),res_empresa,res_rsocial,res_cnpj);
                              frmmodulo.qremitente.fieldbyname('comentarios').asstring := cript('C','1'+datetostr(FHoje+qtde_dias_ativacao));
                              frmmodulo.qremitente.post;
                              frmmodulo.Conexao.Commit;
                            end
                            else
                            begin
                              Cria_DLL_Registro(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj)    // Atualiza a data da última execução no registro
                            end;

                         end
                         ELSE
                         BEGIN
                           Cria_DLL_Registro(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj)    // Atualiza a data da última execução no registro
                         END;
                       end;
                     end;



           end
           else
           begin
             if FileExists('\datasac\server\dll\ECFCom.dll') then
             begin
                if  ( res_empresa <> frmmodulo.qremitenteCODIGO.AsString ) or ( res_rsocial <> copy(frmmodulo.qremitenteNOME.AsString,1,40) ) or  ( res_cnpj <> frmmodulo.qremitenteCNPJ.AsString ) then
                  begin
                    DeleteFile('\datasac\server\dll\ECFCom.dll');
                  end
                else
                  begin
                    application.messagebox('Houve um erro ao acessar o registro do sistema! Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
                  end;
               application.terminate;
             end
             else
             begin

                if   ( res_empresa = frmmodulo.qremitenteCODIGO.AsString ) and ( res_rsocial = copy(frmmodulo.qremitenteNOME.AsString,1,40) )
                and  ( res_cnpj = frmmodulo.qremitenteCNPJ.AsString ) then
                  begin
                    Cria_DLL_Registro(res_expirado,res_instalacao,datetostr(FHoje),res_termino,res_empresa,res_rsocial,res_cnpj);
                    application.messagebox('Segurança atualizada! Favor reiniciar o sistema!','Aviso',mb_ok+mb_iconwarning);
                    application.terminate;
                  end
                else
                  begin
                    application.messagebox('Houve um erro ao acessar o registro do sistema! Favor contactar o suporte!','Erro',mb_ok+mb_iconerror);
                    application.terminate;
                  end;
             end;
           end;

    end
    else
    begin
        ativa_sistema := false;
        frmativacao2 := tfrmativacao2.create(self);
        frmativacao2.showmodal;

        if not ativa_sistema then
          Application.Terminate
        else
        begin

          res_empresa := frmmodulo.qremitenteCODIGO.AsString;
          res_rsocial  := copy(frmmodulo.qremitenteNOME.AsString,1,40);
          res_cnpj   := frmmodulo.qremitenteCNPJ.AsString;

          frmmodulo.qremitente.Open;
          frmmodulo.qremitente.edit;

          if qtde_dias_ativacao = 0 then
          begin
            Cria_DLL_Registro('true',datetostr(FHoje),datetostr(FHoje),'31/12/2050',res_empresa,res_rsocial,res_cnpj);
            frmmodulo.qremitente.fieldbyname('comentarios').asstring := cript('C','1'+'31/12/2050');
          end
          else
          begin
            Cria_DLL_Registro('true',datetostr(FHoje),datetostr(FHoje),datetostr(FHoje+qtde_dias_ativacao),res_empresa,res_rsocial,res_cnpj);
            frmmodulo.qremitente.fieldbyname('comentarios').asstring := cript('C','1'+datetostr(FHoje+qtde_dias_ativacao));
          end;
          frmmodulo.qremitente.post;
          frmmodulo.Conexao.Commit;
        end;

    end;
  end; // se o sistema eh uma estacao



   if USA_TEF then
   begin
        if FileExists(sTEFKoneKPath+'gp.tmp') then
        begin
          begin
           assignfile(f,sTEFKoneKPath+'gp.tmp');
           reset(f);
           readln(f,slinha);
           closefile(f);
          end;
        end;

        if slinha = 'TECBAN' then
        begin
          itefTecban := 1 ;
          sTEFPath := 'C:\TEF_DISC\'
        end
        else
        begin
          sTEFPath := 'C:\TEF_DIAL\';
          itefTecban := 0;
        end;

      TEFVerificaGerenciadorAtivo;
      TEFVerificaArquivosPendentes;
      TEFVerificaOperacaoPendente;
   end;

    try
      Registro    := TRegistry.Create;
      Registro.RootKey    := HKEY_CURRENT_USER;
      if not Registro.OpenKey('datasac',false) then
      begin
        Registro.CreateKey('datasac');
        Registro.OpenKey('datasac',true);
        registro.writestring('Terminal',inputbox('Config. Terminal.','Nº Terminal (3 Digitos)','000'));
      end
      else
      begin
        if Registro.ReadString('Terminal') = '' then
        begin
          registro.writestring('Terminal',inputbox('Config. Terminal','Nº Terminal (3 Digitos)','000'));
        end;
      end;


    finally
       registro_terminal := Registro.ReadString('Terminal');
       Registro.free;
    end;


  FRMMODULO.QRCONFIG.OPEN;
  case FRMMODULO.QRCONFIG.FIELDBYNAME('RAMO_ATIVIDADE').ASINTEGER of
    1:BEGIN // FULL
        PSTATUS.Panels[0].Text := 'FULL';
      END;
    2:BEGIN // SUPERMERCADO
        PSTATUS.Panels[0].Text := 'SUPER';
      END;
    3:BEGIN // PECAS
        PSTATUS.Panels[0].Text := 'PEÇAS';
      END;
    4:BEGIN // FARMACIA
       PSTATUS.Panels[0].Text := 'FARMACIA';
       bmarca.Caption :=  ' Laboratórios';
       BSERVICO.Visible := FALSE;
       BOS.Visible := FALSE;
       BCONHECIMENTO.Visible := FALSE;
       BVEICULOC.Visible := FALSE;
       BBALANCA.Visible := FALSE;
       BROS.VISIBLE := FALSE;
      end;
  end;
  // colocar o cursor do mouse no canto da tela para nao interferir nos botoes
{  getcursorpos(pt);
  pt.x := Width;
  pt.y := Height;
  SetCursorPos(pt.x,pt.y);
  if pt.x>=screen.width-1 then setcursorpos(0,pt.y);
  if pt.y>=screen.height-1 then setcursorpos(pt.x,0); }
  //

 if not autentica('Entrada no sistema',1) then
 begin
  application.Terminate;
 end
 else
 begin

   frmmodulo.qrconfig.open;
   nivel_usuario := frmmodulo.qrusuario.fieldbyname('nivel').asinteger;
   codigo_usuario := frmmodulo.qrusuario.fieldbyname('codigo').asstring;

   //   frmmodulo.qrconfig.open;

      frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
      frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;

      frmprincipal.pstatus.Panels[5].text := NomeComputador;

      frmprincipal.PopupMenu := Pop_principal;
      frmprincipal.Menu := nil;
      frmprincipal.pstatus.Panels[7].text := GETIP;

  ptopo2.Panels[1].text := emitente_nome;

  Data := DataDeCriacao('C:\datasac\server\DataSAC.exe');
  ptopo2.Panels[5].Text := ExeInfo1.fileVersion;
  ptopo2.Panels[6].Text := 'Atualizado Em: '+DATETIMETOSTR(DATA);

  frmmodulo.qremitente.Open;
  x := cript('D',frmmodulo.qremitente.fieldbyname('comentarios').asstring);

  if res_termino <> copy(x,2,10) then
    ptopo2.panels[3].Text := res_termino
  else
    ptopo2.panels[3].Text :=copy(x,2,10);

  frmmodulo.qrcaixa_operador.Open;
  pstatus.Panels[12].Text := 'Data do Sistema : '+frmmodulo.qrcaixa_operador.FIELDBYNAME('DATA').AsString;


  if frmmodulo.Conexao.hostname = '' then
    pstatus.Panels[13].Text := 'Servidor : LOCALHOST'
  else
    pstatus.Panels[13].Text := 'Servidor : '+frmmodulo.Conexao.hostname;

  if frmmodulo.qrconfig.fieldbyname('VISUALIZA_MENSAGEM').AsInteger = 1 then
  begin
  end;

  frmmodulo.qrfilial.close;
  frmmodulo.qrfilial.sql.clear;
  frmmodulo.qrfilial.sql.add('select * from c000004 order by filial');
  frmmodulo.qrfilial.open;

  vfil_codigo  := frmmodulo.qrFilialCODIGO.AsString;
  vfil_nome    := frmmodulo.qrFilialFILIAL.AsString;
  vfil_cnpj    := frmmodulo.qrFilialCNPJ.AsString;
  vfil_ie      := frmmodulo.qrFilialIE.AsString;
  vfil_cipi    := frmmodulo.qrFilialCONTRIBUINTE_IPI.AsString;
  vfil_cst     := frmmodulo.qrFilialSUBSTITUTO_TRIBUTARIO.AsString;
  vfil_simples := frmmodulo.qrFilialOPTANTE_SIMPLES.AsString;
  vfil_ssimples:= frmmodulo.qrFilialOPTANTE_SUPER_SIMPLES.AsString;
  vfil_estadual:= frmmodulo.qrFilialEMPRESA_ESTADUAL.AsString;

  if nivel_usuario = 4 then
  begin
   if mostra_principal = '1' then
   begin
    pnormal.visible := false;
    psuper.visible := true;

    qrcx.close;
    qrcx.sql.clear;
    qrcx.sql.add('select * from c000045 where codigo = ''000099''');
    qrcx.open;
    if qrcx.RecordCount > 0 then
    begin
      lcaixa.Caption := qrcx.fieldbyname('data').asstring;
      if qrcx.fieldbyname('situacao').asinteger = 1 then
         lsit_caixa.caption := 'ABERTO' else
         lsit_caixa.caption := 'FECHADO';
    end
    else
    begin
      Lcaixa.caption := '---';
      lsit_caixa.Caption := '---'
    end;

  if (qrcx.fieldbyname('data').AsDateTime <> Date) and (qrcx.fieldbyname('situacao').asinteger = 1) then
    begin
      if application.messagebox(PChar('A Data do Caixa está diferente da atual!' +
         #13 + 'Deseja fechar o caixa do dia ' + qrcx.fieldbyname('data').asstring + '?'),
         'Atenção', MB_IconInformation + MB_YESNO) = idYes then
      begin
         bcaixa.SetFocus;
         bcaixa.Click;
      end;
   end;

//  frmmodulo.qrconfig.open;
  pstatus.Panels[11].Text := frmmodulo.qrconfig.fieldbyname('ultimo_backup').AsString;
  d := TRUNC((date-frmmodulo.qrconfig.fieldbyname('ultimo_backup').asdatetime));
  FRMMODULO.QRCONFIG.CLOSE;
  if pstatus.Panels[13].Text = 'Servidor : LOCALHOST' then
  begin
    if  d > 2 then
      begin
         label8.caption := 'Há '+inttostr(d)+' dias não é feito';
         alerta_copia.Popup;
      end;
  end;

    qrniver.close;
    qrniver.sql.clear;
    qrniver.sql.add('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''+copy(datetostr(date),1,5)+'/%'' order by nome');
    qrniver.open;

    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
    qrpagar.sql.add('where pg.codfornecedor = forn.codigo and situacao = 1 and');
    qrpagar.sql.add('data_vencimento = :datax order by data_vencimento ');
    qrpagar.params.ParamByName('datax').asdatetime := date;
    qrpagar.open;

    query.close;
    query.sql.clear;
    query.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida,');
    query.sql.add('(select sum(valor) valor from c000046 where situacao = 1 and data_vencimento = :datav), ');
    query.sql.add('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
    query.sql.add('(select sum(total) valor_2 from c000048 where data = :datax),');
    query.sql.add('(select sum(total) valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
    query.sql.add('from c000044 where data = :datax');
    query.params.ParamByName('datax').asdatetime := qrcx.fieldbyname('data').asdatetime;
    query.params.ParamByName('datav').asdatetime := date;
    query.open;

    ltcaixa.caption   := formatfloat('###,###,##0.00',query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat);
    ltpagar.caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor').asfloat);
    ltreceber.caption := formatfloat('###,###,##0.00',query.fieldbyname('valor_1').asfloat);
    ltvenda.Caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor_2').asfloat);
    ltos.Caption      := formatfloat('###,###,##0.00',query.fieldbyname('valor_3').asfloat);
    ltfinal.caption   := formatfloat('###,###,##0.00',(query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat)+query.fieldbyname('valor_1').asfloat-query.fieldbyname('valor').asfloat);
   end
   else
   begin
    pnormal.visible := true;
    psuper.visible := false;
   end;
{  // NÃO SEI PQ ESTÁ REPETIDO ESSE PEDAÇO \\
  end
  else
  begin
    pnormal.visible := true;
    psuper.visible := false;
  end;
}
  frmmodulo.qrconfig.open;
  if frmmodulo.qrconfigINVENTARIO_AUTOMATICO.AsInteger = 1 then
    begin

      /// INVENTARIO INICIO

      vData_Inventario := strtodate('31/12/'+zerarcodigo(inttostr(strtoint(copy(datetostr(date),7,4))-1),4));

      decodedate(vData_Inventario,ano,mes,dia);

      vInventario_ano := strtoint(zerarcodigo(inttostr(strtoint(copy(datetostr(date),7,4))-1),4));

      frmmodulo.qrinventario.close;
      frmmodulo.qrinventario.SQL.clear;
      frmmodulo.qrinventario.SQL.add('select * from INVENTARIO where ano = :vinventario_ano');
      frmmodulo.qrinventario.Params.ParamByName('vInventario_ano').asinteger := vInventario_ano;
      frmmodulo.qrinventario.Open;
      if frmmodulo.qrinventario.RecordCount = 0 then
        begin
          if Application.messagebox(pchar('O Inventário de '+ inttostr(vInventario_ano) + ' Ainda Não foi Gerado.' + #13 +
                                          '        Deseja Criar o Inventário Agora?'),'INVENTÁRIO',mb_yesno+mb_iconquestion) = idYes then
            begin
              qrproduto.close;
              qrproduto.sql.clear;
              qrproduto.sql.add('select prod.*, est.*');
              qrproduto.sql.add('from c000025 prod, c000100 est');
              qrproduto.sql.add('where prod.codigo = est.codproduto');
              qrproduto.sql.add('and situacao = 0');
              qrproduto.sql.add('order by prod.produto');
              qrproduto.open;
              qrproduto.first;
              if qrproduto.RecordCount > 0 then
                begin
                  frmmensagem_inventario := tfrmmensagem_inventario.create(self);
                  frmmensagem_inventario.bar.TotalParts := qrproduto.recordcount;
                  frmmensagem_inventario.bar.PartsComplete := 0;
                  while not qrproduto.eof do begin
                    frmmensagem_inventario.rzpanel1.caption :=  '         '+qrproduto.fieldbyname('codigo').asstring+' '+ copy(qrproduto.fieldbyname('produto').asstring,1,30);
                    frmmensagem_inventario.show;

                    application.processmessages;
                    qrinventario.Close;
                    qrinventario.sql.clear;
                    qrinventario.sql.add('insert into inventario');
                    qrinventario.sql.add('(data,data_posterior,ano,mes,tipo,codproduto,produto,unidade,cst,aliquota,estoque,custo,venda,total)');
                    qrinventario.sql.add('values');
                    qrinventario.sql.add('(:datax,:data_posteriorx,:anox,:mesx,:tipox,:codprodutox,:produtox,:unidadex,:cstx,:aliquotax,:estoquex,:custox,:vendax,:totalx)');
                    qrinventario.params.ParamByName('datax').asdatetime := vData_Inventario;
                    qrinventario.params.ParamByName('data_posteriorx').asdatetime := vData_Inventario+1;
                    qrinventario.params.ParamByName('anox').asinteger       := vInventario_ano;
                    qrinventario.params.ParamByName('mesx').asinteger       := trunc(mes);
                    qrinventario.params.ParamByName('tipox').asstring       := qrproduto.fieldbyname('tipo').asstring;
                    qrinventario.params.ParamByName('codprodutox').asstring := qrproduto.fieldbyname('codigo').asstring;
                    qrinventario.params.ParamByName('produtox').asstring    := qrproduto.fieldbyname('produto').asstring;
                    qrinventario.params.ParamByName('unidadex').asstring    := qrproduto.fieldbyname('unidade').asstring;
                    qrinventario.params.ParamByName('cstx').asstring        := qrproduto.fieldbyname('cst').asstring;
                    qrinventario.params.ParamByName('aliquotax').asfloat    := qrproduto.fieldbyname('aliquota').asfloat;
                    qrinventario.params.ParamByName('custox').asfloat       := qrproduto.fieldbyname('precocusto').asfloat;
                    qrinventario.params.ParamByName('estoquex').asfloat     := qrproduto.fieldbyname('estoque_atual').asfloat;
                    qrinventario.params.ParamByName('vendax').asfloat       := qrproduto.fieldbyname('precovenda').asfloat;
                    qrinventario.params.ParamByName('totalx').asfloat       := qrproduto.fieldbyname('precocusto').asfloat *
                                                                               qrproduto.fieldbyname('estoque_atual').asfloat;
                    qrinventario.execsql;

                    frmmensagem_inventario.bar.PartsComplete := frmmensagem_inventario.bar.PartsComplete + 1;
                    application.ProcessMessages;
                    qrproduto.next;
                  end;
                  frmmodulo.Conexao.Commit;
                  frmmensagem_inventario.destroy;

                  Application.messagebox('Inventário Gerado Com sucesso!','Inventário!',mb_ok+MB_ICONQUESTION);
                end;
            end;
        end;

        /////////////////////////// FINAL INVENTARIO
    end;

  caption := caption + '    Terminal: '+registro_terminal;


  //  Esse comando abaixo dá erro pra abrir o paf junto com o DataSAC server
  ecf_abre_porta(ECF_MODELO);

  BARQUIVO.SetFOCUS;

  end;

end;

end;

procedure TfrmPrincipal.barquivoEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    TRUE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
  PFINANCEIRO.VISIBLE := FALSE;
  PRELATORIO.Visible :=  FALSE;
  putilitario.Visible := false;
end;

procedure TfrmPrincipal.bestoqueEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    TRUE;
  PMOVIMENTO.VISIBLE :=  FALSE;
  PFINANCEIRO.VISIBLE := FALSE;
  PRELATORIO.Visible :=  FALSE;
  putilitario.Visible := false;

end;

procedure TfrmPrincipal.BMOVIMENTOEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  TRUE;
  PFINANCEIRO.VISIBLE := FALSE;
  PRELATORIO.Visible :=  FALSE;
  putilitario.Visible := false;

end;

procedure TfrmPrincipal.BFINANCEIROEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
  PFINANCEIRO.VISIBLE := TRUE;
  PRELATORIO.Visible :=  FALSE;
  putilitario.Visible := false;

end;

procedure TfrmPrincipal.BRELATORIOEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
  PFINANCEIRO.VISIBLE := FALSE;
  PRELATORIO.Visible :=  TRUE;
  putilitario.Visible := false;

end;

procedure TfrmPrincipal.BUTILITARIOEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
  PFINANCEIRO.VISIBLE := FALSE;
  PRELATORIO.Visible :=  FALSE;
  putilitario.Visible := TRUE;

end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
var txt : textfile;
entrada, nomecfg : string;
Hand : THandle;
begin

  if busca_preco = '1' then
  begin
    Hand := FindWindow('TApplication', 'Busca Preco');
    if Hand = 0 then
    begin
      frmprincipal.ExecutePrograma('\DataSAC\server\buscapreco\bp.exe','');
    end;
  end;

  Hand := FindWindow('TApplication', 'eBackup');
  if Hand = 0 then
    frmprincipal.ExecutePrograma('\DataSAC\server\eBackup.exe','');

  Hand := FindWindow('TApplication', 'eFTP');
  if Hand = 0 then
    frmprincipal.ExecutePrograma('\DataSAC\server\eFTP.exe','');

  Hand := FindWindow('TApplication', 'DataServ');
  if Hand = 0 then
    frmprincipal.ExecutePrograma('\DataSAC\server\DataServ.exe','');

 // Fecha o Programa eFTP responsável por verificação de nova versão do sistema
  frmprincipal.FechePrograma('eFTP');

 // Fecha o Programa eBackup responsável por fazer o backup do Sistema
//  frmprincipal.FechePrograma('eBackup');

  if (Screen.Width = 1024) and (screen.Height = 768) then
  begin
    WIDTH := 1024;
    Height := 738;
  end;

  PARQUIVO.Top := 76;
  parquivo.left := 78;
  PESTOQUE.TOP :=    76;
  PMOVIMENTO.Top :=  76;
  PFINANCEIRO.TOP := 76;
  PRELATORIO.Top :=  76;
  PUTILITARIO.Top := 76;

  PESTOQUE.LEFT :=    182;
  PMOVIMENTO.LEFT :=  285;
  PFINANCEIRO.LEFT := 389;
  PRELATORIO.LEFT :=  494;
  PUTILITARIO.LEFT := 597;


  try
  (*  VERIFICAR SE O COMPUTADOR EH UMA ATUALIZACAO*)
  if not DirectoryExists('c:\DataSAC\server\atualizacao') then
    if application.messagebox('Caminho do arquivo para Atualização não encontrado, Deseja Cria-lo?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
      begin
        ForceDirectories('c:\DataSAC\server\atualizacao');
        Application.messagebox('Caminho Criado com Sucesso!','Aviso!',mb_ok+MB_ICONQUESTION);
      end;
  nomecfg:=extractfilepath(application.exename)+'\cfg\config.ini';
  assignfile(txt,nomecfg);
  reset(txt);
  while not eof(txt) do

  begin
    readln(txt,entrada);
    if copy(entrada,1,7) = '999-002' then conexao_sistema := trim(copy(entrada,9,50));
  end;

  CloseFile(txt);

  NovaVersao := False;

  if (conexao_sistema <> '') and
     (ansiuppercase(conexao_sistema) <> 'LOCALHOST') and
     (ansiuppercase(conexao_sistema) <> ansiuppercase(NomeComputador)) and
     (conexao_sistema <> GetIP) then
  begin
      frmcopia_arquivo := tfrmcopia_arquivo.create(self);
      frmcopia_arquivo.show;
  end;

  ExeAtualiza := ExtractFilePath(ParamStr(0))+'atualizacao\DataSAC.exe';
  ExeAtual    := ExtractFilePath(ParamStr(0))+'DataSAC.exe';

  if (conexao_sistema <> '') and
     (ansiuppercase(conexao_sistema) <> 'LOCALHOST') and
     (ansiuppercase(conexao_sistema) <> ansiuppercase(NomeComputador)) and
     (conexao_sistema <> GetIP) then
    frmcopia_arquivo.Destroy;

  if FileExists(ExeAtualiza) then
    begin
      if VersaoExe(ExeAtual) <> VersaoExe(ExeAtualiza) then
        begin
          if Application.messagebox(pchar('Foi Encontrada uma nova versão do DataSAC.' + #13 +
                                          'Deseja Atualizar Agora?                  '),'ATUALIZAÇÃO',mb_yesno+mb_iconquestion) = idYes then
            begin
              NovaVersao := True;
              Application.Terminate;
            end
          else
            NovaVersao := false;
        end;
    end;

  except
  end;

end;

procedure TfrmPrincipal.barquivoClick(Sender: TObject);
begin
  bfiliais.Setfocus;
end;

procedure TfrmPrincipal.bfiliaisKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then barquivo.SetFocus;
end;

procedure TfrmPrincipal.bclienteKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then barquivo.SetFocus;
end;

procedure TfrmPrincipal.bestoqueClick(Sender: TObject);
begin
  BPRODUTO.SETFOCUS;
end;

procedure TfrmPrincipal.BMOVIMENTOClick(Sender: TObject);
begin
BVENDA.SetFocus;  
end;

procedure TfrmPrincipal.BFINANCEIROClick(Sender: TObject);
begin
  BCAIXA.SetFocus;
end;

procedure TfrmPrincipal.BRELATORIOClick(Sender: TObject);
begin
  brcliente.SetFOCUS;
end;

procedure TfrmPrincipal.BUTILITARIOClick(Sender: TObject);
begin
  BCOPIA.SETFOCUS;
end;

procedure TfrmPrincipal.bprodutoKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN BESTOQUE.SetFOCUS;

end;

procedure TfrmPrincipal.BCAIXAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN BFINANCEIRO.SetFOCUS;
end;

procedure TfrmPrincipal.BCOPIAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN BUTILITARIO.SETFOCUS;
end;

procedure TfrmPrincipal.BCOPIAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'05.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  BCOPIA.SetFocus;
  frmbackup := tfrmbackup.create(self);
  frmbackup.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRESTOREKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #27 THEN BUTILITARIO.SETFOCUS;
  if key = #13 then TVrDemoButton(sender).OnClick(frmprincipal);

end;

procedure TfrmPrincipal.BRESTOREClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'05.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  TVrDemoButton(SENDER).SetFocus;
  frmrestore := tfrmrestore.create(self);
  frmrestore.showmodal;
  TAdvGlowButton(sender).setfocus;

end;

procedure TfrmPrincipal.BVENDAClick(Sender: TObject);
VAR F : TEXTFILE;
slinha : string;
begin
  If frmprincipal.acesso(codigo_usuario,'03.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;


   if USA_TEF then
   begin
        if FileExists(sTEFKoneKPath+'gp.tmp') then
        begin
          begin
           assignfile(f,sTEFKoneKPath+'gp.tmp');
           reset(f);
           readln(f,slinha);
           closefile(f);
          end;
        end;

        if slinha = 'TECBAN' then
        begin
          itefTecban := 1 ;
          sTEFPath := 'C:\TEF_DISC\'
        end
        else
        begin
          sTEFPath := 'C:\TEF_DIAL\';
          itefTecban := 0;
        end;



      TEFVerificaGerenciadorAtivo;
      TEFVerificaArquivosPendentes;
      TEFVerificaOperacaoPendente;
   end;


  FRMMODULO.qrconfig.OPEN;
  IF frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 THEN
    BEGIN
      if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
            begin
              FRMVENDA_FARMA := TFRMVENDA_FARMA.CREATE(SELF);
              FRMVENDA_FARMA.SHOWMODAL;
            END
          ELSE
            BEGIN
              APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
            END;
        end
      else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
        end;
    END
  ELSE
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
            begin
              frmvenda_inicio := tfrmvenda_inicio.create(self);
              frmvenda_inicio.showmodal;
              TAdvGlowButton(sender).setfocus;
            END
          ELSE
            BEGIN
              APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
            END;
        end
      else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
        end;
    end;

end;

procedure TfrmPrincipal.BCONSULTAClick(Sender: TObject);
begin

  If frmprincipal.acesso(codigo_usuario,'02.08') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMMODULO.QRCONFIG.OPEN;
  IF (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA')  then
  begin
    frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
    frmproduto_consultapreco.showmodal;
  end
  else
  begin
    IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'LIGHT' then
    begin
      frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
      frmproduto_consultapreco.showmodal;
    end
    else
    begin
      IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
      begin
        frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
        frmloc_produto_AUTO.showmodal;
      end
    end;
  end;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.bprodutoClick(Sender: TObject);
begin

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
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BCAIXAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;



  if frmPrincipal.autentica_caixa('Acesso ao Caixa',0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
    TAdvGlowButton(sender).setfocus;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.BPAGARClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMCONTASPAGAR := TFRMCONTASPAGAR.CREATE(SELF);
  FRMCONTASPAGAR.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRECEBERClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.07') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

        frmcontasreceber := tfrmcontasreceber.create(self);
        frmcontasreceber.showmodal;

  TAdvGlowButton(sender).setfocus;

end;

procedure TfrmPrincipal.becfClick(Sender: TObject);
begin
 //
end;

procedure TfrmPrincipal.BORCAMENTOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.03') = 'NAO' then
    begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  try
   frmorcamento := tfrmorcamento.create(self);
   frmorcamento.showmodal;
  finally
   freeandnil(frmorcamento);
  end;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    if ecf_modelo = 'URANO' then
    begin
       ECF.FinalizaDLL;
    end;
    if ecf_modelo = 'SWEDA' then
    begin
      ecf_fechar_ecf('SWEDA');
    end;

  if application.messagebox('Confirma o encerramento do Sistema?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
    begin
     frmprincipal.FechePrograma('eBackup');
     frmprincipal.FechePrograma('s7servidor');
     frmmodulo.Conexao.Connected := false;
     Application.Terminate;
     action := cafree;
    end
   else
     abort;
end;

procedure TfrmPrincipal.BFORNECEDORClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.03') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMFORNECEDOR := TFRMFORNECEDOR.CREATE(SELF);
  FRMFORNECEDOR.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BTRANSPClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.04') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmtransportador := tfrmtransportador.create(self);
  frmtransportador.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BFUNCIClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMFUNCIONARIO := TFRMFUNCIONARIO.CREATE(SELF);
  FRMFUNCIONARIO.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BSERVICOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.13') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmservico := tfrmservico.create(self);
  frmservico.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BBANCOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.06') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmbanco := tfrmbanco.create(self);
  frmbanco.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BGRUPOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmgrupo := tfrmgrupo.create(self);
  frmgrupo.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BMARCAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.03') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMMARCA := TFRMMARCA.CREATE(SELF);
  FRMMARCA.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BAGENDAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'05.03') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmagenda := tfrmagenda.create(self);
  frmagenda.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BENTRADAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmcompra_menu := tfrmcompra_menu.create(self);
  frmcompra_menu.showmodal;
    TAdvGlowButton(sender).setfocus;
end;
                                                                                                     
procedure TfrmPrincipal.BCALCULADORAClick(Sender: TObject);
begin
   frmcalc := tfrmcalc.create(self);
   frmcalc.showmodal;
     TAdvGlowButton(sender).setfocus;

end;

procedure TfrmPrincipal.VrDemoButton49Click(Sender: TObject);
begin
  frmcalendario := tfrmcalendario.create(self);
  frmcalendario.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BPLANOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.09') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMPLANO := TFRMPLANO.CREATE(SELF);
  FRMPLANO.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BSAIDAKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #27 THEN BESTOQUE.SetFOCUS;
  if key = #13 then TVrDemoButton(sender).OnClick(frmprincipal);

end;

procedure TfrmPrincipal.BCHEQUEClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.03') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FrmCHEQUE_MENU := tfrmCHEQUE_MENU.create(self);
  frmCHEQUE_MENU.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BCONTAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.04') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;


  frmcontacorrente := tfrmcontacorrente.create(self);
  frmcontacorrente.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BOPCAIXAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then barquivo.SetFocus;
    if key = #13 then TVrDemoButton(sender).OnClick(frmprincipal);
end;

procedure TfrmPrincipal.BOPCAIXAClick(Sender: TObject);
begin
  if autentica('Operador de Caixa',4) then
  begin
    FRMCAIXA_OPERADOR := TFRMCAIXA_OPERADOR.CREATE(SELF);
    FRMCAIXA_OPERADOR.SHOWMODAL;
      TAdvGlowButton(sender).setfocus;
  end;
end;

procedure TfrmPrincipal.BNOTASKeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #27 THEN BMOVIMENTO.SetFOCUS;
  if key = #13 then TVrDemoButton(sender).OnClick(frmprincipal);
end;

procedure TfrmPrincipal.BNOTASClick(Sender: TObject);
var i : integer;
begin
  If frmprincipal.acesso(codigo_usuario,'03.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMNOTAS_VENDA := TFRMNOTAS_VENDA.CREATE(SELF);
  try    {
    for i := 0 to frmnotas_venda.ComponentCount - 1 do
    begin
    if frmnotas_venda.Components[i] is tzquery then
       begin
       tzquery(frmnotas_venda.Components[i]).Connection := frmmodulo.Conexao;
       end;
    end;}
    frmnotas_venda.showmodal;
  finally
    frmnotas_venda.Release;
    frmnotas_venda := nil;
  end;

  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.SpeedButton1Click(Sender: TObject);
begin
  if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
  begin
    if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
    begin
      frmVENDA_INICIO := tfrmVENDA_INICIO.create(self);
      frmVENDA_INICIO.showmodal;
    END
    ELSE
    BEGIN
      APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
    END;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.BOSClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.04') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BCONFIGClick(Sender: TObject);
begin
  if frmprincipal.autentica('Configurações',4) then
  begin
    frmconfig := tfrmconfig.create(self);
    frmconfig.showmodal;
    TAdvGlowButton(sender).setfocus;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmPrincipal.BBALANCAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.09') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMBALANCA := TFRMBALANCA.CREATE(SELF);
  FRMBALANCA.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRRECEBERClick(Sender: TObject);
begin
  if nivel_usuario < 3 then
  begin
    Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end
  else
  begin
  //41 : result := '06.02 - RELATÓRIO CONTAS A PAG';
 // 43 : result := '06.04 - RELATÓRIO DE CAIXA';
    If frmprincipal.acesso(codigo_usuario,'06.03') = 'NAO' then
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;

  end;

  FRMLISTA_RECEBER2 := TFRMLISTA_RECEBER2.CREATE(SELF);
  FRMLISTA_RECEBER2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRCAIXAClick(Sender: TObject);
begin
  if nivel_usuario < 3 then
  begin
    Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end
  else
  begin
  //41 : result := '06.02 - RELATÓRIO CONTAS A PAG';
 // 43 : result := '06.04 - RELATÓRIO DE CAIXA';
    If frmprincipal.acesso(codigo_usuario,'06.04') = 'NAO' then
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;

  end;




  if nivel_usuario < 3 then
  begin
    Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end;

  FRMLISTA_CAIXA2 := TFRMLISTA_CAIXA2.CREATE(SELF);
  FRMLISTA_CAIXA2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BCLIENTEFClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmcliente_financeiro := tfrmcliente_financeiro.create(self);
  frmcliente_financeiro.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRETIQUETAClick(Sender: TObject);
begin
  frmetiquetador := tfrmetiquetador.create(self);
  frmetiquetador.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BBOLETOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.06') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMBOLETO := TFRMBOLETO.CREATE(SELF);
  FRMBOLETO.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BSINTEGRAClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.06') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMSINTEGRA_gerar := TFRMSINTEGRA_gerar.CREATE(SELF);
  FRMSINTEGRA_gerar.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BUSUARIOClick(Sender: TObject);
begin
  pop_usuario.Popup(parquivo.left+213,parquivo.top+220);
end;

procedure TfrmPrincipal.LUSUARIOClick(Sender: TObject);
begin

  if autentica('Trocar de Usuário',1) then
  begin
    nivel_usuario := frmmodulo.qrusuario.fieldbyname('nivel').asinteger;
    codigo_usuario := frmmodulo.qrusuario.fieldbyname('codigo').asstring;

    pstatus.Panels[2].text :=  frmmodulo.qrusuario.fieldbyname('codigo').asstring;
    pstatus.Panels[3].text :=  frmmodulo.qrusuario.fieldbyname('usuario').asstring;
  end;

end;

procedure TfrmPrincipal.BRVENDAClick(Sender: TObject);
begin
  if nivel_usuario < 3 then
  begin
    Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end
  else
  begin
  //41 : result := '06.02 - RELATÓRIO CONTAS A PAG';
 // 43 : result := '06.04 - RELATÓRIO DE CAIXA';
    If frmprincipal.acesso(codigo_usuario,'06.01') = 'NAO' then
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;

  end;

  FRMLISTA_VENDA2 := TFRMLISTA_VENDA2.CREATE(SELF);
  FRMLISTA_VENDA2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRCLIENTEClick(Sender: TObject);
begin
  FRMLISTA_CLIENTE2 := TFRMLISTA_CLIENTE2.CREATE(SELF);
  FRMLISTA_CLIENTE2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRFORNECEDORClick(Sender: TObject);
begin
  FRMLISTA_FORNECEDOR2 := TFRMLISTA_FORNECEDOR2.CREATE(SELF);
  FRMLISTA_FORNECEDOR2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRPRODUTOClick(Sender: TObject);
begin
  FRMLISTA_PRODUTO2 := TFRMLISTA_PRODUTO2.CREATE(SELF);
  FRMLISTA_PRODUTO2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BROSClick(Sender: TObject);
begin
  FRMLISTA_OS := TFRMLISTA_OS.CREATE(SELF);
  FRMLISTA_OS.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BRPAGARClick(Sender: TObject);
begin
  if nivel_usuario < 3 then
  begin
    Application.MessageBox('Seu nível não permite este acesso!','Atenção',mb_ok+mb_iconwarning);
    exit;
  end
  else
  begin
  //41 : result := '06.02 - RELATÓRIO CONTAS A PAG';
 // 43 : result := '06.04 - RELATÓRIO DE CAIXA';
    If frmprincipal.acesso(codigo_usuario,'06.02') = 'NAO' then
    begin
      application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
      exit;
    end;

  end;

  FRMLISTA_PAGAR2 := TFRMLISTA_PAGAR2.CREATE(SELF);
  FRMLISTA_PAGAR2.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.bativacaoClick(Sender: TObject);
begin

    ativa_sistema := False;
    frmativacao := tfrmativacao.create(self);
    frmativacao.showmodal;


    TAdvGlowButton(sender).setfocus;

    if ativa_sistema then
    begin
      le_dll_registro;
      Cria_DLL_Registro('false',res_instalacao,datetostr(date),datetostr(DATA_TERMINO+qtde_dias_ativacao),res_empresa,res_rsocial,res_cnpj);
      ptopo2.Panels[3].text := datetostr(DATA_TERMINO+qtde_dias_ativacao);
    END;



end;

procedure TfrmPrincipal.BCONVENIOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.14') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMCONVENIO := TFRMCONVENIO.CREATE(SELF);
  FRMCONVENIO.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.LinkView3Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'05.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmbackup := tfrmbackup.create(self);
  frmbackup.showmodal;
end;

procedure TfrmPrincipal.LinkView1Click(Sender: TObject);
begin
   frmcalc := tfrmcalc.create(self);
   frmcalc.show;
end;

procedure TfrmPrincipal.Filiais1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmfilial := tfrmfilial.create(self);
  frmfilial.showmodal;
end;

procedure TfrmPrincipal.VrDemoButton2Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMPRODUTO_FALTA := TFRMPRODUTO_FALTA.CREATE(SELF);
  FRMPRODUTO_FALTA.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.VrDemoButton3Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.07') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMCONVENIO_receber := TFRMCONVENIO_receber.CREATE(SELF);
  FRMCONVENIO_receber.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.BCFOP2Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;


  FRMCFOP := TFRMCFOP.CREATE(SELF);
  FRMCFOP.SHOWMODAL;
  bcfop.setfocus;
end;

procedure TfrmPrincipal.VrDemoButton4Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMECF_REDUCAO_menu := TFRMECF_REDUCAO_menu.CREATE(SELF);
  FRMECF_REDUCAO_menu.SHOWMODAL;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.VrDemoButton5Click(Sender: TObject);
begin
 If frmprincipal.acesso(codigo_usuario,'03.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;


    if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        frmprevenda := tfrmprevenda.create(self);
        frmprevenda.lcodcaixa.caption := frmmodulo.qrcaixa_operador.fieldByname('codigo').asstring;
        frmprevenda.lcaixa.caption := frmmodulo.qrcaixa_operador.fieldByname('nome').asstring;


        frmprevenda.showmodal;
          TAdvGlowButton(sender).setfocus;

      END
      ELSE
      BEGIN
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
      END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
    end;



end;

procedure TfrmPrincipal.BEXPORTAClick(Sender: TObject);
begin
  if frmprincipal.autentica('Configurações',4) then
  begin
    frmexporta := tfrmexporta.create(self);
    frmexporta.showmodal;
    TAdvGlowButton(sender).setfocus;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmPrincipal.BEXPORTAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #27 then barquivo.SetFocus;
    if key = #13 then TVrDemoButton(sender).OnClick(frmprincipal);

end;

function TfrmPrincipal.ChecaEstado(Dado : string) : boolean;
const
  Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRROEX';
var
  Posicao : integer;
begin
Result := true;
if Dado <> '' then
  begin
  Posicao := Pos(UpperCase(Dado),Estados);
  if (Posicao = 0) or ((Posicao mod 2) = 0) then
  begin
  Result := false;
  end;
  end;
end;


procedure TfrmPrincipal.GravaReducaoZ;
VAR TXT : TEXTFILE;
TEXTO, cnpj_cpf, ie_rg : STRING;
i : integer;

begin
  //if application.messagebox('Deseja Gravar a REDUÇÃO Z?','Atenção - Redução Z',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  //begin

  //****************************************************************
  // Inicio da criação do registro 60M - REDUÇÃO Z
  //****************************************************************

       frmprogresso := tfrmprogresso.create(self);
       frmprogresso.barra.Position := 0;
       frmprogresso.show;
       Application.ProcessMessages;

      (***************** CRIAR ARQUIVO TIPO 60 M *****************)
       cnpj_cpf := emitente_cnpj;
       i := pos('.',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('.',cnpj_cpf);
       end;
       i := pos('/',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('/',cnpj_cpf);
       end;
       i := pos('-',cnpj_cpf);
       while i > 0 do
       begin
         delete(cnpj_cpf,i,1);
         i := pos('-',cnpj_cpf);
       end;


       ie_rg := emitente_ie;
       i := pos('.',ie_rg);
       while i > 0 do
       begin
         delete(ie_rg,i,1);
         i := pos('.',ie_rg);
       end;
       i := pos('-',ie_rg);
       while i > 0 do
       begin
         delete(ie_rg,i,1);
         i := pos('-',ie_rg);
       end;

  //TRY

       frmmodulo.qrsintegra_r60.close;
       frmmodulo.qrsintegra_r60.sql.clear;
       frmmodulo.qrsintegra_r60.SQL.Add('select * from sintegra_reg60 where ID IS NOT NULL');
       frmmodulo.qrsintegra_r60.Open;

       frmmodulo.qrsintegra_r60.insert;
       frmmodulo.qrsintegra_r60.FieldByName('ID').asstring := '1';
       frmmodulo.qrsintegra_r60.FieldByName('movimento').asstring := '1';
       frmmodulo.qrsintegra_r60.FieldByName('CODIGO_EMPRESA').asinteger := 1;
       frmmodulo.qrsintegra_r60.FieldByName('cnpj').asstring := cnpj_cpf;
       frmmodulo.qrsintegra_r60.FieldByName('ie').asstring := ie_rg;
       frmmodulo.qrsintegra_r60.FieldByName('uf').asstring := emitente_uf;

       frmprogresso.ltexto.caption := 'Gerando REGISTRO 60 ANALÍTICO para o SINTEGRA...';
       frmprogresso.barra.Position := 5;
       Application.ProcessMessages;

       I := 1;

       ecf_registro_60A(ecf_modelo);

       {
       if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60A(ecf_modelo);
       if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60A(ecf_modelo);
       }

       if FileExists('\retorno.txt') then
       begin
         ASSIGNFILE(TXT,'\retorno.txt');
         reset(txt);
         while not eof(txt) do
         begin
         
           readln(txt,texto);

           IF (I > 9) AND (copy(texto,CAMPO_INI,CAMPO_QTDE) <> 'ISS.......................:') then

           BEGIN

            if copy(texto,1,4) = '0700' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  formata_valor(texto);
              end;
            if copy(texto,1,4) = '1200' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  formata_valor(texto);
              end;

            if copy(texto,1,4) = '1700' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  formata_valor(texto);
              end;
            if copy(texto,1,4) = '2500' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  formata_valor(texto);
              end;
            if copy(texto,1,4) = '2700' then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  formata_valor(texto);
              end;

           {
              IF frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat = 0 then
              begin
                frmmodulo.qrsintegra_r60.FieldByName('aliquota01').asfloat := strtofloat(copy(texto,1,4))/100;
                texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL01').asstring :=  formata_valor(texto);
                frmmodulo.qrsintegra_r60.FieldByName('BASE01').asstring :=  formata_valor(texto);

              end
              else
              begin
                IF frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat = 0 then
                begin
                  frmmodulo.qrsintegra_r60.FieldByName('aliquota02').asfloat := strtofloat(copy(texto,1,4))/100;
                  texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                  frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL02').asstring :=  formata_valor(texto);
                  frmmodulo.qrsintegra_r60.FieldByName('BASE02').asstring :=  formata_valor(texto);

                end
                else
                begin
                  IF frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat = 0 then
                  begin
                    frmmodulo.qrsintegra_r60.FieldByName('aliquota03').asfloat := strtofloat(copy(texto,1,4))/100;
                    texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                    frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL03').asstring :=  formata_valor(texto);
                    frmmodulo.qrsintegra_r60.FieldByName('BASE03').asstring :=  formata_valor(texto);
                  end
                  else
                  begin
                    IF frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat = 0 then
                    begin
                      frmmodulo.qrsintegra_r60.FieldByName('aliquota04').asfloat := strtofloat(copy(texto,1,4))/100;
                      texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                      frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL04').asstring :=  formata_valor(texto);
                      frmmodulo.qrsintegra_r60.FieldByName('BASE04').asstring :=  formata_valor(texto);
                    end
                    else
                    begin
                      frmmodulo.qrsintegra_r60.FieldByName('aliquota05').asfloat := strtofloat(copy(texto,1,4))/100;
                      texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
                      frmmodulo.qrsintegra_r60.FieldByName('VALOR_TPARCIAL05').asstring :=  formata_valor(texto);
                      frmmodulo.qrsintegra_r60.FieldByName('BASE05').asstring :=  formata_valor(texto);

                    end;
                  end;
                end;
              end;

              }

           end;




           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Data de emissão...........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             //showmessage(texto);
             Insert(copy(datetostr(date),7,2),texto,7);
             frmmodulo.qrsintegra_r60.FieldByName('DATA_EMISSAO').asstring := texto;
           end;


           frmmodulo.qrconfig.open;
           if frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').asstring <> '' then
           begin
            frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := frmmodulo.qrconfig.fieldbyname('ECF_SERIAL').asstring;
           end
           else
           begin
             if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Número de série...........:' then
             begin
               texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
               frmmodulo.qrsintegra_r60.FieldByName('NRO_SERIE_EQP').asstring := texto;
             end;
           end;

           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Cancelamentos.............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('CANCELAMENTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Descontos.................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('DESCONTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'ISS.......................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('ISSQN').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'F.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('SUBSTITUICAO_TRIBUTARIA').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'I.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('ISENTO').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'N.........................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NAO_INCIDENCIA').asstring := formata_valor(texto);
           end;

           frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_CANCELAMENTO').asinteger := 0;

           I := I + 1;
           frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
           Application.ProcessMessages;
         end;
         closefile(txt);
         deletefile('\retorno.txt');
       end;

       Application.ProcessMessages;
       if FileExists('\retorno.txt') then DELETEFILE('\RETORNO.TXT');
       frmprogresso.ltexto.caption := 'Gerando REGISTRO 60 MESTRE para o SINTEGRA...';
       Application.ProcessMessages;

       ecf_registro_60M(ecf_modelo);

       {
       if ecf_modelo = 'DARUMA' then frmecf_daruma.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'BEMATECH' then frmecf_BEMATECH.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'SWEDA' then frmecf_SWEDA.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'URANO' then frmecf_URANO.ecf_registro_60M(ecf_modelo);
       if ecf_modelo = 'YANCO' then frmecf_YANCO.ecf_registro_60M(ecf_modelo);
       }

       if FileExists('\retorno.txt') then
       begin
         ASSIGNFILE(TXT,'\retorno.txt');
         reset(txt);
         while not eof(txt) do
         begin
           readln(txt,texto);
           frmmodulo.qrconfig.open;
           if frmmodulo.qrconfig.fieldbyname('ECF_CAIXA').asstring <> '' then
           begin
             frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := frmmodulo.qrconfig.fieldbyname('ECF_CAIXA').asstring;
           end
           else
           begin
             if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Número do equipamento.....:' then
             begin
               texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
               frmmodulo.qrsintegra_r60.FieldByName('NRO_ORDEM_EQP').asstring := texto;
             end;
           end;

           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Modelo do documento fiscal:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('MODELO_DOC').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'COO inicial...............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_INICIO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'COO final.................:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_FIM').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Contador de reduções......:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('NRO_CONTADOR_Z').asstring := texto;
           end;
           if (copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Reinicio de Operação......:') OR (copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Reinicio de Operacao......:') then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('CONTADOR_REINICIO').asstring := texto;
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Venda Bruta...............:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('VALOR_VENDA_BRUTA').asstring := formata_valor(texto);
           end;
           if copy(texto,CAMPO_INI,CAMPO_QTDE) = 'Totalizador geral.........:' then
           begin
             texto := (TrimLeft(copy(texto,RESULTADO_INI,RESULTADO_QTDE)));
             frmmodulo.qrsintegra_r60.FieldByName('VALOR_TOTAL_GERAL').asstring := formata_valor(texto);
           end;
           frmprogresso.barra.Position := frmprogresso.barra.Position + 5;
           Application.ProcessMessages;
         end;
         closefile(txt);
         deletefile('\retorno.txt');
       end;
       frmprogresso.barra.Position := 100;
       Application.ProcessMessages;

    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_liquida').AsFloat :=
    frmmodulo.qrsintegra_r60.FieldByName('valor_venda_bruta').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('cancelamento').AsFloat -
    frmmodulo.qrsintegra_r60.FieldByName('desconto').AsFloat +
    frmmodulo.qrsintegra_r60.FieldByName('issqn').AsFloat ;

       frmprogresso.Close;
       frmmodulo.qrsintegra_r60.post;
       frmmodulo.Conexao.Commit;

  //EXCEPT
  //  APPLICATION.MESSAGEBOX('Houve falha no processamento do Registro 60M e 60A para geração do sintegra! Favor verificar!','Atenção',mb_ok+mb_iconerror);
  //  frmmodulo.Conexao.rollback;

  //END;

  //****************************************************************
  // Final da criação do registro 60M - REDUÇÃO Z
  //****************************************************************

  //end;
end;


function TfrmPrincipal.formata_valor(valor:string):string;
var i : integer;
begin
  i := pos('.',valor);
  while i <> 0 do
  begin
      delete(valor,i,1);
      i := pos('.',valor);
  end;
  result := valor;
end;

function TfrmPrincipal.DataDeCriacao(Arq: string): TDateTime;
var
  ffd: TWin32FindData;
  dft: DWORD;
  lft: TFileTime;
  h: THandle;
begin
  h := Windows.FindFirstFile(PChar(Arq), ffd);
  try
    if (INVALID_HANDLE_VALUE <> h) then begin
      //FileTimeToLocalFileTime(ffd.ftCreationTime, lft);  // criação do arquivo
      //FileTimeToLocalFileTime(ffd.ftLastAccessTime, lft );  // ultima acesso
      FileTimeToLocalFileTime(ffd.ftLastWriteTime, lft );  // ultima alteração

      FileTimeToDosDateTime(lft, LongRec(dft).Hi, LongRec(dft).Lo);
      Result := FileDateToDateTime(dft);
    end;
  finally
    Windows.FindClose(h);
  end;
end;

procedure TfrmPrincipal.AdvGlowButton12Click(Sender: TObject);
begin
  pop_outros_cadastros.Popup(parquivo.left+213,parquivo.top+250);
end;

procedure TfrmPrincipal.barquivoMouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  TAdvGlowButton(sender).SetFocus;
end;

procedure TfrmPrincipal.bfiliaisClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  bfiliais.SetFocus;
  frmEMPRESA := tfrmEMPRESA.create(self);
  frmEMPRESA.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.bclienteClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.bsairClick(Sender: TObject);
begin
  if application.messagebox('Confirma o encerramento do Sistema?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
    begin
      frmprincipal.FechePrograma('eBackup');
      frmprincipal.FechePrograma('s7servidor');
      frmmodulo.Conexao.Connected := false;
      Application.Terminate;
    end
    else
      TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.MenuItem1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
end;

procedure TfrmPrincipal.BconhecimentoClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmconhecimento := tfrmconhecimento.create(self);
  frmconhecimento.showmodal;
end;

procedure TfrmPrincipal.BVENDAKeyPress(Sender: TObject; var Key: Char);
begin
  IF KEY = #27 THEN BMOVIMENTO.SETFOCUS;
end;

procedure TfrmPrincipal.AdvGlowButton34KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #27 THEN BMOVIMENTO.SETFOCUS;
end;

procedure TfrmPrincipal.brclienteKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then brelatorio.SetFocus;
end;

procedure TfrmPrincipal.CSTCdigodaSituaoTributria1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;


  frmcst := tfrmcst.create(self);
  frmcst.showmodal;
    bcfop.setfocus;
end;

procedure TfrmPrincipal.ModelosdeDocumentosFiscais1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMmodelo_fiscal := TFRMmodelo_fiscal.CREATE(SELF);
  FRMmodelo_fiscal.SHOWMODAL;
    bcfop.setfocus;
end;

procedure TfrmPrincipal.ECFCadastrodeEquipamentos1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMECF := TFRMECF.CREATE(SELF);
  FRMECF.SHOWMODAL;
    bcfop.setfocus;
end;

procedure TfrmPrincipal.Setor2Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.10') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmsetor := tfrmsetor.create(self);
  frmsetor.showmodal;
end;

procedure TfrmPrincipal.Veculos1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.11') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMVEICULO := TFRMVEICULO.CREATE(SELF);
  FRMVEICULO.SHOWMODAL;
end;

procedure TfrmPrincipal.bveiculocClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.12') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMCLIENTE_VEICULO := TFRMCLIENTE_VEICULO.CREATE(SELF);
  FRMCLIENTE_VEICULO.SHOWMODAL;
end;

procedure TfrmPrincipal.bsairEnter(Sender: TObject);
begin
  PARQUIVO.Visible :=    FALSE;
  PESTOQUE.Visible :=    FALSE;
  PMOVIMENTO.VISIBLE :=  FALSE;
  PFINANCEIRO.VISIBLE := FALSE;
  PRELATORIO.Visible :=  FALSE;
  putilitario.Visible := false;
end;

procedure TfrmPrincipal.Clientes1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmcliente := tfrmcliente.create(self);
  frmcliente.showmodal;
    barquivo.setfocus;
end;

procedure TfrmPrincipal.Produtos1Click(Sender: TObject);
begin
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
    bestoque.setfocus;
end;

procedure TfrmPrincipal.ConsultadePreos1Click(Sender: TObject);
begin

  If frmprincipal.acesso(codigo_usuario,'02.08') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMMODULO.QRCONFIG.OPEN;
  IF (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'NORMAL') or (FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'FARMA')  then
  begin
    frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
    frmproduto_consultapreco.showmodal;
  end
  else
  begin
    IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'LIGHT' then
    begin
      frmproduto_consultapreco := tfrmproduto_consultapreco.create(self);
      frmproduto_consultapreco.showmodal;
    end
    else
    begin
      IF FRMMODULO.QRCONFIG.FieldByName('CADASTRO_PRODUTO').asstring = 'PECAS' then
      begin
        frmloc_produto_AUTO := tfrmloc_produto_AUTO.create(self);
        frmloc_produto_AUTO.showmodal;
      end
    end;
  end;
    bestoque.setfocus;
end;

procedure TfrmPrincipal.ContasaPagar1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  FRMCONTASPAGAR := TFRMCONTASPAGAR.CREATE(SELF);
  FRMCONTASPAGAR.SHOWMODAL;
  bfinanceiro.setfocus;
end;

procedure TfrmPrincipal.ContasaReceber1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.07') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

        frmcontasreceber := tfrmcontasreceber.create(self);
        frmcontasreceber.showmodal;

        
  bfinanceiro.setfocus;
end;

procedure TfrmPrincipal.Oramento1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.03') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmorcamento := tfrmorcamento.create(self);
  frmorcamento.showmodal;
  bmovimento.setfocus;
end;

procedure TfrmPrincipal.Caixa1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;



  if frmPrincipal.autentica_caixa('Acesso ao Caixa',0) then
  begin
    frmcaixa := tfrmcaixa.create(self);
    frmcaixa.showmodal;
    bfinanceiro.setfocus;
  end
  else
  begin
    APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
  end;
end;

procedure TfrmPrincipal.OrdemdeServio1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.04') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmos_menu := tfrmos_menu.create(self);
  frmos_menu.showmodal;
  bmovimento.setfocus;
end;

procedure TfrmPrincipal.NotaFiscal1Click(Sender: TObject);
begin
   If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  //frmnotafiscal := tfrmnotafiscal.create(self);
  //frmnotafiscal.showmodal;

  frmnotafiscal_menu := tfrmnotafiscal_menu.create(self);
  frmnotafiscal_menu.showmodal;
  bmovimento.setfocus;
end;

procedure TfrmPrincipal.SairdoSistema1Click(Sender: TObject);
begin
    if application.messagebox('Confirma o encerramento do Sistema?','Aviso',mb_yesno+MB_ICONWARNING) = idyes then
  begin
    close;
  end
  else
    bsair.setfocus;
end;

procedure TfrmPrincipal.AnularSaida1Click(Sender: TObject);
begin
//
end;

procedure TfrmPrincipal.bcfopClick(Sender: TObject);
begin
  pop_tabela_fiscal.Popup(parquivo.left+213,parquivo.top+260);
end;

procedure TfrmPrincipal.AdvGlowButton34Click(Sender: TObject);
begin
  pop_nf_saida.Popup(pmovimento.left+213,pmovimento.top+110);
end;

procedure TfrmPrincipal.boutrosKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then barquivo.setfocus;
end;

procedure TfrmPrincipal.bcfopKeyPress(Sender: TObject; var Key: Char);
begin
  if key = #27 then barquivo.setfocus;
end;

procedure TfrmPrincipal.rocardeUsurio1Click(Sender: TObject);
begin
 WITH FRMPRINCIPAL DO
 BEGIN

  if autentica('Trocar de Usuário',1) then
  begin
    nivel_usuario := frmmodulo.qrusuario.fieldbyname('nivel').asinteger;
    codigo_usuario := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
    frmprincipal.pstatus.Panels[2].text := frmmodulo.qrusuario.fieldbyname('codigo').asstring;
    frmprincipal.pstatus.Panels[3].text := frmmodulo.qrusuario.fieldbyname('usuario').asstring;
    if nivel_usuario = 4 then
    begin
    pnormal.visible := false;
    psuper.visible := true;

    qrcx.close;
    qrcx.sql.clear;
    qrcx.sql.add('select * from c000045 where codigo = ''000099''');
    qrcx.open;
    if qrcx.RecordCount > 0 then
    begin
      lcaixa.Caption := qrcx.fieldbyname('data').asstring;
      if qrcx.fieldbyname('situacao').asinteger = 1 then
         lsit_caixa.caption := 'ABERTO' else
         lsit_caixa.caption := 'FECHADO';
    end
    else
    begin
      Lcaixa.caption := '---';
      lsit_caixa.Caption := '---'
    end;

    qrniver.close;
    qrniver.sql.clear;
    qrniver.sql.add('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''+copy(datetostr(date),1,5)+'/%'' order by nome');
    qrniver.open;

    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
    qrpagar.sql.add('where pg.codfornecedor = forn.codigo and situacao = 1 and');
    qrpagar.sql.add('data_vencimento = :datax order by data_vencimento ');
    qrpagar.params.ParamByName('datax').asdatetime := date;
    qrpagar.open;

    query.close;
    query.sql.clear;
    query.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida,');
    query.sql.add('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
    query.sql.add('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
    query.sql.add('(select sum(total)       valor_2 from c000048 where data = :datax),');
    query.sql.add('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
    query.sql.add('from c000044 where data = :datax');
    query.params.ParamByName('datax').asdatetime := qrcx.fieldbyname('data').asdatetime;
    query.params.ParamByName('datav').asdatetime := date;
    query.open;

    ltcaixa.caption   := formatfloat('###,###,##0.00',query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat);
    ltpagar.caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor').asfloat);
    ltreceber.caption := formatfloat('###,###,##0.00',query.fieldbyname('valor_1').asfloat);
    ltvenda.Caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor_2').asfloat);
    ltos.Caption      := formatfloat('###,###,##0.00',query.fieldbyname('valor_3').asfloat);
    ltfinal.caption   := formatfloat('###,###,##0.00',(query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat)+query.fieldbyname('valor_1').asfloat-query.fieldbyname('valor').asfloat);

    end
    else
    begin
      pnormal.visible := true;
      psuper.visible := false;
    end;
  end;
 END;
end;

procedure TfrmPrincipal.GerencimentodeUsurios1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Config. Usuários',nivel_exclusao) then
  begin
    frmusuario := tfrmusuario.create(self);
    frmusuario.showmodal;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;

end;

procedure TfrmPrincipal.Baixa1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmbaixa_estoque := tfrmbaixa_estoque.create(self);
  frmbaixa_estoque.showmodal;
end;

procedure TfrmPrincipal.Pedido1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.06') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;

  
end;

procedure TfrmPrincipal.Entrada1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.05') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmproduto_entrada := tfrmproduto_entrada.create(self);
  FRMPRODUTO_ENTRADA.Refresh;
  frmproduto_entrada.showmodal;
end;

procedure TfrmPrincipal.ConsultaServio1Click(Sender: TObject);
begin
  frmxloc_servico := tfrmxloc_servico.create(self);
  frmxloc_servico.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'02.08') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmproduto_consultaserial := tfrmproduto_consultaserial.create(self);
  frmproduto_consultaserial.showmodal;
end;

procedure TfrmPrincipal.MemorandodeExportao1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.02') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmmemorando_menu := Tfrmmemorando_menu.CREATE(SELF);
  frmmemorando_menu.SHOWMODAL;
end;

procedure TfrmPrincipal.bformaClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.07') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMFORMAPGTO := TFRMFORMAPGTO.CREATE(SELF);
  FRMFORMAPGTO.SHOWMODAL;
    TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.Venda1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.01') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

{
    if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
    begin
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
      begin
        frmvenda_inicio := tfrmvenda_inicio.create(self);
        frmvenda_inicio.showmodal;
      END
      ELSE
      BEGIN
        APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
      END;
    end
    else
    begin
      APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
    end;
 }

 
  FRMMODULO.qrconfig.OPEN;
  IF frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 THEN
    BEGIN
      if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
            begin
              FRMVENDA_FARMA := TFRMVENDA_FARMA.CREATE(SELF);
              FRMVENDA_FARMA.SHOWMODAL;
            END
          ELSE
            BEGIN
              APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
            END;
        end
      else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
        end;
    END
  ELSE
    begin
      if frmPrincipal.autentica_caixa('Pedido de Venda',0) then
        begin
          if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
            begin
              frmvenda_inicio := tfrmvenda_inicio.create(self);
              frmvenda_inicio.showmodal;
              TAdvGlowButton(sender).setfocus;
            END
          ELSE
            BEGIN
              APPLICATION.MESSAGEBOX('Este caixa está fechado! Favor verificar...','Atenção',mb_ok+MB_ICONWARNING);
            END;
        end
      else
        begin
          APPLICATION.MESSAGEBOX('Não autorizado!','Aviso',mb_ok+MB_ICONERROR);
        end;
    end;


end;

procedure TfrmPrincipal.AdvGlowButton2Click(Sender: TObject);
begin
  frmlista_servicos_periodicos := Tfrmlista_servicos_periodicos.CREATE(SELF);
  frmlista_servicos_periodicos.ShowModal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.FormasdePagamento1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.07') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMFORMAPGTO := TFRMFORMAPGTO.CREATE(SELF);
  FRMFORMAPGTO.SHOWMODAL;

end;

procedure TfrmPrincipal.CondiesdePagamento1Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'01.08') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  FRMCONDPGTO := TFRMCONDPGTO.CREATE(SELF);
  FRMCONDPGTO.SHOWMODAL;
end;

procedure TfrmPrincipal.batualClick(Sender: TObject);
begin
    qrcx.close;
    qrcx.sql.clear;
    qrcx.sql.add('select * from c000045 where codigo = ''000099''');
    qrcx.open;
    if qrcx.RecordCount > 0 then
    begin
      lcaixa.Caption := qrcx.fieldbyname('data').asstring;
      if qrcx.fieldbyname('situacao').asinteger = 1 then
         lsit_caixa.caption := 'ABERTO' else
         lsit_caixa.caption := 'FECHADO';
    end
    else
    begin
      Lcaixa.caption := '---';
      lsit_caixa.Caption := '---'
    end;

    qrniver.close;
    qrniver.sql.clear;
    qrniver.sql.add('select codigo, nome, nascimento, telefone1, telefone2, celular from c000007 where situacao < 3 and  nascimento like '''+copy(datetostr(date),1,5)+'/%'' order by nome');
    qrniver.open;

    qrpagar.close;
    qrpagar.sql.clear;
    qrpagar.sql.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
    qrpagar.sql.add('where pg.codfornecedor = forn.codigo and situacao = 1 and');
    qrpagar.sql.add('data_vencimento = :datax order by data_vencimento ');
    qrpagar.params.ParamByName('datax').asdatetime := date;
    qrpagar.open;

    query.close;
    query.sql.clear;
    query.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida,');
    query.sql.add('(select sum(valor)       valor   from c000046 where situacao = 1 and data_vencimento = :datav), ');
    query.sql.add('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
    query.sql.add('(select sum(total)       valor_2 from c000048 where data = :datax),');
    query.sql.add('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
    query.sql.add('from c000044 where data = :datax');
    query.params.ParamByName('datax').asdatetime := qrcx.fieldbyname('data').asdatetime;
    query.params.ParamByName('datav').asdatetime := date;
    query.open;

    ltcaixa.caption   := formatfloat('###,###,##0.00',query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat);
    ltpagar.caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor').asfloat);
    ltreceber.caption := formatfloat('###,###,##0.00',query.fieldbyname('valor_1').asfloat);
    ltvenda.Caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor_2').asfloat);
    ltos.Caption      := formatfloat('###,###,##0.00',query.fieldbyname('valor_3').asfloat);
    ltfinal.caption   := formatfloat('###,###,##0.00',(query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat)+query.fieldbyname('valor_1').asfloat-query.fieldbyname('valor').asfloat);

    barquivo.setfocus;

end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
//  if ( TimeToStr(time) < '05:00:00' ) or ( TimeToStr(time) > '24:00:00' ) then Application.Terminate;

  
  if ( TimeToStr(time) >= '23:50:00' ) and ( TimeToStr(time) <= '24:00:00' ) then
    begin
      Timer1.Enabled := False;
      if frmmodulo.qrcaixa_operador.FieldByName('situacao').asinteger = 1 then
        begin
          application.messagebox(pchar('Já são ' + TimeToStr(time) + ' e o Caixa do dia '+
          DateToStr(frmmodulo.qrcaixa_operador.FieldByName('data').asdatetime)+#13+
          'Ainda não foi fechado! Verifique!'),'Atenção',mb_ok+MB_ICONWARNING);
        end;
      Timer1.Enabled := True;
    end;
  
  
  if batual.down then
    begin
      qrpagar.close;
      qrpagar.sql.clear;
      qrpagar.sql.add('select pg.*, forn.nome from c000046 pg, c000009 forn');
      qrpagar.sql.add('where pg.codfornecedor = forn.codigo and situacao = 1 and');
      qrpagar.sql.add('data_vencimento = :datax order by data_vencimento ');
      qrpagar.params.ParamByName('datax').asdatetime := date;
      qrpagar.open;

      query.close;
      query.sql.clear;
      query.sql.add('select sum(entrada) total_entrada, sum(saida) total_saida,');
      query.sql.add('(select sum(valor)       valor from c000046 where situacao = 1 and data_vencimento = :datav), ');
      query.sql.add('(select sum(valor_atual) valor_1 from c000049 where situacao = 1 and data_vencimento = :datav), ');
      query.sql.add('(select sum(total)       valor_2 from c000048 where data = :datax),');
      query.sql.add('(select sum(total)       valor_3 from c000051 where conclusao_data = :datax and situacao = ''FECHADA'')');
      query.sql.add('from c000044 where data = :datax');
      query.params.ParamByName('datax').asdatetime := qrcx.fieldbyname('data').asdatetime;
      query.params.ParamByName('datav').asdatetime := date;
      query.open;

      ltcaixa.caption   := formatfloat('###,###,##0.00',query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat);
      ltpagar.caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor').asfloat);
      ltreceber.caption := formatfloat('###,###,##0.00',query.fieldbyname('valor_1').asfloat);
      ltvenda.Caption   := formatfloat('###,###,##0.00',query.fieldbyname('valor_2').asfloat);
      ltos.Caption      := formatfloat('###,###,##0.00',query.fieldbyname('valor_3').asfloat);
      ltfinal.caption   := formatfloat('###,###,##0.00',(query.fieldbyname('total_entrada').asfloat-query.fieldbyname('total_saida').asfloat)+query.fieldbyname('valor_1').asfloat-query.fieldbyname('valor').asfloat);
    end;
end;

function TfrmPrincipal.RemoveAcentos(Str:String): String;
Const ComAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
SemAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
Var
  x : Integer;
Begin
  For x := 1 to Length(Str) do
    Begin
      if Pos(Str[x],ComAcento)<>0 Then
        begin
          Str[x] := SemAcento[Pos(Str[x],ComAcento)];
        end;
    end;
  Result := Str;
end;


procedure TfrmPrincipal.AdvGlowButton3Click(Sender: TObject);
begin
  if frmprincipal.autentica('Exportação',3) then
  begin
    FRMPRODUTO_PDV2 := TFRMPRODUTO_PDV2.CREATE(SELF);
    FRMPRODUTO_PDV2.SHOWMODAL;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure TfrmPrincipal.AdvGlowButton3KeyPress(Sender: TObject;
  var Key: Char);
begin
  IF KEY = #27 THEN BMOVIMENTO.SETFOCUS;
end;

procedure TfrmPrincipal.AdvGlowButton4Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.08') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmentrega := tfrmentrega.create(self);
  frmentrega.showmodal;
end;

function tfrmPrincipal.Cria_DLL_Registro(rexpirado,rinstalacao,rdata,rtermino,rempresa,rrsocial,rcnpj:string):boolean;
var txt : textfile;
begin

  //showmessage('cria dll servidor');

 try
  assignfile(txt,'\DataSAC\server\dll\ECFCom.dll');
  rewrite(txt);
  writeln(txt,' PèCQ ÿ5pè- ÃÃƒ=p rè¿ÿÿÿÿ5pè¯, Ãƒ=p u');
  writeln(txt,'è˜, £pÿ5pè , …ÀtÃè');
  writeln(txt,'ÿÿÿ¡pPè‹,');
  writeln(txt,' Ã3ÀU£,Ê¸   ‹ì]Â U‹ìSVW‹}‹u‹]…öu3Àéø   èù   ƒóÿƒÿ‚Ä   3ÒƒïŠF3Óâÿ   Áë‹3Ë3ÒŠ');
  writeln(txt,'‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ');
  writeln(txt,'Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ëƒÿ‹Ùƒ<ÿÿÿ…ÿt3ÒŠF3Óâÿ   Áë‹3ËO‹Ùuæ‹Ãƒğÿ_^');
  writeln(txt,'[]Ã¸qÃU‹ì‹E‹€Ç  %ÿÿ  ƒÈ‹Ğƒò¯ĞÁêâÿ   ‹Â]ÃU‹ìSV‹E‹U‹ˆ–Ç  ‹°iÆ  ‹Ù3Úãÿ   Áé‹3Ù‰˜–Ç');
  writeln(txt,'ãÿ   ˜šÇ  iˆšÇ  „A‰ˆšÇ  Áé‹˜Ç  3Ë‹°iÆ  áÿ   Áë‹3Ë‰ˆÇ  ‹Â^[]ÃU‹ìSV‹]‹uÇ†–Ç  xV4Ç†šÇ');
  writeln(txt,'‰gE#Ç†Ç  xV4ë¾ÀPVèSÿÿÿƒÄCŠ„Àuì^[]ÃU‹ìƒÄğSVW‹]‹ƒyÆ  PhuSè®  ƒÄ‹“e  €bşSèËI  Y3ö}ğÿ‹yÆ');
  writeln(txt,'x‹ƒuÆ  ÿƒuÆ  ¶ ëSèÂJ  YˆFGƒş|×SèBI  Y‹“e  €JhuSèP  ƒÄƒ»ûÖ   u');
  writeln(txt,'Œí   3Ò‰ShhFuSè  ƒÄƒ{P…˜   ‹‹¦Ç  Qh^uSèõ  ƒÄƒ»¢Ç   uThsuSèŞ  ƒÄjQè€¥  Y‹ğ‰³¢Ç  …öu');
  writeln(txt,'   é  jP‹“¦Ç  RVèf¸  ƒÄ»9Ú'+cript('C',rexpirado));   // 11
  writeln(txt,'Çƒ’Ç     »9Ú      |RjQ‹‹¦Ç  '+cript('C',rinstalacao)); // 12
  writeln(txt,'}#h‡uSèO  ƒÄ‹“¢Ç  Rèü¤  Y3'+cript('C',rdata));       // 13
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rtermino));    // 14
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rempresa));    // 15
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rrsocial));    // 16
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rcnpj));       // 17
  //writeln(txt,'   t+“×  R‹‹¢Ç  Qè	M EğPSèÍ   ƒÄ…Àu3Àé¶   ƒ»×  tÇƒ’Ç     ÇEü   ‹“×  ƒâ;Uü}‹³×  ƒæëb‹uüë]Sè]q');
  //writeln(txt,'  Y‹øƒÿu‹ƒ¢Ç  PèÁ£  Y3Ò‰“¢Ç  ¸   ëT…ÿt‹“¢Ç  3öÆ EğPSèD   ƒÄ…Àu3Àë0ƒÿşu');
  writeln(txt,'„öşÿÿ¸   _^[‹å]ÃU‹ìSVW‹]‹ƒ¢Ç  Pè)L @Pè(£  Y‹ø…ÀuƒÈÿëg‹“¢Ç  RWè«R  ƒÄP‹MQSèQ   ƒÄ‹ğ…öt ‹ƒ¢Ç  PWè¿R  ƒÄP');
  writeln(txt,'‹URSè-   ƒÄ‹ğWèâ¢  Y…öt‹ƒ¢Ç  P‹URSè   ƒÄ‹ğ‹Æ_^[]ÃU‹ìƒÄôSVW‹]‹EPSèŞûÿÿƒÄj‹URMôQè²  ƒÄ3ÿuôSèûÿÿY0Š');
  writeln(txt,'3ÒŠĞRSè6ûÿÿƒÄ3ÉŠQhvSè«  ƒÄGFƒÿ|Í‹ƒe  ö@tºDvëºIvR‹@P‹‹ÖÆ  Qh	vSèr  ƒÄ‹ƒuÆ  ƒ­Æ  +ƒqÆ  P‹“yÆ');
  writeln(txt,'  RhOvSèJ  ƒÄ¶uÿ·ƒÒÆ  ÁøP‹“ÖÆ  Áê·ÊQ·şWh~vSè  ƒÄ‹ƒe  ö@t·“ÒÆ  Áúë‹“ÖÆ  Áê·Ò;útƒÈÿëC‹‹yÆ  ;');
  writeln(txt,'Kt~‹{të‹»yÆ  ‹³uÆ  ëSèúÿÿY0Š3ÒŠĞRSè0úÿÿƒÄF‹ÏƒÇÿ…Éuİ3À_^[‹å]Ã¸ª   Ã¸lB  ÃU‹ìSV3ÀW£0Ê3ÿ¡,Ê‹u…Àt…öu');
  writeln(txt,'Ç€&Ñ  ÿÿÿÿƒÈÿé  …öu3Àéı  èWS  ‹ØSè‹S  Y‰,Ê‹‰ƒ:Ñ  ‹V‰“>Ñ  ‹N‰‹BÑ  ‹F‰ƒ"Ñ  f‹Vf‰“7Ú  ‹N‰‹9Ú  h¸|Sèâ  ƒÄ ');
  writeln(txt,'~—   ~ƒ¾   u¿   ëƒ~Hu¿   …ÿu*hÙ|j h jSèû  ƒÄèßR  3À£,Ê3ÀéR  ƒ~D u+hñ|j h jSèË  ƒÄè¯R');
  writeln(txt,'3Ò3À‰,Êé!  ~ª   thh');
  writeln(txt,'}»"É  WèøH ~ª   }¸-}ë¸3}PWèÖH ~ª   ~h9}“"É  Rè¼H ƒ~( uSè˜  YhlB  ‹"É');
  writeln(txt,'  Qè  ƒÄhO}Sèà  ƒÄVSè¢   ƒÄ…Àtrƒ»"Ñ   tÇCD   hx}hlB  h^}SèÆ  ƒÄ~    |ƒ»•Æ   t	Sè=  YëSè–m');
  writeln(txt,' Yh…}Sèz  ƒÄƒ{D t‹ƒ.Ñ  Ph°}è  ƒÄ‹³.Ñ  Sè¥b  YSèş  YèˆQ  3À£,Ê‹Æ_^[]Â U‹ìSVW‹u‹]‹F,‰CD‹V(‰S,hÄ}Sè');
  writeln(txt,'ÇCd   ÇC   ‹NƒÄ‰K8ÇC<   ‹F8‰C`‹F8ƒø‰CÒ÷Ú‰S‹N$‰Kƒ> uÇC,   ‹F0‰C@‹V4‰Sƒ~< tÇC(   ‹N@‰KT°PˆƒÇÆ  ˆƒÂÆ  ˆƒ½Æ');
  writeln(txt,' h  jè‚F ‹ø‰»#Ú  …ÿu3Àé%  WèuF ‰ƒ‘Æ  ‹VDR‹‹‘Æ  QèG ‹F…ÀtKPèG …À~AjQè');
  writeln(txt,'  Y‹ø‰»¦Ç  …ÿu3Àéİ  ‹VRWèİF ‹‹¦Ç');
  writeln(txt,'QhÛ}Sè1  ƒÄÇCP   ~    |‹Fhƒàë¸   ‰ƒûÖ  h  jèÙE ‹ø‰»Ú  …ÿu3Àé|  WèÌE ‰ƒÆ  ‹VDR‹‹Æ  QèjF ~    |ƒ~');
  writeln(txt,'\ u{»"Ç  W‹ƒ‘Æ  Pè>É  ƒÄ…Àu¿“&Ç  â ğ  ú @  uhú}‹‹‘Æ  QèF W‹ƒ‘Æ  PèÉ  ƒÄ…Àt‹“‘Æ  Rhÿ}èğ  ƒÄ3Àéâ  ‹“6Ç');
  writeln(txt,' ‰“©Æ  ƒ~@ u	ÇC\   ëh~—   ~‹NH‰‹˜   ëT‹F@@‹ĞÁâÒRjBèéD ‹ø‰»/Ú  …ÿt4WèãD ‰ƒ3Ú  ‰ƒ˜   3ÀVLë‹»˜   À@ÏQ_‹');
  writeln(txt,'‰;F@|å‹Fl‰ƒÿÖ  ‹S\R‹N@Qh"~Sè³  ƒÄh   jè~D ‹ø‰»Ú  …ÿtWèxD ‰ƒqÆ  h€  jèZD ‹ø‰»Ú  …ÿtWèTD ‰ƒvÇ  h  jè6D');
  writeln(txt,' ‹ø‰»+Ú  …ÿtWè0D ‰ƒŠÇ  ‹ƒqÆ  …Àtƒ»vÇ   tƒ»‘Æ   t	ƒ»ŠÇ   u3Àé¨       ‰ƒ¹Æ  ~    |!ƒ~\ t‹V\‰“•Æ  ‹N`‰‹™Æ  ‹Fd‰ƒ');
  writeln(txt,'Æ  ~    |eƒ~P t_Çƒ€      ‹VX‰“”   ‹NT‰‹Œ   ƒ»•Æ   t‹ƒvÇ  ‰ƒˆ   Çƒ    €  ë‹“Œ   ‰“ˆ   ‹NX‰‹   ƒ»Œ    u3Àë¸   _^');
  writeln(txt,'[]ÃU‹ìS‹]‹ƒ/Ú  …Àtƒ»3Ú   tPè:C ‹“/Ú  RèC ‹ƒÚ  …Àtƒ»qÆ');
  writeln(txt,'  tPèC ‹“Ú  Rè÷B ‹ƒÚ  …Àtƒ»vÇ   tPèğB ‹“Ú  RèÒB ‹ƒ#Ú  …Àtƒ»‘Æ   tPèËB ‹“#Ú  Rè­B ‹ƒÚ  …Àtƒ»Æ   tPè¦');
  writeln(txt,'B ‹Ú  RèˆB ‹ƒ+Ú  …Àtƒ»ŠÇ   tPèB ‹“+Ú  RècB ‹ƒ¢Ç  …ÀtPè/š  Y[]ÃU‹ìSVWèiL  ‹øh @  jè-B ‹Ø…ÀtESè-B ‹ğ…Àt3E');
  writeln(txt,'P‹URhÿ  Vè–Ó  ƒÄÆ†ÿ   Vj j jWèS  ƒÄSè B SèèA 3À_^[]ÃU‹ìSVW‹uƒ¾"Ñ   teh @  jè¼A ‹Ø…ÀtSSè¼A ‹ø…ÀtAhD~Wè_B E');
  writeln(txt,'OP‹URhô  QèÓ  ƒÄÆ‡ÿ   Wj j jVèÔ   ƒÄSèA SèiA _^[]ÃU‹ìÄ øÿÿSV‹u‹:Ñ  …Ûuè3B ‹ØhP~… øÿÿPèîA hë  Æ"É  V');
  writeln(txt,'… øÿÿPèğª  ƒÄ• øÿÿj he~RSè÷A ^[‹å]ÃU‹ìÄ şÿÿS‹]ƒ{D t?h|~… şÿÿPè’A hô  ‹UR şÿÿQè—ª  ƒÄ… şÿÿPj j jSè');
  writeln(txt,' ƒÄ[‹å]ÃU‹ìSV‹u‹U‹Eƒ¾BÑ   ×  tj‹:Ñ  ‰‹>Ñ  ‰K3ÉÇCª   ‰K‹M‰K¾9Ú  ‘   ');
  writeln(txt,'‹È€áÿ¾Éë‹È‰K…Ò‹E‰CuÆC ëh ');
  writeln(txt,'RSRèê@ Sÿ–BÑ  	†&Ñ  ^[]ÃU‹ìÄ ÿÿÿSV‹u‹]‹Æ%  ÿ Áøƒ»6Ñ   …Ä   Çƒ6Ñ     ‰ƒ*Ñ  ƒøuh   “"É  R ÿÿÿQèƒ@ ë<ş');
  writeln(txt,' u ‹“‘Æ  R‹…àvP ÿÿÿQèîÑ  ƒÄë‹…àvP• ÿÿÿRè?@ ƒ»2Ñ   t; ÿÿÿQj j jSèÅşÿÿƒÄ… ÿÿÿ“"É  VPhˆ~RèÑ  ƒÄSèàıÿÿ');
  writeln(txt,'Yë ÿÿÿQj VjSè‹şÿÿƒÄ^[‹å]ÃU‹ìS‹]è@I  SPèùşÿÿƒÄj j j SèJ? []ÃU‹ìQSVW‹]ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè>;  Y‹ĞB3');
  writeln(txt,'ö‰Uüÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  ¶8ë	Sè;  Y‹ø‹Ççğ   ÁïƒàG@7;Uv¸   ë‹U‰²FOuöÿMüu°;ut¸   ë3À_^[Y]ÃU‹ìƒÄØ3ÀSVW‹ø‹]');
  writeln(txt,'‰EìÇEØ   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹U ·U¼v‰MÜ‹Cx‰Eüƒ}ü 8  ƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèU:  Y‹ÎÓàøƒÆƒşrÑ');
  writeln(txt,'÷Ç   „5  ÑïNÿMüë*ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSè:  Y‹ÎÓàøƒÆ;urÑ‹×÷Ò#Uä‹ÂÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éØ  ‹Mè3ÒŠA');
  writeln(txt,'ƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè–9  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹');
  writeln(txt,'ÈŠĞÓï‹Mè+ò‹Uì‹ƒˆ   ŠIˆÿEì‹Uì;“„   …Ö  j ‹UìRPSè:  ƒÄ3À‰EØ‰Eìé¹  ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèİ8  Y‹ÎÓàøƒÆƒşrÑ‹');
  writeln(txt,'×Áïƒâ‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè8  Y‹Ğ‹ÎÓâúƒÆ;u rÏ‹Ç÷Ğ#EÜÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd  ‹Mè3ÒŠA');
  writeln(txt,'ƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè"8  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹È');
  writeln(txt,'ŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè7  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd');
  writeln(txt,' ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè"7  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹E');
  writeln(txt,'è3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè6  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹Mğë');
  writeln(txt,'‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv‹Mğë‹Mì+Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôƒ}Ø t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPè¼¡  ƒÄ‹Uø');
  writeln(txt,'Uì‹MøMğëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè¡  ƒÄ‹MøMì‹EøEğë‹ƒˆ   ‹UğŠR‹MìZˆÿEğÿEìÿMøuá‹Eì;ƒ„   uj ‹MìQ‹ƒˆ   PSèa6  ƒÄ3Ò‰');
  writeln(txt,'UØ‰Uìƒ}ô …Øşÿÿƒ}ü Èúÿÿj ‹EìP‹‹ˆ   QSè/6  ƒÄ‹Ct‹Ğ“yÆ  ‹ÎÁéÑ…Òt‹“ÚÆ  +Ğ¸   +“yÆ  Áî+Ö‰S|ë3À_^[‹å]ÃU‹ìƒÄØ3ÀSVW‹ø‹]‰EìÇEØ');
  writeln(txt,'   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹U ·U¼v‰MÜ‹Cx‰Eüƒ}ü 8  ƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèu4  Y‹ÎÓàøƒÆƒşrÑ÷Ç   „5  ÑïNÿ');
  writeln(txt,'Müë*ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSè24  Y‹ÎÓàøƒÆ;urÑ‹×÷Ò#Uä‹ÂÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éØ  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹y');
  writeln(txt,'Æ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè¶3  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï‹Mè+ò‹Uì‹ƒˆ   ŠIˆÿEì');
  writeln(txt,'‹Uì;“„   …Ö  j ‹UìRPSè54  ƒÄ3À‰EØ‰Eìé¹  ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèı2  Y‹ÎÓàøƒÆƒşrÑ‹×Áïƒâ?‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒu');
  writeln(txt,'Æ  3ÒŠë	Sè¾2  Y‹Ğ‹ÎÓâúƒÆ;u rÏ‹Ç÷Ğ#EÜÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ');
  writeln(txt,'  3ÒŠë	SèB2  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ');
  writeln(txt,'  3ÒŠë	Sè¾1  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'	SèB1  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒu');
  writeln(txt,'Æ  3ÀŠëSè½0  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹Mğë‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv');
  writeln(txt,'‹Mğë‹Mì+Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôƒ}Ø t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPèÜ›  ƒÄ‹UøUì‹MøMğëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè7›  ƒÄ‹MøMì‹E');
  writeln(txt,'øEğë‹ƒˆ   ‹UğŠR‹MìZˆÿEğÿEìÿMøuá‹Eì;ƒ„   uj ‹MìQ‹ƒˆ   PSè0  ƒÄ3Ò‰UØ‰Uìƒ}ô …Øşÿÿƒ}ü Èúÿÿj ‹EìP‹‹ˆ   QSèO0  ƒÄ‹Ct‹Ğ“yÆ  ‹');
  writeln(txt,'ÎÁéÑ…Òt‹“ÚÆ  +Ğ¸   +“yÆ  Áî+Ö‰S|ë3À_^[‹å]ÃU‹ìƒÄÜ3ÀSVW‹ø‹]‰EìÇEÜ   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹Sx‰Uüƒ}ü x  ƒşs/ÿ‹yÆ  x');
  writeln(txt,'‹‹uÆ  ÿƒuÆ  3ÀŠëSè£.  Y‹ÎÓàøƒÆƒşrÑ÷Ç   tyÑïNÿMüƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèa.  Y‹ÎÓàøƒÆƒşrÑ‹ƒˆ   ‹Uì‹ÏˆÿEì‹Uì;“„   u');
  writeln(txt,'j ‹MìQPSè)/  ƒÄ3À‰EÜ‰EìÁïƒîé¹  ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèë-  Y‹ÎÓàøƒÆƒşrÑ‹×Áïƒâ‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'	Sè¬-  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'Sè0-  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'	Sè¬,  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EäÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'Sè0,  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè«');
  writeln(txt,'+  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹Mğë‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv‹Mğë‹Mì+Á‰Eø;E');
  writeln(txt,'ôv‹Uôë‹Uø‰Uø)Uôƒ}Ü t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPèÊ–  ƒÄ‹UøUì‹MøMğëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè%–  ƒÄ‹MøMì‹EøEğë‹ƒˆ   ‹UğŠR‹');
  writeln(txt,'MìZˆÿEğÿEìÿMøuá‹Eì;ƒ„   uj ‹MìQ‹ƒˆ   PSèo+  ƒÄ3Ò‰UÜ‰Uìƒ}ô …Øşÿÿƒ}ü ˆûÿÿj ‹EìP‹‹ˆ   QSè=+  ƒÄ‹Ct‹È‹“yÆ  Ê‹şÁïÏ…Ét‹‹ÚÆ  +È¸');
  writeln(txt,' Áî+Ê+Î‰K|ë3À_^[‹å]ÃU‹ìƒÄÜ3ÀSVW‹ø‹]‰EìÇEÜ   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹Sx‰Uüƒ}ü x  ƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè“)  Y‹ÎÓà');
  writeln(txt,'øƒÆƒşrÑ÷Ç   tyÑïNÿMüƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèQ)  Y‹ÎÓàøƒÆƒşrÑ‹ƒˆ   ‹Uì‹ÏˆÿEì‹Uì;“„   uj ‹MìQPSè*  ƒÄ3À‰EÜ‰EìÁïƒîé¹');
  writeln(txt,' ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèÛ(  Y‹ÎÓàøƒÆƒşrÑ‹×Áïƒâ?‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sèœ(  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ');
  writeln(txt,'@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè (  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹U');
  writeln(txt,'èÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sèœ Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EäÀ@E‰Eè3ÒŠ');
  writeln(txt,'‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰M');
  writeln(txt,'øƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè›&  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹M');
  writeln(txt,'ğë‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv‹Mğë‹Mì+Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôƒ}Ü t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPèº‘  ƒÄ‹UøUì‹MøMğ');
  writeln(txt,'ëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè‘  ƒÄ‹MøMì‹EøEğë‹ƒˆ   ‹UğŠR‹MìZˆÿEğÿEìÿMøuá‹Eì;ƒ');
  closefile(txt);
  result := true;

  except
    result := false;
  end;
end;


function tfrmPrincipal.Cria_DLL_Registro_servidor(rexpirado,rinstalacao,rdata,rtermino,rempresa,rrsocial,rcnpj:string):boolean;
var txt : textfile;
arquivo : string;
begin

  //showmessage('cria dll estacao');

  arquivo := '';

  if FileExists('\\'+frmmodulo.Conexao.HostName+'\c\DataSAC\server\dll\ECFCom.dll') then
     arquivo := '\\'+frmmodulo.Conexao.HostName+'\c\DataSAC\server\dll\ECFCom.dll';

  if FileExists('\\'+frmmodulo.Conexao.HostName+'\DataSAC\server\dll\ECFCom.dll') then
     arquivo := '\\'+frmmodulo.Conexao.HostName+'\DataSAC\server\dll\ECFCom.dll';

  if FileExists('\\'+frmmodulo.Conexao.HostName+'\DataSAC\server\dll\ECFCom.dll') then
     arquivo := '\\'+frmmodulo.Conexao.HostName+'\DataSAC\server\dll\ECFCom.dll';


  if FileExists('\\'+frmmodulo.Conexao.HostName+'\dll\ECFCom.dll') then
     arquivo := '\\'+frmmodulo.Conexao.HostName+'\dll\ECFCom.dll';


  if arquivo = '' then
  begin
    application.messagebox('Não foi possível detectar um compartilhamento válido da pasta DataSAC no servidor!'+
                           'Favor compartilhar a pasta DataSAC no servidor para prosseguir!','Erro',
                           mb_ok+mb_iconerror);
    application.Terminate;
  end;





 try
  assignfile(txt, arquivo);
  rewrite(txt);
  writeln(txt,' PèCQ ÿ5pè- ÃÃƒ=p rè¿ÿÿÿÿ5pè¯, Ãƒ=p u');
  writeln(txt,'è˜, £pÿ5pè , …ÀtÃè');
  writeln(txt,'ÿÿÿ¡pPè‹,');
  writeln(txt,' Ã3ÀU£,Ê¸   ‹ì]Â U‹ìSVW‹}‹u‹]…öu3Àéø   èù   ƒóÿƒÿ‚Ä   3ÒƒïŠF3Óâÿ   Áë‹3Ë3ÒŠ');
  writeln(txt,'‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ');
  writeln(txt,'Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ë3ÒŠ‹Ù3ÓFâÿ   Áë‹3Ëƒÿ‹Ùƒ<ÿÿÿ…ÿt3ÒŠF3Óâÿ   Áë‹3ËO‹Ùuæ‹Ãƒğÿ_^');
  writeln(txt,'[]Ã¸qÃU‹ì‹E‹€Ç  %ÿÿ  ƒÈ‹Ğƒò¯ĞÁêâÿ   ‹Â]ÃU‹ìSV‹E‹U‹ˆ–Ç  ‹°iÆ  ‹Ù3Úãÿ   Áé‹3Ù‰˜–Ç');
  writeln(txt,'ãÿ   ˜šÇ  iˆšÇ  „A‰ˆšÇ  Áé‹˜Ç  3Ë‹°iÆ  áÿ   Áë‹3Ë‰ˆÇ  ‹Â^[]ÃU‹ìSV‹]‹uÇ†–Ç  xV4Ç†šÇ');
  writeln(txt,'‰gE#Ç†Ç  xV4ë¾ÀPVèSÿÿÿƒÄCŠ„Àuì^[]ÃU‹ìƒÄğSVW‹]‹ƒyÆ  PhuSè®  ƒÄ‹“e  €bşSèËI  Y3ö}ğÿ‹yÆ');
  writeln(txt,'x‹ƒuÆ  ÿƒuÆ  ¶ ëSèÂJ  YˆFGƒş|×SèBI  Y‹“e  €JhuSèP  ƒÄƒ»ûÖ   u');
  writeln(txt,'Œí   3Ò‰ShhFuSè  ƒÄƒ{P…˜   ‹‹¦Ç  Qh^uSèõ  ƒÄƒ»¢Ç   uThsuSèŞ  ƒÄjQè€¥  Y‹ğ‰³¢Ç  …öu');
  writeln(txt,'   é  jP‹“¦Ç  RVèf¸  ƒÄ»9Ú'+cript('C',rexpirado));   // 11
  writeln(txt,'Çƒ’Ç     »9Ú      |RjQ‹‹¦Ç  '+cript('C',rinstalacao)); // 12
  writeln(txt,'}#h‡uSèO  ƒÄ‹“¢Ç  Rèü¤  Y3'+cript('C',rdata));       // 13
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rtermino));    // 14
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rempresa));    // 15
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rrsocial));    // 16
  writeln(txt,'  ƒÄ‹³ûÖ  ÇEü   »9Ú      Œ'+cript('C',rcnpj));       // 17
  //writeln(txt,'   t+“×  R‹‹¢Ç  Qè	M EğPSèÍ   ƒÄ…Àu3Àé¶   ƒ»×  tÇƒ’Ç     ÇEü   ‹“×  ƒâ;Uü}‹³×  ƒæëb‹uüë]Sè]q');
  //writeln(txt,'  Y‹øƒÿu‹ƒ¢Ç  PèÁ£  Y3Ò‰“¢Ç  ¸   ëT…ÿt‹“¢Ç  3öÆ EğPSèD   ƒÄ…Àu3Àë0ƒÿşu');
  writeln(txt,'„öşÿÿ¸   _^[‹å]ÃU‹ìSVW‹]‹ƒ¢Ç  Pè)L @Pè(£  Y‹ø…ÀuƒÈÿëg‹“¢Ç  RWè«R  ƒÄP‹MQSèQ   ƒÄ‹ğ…öt ‹ƒ¢Ç  PWè¿R  ƒÄP');
  writeln(txt,'‹URSè-   ƒÄ‹ğWèâ¢  Y…öt‹ƒ¢Ç  P‹URSè   ƒÄ‹ğ‹Æ_^[]ÃU‹ìƒÄôSVW‹]‹EPSèŞûÿÿƒÄj‹URMôQè²  ƒÄ3ÿuôSèûÿÿY0Š');
  writeln(txt,'3ÒŠĞRSè6ûÿÿƒÄ3ÉŠQhvSè«  ƒÄGFƒÿ|Í‹ƒe  ö@tºDvëºIvR‹@P‹‹ÖÆ  Qh	vSèr  ƒÄ‹ƒuÆ  ƒ­Æ  +ƒqÆ  P‹“yÆ');
  writeln(txt,'  RhOvSèJ  ƒÄ¶uÿ·ƒÒÆ  ÁøP‹“ÖÆ  Áê·ÊQ·şWh~vSè  ƒÄ‹ƒe  ö@t·“ÒÆ  Áúë‹“ÖÆ  Áê·Ò;útƒÈÿëC‹‹yÆ  ;');
  writeln(txt,'Kt~‹{të‹»yÆ  ‹³uÆ  ëSèúÿÿY0Š3ÒŠĞRSè0úÿÿƒÄF‹ÏƒÇÿ…Éuİ3À_^[‹å]Ã¸ª   Ã¸lB  ÃU‹ìSV3ÀW£0Ê3ÿ¡,Ê‹u…Àt…öu');
  writeln(txt,'Ç€&Ñ  ÿÿÿÿƒÈÿé  …öu3Àéı  èWS  ‹ØSè‹S  Y‰,Ê‹‰ƒ:Ñ  ‹V‰“>Ñ  ‹N‰‹BÑ  ‹F‰ƒ"Ñ  f‹Vf‰“7Ú  ‹N‰‹9Ú  h¸|Sèâ  ƒÄ ');
  writeln(txt,'~—   ~ƒ¾   u¿   ëƒ~Hu¿   …ÿu*hÙ|j h jSèû  ƒÄèßR  3À£,Ê3ÀéR  ƒ~D u+hñ|j h jSèË  ƒÄè¯R');
  writeln(txt,'3Ò3À‰,Êé!  ~ª   thh');
  writeln(txt,'}»"É  WèøH ~ª   }¸-}ë¸3}PWèÖH ~ª   ~h9}“"É  Rè¼H ƒ~( uSè˜  YhlB  ‹"É');
  writeln(txt,'  Qè  ƒÄhO}Sèà  ƒÄVSè¢   ƒÄ…Àtrƒ»"Ñ   tÇCD   hx}hlB  h^}SèÆ  ƒÄ~    |ƒ»•Æ   t	Sè=  YëSè–m');
  writeln(txt,' Yh…}Sèz  ƒÄƒ{D t‹ƒ.Ñ  Ph°}è  ƒÄ‹³.Ñ  Sè¥b  YSèş  YèˆQ  3À£,Ê‹Æ_^[]Â U‹ìSVW‹u‹]‹F,‰CD‹V(‰S,hÄ}Sè');
  writeln(txt,'ÇCd   ÇC   ‹NƒÄ‰K8ÇC<   ‹F8‰C`‹F8ƒø‰CÒ÷Ú‰S‹N$‰Kƒ> uÇC,   ‹F0‰C@‹V4‰Sƒ~< tÇC(   ‹N@‰KT°PˆƒÇÆ  ˆƒÂÆ  ˆƒ½Æ');
  writeln(txt,' h  jè‚F ‹ø‰»#Ú  …ÿu3Àé%  WèuF ‰ƒ‘Æ  ‹VDR‹‹‘Æ  QèG ‹F…ÀtKPèG …À~AjQè');
  writeln(txt,'  Y‹ø‰»¦Ç  …ÿu3Àéİ  ‹VRWèİF ‹‹¦Ç');
  writeln(txt,'QhÛ}Sè1  ƒÄÇCP   ~    |‹Fhƒàë¸   ‰ƒûÖ  h  jèÙE ‹ø‰»Ú  …ÿu3Àé|  WèÌE ‰ƒÆ  ‹VDR‹‹Æ  QèjF ~    |ƒ~');
  writeln(txt,'\ u{»"Ç  W‹ƒ‘Æ  Pè>É  ƒÄ…Àu¿“&Ç  â ğ  ú @  uhú}‹‹‘Æ  QèF W‹ƒ‘Æ  PèÉ  ƒÄ…Àt‹“‘Æ  Rhÿ}èğ  ƒÄ3Àéâ  ‹“6Ç');
  writeln(txt,' ‰“©Æ  ƒ~@ u	ÇC\   ëh~—   ~‹NH‰‹˜   ëT‹F@@‹ĞÁâÒRjBèéD ‹ø‰»/Ú  …ÿt4WèãD ‰ƒ3Ú  ‰ƒ˜   3ÀVLë‹»˜   À@ÏQ_‹');
  writeln(txt,'‰;F@|å‹Fl‰ƒÿÖ  ‹S\R‹N@Qh"~Sè³  ƒÄh   jè~D ‹ø‰»Ú  …ÿtWèxD ‰ƒqÆ  h€  jèZD ‹ø‰»Ú  …ÿtWèTD ‰ƒvÇ  h  jè6D');
  writeln(txt,' ‹ø‰»+Ú  …ÿtWè0D ‰ƒŠÇ  ‹ƒqÆ  …Àtƒ»vÇ   tƒ»‘Æ   t	ƒ»ŠÇ   u3Àé¨       ‰ƒ¹Æ  ~    |!ƒ~\ t‹V\‰“•Æ  ‹N`‰‹™Æ  ‹Fd‰ƒ');
  writeln(txt,'Æ  ~    |eƒ~P t_Çƒ€      ‹VX‰“”   ‹NT‰‹Œ   ƒ»•Æ   t‹ƒvÇ  ‰ƒˆ   Çƒ    €  ë‹“Œ   ‰“ˆ   ‹NX‰‹   ƒ»Œ    u3Àë¸   _^');
  writeln(txt,'[]ÃU‹ìS‹]‹ƒ/Ú  …Àtƒ»3Ú   tPè:C ‹“/Ú  RèC ‹ƒÚ  …Àtƒ»qÆ');
  writeln(txt,'  tPèC ‹“Ú  Rè÷B ‹ƒÚ  …Àtƒ»vÇ   tPèğB ‹“Ú  RèÒB ‹ƒ#Ú  …Àtƒ»‘Æ   tPèËB ‹“#Ú  Rè­B ‹ƒÚ  …Àtƒ»Æ   tPè¦');
  writeln(txt,'B ‹Ú  RèˆB ‹ƒ+Ú  …Àtƒ»ŠÇ   tPèB ‹“+Ú  RècB ‹ƒ¢Ç  …ÀtPè/š  Y[]ÃU‹ìSVWèiL  ‹øh @  jè-B ‹Ø…ÀtESè-B ‹ğ…Àt3E');
  writeln(txt,'P‹URhÿ  Vè–Ó  ƒÄÆ†ÿ   Vj j jWèS  ƒÄSè B SèèA 3À_^[]ÃU‹ìSVW‹uƒ¾"Ñ   teh @  jè¼A ‹Ø…ÀtSSè¼A ‹ø…ÀtAhD~Wè_B E');
  writeln(txt,'OP‹URhô  QèÓ  ƒÄÆ‡ÿ   Wj j jVèÔ   ƒÄSèA SèiA _^[]ÃU‹ìÄ øÿÿSV‹u‹:Ñ  …Ûuè3B ‹ØhP~… øÿÿPèîA hë  Æ"É  V');
  writeln(txt,'… øÿÿPèğª  ƒÄ• øÿÿj he~RSè÷A ^[‹å]ÃU‹ìÄ şÿÿS‹]ƒ{D t?h|~… şÿÿPè’A hô  ‹UR şÿÿQè—ª  ƒÄ… şÿÿPj j jSè');
  writeln(txt,' ƒÄ[‹å]ÃU‹ìSV‹u‹U‹Eƒ¾BÑ   ×  tj‹:Ñ  ‰‹>Ñ  ‰K3ÉÇCª   ‰K‹M‰K¾9Ú  ‘   ');
  writeln(txt,'‹È€áÿ¾Éë‹È‰K…Ò‹E‰CuÆC ëh ');
  writeln(txt,'RSRèê@ Sÿ–BÑ  	†&Ñ  ^[]ÃU‹ìÄ ÿÿÿSV‹u‹]‹Æ%  ÿ Áøƒ»6Ñ   …Ä   Çƒ6Ñ     ‰ƒ*Ñ  ƒøuh   “"É  R ÿÿÿQèƒ@ ë<ş');
  writeln(txt,' u ‹“‘Æ  R‹…àvP ÿÿÿQèîÑ  ƒÄë‹…àvP• ÿÿÿRè?@ ƒ»2Ñ   t; ÿÿÿQj j jSèÅşÿÿƒÄ… ÿÿÿ“"É  VPhˆ~RèÑ  ƒÄSèàıÿÿ');
  writeln(txt,'Yë ÿÿÿQj VjSè‹şÿÿƒÄ^[‹å]ÃU‹ìS‹]è@I  SPèùşÿÿƒÄj j j SèJ? []ÃU‹ìQSVW‹]ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè>;  Y‹ĞB3');
  writeln(txt,'ö‰Uüÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  ¶8ë	Sè;  Y‹ø‹Ççğ   ÁïƒàG@7;Uv¸   ë‹U‰²FOuöÿMüu°;ut¸   ë3À_^[Y]ÃU‹ìƒÄØ3ÀSVW‹ø‹]');
  writeln(txt,'‰EìÇEØ   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹U ·U¼v‰MÜ‹Cx‰Eüƒ}ü 8  ƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèU:  Y‹ÎÓàøƒÆƒşrÑ');
  writeln(txt,'÷Ç   „5  ÑïNÿMüë*ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSè:  Y‹ÎÓàøƒÆ;urÑ‹×÷Ò#Uä‹ÂÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éØ  ‹Mè3ÒŠA');
  writeln(txt,'ƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè–9  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹');
  writeln(txt,'ÈŠĞÓï‹Mè+ò‹Uì‹ƒˆ   ŠIˆÿEì‹Uì;“„   …Ö  j ‹UìRPSè:  ƒÄ3À‰EØ‰Eìé¹  ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèİ8  Y‹ÎÓàøƒÆƒşrÑ‹');
  writeln(txt,'×Áïƒâ‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè8  Y‹Ğ‹ÎÓâúƒÆ;u rÏ‹Ç÷Ğ#EÜÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd  ‹Mè3ÒŠA');
  writeln(txt,'ƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè"8  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹È');
  writeln(txt,'ŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè7  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd');
  writeln(txt,' ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè"7  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹E');
  writeln(txt,'è3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè6  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹Mğë');
  writeln(txt,'‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv‹Mğë‹Mì+Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôƒ}Ø t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPè¼¡  ƒÄ‹Uø');
  writeln(txt,'Uì‹MøMğëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè¡  ƒÄ‹MøMì‹EøEğë‹ƒˆ   ‹UğŠR‹MìZˆÿEğÿEìÿMøuá‹Eì;ƒ„   uj ‹MìQ‹ƒˆ   PSèa6  ƒÄ3Ò‰');
  writeln(txt,'UØ‰Uìƒ}ô …Øşÿÿƒ}ü Èúÿÿj ‹EìP‹‹ˆ   QSè/6  ƒÄ‹Ct‹Ğ“yÆ  ‹ÎÁéÑ…Òt‹“ÚÆ  +Ğ¸   +“yÆ  Áî+Ö‰S|ë3À_^[‹å]ÃU‹ìƒÄØ3ÀSVW‹ø‹]‰EìÇEØ');
  writeln(txt,'   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹U ·U¼v‰MÜ‹Cx‰Eüƒ}ü 8  ƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèu4  Y‹ÎÓàøƒÆƒşrÑ÷Ç   „5  ÑïNÿ');
  writeln(txt,'Müë*ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSè24  Y‹ÎÓàøƒÆ;urÑ‹×÷Ò#Uä‹ÂÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éØ  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹y');
  writeln(txt,'Æ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè¶3  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï‹Mè+ò‹Uì‹ƒˆ   ŠIˆÿEì');
  writeln(txt,'‹Uì;“„   …Ö  j ‹UìRPSè54  ƒÄ3À‰EØ‰Eìé¹  ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèı2  Y‹ÎÓàøƒÆƒşrÑ‹×Áïƒâ?‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒu');
  writeln(txt,'Æ  3ÒŠë	Sè¾2  Y‹Ğ‹ÎÓâúƒÆ;u rÏ‹Ç÷Ğ#EÜÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ');
  writeln(txt,'  3ÒŠë	SèB2  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ');
  writeln(txt,'  3ÒŠë	Sè¾1  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éd  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'	SèB1  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒu');
  writeln(txt,'Æ  3ÀŠëSè½0  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹Mğë‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv');
  writeln(txt,'‹Mğë‹Mì+Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôƒ}Ø t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPèÜ›  ƒÄ‹UøUì‹MøMğëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè7›  ƒÄ‹MøMì‹E');
  writeln(txt,'øEğë‹ƒˆ   ‹UğŠR‹MìZˆÿEğÿEìÿMøuá‹Eì;ƒ„   uj ‹MìQ‹ƒˆ   PSè0  ƒÄ3Ò‰UØ‰Uìƒ}ô …Øşÿÿƒ}ü Èúÿÿj ‹EìP‹‹ˆ   QSèO0  ƒÄ‹Ct‹Ğ“yÆ  ‹');
  writeln(txt,'ÎÁéÑ…Òt‹“ÚÆ  +Ğ¸   +“yÆ  Áî+Ö‰S|ë3À_^[‹å]ÃU‹ìƒÄÜ3ÀSVW‹ø‹]‰EìÇEÜ   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹Sx‰Uüƒ}ü x  ƒşs/ÿ‹yÆ  x');
  writeln(txt,'‹‹uÆ  ÿƒuÆ  3ÀŠëSè£.  Y‹ÎÓàøƒÆƒşrÑ÷Ç   tyÑïNÿMüƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèa.  Y‹ÎÓàøƒÆƒşrÑ‹ƒˆ   ‹Uì‹ÏˆÿEì‹Uì;“„   u');
  writeln(txt,'j ‹MìQPSè)/  ƒÄ3À‰EÜ‰EìÁïƒîé¹  ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèë-  Y‹ÎÓàøƒÆƒşrÑ‹×Áïƒâ‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'	Sè¬-  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'Sè0-  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'	Sè¬,  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EäÀ@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë');
  writeln(txt,'Sè0,  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè«');
  writeln(txt,'+  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹Mğë‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv‹Mğë‹Mì+Á‰Eø;E');
  writeln(txt,'ôv‹Uôë‹Uø‰Uø)Uôƒ}Ü t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPèÊ–  ƒÄ‹UøUì‹MøMğëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè%–  ƒÄ‹MøMì‹EøEğë‹ƒˆ   ‹UğŠR‹');
  writeln(txt,'MìZˆÿEğÿEìÿMøuá‹Eì;ƒ„   uj ‹MìQ‹ƒˆ   PSèo+  ƒÄ3Ò‰UÜ‰Uìƒ}ô …Øşÿÿƒ}ü ˆûÿÿj ‹EìP‹‹ˆ   QSè=+  ƒÄ‹Ct‹È‹“yÆ  Ê‹şÁïÏ…Ét‹‹ÚÆ  +È¸');
  writeln(txt,' Áî+Ê+Î‰K|ë3À_^[‹å]ÃU‹ìƒÄÜ3ÀSVW‹ø‹]‰EìÇEÜ   ‹ğ‹E·E¼v‰Uä‹M·M¼v‰Eà‹Sx‰Uüƒ}ü x  ƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè“)  Y‹ÎÓà');
  writeln(txt,'øƒÆƒşrÑ÷Ç   tyÑïNÿMüƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèQ)  Y‹ÎÓàøƒÆƒşrÑ‹ƒˆ   ‹Uì‹ÏˆÿEì‹Uì;“„   uj ‹MìQPSè*  ƒÄ3À‰EÜ‰EìÁïƒîé¹');
  writeln(txt,' ÑïNƒşs/ÿ‹yÆ  x‹“uÆ  ÿƒuÆ  3ÀŠëSèÛ(  Y‹ÎÓàøƒÆƒşrÑ‹×Áïƒâ?‰Uğƒîë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sèœ(  Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EàÀ');
  writeln(txt,'@E‰Eè3ÒŠ‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè (  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹U');
  writeln(txt,'èÀ3É@B‰EèŠ‰Møƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞÓï+ò‹Uè‹Eì·J+Eğ+Á‰Eğë,ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sèœ Y‹Ğ‹ÎÓâúƒÆ;urÏ‹Ç÷Ğ#EäÀ@E‰Eè3ÒŠ');
  writeln(txt,'‰Uøƒú†‰   ƒ}øcu');
  writeln(txt,'¸   éb  ‹Mè3ÒŠAƒmø‹ÈŠĞÓï+ò;uøs1ÿ‹yÆ  x‹ƒuÆ  ÿƒuÆ  3ÒŠë	Sè  Y‹Ğ‹ÎÓâúƒÆ;uørÏ‹Uø‹Ç÷Ğ·U¼v#Á‹UèÀ3É@B‰EèŠ‰M');
  writeln(txt,'øƒù‡wÿÿÿ‹Eè3ÒŠ@‹ÈŠĞ‹Eè+òÓï·P‰Uôƒ}ø tEƒşs/ÿ‹yÆ  x‹‹uÆ  ÿƒuÆ  3ÀŠëSè›&  Y‹ÎÓàøƒÆƒşrÑ‹×âÿ   UôÁïƒî‹Eü+Eô‰Eüƒ»€    t0‹Uğ;Uìv‹M');
  writeln(txt,'ğë‹Mì‹ƒ„   +Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôë4‹ƒ„   ‹ÈI!Mğ‹Uğ;Uìv‹Mğë‹Mì+Á‰Eø;Eôv‹Uôë‹Uø‰Uø)Uôƒ}Ü t.‹Eì;Eğw&‹MøQj ‹ƒˆ   EìPèº‘  ƒÄ‹UøUì‹MøMğ');
  writeln(txt,'ëT‹Eì+Eğ;Eør*‹UøR‹ƒˆ   ‹ĞUğREìPè‘  ƒÄ‹MøMì‹EøEğë‹ƒˆ   ‹UğŠR‹MìZˆÿEğÿEìÿMøuá‹Eì;ƒ');
  closefile(txt);
  result := true;

  except
    result := false;
  end;
end;


procedure TfrmPrincipal.bfinanceiraClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.08') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmFinanceira := tfrmFinanceira.create(self);
  frmFinanceira.showmodal;

  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.ArquivoLOG1Click(Sender: TObject);
begin
  if frmprincipal.autentica('Log de Usuários',nivel_exclusao) then
  begin
    frmusuario_log := tfrmusuario_log.create(self);
    frmusuario_log.showmodal;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;



procedure TfrmPrincipal.Cidades1Click(Sender: TObject);
begin
  frmcidade := tfrmcidade.create(self);
  frmcidade.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton6Click(Sender: TObject);
begin
  frmTef := tfrmtef.create(self);
  frmTef.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton7Click(Sender: TObject);
begin
  frmproduto_pedido := tfrmproduto_pedido.create(self);
  frmproduto_pedido.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton10Click(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'04.09') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmcartao := tfrmcartao.create(self);
  frmcartao.showmodal;

  TAdvGlowButton(sender).setfocus;
end;

function tfrmprincipal.nao_arredonda(valor:real):real;
var txt_desconto : string;
i : integer;
begin
  txt_desconto := formatfloat('#############0.00000000000',valor);
  i := pos(',',txt_desconto);
  if i > 0 then
  begin
    txt_desconto :=
    copy(txt_desconto,1,i-1)+','+
    copy(txt_desconto,i+1,2);

    result := strtofloat(txt_desconto);

  end
  else
    result := valor;


end;

function tfrmprincipal.FormataCEP(const CEP: string): string;
var
  I: integer;
begin
  Result := '';
  for I := 1 to Length(CEP) do
  if CEP[I] in ['0'..'9'] then
  Result := Result + CEP[I];

  //if Length(Result) <> 8 then
  //raise Exception.Create('CEP inválido.')
  //else
  if Copy(Result, 1, 5) = '' then
    Result := ''
  else
    Result := Copy(Result, 1, 5) + '-' + Copy(Result, 6, 3);
end;

procedure TfrmPrincipal.CNAE1Click(Sender: TObject);
begin
  frmcnae := tfrmcnae.create(self);
  frmcnae.showmodal;
end;

procedure TfrmPrincipal.amanho1Click(Sender: TObject);
begin
  frmtamanho := tfrmtamanho.create(self);
  frmtamanho.showmodal;
end;

procedure TfrmPrincipal.Cores1Click(Sender: TObject);
begin
  frmcor := tfrmcor.create(self);
  frmcor.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton8Click(Sender: TObject);
begin
  frmlista_abc_marca_grupo := Tfrmlista_abc_marca_grupo.CREATE(SELF);
  frmlista_abc_marca_grupo.ShowModal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.AdvGlowButton9Click(Sender: TObject);
begin
  frmlista_frete := tfrmlista_frete.create(self);
  frmlista_frete.showmodal;
end;

procedure TfrmPrincipal.AdvGlowButton11Click(Sender: TObject);
begin
  frmfluxo_caixa := tfrmfluxo_caixa.create(self);
  frmfluxo_caixa.showmodal;
end;

procedure TfrmPrincipal.DREClick(Sender: TObject);
begin
  FRMDRE := TFRMDRE.CREATE(SELF);
  FRMDRE.SHOWMODAL;
end;

function TfrmPrincipal.Arredondar(Value: Extended; Decimals: integer): Extended;
var
  Factor, Fraction: Extended;
begin
  Factor := IntPower(10, Decimals);
  { A conversão para string e depois para float evita
    erros de arredondamentos indesejáveis. }
  Value := StrToFloat(FloatToStr(Value * Factor));
  Result := Int(Value);
  Fraction := Frac(Value);
  if Fraction >= 0.5 then
    Result := Result + 1
  else if Fraction <= -0.5 then
    Result := Result - 1;
  Result := Result / Factor;
end;

procedure TfrmPrincipal.Label12Click(Sender: TObject);
begin
  alerta_copia.CloseDelay := 1;
     if efetua_Backup = false then
    begin
     if  application.MessageBox('Erro ao efetuar backup! Deseja prosseguir a usar o DataSAC?','Aviso',mb_yesno+mb_iconwarning) = idno then exit;
    end;
end;

procedure TfrmPrincipal.BINDUSTRIALIZACAOClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.09') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;

  frmindustrializacao := tfrmindustrializacao.create(self);
  frmindustrializacao.showmodal;
  TAdvGlowButton(sender).setfocus;
end;

procedure TfrmPrincipal.NCMNomenclaturaMercosul1Click(Sender: TObject);
begin
  frmNcm := tfrmNcm.create(self);
  frmNcm.showmodal;
end;

procedure TfrmPrincipal.CSOSNCdigodaOperaodeSituaodoSimplesNacional1Click(
  Sender: TObject);
begin
  frmxloc_csosn := tfrmxloc_csosn.create(self);
  frmxloc_csosn.showmodal;
end;

procedure TfrmPrincipal.BSpedClick(Sender: TObject);
begin
  If frmprincipal.acesso(codigo_usuario,'03.07') = 'NAO' then
  begin
    application.messagebox('Acesso não permitido!','Atenção',mb_ok+MB_ICONERROR);
    exit;
  end;
  frmprincipal.ExecutePrograma('\DataSAC\server\DataSped.exe','');
end;

end.
