unit uPesqVprod;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, abarra, ExtDlgs, jpeg, clipbrd, shellapi,
  dbiprocs, Dbclient;

type
  TfrmPesqVProd = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataIP: TDateTimePicker;
    Label2: TLabel;
    DtpDataFP: TDateTimePicker;
    pnldir: TPanel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    edicodprod: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    imgfichadetalhe: TImageList;
    spdIncluir171b: TSpeedButton;
    cbxNomeMar: TDBLookupComboBox;
    Label9: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    DtpDataI: TDateTimePicker;
    DtpDataF: TDateTimePicker;
    Label29: TLabel;
    CbxNomeGru: TDBLookupComboBox;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;
    spdConsultar174: TSpeedButton;
    spdcodbar175: TSpeedButton;
    spdilustracao177: TSpeedButton;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    spdiconea: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    dbgProdutos: TDBGrid;
    pnlficha: TPanel;
    pnlcab: TPanel;
    Label5: TLabel;
    DBText1: TDBText;
    Label4: TLabel;
    edidescricao: TDBEdit;
    pcldetalhe: TPageControl;
    tbscarac: TTabSheet;
    Panel1: TPanel;
    spdcodbar: TSpeedButton;
    Label11: TLabel;
    Label14: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label15: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    ediqtde: TDBEdit;
    ediultcont: TDBEdit;
    cbxnomeund: TDBLookupComboBox;
    ediprcu: TDBEdit;
    ediprve: TDBEdit;
    edicmar: TEdit;
    cbxnomemarca: TDBLookupComboBox;
    edicgru: TEdit;
    cbxnomegrupo: TDBLookupComboBox;
    edicodbar: TDBEdit;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    tbsentrada: TTabSheet;
    Bevel6: TBevel;
    spdfiltrare: TSpeedButton;
    spdlimpare: TSpeedButton;
    Label7: TLabel;
    Label8: TLabel;
    dbgentrada: TDBGrid;
    dtpdataIe: TDateTimePicker;
    dtpdataFe: TDateTimePicker;
    tbssaida: TTabSheet;
    Bevel8: TBevel;
    Label10: TLabel;
    Label24: TLabel;
    spdfiltrars: TSpeedButton;
    spdlimpars: TSpeedButton;
    dbgsaida: TDBGrid;
    dtpDataIs: TDateTimePicker;
    DtpDataFs: TDateTimePicker;
    pnlrodape: TPanel;
    Label28: TLabel;
    lbltots: TLabel;
    Panel2: TPanel;
    Label27: TLabel;
    lbltote: TLabel;
    spdetq: TSpeedButton;
    Label30: TLabel;
    ediprcubs: TDBEdit;
    Label31: TLabel;
    edialiqcus: TDBEdit;
    Label32: TLabel;
    Label33: TLabel;
    edivlradd: TDBEdit;
    Label34: TLabel;
    ediper: TDBEdit;
    Label35: TLabel;
    edilocalizacao: TDBEdit;
    Label36: TLabel;
    Label37: TLabel;
    ediaplicacao: TDBEdit;
    Bevel3: TBevel;
    Label38: TLabel;
    lbldif: TLabel;
    Label39: TLabel;
    lblmrgcon: TLabel;
    ckbactdesc: TCheckBox;
    imgFoto: TImage;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    opdAbrirfig: TOpenPictureDialog;
    barra1: TABarra;
    Label40: TLabel;
    cbxnometipo_prod: TDBLookupComboBox;
    Label41: TLabel;
    edicbar: TEdit;
    Label42: TLabel;
    edicodaux: TDBEdit;
    Label43: TLabel;
    edicaux: TEdit;
    Label44: TLabel;
    estmin: TDBEdit;
    Label45: TLabel;
    estmax: TDBEdit;
    Label47: TLabel;
    CbxNomeTipo: TDBLookupComboBox;
    tbssaidab: TTabSheet;
    Label46: TLabel;
    DtpDataIsb: TDateTimePicker;
    Label48: TLabel;
    DtpDataFsb: TDateTimePicker;
    spdfiltrarsb: TSpeedButton;
    spdlimparsb: TSpeedButton;
    Bevel4: TBevel;
    dbgsaidab: TDBGrid;
    Panel3: TPanel;
    Label49: TLabel;
    lbltotsb: TLabel;
    tbstributacao: TTabSheet;
    Panel4: TPanel;
    Label19: TLabel;
    cbxnomeicms: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomeipi: TDBLookupComboBox;
    Label17: TLabel;
    cbxnomesita: TDBLookupComboBox;
    Label18: TLabel;
    cbxnomesitb: TDBLookupComboBox;
    Label16: TLabel;
    cbxnomecf: TDBLookupComboBox;
    Label50: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    Label51: TLabel;
    cbxnomepis: TDBLookupComboBox;
    Label52: TLabel;
    cbxnomecofins: TDBLookupComboBox;
    Label53: TLabel;
    cbxnomemodbc: TDBLookupComboBox;
    Label54: TLabel;
    cbxnomemodbcst: TDBLookupComboBox;
    Label55: TLabel;
    cbxnomeirii: TDBLookupComboBox;
    Label56: TLabel;
    cbxnomevii: TDBLookupComboBox;
    Label57: TLabel;
    cbxnomeoimp: TDBLookupComboBox;
    Label58: TLabel;
    DBEdit1: TDBEdit;
    Label59: TLabel;
    DBEdit2: TDBEdit;
    Label60: TLabel;
    cbxnometipotabela: TDBLookupComboBox;
    Label61: TLabel;
    cbxnometipotab: TDBLookupComboBox;
    spdExp: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tbstabpr: TTabSheet;
    dbgtabprp: TDBGrid;
    Label62: TLabel;
    DBEdit3: TDBEdit;
    ckbindtot: TCheckBox;
    Label63: TLabel;
    DBEdit4: TDBEdit;
    Label64: TLabel;
    DBEdit5: TDBEdit;
    Panel5: TPanel;
    Label65: TLabel;
    DBLookupComboBox4: TDBLookupComboBox;
    Button1: TButton;
    Button2: TButton;
    Label66: TLabel;
    DBEdit6: TDBEdit;
    BitBtn1: TBitBtn;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    ediprcubs_o: TEdit;
    ediprcu_o: TEdit;
    ediper_o: TEdit;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgprodutosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgprodutosEnter(Sender: TObject);
    procedure dbgdprodutosEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure dbgprodutosExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure tbsentradaShow(Sender: TObject);
    procedure spdlimpareClick(Sender: TObject);
    procedure spdfiltrareClick(Sender: TObject);
    procedure dbgentradaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgentradaExit(Sender: TObject);
    procedure tbssaidaShow(Sender: TObject);
    procedure spdlimparsClick(Sender: TObject);
    procedure spdfiltrarsClick(Sender: TObject);
    procedure dbgsaidaExit(Sender: TObject);
    procedure dbgsaidaKeyPress(Sender: TObject; var Key: Char);
    procedure spdprinterClick(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure pnlfichaEnter(Sender: TObject);
    procedure spdIncluir171bClick(Sender: TObject);
    procedure cbxnomeicmsKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomeipiKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomecfKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomemarcaKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomesitaKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomesitbKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomegrupoKeyPress(Sender: TObject; var Key: Char);
    procedure edicodbarKeyPress(Sender: TObject; var Key: Char);
    procedure spdetqClick(Sender: TObject);
    procedure spdcodbarClick(Sender: TObject);
    procedure edicmarExit(Sender: TObject);
    procedure edicgruExit(Sender: TObject);
    procedure limpar;
    procedure mostrar;
    procedure edicodigoiExit(Sender: TObject);
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
    procedure dbgentradaEnter(Sender: TObject);
    procedure dbgsaidaEnter(Sender: TObject);
    procedure dbgprodutosColEnter(Sender: TObject);
    procedure edicodbarExit(Sender: TObject);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure spdConsultar174Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure spdcancelar2310Click(Sender: TObject);
    procedure AlternaF;
    procedure AlternaL;
    procedure bloqueiacampos;
    procedure desbloqueiacampos;
    procedure bloqueiabotoes;
    procedure desbloqueiabotoes;
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure filtradetalhes;
    procedure pcldetalheChange(Sender: TObject);
    procedure dbgsaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgentradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdcodbar175Click(Sender: TObject);
    procedure ediprcubsExit(Sender: TObject);
    procedure ediprcuExit(Sender: TObject);
    procedure ediperExit(Sender: TObject);
    procedure ediprveExit(Sender: TObject);
    procedure edialiqcusExit(Sender: TObject);
    procedure edivlraddExit(Sender: TObject);
    procedure mostrararq_ext;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ediultcontKeyPress(Sender: TObject; var Key: Char);
    procedure dbgProdutosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnometipo_prodKeyPress(Sender: TObject; var Key: Char);
    procedure dbgProdutosTitleClick(Column: TColumn);
    procedure cbxNomeMarEnter(Sender: TObject);
    procedure CbxNomeGruEnter(Sender: TObject);
    procedure dbgProdutosDblClick(Sender: TObject);
    procedure edicbarKeyPress(Sender: TObject; var Key: Char);
    procedure edicauxKeyPress(Sender: TObject; var Key: Char);
    procedure estminKeyPress(Sender: TObject; var Key: Char);
    procedure estmaxKeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox3KeyPress(Sender: TObject; var Key: Char);
    procedure spdfiltrarsbClick(Sender: TObject);
    procedure spdlimparsbClick(Sender: TObject);
    procedure dbgsaidabEnter(Sender: TObject);
    procedure dbgsaidabKeyPress(Sender: TObject; var Key: Char);
    procedure dbgsaidabKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgsaidabExit(Sender: TObject);
    procedure cbxnomeoimpKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomeviiKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomeiriiKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomemodbcstKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomemodbcKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomecofinsKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnomepisKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarChange(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tbstabprShow(Sender: TObject);
    procedure dbgtabprpKeyPress(Sender: TObject; var Key: Char);
    procedure dbgtabprpColEnter(Sender: TObject);
    procedure spdExpClick(Sender: TObject);
    procedure exportartodosprodutos;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure DBEdit4Exit(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure tbscaracShow(Sender: TObject);



  private
    { Private declarations }
    sAcodbar:string;
    iSpdcancelar2310a,
    iSpdgravar,
    itcampo:integer;
    sOpcao:String;
    pPerA,
    pPrcubsA,
    pAliqCusA,
    pVlrAddA,
    pPrcuA,
    pPrveA:real;
  public
    { Public declarations }
    sClassificar,
    sTitRel,
    sColuna,
    sfiltro:string;
  end;

var
  frmPesqVProd: TfrmPesqVProd;

implementation

uses uGeral, uPrincipal, uDados, urelest, urelestoq, uMRProd, uetiqav, ufatorprod,
  uetiqjato, ugeraqtdeetiq, baixarncm;

{$R *.DFM}

procedure TfrmPesqVProd.FormShow(Sender: TObject);
var
   vardir: String;
begin
  vardir := ExtractFilePath(Application.ExeName);

  sColuna := 'DESCRICAO';


  iSpdcancelar2310a := spdcancelar2310.Left;
  iSpdGravar := spdgravar.Left;
  spdiconea.Glyph := spdgravar.Glyph;


with FrmDados do
  begin

    cds_tipotab.Active := false;
    dbx_tipotab.Active := false;
    dbx_tipotab.SQL.Clear;
    dbx_tipotab.SQL.Add('Select * from tipotab order by descricao');
    dbx_tipotab.Active := true;
    cds_tipotab.Active := true;

    cds_oimp.Active := false;
    dbx_oimp.Active := false;
    dbx_oimp.SQL.Clear;
    dbx_oimp.SQL.Add('Select * from oimp order by descricao');
    dbx_oimp.Active := true;
    cds_oimp.Active := true;

    cds_ir_ii.Active := false;
    dbx_ir_ii.Active := false;
    dbx_ir_ii.SQL.Clear;
    dbx_ir_ii.SQL.Add('Select * from ir_ii order by descricao');
    dbx_ir_ii.Active := true;
    cds_ir_ii.Active := true;

    cds_vii.Active := false;
    dbx_vii.Active := false;
    dbx_vii.SQL.Clear;
    dbx_vii.SQL.Add('Select * from vii order by descricao');
    dbx_vii.Active := true;
    cds_vii.Active := true;

    cds_modbcst.Active := false;
    dbx_modbcst.Active := false;
    dbx_modbcst.SQL.Clear;
    dbx_modbcst.SQL.Add('Select * from modbcst order by descricao');
    dbx_modbcst.Active := true;
    cds_modbcst.Active := true;

    cds_modbc.Active := false;
    dbx_modbc.Active := false;
    dbx_modbc.SQL.Clear;
    dbx_modbc.SQL.Add('Select * from modbc order by descricao');
    dbx_modbc.Active := true;
    cds_modbc.Active := true;

    cds_cofins.Active := false;
    dbx_cofins.Active := false;
    dbx_cofins.SQL.Clear;
    dbx_cofins.SQL.Add('Select * from cofins order by descricao');
    dbx_cofins.Active := true;
    cds_cofins.Active := true;

    cds_pis.Active := false;
    dbx_pis.Active := false;
    dbx_pis.SQL.Clear;
    dbx_pis.SQL.Add('Select * from pis order by descricao');
    dbx_pis.Active := true;
    cds_pis.Active := true;

    cds_natop.Active := false;
    dbx_natop.Active := false;
    dbx_natop.SQL.Clear;
    dbx_natop.SQL.Add('Select * from natop order by cfop');
    dbx_natop.Active := true;
    cds_natop.Active := true;

    cds_clientes.Active := false;
    dbx_clientes.Active := false;
    dbx_clientes.SQL.Clear;
    dbx_clientes.SQL.Add('Select * from clientes order by nome');
    dbx_clientes.Active := true;
    cds_clientes.Active := true;

    cds_fornecedores.Active := false;
    dbx_fornecedores.Active := false;
    dbx_fornecedores.SQL.Clear;
    dbx_fornecedores.SQL.Add('Select * from fornecedores order by nome');
    dbx_fornecedores.Active := true;
    cds_fornecedores.Active := true;

    Cds_Marca.Active := false;
    Dbx_Marca.Active := false;
    Dbx_Marca.SQL.Clear;
    Dbx_Marca.SQL.Add('Select * from Marca Order by Descricao');
    Dbx_Marca.Active := true;
    Cds_Marca.Active := true;

    Cds_Grupo.Active := false;
    Dbx_Grupo.Active := false;
    Dbx_Grupo.SQL.Clear;
    Dbx_Grupo.SQL.Add('Select * from Grupo Order by Descricao');
    Dbx_Grupo.Active := true;
    Cds_Grupo.Active := true;

    Cds_Unidade.Active := false;
    Dbx_Unidade.Active := false;
    Dbx_Unidade.SQL.Clear;
    Dbx_Unidade.SQL.Add('Select * from Unidade Order by Descricao');
    Dbx_Unidade.Active := true;
    Cds_Unidade.Active := true;

    Cds_CF.Active := false;
    Dbx_CF.Active := false;
    Dbx_CF.SQL.Clear;
    Dbx_CF.SQL.Add('Select * from CF Order by Descricao');
    Dbx_CF.Active := true;
    Cds_CF.Active := true;

    Cds_SITA.Active := false;
    Dbx_SITA.Active := false;
    Dbx_SITA.SQL.Clear;
    Dbx_SITA.SQL.Add('Select * from SITA Order by Descricao');
    Dbx_SITA.Active := true;
    Cds_SITA.Active := true;

    Cds_SITB.Active := false;
    Dbx_SITB.Active := false;
    Dbx_SITB.SQL.Clear;
    Dbx_SITB.SQL.Add('Select * from SITB Order by Descricao');
    Dbx_SITB.Active := true;
    Cds_SITB.Active := true;

    Cds_AliqImpFis.Active := false;
    Dbx_AliqImpFis.Active := false;
    Dbx_AliqImpFis.SQL.Clear;
    Dbx_AliqImpFis.SQL.Add('Select * from AliqImpFis Order by Descricao');
    Dbx_AliqImpFis.Active := true;
    Cds_AliqImpFis.Active := true;

    Cds_IPI.Active := false;
    Dbx_IPI.Active := false;
    Dbx_IPI.SQL.Clear;
    Dbx_IPI.SQL.Add('Select * from IPI Order by Descricao');
    Dbx_IPI.Active := true;
    Cds_IPI.Active := true;

    Cds_Ent_Prod.Active := false;
    Cds_Ent_ProdEHENTREGA.DefaultExpression := quotedstr('T');
    Cds_Ent_ProdDATA_ENT.DefaultExpression := quotedstr(datetostr(date));
    //Cds_Ent_Prod.Active := true;

    Cds_dVenda.Active := false;
    Cds_dVendaEHvenda.DefaultExpression := quotedstr('T');
    Cds_dVendaData_op.DefaultExpression := quotedstr(datetostr(date));
    Cds_dVendaActDesc.DefaultExpression := quotedstr('T');
    Cds_dVendaImpNf.DefaultExpression := quotedstr('T');
    //Cds_dVenda.Active := true;

    Cds_Vendab.Active := false;
    Cds_VendabEHvenda.DefaultExpression := quotedstr('T');
    Cds_VendabData_op.DefaultExpression := quotedstr(datetostr(date));
    Cds_VendabActDesc.DefaultExpression := quotedstr('T');
    //Cds_Vendab.Active := true;

    sqp_dados.Close;
    sqp_dados.StoredProcName := 'ptotprodvd';

    cds_vprodutosultcont.DefaultExpression := quotedstr(datetostr(date));

  end;
//endth

pcldetalhe.ActivePageIndex := 0;
dbgsaida.Align := alclient;
dbgentrada.Align := alclient;

pnlsalvarficha.Top := pnllista.Top;
pnlsalvarficha.Left := pnllista.Left;
dbgprodutos.Align := alclient;
pnlficha.Align := alclient;


tabela := 'vProdutos';

cbxclassificar.Items.Clear;
cbxclassificar.Items.Add('Descrição');
cbxclassificar.Items.Add('Automático');
cbxclassificar.Items.Add('Auxiliar');
cbxclassificar.Items.Add('Barra');
cbxclassificar.ItemIndex := 0;




//--------------- Habilita permissões -------------------------



bProdutosaltqtde := false;
bProdutosaltprvenda := false;
bProdutosaltcusto := false;
bProdutosviscusto := false;
bProdutosentradaavulsa := false;
bProdutossaidaavulsa := false;

tbsentrada.TabVisible := false;
tbssaida.TabVisible := false;
tbssaidab.TabVisible := false;

ediprcubs_o.Width := ediprcubs.Width;
ediprcubs_o.Top := ediprcubs.Top;
ediprcubs_o.Left := ediprcubs.Left;
ediprcubs_o.Height := ediprcubs.Height;

ediper_o.Width := ediper.Width;
ediper_o.Top := ediper.Top;
ediper_o.Left := ediper.Left;
ediper_o.Height := ediper.Height;

ediprcu_o.Width := ediprcu.Width;
ediprcu_o.Top := ediprcu.Top;
ediprcu_o.Left := ediprcu.Left;
ediprcu_o.Height := ediprcu.Height;

ediprcu_o.Enabled := false;
ediprcubs_o.Enabled := false;
ediper_o.Enabled := false;

ediprcu_o.Text := '******';
ediprcubs_o.Text := '******';
ediper_o.Text := '******';

if Localiza_Itens_Usuario(frmprincipal.Produtosaltdatainv, inttostr( icusu ) ) > 0 then
   begin
     ediultcont.Enabled := true;
   end
else
   begin
    ediultcont.Enabled := false;
   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Alterarqtde1, inttostr( icusu ) ) > 0 then
   begin
     ediqtde.Enabled := true;
   end
else
   begin
    ediqtde.Enabled := false;
   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Produtosaltprvenda, inttostr( icusu ) ) > 0 then
   begin
     ediprve.Enabled := true;
     ediper.Enabled := true;
   end
else
   begin
     ediprve.Enabled := false;
     ediper.Enabled := false;
   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Produtosvismarkut, inttostr( icusu ) ) > 0 then
   begin
     ediper.Visible := true;
     ediper_o.Visible := false;
   end
else
   begin
     ediper.Visible := false;
     ediper_o.Visible := true;
   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Produtosaltcusto, inttostr( icusu ) ) > 0 then
   begin
     ediprcubs.Enabled := true;
     edialiqcus.Enabled := true;
     edivlradd.Enabled := true;
     ediprcu.Enabled := true;
   end
else
   begin
     ediprcubs.Enabled := false;
     edialiqcus.Enabled := false;
     edivlradd.Enabled := false;
     ediprcu.Enabled := false;
   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Produtosviscusto, inttostr( icusu ) ) > 0 then
   begin

      ediprcubs.Visible := true;
      ediprcu.Visible := true;

      ediprcubs_o.Visible := false;
      ediprcu_o.Visible := false;


   end
else
   begin


      ediprcubs.Visible := false;
      ediprcu.Visible := false;

      ediprcubs_o.Visible := true;
      ediprcu_o.Visible := true;





   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Produtosentradaavulsa, inttostr( icusu ) ) > 0 then
   begin
     tbsentrada.TabVisible := true;
   end;
//endi

if Localiza_Itens_Usuario(frmprincipal.Produtossaidaavulsa, inttostr( icusu ) ) > 0 then
   begin
     tbssaida.TabVisible := true;
     tbssaidab.TabVisible := true;
   end;
//endi


//-------------- Término do Habilita Permissões ---------------------------


spdlimpar.Click;


mostrar;

end;

procedure TfrmPesqVProd.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVProd.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVProd.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqVProd.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqVProd.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmpesqvprod:=nil;
  with frmdados do
    begin
      cds_vprodutos.Active := false;
      Dbx_vProdutos.Active := false;
    end;
  //endth


  form_ativo := '';

end;

procedure TfrmPesqVProd.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqVProd.dbgprodutosKeyPress(Sender: TObject; var Key: Char);
begin
//Key := AnsiUpperCase(Key);
if key = #13 then
  if spdalterar172.Enabled then
     spdalterar172.Click;
  //endi
//endi

end;

procedure TfrmPesqVProd.dbgprodutosEnter(Sender: TObject);
begin
tabela  := 'vProdutos';
sColuna := dbgprodutos.SelectedField.FieldName;
//lbltitdesc.Caption := 'Descrição';
end;

procedure TfrmPesqVProd.dbgdprodutosEnter(Sender: TObject);
begin
tabela := 'vProdutos';
//lbltitdesc.Caption := 'Caracteristica';
end;

procedure TfrmPesqVProd.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVProd.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqVProd.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqVProd.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
  icMar, icGru, icTipoProd, ictipotab:integer;
begin

  with frmdados do
    begin
      Cds_vProdutos.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Descrição' then
     sClassificar := 'Descricao';
  //endi
  if cbxclassificar.Text = 'Automático' then
     sClassificar := 'codigo';
  //endi
  if cbxclassificar.Text = 'Auxiliar' then
     sClassificar := 'caux';
  //endi
  if cbxclassificar.Text = 'Barra' then
     sClassificar := 'cbar';
  //endi


  //if edicodigoi.Text <> '' then
  //   sClassificar := 'Codigo';
  //endi
  //if edicodigof.Text <> '' then
  //   sClassificar := 'Codigo';
  //endi

  // inicializando variáveis comuns
  sCompo := '';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';
  icMar := 0;
  icGru := 0;
  icTipoProd := 0;
  ictipotab := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;

  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;

  if cbxNomeMar.Text <> '' then
     icMar := frmdados.Cds_Marca.fieldbyname('codigo').asInteger;
  //endi
  if cbxNomeGru.Text <> '' then
     icGru := frmdados.Cds_Grupo.fieldbyname('codigo').asInteger;
  //endi
  if cbxNomeTipo.Text <> '' then
     icTipoProd := frmdados.Cds_Tipo_Prod.fieldbyname('codigo').asInteger;
  //endi
  if cbxNomeTipoTab.Text <> '' then
     icTipoTab := frmdados.Cds_TipoTab.fieldbyname('codigo').asInteger;
  //endi

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoI
  if ( sCodigoI <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + 'Código de.: ' + sCodigoI;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / Código de.: ' + sCodigoI;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sCodigoF <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + 'até: ' + sCodigoF;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / até: ' + sCodigoF;
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoF
  if ( iCMar > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cMar = ' + inttostr(icMar) + ')';
            sTitRel := sTitRel + 'Marca: ' + frmdados.Cds_Marca.fieldbyname('Descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cMar = ' + inttostr(icMar) + ')';
            sTitRel := sTitRel + ' / Marca: ' + frmdados.Cds_Marca.fieldbyname('Descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de Grupo
  if ( iCGru > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cGru = ' + inttostr(icGru) + ')';
            sTitRel := sTitRel + 'Grupo: ' + frmdados.Cds_Grupo.fieldbyname('Descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cGru = ' + inttostr(icGru) + ')';
            sTitRel := sTitRel + ' / GRupo: ' + frmdados.Cds_Grupo.fieldbyname('Descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de Grupo
  if ( iCtipoprod > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cTipo_Prod = ' + inttostr(icTipoProd) + ')';
            sTitRel := sTitRel + 'Tipo Produto: ' + frmdados.Cds_Tipo_Prod.fieldbyname('Descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cTipo_Prod = ' + inttostr(icTipoProd) + ')';
            sTitRel := sTitRel + ' / Tipo Produto: ' + frmdados.Cds_Tipo_Prod.fieldbyname('Descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de Grupo
  if ( iCtipoTab > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cTipoTab = ' + inttostr(icTipoTab) + ')';
            sTitRel := sTitRel + 'Tipo Tabela: ' + frmdados.Cds_TipoTab.fieldbyname('Descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cTipoTab = ' + inttostr(icTipoTab) + ')';
            sTitRel := sTitRel + ' / Tipo Tabela: ' + frmdados.Cds_TipoTab.fieldbyname('Descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro




  //Bloco de filtro de codigoF
  if sClassificar <> 'Codigo' then
     begin
        if ( sDesc <> '' ) then
           begin
             if (sCompo = '') then
                begin
                  sCompo := '( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + '   '+cbxclassificar.Text+': ' + sDesc;
                end
             else
                begin
                  sCompo := sCompo + 'and ( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end;
             //endif
           end;
        //endif
     end;
  //endi
  // executando o filtro

  try
    with frmdados.Dbx_vProdutos do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            begin
              sql.Add('select * from vProdutos where '+sCompo+' order by '+sClassificar);
              sfiltro := sCompo+' order by '+sClassificar;
            end
         else
            begin
              sql.Add('select * from vProdutos order by '+sClassificar);
              sfiltro := '';
            end;
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from vProdutos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   active := true;

                   sfiltro := sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar;


                 end;
              //endi
            end;
         //endi
       end;
    //endi
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_vProdutos.Active := true;

    end;
  //end;

  //sAcodbar := edicodbar.Text;
end;

procedure TfrmPesqVProd.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  dtpDatafP.Date := Date;
  dtpDataIP.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';

  edicbar.Text := '';
  edicaux.Text := '';

  spdfiltrar.Click;
end;

procedure TfrmPesqVProd.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_vProdutos.Locate(sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
filtradetalhes;
end;

procedure TfrmPesqVProd.cbxclassificarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endi
  key := #0;
end;

procedure TfrmPesqVProd.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqVProd.edidescKeyPress(Sender: TObject; var Key: Char);
begin
edicodigoi.Text := '';
edicodigof.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi
end;

procedure TfrmPesqVProd.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';


if key = #13 then
   begin

     if edicodigoi.Text <> '' then
        if not frmdados.cds_vProdutos.Locate('codigo',edicodigoi.text,[])then
           showmessage('Código não Encontrado...');
        //endi
     //endi



//     key := #0;
//     SelectNext(ActiveControl,True,True);
//     exit;
   end;
//endi


If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi



end;

procedure TfrmPesqVProd.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqVProd.dbgprodutosExit(Sender: TObject);
begin
sColuna := '';
end;

procedure TfrmPesqVProd.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqVProd.tbsentradaShow(Sender: TObject);
begin
  //tabela := 'Ent_Prod';
  //spdlimpare.Click;
  //dbgentrada.SetFocus;
  //showmessage('4');
end;

procedure TfrmPesqVProd.spdlimpareClick(Sender: TObject);
begin
dtpDatafe.Date := Date;
dtpDataIe.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

spdfiltrare.Click;
end;

procedure TfrmPesqVProd.spdfiltrareClick(Sender: TObject);
begin
  with frmdados do
    begin
      //Cds_Ent_Prod.Active := false;
      //ler_ent_prod;
      //Cds_Ent_Prod.Active := true;
      //totpe;
      //lbltote.Caption := formatfloat('###,###,##0.000',sqp_dados.ParamByName('qtdetot').Asfloat);
    end;
  //endi

  filtradetalhes;

end;

procedure TfrmPesqVProd.dbgentradaKeyPress(Sender: TObject; var Key: Char);
begin
if sopcao = 'E' then
   key := #0;
//endi
if sopcao = 'C' then
   key := #0;
//endi
if key = #13 then
   if frmdados.Cds_ent_prod.State in [dsinsert, dsedit] then
      begin
        frmdados.Cds_ent_prod.Post;
        frmdados.Cds_VProdutos.Refresh;
      end;
   //endi
//endi
end;

procedure TfrmPesqVProd.dbgentradaExit(Sender: TObject);
begin
  if frmdados.Cds_ent_prod.State in [dsinsert, dsedit] then
     frmdados.Cds_ent_prod.Post;
  //endi

end;

procedure TfrmPesqVProd.tbssaidaShow(Sender: TObject);
begin
  //tabela := 'dVenda';
  //spdlimpars.Click;
  //dbgsaida.SetFocus;
  //showmessage('5');

end;

procedure TfrmPesqVProd.spdlimparsClick(Sender: TObject);
begin
dtpDatafs.Date := Date;
dtpDataIs.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

spdfiltrars.Click;

end;

procedure TfrmPesqVProd.spdfiltrarsClick(Sender: TObject);
begin
  with frmdados do
    begin
      //Cds_dVenda.Active := false;
      //ler_dVenda;
      //Cds_dVenda.Active := true;
      //totps;
      //lbltots.Caption := formatfloat('###,###,##0.000',sqp_dados.ParamByName('qtdetot').Asfloat);

    end;
  //endi

  filtradetalhes;

end;

procedure TfrmPesqVProd.dbgsaidaExit(Sender: TObject);
begin
  if frmdados.Cds_dVenda.State in [dsinsert, dsedit] then
     frmdados.Cds_dVenda.Post;
  //endi
end;

procedure TfrmPesqVProd.dbgsaidaKeyPress(Sender: TObject; var Key: Char);
begin
if sopcao = 'E' then
   key := #0;
//endi
if sopcao = 'C' then
   key := #0;
//endi

if key = #13 then
   if frmdados.Cds_dVenda.State in [dsinsert, dsedit] then
      begin
        frmdados.Cds_dVenda.Post;
        frmdados.Cds_VProdutos.Refresh;
      end;
   //endi
//endi

end;

procedure TfrmPesqVProd.spdprinterClick(Sender: TObject);
var
  vardir:string;
begin
end;

procedure TfrmPesqVProd.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
     begin
       SelectNext(ActiveControl,True,True);
     end;
  //endi

 


end;

procedure TfrmPesqVProd.pnlfichaEnter(Sender: TObject);
begin
tabela := 'vProdutos';
end;

procedure TfrmPesqVProd.spdIncluir171bClick(Sender: TObject);
begin
tabela := 'vProdutos';
pcldetalhe.ActivePageIndex := 0;
limpar;
dbgprodutos.SetFocus;
frmdados.Cds_vProdutos.Append;
end;

procedure TfrmPesqVProd.cbxnomeicmsKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomeipiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomecfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomemarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomesitaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomesitbKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomegrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.edicodbarKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.spdetqClick(Sender: TObject);
begin
frmMRProd := tfrmMRProd.Create(self);
frmMRProd.ShowModal;
frmMRProd.Free;

end;

procedure TfrmPesqVProd.spdcodbarClick(Sender: TObject);
begin
  if sopcao = 'I' then
     exit;
  //endi

  try
    if edicodbar.Text = '' then
       begin
         barra1.Visible := true;
         if cbxnomemarca.Text <> '' then
            barra1.Codigo := '1'+formatfloat('000000',frmdados.Cds_Marca.fieldbyname('codigo').asfloat)+formatfloat('00000',frmdados.Cds_vProdutos.fieldbyname('codigo').asfloat)
         else
            barra1.Codigo := '1'+formatfloat('00000000000',frmdados.Cds_vProdutos.fieldbyname('codigo').asfloat);
         //endi
         frmdados.Cds_vProdutos.Edit;
         frmdados.Cds_vProdutos.FieldByName('cbar').asString  := barra1.Codigo+barra1.digito;
         //edicbar.Text := '1'+cbxcodgru.text+lblcodigo.Caption;
       end;
    //endi
  except
  end;

end;

procedure TfrmPesqVProd.edicmarExit(Sender: TObject);
begin

if (frmdados.Cds_vprodutos.State <> dsInsert) or (frmdados.Cds_vprodutos.State <> dsEdit) then
    frmdados.Cds_vprodutos.Edit;
//endi


//if edicmar.Text = '' then
//   begin
//     frmdados.Cds_vprodutos.FieldByName('cmar').asInteger := 0;
//     exit;
//   end;
//endi
try
  if frmdados.cds_marca.Locate('codigo',edicmar.text,[]) then
     begin
       frmdados.Cds_vprodutos.FieldByName('cmar').asInteger := frmdados.Cds_Marca.fieldbyname('codigo').asInteger;
     end
  else
     begin
//       edicmar.Text := '';
     end;
  //endi
except
end;

end;

procedure TfrmPesqVProd.edicgruExit(Sender: TObject);
begin
if (frmdados.Cds_vprodutos.State <> dsInsert) or (frmdados.Cds_vprodutos.State <> dsEdit) then
    frmdados.Cds_vprodutos.Edit;
//endi

if edicgru.Text = '' then
   begin
     frmdados.Cds_vprodutos.FieldByName('cgru').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_grupo.Locate('codigo',edicgru.text,[]) then
     begin
       frmdados.Cds_vprodutos.FieldByName('cgru').asInteger := frmdados.Cds_Grupo.fieldbyname('codigo').asInteger;
     end
  else
     begin
       edicgru.Text := '';
     end;
  //endi
except
end;

end;

procedure tfrmpesqvprod.limpar;
begin
edicmar.Text := '';
edicgru.Text := '';
end;

procedure tfrmpesqvprod.mostrar;
begin
edicmar.Text := frmdados.Cds_Marca.fieldbyname('codigo').asString;
edicgru.Text := frmdados.Cds_Grupo.fieldbyname('codigo').asString;
end;


procedure TfrmPesqVProd.edicodigoiExit(Sender: TObject);
begin
  //if edicodigoi.Text <> '' then
  //   frmdados.cds_vProdutos.Locate('codigo',edicodigoi.text,[]);
  //endi
end;

procedure TfrmPesqVProd.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
   end;
//endi

end;

procedure TfrmPesqVProd.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
   end;
//endi

end;

procedure TfrmPesqVProd.dbgentradaEnter(Sender: TObject);
begin
tabela := 'Ent_Prod';
end;

procedure TfrmPesqVProd.dbgsaidaEnter(Sender: TObject);
begin
  tabela := 'dVenda';
end;

procedure TfrmPesqVProd.dbgprodutosColEnter(Sender: TObject);
begin
sColuna := dbgprodutos.SelectedField.FieldName;
end;


procedure TfrmPesqVProd.edicodbarExit(Sender: TObject);
begin

   //if sAcodbar <> edicodbar.Text then
   //   if frmdados.cds_vProdutos.Locate('cbar',edicodbar.text,[]) then
   //      begin
   //        showmessage('Código de Barras já existe!!!');
   //        edicodbar.Text := sAcodbar;
   //        edicodbar.SetFocus;
   //      end;
      //endi
   //endi



end;

procedure TfrmPesqVProd.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_vprodutos.Append;
imgfoto.Visible := false;
edidescricao.SetFocus;

if bvProdutosR then
   begin
     ediqtde.Enabled := false;
   end;
//endi


end;

procedure TfrmPesqVProd.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_vprodutos.Edit;
edidescricao.SetFocus;

if bvProdutosR then
   begin
     ediqtde.Enabled := false;
   end;
//endi


end;

procedure TfrmPesqVProd.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
spdgravar.Glyph := spdexcluir173.Glyph;
spdgravar.hint := spdexcluir173.Hint;

bloqueiacampos;
spdant.Enabled := false;
spdprox.Enabled := false;
edidesc.Enabled := false;
cbxclassificar.Enabled := false;
edicodigoi.Enabled := false;
edicodigof.Enabled := false;
spdfiltrar.Enabled := false;
spdlimpar.Enabled  := false;
edicbar.Enabled := false;
edicaux.Enabled := false;

AlternaF;

end;

procedure TfrmPesqVProd.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;

end;

procedure TfrmPesqVProd.sPdGravarClick(Sender: TObject);
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;

 CodigoNovo : Integer ;
 vardir, pIndex : String;

begin
tabela := 'vProdutos';
if sOpcao <> 'E' then
   begin
     if (frmdados.Cds_vProdutos.State in [dsinsert, dsedit]) and (edidescricao.Text <> '') then
        begin
          frmdados.Cds_vProdutos.Post;

          try
            if (edicodbar.Text = '') and (sOpcao = 'I') then
               begin
                 barra1.Visible := true;
                 if cbxnomemarca.Text <> '' then
                    barra1.Codigo := '1'+formatfloat('000000',frmdados.Cds_Marca.fieldbyname('codigo').asfloat)+formatfloat('00000',frmdados.Cds_vProdutos.fieldbyname('codigo').asfloat)
                 else
                    barra1.Codigo := '1'+formatfloat('00000000000',frmdados.Cds_vProdutos.fieldbyname('codigo').asfloat);
                 //endi
                 frmdados.Cds_vProdutos.Edit;
                 frmdados.Cds_vProdutos.FieldByName('cbar').asString  := barra1.Codigo+barra1.digito;
                 //edicbar.Text := '1'+cbxcodgru.text+lblcodigo.Caption;
                 frmdados.Cds_vProdutos.Post;
               end;
            //endi
          except
            showmessage('erro ao inserir código de barra');
          end;


        end
     else
        if (edidescricao.Text = '') then
           begin
             showmessage('Não foi possível salvar'+#13+'Motivo: Descrição não foi preenchida');
             frmdados.Cds_vProdutos.Cancel;
           end;
        //endi
     //endi
   end
else
   begin
     if application.MessageBox('Deseja realmente excluir este registro?','Confirmação',mb_yesno+mb_defbutton2) <> 6 then
         exit;
     //endi

     logTables(tabela, icusu, 'E', frmdados.Cds_vprodutos.fieldbyname('descricao').AsString ) ;

     frmdados.Cds_vprodutos.Delete;
   end;
//endi

if sOpcao = 'I' then
   begin
     frmdados.Cds_vProdutos.Append;
     edidescricao.SetFocus;
     exit;
   end;
//endi


alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_vprodutos.RecordCount = 0 then
       begin
         bloqueiabotoes;
       end
    else
       begin
         desbloqueiabotoes;
       end;
    //endi


  end;
//end;



end;

procedure TfrmPesqVProd.spdcancelar2310Click(Sender: TObject);
begin

tabela := 'vProdutos';
if frmdados.Cds_vProdutos.State in [dsinsert, dsedit] then
   frmdados.Cds_vProdutos.Cancel;
//endi
alternaL;
desbloqueiacampos;


with frmdados do
  begin

    if Cds_vProdutos.RecordCount = 0 then
       begin
         bloqueiabotoes;
       end
    else
       begin
         desbloqueiabotoes;
       end;
    //endi
  end;
//end;



end;

procedure TfrmPesqvprod.AlternaF;
begin
filtradetalhes;
pcldetalhe.ActivePageIndex := 0;
dbgprodutos.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;

try
  lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
except
  lbldif.Caption := '0,00';
end;

try
  lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));
except
  lblmrgcon.Caption := '0,00';
end;

try
  pPrveA := strtofloat(tirapontos(ediPrve.text));
except
  pPrveA := 0;
end;

try
  pPerA := strtofloat(tirapontos(ediPer.text));
except
  pPerA := 0;
end;

try
  pPrCubsA := strtofloat(tirapontos(ediPrcubs.text));
except
  pPrCubsA := 0;
end;

try
  pAliqCusA := strtofloat(tirapontos(ediAliqCus.text));
except
  pAliqCusA := 0;
end;

try
  pVlrAddA := strtofloat(tirapontos(ediVlrAdd.text));
except
  pVlrAddA := 0;
end;

try
  pPrcuA := strtofloat(tirapontos(ediPrcu.text));
except
  pPrcuA := 0;
end;

mostrararq_ext;
if frmdados.Cds_vprodutos.FieldByName('actdesc').AsString = 'T' then
   begin
     ckbactdesc.Checked := true;
   end
else
   begin
     ckbactdesc.Checked := false;
   end;
//endif

if frmdados.Cds_vprodutos.FieldByName('indtot').AsString = 'T' then
   begin
     ckbindtot.Checked := true;
   end
else
   begin
     ckbindtot.Checked := false;
   end;
//endif

end;

procedure TfrmPesqvprod.AlternaL;
begin
dbgprodutos.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;

procedure TfrmPesqvprod.bloqueiacampos;
begin
pnlcab.Enabled := false;
tbscarac.Enabled := false;



//aqui...
//tbsentrada.Enabled := false;
//tbssaida.Enabled := false;
end;

procedure TfrmPesqvprod.desbloqueiacampos;
begin
pnlcab.Enabled := true;
tbscarac.Enabled := true;
tbsentrada.Enabled := true;
tbssaida.Enabled := true;
spdant.Enabled := true;
spdprox.Enabled := true;
edidesc.Enabled := true;
cbxclassificar.Enabled := true;
edicodigoi.Enabled := true;
edicodigof.Enabled := true;
spdfiltrar.Enabled := true;
spdlimpar.Enabled  := true;

edicbar.Enabled := true;
edicaux.Enabled := true;
end;

procedure tfrmpesqvprod.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdcodbar175.Enabled := false;
  spdilustracao177.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
  spdExp.Enabled := false;
end;

procedure tfrmpesqvprod.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdcodbar175.Enabled := true;
  spdilustracao177.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
  spdExp.Enabled := true;
end;

procedure TfrmPesqVProd.spdantClick(Sender: TObject);
begin

  frmdados.Cds_vProdutos.Prior;

  if (sOpcao = 'A') or (sOpcao = 'I') then
     frmdados.Cds_vProdutos.Edit;
  //endi

  filtradetalhes;

end;

procedure TfrmPesqVProd.spdproxClick(Sender: TObject);
begin

  frmdados.Cds_vProdutos.Next;

  if (sOpcao = 'A') or (sOpcao = 'I') then
     frmdados.Cds_vProdutos.Edit;
  //endi

  filtradetalhes;

end;

procedure TfrmPesqVProd.filtradetalhes;
begin
  with frmdados do
    begin

      if sOpcao <> '' then
         mostrararq_ext;
      //endi


      cds_TabPrP.Active := false;
      cds_TabPrPcpro.DefaultExpression := inttostr(cds_vprodutos.fieldbyname('codigo').asInteger);
      dbx_TabPrP.Active := false;
      dbx_TabPrP.SQL.Clear;
      dbx_TabPrP.SQL.Add('Select * from TabPrP where cpro = '+ inttostr(cds_vprodutos.fieldbyname('codigo').asInteger) );
      dbx_TabPrP.Active := true;
      cds_TabPrP.Active := true;

      Cds_Ent_Prod.Active := false;
      Cds_Ent_Prodcpro.DefaultExpression := cds_vprodutos.fieldbyname('codigo').asString;
      Cds_Ent_ProdEHENTREGA.DefaultExpression := quotedstr('T');
      Cds_Ent_ProdDATA_ENT.DefaultExpression := quotedstr(datetostr(date));

      Cds_dVenda.Active := false;
      Cds_dVendacpro.DefaultExpression := cds_vprodutos.fieldbyname('codigo').asString;
      Cds_dVendaEHvenda.DefaultExpression := quotedstr('T');
      Cds_dVendaData_op.DefaultExpression := quotedstr(datetostr(date));
      Cds_dVendaActDesc.DefaultExpression := quotedstr('T');
      Cds_dVendaImpNf.DefaultExpression := quotedstr('T');

      Cds_Vendab.Active := false;
      Cds_Vendabcpro.DefaultExpression := cds_vprodutos.fieldbyname('codigo').asString;
      Cds_VendabEHvenda.DefaultExpression := quotedstr('T');
      Cds_VendabData_op.DefaultExpression := quotedstr(datetostr(date));
      Cds_VendabActDesc.DefaultExpression := quotedstr('T');



      if cbxnomemarca.Text <> '' then
         edicmar.Text := cds_marca.fieldbyname('codigo').asString
      else
         edicmar.Text := '';
      //endi

      if pcldetalhe.ActivePageIndex = 2 then
         begin

           lbltote.Caption := '0,00';
           if  cds_vprodutos.fieldbyname('codigo').asInteger > 0 then
                begin
                  Cds_Ent_Prod.Active := false;
                  ler_ent_prod;
                  totpe;
                  lbltote.Caption := formatfloat('###,###,##0.000',sqp_dados.ParamByName('qtdetot').Asfloat);
                  Cds_Ent_Prod.Active := true;
                end;
           //endi



         end;
      //endi

      if pcldetalhe.ActivePageIndex = 3 then
         begin

           lbltots.Caption := '0,00';
           if  cds_vprodutos.fieldbyname('codigo').asInteger > 0 then
               begin
                 Cds_dVenda.Active := false;
                 ler_dVenda;
                 Cds_dVenda.Active := true;
                 totps;
                 lbltots.Caption := formatfloat('###,###,##0.000',sqp_dados.ParamByName('qtdetot').Asfloat);
               end;
           //endi



         end;
      //endi

      if pcldetalhe.ActivePageIndex = 4 then
         begin

           lbltotsb.Caption := '0,00';
           if  cds_vprodutos.fieldbyname('codigo').asInteger > 0 then
               begin
                 Cds_Vendab.Active := false;
                 ler_Vendab;
                 Cds_Vendab.Active := true;
                 totpsb;
                 lbltotsb.Caption := formatfloat('###,###,##0.000',sqp_dados.ParamByName('qtdetot').Asfloat);
               end;
           //endi



         end;
      //endi





    end;
  //endi

end;

procedure TfrmPesqVProd.pcldetalheChange(Sender: TObject);
begin

  if pcldetalhe.ActivePageIndex = 0 then
     begin
       tabela := 'vProdutos';
     end;
  //endi

  if pcldetalhe.ActivePageIndex = 2 then
     begin
       tabela := 'Ent_Prod';
       spdlimpare.Click;
       dbgentrada.SetFocus;
     end;
  //endi

  if pcldetalhe.ActivePageIndex = 3 then
     begin
       tabela := 'dVenda';
       spdlimpars.Click;
       dbgsaida.SetFocus;
     end;
  //endi

  if pcldetalhe.ActivePageIndex = 4 then
     begin
       tabela := 'Vendab';
       spdlimparsb.Click;
       dbgsaidab.SetFocus;
     end;
  //endi


end;

procedure TfrmPesqVProd.dbgsaidaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if sOpcao = 'E' then
   key := 0;
//endi
if sOpcao = 'C' then
   key := 0;
//endi
{ qdo pressionar seta para baixo deve dar refresh
if frmdados.Cds_dVenda.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_VProdutos.Refresh;
   end;
//endi
}

end;

procedure TfrmPesqVProd.dbgentradaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if sOpcao = 'E' then
   key := 0;
//endi
if sOpcao = 'C' then
   key := 0;
//endi

{ qdo pressionar seta para baixo deve dar refresh
if frmdados.Cds_ent_prod.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_VProdutos.Refresh;
   end;
//endi
}
end;

procedure TfrmPesqVProd.spdcodbar175Click(Sender: TObject);
begin
if frmdados.cds_indice.FieldByName('tipoetiq').asInteger <= 2 then
   begin
     frmetiqav := tfrmetiqav.create(self);
     frmetiqav.ShowModal;
     frmetiqav.Free;
   end;
//endi

if frmdados.cds_indice.FieldByName('tipoetiq').asInteger = 3 then
   begin
     frmgeraqtdeetiq := tfrmgeraqtdeetiq.create(self);
     frmgeraqtdeetiq.showmodal;
     frmgeraqtdeetiq.Free;
   end;
//endi



end;

procedure TfrmPesqVProd.ediprcubsExit(Sender: TObject);
var pValor, paliq:Real;
begin
   try

      pValor := strtofloat(tirapontos(ediPrcubs.text));
      paliq := strtofloat(tirapontos(edialiqcus.text));

      with frmdados do
        begin

          if pValor <> pPrcubsA then
             begin

               cds_vprodutos.Edit;
               cds_vprodutos.FieldByName('prcu').asfloat := ((paliq/100)*strtofloat(tirapontos(ediprcubs.text)))+strtofloat(tirapontos(ediprcubs.text))+strtofloat(tirapontos(edivlradd.Text));
               cds_vprodutos.FieldByName('prve').asfloat := ((strtofloat(tirapontos(ediper.text))/100)*strtofloat(tirapontos(ediprcu.text)))+strtofloat(tirapontos(ediprcu.text));

               pPrveA := strtofloat(tirapontos(ediprve.text));
               pPrcuA := strtofloat(tirapontos(ediPrcu.text));

               if  strtofloat(tirapontos(ediprcu.text)) > 0  then
                  begin

                    //showmessage(floattostr(pValor));
                   //showmessage(floattostr(pPrcubsA));

                    cds_vprodutos.FieldByName('per').asfloat  := ((strtofloat(tirapontos(ediprve.text))-strtofloat(tirapontos(ediprcu.text)))/strtofloat(tirapontos(ediprcu.text)))*100;
                    pPerA := strtofloat(tirapontos(ediPer.text));


                  end;
               //endi

               pPrcuBsA := strtofloat(tirapontos(ediPrcuBs.text));

             end;
          //endi
        end;
      //endi


      lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
      lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));

    except
      lbldif.Caption := '0,00';
      lblmrgcon.Caption := '0,00';
    end;

end;

procedure TfrmPesqVProd.ediprcuExit(Sender: TObject);
var pValor:Real;
begin
  try
    pValor := strtofloat(tirapontos(ediPrcu.text));

    with frmdados do
      begin

        if pValor <> pPrcuA then
           begin
            cds_vprodutos.Edit;
            cds_vprodutos.FieldByName('prve').asfloat := ((strtofloat(tirapontos(ediper.text))/100)*strtofloat(tirapontos(ediprcu.text)))+strtofloat(tirapontos(ediprcu.text));

             pPrveA := strtofloat(tirapontos(ediprve.text));

             if strtofloat(tirapontos(ediprcu.text)) > 0 then
                begin
                  cds_vprodutos.FieldByName('per').asfloat  := ((strtofloat(tirapontos(ediprve.text))-strtofloat(tirapontos(ediprcu.text)))/strtofloat(tirapontos(ediprcu.text)))*100;
                  pPerA := strtofloat(tirapontos(ediPer.text));
               end;
            //endi

             pPrcuA := strtofloat(tirapontos(ediprcu.text));

          end;
       //endi
      end;
    //endi
    lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
    lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));
  except
      lbldif.Caption := '0,00';
      lblmrgcon.Caption := '0,00';
  end;
end;

procedure TfrmPesqVProd.ediperExit(Sender: TObject);
var pValor:Real;
begin
  try
    pValor := strtofloat(tirapontos(ediPer.text));

    with frmdados do
      begin

        if pValor <> pPerA then
           begin

             cds_vprodutos.Edit;
             cds_vprodutos.FieldByName('prve').asfloat := ((strtofloat(tirapontos(ediper.text))/100)*strtofloat(tirapontos(ediprcu.text)))+strtofloat(tirapontos(ediprcu.text));
             pPrveA := strtofloat(tirapontos(ediprve.text));
             pPerA := strtofloat(tirapontos(ediPer.text));

           end;
       //endi


      end;
    //endth

    lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
    lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));
  except
      lbldif.Caption := '0,00';
      lblmrgcon.Caption := '0,00';
  end;

end;

procedure TfrmPesqVProd.ediprveExit(Sender: TObject);
var pValor, pPerR, pDif, pPerR1:Real;

begin

  try
    pValor := strtofloat(tirapontos(ediPrve.text));
    with frmdados do
      begin

        if strtofloat(tirapontos(ediprcu.text)) > 0 then
           begin

             if pValor <> pPrveA then
                begin
                  cds_vprodutos.Edit;
                  pPerR := ((strtofloat(tirapontos(ediprve.text))-strtofloat(tirapontos(ediprcu.text)))/strtofloat(tirapontos(ediprcu.text)))*100;
                  cds_vprodutos.FieldByName('per').asfloat  := pPerR;
                  pPerA := strtofloat(tirapontos(ediPer.text));
                  pPrveA := strtofloat(tirapontos(ediPrve.text));
                end;
             //endi


             //pDif := pPerR + (pPerA - pPerR);

             //cds_vprodutos.FieldByName('per').asfloat  := pDif

             //if pPrveA = pValor then
             //   begin
             //     cds_vprodutos.FieldByName('per').asfloat  := pDif
             //   end
             //else
             //   begin
                  //showmessage(floattostr(pPrveA));
             //     cds_vprodutos.FieldByName('per').asfloat  := pPerR;
             //   end;
             //endi

           end;
        //endi

      end;
    //endi

    lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
    lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));
  except
      lbldif.Caption := '0,00';
      lblmrgcon.Caption := '0,00';
  end;
end;

procedure TfrmPesqVProd.edialiqcusExit(Sender: TObject);
var pValor, paliq:Real;
begin

  try
    pValor := strtofloat(tirapontos(edialiqcus.text));
    paliq := strtofloat(tirapontos(edialiqcus.text));

    with frmdados do
      begin

        if  pValor <> pAliqcusA  then
           begin

             cds_vprodutos.Edit;
             cds_vprodutos.FieldByName('prcu').asfloat := ((paliq/100)*strtofloat(tirapontos(ediprcubs.text)))+strtofloat(tirapontos(ediprcubs.text))+strtofloat(tirapontos(edivlradd.Text));
             cds_vprodutos.FieldByName('prve').asfloat := ((strtofloat(tirapontos(ediper.text))/100)*strtofloat(tirapontos(ediprcu.text)))+strtofloat(tirapontos(ediprcu.text));

             pPrveA := strtofloat(tirapontos(ediprve.text));
             pPrcuA := strtofloat(tirapontos(ediPrcu.text));

             if strtofloat(tirapontos(ediprcu.text)) > 0 then
               begin
                 cds_vprodutos.FieldByName('per').asfloat  := ((strtofloat(tirapontos(ediprve.text))-strtofloat(tirapontos(ediprcu.text)))/strtofloat(tirapontos(ediprcu.text)))*100;
                 pPerA := strtofloat(tirapontos(ediPer.text));
               end;
             //endi

             pAliqCusA := strtofloat(tirapontos(ediAliqCus.text));


           end;
        //endi
      end;
    //endi

    lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
    lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));
  except
      lbldif.Caption := '0,00';
      lblmrgcon.Caption := '0,00';
  end;

end;

procedure TfrmPesqVProd.edivlraddExit(Sender: TObject);
var pValor, paliq:Real;
begin

  try
    pValor := strtofloat(tirapontos(edivlradd.text));
    paliq := strtofloat(tirapontos(edialiqcus.text));

    with frmdados do
      begin

        if   pValor <> pVlrAddA   then
           begin

             cds_vprodutos.Edit;
             cds_vprodutos.FieldByName('prcu').asfloat := ((paliq/100)*strtofloat(tirapontos(ediprcubs.text)))+strtofloat(tirapontos(ediprcubs.text))+strtofloat(tirapontos(edivlradd.Text));
             cds_vprodutos.FieldByName('prve').asfloat := ((strtofloat(tirapontos(ediper.text))/100)*strtofloat(tirapontos(ediprcu.text)))+strtofloat(tirapontos(ediprcu.text));

             pPrveA := strtofloat(tirapontos(ediprve.text));
             pPrcuA := strtofloat(tirapontos(ediPrcu.text));


             if  strtofloat(tirapontos(ediprcu.text)) > 0  then
                begin
                  cds_vprodutos.FieldByName('per').asfloat  := ((strtofloat(tirapontos(ediprve.text))-strtofloat(tirapontos(ediprcu.text)))/strtofloat(tirapontos(ediprcu.text)))*100;
                  pPerA := strtofloat(tirapontos(ediPer.text));
                end;
             //endi
           end;
        //endi

        pVlrAddA := strtofloat(tirapontos(ediVlrAdd.text));

      end;
    //endi

    lbldif.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprcu.Text)) - strtofloat(tirapontos(ediprcubs.Text)));
    lblmrgcon.Caption := formatfloat('###,###,##0.00',strtofloat(tirapontos(ediprve.Text)) - strtofloat(tirapontos(ediprcu.Text)));
  except
      lbldif.Caption := '0,00';
      lblmrgcon.Caption := '0,00';
  end;

end;


procedure tfrmpesqvprod.mostrararq_ext;
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;
 vardir:string;
 pathbuf:array[0..255] of char;
 temppath:string;
 bmp:tbitmap;
 extensao:string;
 stream:tstream;
begin


 with frmdados do
   begin

      imgfoto.Visible := false;

      if cds_vprodutosfoto.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_vprodutosfilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_vprodutosfilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_vprodutos.CreateBlobStream(cds_vprodutosfoto, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto.Picture.Assign(figura)
                  finally
                    imgfoto.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto.Picture.Assign(j);
                  finally
                    imgfoto.Visible := true;
                    j.Free
                  end;
                end;
             //endi
           finally
             stream.Free;
           end;
         end
      else
         begin
           //recupera o diretorio temp do windows
           gettemppath(sizeof(pathbuf),pathbuf);

           //monta path completo para o nosso diretório temporário
           temppath := strpas(pathbuf)+'\blobs';

           //Verifica se o diretório temporário já existe caso contrario cria
           if not directoryexists(temppath) then
              if not forcedirectories(temppath) then
                 begin
                   messagedlg('Não foi possível criar o diretório temporário!!!',mtError,[mbOK],0);
                   sysutils.Abort;
                 end;
              //endi
           //endi
           temppath := temppath + '\'+cds_vprodutosfoto.AsString;

           //Grava bloco no arquivo temporário
           cds_vprodutosfoto.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

end;


procedure TfrmPesqVProd.SpeedButton2Click(Sender: TObject);
begin
  frmdados.Cds_vProdutos.Edit;
  frmdados.cds_vprodutosfoto.AsVariant := '';
  mostrararq_ext;
end;

procedure TfrmPesqVProd.SpeedButton1Click(Sender: TObject);
begin
  if opdabrirfig.Execute then
     begin
       frmdados.cds_vprodutos.Edit;
       frmdados.cds_vprodutosfoto.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_vprodutosfilename.AsString := extractfilename(opdabrirfig.FileName);
       mostrararq_ext;
     end;
  //endi

end;

procedure TfrmPesqVProd.ediultcontKeyPress(Sender: TObject; var Key: Char);
begin
try

  if key = #13 then
     begin
       //if (ediultcont.Text <> '') or (ediultcont.Text <> '  /  /    ') then
       //   strtodate(ediultcont.Text);
       //endi
       SelectNext(ActiveControl,True,True);
     end;
  //endi

except
  ediultcont.SetFocus;
end;

end;

procedure TfrmPesqVProd.dbgProdutosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if ((shift=[ssCtrl]) and (key = vk_delete)) then
//   abort;
//endi

end;

procedure TfrmPesqVProd.cbxnometipo_prodKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.dbgProdutosTitleClick(Column: TColumn);
begin
Grid_Ordena_e_PintaTitulo(dbgprodutos, column, frmdados.Cds_vProdutos);
end;



procedure TfrmPesqVProd.cbxNomeMarEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVProd.CbxNomeGruEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVProd.dbgProdutosDblClick(Sender: TObject);
begin
if spdalterar172.Enabled then
   spdalterar172.Click;
//endi

end;

procedure TfrmPesqVProd.edicbarKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';


if key = #13 then
   begin
     if edicbar.Text <> '' then
        if not frmdados.cds_vProdutos.Locate('cbar',edicbar.text,[])then
           showmessage('Código não Encontrado...')
        else
           edicbar.Text := '';
        //endi
     //endi
   end;
//endi


//If not( key in['0'..'9',#8] ) then
//  begin
//  beep;
//  key:=#0;
//  end;
//endi




end;

procedure TfrmPesqVProd.edicauxKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';


if key = #13 then
   begin
     if edicaux.Text <> '' then
        if not frmdados.cds_vProdutos.Locate('caux',edicaux.text,[])then
           showmessage('Código não Encontrado...');
        //endi
     //endi
   end;
//endi


//If not( key in['0'..'9',#8] ) then
//  begin
//  beep;
//  key:=#0;
//  end;
//endi




end;

procedure TfrmPesqVProd.estminKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.estmaxKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.DBLookupComboBox3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.spdfiltrarsbClick(Sender: TObject);
begin
  with frmdados do
    begin
      //Cds_dVenda.Active := false;
      //ler_dVenda;
      //Cds_dVenda.Active := true;
      //totps;
      //lbltots.Caption := formatfloat('###,###,##0.000',sqp_dados.ParamByName('qtdetot').Asfloat);

    end;
  //endi

  filtradetalhes;

end;

procedure TfrmPesqVProd.spdlimparsbClick(Sender: TObject);
begin
dtpDatafsb.Date := Date;
dtpDataIsb.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

spdfiltrarsb.Click;

end;

procedure TfrmPesqVProd.dbgsaidabEnter(Sender: TObject);
begin
tabela := 'Vendab';
end;

procedure TfrmPesqVProd.dbgsaidabKeyPress(Sender: TObject; var Key: Char);
begin
if sopcao = 'E' then
   key := #0;
//endi
if sopcao = 'C' then
   key := #0;
//endi

if key = #13 then
   if frmdados.Cds_Vendab.State in [dsinsert, dsedit] then
      begin
        frmdados.Cds_Vendab.Post;
        frmdados.Cds_VProdutos.Refresh;
      end;
   //endi
//endi

end;

procedure TfrmPesqVProd.dbgsaidabKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if sOpcao = 'E' then
   key := 0;
//endi
if sOpcao = 'C' then
   key := 0;
//endi

end;

procedure TfrmPesqVProd.dbgsaidabExit(Sender: TObject);
begin
  if frmdados.Cds_Vendab.State in [dsinsert, dsedit] then
     frmdados.Cds_Vendab.Post;
  //endi

end;

procedure TfrmPesqVProd.cbxnomeoimpKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomeviiKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomeiriiKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomemodbcstKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomemodbcKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomecofinsKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxnomepisKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqVProd.cbxclassificarChange(Sender: TObject);
begin
  if cbxclassificar.Text = 'Descrição' then
     begin
       dbgprodutos.Columns[1].FieldName := 'codigo';
     end;
  //endi
  if cbxclassificar.Text = 'Automático' then
     begin
       dbgprodutos.Columns[1].FieldName := 'codigo';
     end;
  //endi
  if cbxclassificar.Text = 'Auxiliar' then
     begin
       dbgprodutos.Columns[1].FieldName := 'caux';
     end;
  //endi
  if cbxclassificar.Text = 'Barra' then
     begin
       dbgprodutos.Columns[1].FieldName := 'cbar';
     end;
  //endi
end;

procedure TfrmPesqVProd.SpeedButton3Click(Sender: TObject);
begin
frmfatorprod := tfrmfatorprod.Create(self);
frmfatorprod.ShowModal;
frmfatorprod.Free;

try
  frmpesqvprod.ediprcubs.SetFocus;
except
end;



end;

procedure TfrmPesqVProd.tbstabprShow(Sender: TObject);
begin
tabela := 'TabPrP';

filtradetalhes;


end;

procedure TfrmPesqVProd.dbgtabprpKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   begin


   with frmdados do
     begin

       if Cds_TabPrP.State in [dsinsert, dsedit] then
          begin
            if dbgtabprp.SelectedField = cds_tabprpper then
               begin
                 cds_tabprp.FieldByName('prve').asfloat := cds_tabprp.FieldByName('per').asfloat/100*cds_vprodutos.FieldByName('prcu').asfloat+cds_vprodutos.FieldByName('prcu').asfloat;
               end;
            //endi
            if dbgtabprp.SelectedField = frmdados.cds_tabprpprve then
               begin
                 if cds_vprodutos.FieldByName('prcu').asfloat > 0 then
                    cds_tabprp.FieldByName('per').asfloat := (cds_tabprp.FieldByName('prve').asfloat - cds_vprodutos.FieldByName('prcu').asfloat)/cds_vprodutos.FieldByName('prcu').asfloat*100;
                 //endi   
               end;
            //endi
            frmdados.Cds_TabPrP.Post;
          end;
       //endi


     end;
   //endth


   end;
//endi

end;

procedure TfrmPesqVProd.dbgtabprpColEnter(Sender: TObject);
begin
//if dbgtabprp.SelectedIndex = 0 then
//   showmessage('');
//endi


end;

procedure TfrmPesqVProd.spdExpClick(Sender: TObject);
begin
  exportartodosprodutos;
end;

procedure TfrmPesqVProd.exportartodosprodutos;
var
  f:textfile;
  vardir:string;
begin

  vardir := extractfilepath(application.ExeName);

  AssignFile(f,vardir+'Produtos.txt');
  rewrite(f);

  while not frmdados.Cds_vProdutos.Eof do
    begin

      Writeln(f,'[produto'+formatfloat('00000',frmdados.Cds_vProdutos.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'DESCRICAO='+frmdados.Cds_vProdutos.fieldbyname('descricao').asString);
      Writeln(f,'PRVE='+floattostr(frmdados.Cds_vProdutos.fieldbyname('prve').asfloat));
      Writeln(f,'CBAR='+frmdados.Cds_vProdutos.fieldbyname('cbar').asString);
      Writeln(f,'CAUX='+frmdados.Cds_vProdutos.fieldbyname('caux').asString);
      Writeln(f,'NCM='+frmdados.Cds_vProdutos.fieldbyname('ncm').asString);
      Writeln(f,'CEST='+frmdados.Cds_vProdutos.fieldbyname('cest').asString);
      if frmdados.Cds_AliqImpFis.Locate('codigo',frmdados.Cds_vProdutos.fieldbyname('SGLIMPFIS').AsInteger,[]) then
         begin
           Writeln(f,'ICMS='+frmdados.cds_aliqimpfis.fieldbyname('sigla').asString);
         end;
      //endi

      if frmdados.Cds_unidade.Locate('codigo',frmdados.Cds_vProdutos.fieldbyname('cuni').AsInteger,[]) then
         begin
           Writeln(f,'UNIDADE='+frmdados.cds_unidade.fieldbyname('descricao').asString);
         end;
      //endi


      if frmdados.Cds_sita.Locate('codigo',frmdados.Cds_vProdutos.fieldbyname('codsita').AsInteger,[]) then
         begin
           Writeln(f,'ORIGEM='+frmdados.cds_sita.fieldbyname('sigla').asString);
         end;
      //endi


      frmdados.Cds_vProdutos.Next;
     end;
  //endi

  CloseFile(f);


  showmessage('Exportação concluída');


end;


procedure TfrmPesqVProd.Button2Click(Sender: TObject);
begin
  with frmdados do
    begin
      cds_TabPrP.Active := false;
      cds_TabPrPcpro.DefaultExpression := inttostr(cds_vprodutos.fieldbyname('codigo').asInteger);
      dbx_TabPrP.Active := false;
      dbx_TabPrP.SQL.Clear;
      dbx_TabPrP.SQL.Add('Select * from TabPrP where cpro = '+ inttostr(cds_vprodutos.fieldbyname('codigo').asInteger) );
      dbx_TabPrP.Active := true;
      cds_TabPrP.Active := true;


      tabela := 'Temp';

      cds_temp.Edit;
      cds_temp.FieldByName('cod9').AsInteger := 0;

      tabela := 'TabPrP';


    end;




end;

procedure TfrmPesqVProd.Button1Click(Sender: TObject);
begin
   with frmdados do
     begin
       cds_TabPrP.Active := false;
       cds_TabPrPcpro.DefaultExpression := inttostr(cds_vprodutos.fieldbyname('codigo').asInteger);
       dbx_TabPrP.Active := false;
       dbx_TabPrP.SQL.Clear;
       dbx_TabPrP.SQL.Add('Select * from TabPrP where cpro = '+ inttostr(cds_vprodutos.fieldbyname('codigo').asInteger)+' and ctab = '+inttostr(cds_tipotab.fieldbyname('codigo').asInteger) );
       dbx_TabPrP.Active := true;
       cds_TabPrP.Active := true;
     end;
end;

procedure TfrmPesqVProd.DBLookupComboBox4Exit(Sender: TObject);
begin
tabela := 'TabPrP';
end;

procedure TfrmPesqVProd.DBLookupComboBox4Enter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqVProd.SpeedButton4Click(Sender: TObject);
begin
  frmbaixarncm := tfrmbaixarncm.Create(self);
  frmbaixarncm.ShowModal;
  frmbaixarncm.Free;

  
end;

procedure TfrmPesqVProd.DBEdit4Exit(Sender: TObject);
begin
  if (dbedit4.Text <> '101') and
     (dbedit4.Text <> '103') and
     (dbedit4.Text <> '103') and
     (dbedit4.Text <> '201') and
     (dbedit4.Text <> '202') and
     (dbedit4.Text <> '203') and
     (dbedit4.Text <> '300') and
     (dbedit4.Text <> '400') and
     (dbedit4.Text <> '500') and
     (dbedit4.Text <> '900')
  then
     begin
       showmessage('Valor digitado não permitido');
       dbedit4.SetFocus;
     end;
  //endi
end;

procedure TfrmPesqVProd.SpeedButton5Click(Sender: TObject);
begin
  showmessage( '101'+chr(13)+
               '103'+chr(13)+
               '103'+chr(13)+
               '201'+chr(13)+
               '202'+chr(13)+
               '203'+chr(13)+
               '300'+chr(13)+
               '400'+chr(13)+
               '500'+chr(13)+
               '900'
             );
end;

procedure TfrmPesqVProd.tbscaracShow(Sender: TObject);
begin
 if (not bProdutosaltqtde) then
     begin

       edidesc.SetFocus; 

     end;
 //endi
end;

end.
