unit config;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Collection, ComCtrls, ExtCtrls, StdCtrls, Buttons,
  TFlatPanelUnit, Spin, Mask, rxtooledit, rxcurredit, RXDBCtrl, DBCtrls, DB,
  ExtDlgs, wwdbedit, Wwdbspin, wwdblook, PageView, Wwdotdot, Wwdbcomb,
  Menus, ZAbstractRODataset, ZAbstractDataset, ZDataset, Wwdatsrc,
  AdvGlowButton, RzPanel, RzRadGrp, RzDBRGrp, ACBrNFe, RzEdit,
  IdBaseComponent, IdComponent, IdTCPConnection, IdTCPClient, IdFTP, IniFiles,
  RzCmboBx, RzDBEdit, RzDBBnEd, RzBorder;

type
    TDadosFtp  = record
     Host    : string;
     Usuario : string;
     Senha   : string;
     Caminho : string;
     Passivo : string;
     // Coloquei para atender a WA.
     Port          : String;
     ProxyHost     : string;
     ProxyPassword : string;
     ProxyPort     : string;
     ProxyTipo     : String;
     ProxyType     : TIdFtpProxyType;
     ProxyUserName : string;
end;
  
type
  Tfrmconfig = class(TForm)
    dsemitente: TDataSource;
    dsconfig: TDataSource;
    OpenPictureDialog1: TOpenPictureDialog;
    pop1: TPopupMenu;
    Gravar1: TMenuItem;
    Aplicar1: TMenuItem;
    Cancelar1: TMenuItem;
    QUERY: TZQuery;
    PageView3: TPageView;
    PageSheet7: TPageSheet;
    GroupBox10: TGroupBox;
    Label31: TLabel;
    Label32: TLabel;
    wwDBSpinEdit1: TwwDBSpinEdit;
    wwDBSpinEdit2: TwwDBSpinEdit;
    GroupBox12: TGroupBox;
    Rramo_padrao: TRadioButton;
    rramo_supermercado: TRadioButton;
    rramo_auto: TRadioButton;
    rramo_farmacia: TRadioButton;
    PageSheet10: TPageSheet;
    GroupBox1: TGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    GroupBox4: TGroupBox;
    Label22: TLabel;
    Label38: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    DBEdit17: TDBEdit;
    DBEdit19: TDBEdit;
    combo_os: TComboBox;
    combo_venda: TComboBox;
    DBEdit42: TDBEdit;
    combo_orcamento: TComboBox;
    GroupBox2: TGroupBox;
    DBCheckBox1: TDBCheckBox;
    DBCheckBox4: TDBCheckBox;
    DBCheckBox5: TDBCheckBox;
    DBCheckBox7: TDBCheckBox;
    DBCheckBox8: TDBCheckBox;
    GroupBox3: TGroupBox;
    Label1: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    RxDBCalcEdit1: TRxDBCalcEdit;
    RxDBCalcEdit2: TRxDBCalcEdit;
    RxDBCalcEdit3: TRxDBCalcEdit;
    PageSheet11: TPageSheet;
    GroupBox9: TGroupBox;
    DBCheckBox2: TDBCheckBox;
    DBCheckBox3: TDBCheckBox;
    GroupBox11: TGroupBox;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label57: TLabel;
    RxDBCalcEdit4: TRxDBCalcEdit;
    RxDBCalcEdit5: TRxDBCalcEdit;
    RxDBCalcEdit6: TRxDBCalcEdit;
    DBCheckBox6: TDBCheckBox;
    RxDBCalcEdit7: TRxDBCalcEdit;
    RxDBCalcEdit8: TRxDBCalcEdit;
    GroupBox14: TGroupBox;
    wwDBLookupCombo1: TwwDBLookupCombo;
    GroupBox15: TGroupBox;
    combo_extrato: TComboBox;
    GroupBox24: TGroupBox;
    Label47: TLabel;
    Label48: TLabel;
    DBEdit46: TDBEdit;
    wwDBComboBox1: TwwDBComboBox;
    PageSheet12: TPageSheet;
    PageView2: TPageView;
    PageSheet5: TPageSheet;
    BitBtn19: TBitBtn;
    GroupBox23: TGroupBox;
    Label42: TLabel;
    Label45: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label46: TLabel;
    Label51: TLabel;
    DBEdit44: TDBEdit;
    combo_nf: TComboBox;
    DBEdit43: TDBEdit;
    DBEdit47: TDBEdit;
    DBEdit45: TDBEdit;
    Button1: TButton;
    DBEdit50: TDBEdit;
    PageSheet13: TPageSheet;
    pemitente2: TPanel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label37: TLabel;
    DBEdit3: TDBEdit;
    enome: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit13: TDBEdit;
    DBEdit14: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit18: TDBEdit;
    BitBtn4: TBitBtn;
    BitBtn5: TBitBtn;
    PageSheet14: TPageSheet;
    GroupBox5: TGroupBox;
    Label39: TLabel;
    DBComboBox6: TDBComboBox;
    DBEdit41: TDBEdit;
    GroupBox6: TGroupBox;
    Label26: TLabel;
    Label27: TLabel;
    DBComboBox7: TDBComboBox;
    DBComboBox8: TDBComboBox;
    GroupBox7: TGroupBox;
    Label28: TLabel;
    Label29: TLabel;
    DBComboBox9: TDBComboBox;
    DBComboBox10: TDBComboBox;
    GroupBox8: TGroupBox;
    Label30: TLabel;
    DBComboBox11: TDBComboBox;
    PageSheet16: TPageSheet;
    PageView1: TPageView;
    PageSheet1: TPageSheet;
    GroupBox16: TGroupBox;
    DBEdit28: TDBEdit;
    blocregiao: TBitBtn;
    DBEdit30: TDBEdit;
    DBEdit20: TDBEdit;
    GroupBox17: TGroupBox;
    DBEdit21: TDBEdit;
    BitBtn13: TBitBtn;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    PageSheet2: TPageSheet;
    GroupBox18: TGroupBox;
    DBEdit24: TDBEdit;
    BitBtn14: TBitBtn;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    GroupBox19: TGroupBox;
    DBEdit27: TDBEdit;
    BitBtn15: TBitBtn;
    DBEdit29: TDBEdit;
    DBEdit31: TDBEdit;
    PageSheet3: TPageSheet;
    GroupBox20: TGroupBox;
    DBEdit32: TDBEdit;
    BitBtn16: TBitBtn;
    DBEdit33: TDBEdit;
    DBEdit34: TDBEdit;
    GroupBox22: TGroupBox;
    DBEdit38: TDBEdit;
    BitBtn18: TBitBtn;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    PageSheet4: TPageSheet;
    GroupBox21: TGroupBox;
    DBEdit35: TDBEdit;
    BitBtn17: TBitBtn;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    GroupBox13: TGroupBox;
    DBComboBox12: TDBComboBox;
    Bevel1: TBevel;
    bgravar: TAdvGlowButton;
    bcancelar: TAdvGlowButton;
    baplicar: TAdvGlowButton;
    AdvGlowButton1: TAdvGlowButton;
    AdvGlowButton2: TAdvGlowButton;
    BitBtn9: TBitBtn;
    BitBtn10: TBitBtn;
    DBImage1: TDBImage;
    AdvGlowButton3: TAdvGlowButton;
    qrreceber: TZQuery;
    qrvenda: TZQuery;
    Label49: TLabel;
    DBEdit48: TDBEdit;
    GroupBox25: TGroupBox;
    DBComboBox1: TDBComboBox;
    PageSheet8: TPageSheet;
    AdvGlowButton4: TAdvGlowButton;
    qrproduto: TZQuery;
    qrmov: TZQuery;
    GroupBox27: TGroupBox;
    DBCheckBox10: TDBCheckBox;
    combo_entrega: TComboBox;
    Label50: TLabel;
    Label54: TLabel;
    DBEdit49: TDBEdit;
    check_prestacao: TDBCheckBox;
    check_gerar: TDBCheckBox;
    DBCheckBox11: TDBCheckBox;
    DBCheckBox24: TDBCheckBox;
    DBCheckBox25: TDBCheckBox;
    GroupBox29: TGroupBox;
    combo_recibo: TComboBox;
    Label55: TLabel;
    DBEdit53: TDBEdit;
    DBCheckBox13: TDBCheckBox;
    DBCheckBox17: TDBCheckBox;
    retiqueta07: TRzDBRadioGroup;
    RzDBRadioGroup1: TRzDBRadioGroup;
    RzDBRadioGroup2: TRzDBRadioGroup;
    OpenDialog1: TOpenDialog;
    ACBrNFe1: TACBrNFe;
    GroupBox30: TGroupBox;
    DBEdit4: TDBEdit;
    BitBtn1: TBitBtn;
    DBEdit55: TDBEdit;
    DBEdit56: TDBEdit;
    RzGroupBox1: TRzGroupBox;
    DBCheckBox18: TDBCheckBox;
    RzGroupBox2: TRzGroupBox;
    DBCheckBox12: TDBCheckBox;
    PageSheet9: TPageSheet;
    RzGroupBox3: TRzGroupBox;
    RzGroupBox4: TRzGroupBox;
    Label56: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    eftp: TRzEdit;
    eusuario: TRzEdit;
    esenha: TRzEdit;
    Label60: TLabel;
    Label62: TLabel;
    emensagem: TRzEdit;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    Label66: TLabel;
    Label67: TLabel;
    Label68: TLabel;
    eporta: TRzEdit;
    eproxy_host: TRzEdit;
    eproxy_Password: TRzEdit;
    eproxy_username: TRzEdit;
    eproxy_port: TRzEdit;
    Conecta_FTP: TIdFTP;
    Label69: TLabel;
    eproxy_tipo: TRzComboBox;
    RzGroupBox5: TRzGroupBox;
    RichEdit1: TRichEdit;
    epassivo: TRzComboBox;
    esalvars: TDirectoryEdit;
    esalvarc: TDirectoryEdit;
    esalvarf: TDirectoryEdit;
    Label70: TLabel;
    Label71: TLabel;
    euf: TwwDBComboBox;
    DBCheckBox26: TDBCheckBox;
    GroupBox32: TGroupBox;
    Label61: TLabel;
    DBEdit54: TDBEdit;
    PageSheet15: TPageSheet;
    RzGroupBox7: TRzGroupBox;
    Label72: TLabel;
    Label73: TLabel;
    eCliente_Entrada: TRzDBButtonEdit;
    enome_cliente_entrada: TDBEdit;
    enome_cfop_entrada: TDBEdit;
    eCfop_Entrada: TRzDBButtonEdit;
    RzGroupBox6: TRzGroupBox;
    Label74: TLabel;
    Label75: TLabel;
    eCliente_Saida: TRzDBButtonEdit;
    enome_cliente_saida: TDBEdit;
    enome_cfop_saida: TDBEdit;
    eCfop_Saida: TRzDBButtonEdit;
    RzGroupBox9: TRzGroupBox;
    Label76: TLabel;
    Label77: TLabel;
    eCliente_Perda: TRzDBButtonEdit;
    DBEdit9: TDBEdit;
    DBEdit57: TDBEdit;
    eCfop_Perda: TRzDBButtonEdit;
    AdvGlowButton5: TAdvGlowButton;
    Label23: TLabel;
    ecodmunicipio: TDBEdit;
    Label24: TLabel;
    DBEdit51: TDBEdit;
    Label25: TLabel;
    DBEdit52: TDBEdit;
    PageSheet6: TPageSheet;
    rTabelaCor: TRzColorPicker;
    GroupBox26: TGroupBox;
    rCorComercio: TRadioButton;
    rCorMercado: TRadioButton;
    rCorAuto: TRadioButton;
    rCorFarmacia: TRadioButton;
    rCorPosto: TRadioButton;
    bPadrao: TAdvGlowButton;
    RzGroupBox8: TRzGroupBox;
    pImagemLogo: TImage;
    RzPanel1: TRzPanel;
    bincluir: TAdvGlowButton;
    bexcluir: TAdvGlowButton;
    DBCheckBox23: TDBCheckBox;
    DBCheckBox9: TDBCheckBox;
    RadioButton4: TRadioButton;

    procedure bcancelarClick(Sender: TObject);
    procedure bgravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure baplicarClick(Sender: TObject);
    procedure BitBtn4Click(Sender: TObject);
    procedure BitBtn5Click(Sender: TObject);
    procedure BitBtn9Click(Sender: TObject);
    procedure BitBtn10Click(Sender: TObject);
    procedure BitBtn12Click(Sender: TObject);
    procedure blocregiaoClick(Sender: TObject);
    procedure BitBtn13Click(Sender: TObject);
    procedure BitBtn14Click(Sender: TObject);
    procedure BitBtn15Click(Sender: TObject);
    procedure BitBtn18Click(Sender: TObject);
    procedure BitBtn16Click(Sender: TObject);
    procedure BitBtn17Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBEdit51Exit(Sender: TObject);
    procedure Gravar1Click(Sender: TObject);
    procedure Aplicar1Click(Sender: TObject);
    procedure Cancelar1Click(Sender: TObject);
    procedure enovadata_inventarioKeyPress(Sender: TObject; var Key: Char);
    procedure AdvGlowButton2Click(Sender: TObject);
    procedure AdvGlowButton1Click(Sender: TObject);
    procedure AdvGlowButton3Click(Sender: TObject);
    procedure AdvGlowButton4Click(Sender: TObject);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure eproxy_tipoExit(Sender: TObject);
    procedure eCliente_EntradaButtonClick(Sender: TObject);
    procedure eCliente_SaidaButtonClick(Sender: TObject);
    procedure eCliente_PerdaButtonClick(Sender: TObject);
    procedure eCfop_EntradaButtonClick(Sender: TObject);
    procedure eCfop_SaidaButtonClick(Sender: TObject);
    procedure eCfop_PerdaButtonClick(Sender: TObject);
    procedure eCliente_EntradaExit(Sender: TObject);
    procedure eCliente_EntradaKeyPress(Sender: TObject; var Key: Char);
    procedure eCfop_EntradaExit(Sender: TObject);
    procedure eCliente_SaidaExit(Sender: TObject);
    procedure eCfop_SaidaExit(Sender: TObject);
    procedure eCliente_PerdaExit(Sender: TObject);
    procedure eCfop_PerdaExit(Sender: TObject);
    procedure AdvGlowButton5Click(Sender: TObject);
    procedure bincluirClick(Sender: TObject);
    procedure bexcluirClick(Sender: TObject);
    procedure DBEdit8Exit(Sender: TObject);

  private

  procedure PegaDadosFtp;

    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmconfig: Tfrmconfig;
  DadosFtp :TDadosFtp;

implementation

uses modulo, transf_dados, Math, logo, ecf, FmxUtils, config_cobranca,
  xloc_conta, principal, xloc_cliente, xloc_cfop, xloc_cidade;

{$R *.dfm}

procedure Tfrmconfig.bcancelarClick(Sender: TObject);
begin
  FRMMODULO.qrconfig.CANCEL;
  FRMMODULO.Conexao.Rollback;
  close;
end;

procedure Tfrmconfig.bgravarClick(Sender: TObject);
begin

   impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

    if Rramo_padrao.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 1;
    if Rramo_supermercado.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 2;
    if Rramo_auto.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 3;
    if Rramo_farmacia.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 4;

   frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger := combo_venda.ItemIndex;
   frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger := combo_os.ItemIndex;
   frmmodulo.qrconfig.FieldByName('extrato_tiponota').asinteger := combo_extrato.ItemIndex;
   frmmodulo.qrconfig.FieldByName('orcamento_tiponota').asinteger := combo_orcamento.ItemIndex;
   frmmodulo.qrconfig.FieldByName('nf_tipo').asinteger := combo_nf.ItemIndex;
   frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger :=  combo_entrega.ItemIndex;
     frmmodulo.qrconfig.FieldByName('recibo_tiponota').asinteger := combo_recibo.ItemIndex;



  if frmmodulo.qrconfig.state = dsedit then
  begin

    FRMMODULO.qrconfig.POST;

  end;
  FRMMODULO.Conexaolocal.Commit;
  FRMMODULO.CONEXAO.Commit;
  close;
end;

procedure Tfrmconfig.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  action := cafree;
end;

procedure Tfrmconfig.FormShow(Sender: TObject);
begin

  FRMMODULO.QRFORMAPGTO.OPEN;

  frmmodulo.qrconfig.open;
  combo_venda.ItemIndex     :=  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger;
  combo_os.ItemIndex        :=  frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger;
  combo_orcamento.ItemIndex :=  frmmodulo.qrconfig.FieldByName('orcamento_TIPONOTA').asinteger;
  combo_extrato.ItemIndex   :=  frmmodulo.qrconfig.FieldByName('extrato_TIPONOTA').asinteger;
  combo_nf.ItemIndex        :=  frmmodulo.qrconfig.FieldByName('nf_TIPO').asinteger;
  combo_entrega.ItemIndex   :=  frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger;
  combo_recibo.ItemIndex    :=  frmmodulo.qrconfig.FieldByName('recibo_TIPONOTA').asinteger;


  case frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger of
  1 : Rramo_padrao.Checked := true;
  2 : Rramo_supermercado.Checked := true;
  3 : Rramo_auto.Checked := true;
  4 : Rramo_farmacia.Checked := true;
  end;

  PageView3.ActivePageIndex := 0;


  PegaDadosFtp();

  frmmodulo.qrconfig.edit;

  frmmodulo.qremitente.open;
end;

procedure Tfrmconfig.FormCreate(Sender: TObject);
begin
  FRMMODULO.qrconfig.OPEN;
  IF frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger = 4 THEN
  begin
    combo_venda.Items.Clear;
    combo_venda.Items.Add('01 - Cupom Fiscal');
    combo_venda.Items.Add('02 - Nota Fiscal');
    combo_venda.Items.Add('03 - Bobina');
    combo_venda.Items.Add('04 - Cupom Fiscal / CNFV');
    combo_venda.Items.Add('05 - Bobina - Simples');
  end
  else
  begin
    combo_venda.Items.Clear;
    combo_venda.Items.Add('01 - Cupom Fiscal');
    combo_venda.Items.Add('02 - Nota Fiscal');
    combo_venda.Items.Add('03 - Bobina');
    combo_venda.Items.Add('04 - Formulário Contínuo - Razão');
    combo_venda.Items.Add('05 - Formulário Contínuo - Carta');
    combo_venda.Items.Add('06 - Pré-impresso (Personalizado)');
    combo_venda.Items.Add('07 - Contrato/Guia de Entrega/Carnê');
    combo_venda.Items.Add('08 - Personalizado');
    combo_venda.Items.Add('09 - Papel A4 - Laser / Tinta');
    combo_venda.Items.Add('10 - Papel Razão - Laser / Tinta');
    combo_venda.Items.Add('11 - Formulário Contínuo - Razão 2');
    combo_venda.Items.Add('12 - Contrato/Guia de Entrega/Carnê+Capa');
    combo_venda.Items.Add('13 - Bobina sem formatação');
    combo_venda.Items.Add('14 - Pedido + Carnê');
    combo_venda.Items.Add('15 - Contrato/Carnê');
    combo_venda.Items.Add('16 - Pedido + Carnê com código de barras');
    combo_venda.Items.add('17 - Razão Laser - 2');
  end;






end;

procedure Tfrmconfig.baplicarClick(Sender: TObject);
var
  ServerIni: TIniFile;

begin

  if Rramo_padrao.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 1;
  if Rramo_supermercado.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 2;
  if Rramo_auto.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 3;
  if Rramo_farmacia.Checked then frmmodulo.qrconfig.FieldByName('ramo_atividade').asinteger := 4;

  frmmodulo.qrconfig.FieldByName('VENDA_TIPONOTA').asinteger := combo_venda.ItemIndex;
  frmmodulo.qrconfig.FieldByName('os_TIPONOTA').asinteger := combo_os.ItemIndex;
  frmmodulo.qrconfig.FieldByName('extrato_tiponota').asinteger := combo_extrato.ItemIndex;
  frmmodulo.qrconfig.FieldByName('orcamento_tiponota').asinteger := combo_orcamento.ItemIndex;
  frmmodulo.qrconfig.FieldByName('nf_tipo').asinteger := combo_nf.ItemIndex;
  frmmodulo.qrconfig.FieldByName('entrega_impressao').asinteger :=  combo_entrega.ItemIndex;

  frmmodulo.qrconfig.FieldByName('recibo_tiponota').asinteger := combo_recibo.ItemIndex;

  //////////////////////////////////////////////////////////////////////////////////////////
  // ATUALIZA AS AVRIAVEIS DO FRMMODULO

  ecf_modelo := frmmodulo.qrconfig.fieldbyname('ecf_modelo').asstring;
  ecf_porta := frmmodulo.qrconfig.fieldbyname('ecf_porta').asstring;

  // cupom vinculado

  ecf_cupom_vinculado := inttostr(frmmodulo.qrconfigIMPRIME_CUPOM_VINCULADO.AsInteger);
  ecf_cupom_vinculado_produtos := inttostr(frmmodulo.qrconfigIMPRIME_PRODUTOS_VINCULADOS.AsInteger);
  ecf_cupom_vinculado_carne := inttostr(frmmodulo.qrconfigIMPRIME_COMPROVANTE_DEBITO.AsInteger);

  // imprimir duplicatas
  imp_duplicata := inttostr(frmmodulo.qrconfigIMPRIME_DUPLICATA.AsInteger);


  ramo := frmmodulo.qrconfig.fieldbyname('ramo_atividade').asinteger;

  impressora_venda := frmmodulo.qrconfig.fieldbyname('VENDA_PORTA_IMPRESSORA').asstring;

  IF frmmodulo.QRCONFIG.FieldByName('ESTOQUE_NEGATIVO').ASINTEGER = 1 THEN
    ESTOQUE_NEGATIVO := TRUE ELSE ESTOQUE_NEGATIVO := FALSE;


    CASE frmmodulo.qrconfig.FieldByName('CASAS_DECIMAIS_qtde').ASINTEGER OF
    0 : begin
          mascara_qtde := '###,###,##0';
          decimal_qtde := 0;
        end;
    2 : BEGIN
          mascara_qtde := '###,###,##0.00';
          decimal_qtde := 2;
        end;
    3 : BEGIN
          mascara_qtde := '###,###,##0.000';
          decimal_qtde := 3;
        end;
    4 : BEGIN
          mascara_qtde := '###,###,##0.0000';
          decimal_qtde := 4;
        end;
    5 : BEGIN
          mascara_qtde := '###,###,##0.00000';
          decimal_qtde := 5;
        end;
    6 : BEGIN
          mascara_qtde := '###,###,##0.000000';
          decimal_qtde := 6;
        end;
    7 : BEGIN
          mascara_qtde := '###,###,##0.0000000';
          decimal_qtde := 7;
        end;


    end;
    CASE frmmodulo.qrconfig.FieldByName('CASAS_DECIMAIS_valor').ASINTEGER OF
    2 : BEGIN
          mascara_valor := '###,###,##0.00';
          decimal_valor := 2;
      END;
    3 : BEGIN
          mascara_valor := '###,###,##0.000';
          decimal_valor := 3;
        END;
    4 : BEGIN
          mascara_valor := '###,###,##0.0000';
          decimal_valor := 4;
        END;
    5 : BEGIN
          mascara_valor := '###,###,##0.00000';
          decimal_valor := 5;
        END;
    6 : BEGIN
          mascara_valor := '###,###,##0.000000';
          decimal_valor := 6;
        END;
    7 : BEGIN
          mascara_valor := '###,###,##0.0000000';
          decimal_valor := 7;
        END;


    end;

  frmmodulo.qrprodutoESTOQUE.DisplayFormat := mascara_qtde;
  frmmodulo.qrprodutoESTOQUEMINIMO.DisplayFormat := mascara_qtde;
  frmmodulo.qrprodutoPRECOCUSTO.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOVENDA.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOCUSTO_ANTERIOR.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoPRECOVENDA_ANTERIOR.DisplayFormat := mascara_valor;
  frmmodulo.qrprodutoCUSTOMEDIO.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoCUSTO_COMPRA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoVALOR_ULTIMA_COMPRA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoPRECO_VENDA.DisplayFormat := mascara_valor;
  frmmodulo.qrprecoLUCRO.DisplayFormat := mascara_valor;

  //////////////////////////////////////////////////////////////////////////////////////////

  if frmmodulo.qrconfig.state = dsedit then
  begin
    FRMMODULO.qrconfig.POST;
  end;

   FRMMODULO.CONEXAO.COMMIT;
   FRMMODULO.Conexaolocal.Commit;
   frmmodulo.qrconfig.edit;

  // Grava configurações no arquivo de
  // configuração do FTP

  ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'FTPConfig.ini');
  Try
    ServerIni.WriteString('CONEXAO','FTP',eftp.text);
    ServerIni.WriteString('CONEXAO','USUARIO',eusuario.text);
    ServerIni.WriteString('CONEXAO','SALVARS',esalvars.text);
    ServerIni.WriteString('CONEXAO','SALVAR',esalvarc.text);
    ServerIni.WriteString('CONEXAO','SALVARF',esalvarf.text);
    ServerIni.WriteString('CONEXAO','Port',eporta.text);
    ServerIni.WriteString('CONEXAO','PASSIVO',epassivo.text);
    ServerIni.WriteString('CONEXAO','ProxyHost',eproxy_Host.text);
    ServerIni.WriteString('CONEXAO','ProxyPassword',eproxy_Password.text);
    ServerIni.WriteString('CONEXAO','ProxyUserName',eproxy_UserName.text);
    ServerIni.WriteString('CONEXAO','ProxyPort',eproxy_Port.text);
    ServerIni.WriteString('CONEXAO','ProxyTipo',eproxy_Tipo.text);
  Finally
    ServerIni.Free;
  end;
  Application.ProcessMessages;
end;

procedure Tfrmconfig.BitBtn4Click(Sender: TObject);
begin
  if BitBtn4.Caption = 'Alterar' then
  begin
    frmmodulo.qremitente.Edit;
    pemitente2.Enabled := true;
    bitbtn4.Caption := 'Gravar';
    bitbtn5.Enabled := true;
    enome.SetFocus;
  end
  else
  begin
    frmmodulo.qremitente.Post;
    emitente_codigo   := frmmodulo.qremitente.fieldbyname('codigo').asstring;
    emitente_nome     := frmmodulo.qremitente.fieldbyname('nome').asstring;
    emitente_fantasia := frmmodulo.qremitente.fieldbyname('fantasia').asstring;
    emitente_endereco := frmmodulo.qremitente.fieldbyname('endereco').asstring+' - '+frmmodulo.qremitente.fieldbyname('bairro').asstring;
    emitente_cidade   := frmmodulo.qremitente.fieldbyname('cidade').asstring+'/'+frmmodulo.qremitente.fieldbyname('uf').asstring;
    emitente_cep      := frmmodulo.qremitente.fieldbyname('cep').asstring;
    emitente_telefone := frmmodulo.qremitente.fieldbyname('telefone').asstring;
    emitente_cnpj     := frmmodulo.qremitente.fieldbyname('cnpj').asstring;
    emitente_ie       := frmmodulo.qremitente.fieldbyname('ie').asstring;
    emitente_uf       := frmmodulo.qremitente.fieldbyname('uf').asstring;

    pemitente2.Enabled := false;
    bitbtn4.Caption :='Alterar';
    bitbtn5.Enabled := false;
  end;
end;

procedure Tfrmconfig.BitBtn5Click(Sender: TObject);
begin
   frmmodulo.qremitente.Cancel;
   bitbtn4.Caption := 'Alterar';
   pemitente2.Enabled := false;
   bitbtn5.Enabled := false;
end;

procedure Tfrmconfig.BitBtn9Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmconfig.BitBtn10Click(Sender: TObject);
begin
  FRMMODULO.QRemitente.FIELDBYNAME('logo').Value := null;
end;

procedure Tfrmconfig.BitBtn12Click(Sender: TObject);
begin
{  if DBComboBox3.text = 'DARUMA' then
  begin
     executeFile('\DATASAC\server\ecf\daruma\Exemplo\Delphi\Daruma_Framework_Delphi7.exe', '', '',1)
  end; }
end;

procedure Tfrmconfig.blocregiaoClick(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_VENDA_AV').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn13Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_DUPLICATA_NFE').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn14Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OS_AV').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn15Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OS_AP').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn18Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_RECEBTO_CREDIARIO').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn16Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OUTRAS_ENTRADAS').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.BitBtn17Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_OUTRAS_SAIDAS').ASSTRING := RESULTADO_PESQUISA1;
  end;
end;

procedure Tfrmconfig.Button1Click(Sender: TObject);
begin
  

  frmmodulo.qrconfig.fieldbyname('NF_ITENS_PAGINA').asinteger := 16;
  frmmodulo.qrconfig.fieldbyname('NF_LINHA_TRANSPORTE').asinteger := 19;
  frmmodulo.qrconfig.fieldbyname('NF_SALTO_PAGINA').asinteger := 41;

end;

procedure Tfrmconfig.DBEdit51Exit(Sender: TObject);
begin
//  frmmodulo.qrconfig.fieldbyname('ecf_caixa').asstring := frmPrincipal.zerarcodigo(DBEdit51.text,3);
end;

procedure Tfrmconfig.Gravar1Click(Sender: TObject);
begin
  bgravarClick(frmconfig);
end;

procedure Tfrmconfig.Aplicar1Click(Sender: TObject);
begin
  baplicarClick(frmconfig);
end;

procedure Tfrmconfig.Cancelar1Click(Sender: TObject);
begin
  bcancelarClick(frmconfig);
end;

procedure Tfrmconfig.enovadata_inventarioKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);

end;

procedure Tfrmconfig.AdvGlowButton2Click(Sender: TObject);
begin
  if application.messagebox('Esta operação limpa o Banco de Dados e Transfere dados de outros sistemas! Deseja continuar?','Atenção',mb_yesno+MB_ICONWARNING+MB_DEFBUTTON2) = idyes then
  begin
    frmtransf_dados := tfrmtransf_dados.create(self);
    frmtransf_dados.showmodal;
  end;
end;

procedure Tfrmconfig.AdvGlowButton1Click(Sender: TObject);
begin
  frmconfig_cobranca := tfrmconfig_cobranca.create(self);
  frmconfig_cobranca.showmodal;
end;

procedure Tfrmconfig.AdvGlowButton3Click(Sender: TObject);
var y : integer;
begin
  qrvenda.close;
  qrvenda.sql.clear;
  qrvenda.sql.add('select * from c000048');
  qrvenda.open;
  qrvenda.first;
  while not qrvenda.eof do
  begin
    qrreceber.close;
    qrreceber.sql.clear;
    qrreceber.sql.add('select * from c000049 where codvenda = '''+qrvenda.fieldbyname('codigo').asstring+''' and situacao = 1');
    qrreceber.open;
    if qrreceber.RecordCount > 1 then
    begin
      qrreceber.first;
      y := 1;
      while not qrreceber.eof do
      begin
        qrreceber.edit;
        qrreceber.fieldbyname('codigo').asstring := qrvenda.fieldbyname('codigo').asstring +'/'+frmprincipal.zerarcodigo(inttostr(y),2);
        qrreceber.post;
        qrreceber.next;
        y := y + 1;
      end;
    end;
    qrvenda.next;
  end;
  showmessage('Pronto!');
end;

procedure Tfrmconfig.AdvGlowButton4Click(Sender: TObject);
begin
  if frmprincipal.autentica('Zerar estoque',4) then
  begin
     if application.messagebox('Tem certeza que deseja zerar o estoque?','Aviso',mb_yesno+mb_iconwarning+MB_DEFBUTTON2) = idyes then
     begin
       qrproduto.close;
       qrproduto.sql.clear;
       qrproduto.SQL.add('select p.*, x.produto, x.precocusto, x.unidade from c000100 p, c000025 x');
       qrproduto.sql.add('where p.codproduto = x.codigo and p.estoque_atual <> 0');
       qrproduto.open;
       qrproduto.First;
       while not qrproduto.eof do
       begin
          qrmov.CLOSE;
          qrmov.SQL.CLEAR;
          qrmov.SQL.Add('insert into c000032');
          qrmov.SQL.add('(codigo,codnota,serial,numeronota,');
          qrmov.SQL.add('codproduto,qtde,unitario,movimento_estoque,');
          qrmov.SQL.add('total,unidade,aliquota,');
          qrmov.SQL.add('cupom_item,cupom_numero,cupom_modelo,');
          qrmov.SQL.add('ecf_serie,ecf_caixa,codcliente,codvendedor,movimento,data,cst)');
          qrmov.SQL.add('values');
          qrmov.SQL.add('('''+frmprincipal.codifica('000032')+''',''000000'',''000000'',''000000'',');
          qrmov.SQL.add(''''+qrproduto.fieldbyname('codproduto').asstring+''',:QTDE,:UNITARIO,:movimento_estoque,');
          qrmov.SQL.add(':TOTAL,'''+qrproduto.fieldbyname('unidade').asstring +''',:ALIQUOTA,');
          qrmov.SQL.add('''001'',''000000'','''',');
          qrmov.SQL.add('''000000'',''000000'',''000000'',''S/VEND'',10,:datax,''000'')');
          qrmov.Params.ParamByName('datax').asdatetime := date;
          qrmov.Params.ParamByName('UNITARIO').ASFLOAT := qrproduto.fieldbyname('precocusto').asfloat;
          qrmov.Params.ParamByName('QTDE').ASFLOAT := qrproduto.fieldbyname('estoque_atual').asfloat * (-1);
          qrmov.Params.ParamByName('TOTAL').ASFLOAT := qrproduto.fieldbyname('precocusto').asfloat * (qrproduto.fieldbyname('estoque_atual').asfloat * (-1));
          qrmov.Params.ParamByName('movimento_estoque').ASFLOAT := qrproduto.fieldbyname('estoque_atual').asfloat * (-1);
          qrmov.Params.ParamByName('ALIQUOTA').ASFLOAT := 0;
          qrmov.ExecSQL;
          frmmodulo.conexao.commit;
          qrproduto.next;
       end;
       application.messagebox('Processamento concluído!','Aviso',mb_ok+MB_ICONINFORMATION);
     end;
  end
  else
  begin
    Application.messagebox('Acesso não permitido!','Erro!',mb_ok+mb_iconerror);
  end;
end;

procedure Tfrmconfig.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconfig.Button2Click(Sender: TObject);
begin
   {$IFNDEF ACBrNFeOpenSSL}
   dsconfig.dataset.fieldbyname('nfe_certificado').asstring := ACBrNFe1.Configuracoes.Certificados.SelecionarCertificado;
   {$ENDIF}
end;

procedure Tfrmconfig.BitBtn1Click(Sender: TObject);
begin
  frmxloc_conta := tfrmxloc_conta.create(self);
  frmxloc_conta.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('PLANO_VENDA_AP').ASSTRING := RESULTADO_PESQUISA1;
  end;

end;

procedure Tfrmconfig.PegaDadosFtp;
var
  ServerIni: TIniFile;

begin

  ServerIni := TIniFile.Create(ExtractFilePath(ParamStr(0)) + 'FTPConfig.ini');

  Try
    eftp.text     := ServerIni.ReadString('CONEXAO','FTP','');
    eusuario.text := ServerIni.ReadString('CONEXAO','USUARIO','');
    esalvars.text  := ServerIni.ReadString('CONEXAO','SALVARS','');
    esalvarc.text  := ServerIni.ReadString('CONEXAO','SALVAR','');
    esalvarf.text  := ServerIni.ReadString('CONEXAO','SALVARF','');
    eporta.text    := ServerIni.ReadString('CONEXAO','Port','');
    epassivo.text := ServerIni.ReadString('CONEXAO','PASSIVO','');

    eproxy_Host.text     := ServerIni.ReadString('CONEXAO','ProxyHost','');
    eproxy_Password.text := ServerIni.ReadString('CONEXAO','ProxyPassword','');
    eproxy_UserName.text := ServerIni.ReadString('CONEXAO','ProxyUserName','');
    eproxy_Port.text     := ServerIni.ReadString('CONEXAO','ProxyPort','');
    eproxy_Tipo.text     := ServerIni.ReadString('CONEXAO','ProxyTipo','');

    if eporta.text      = '' then eporta.text := '21';
    if eproxy_Port.text = '' then eproxy_Port.text := '0';
    if eproxy_Tipo.text = '' then eproxy_tipo.text := 'fpcmNone'
  Finally
    ServerIni.Free;
  end;

end;
procedure Tfrmconfig.eproxy_tipoExit(Sender: TObject);
begin
  baplicarClick(frmconfig);
  bgravar.SetFocus;
end;

procedure Tfrmconfig.eCliente_EntradaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_ENTRADA').ASSTRING := RESULTADO_PESQUISA1;
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_ENTRADA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_SaidaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_SAIDA').ASSTRING := RESULTADO_PESQUISA1;
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_SAIDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_PerdaButtonClick(Sender: TObject);
begin
  frmxloc_cliente := tfrmxloc_cliente.create(self);
  frmxloc_cliente.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_PERDA').ASSTRING := RESULTADO_PESQUISA1;
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CLIE_PERDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_EntradaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop',resultado_pesquisa1,[loCaseInsensitive]);
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_ENTRADA').ASSTRING := RESULTADO_PESQUISA1;
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_ENTRADA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_SaidaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop',resultado_pesquisa1,[loCaseInsensitive]);
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SAIDA').ASSTRING := RESULTADO_PESQUISA1;
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_SAIDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCfop_PerdaButtonClick(Sender: TObject);
begin
  parametro_pesquisa := ' is not null ';
  frmXLOC_cfop := tfrmXLOC_cfop.create(self);
  frmXLOC_cfop.showmodal;
  if resultado_pesquisa1 <> '' then
  begin
    frmmodulo.qrCFOP.Open;
    frmmodulo.qrcfop.Locate('cfop',resultado_pesquisa1,[loCaseInsensitive]);
    IF (FRMMODULO.QRCONFIG.STATE = DSEDIT) OR (FRMMODULO.QRCONFIG.StaTE = DSINSERT) THEN
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_PERDA').ASSTRING := RESULTADO_PESQUISA1;
       FRMMODULO.QRCONFIG.FIELDBYNAME('IND_CFOP_PERDA_DESC').ASSTRING := RESULTADO_PESQUISA2;
  end;
end;

procedure Tfrmconfig.eCliente_EntradaExit(Sender: TObject);
begin
  if eCliente_Entrada.Text = '' then
  begin
  eCliente_EntradaButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.eCliente_EntradaKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then perform(wm_nextdlgctl,0,0);
end;

procedure Tfrmconfig.eCfop_EntradaExit(Sender: TObject);
begin
  if eCfop_Entrada.Text = '' then
  begin
  eCfop_EntradaButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.eCliente_SaidaExit(Sender: TObject);
begin
  if eCliente_Saida.Text = '' then
  begin
  eCliente_SaidaButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.eCfop_SaidaExit(Sender: TObject);
begin
  if eCfop_Saida.Text = '' then
  begin
  eCfop_SaidaButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.eCliente_PerdaExit(Sender: TObject);
begin
  if eCliente_Perda.Text = '' then
  begin
  eCliente_PerdaButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.eCfop_PerdaExit(Sender: TObject);
begin
  if eCfop_Perda.Text = '' then
  begin
  eCfop_PerdaButtonClick(Frmconfig);
  end;
end;

procedure Tfrmconfig.AdvGlowButton5Click(Sender: TObject);
begin
  parametro_pesquisa := '';
  frmxloc_cidade := tfrmxloc_cidade.create(self);
  frmxloc_cidade.showmodal;

  frmmodulo.qremitente.FieldByName('COD_MUNICIPIO_IBGE').AsString := resultado_pesquisa6;
  frmmodulo.qremitente.FieldByName('IBGE').AsString := resultado_pesquisa5;
  frmmodulo.qremitente.FieldByName('CIDADE').AsString := resultado_pesquisa2;
  frmmodulo.qremitente.FieldByName('UF').AsString := resultado_pesquisa3;
  DBEdit8.SetFocus;
end;

procedure Tfrmconfig.bincluirClick(Sender: TObject);
begin
  if OpenPictureDialog1.Execute then
  begin
    dbimage1.Picture.LoadFromFile(OpenPictureDialog1.Filename);
  end;
end;

procedure Tfrmconfig.bexcluirClick(Sender: TObject);
begin
  FRMMODULO.Qrconfig.FIELDBYNAME('logo_comercio').Value := null;
end;

procedure Tfrmconfig.DBEdit8Exit(Sender: TObject);
begin
tedit(sender).Color := clwindow;
IF (frmmodulo.Qrconfig.state = dsinsert) or (frmmodulo.Qrconfig.State = dsedit) then
  begin
    if DBEdit8.Text = '' then
       AdvGlowButton5.OnClick (frmconfig);
   end;
end;

end.
