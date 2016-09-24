unit principal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms, Dialogs, StdCtrls,
  ExtCtrls, AdvShapeButton, TFlatPanelUnit, Mask, RzEdit, RzBtnEdt, XPMan, IniFiles,Registry,
  RzPanel, DB, MemDS, DBAccess, IBC, VirtualTable, ADODB, Grids, DBGrids,
  ACBrBase, ACBrValidador, AdvOfficePager, AdvOfficePagerStylers,
  AdvGlowButton, CPortCtl, CPort, CPortTypes;

type
  TfrmPrincipal = class(TForm)
    Bevel1: TBevel;
    Label2: TLabel;
    Label1: TLabel;
    Shape1: TShape;
    AdvShapeButton1: TAdvShapeButton;
    pn1: TPanel;
    Panel1: TPanel;
    Bevel2: TBevel;
    XPManifest1: TXPManifest;
    Label31: TLabel;
    ed_diretorio: TEdit;
    conexao: TIBCConnection;
    qrpaf: TIBCQuery;
    OpenDialog1: TOpenDialog;
    Shape2: TShape;
    Label24: TLabel;
    conexao_ecf: TADOConnection;
    qrECF: TADOQuery;
    validador: TACBrValidador;
    TabECF: TAdvOfficePage;
    TabBD: TAdvOfficePage;
    AdvOfficePager13: TAdvOfficePage;
    AdvOfficePagerOfficeStyler1: TAdvOfficePagerOfficeStyler;
    GroupBox1: TGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    Label9: TLabel;
    Label7: TLabel;
    cb_ecf_marca: TComboBox;
    cb_ecf_modelo: TComboBox;
    cb_ecf_tipo: TComboBox;
    CB_PORTA: TComboBox;
    Button6: TButton;
    GroupBox2: TGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label20: TLabel;
    Label26: TLabel;
    Label41: TLabel;
    ed_ecf_serial: TEdit;
    ed_ecf_numero: TEdit;
    ed_ecf_cnif: TEdit;
    ed_usuario: TEdit;
    cb_desconto_iss: TComboBox;
    cb_versao: TComboBox;
    GroupBox3: TGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    Label25: TLabel;
    Label6: TLabel;
    ed_indice_crediario: TEdit;
    ed_nome_crediario: TEdit;
    ed_indice_suprimento: TEdit;
    ed_indice_sangria: TEdit;
    GroupBox4: TGroupBox;
    ed_total_geral: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    ed_base_local: TRzButtonEdit;
    ed_base: TRzButtonEdit;
    ed_server: TRzEdit;
    TabFuncionalidades: TAdvOfficePage;
    rdgColunaConsultaProdutos: TRadioGroup;
    GroupBox5: TGroupBox;
    rb_tef: TCheckBox;
    rb_tef_tecban: TCheckBox;
    rb_tef_hipercard: TCheckBox;
    GroupBox7: TGroupBox;
    rb_alt_unitario: TCheckBox;
    rb_alt_qtde: TCheckBox;
    rb_alt_total: TCheckBox;
    GroupBox9: TGroupBox;
    chkVendedor: TCheckBox;
    GroupBox6: TGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    cb_bal_porta: TComboBox;
    cb_bal_modelo: TComboBox;
    cb_bal_baudrate: TComboBox;
    cb_bal_databits: TComboBox;
    cb_bal_hand: TComboBox;
    cb_bal_stop: TComboBox;
    cb_bal_time_out: TEdit;
    cb_parity: TComboBox;
    Abas: TAdvOfficePager;
    TabEmpresa: TAdvOfficePage;
    GroupBox8: TGroupBox;
    rb_varejo: TRadioButton;
    rb_auto: TRadioButton;
    rb_posto: TRadioButton;
    rb_restaurante: TRadioButton;
    GroupBox10: TGroupBox;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    ed_cliente_nome: TEdit;
    ed_cliente_cnpj: TEdit;
    ed_cliente_ie: TEdit;
    ed_cliente_im: TEdit;
    ed_cliente_endereco: TEdit;
    ed_cliente_bairro: TEdit;
    ed_cliente_cidade: TEdit;
    ed_cliente_uf: TEdit;
    ed_cliente_cep: TEdit;
    btnAvancar: TAdvGlowButton;
    btnCancelar: TAdvGlowButton;
    btnVoltar: TAdvGlowButton;
    Label47: TLabel;
    GroupBox11: TGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    cb_imp_tipo: TComboBox;
    cb_imp_porta: TComboBox;
    GroupBox12: TGroupBox;
    Label51: TLabel;
    cb_eq_fiscal_on: TComboBox;
    Label52: TLabel;
    ComPort1: TComPort;
    cb_imp_databits: TComboBox;
    Label44: TLabel;
    Label45: TLabel;
    cb_imp_baudrate: TComboBox;
    Label46: TLabel;
    cb_imp_hand: TComboBox;
    Label48: TLabel;
    cb_imp_stop: TComboBox;
    Label49: TLabel;
    cb_imp_parity: TComboBox;
    Label50: TLabel;
    cb_imp_time_out: TEdit;
    GroupBox13: TGroupBox;
    cb_tipo_fec: TComboBox;
    Label53: TLabel;
    Conexao_Servidor: TIBCConnection;
    query_servidor: TIBCQuery;
    qrMestre: TIBCQuery;
    qrcliente: TIBCQuery;
    qrcontasreceber: TIBCQuery;
    qrconfig: TIBCQuery;
    qrcaixa_operador: TIBCQuery;
    qrcaixa_mov: TIBCQuery;
    qrbanco: TIBCQuery;
    qrcontacorrente: TIBCQuery;
    qrcontacorrenteCONTA: TStringField;
    qrcontacorrentebanco: TStringField;
    qrcontacorrenteAGENCIA: TStringField;
    qrcontacorrenteTITULAR: TStringField;
    qrcontacorrenteCODIGO: TStringField;
    qrcontacorrenteCODBANCO: TStringField;
    qrcontacorrenteSALDO: TFloatField;
    qrcontacorrenteNOME_AGENCIA: TStringField;
    qrlancamento_conta: TIBCQuery;
    query_servidor2: TIBCQuery;
    qrfilial: TIBCQuery;
    qrtransportador: TIBCQuery;
    qrcfop: TIBCQuery;
    qrfiscal_modelo: TIBCQuery;
    qrgrupo: TIBCQuery;
    qrsubgrupo: TIBCQuery;
    qrmarca: TIBCQuery;
    qrfornecedor: TIBCQuery;
    qrproduto: TIBCQuery;
    qrproduto_mov: TIBCQuery;
    qrgrade_produto: TIBCQuery;
    Label54: TLabel;
    ed_cliente_codibge_estado: TEdit;
    Label55: TLabel;
    ed_cliente_codibge_cidade: TEdit;
    Label56: TLabel;
    ed_cliente_numero: TEdit;
    Label57: TLabel;
    ed_cliente_fone: TEdit;
    Label58: TLabel;
    ed_cliente_email: TEdit;
    Label59: TLabel;
    ed_cliente_site: TEdit;
    Label60: TLabel;
    ed_cliente_complemento: TEdit;
    ckblancasat: TCheckBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure pn2_cancelarClick(Sender: TObject);
    procedure ed_base_localButtonClick(Sender: TObject);
    procedure ed_baseButtonClick(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure cb_ecf_marcaChange(Sender: TObject);
    procedure cb_versaoChange(Sender: TObject);
    procedure ed_cliente_cnpjExit(Sender: TObject);
    procedure ed_cliente_ieExit(Sender: TObject);
    procedure ed_cliente_cepExit(Sender: TObject);
    procedure TabEmpresaChanging(Sender: TObject; FromPage,
      ToPage: Integer; var AllowChange: Boolean);
    procedure btnAvancarClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
    procedure AbasChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GravarConfig;
    procedure cb_imp_tipoChange(Sender: TObject);
    procedure btn_ConfigSerialClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TabEmpresaShow(Sender: TObject);
    procedure TabBDShow(Sender: TObject);
  private
        Arquivo_ini : TIniFile;
         Registro: TRegistry;
         txt : TextFile;

         bServidor_Conexao, blocal_conexao:boolean;


    { Private declarations }
    procedure alimenta_tabela_ecf();
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;
  bContinua : boolean;
  iECF_Modelo : integer;
  sECF_porta, smsg : string;
  sECF_usuario : string;
  dData_Sistema : tdatetime;
  vardir:string;
  arqini:TInifile;


implementation

uses cnif, funcoes, unECF, Math;

{$R *.dfm}

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.alimenta_tabela_ecf();
VAR
  TXT: TEXTFILE;
  stipo: string;
  
begin

  // verificar se o separador eh ; ou ,

  try
    AssignFile(TXT,'C:\ECF.TXT');
    rewrite(txt);
    writeln(txt,'CODIGO;MARCA;MODELO;VERSAO');
    writeln(txt,'"381001";"SWEDA";"IF S-7000 III";"V02"');
    closefile(txt);

    qrecf.close;
    qrecf.sql.clear;
    qrecf.sql.add('select marca from ecf#txt');
    qrecf.open;

    stipo := ';';

  except
    AssignFile(TXT,'C:\ECF.TXT');
    rewrite(txt);
    writeln(txt,'CODIGO,MARCA,MODELO,VERSAO');
    writeln(txt,'"381001","SWEDA","IF S-7000 III","V02"');
    closefile(txt);

    qrecf.close;
    qrecf.sql.clear;
    qrecf.sql.add('select marca from ecf#txt');
    qrecf.open;

    stipo := ',';
  end;

  AssignFile(TXT,'C:\ECF.TXT');
  rewrite(txt);
  writeln(txt,'CODIGO'+stipo+'MARCA'+stipo+'MODELO'+stipo+'VERSAO');
  writeln(txt,'"381001"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 III"'+stipo+'"V02"');
  writeln(txt,'"382201"'+stipo+'"SWEDA"'+stipo+'"IF ST2500"'+stipo+'"01.00.05"');
  writeln(txt,'"382101"'+stipo+'"SWEDA"'+stipo+'"IF ST2000"'+stipo+'"01.00.01"');
  writeln(txt,'"382002"'+stipo+'"SWEDA"'+stipo+'"IF ST120"'+stipo+'"01.00.05"');
  writeln(txt,'"382001"'+stipo+'"SWEDA"'+stipo+'"IF ST120"'+stipo+'"01.00.01"');
  writeln(txt,'"381902"'+stipo+'"SWEDA"'+stipo+'"IF ST200"'+stipo+'"01.00.05"');
  writeln(txt,'"381901"'+stipo+'"SWEDA"'+stipo+'"IF ST200"'+stipo+'"01.00.01"');
  writeln(txt,'"381802"'+stipo+'"SWEDA"'+stipo+'"IF ST1000"'+stipo+'"01.00.04"');
  writeln(txt,'"381801"'+stipo+'"SWEDA"'+stipo+'"IF ST1000"'+stipo+'"01.00.03"');
  writeln(txt,'"381704"'+stipo+'"SWEDA"'+stipo+'"IF ST100"'+stipo+'"02.00.01"');
  writeln(txt,'"381703"'+stipo+'"SWEDA"'+stipo+'"IF ST100"'+stipo+'"02.00.00"');
  writeln(txt,'"381702"'+stipo+'"SWEDA"'+stipo+'"IF ST100"'+stipo+'"01.00.04"');
  writeln(txt,'"381701"'+stipo+'"SWEDA"'+stipo+'"IF ST100"'+stipo+'"01.00.03"');
  writeln(txt,'"381601"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 PR"'+stipo+'"1.10"');
  writeln(txt,'"381502"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 IIIE"'+stipo+'"1.7"');
  writeln(txt,'"381501"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 IIIE"'+stipo+'"1.0"');
  writeln(txt,'"381401"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 IIE"'+stipo+'"1.1"');
  writeln(txt,'"381302"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 II"'+stipo+'"1.1"');
  writeln(txt,'"381301"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 II"'+stipo+'"1.0"');
  writeln(txt,'"381202"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 IE"'+stipo+'"1.7"');
  writeln(txt,'"381201"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 IE"'+stipo+'"1.1"');
  writeln(txt,'"381102"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 I"'+stipo+'"1.7"');
  writeln(txt,'"381101"'+stipo+'"SWEDA"'+stipo+'"IF S-9000 I"'+stipo+'"1.1"');
  writeln(txt,'"380906"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 II"'+stipo+'"1.6"');
  writeln(txt,'"380905"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 II"'+stipo+'"1.5"');
  writeln(txt,'"380904"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 II"'+stipo+'"1.0"');
  writeln(txt,'"380903"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 II"'+stipo+'"V04"');
  writeln(txt,'"380902"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 II"'+stipo+'"V03"');
  writeln(txt,'"380901"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 II"'+stipo+'"V02"');
  writeln(txt,'"380806"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 IE"'+stipo+'"1.6"');
  writeln(txt,'"380805"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 IE"'+stipo+'"1.5"');
  writeln(txt,'"380804"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 IE"'+stipo+'"1.A"');
  writeln(txt,'"380803"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 IE"'+stipo+'"1.0"');
  writeln(txt,'"380802"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 IE"'+stipo+'"V04"');
  writeln(txt,'"380801"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 IE"'+stipo+'"V03"');
  writeln(txt,'"380706"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 I"'+stipo+'"1.6"');
  writeln(txt,'"380705"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 I"'+stipo+'"1.5"');
  writeln(txt,'"380704"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 I"'+stipo+'"1.0"');
  writeln(txt,'"380703"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 I"'+stipo+'"V04"');
  writeln(txt,'"380702"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 I"'+stipo+'"V03"');
  writeln(txt,'"380701"'+stipo+'"SWEDA"'+stipo+'"IF S-7000 I"'+stipo+'"V02"');
  writeln(txt,'"380602"'+stipo+'"SWEDA"'+stipo+'"S-2070"'+stipo+'"1.0"');
  writeln(txt,'"380601"'+stipo+'"SWEDA"'+stipo+'"S-2070"'+stipo+'"V01"');
  writeln(txt,'"380502"'+stipo+'"SWEDA"'+stipo+'"S-2050"'+stipo+'"V03"');
  writeln(txt,'"380501"'+stipo+'"SWEDA"'+stipo+'"S-2050"'+stipo+'"V02"');
  writeln(txt,'"380402"'+stipo+'"SWEDA"'+stipo+'"MR-2590"'+stipo+'"1.18"');
  writeln(txt,'"380401"'+stipo+'"SWEDA"'+stipo+'"MR-2590"'+stipo+'"1.02"');
  writeln(txt,'"380302"'+stipo+'"SWEDA"'+stipo+'"MR-2571"'+stipo+'"B"');
  writeln(txt,'"380301"'+stipo+'"SWEDA"'+stipo+'"MR-2571"'+stipo+'"A"');
  writeln(txt,'"380203"'+stipo+'"SWEDA"'+stipo+'"MR 2570"'+stipo+'"A"');
  writeln(txt,'"380202"'+stipo+'"SWEDA"'+stipo+'"MR 2570"'+stipo+'"C"');
  writeln(txt,'"380201"'+stipo+'"SWEDA"'+stipo+'"MR 2570"'+stipo+'"B"');
  writeln(txt,'"380102"'+stipo+'"SWEDA"'+stipo+'"MR 2550"'+stipo+'"V.3065"');
  writeln(txt,'"380101"'+stipo+'"SWEDA"'+stipo+'"MR 2550"'+stipo+'"V.0036"');
  writeln(txt,'"081201"'+stipo+'"DARUMA"'+stipo+'"FS-700H"'+stipo+'"01.01.00"');
  writeln(txt,'"081101"'+stipo+'"DARUMA"'+stipo+'"FS-700M"'+stipo+'"01.01.00"');
  writeln(txt,'"081001"'+stipo+'"DARUMA"'+stipo+'"FS-700L"'+stipo+'"01.00.00"');
  writeln(txt,'"080901"'+stipo+'"DARUMA"'+stipo+'"FS-600 USB"'+stipo+'"01.00.00"');
  writeln(txt,'"080805"'+stipo+'"DARUMA"'+stipo+'"FS-600"'+stipo+'"01.05.00"');
  writeln(txt,'"080804"'+stipo+'"DARUMA"'+stipo+'"FS-600"'+stipo+'"01.04.00"');
  writeln(txt,'"080803"'+stipo+'"DARUMA"'+stipo+'"FS-600"'+stipo+'"01.03.00"');
  writeln(txt,'"080802"'+stipo+'"DARUMA"'+stipo+'"FS-600"'+stipo+'"01.02.00"');
  writeln(txt,'"080801"'+stipo+'"DARUMA"'+stipo+'"FS-600"'+stipo+'"01.01.00"');
  writeln(txt,'"080701"'+stipo+'"DARUMA"'+stipo+'"FS-500"'+stipo+'"1.00"');
  writeln(txt,'"080604"'+stipo+'"DARUMA"'+stipo+'"FS-420"'+stipo+'"1.30"');
  writeln(txt,'"080603"'+stipo+'"DARUMA"'+stipo+'"FS-420"'+stipo+'"1.21"');
  writeln(txt,'"080602"'+stipo+'"DARUMA"'+stipo+'"FS-420"'+stipo+'"V1.10"');
  writeln(txt,'"080601"'+stipo+'"DARUMA"'+stipo+'"FS-420"'+stipo+'"1.00"');
  writeln(txt,'"080505"'+stipo+'"DARUMA"'+stipo+'"FS-345"'+stipo+'"1.22"');
  writeln(txt,'"080504"'+stipo+'"DARUMA"'+stipo+'"FS-345"'+stipo+'"1.20"');
  writeln(txt,'"080503"'+stipo+'"DARUMA"'+stipo+'"FS-345"'+stipo+'"1.11"');
  writeln(txt,'"080502"'+stipo+'"DARUMA"'+stipo+'"FS-345"'+stipo+'"V1.10"');
  writeln(txt,'"080501"'+stipo+'"DARUMA"'+stipo+'"FS-345"'+stipo+'"1.00"');
  writeln(txt,'"080401"'+stipo+'"DARUMA"'+stipo+'"FS-335"'+stipo+'"1.00"');
  writeln(txt,'"080303"'+stipo+'"DARUMA"'+stipo+'"FS-318"'+stipo+'"1.20"');
  writeln(txt,'"080302"'+stipo+'"DARUMA"'+stipo+'"FS-318"'+stipo+'"1.10"');
  writeln(txt,'"080301"'+stipo+'"DARUMA"'+stipo+'"FS-318"'+stipo+'"V1.00"');
  writeln(txt,'"080205"'+stipo+'"DARUMA"'+stipo+'"FS-2100T"'+stipo+'"01.05.00"');
  writeln(txt,'"080204"'+stipo+'"DARUMA"'+stipo+'"FS-2100T"'+stipo+'"01.04.00"');
  writeln(txt,'"080203"'+stipo+'"DARUMA"'+stipo+'"FS-2100T"'+stipo+'"01.03.00"');
  writeln(txt,'"080202"'+stipo+'"DARUMA"'+stipo+'"FS-2100T"'+stipo+'"01.02.00"');
  writeln(txt,'"080201"'+stipo+'"DARUMA"'+stipo+'"FS-2100T"'+stipo+'"01.00.00"');
  writeln(txt,'"080103"'+stipo+'"DARUMA"'+stipo+'"FS-2000"'+stipo+'"1.02"');
  writeln(txt,'"080102"'+stipo+'"DARUMA"'+stipo+'"FS-2000"'+stipo+'"1.01"');
  writeln(txt,'"080101"'+stipo+'"DARUMA"'+stipo+'"FS-2000"'+stipo+'"1.00"');
  writeln(txt,'"032102"'+stipo+'"BEMATECH"'+stipo+'"MP-4000 TH FI"'+stipo+'"01.00.02"');
  writeln(txt,'"032101"'+stipo+'"BEMATECH"'+stipo+'"MP-4000 TH FI"'+stipo+'"01.00.01"');
  writeln(txt,'"032001"'+stipo+'"BEMATECH"'+stipo+'"MP-7000 TH FI"'+stipo+'"01.00.01"');
  writeln(txt,'"031903"'+stipo+'"BEMATECH"'+stipo+'"MP-3000 TH FI"'+stipo+'"01.01.01"');
  writeln(txt,'"031902"'+stipo+'"BEMATECH"'+stipo+'"MP-3000 TH FI"'+stipo+'"01.01.00"');
  writeln(txt,'"031901"'+stipo+'"BEMATECH"'+stipo+'"MP-3000 TH FI"'+stipo+'"01.00.00"');
  writeln(txt,'"031802"'+stipo+'"BEMATECH"'+stipo+'"MP-6100 TH FI"'+stipo+'"01.03.02"');
  writeln(txt,'"031801"'+stipo+'"BEMATECH"'+stipo+'"MP-6100 TH FI"'+stipo+'"01.01.02"');
  writeln(txt,'"031705"'+stipo+'"BEMATECH"'+stipo+'"MP-6000 TH FI"'+stipo+'"01.03.03"');
  writeln(txt,'"031704"'+stipo+'"BEMATECH"'+stipo+'"MP-6000 TH FI"'+stipo+'"01.03.02"');
  writeln(txt,'"031703"'+stipo+'"BEMATECH"'+stipo+'"MP-6000 TH FI"'+stipo+'"01.02.02"');
  writeln(txt,'"031702"'+stipo+'"BEMATECH"'+stipo+'"MP-6000 TH FI"'+stipo+'"01.01.01"');
  writeln(txt,'"031701"'+stipo+'"BEMATECH"'+stipo+'"MP-6000 TH FI"'+stipo+'"01.00.00"');
  writeln(txt,'"031602"'+stipo+'"BEMATECH"'+stipo+'"MP-50 FI"'+stipo+'"01.00.00"');
  writeln(txt,'"031601"'+stipo+'"BEMATECH"'+stipo+'"MP-50 FI"'+stipo+'"2.12"');
  writeln(txt,'"031501"'+stipo+'"BEMATECH"'+stipo+'"MP-45 FI"'+stipo+'"VER03.21"');
  writeln(txt,'"031402"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI II R"'+stipo+'"03.10"');
  writeln(txt,'"031401"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI II R"'+stipo+'"03.00"');
  writeln(txt,'"031304"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI II"'+stipo+'"VER03.21"');
  writeln(txt,'"031303"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI II"'+stipo+'"03.10"');
  writeln(txt,'"031302"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI II"'+stipo+'"03.05"');
  writeln(txt,'"031301"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI II"'+stipo+'"VER.03.00"');
  writeln(txt,'"031202"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI"'+stipo+'"2.13"');
  writeln(txt,'"031201"'+stipo+'"BEMATECH"'+stipo+'"MP-40 FI"'+stipo+'"2.12"');
  writeln(txt,'"031101"'+stipo+'"BEMATECH"'+stipo+'"MP-30 FI"'+stipo+'"2.12"');
  writeln(txt,'"031005"'+stipo+'"BEMATECH"'+stipo+'"MP-25 FI"'+stipo+'"01.01.02"');
  writeln(txt,'"031004"'+stipo+'"BEMATECH"'+stipo+'"MP-25 FI"'+stipo+'"01.03.02"');
  writeln(txt,'"031003"'+stipo+'"BEMATECH"'+stipo+'"MP-25 FI"'+stipo+'"01.02.02"');
  writeln(txt,'"031002"'+stipo+'"BEMATECH"'+stipo+'"MP-25 FI"'+stipo+'"01.01.01"');
  writeln(txt,'"031001"'+stipo+'"BEMATECH"'+stipo+'"MP-25 FI"'+stipo+'"01.00.00"');
  writeln(txt,'"030904"'+stipo+'"BEMATECH"'+stipo+'"MP-2100 TH FI"'+stipo+'"01.01.01"');
  writeln(txt,'"030903"'+stipo+'"BEMATECH"'+stipo+'"MP-2100 TH FI"'+stipo+'"01.00.01"');
  writeln(txt,'"030902"'+stipo+'"BEMATECH"'+stipo+'"MP-2100 TH FI"'+stipo+'"01.01.00"');
  writeln(txt,'"030901"'+stipo+'"BEMATECH"'+stipo+'"MP-2100 TH FI"'+stipo+'"01.00.00"');
  writeln(txt,'"030806"'+stipo+'"BEMATECH"'+stipo+'"MP-2000 TH FI"'+stipo+'"01.03.03"');
  writeln(txt,'"030805"'+stipo+'"BEMATECH"'+stipo+'"MP-2000 TH FI"'+stipo+'"01.03.02"');
  writeln(txt,'"030804"'+stipo+'"BEMATECH"'+stipo+'"MP-2000 TH FI"'+stipo+'"01.02.02"');
  writeln(txt,'"030803"'+stipo+'"BEMATECH"'+stipo+'"MP-2000 TH FI"'+stipo+'"01.01.01"');
  writeln(txt,'"030802"'+stipo+'"BEMATECH"'+stipo+'"MP-2000 TH FI"'+stipo+'"01.00.01"');
  writeln(txt,'"030801"'+stipo+'"BEMATECH"'+stipo+'"MP-2000 TH FI"'+stipo+'"01.00.00"');
  writeln(txt,'"030701"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI R"'+stipo+'"1.10"');
  writeln(txt,'"030603"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II R"'+stipo+'"VER03.20"');
  writeln(txt,'"030602"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II R"'+stipo+'"03.10"');
  writeln(txt,'"030601"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II R"'+stipo+'"03.00"');
  writeln(txt,'"030508"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"VER03.31"');
  writeln(txt,'"030507"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"VER03.26"');
  writeln(txt,'"030506"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"VER03.25"');
  writeln(txt,'"030505"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"VER03.22"');
  writeln(txt,'"030504"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"VER03.15"');
  writeln(txt,'"030503"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"03.10"');
  writeln(txt,'"030502"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"03.05"');
  writeln(txt,'"030501"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI II"'+stipo+'"VER.03.00"');
  writeln(txt,'"030401"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI DUAL R"'+stipo+'"VER03.21"');
  writeln(txt,'"030301"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI DUAL"'+stipo+'"VER03.15"');
  writeln(txt,'"030203"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI"'+stipo+'"2.12"');
  writeln(txt,'"030202"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI"'+stipo+'"2.10"');
  writeln(txt,'"030201"'+stipo+'"BEMATECH"'+stipo+'"MP-20 FI"'+stipo+'"2.0"');
  writeln(txt,'"030101"'+stipo+'"BEMATECH	Kit FM-20 FI"'+stipo+'"2.12"');
  writeln(txt,'"150101"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FB"'+stipo+'"01.00.00"');
  writeln(txt,'"150102"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FB"'+stipo+'"01.01.01"');
  writeln(txt,'"150103"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FB"'+stipo+'"01.02.00"');
  writeln(txt,'"150104"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FB"'+stipo+'"01.06.00"');
  writeln(txt,'"150501"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FBII"'+stipo+'"01.02.00"');
  writeln(txt,'"150502"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FBII"'+stipo+'"01.03.00"');
  writeln(txt,'"150503"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FBII"'+stipo+'"01.05.00"');
  writeln(txt,'"150504"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FBII"'+stipo+'"01.07.00"');
  writeln(txt,'"150901"'+stipo+'"EPSON"'+stipo+'"TM-H6000 FBIII"'+stipo+'"01.00.01"');
  writeln(txt,'"150401"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBII"'+stipo+'"01.00.00"');
  writeln(txt,'"150402"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBII"'+stipo+'"01.00.04"');
  writeln(txt,'"150403"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBII"'+stipo+'"01.02.00"');
  writeln(txt,'"150404"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBII"'+stipo+'"01.03.00"');
  writeln(txt,'"150405"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBII"'+stipo+'"01.05.00"');
  writeln(txt,'"150406"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBII"'+stipo+'"01.07.00"');
  writeln(txt,'"150801"'+stipo+'"EPSON"'+stipo+'"TM-T81 FBIII"'+stipo+'"01.00.01"');
  writeln(txt,'"150201"'+stipo+'"EPSON"'+stipo+'"TM-T88 FB"'+stipo+'"01.00.00"');
  writeln(txt,'"150202"'+stipo+'"EPSON"'+stipo+'"TM-T88 FB"'+stipo+'"01.01.00"');
  writeln(txt,'"150203"'+stipo+'"EPSON"'+stipo+'"TM-T88 FB"'+stipo+'"01.06.00"');
  writeln(txt,'"150601"'+stipo+'"EPSON"'+stipo+'"TM-T88 FBII"'+stipo+'"01.02.00"');
  writeln(txt,'"150602"'+stipo+'"EPSON"'+stipo+'"TM-T88 FBII"'+stipo+'"01.03.00"');
  writeln(txt,'"150603"'+stipo+'"EPSON"'+stipo+'"TM-T88 FBII"'+stipo+'"01.05.00"');
  writeln(txt,'"150604"'+stipo+'"EPSON"'+stipo+'"TM-T88 FBII"'+stipo+'"01.07.00"');
  writeln(txt,'"150701"'+stipo+'"EPSON"'+stipo+'"TM-T88 FBIII"'+stipo+'"01.00.01"');
  closefile(txt);

  conexao_ecf.close;
  conexao_ecf.open;

{  tbECF.Insert;
  tbECf.FieldByName('cnif').asstring   :=
  tbECf.fieldbyname('marca').asstring  :=
  tbECF.fieldbyname('modelo').asstring :=
  tbECF.post;
}
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  if not bContinua then
  begin
    if application.messagebox('Tem certeza que deseja abandonar o processo de configuração da '+
                              'instalação do sistema?','Atenção',mb_yesno+mb_iconwarning+
                              MB_DEFBUTTON2) = idNo then
      abort;
  end
  else
  BEGIN
    cECF_Fecha(iECF_Modelo);
    action := cafree;
  END;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormShow(Sender: TObject);
var
  Arq: TextFile;
  sNomeArq: String;
  sLinha: String;

begin

  vardir := extractfilepath(application.ExeName);

  arqini := TIniFile.Create(vardir+'ComPortTest.ini');

  Abas.ActivePage := TabECF;

  dData_sistema := date;
  bContinua := false;


  cb_ecf_modelo.Clear;
  cb_versao.Clear;


  alimenta_tabela_ecf;

  // CGT: Apenas para facilitar os testes no laboratório
  sNomeArq := Cript('D', '63F33CF428')+'.'+Cript('D', 'AC59F416');


  if FileExists(sNomeArq) then
  begin
    AssignFile(Arq, sNomeArq);

    try
      Reset(Arq);

      ReadLn(Arq, sLinha);
      ed_cliente_Nome.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_Endereco.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_Bairro.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_CIDADE.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_UF.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_CEP.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_CNPJ.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_IE.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_IM.Text := sLinha;


      ReadLn(Arq, sLinha);
      ed_cliente_codibge_estado.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_codibge_cidade.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_numero.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_fone.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_numero.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_email.Text := sLinha;

      ReadLn(Arq, sLinha);
      ed_cliente_site.Text := sLinha;


      ReadLn(Arq, sLinha);
      ed_cliente_complemento.Text := sLinha;


    finally
      CloseFile(Arq);
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.pn2_cancelarClick(Sender: TObject);
begin
  close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_base_localButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_base_local.Text := OpenDialog1.FileName;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_baseButtonClick(Sender: TObject);
begin
  if OpenDialog1.Execute then
  begin
    ed_base.Text := OpenDialog1.FileName;
  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.Button6Click(Sender: TObject);
begin
   if cb_ecf_marca.ItemIndex <= 0 then
   begin
     application.messagebox('Favor escolher a marca do equipamento!','Erro',MB_OK+mb_iconerror);
     cb_ecf_marca.setfocus;
     exit;
   end;
   if cb_ecf_modelo.ItemIndex < 0 then
   begin
     application.messagebox('Favor escolher o modelo do equipamento!','Erro',MB_OK+mb_iconerror);
     cb_ecf_modelo.setfocus;
     exit;
   end;
   if cb_ecf_tipo.ItemIndex < 0 then
   begin
     application.messagebox('Favor escolher o tipo de Equipamento!','Erro',MB_OK+mb_iconerror);
     cb_ecf_tipo.setfocus;
     exit;
   end;
   if CB_PORTA.ItemIndex < 0 then
   begin
     application.messagebox('Favor escolher a porta de comunicação!','Erro',MB_OK+mb_iconerror);
     cb_porta.setfocus;
     exit;
   end;

   iECF_Modelo := cb_ecf_marca.ItemIndex;
   sECF_Porta := CB_PORTA.text;

    // antes de iniciar a tela venda, verificar as configuracoes necessarias

    // VERIFICAR ECF
    // abrir porta serial
   bcontinua := false;

    repeat
       sMsg := cECF_Abre(iECF_Modelo,sECF_Porta);
       if sMsg <> 'OK' then
       begin
         if application.messagebox(pansichar('Erro ao tentar abrir a porta - '+sECF_Porta+
                                         #13+'Deseja tentar outra vez?'),'ECF', mb_yesno+
            mb_iconerror) = idno then
         begin
            exit;
         end;

       end;
    until
      sMsg = 'OK';

    if smsg = 'OK' then
    begin
      // verificando se o ECF esta ligado
      repeat
         sMsg := cECF_Ligada(iECF_Modelo);
         if sMsg <> 'OK' then
         begin
             if application.messagebox(pansichar('ECF desligado ou não conectado!'+#13+
                                                 'Mensagem: '+sMsg+#13+
                                                 'Deseja tentar outra vez?'),
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
             begin
                break;
             end
             else
             begin
               //
             end;
         end;
      until
        sMsg = 'OK';
    end;


    if sMsg = 'OK' then
    begin
      repeat
        sMsg := cECF_Numero_Serie(iECF_Modelo);
        if sMsg = 'ERRO' then
        begin
          if application.messagebox('Erro ao tentar obter o número de série do ECF!'+#13+
                                    'Deseja tentar outra vez?',
                                    'ECF', mb_yesno+
              mb_iconerror) = idno then
          begin
            break;
          end
          else
          begin
            //
          end;
        end
        else
        begin
          ed_ecf_serial.Text := copy(SMSG,1,30);
        end;
      UNTIL SMSG <> 'ERRO';

      bcontinua := false;

       // atualizar o totalizador geral do PAF com a do ECF
       REPEAT
         SMSG := cECF_Grande_Total(iECF_Modelo);
         iF Smsg = 'ERRO' then
         begin
           if application.messagebox(pansichar('Erro ao verificar totalizador do ECF!'+#13+
                                               'Mensagem: '+sMsg+#13+
                                               'Deseja tentar outra vez?'),'Erro',mb_yesno+
                                               MB_ICONERROR) = idno then
           break;


         end
         else
           ed_total_geral.text := smsg;
       UNTIL SmSG <> 'ERRO';




      // Numero do caixa do ECF
      if sMsg <> 'ERRO' then
      begin
        repeat
           sMsg := cECF_Numero_Caixa(iECF_Modelo);
           if sMsg = 'ERRO' then
           begin
             if application.messagebox('Erro ao tentar obter o número do caixa do ECF!'+#13+
                                       'Deseja tentar outra vez?',
                                       'ECF', mb_yesno+
                mb_iconerror) = idno then
             begin
                bcontinua := false;
                break;
             end
             else
             begin
               //
             end;

           end
           else
           begin
               ed_ecf_numero.text := smsg;

               if cb_ecf_marca.ItemIndex = 5 then
               begin
                 application.messagebox('O sistema funcionará no ambiente S@T Paulista!',
                       'Aviso', MB_OK+mb_iconInformation);

               end
               else
               begin
                 application.messagebox('O sistema emitirá uma leitura X para que possa configurar os demais campos!',
                       'Leitura X', MB_OK+mb_iconInformation);

               end;


               case cb_ecf_marca.ItemIndex of
               1 : begin
                     ed_indice_crediario.Text := '01';
                     ed_nome_crediario.text := 'CREDIARIO';
                     ed_indice_suprimento.text := '30';
                     ed_indice_sangria.text := '29';
                   end;
               2 : begin
                     ed_indice_crediario.Text := '03';
                     ed_nome_crediario.text := 'CREDIARIO';
                     ed_indice_suprimento.text := '02';
                     ed_indice_sangria.text := '01';
                   end;
               3 : begin
                     ed_indice_crediario.Text := '03';
                     ed_nome_crediario.text := 'CREDIARIO';
                     ed_indice_suprimento.text := '01';
                     ed_indice_sangria.text := '02';
                   end;
               4 : begin
                     ed_indice_crediario.Text := '03';
                     ed_nome_crediario.text := 'CREDIARIO';
                     ed_indice_suprimento.text := '02';
                     ed_indice_sangria.text := '01';
                   end;
               5 : begin
                     ed_indice_crediario.Text := '03';
                     ed_nome_crediario.text := 'CREDIARIO';
                     ed_indice_suprimento.text := '02';
                     ed_indice_sangria.text := '01';
                   end;




               end;

               ed_usuario.text := '01';


               smsg := cECF_LeituraX(iECF_Modelo);
               bcontinua := true;
           end;
        until
          sMsg <> 'ERRO';
      end;
    end
    else
    begin
      application.messagebox('Não foi possível detectar o ECF!'+#13+
                             'Favor verificar os cabos e conexões!','Erro',
                             mb_ok);
      bcontinua := false;
      exit;
    end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.cb_ecf_marcaChange(Sender: TObject);
begin


  cb_imp_porta.Text := '';
  cb_imp_tipo.Text := '';
  cb_imp_databits.Text := '';
  cb_imp_baudrate.Text := '';
  cb_imp_hand.text := '';
  cb_imp_stop.Text := '';
  cb_imp_parity.Text := '';
  cb_imp_time_out.Text := '';
  cb_eq_fiscal_on.Text := '';
  ckblancasat.Checked := false;


  cb_imp_porta.Enabled := false;
  cb_imp_tipo.Enabled := false;
  cb_imp_databits.Enabled := false;
  cb_imp_baudrate.Enabled := false;
  cb_imp_hand.Enabled := false;
  cb_imp_stop.Enabled := false;
  cb_imp_parity.Enabled := false;
  cb_imp_time_out.Enabled := false;
  cb_eq_fiscal_on.Enabled := false;
  ckblancasat.Enabled := false;
  //btn_configSerial.Enabled := false;
  //btnsalvarserial.Enabled := false;


  case cb_ecf_marca.ItemIndex of
  1 : begin
        cb_ecf_modelo.Clear;

        cb_ecf_modelo.items.add('MP-4000 TH FI');
        cb_ecf_modelo.items.add('MP-7000 TH FI');
        cb_ecf_modelo.items.add('MP-3000 TH FI');
        cb_ecf_modelo.items.add('MP-6100 TH FI');
        cb_ecf_modelo.items.add('MP-6000 TH FI');
        cb_ecf_modelo.items.add('MP-50 FI');
        cb_ecf_modelo.items.add('MP-45 FI');
        cb_ecf_modelo.items.add('MP-40 FI II R');
        cb_ecf_modelo.items.add('MP-40 FI II');
        cb_ecf_modelo.items.add('MP-40 FI');
        cb_ecf_modelo.items.add('MP-30 FI');
        cb_ecf_modelo.items.add('MP-25 FI');
        cb_ecf_modelo.items.add('MP-2100 TH FI');
        cb_ecf_modelo.items.add('MP-2000 TH FI');
        cb_ecf_modelo.items.add('MP-20 FI R');
        cb_ecf_modelo.items.add('MP-20 FI II R');
        cb_ecf_modelo.items.add('MP-20 FI II');
        cb_ecf_modelo.items.add('MP-20 FI DUAL R');
        cb_ecf_modelo.items.add('MP-20 FI DUAL');
        cb_ecf_modelo.items.add('MP-20 FI');
        cb_ecf_modelo.items.add('Kit FM-20 FI  2.12');

        cb_versao.Clear;
        cb_versao.items.add('01.00.00');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.02');

        cb_versao.items.add('01.01.00');
        cb_versao.items.add('01.01.01');
        cb_versao.items.add('01.01.02');
        cb_versao.items.add('01.03.02');
        cb_versao.items.add('01.03.03');
        cb_versao.items.add('01.02.02');
        cb_versao.items.add('1.10');
        cb_versao.items.add('2.12');
        cb_versao.items.add('2.13');
        cb_versao.items.add('03.10');
        cb_versao.items.add('03.00');
        cb_versao.items.add('03.05');
        cb_versao.items.add('VER.03.00');
        cb_versao.items.add('VER03.21');
        cb_versao.items.add('VER03.20');
        cb_versao.items.add('VER03.31');
        cb_versao.items.add('VER03.26');
        cb_versao.items.add('VER03.25');
        cb_versao.items.add('VER03.22');
        cb_versao.items.add('VER03.15');
        cb_versao.items.add('2.12');
        cb_versao.items.add('2.10');
        cb_versao.items.add('2.0');

      end;
  2 : begin
        CB_ECF_MODELO.Clear;
        cb_ecf_modelo.items.add('FS-700H');
        cb_ecf_modelo.items.add('FS-700M');
        cb_ecf_modelo.items.add('FS-700L');
        cb_ecf_modelo.items.add('FS-600 USB');
        cb_ecf_modelo.items.add('FS-600');
        cb_ecf_modelo.items.add('FS-500');
        cb_ecf_modelo.items.add('FS-420');
        cb_ecf_modelo.items.add('FS-345');
        cb_ecf_modelo.items.add('FS-345');
        cb_ecf_modelo.items.add('FS-335');
        cb_ecf_modelo.items.add('FS-318');
        cb_ecf_modelo.items.add('FS-2100T');
        cb_ecf_modelo.items.add('FS-2000');


        cb_versao.clear;

        cb_versao.items.add('01.05.00');
        cb_versao.items.add('01.04.00');
        cb_versao.items.add('01.03.00');
        cb_versao.items.add('01.02.00');
        cb_versao.items.add('01.01.00');
        cb_versao.items.add('01.00.00');

        cb_versao.items.add('1.00');
        cb_versao.items.add('1.01');
        cb_versao.items.add('1.02');
        cb_versao.items.add('1.10');
        cb_versao.items.add('1.11');
        cb_versao.items.add('1.20');
        cb_versao.items.add('1.21');
        cb_versao.items.add('1.22');
        cb_versao.items.add('1.30');
        cb_versao.items.add('V1.00');
        cb_versao.items.add('V1.10');

      end;
  3 : begin
        CB_ECF_MODELO.Clear;
        cb_ecf_modelo.items.add('IF ST2500');
        cb_ecf_modelo.items.add('IF ST2000');
        cb_ecf_modelo.items.add('IF ST120');
        cb_ecf_modelo.items.add('IF ST200');
        cb_ecf_modelo.items.add('IF ST1000');
        cb_ecf_modelo.items.add('IF ST100');
        cb_ecf_modelo.items.add('IF S-9000 PR');
        cb_ecf_modelo.items.add('IF S-9000 IIIE');
        cb_ecf_modelo.items.add('IF S-9000 IIE');
        cb_ecf_modelo.items.add('IF S-9000 II');
        cb_ecf_modelo.items.add('IF S-9000 IE');
        cb_ecf_modelo.items.add('IF S-9000 I');
        cb_ecf_modelo.items.add('IF S-7000 III');
        cb_ecf_modelo.items.add('IF S-7000 II');
        cb_ecf_modelo.items.add('IF S-7000 IE');
        cb_ecf_modelo.items.add('IF S-7000 I');
        cb_ecf_modelo.items.add('S-2070');
        cb_ecf_modelo.items.add('S-2050');
        cb_ecf_modelo.items.add('MR 2550');
        cb_ecf_modelo.items.add('MR 2570');
        cb_ecf_modelo.items.add('MR-2571');
        cb_ecf_modelo.items.add('MR-2590');

        cb_versao.clear;
        cb_versao.items.add('01.00.05');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.05');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.05');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.04');
        cb_versao.items.add('01.00.03');
        cb_versao.items.add('02.00.01');
        cb_versao.items.add('02.00.00');
        cb_versao.items.add('01.00.04');
        cb_versao.items.add('01.00.03');
        cb_versao.items.add('1.0');
        cb_versao.items.add('1.1');
        cb_versao.items.add('1.6');
        cb_versao.items.add('1.5');
        cb_versao.items.add('1.7');
        cb_versao.items.add('1.02');
        cb_versao.items.add('1.10');
        cb_versao.items.add('1.18');
        cb_versao.items.add('1.A');
        cb_versao.items.add('V01');
        cb_versao.items.add('V02');
        cb_versao.items.add('V03');
        cb_versao.items.add('V04');
        cb_versao.items.add('A');
        cb_versao.items.add('B');
        cb_versao.items.add('C');
        cb_versao.items.add('V.3065');
        cb_versao.items.add('V.0036');
      end;
  4 : begin
        CB_ECF_MODELO.Clear;

        cb_ecf_modelo.items.add('TM-H6000 FB');
        cb_ecf_modelo.items.add('TM-H6000 FBII');
        cb_ecf_modelo.items.add('TM-H6000 FBIII');
        cb_ecf_modelo.items.add('TM-T81 FBII');
        cb_ecf_modelo.items.add('TM-T81 FBIII');
        cb_ecf_modelo.items.add('TM-T88 FB');
        cb_ecf_modelo.items.add('TM-T88 FBII');
        cb_ecf_modelo.items.add('TM-T88 FBIII');

        cb_versao.clear;
        cb_versao.items.add('01.00.00');
        cb_versao.items.add('01.00.01');
        cb_versao.items.add('01.00.04');
        cb_versao.items.add('01.01.00');
        cb_versao.items.add('01.01.01');
        cb_versao.items.add('01.02.00');
        cb_versao.items.add('01.03.00');
        cb_versao.items.add('01.03.00');
        cb_versao.items.add('01.05.00');
        cb_versao.items.add('01.06.00');
        cb_versao.items.add('01.07.00');

      end;

   5: begin

        cb_ecf_modelo.Clear;
        cb_ecf_modelo.Items.Add('IF S@T');

        cb_versao.Clear;
        cb_versao.Items.Add('ECF-S@T');

        cb_imp_tipo.Enabled := true;
        cb_imp_porta.Enabled := true;
        cb_eq_fiscal_on.Enabled := true;
        cb_eq_fiscal_on.Text :='Nenhum';

        ckblancasat.Enabled := true;

      end;

  end;

end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.cb_versaoChange(Sender: TObject);
begin
  if cb_versao.Text <> '' then
  begin
    qrECF.close;
    qrecf.sql.clear;
    qrecf.sql.add('select * from ecf#txt');
    qrecf.sql.add('where marca = "'+cb_ecf_marca.text+'" and');
    qrecf.sql.add('modelo = "'+cb_ecf_modelo.text+'" and');
    qrecf.sql.add('versao = "'+cb_versao.Text+'"');
    qrecf.open;
    if qrecf.RecordCount > 0 then
    begin
      ed_ecf_cnif.text := qrecf.fieldbyname('codigo').asstring;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_cliente_cnpjExit(Sender: TObject);
begin
  if ed_cliente_cnpj.Text <> '' then
  begin
    validador.TipoDocto := docCNPJ;
    validador.Complemento := ed_cliente_uf.text;
    validador.Documento := ed_cliente_cnpj.Text;
    if not validador.Validar then
    begin
      application.messagebox('CNPJ inválido!','Erro',mb_ok+mb_iconerror);
      ed_cliente_cnpj.setfocus;
      exit;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_cliente_ieExit(Sender: TObject);
begin
  if ed_cliente_IE.Text <> '' then
  begin
    validador.TipoDocto := docInscEst;
    validador.Complemento := ed_cliente_uf.text;
    validador.Documento := ed_cliente_ie.Text;
    if not validador.Validar then
    begin
      application.messagebox('IE inválida!','Erro',mb_ok+mb_iconerror);
      ed_cliente_IE.setfocus;
      exit;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.ed_cliente_cepExit(Sender: TObject);
begin
  if ed_cliente_CEP.Text <> '' then
  begin
    validador.TipoDocto := docCEP;
    validador.Documento := ed_cliente_cep.Text;
    validador.Complemento := ed_cliente_uf.text;
    if not validador.Validar then
    begin
      application.messagebox('CEP inválido!','Erro',mb_ok+mb_iconerror);
      ed_cliente_CEP.setfocus;
      exit;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.TabEmpresaChanging(Sender: TObject; FromPage,
  ToPage: Integer; var AllowChange: Boolean);
begin

  if Abas.ActivePage = AdvOfficePager13 then
     begin
        //Hardware

        //cb_imp_tipoChange(Sender);

        if cb_ecf_marca.ItemIndex = 5 then
           begin

           end;



     end;


  if Abas.ActivePage = TabECF then
  begin
    if not bContinua then
    begin
      Application.MessageBox('Ecf não configurado!'+#13+
        'Impossível prosseguir!','Erro', MB_OK+mb_iconerror);

      AllowChange := False;
    end;
  end;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnAvancarClick(Sender: TObject);
begin
  if Abas.ActivePage = TabEmpresa then
    GravarConfig
  else
    Abas.SelectNextPage(True);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnCancelarClick(Sender: TObject);
begin
  Close;
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.btnVoltarClick(Sender: TObject);
begin
  Abas.SelectNextPage(False);
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.AbasChange(Sender: TObject);
begin
  if Abas.ActivePage = TabECF then
    btnVoltar.Visible := False
  else
    btnVoltar.Visible := True;

  if Abas.ActivePage = TabEmpresa then
    btnAvancar.Caption := 'Gravar'
  else
    btnAvancar.Caption := 'Avançar >';
end;

// -------------------------------------------------------------------------- //
procedure TfrmPrincipal.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    btnCancelarClick(nil);
end;

// -------------------------------------------------------------------------- //

procedure TfrmPrincipal.GravarConfig;
 //var Arquivo_ini : TIniFile;
 // Registro: TRegistry;
 // txt : TextFile;

 
begin

  if ed_cliente_nome.text = '' then
  begin
    application.messagebox('Favor informar o nome da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_nome.setfocus;
    exit;
  end;
  if ed_cliente_endereco.text = '' then
  begin
    application.messagebox('Favor informar o endereço da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_endereco.SetFocus;
    exit;
  end;

  if ed_cliente_cnpj.text = '' then
  begin
    application.messagebox('Favor informar o CNPJ da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_cnpj.SetFocus;
    exit;
  end;
  if ed_cliente_ie.text = '' then
  begin
    application.messagebox('Favor informar a IE da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_ie.SetFocus;
    exit;
  end;
  if ed_cliente_cidade.text = '' then
  begin
    application.messagebox('Favor informar a Cidade da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_nome.setfocus;
    exit;
  end;
  if ed_cliente_uf.text = '' then
  begin
    application.messagebox('Favor informar a UF da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_UF.SetFocus;
    exit;
  end;

  if ed_cliente_cep.text = '' then
  begin
    application.messagebox('Favor informar o CEP da Empresa!','Erro',mb_ok+mb_iconerror);
    ed_cliente_CEP.SetFocus;
    exit;
  end;


  // abrir arquivo .ini
  Arquivo_ini := TIniFile.Create('c:\DataSAC\paf\cfg\DataPaf.dll');


  //[ECF]
  //MARCA
  Arquivo_ini.WriteString('B9A7BF57','13392FD058AB',Cript('C',cb_ecf_marca.text ));
  // COD DO ECF
  Arquivo_ini.WriteString('B9A7BF57','13392FD058AC',Cript('C',inttostr(cb_ecf_marca.ItemIndex)));
  //MODELO
  Arquivo_ini.WriteString('B9A7BF57','A4A8A2B7B0CE2D',Cript('C',cb_ecf_modelo.text));
  //TIPO
  Arquivo_ini.WriteString('B9A7BF57','6E9BB153EE',Cript('C',cb_ecf_tipo.text  ));
  //SERIAL
  Arquivo_ini.WriteString('B9A7BF57','D875EF1310639C',Cript('C',ed_ecf_serial.text));
  //NUMERO
  Arquivo_ini.WriteString('B9A7BF57','7299BB58D11656',Cript('C',ed_ecf_numero.text));
  //CNIF
  Arquivo_ini.WriteString('B9A7BF57','5CC640D853',Cript('C',ed_ecf_cnif.text));
  //USUARIO
  Arquivo_ini.WriteString('B9A7BF57','B655FD020F53AFB5',Cript('C',ed_usuario.text));
  //PERMITE_ISSQN
  Arquivo_ini.WriteString('B9A7BF57','B058C84ADB1758D607001A38CF27',Cript('C',cb_desconto_iss.Text));
  //DIRETORIO_ARQUIVO_FISCAL
  Arquivo_ini.WriteString('B9A7BF57','BC58F41617599BA6DE7E948094DC020A2526D354D36AE6609C',Cript('C',ed_diretorio.Text));
  //TOTALIZADOR_GERAL
  Arquivo_ini.WriteString('B9A7BF57','68E560E56B85FD1365F90007205E93A4A0BE',Cript('C',ed_total_geral.Text));


  //[USUARIO]
  //NOME
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','5EF5100C1D',Cript('C',ed_cliente_nome.text));
  //CNPJ
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','C855F6162C',Cript('C',ed_cliente_cnpj.text));
  //IE
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','292B25',Cript('C',ed_cliente_ie.text));
  //IM
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7D',Cript('C',ed_cliente_im.text));
  //Endereco
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7E',Cript('C',ed_cliente_endereco.text));
  //Bairro
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7F',Cript('C',ed_cliente_bairro.text));
  //Cidade
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7G',Cript('C',ed_cliente_cidade.text));
  //UF
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7H',Cript('C',ed_cliente_uf.text));
  //CEP
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7I',Cript('C',ed_cliente_cep.text));
  //COD IBGE ESTADO
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J',Cript('C',ed_cliente_codibge_estado.text));
  //COD IBGE CIDADE
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7K',Cript('C',ed_cliente_codibge_cidade.text));
  //Número
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7L',Cript('C',ed_cliente_numero.text));
  //fone
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7M',Cript('C',ed_cliente_fone.text));
  //email
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7N',Cript('C',ed_cliente_email.text));
  //site
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7O',Cript('C',ed_cliente_site.text));
  //complemento
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7P',Cript('C',ed_cliente_complemento.text));




  //Impressora não fiscal e s@t
  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J1',Cript('C',cb_imp_tipo.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J2',Cript('C',cb_imp_porta.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J3',Cript('C',cb_imp_databits.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J4',Cript('C',cb_imp_baudrate.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J5',Cript('C',cb_imp_hand.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J6',Cript('C',cb_imp_stop.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J7',Cript('C',cb_imp_parity.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J8',Cript('C',cb_imp_time_out.text));

  Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J9FIS',Cript('C',cb_eq_fiscal_on.text));

  if ckblancasat.Checked then
     Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J10FIS',Cript('C','1'))
  else
     Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J10FIS',Cript('C','0'));
  //endi

  if cb_tipo_fec.ItemIndex = 0 then
     begin
       //somente resumo fechamento sem número cupom
       Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J9',Cript('C','0'));
     end;

  if cb_tipo_fec.ItemIndex = 1 then
     begin
       //resumo fechamento com número de cupom
       Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J9',Cript('C','1'));
     end;


  if cb_tipo_fec.ItemIndex = -1 then
     begin
       //nenhuma forma de resumo fechamento
       Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA7J9',Cript('C','-1'));

     end;


  //ramo
  if  rb_varejo.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','1'));

  if  rb_auto.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','2'));

  if  rb_posto.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','3'));

  if  rb_restaurante.Checked then
      Arquivo_ini.WriteString('4CF8193FCC2D45DF','3ADA80',cript('C','4'));




  // liberar arquivo ini da memoria
  Arquivo_ini.Free;



  qrpaf.close;
  qrpaf.sql.clear;
  qrpaf.sql.add('update config set');
  qrpaf.sql.add('nome_totalizador_nf_crediario = '''+ed_nome_crediario.text+''',');
  qrpaf.sql.add('totalizador_nf_crediario = '''+ed_indice_crediario.Text+''',');
  qrpaf.sql.add('totalizador_sangria = '''+ed_indice_sangria.text+''',');
  qrpaf.sql.add('totalizador_suprimento = '''+ed_indice_suprimento.text+''',');

  if rb_alt_qtde.Checked then
    qrpaf.sql.add('muda_qtde = 1,') else qrpaf.sql.add('muda_qtde = 0,');
  if rb_alt_unitario.Checked then
    qrpaf.sql.add('muda_unitario = 1,') else qrpaf.sql.add('muda_unitario = 0,');
  if rb_alt_total.Checked then
    qrpaf.sql.add('muda_total = 1,') else qrpaf.sql.add('muda_total = 0,');

  if rb_tef.Checked then
    qrpaf.sql.Add('usa_tef = 1,') else qrpaf.sql.add('usa_tef = 0,');
  if rb_tef_tecban.Checked then
    qrpaf.sql.Add('usa_tef_tecban = 1,') else qrpaf.sql.add('usa_tef_tecban = 0,');
  if rb_tef_hipercard.Checked then
    qrpaf.sql.Add('usa_tef_hipercard = 1') else qrpaf.sql.add('usa_tef_hipercard = 0');
  qrpaf.sql.add('where codigo = 0');
  qrpaf.ExecSQL;

  GravarParametro('INFORMAR_VENDEDOR_CHECKOUT', 'B', chkVendedor.Checked);
  GravarParametro('COLUNA_CONSULTA_PRODUTOS', 'I', rdgColunaConsultaProdutos.ItemIndex);

  // lancar no regedit o caminho do banco de dados


  // Abrindo Registro do Windows para buscar configuracoes
  Registro            := TRegistry.Create;
  Registro.RootKey    := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE',false) then
  begin
    Registro.CreateKey('DataPDV');
    Registro.OpenKey('DataPDV',true);
    Registro.CreateKey('PDV');
    Registro.OpenKey('PDV',true);
    Registro.CreateKey('Dados');
    Registro.CreateKey('Balanca');
    Registro.CreateKey('Teclado');
    Registro.CreateKey('ECF');

    if Registro.OpenKey('Dados',true) then
    begin
      Registro.WriteString('Local_Base',ed_base_local.text);
      Registro.WriteString('Servidor_Ativo','SIM');
      Registro.WriteString('Servidor_Base',ed_base.Text);
      Registro.WriteString('Servidor_Host',ed_server.text);
    end;
    Registro.CloseKey;
    Registro.OpenKey('SOFTWARE',false);
    Registro.OpenKey('DataPDV',false);
    Registro.OpenKey('PDV',false);
    if Registro.OpenKey('Balanca',true) then
    begin
      Registro.WriteString('Modelo',inttostr(cb_bal_modelo.ItemIndex));
      Registro.WriteString('Handshaking',inttostr(cb_bal_hand.ItemIndex));
      Registro.WriteString('Parity',inttostr(cb_parity.ItemIndex));
      Registro.WriteString('Stopbits',inttostr(cb_parity.ItemIndex));
      Registro.WriteString('Porta',cb_bal_porta.Text);
      Registro.WriteString('Databits',cb_bal_databits.Text);
      Registro.WriteString('Baudrate',cb_bal_baudrate.Text);
      Registro.WriteString('Timeout',cb_bal_time_out.text);
    end;
    Registro.CloseKey;
    Registro.OpenKey('SOFTWARE',false);
    Registro.OpenKey('DataPDV',false);
    Registro.OpenKey('PDV',false);
    if Registro.OpenKey('Teclado',true) then
    begin
      Registro.wRITEString('Modelo','0');
      Registro.WriteString('Porta','COM10');

    end;
    Registro.CloseKey;
    Registro.OpenKey('SOFTWARE',false);
    Registro.OpenKey('DataPDV',false);
    Registro.OpenKey('PDV',false);
    if Registro.OpenKey('ECF',true) then
    begin
      Registro.WriteString('Porta',CB_PORTA.TEXT);
    end;
  END;
  Registro.Free;

  ComPort1.StoreSettings(stIniFile, vardir+'ComPortTest.ini');

  // DataPDV - arquivo de configuracao
  
  assignfile(txt,'c:\DataSAC\paf\Cfg\DataPDV.ini');
  rewrite(txt);
  writeln(txt,'999-001 '+ed_base.text);
  writeln(txt,'999-002 '+ed_server.text);
  writeln(txt,'999-003 '+ed_base.text);
  writeln(txt,'sis-ven 1');
  writeln(txt,'ver_deb 1');
  writeln(txt,'ven-avi 1');
  writeln(txt,'pdv-sen 1');
  closefile(txt);
  bContinua := true;


  application.MessageBox('Informação salva com sucesso!','Porta Serial',mb_ok);


  close;
end;

procedure TfrmPrincipal.cb_imp_tipoChange(Sender: TObject);
begin

cb_imp_porta.Text := '';
cb_imp_databits.Text := '';
cb_imp_baudrate.Text := '';
cb_imp_hand.text := '';
cb_imp_stop.Text := '';
cb_imp_parity.Text := '';
cb_imp_time_out.Text := '';

cb_imp_porta.Clear;

if (cb_imp_tipo.Text = 'Paralela') then
   begin

     cb_imp_porta.Text := 'LPT1';

     cb_imp_porta.Items.Add('LPT1');
     cb_imp_porta.Items.Add('LPT2');
     cb_imp_porta.Items.Add('LPT3');
     cb_imp_porta.Items.Add('LPT4');


   end
else if (cb_imp_tipo.Text = 'Serial') then
   begin

     cb_imp_porta.Text := 'COM1';

     cb_imp_porta.Items.Add('COM1');
     cb_imp_porta.Items.Add('COM2');
     cb_imp_porta.Items.Add('COM3');
     cb_imp_porta.Items.Add('COM4');



   end
else
   begin

     cb_imp_porta.Text := 'c:\datasac\impressao\fechamento.txt';
     cb_imp_porta.Items.Add('c:\datasac\impressao\fechamento.txt');


   end;
//endif


end;

procedure TfrmPrincipal.btn_ConfigSerialClick(Sender: TObject);
begin
//comport1.ShowSetupDialog;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin

  bServidor_Conexao := false;
  blocal_Conexao := false;

  Registro            := TRegistry.Create;
  Registro.RootKey    := HKEY_LOCAL_MACHINE;
  if Registro.OpenKey('SOFTWARE',false) then
     begin


       if Registro.OpenKey('DataPDV',false) then
           begin
             if Registro.openkey('PDV',false) then
                 begin
                   (************** BANCO DE DADOS *************)
                   if Registro.OpenKey('Dados',false) then
                      begin

                        try
                          conexao.Connected := false;
                          conexao.Database := Registro.ReadString('Local_Base');
                          conexao.Connected := true;

                          try
                            if Registro.ReadString('Servidor_Ativo') = 'SIM' then
                            begin
                              try

                                Conexao_Servidor.Connected := false;
                                Conexao_Servidor.Server := Registro.ReadString('Servidor_Host');
                                Conexao_Servidor.Database := Registro.ReadString('Servidor_Base');
                                Conexao_Servidor.Connected := true;
                                bServidor_Conexao := true;

                              except

                                try

                                  Conexao_Servidor.Connected := false;
                                  Conexao_Servidor.Server := ed_server.Text;
                                  Conexao_Servidor.Database := ed_base.Text;
                                  Conexao_Servidor.Connected := true;
                                  bServidor_Conexao := true;

                                except

                                  bServidor_Conexao := false;

                                end;

                              end;
                            end
                            else
                            begin
                              bServidor_Conexao := false;
                            end;
                          except
                            bServidor_Conexao := false;
                          end;

                          blocal_conexao := true;

                        except

                           blocal_conexao := false;

                           application.messagebox(pansichar('Não foi possível conectar ao banco de dados local!'+#13+
                                                            'Caminho: '+Registro.ReadString('Local_Base')+#13+
                                                            ' verifique se o banco encontra-se no caminho especificado acima'+chr(13)+
                                                            ' ou verifique se o caminho existe!'),'Erro',mb_ok+mb_iconerror);
                            //Application.Terminate;
                            //exit;

                           

                        end;





                      end;
                   //endif
                 end;
             //endif
           end;
       //endif


     end;
  //endi
  Registro.CloseKey;


end;

procedure TfrmPrincipal.TabEmpresaShow(Sender: TObject);
begin
  if bServidor_Conexao then
     begin

       qrfilial.Close;
       qrfilial.SQL.Clear;
       qrfilial.SQL.Add('select * from c000004');
       qrfilial.Open;

       ed_cliente_nome.Text :=  qrfilial.fieldbyname('filial').AsString;
       ed_cliente_endereco.Text :=  qrfilial.fieldbyname('endereco').AsString;
       ed_cliente_bairro.Text :=  qrfilial.fieldbyname('bairro').AsString;
       ed_cliente_cidade.Text :=  qrfilial.fieldbyname('cidade').AsString;
       ed_cliente_uf.Text :=  qrfilial.fieldbyname('uf').AsString;
       ed_cliente_cep.Text :=  qrfilial.fieldbyname('cep').AsString;
       ed_cliente_cnpj.Text :=  qrfilial.fieldbyname('cnpj').AsString;
       ed_cliente_ie.Text :=  qrfilial.fieldbyname('ie').AsString;
       ed_cliente_im.Text :=  qrfilial.fieldbyname('insc_municipal').AsString;
       ed_cliente_codibge_estado.Text :=  qrfilial.fieldbyname('ibge').AsString;
       ed_cliente_codibge_cidade.Text :=  qrfilial.fieldbyname('cod_municipio_ibge').AsString;
       ed_cliente_numero.Text :=  qrfilial.fieldbyname('numero').AsString;
       ed_cliente_fone.Text :=  qrfilial.fieldbyname('telefone').AsString;
       ed_cliente_email.Text :=  qrfilial.fieldbyname('email_empresa').AsString;
       ed_cliente_complemento.Text :=  qrfilial.fieldbyname('complemento').AsString;


       ed_cliente_site.Text  := qrfilial.fieldbyname('site').AsString;;

     end;
  //endi



end;

procedure TfrmPrincipal.TabBDShow(Sender: TObject);
begin
  if bServidor_Conexao then
     begin
       ed_base.Text := conexao_servidor.Database;
       ed_server.Text := conexao_servidor.Server;
     end;
  //endi

  if blocal_conexao then
     begin
       ed_base_local.Text := conexao.Database;
     end;
  //endi

end;

end.

