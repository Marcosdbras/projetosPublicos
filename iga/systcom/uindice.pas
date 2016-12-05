unit uIndice;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, SqlExpr,
  ExtDlgs;

type
  TfrmIndice = class(TForm)
    tabIndice: TTable;
    Bevel1: TBevel;
    tabmodulos: TTable;
    dtstipo: TDataSource;
    tabtipo: TTable;
    tabtemp: TTable;
    dtstemp: TDataSource;
    sbxmsg: TScrollBox;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    d: TScrollBox;
    Label34: TLabel;
    Label37: TLabel;
    Label35: TLabel;
    ediauthtype: TEdit;
    Label36: TLabel;
    Label44: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    edisocksauth: TEdit;
    Label41: TLabel;
    Label42: TLabel;
    edisocksversi: TEdit;
    Label43: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    sbxado: TScrollBox;
    Label55: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    btntesteado: TButton;
    mmoobs: TDBMemo;
    mmotxt: TDBMemo;
    edimens: TDBEdit;
    editxt: TDBEdit;
    edicaminhoado: TDBEdit;
    ediloginado: TDBEdit;
    edisenhaado: TDBEdit;
    edihost: TDBEdit;
    rgpauthtype: TDBRadioGroup;
    ediuser_name: TDBEdit;
    edipass_word: TDBEdit;
    ediport: TDBEdit;
    rgpversao: TDBRadioGroup;
    rgpsockauth: TDBRadioGroup;
    edimail: TDBEdit;
    edinome: TDBEdit;
    Label18: TLabel;
    Label21: TLabel;
    Label27: TLabel;
    edicaminhoado_2: TDBEdit;
    ScrollBox2: TScrollBox;
    Label59: TLabel;
    ediperiodo: TDBEdit;
    Label60: TLabel;
    Label61: TLabel;
    spdconfirma: TSpeedButton;
    SpeedButton1: TSpeedButton;
    EDICAMINHODBF_1: TDBEdit;
    Label62: TLabel;
    rgbehorc: TDBRadioGroup;
    DBRadioGroup1: TDBRadioGroup;
    Label63: TLabel;
    Label64: TLabel;
    Label65: TLabel;
    edilimite: TDBEdit;
    Label66: TLabel;
    Label67: TLabel;
    edimaxparc: TDBEdit;
    edinumcopiasvd: TDBEdit;
    Label68: TLabel;
    DBRadioGroup6: TDBRadioGroup;
    mmoobsrodape: TDBMemo;
    Label69: TLabel;
    Label70: TLabel;
    ediavancalin: TDBEdit;
    DBRadioGroup9: TDBRadioGroup;
    Label71: TLabel;
    edireducaoicms: TDBEdit;
    Label72: TLabel;
    edida1: TDBEdit;
    edida2: TDBEdit;
    edida3: TDBEdit;
    edida4: TDBEdit;
    edida5: TDBEdit;
    edida6: TDBEdit;
    edida7: TDBEdit;
    edida8: TDBEdit;
    DBRadioGroup19: TDBRadioGroup;
    Label73: TLabel;
    ediemailret: TDBEdit;
    Label74: TLabel;
    edinomeret: TDBEdit;
    edicodavista: TDBEdit;
    ediparcpadrao: TDBEdit;
    edinnf: TEdit;
    Label76: TLabel;
    Label77: TLabel;
    edipd: TDBEdit;
    ScrollBox1: TScrollBox;
    Label1: TLabel;
    DBEdit18: TDBEdit;
    DBEdit19: TDBEdit;
    Label2: TLabel;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    DBEdit24: TDBEdit;
    DBEdit25: TDBEdit;
    DBEdit26: TDBEdit;
    DBEdit27: TDBEdit;
    DBEdit28: TDBEdit;
    DBEdit29: TDBEdit;
    DBEdit30: TDBEdit;
    DBEdit31: TDBEdit;
    DBEdit32: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    DBEdit38: TDBEdit;
    DBEdit39: TDBEdit;
    DBEdit40: TDBEdit;
    DBEdit41: TDBEdit;
    ckbtdesc1: TCheckBox;
    ckbtdesc2: TCheckBox;
    ckbtdesc3: TCheckBox;
    ckbtdesc4: TCheckBox;
    ckbtdesc5: TCheckBox;
    ckbtdesc6: TCheckBox;
    ckbtdesc7: TCheckBox;
    ckbtdesc8: TCheckBox;
    ckbtdesc9: TCheckBox;
    ckbtdesc10: TCheckBox;
    ckbtdesc11: TCheckBox;
    ckbtdesc12: TCheckBox;
    ckbtdesc13: TCheckBox;
    ckbtdesc14: TCheckBox;
    ckbtdesc15: TCheckBox;
    ckbtdesc16: TCheckBox;
    ckbtdesc17: TCheckBox;
    ckbtdesc18: TCheckBox;
    ckbtdesc19: TCheckBox;
    ckbtdesc20: TCheckBox;
    Label5: TLabel;
    DBRadioGroup20: TDBRadioGroup;
    DBEdit34: TDBEdit;
    Label8: TLabel;
    ckbnomecliobr: TCheckBox;
    ckbcpfcliobr: TCheckBox;
    ckbrgcliobr: TCheckBox;
    ckbid1cliobr: TCheckBox;
    ckbfonecliobr: TCheckBox;
    Label9: TLabel;
    Label10: TLabel;
    btntela_P: TButton;
    lblt1: TLabel;
    btntela_L: TButton;
    Label11: TLabel;
    btntela_S: TButton;
    Label12: TLabel;
    btntela_pv: TButton;
    pctDial: TOpenPictureDialog;
    editipoctapass: TDBEdit;
    Label13: TLabel;
    ckbimpcabcli: TCheckBox;
    ckbimpvlrreccli: TCheckBox;
    Label14: TLabel;
    lblopavista: TLabel;
    lbltppdrpgto: TLabel;
    lblcodpass: TLabel;
    ckbgravaqua: TCheckBox;
    Label15: TLabel;
    Label16: TLabel;
    editipoctaativo: TDBEdit;
    lblcodativo: TLabel;
    Label17: TLabel;
    ediprazo: TDBEdit;
    ScrollBox3: TScrollBox;
    DBRadioGroup22: TDBRadioGroup;
    ckbecflanca: TCheckBox;
    DBEdit1: TDBEdit;
    Label19: TLabel;
    DBRadioGroup23: TDBRadioGroup;
    edicsitp: TDBEdit;
    lblcodcsitp: TLabel;
    Label20: TLabel;
    Label22: TLabel;
    edicsitr: TDBEdit;
    lblcodcsitr: TLabel;
    Label24: TLabel;
    DBEdit3: TDBEdit;
    Label23: TLabel;
    DBEdit2: TDBEdit;
    Label25: TLabel;
    DBEdit4: TDBEdit;
    Label26: TLabel;
    DBEdit5: TDBEdit;
    Label28: TLabel;
    DBEdit6: TDBEdit;
    Label29: TLabel;
    DBEdit7: TDBEdit;
    Label30: TLabel;
    DBEdit8: TDBEdit;
    btnconfint: TButton;
    DBRadioGroup24: TDBRadioGroup;
    CKBIMPDESTDA1: TCheckBox;
    CKBIMPDESTDA2: TCheckBox;
    CKBIMPDESTDA3: TCheckBox;
    CKBIMPDESTDA4: TCheckBox;
    CKBIMPDESTDA5: TCheckBox;
    CKBIMPDESTDA6: TCheckBox;
    CKBIMPDESTDA7: TCheckBox;
    CKBIMPDESTDA8: TCheckBox;
    CKBVENDVENDA: TCheckBox;
    CKBOBRCLIPARC: TCheckBox;
    CKBABRIRPRODFV: TCheckBox;
    CKBABRRESUPRODV: TCheckBox;
    CKBBAIXAQDOORCPED: TCheckBox;
    CKBTCLFINALIZA: TCheckBox;
    CKBCOMPACTAR_LINHAS_NF: TCheckBox;
    CKBIMPVLRCB: TCheckBox;
    ckbmostraendent: TCheckBox;
    ckbmostraendcom: TCheckBox;
    ckbmostraendcob: TCheckBox;
    ckbmostrafotocli: TCheckBox;
    Label31: TLabel;
    Label32: TLabel;
    Label33: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label53: TLabel;
    edititendent: TEdit;
    edititendcom: TEdit;
    edititendcob: TEdit;
    Label54: TLabel;
    Label56: TLabel;
    Label75: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    Label81: TLabel;
    edioutinfcli1: TEdit;
    edioutinfcli2: TEdit;
    edioutinfcli3: TEdit;
    edioutinfcli4: TEdit;
    edioutinfcli5: TEdit;
    edioutinfcli6: TEdit;
    edioutinfcli7: TEdit;
    edioutinfcli8: TEdit;
    edioutinfcli9: TEdit;
    edioutinfcli10: TEdit;
    edicsitp1: TDBEdit;
    lblcodcsitp1: TLabel;
    edicsitr1: TDBEdit;
    lblcodcsitr1: TLabel;
    Label82: TLabel;
    DBEdit9: TDBEdit;
    btncomanda: TButton;
    ckbmostraapl: TCheckBox;
    Bevel2: TBevel;
    Label83: TLabel;
    ckbmostracodaux: TCheckBox;
    ckbmostramarca: TCheckBox;
    DBRadioGroup2: TDBRadioGroup;
    Bevel3: TBevel;
    cbxsitcliinat: TDBLookupComboBox;
    cbxsitclibloq: TDBLookupComboBox;
    Label85: TLabel;
    Label86: TLabel;
    dbgtipoqtdeecf: TDBRadioGroup;
    ckbimpconcomitate: TCheckBox;
    ckbmostrainfofinadd: TCheckBox;
    ckbop: TCheckBox;
    rgbporta: TRadioGroup;
    DBEdit10: TDBEdit;
    Label84: TLabel;
    DBEdit11: TDBEdit;
    DBEdit12: TDBEdit;
    Label87: TLabel;
    Label88: TLabel;
    DBEdit14: TDBEdit;
    Label89: TLabel;
    DBEdit15: TDBEdit;
    Label90: TLabel;
    DBRadioGroup3: TDBRadioGroup;
    DBEdit13: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure btntesteadoClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdconfirmaClick(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure btntela_PClick(Sender: TObject);
    procedure btntela_LClick(Sender: TObject);
    procedure btntela_SClick(Sender: TObject);
    procedure btntela_pvClick(Sender: TObject);
    procedure edicodavistaChange(Sender: TObject);
    procedure ediparcpadraoChange(Sender: TObject);
    procedure edicodavistaKeyPress(Sender: TObject; var Key: Char);
    procedure ediparcpadraoKeyPress(Sender: TObject; var Key: Char);
    procedure edilimiteKeyPress(Sender: TObject; var Key: Char);
    procedure editipoctapassKeyPress(Sender: TObject; var Key: Char);
    procedure edimaxparcKeyPress(Sender: TObject; var Key: Char);
    procedure edinumcopiasvdKeyPress(Sender: TObject; var Key: Char);
    procedure edipdKeyPress(Sender: TObject; var Key: Char);
    procedure ediavancalinKeyPress(Sender: TObject; var Key: Char);
    procedure edireducaoicmsKeyPress(Sender: TObject; var Key: Char);
    procedure edinnfKeyPress(Sender: TObject; var Key: Char);
    procedure edida1KeyPress(Sender: TObject; var Key: Char);
    procedure edida2KeyPress(Sender: TObject; var Key: Char);
    procedure edida3KeyPress(Sender: TObject; var Key: Char);
    procedure edida4KeyPress(Sender: TObject; var Key: Char);
    procedure edida5KeyPress(Sender: TObject; var Key: Char);
    procedure edida6KeyPress(Sender: TObject; var Key: Char);
    procedure edida7KeyPress(Sender: TObject; var Key: Char);
    procedure edida8KeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit18KeyPress(Sender: TObject; var Key: Char);
    procedure editipoctapassChange(Sender: TObject);
    procedure editipoctaativoChange(Sender: TObject);
    procedure edicsitpChange(Sender: TObject);
    procedure edicsitrChange(Sender: TObject);
    procedure btnconfintClick(Sender: TObject);
    procedure btncomandaClick(Sender: TObject);
    procedure rgbportaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIndice: TfrmIndice;

implementation

uses uGeral, uPrincipal, uDados, uconfint, uqtdecoma;

{$R *.DFM}

procedure TfrmIndice.FormShow(Sender: TObject);
var
   vardir: String;
  ResultSet : tCustomSqlDataSet;
  SqlStMt:String;

begin
   vardir := ExtractFilePath(Application.ExeName);
   tabela := 'Indice';

   with frmdados do
     begin
       cds_tipo_pgto.Active := false;
       dbx_tipo_pgto.Active := false;
       dbx_tipo_pgto.SQL.Clear;
       dbx_tipo_pgto.SQL.Add('Select * from tipo_pgto');
       dbx_tipo_pgto.Active := true;
       cds_tipo_pgto.Active := true;

       cds_classep.Active := false;
       dbx_classep.Active := false;
       dbx_classep.SQL.Clear;
       dbx_classep.SQL.Add('Select * from classep');
       dbx_classep.Active := true;
       cds_classep.Active := true;

     end;
   //endi




   with frmdados.Cds_indice do
     begin
       if recordcount = 0 then
          append
       else
          edit;
       //endi
     end;
   //endwith


  if frmdados.Cds_indice.FieldByName('impcabcli').AsString = 'T' then
     begin
       ckbimpcabcli.Checked := true;
     end
  else
     begin
       ckbimpcabcli.Checked := false;
     end;
  //endif

  if frmdados.Cds_indice.FieldByName('impconcomitante').AsString = 'T' then
     begin
       ckbimpconcomitate.Checked := true;
     end
  else
     begin
       ckbimpconcomitate.Checked := false;
     end;
  //endif

  if frmdados.Cds_indice.FieldByName('ecflanca').AsString = 'T' then
     begin
       ckbecflanca.Checked := true;
     end
  else
     begin
       ckbecflanca.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('impvlrreccli').AsString = 'T' then
     begin
       ckbimpvlrreccli.Checked := true;
     end
  else
     begin
       ckbimpvlrreccli.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('gravaqua').AsString = 'T' then
     begin
       ckbgravaqua.Checked := true;
     end
  else
     begin
       ckbgravaqua.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc1').AsString = 'T' then
     begin
       ckbtdesc1.Checked := true;
     end
  else
     begin
       ckbtdesc1.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc2').AsString = 'T' then
     begin
       ckbtdesc2.Checked := true;
     end
  else
     begin
       ckbtdesc2.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc3').AsString = 'T' then
     begin
       ckbtdesc3.Checked := true;
     end
  else
     begin
       ckbtdesc3.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc4').AsString = 'T' then
     begin
       ckbtdesc4.Checked := true;
     end
  else
     begin
       ckbtdesc4.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc5').AsString = 'T' then
     begin
       ckbtdesc5.Checked := true;
     end
  else
     begin
       ckbtdesc5.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc6').AsString = 'T' then
     begin
       ckbtdesc6.Checked := true;
     end
  else
     begin
       ckbtdesc6.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc7').AsString = 'T' then
     begin
       ckbtdesc7.Checked := true;
     end
  else
     begin
       ckbtdesc7.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc8').AsString = 'T' then
     begin
       ckbtdesc8.Checked := true;
     end
  else
     begin
       ckbtdesc8.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc9').AsString = 'T' then
     begin
       ckbtdesc9.Checked := true;
     end
  else
     begin
       ckbtdesc9.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc10').AsString = 'T' then
     begin
       ckbtdesc10.Checked := true;
     end
  else
     begin
       ckbtdesc10.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc11').AsString = 'T' then
     begin
       ckbtdesc11.Checked := true;
     end
  else
     begin
       ckbtdesc11.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc12').AsString = 'T' then
     begin
       ckbtdesc12.Checked := true;
     end
  else
     begin
       ckbtdesc12.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc13').AsString = 'T' then
     begin
       ckbtdesc13.Checked := true;
     end
  else
     begin
       ckbtdesc13.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc14').AsString = 'T' then
     begin
       ckbtdesc14.Checked := true;
     end
  else
     begin
       ckbtdesc14.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc15').AsString = 'T' then
     begin
       ckbtdesc15.Checked := true;
     end
  else
     begin
       ckbtdesc15.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc16').AsString = 'T' then
     begin
       ckbtdesc16.Checked := true;
     end
  else
     begin
       ckbtdesc16.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc17').AsString = 'T' then
     begin
       ckbtdesc17.Checked := true;
     end
  else
     begin
       ckbtdesc17.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc18').AsString = 'T' then
     begin
       ckbtdesc18.Checked := true;
     end
  else
     begin
       ckbtdesc18.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc19').AsString = 'T' then
     begin
       ckbtdesc19.Checked := true;
     end
  else
     begin
       ckbtdesc19.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('tdesc20').AsString = 'T' then
     begin
       ckbtdesc20.Checked := true;
     end
  else
     begin
       ckbtdesc20.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('nomecliobr').AsString = 'T' then
     begin
       ckbnomecliobr.Checked := true;
     end
  else
     begin
       ckbnomecliobr.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('cpfcliobr').AsString = 'T' then
     begin
       ckbcpfcliobr.Checked := true;
     end
  else
     begin
       ckbcpfcliobr.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('rgcliobr').AsString = 'T' then
     begin
       ckbrgcliobr.Checked := true;
     end
  else
     begin
       ckbrgcliobr.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('id1cliobr').AsString = 'T' then
     begin
       ckbid1cliobr.Checked := true;
     end
  else
     begin
       ckbid1cliobr.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('fonecliobr').AsString = 'T' then
     begin
       ckbfonecliobr.Checked := true;
     end
  else
     begin
       ckbfonecliobr.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostraapl').AsString = 'T' then
     begin
       ckbmostraapl.Checked := true;
     end
  else
     begin
       ckbmostraapl.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostracodaux').AsString = 'T' then
     begin
       ckbmostracodaux.Checked := true;
     end
  else
     begin
       ckbmostracodaux.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostramarca').AsString = 'T' then
     begin
       ckbmostramarca.Checked := true;
     end
  else
     begin
       ckbmostramarca.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA1').AsString = '1' then
     begin
       CKBIMPDESTDA1.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA1.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA2').AsString = '1' then
     begin
       CKBIMPDESTDA2.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA2.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA3').AsString = '1' then
     begin
       CKBIMPDESTDA3.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA3.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA4').AsString = '1' then
     begin
       CKBIMPDESTDA4.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA4.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA5').AsString = '1' then
     begin
       CKBIMPDESTDA5.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA5.Checked := false;
     end;
  //endif

  if frmdados.Cds_indice.FieldByName('IMPDESTDA6').AsString = '1' then
     begin
       CKBIMPDESTDA6.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA6.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA7').AsString = '1' then
     begin
       CKBIMPDESTDA7.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA7.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPDESTDA8').AsString = '1' then
     begin
       CKBIMPDESTDA8.Checked := true;
     end
  else
     begin
       CKBIMPDESTDA8.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('VENDVENDA').AsString = '1' then
     begin
       CKBVENDVENDA.Checked := true;
     end
  else
     begin
       CKBVENDVENDA.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('ordem_producao').AsString = 'F' then
     begin
       ckbop.Checked := False;
     end
  else
     begin
       ckbop.Checked := true;
     end;
  //endif


  if frmdados.Cds_indice.FieldByName('OBRCLIPARC').AsString = '1' then
     begin
       CKBOBRCLIPARC.Checked := true;
     end
  else
     begin
       CKBOBRCLIPARC.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('ABRIRPRODFV').AsString = '1' then
     begin
       CKBABRIRPRODFV.Checked := true;
     end
  else
     begin
       CKBABRIRPRODFV.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('ABRRESUPRODV').AsString = '1' then
     begin
       CKBABRRESUPRODV.Checked := true;
     end
  else
     begin
       CKBABRRESUPRODV.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('BAIXAQDOORCPED').AsString = '1' then
     begin
       CKBBAIXAQDOORCPED.Checked := true;
     end
  else
     begin
       CKBBAIXAQDOORCPED.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('TCLFINALIZA').AsString = '1' then
     begin
       CKBTCLFINALIZA.Checked := true;
     end
  else
     begin
       CKBTCLFINALIZA.Checked := false;
     end;
  //endif


  if frmdados.Cds_indice.FieldByName('mostrainfofinadd').AsString = '1' then
     begin
       CKBMOSTRAINFOFINADD.Checked := true;
     end
  else
     begin
       CKBMOSTRAINFOFINADD.Checked := false;
     end;
  //endif



  if frmdados.Cds_indice.FieldByName('COMPACTAR_LINHAS_NF').AsString = '1' then
     begin
       CKBCOMPACTAR_LINHAS_NF.Checked := true;
     end
  else
     begin
       CKBCOMPACTAR_LINHAS_NF.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('IMPVLRCB').AsString = '1' then
     begin
       CKBIMPVLRCB.Checked := true;
     end
  else
     begin
       CKBIMPVLRCB.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostraendent').AsString = 'T' then
     begin
       ckbmostraendent.Checked := true;
     end
  else
     begin
       ckbmostraendent.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostraendcom').AsString = 'T' then
     begin
       ckbmostraendcom.Checked := true;
     end
  else
     begin
       ckbmostraendcom.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostraendcob').AsString = 'T' then
     begin
       ckbmostraendcob.Checked := true;
     end
  else
     begin
       ckbmostraendcob.Checked := false;
     end;
  //endif
  if frmdados.Cds_indice.FieldByName('mostrafotocli').AsString = 'T' then
     begin
       ckbmostrafotocli.Checked := true;
     end
  else
     begin
       ckbmostrafotocli.Checked := false;
     end;
  //endif


  if frmdados.Cds_Indice.FieldByName('ID1').asString <> '' then
     ckbid1cliobr.Caption := frmdados.Cds_Indice.FieldByName('ID1').asString;
  //endi

  btntela_P.Caption := frmdados.Cds_Indice.fieldbyname('pct1').asString;
  btntela_L.Caption := frmdados.Cds_Indice.fieldbyname('pct2').asString;
  btntela_S.Caption := frmdados.Cds_Indice.fieldbyname('pct3').asString;
  btntela_pv.Caption := frmdados.Cds_Indice.fieldbyname('pct4').asString;


  lblopavista.Caption := '';
  lbltppdrpgto.Caption := '';


  if frmdados.cds_Tipo_Pgto.Locate('codigo',edicodavista.Text,[]) then
     lblopavista.Caption := frmdados.cds_Tipo_Pgto.fieldbyname('descricao').asString
  else
     lblopavista.Caption := 'Código não encontrado';
  //endi

  if frmdados.cds_Tipo_Pgto.Locate('codigo',ediparcpadrao.Text,[]) then
     lbltppdrpgto.Caption := frmdados.cds_Tipo_Pgto.fieldbyname('descricao').asString
  else
     lbltppdrpgto.Caption := 'Código não encontrado';
  //endi

  if frmdados.cds_classep.Locate('codigo',editipoctapass.Text,[]) then
     lblcodpass.Caption := frmdados.cds_classep.fieldbyname('descricao').asString
  else
     lblcodpass.Caption := 'Código não encontrado';
  //endi

  if frmdados.cds_classep.Locate('codigo',editipoctaativo.Text,[]) then
     lblcodativo.Caption := frmdados.cds_classep.fieldbyname('descricao').asString
  else
     lblcodativo.Caption := 'Código não encontrado';
  //endi

  if frmdados.cds_situpagar.Locate('codigo',edicsitp.Text,[]) then
     lblcodcsitp.Caption := frmdados.cds_situpagar.fieldbyname('descricao').asString
  else
     lblcodcsitp.Caption := 'Código não encontrado';
  //endi

  if frmdados.cds_siturec.Locate('codigo',edicsitr.Text,[]) then
     lblcodcsitr.Caption := frmdados.cds_siturec.fieldbyname('descricao').asString
  else
     lblcodcsitr.Caption := 'Código não encontrado';
  //endi


  if frmdados.cds_situpagar.Locate('codigo',edicsitp1.Text,[]) then
     lblcodcsitp1.Caption := frmdados.cds_situpagar.fieldbyname('descricao').asString
  else
     lblcodcsitp1.Caption := 'Código não encontrado';
  //endi

  if frmdados.cds_siturec.Locate('codigo',edicsitr1.Text,[]) then
     lblcodcsitr1.Caption := frmdados.cds_siturec.fieldbyname('descricao').asString
  else
     lblcodcsitr1.Caption := 'Código não encontrado';
  //endi

  edititendent.Text := frmdados.Cds_Indice.fieldbyname('titendent').asString;
  edititendcom.Text := frmdados.Cds_Indice.fieldbyname('titendcom').asString;
  edititendcob.Text := frmdados.Cds_Indice.fieldbyname('titendcob').asString;

  edioutinfcli1.Text := frmdados.Cds_Indice.fieldbyname('outinfcli1').asString;
  edioutinfcli2.Text := frmdados.Cds_Indice.fieldbyname('outinfcli2').asString;
  edioutinfcli3.Text := frmdados.Cds_Indice.fieldbyname('outinfcli3').asString;
  edioutinfcli4.Text := frmdados.Cds_Indice.fieldbyname('outinfcli4').asString;
  edioutinfcli5.Text := frmdados.Cds_Indice.fieldbyname('outinfcli5').asString;
  edioutinfcli6.Text := frmdados.Cds_Indice.fieldbyname('outinfcli6').asString;
  edioutinfcli7.Text := frmdados.Cds_Indice.fieldbyname('outinfcli7').asString;
  edioutinfcli8.Text := frmdados.Cds_Indice.fieldbyname('outinfcli8').asString;
  edioutinfcli9.Text := frmdados.Cds_Indice.fieldbyname('outinfcli9').asString;
  edioutinfcli10.Text := frmdados.Cds_Indice.fieldbyname('outinfcli10').asString;

   try
     SqlStMt := 'Select gen_id(Gen_nNf,0) as Valor from RDB$DATABASE;';
     ResultSet := nil;
     frmdados.Sql_Dados.Execute(SqlStMt,nil,@ResultSet);
     if Assigned(ResultSet) then
        edinnf.Text := ResultSet.fieldbyname('valor').asString;
     //endi
   except
     showmessage('Houve um erro quando tentava carregar N.o N.F.');
   end;


end;

procedure TfrmIndice.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmIndice.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmIndice.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmIndice.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmIndice.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmindice:=nil;
  form_ativo := '';
end;

procedure TfrmIndice.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmIndice.btntesteadoClick(Sender: TObject);
begin

  try
    with frmdados.ADO_Conexao do
       begin
         Connected := false;
         ConnectionString := 'Provider=MSDASQL.1;Password='+edisenhaado.Text+';Persist Security Info=True;User ID='+ediloginado.Text+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                             'DBQ='+edicaminhoado.text+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+edisenhaado.text+';'+
                             'UID=admin;";Initial Catalog='+edicaminhoado.text;
         Connected := true;
       end;
    //endwith
     showmessage('Teste Caminho 1, concluído com sucesso!!!');
  except
     showmessage('Teste Caminho 1, falhou!!!');
  end;


  try
   if edicaminhoado_2.Text <> '' then
      begin
        with frmdados.ADO_Conexao do
           begin
             Connected := false;
             ConnectionString := 'Provider=MSDASQL.1;Password='+edisenhaado.Text+';Persist Security Info=True;User ID='+ediloginado.Text+';Data Source=Banco de dados MS Access;Extended Properties="DSN=Banco de dados MS Access;'+
                                 'DBQ='+edicaminhoado_2.text+';DriverId=25;FIL=MS Access;MaxBufferSize=2048;PageTimeout=5;PWD='+edisenhaado.text+';'+
                                 'UID=admin;";Initial Catalog='+edicaminhoado_2.text;
             Connected := true;
           end;
        //endwith
         showmessage('Teste Caminho 2, concluído com sucesso!!!');
      end;
   //endi
  except
     showmessage('Teste Caminho 2, falhou!!!');
  end;



end;

procedure TfrmIndice.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmIndice.spdconfirmaClick(Sender: TObject);
var
  ResultSet : tCustomSqlDataSet;
  SqlStMt:String;

begin
  try
    frmdados.Sql_Dados.Execute('SET GENERATOR GEN_nNf TO '+edinnf.text ,nil,@ResultSet);
  except
    resultset.Free;
  end;
  {
    check list está gravando no before post
    do cds_indice em frmdados
  }

  frmdados.Cds_Indice.fieldbyname('titendent').asString := edititendent.Text;
  frmdados.Cds_Indice.fieldbyname('titendcom').asString := edititendcom.Text;
  frmdados.Cds_Indice.fieldbyname('titendcob').asString := edititendcob.Text;

  frmdados.Cds_Indice.fieldbyname('outinfcli1').asString := edioutinfcli1.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli2').asString := edioutinfcli2.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli3').asString := edioutinfcli3.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli4').asString := edioutinfcli4.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli5').asString := edioutinfcli5.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli6').asString := edioutinfcli6.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli7').asString := edioutinfcli7.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli8').asString := edioutinfcli8.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli9').asString := edioutinfcli9.Text;
  frmdados.Cds_Indice.fieldbyname('outinfcli10').asString := edioutinfcli10.Text;

  frmdados.Cds_Indice.FieldByName('pct1').asString := btntela_p.Caption;
  frmdados.Cds_Indice.FieldByName('pct2').asString := btntela_l.Caption;
  frmdados.Cds_Indice.FieldByName('pct3').asString := btntela_s.Caption;
  frmdados.Cds_Indice.FieldByName('pct4').asString := btntela_pv.Caption;
  frmdados.Cds_Indice.Post;


try
  if frmdados.Cds_Indice.FieldByName('pct1').asString <> '' then
     begin
       frmprincipal.imgprincipal.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct1').asString);
     end;
  //endi
  if frmdados.Cds_Indice.FieldByName('pct2').asString <> '' then
     begin
       frmprincipal.imglaterale.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct2').asString);
     end;
  //endi
  if frmdados.Cds_Indice.FieldByName('pct3').asString <> '' then
     begin
       frmprincipal.imgsuperior.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct3').asString);
     end;
  //endi
  if frmdados.Cds_Indice.FieldByName('pct3').asString <> '' then
     begin
       frmprincipal.imglogin.Picture.LoadFromFile(frmdados.Cds_Indice.FieldByName('pct3').asString);
     end;
  //endi

except
  smsg := 'erro qdo tentei carregar figura';
end;







  close;

end;

procedure TfrmIndice.SpeedButton1Click(Sender: TObject);
begin
  if frmdados.Cds_Indice.state in [dsInsert,dsEdit] then
     begin
       frmdados.Cds_Indice.Cancel;
     end;
  //endi
  close;

end;

procedure TfrmIndice.btntela_PClick(Sender: TObject);
begin
if pctdial.Execute then
  begin
    btntela_p.Caption := pctdial.FileName;
  end;
//endi
end;

procedure TfrmIndice.btntela_LClick(Sender: TObject);
begin
  if pctdial.Execute then
     begin
       btntela_l.Caption := pctdial.FileName;
     end;
  //endi

end;

procedure TfrmIndice.btntela_SClick(Sender: TObject);
begin
if pctdial.Execute then
  begin
    btntela_s.Caption := pctdial.FileName;
  end;
//endi

end;

procedure TfrmIndice.btntela_pvClick(Sender: TObject);
begin
if pctdial.Execute then
  begin
    btntela_pv.Caption := pctdial.FileName;
  end;
//endi

end;

procedure TfrmIndice.edicodavistaChange(Sender: TObject);
begin
  if not frmdados.cds_Tipo_Pgto.Active  then
     exit;
  //endi

  if edicodavista.Text = '' then
     exit;
  //endi

  if frmdados.cds_Tipo_Pgto.Locate('codigo',edicodavista.Text,[]) then
     lblopavista.Caption := frmdados.cds_Tipo_Pgto.fieldbyname('descricao').asString
  else
     lblopavista.Caption := 'Código não encontrado';
  //endi


end;

procedure TfrmIndice.ediparcpadraoChange(Sender: TObject);
begin
  if not frmdados.cds_Tipo_Pgto.Active  then
     exit;
  //endi

  if ediparcpadrao.Text = '' then
     exit;
  //endi

  if frmdados.cds_Tipo_Pgto.Locate('codigo',ediparcpadrao.Text,[]) then
     lbltppdrpgto.Caption := frmdados.cds_Tipo_Pgto.fieldbyname('descricao').asString
  else
     lbltppdrpgto.Caption := 'Código não encontrado';
  //endi

end;

procedure TfrmIndice.edicodavistaKeyPress(Sender: TObject; var Key: Char);
begin

if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.ediparcpadraoKeyPress(Sender: TObject; var Key: Char);
begin

if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edilimiteKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.editipoctapassKeyPress(Sender: TObject; var Key: Char);
begin

if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edimaxparcKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edinumcopiasvdKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edipdKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.ediavancalinKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edireducaoicmsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edinnfKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida1KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida2KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida3KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida4KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida5KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida6KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida7KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.edida8KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.DBEdit18KeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);

end;

procedure TfrmIndice.editipoctapassChange(Sender: TObject);
begin
  if editipoctapass.Text = '' then
     exit;
  //endi

  if frmdados.cds_classep.Locate('codigo',editipoctapass.Text,[]) then
     lblcodpass.Caption := frmdados.cds_classep.fieldbyname('descricao').asString
  else
     lblcodpass.Caption := 'Código não encontrado';
  //endi

end;

procedure TfrmIndice.editipoctaativoChange(Sender: TObject);
begin
  if editipoctaativo.Text = '' then
     exit;
  //endi

  if frmdados.cds_classep.Locate('codigo',editipoctaativo.Text,[]) then
     lblcodativo.Caption := frmdados.cds_classep.fieldbyname('descricao').asString
  else
     lblcodativo.Caption := 'Código não encontrado';
  //endi

end;

procedure TfrmIndice.edicsitpChange(Sender: TObject);
begin
  if edicsitp.Text = '' then
     exit;
  //endi

  if frmdados.cds_situpagar.Locate('codigo',edicsitp.Text,[]) then
     lblcodcsitp.Caption := frmdados.cds_situpagar.fieldbyname('descricao').asString
  else
     lblcodcsitp.Caption := 'Código não encontrado';
  //endi


end;

procedure TfrmIndice.edicsitrChange(Sender: TObject);
begin
  if edicsitr.Text = '' then
     exit;
  //endi

  if frmdados.cds_siturec.Locate('codigo',edicsitr.Text,[]) then
     lblcodcsitr.Caption := frmdados.cds_siturec.fieldbyname('descricao').asString
  else
     lblcodcsitr.Caption := 'Código não encontrado';
  //endi

end;

procedure TfrmIndice.btnconfintClick(Sender: TObject);
begin
if not bConfInt then
   begin
     showmessage('Acesso restrito');
   end
else
   begin

     with frmdados do
       begin

         cds_sitb.Active := false;
         dbx_sitb.Active := false;
         dbx_sitb.SQL.Clear;
         dbx_sitb.sql.Add('Select * from sitb');
         dbx_sitb.Active := true;
         cds_sitb.Active := true;
         if cds_sitb.RecordCount > 0 then
            begin
              frmconfint := tfrmconfint.create(self);
              frmconfint.showmodal;
              frmconfint.free;
            end
         else
            begin
              showmessage('Não há situação tributária B cadastrada');
            end;
         //endi



       end;
     //endi

   end;
//endi
end;

procedure TfrmIndice.btncomandaClick(Sender: TObject);
begin
frmqtdecoma := tfrmqtdecoma.create(self);
frmqtdecoma.showmodal;
frmqtdecoma.free;
end;

procedure TfrmIndice.rgbportaClick(Sender: TObject);
begin
  case rgbporta.ItemIndex of
    0:begin
        dbedit10.Text := 'Lpt1';
      end;
    1:begin
        dbedit10.Text := 'Lpt2';
      end;
    2:begin
        dbedit10.Text := 'Lpt3';
      end;
    3:begin
        dbedit10.Text := 'Lpt4';
      end;
    4:begin
        dbedit10.Text := 'c:\auxsystcom';
      end;
    5:begin
        dbedit10.Text := '\\computador-rede\impressora';
      end;




  end;


end;

end.
