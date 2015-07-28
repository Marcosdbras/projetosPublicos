unit upesqnf;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, SayPrint, ImgList, Menus;

type
  TfrmPesqNF = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    lbltitdatai: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    pnlficha: TPanel;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;            
    spdConsultar174: TSpeedButton;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    pnllocaliza: TPanel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label9: TLabel;
    spdilustracao177: TSpeedButton;
    SayPrint: TSayPrint;
    Panel1: TPanel;
    Label5: TLabel;
    cbxnfun: TDBLookupComboBox;
    Label6: TLabel;
    cbxnrep: TDBLookupComboBox;
    cbxncli: TDBLookupComboBox;
    Label4: TLabel;
    pctficha: TPageControl;
    tbsDadosG: TTabSheet;
    Bevel5: TBevel;
    Label12: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label46: TLabel;
    edivolumes: TDBEdit;
    edisaida: TDBEdit;
    ediresuni: TDBEdit;
    ediprazo_validade: TDBEdit;
    edida1: TDBEdit;
    edida2: TDBEdit;
    edida3: TDBEdit;
    edida4: TDBEdit;
    edida5: TDBEdit;
    edida6: TDBEdit;
    edida7: TDBEdit;
    edida8: TDBEdit;
    TbsProdutos: TTabSheet;
    Bevel4: TBevel;
    spdconsultaproduto: TSpeedButton;
    lbltotal: TLabel;
    Label16: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    lblnuni: TLabel;
    Label29: TLabel;
    spdalterarparc: TSpeedButton;
    spdsalvarprod: TSpeedButton;
    spdexcluirparc: TSpeedButton;
    dbgnfp: TDBGrid;
    edicpro: TEdit;
    ediqtde: TEdit;
    edinpro: TEdit;
    ediprve: TEdit;
    edisubtotal: TEdit;
    DBLookupComboBox4: TDBLookupComboBox;
    cbxunid: TComboBox;
    dbgnf: TDBGrid;
    Bevel3: TBevel;
    ckbimpnf: TCheckBox;
    Lista_img: TImageList;
    Label7: TLabel;
    edicfun: TEdit;
    edicrep: TEdit;
    ediccli: TEdit;
    cbxnfant: TDBLookupComboBox;
    DBGrid1: TDBGrid;
    cbxnomecli: TDBLookupComboBox;
    Label18: TLabel;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    Label20: TLabel;
    cbxnomerep: TDBLookupComboBox;
    spdprinter: TSpeedButton;
    pnlop: TPanel;
    spdrel: TSpeedButton;
    spdimpnf: TSpeedButton;
    spdlanca: TSpeedButton;
    spdemail: TSpeedButton;
    spdconflan: TSpeedButton;
    spdcanclan: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    Label21: TLabel;
    Label1: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    Label15: TLabel;
    spdcodbar175: TSpeedButton;
    tbstributacao: TTabSheet;
    ediicms: TDBLookupComboBox;
    Label17: TLabel;
    Label22: TLabel;
    lbldescricao: TLabel;
    Label30: TLabel;
    ediipi: TDBLookupComboBox;
    Label31: TLabel;
    edisita: TDBLookupComboBox;
    Label32: TLabel;
    edisitb: TDBLookupComboBox;
    Label33: TLabel;
    edicf: TDBLookupComboBox;
    Label34: TLabel;
    edicfop: TDBLookupComboBox;
    Label35: TLabel;
    edipis: TDBLookupComboBox;
    Label36: TLabel;
    edicofins: TDBLookupComboBox;
    Label37: TLabel;
    edimodbc: TDBLookupComboBox;
    Label38: TLabel;
    edimodbcst: TDBLookupComboBox;
    Label39: TLabel;
    edialiq1: TDBLookupComboBox;
    Label40: TLabel;
    edialiq2: TDBLookupComboBox;
    Label41: TLabel;
    edialiq3: TDBLookupComboBox;
    Bevel6: TBevel;
    spdantp: TSpeedButton;
    spdproxp: TSpeedButton;
    spdgravartrib: TSpeedButton;
    Label42: TLabel;
    cbxnometab: TDBLookupComboBox;
    Label62: TLabel;
    DBEdit3: TDBEdit;
    ckbindtot: TCheckBox;
    spdrelatorios176: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgnfKeyPress(Sender: TObject; var Key: Char);
    procedure dbgnfEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBEdit1Exit(Sender: TObject);
    procedure DBEdit1Enter(Sender: TObject);
    procedure edipdescExit(Sender: TObject);
    procedure spdIncluir171Click(Sender: TObject);
    procedure filtraproduto;
    procedure TbsProdutosShow(Sender: TObject);
    procedure limparprod;
    procedure edicproKeyPress(Sender: TObject; var Key: Char);
    procedure buscarproduto;
    procedure vestoqNv;
    procedure vestoqv;
    procedure ediqtdeExit(Sender: TObject);
    procedure edicproExit(Sender: TObject);
    procedure ediprveExit(Sender: TObject);
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalKeyPress(Sender: TObject; var Key: Char);
    function  AlinEdNumD(texto:TEdit; idec:integer):string;

    procedure ediprveEnter(Sender: TObject);
    procedure DBLookupComboBox4Enter(Sender: TObject);
    procedure DBLookupComboBox4Exit(Sender: TObject);
    procedure spdsalvarprodClick(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure spdConsultar174Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure AlternaF;
    procedure AlternaL;
    procedure spdcancelar2310Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edisubtotalKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdalterarparcClick(Sender: TObject);
    procedure cbxnfunKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnrepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescChange(Sender: TObject);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure verifestq;
    procedure edivaldescExit(Sender: TObject);
    procedure spdconsultaprodutoClick(Sender: TObject);
    
    procedure cbxunidKeyPress(Sender: TObject; var Key: Char);
    procedure cbxunidExit(Sender: TObject);
    procedure cbxntranspKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ediliquidoExit(Sender: TObject);
    procedure edisaidaKeyPress(Sender: TObject; var Key: Char);
    procedure edipdescKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnaturezaKeyPress(Sender: TObject; var Key: Char);
    procedure edivaldescKeyPress(Sender: TObject; var Key: Char);
    procedure ediliquidoKeyPress(Sender: TObject; var Key: Char);
    procedure edidinKeyPress(Sender: TObject; var Key: Char);
    procedure ediparcKeyPress(Sender: TObject; var Key: Char);
    procedure edinproKeyPress(Sender: TObject; var Key: Char);
    procedure edivolumesKeyPress(Sender: TObject; var Key: Char);
    procedure ediresuniKeyPress(Sender: TObject; var Key: Char);
    procedure ediprazo_validadeKeyPress(Sender: TObject; var Key: Char);
    procedure edida1KeyPress(Sender: TObject; var Key: Char);
    procedure edida2KeyPress(Sender: TObject; var Key: Char);
    procedure edida3KeyPress(Sender: TObject; var Key: Char);
    procedure edida4KeyPress(Sender: TObject; var Key: Char);
    procedure edida5KeyPress(Sender: TObject; var Key: Char);
    procedure edida6KeyPress(Sender: TObject; var Key: Char);
    procedure edida7KeyPress(Sender: TObject; var Key: Char);
    procedure edida8KeyPress(Sender: TObject; var Key: Char);
    procedure edinumdup1KeyPress(Sender: TObject; var Key: Char);
    procedure ckbimpnfClick(Sender: TObject);
    procedure dbgnfpDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgnfpDblClick(Sender: TObject);
    procedure spdrelClick(Sender: TObject);
    procedure spdimpnfClick(Sender: TObject);
    procedure cbxnfunKeyPress(Sender: TObject; var Key: Char);
    procedure cbxnrepKeyPress(Sender: TObject; var Key: Char);
    procedure cbxncliKeyPress(Sender: TObject; var Key: Char);
    procedure edicfunKeyPress(Sender: TObject; var Key: Char);
    procedure edicrepKeyPress(Sender: TObject; var Key: Char);
    procedure ediccliKeyPress(Sender: TObject; var Key: Char);
    procedure limpar;
    procedure mostrar;
    procedure ediccliExit(Sender: TObject);
    procedure edicrepExit(Sender: TObject);
    procedure edicfunExit(Sender: TObject);
    procedure cbxcfunKeyPress(Sender: TObject; var Key: Char);
    procedure cbxcrepKeyPress(Sender: TObject; var Key: Char);
    procedure cbxccliKeyPress(Sender: TObject; var Key: Char);
    procedure spdexcluirparcClick(Sender: TObject);
    procedure cbxnfantKeyPress(Sender: TObject; var Key: Char);
    procedure spdlancaClick(Sender: TObject);
    procedure spdemailClick(Sender: TObject);
    procedure spdprinterClick(Sender: TObject);
    procedure bloqueiabotoesP;
    procedure bloqueiabotoesF;
    procedure desbloqueiabotoesP;
    procedure desbloqueiabotoesF;
    procedure AtivaDbotoes;
    procedure spdconflanClick(Sender: TObject);
    procedure spdcanclanClick(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure bloqueiadet;
    procedure desbloqueiadet;
    procedure habdedidesc;
    procedure cbxclassificarClick(Sender: TObject);
    procedure habproduto;
    procedure dbgnfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgnfpKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomecliEnter(Sender: TObject);
    procedure cbxnomefunEnter(Sender: TObject);
    procedure cbxnomerepEnter(Sender: TObject);
    procedure dbgnfpEnter(Sender: TObject);
    procedure spdcodbar175Click(Sender: TObject);
    procedure tbstributacaoShow(Sender: TObject);
    procedure spdantpClick(Sender: TObject);
    procedure spdproxpClick(Sender: TObject);
    procedure spdgravartribClick(Sender: TObject);
    procedure ediicmsKeyPress(Sender: TObject; var Key: Char);
    procedure ediipiKeyPress(Sender: TObject; var Key: Char);
    procedure edisitaKeyPress(Sender: TObject; var Key: Char);
    procedure edisitbKeyPress(Sender: TObject; var Key: Char);
    procedure edicfKeyPress(Sender: TObject; var Key: Char);
    procedure edicfopKeyPress(Sender: TObject; var Key: Char);
    procedure edipisKeyPress(Sender: TObject; var Key: Char);
    procedure edicofinsKeyPress(Sender: TObject; var Key: Char);
    procedure edimodbcKeyPress(Sender: TObject; var Key: Char);
    procedure edimodbcstKeyPress(Sender: TObject; var Key: Char);
    procedure edialiq1KeyPress(Sender: TObject; var Key: Char);
    procedure edialiq2KeyPress(Sender: TObject; var Key: Char);
    procedure edialiq3KeyPress(Sender: TObject; var Key: Char);
    procedure buscarprve;
    procedure SpeedButton1Click(Sender: TObject);




  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sOpcaoP, sCodigo, sOPcao:string;
    icpro, icuni, iccf, icsita, icsitb, icicms, icipi, icMar, iccfop,
    icpis, iccofins, icmodbc, icirii, icvii, icoimp, icmodbcst:integer;
    fQtdeEstq:real;
    bMostrar:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf:boolean;

  public
    { Public declarations }
    sTitRel:string;
  end;

var
  frmPesqNF: TfrmPesqNF;

implementation

uses uGeral, uPrincipal, uDados, uImpOrcp, upesqprod, uimpnf, uFecPed, uemailped,
  uMRVD, ufecenf, uetiqenv ,uMRnf;

{$R *.DFM}

procedure TfrmPesqNF.FormShow(Sender: TObject);
var
   vardir: String;
begin
   tabela := 'NF';
   sOpcaoP := 'I';
   sOpcao := 'I';

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Data');
   cbxclassificar.Items.Add('N.o Pedido');
   cbxclassificar.ItemIndex := 0;

   pctficha.ActivePageIndex := 0;

   edidesc.Enabled := false;

   vardir := ExtractFilePath(Application.ExeName);

   pnlsalvarficha.Top := pnllista.Top;
   pnlsalvarficha.Left := pnllista.Left;
   dbgnf.Align := alclient;
   pnlficha.Align := alclient;

   pnlsalvarficha.Visible := false;


   with frmdados do
     begin

       Cds_Unidade.Active := false;
       Dbx_Unidade.Active := false;
       Dbx_Unidade.SQL.Clear;
       Dbx_Unidade.SQL.Add('Select * from Unidade');
       Dbx_Unidade.Active := true;
       Cds_Unidade.Active := true;

       cds_vProdutos.Active := false;
       dbx_vProdutos.Active := false;
       dbx_vProdutos.SQL.Clear;
       dbx_vProdutos.SQL.Add('select * from vProdutos order by descricao');
       dbx_vProdutos.Active := true;
       cds_vProdutos.Active := true;

       cds_Clientes.Active := false;
       dbx_Clientes.Active := false;
       dbx_Clientes.SQL.Clear;
       dbx_Clientes.SQL.Add('select * from Clientes order by nome');
       dbx_Clientes.Active := true;
       cds_Clientes.Active := true;

       cds_Representantes.Active := false;
       dbx_Representantes.Active := false;
       dbx_Representantes.SQL.Clear;
       dbx_Representantes.SQL.Add('select * from Representantes order by nome');
       dbx_Representantes.Active := true;
       cds_Representantes.Active := true;

       cds_Funcionarios.Active := false;
       dbx_Funcionarios.Active := false;
       dbx_Funcionarios.SQL.Clear;
       dbx_Funcionarios.SQL.Add('select * from Funcionarios order by nome');
       dbx_Funcionarios.Active := true;
       cds_Funcionarios.Active := true;

       cds_AliqImpFis.Active := false;
       dbx_AliqImpFis.Active := false;
       dbx_AliqImpFis.SQL.Clear;
       dbx_AliqImpFis.SQL.Add('select * from AliqImpFis order by sigla');
       dbx_AliqImpFis.Active := true;
       cds_AliqImpFis.Active := true;

       cds_IPI.Active := false;
       dbx_IPI.Active := false;
       dbx_IPI.SQL.Clear;
       dbx_IPI.SQL.Add('select * from IPI order by sigla');
       dbx_IPI.Active := true;
       cds_IPI.Active := true;

       cds_Sita.Active := false;
       dbx_Sita.Active := false;
       dbx_Sita.SQL.Clear;
       dbx_Sita.SQL.Add('select * from SITA order by sigla');
       dbx_Sita.Active := true;
       cds_Sita.Active := true;

       cds_Sitb.Active := false;
       dbx_Sitb.Active := false;
       dbx_Sitb.SQL.Clear;
       dbx_Sitb.SQL.Add('select * from SITB order by sigla');
       dbx_Sitb.Active := true;
       cds_Sitb.Active := true;

       cds_CF.Active := false;
       dbx_CF.Active := false;
       dbx_CF.SQL.Clear;
       dbx_CF.SQL.Add('select * from CF order by sigla');
       dbx_CF.Active := true;
       cds_CF.Active := true;

       cds_NatOp.Active := false;
       dbx_NatOp.Active := false;
       dbx_NatOp.SQL.Clear;
       dbx_NatOp.SQL.Add('select * from NatOp order by cfop');
       dbx_NatOp.Active := true;
       cds_NatOp.Active := true;

       cds_PIS.Active := false;
       dbx_PIS.Active := false;
       dbx_PIS.SQL.Clear;
       dbx_PIS.SQL.Add('select * from PIS order by sigla');
       dbx_PIS.Active := true;
       cds_PIS.Active := true;

       cds_COFINS.Active := false;
       dbx_COFINS.Active := false;
       dbx_COFINS.SQL.Clear;
       dbx_COFINS.SQL.Add('select * from COFINS order by sigla');
       dbx_COFINS.Active := true;
       cds_COFINS.Active := true;

       cds_ModBc.Active := false;
       dbx_ModBc.Active := false;
       dbx_ModBc.SQL.Clear;
       dbx_ModBc.SQL.Add('select * from ModBc order by sigla');
       dbx_ModBc.Active := true;
       cds_ModBc.Active := true;

       cds_ModBcSt.Active := false;
       dbx_ModBcSt.Active := false;
       dbx_ModBcSt.SQL.Clear;
       dbx_ModBcSt.SQL.Add('select * from ModBcSt order by sigla');
       dbx_ModBcSt.Active := true;
       cds_ModBcSt.Active := true;

       cds_vii.Active := false;
       dbx_vii.Active := false;
       dbx_vii.SQL.Clear;
       dbx_vii.SQL.Add('select * from vii order by sigla');
       dbx_vii.Active := true;
       cds_vii.Active := true;

       cds_ir_ii.Active := false;
       dbx_ir_ii.Active := false;
       dbx_ir_ii.SQL.Clear;
       dbx_ir_ii.SQL.Add('select * from ir_ii order by sigla');
       dbx_ir_ii.Active := true;
       cds_ir_ii.Active := true;

       cds_oimp.Active := false;
       dbx_oimp.Active := false;
       dbx_oimp.SQL.Clear;
       dbx_oimp.SQL.Add('select * from oimp order by sigla');
       dbx_oimp.Active := true;
       cds_oimp.Active := true;

       while not cds_unidade.Eof do
         begin
           cbxunid.Items.Add(cds_Unidade.fieldbyname('descricao').asString);
           cds_unidade.Next;
         end;
       //endw

     end;
   //endth

   spdlimpar.Click;
   //bloqueiabotoesP;
   //bloqueiabotoesF;

end;

procedure TfrmPesqNF.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqNF.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqNF.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqNF.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqNF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqnf:=nil;
  form_ativo := '';

end;

procedure TfrmPesqNF.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqNF.dbgnfKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_NF.State in [dsinsert, dsedit] then
      frmdados.Cds_NF.Post;
   //endi
//endi
end;

procedure TfrmPesqNF.dbgnfEnter(Sender: TObject);
begin
tabela := 'NF';
end;

procedure TfrmPesqNF.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqNF.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqNF.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqNF.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sDesc : String;
  ftotcusto, ftotpreco:real;
  iccli, icfun, icrep:integer;
begin

  with frmdados do
    begin
      Cds_NF.Active := false;
      cds_nfdatas.DefaultExpression := quotedstr(datetostr(date));
      cds_nfhoras.DefaultExpression := quotedstr(copy(timetostr(time),1,5));
      Cds_nfp.Active := false;
      Cds_Vencto.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Data' then
     sClassificar := 'DataCad';
  //endi
  if cbxclassificar.Text = 'N.o Pedido' then
     sClassificar := 'nped';
  //endi


  // inicializando variáveis comuns
  sCompo := '';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sDesc := '';
  iccli := 0;
  icfun := 0;
  icrep := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  //sDataI := copy(datetimetostr(dtpdatai.Date),1,10);
  sDataI := bar_is_point( sDataI  );


  sDataF := datetostr(dtpdataF.Date);
  //sDataF := copy(datetimetostr(dtpdataF.Date),1,10);
  sDataF := bar_is_point( sDataF  );


  if cbxnomecli.Text <> '' then
     begin
       iccli := frmdados.Cds_Clientes.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomefun.Text <> '' then
     begin
       icfun := frmdados.Cds_Funcionarios.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomeRep.Text <> '' then
     begin
       icRep := frmdados.Cds_Representantes.FieldByName('codigo').asInteger;
     end;
  //endi

  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( DataCad <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de codigoF
  if ( icCli <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + 'Cliente: ' + cbxnomecli.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Cliente: ' + cbxnomecli.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de codigoF
  if ( icfun <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + 'Vend.: ' + cbxnomeFun.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cfun = ' + inttostr(icfun) + ')';
            sTitRel := sTitRel + ' / Vend.: ' + cbxnomeFun.Text;
          end;
       //endif
     end;
  //endif



  //Bloco de filtro de codigoF
  if ( icRep <> 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cRep = ' + inttostr(icRep) + ')';
            sTitRel := sTitRel + 'Rep.: ' + cbxnomeRep.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( cRep = ' + inttostr(icRep) + ')';
            sTitRel := sTitRel + ' / Rep.: ' + cbxnomeRep.Text;
          end;
       //endif
     end;
  //endif
  
  // executando o filtro

  try
    with frmdados.Dbx_NF do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            begin
              if not cbxclassificar.Enabled then
                 sql.Add('select * from NF where '+sCompo)
              else
                 sql.Add('select * from NF where '+sCompo+' order by '+sClassificar);
              //endi
            end
         else
            begin
              if not cbxclassificar.Enabled then
                 sql.Add('select * from NF')
              else
                 sql.Add('select * from NF order by '+sClassificar);
              //endi
            end;
         //endi
         active := true;
        
         if edidesc.Enabled then
            if recordcount = 0 then
               begin
                 if sDesc <> '' then
                    begin
                      active := false;
                      sql.Clear;
                      sql.Add('select * from NF where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                      active := true;
                    end;
                 //endi
               end;
            //endi
         //endi

       end;
    //endi

    frmdados.cds_NFtipoop.DefaultExpression := frmdados.Cds_Indice.fieldbyname('qdonovopedint').asString;
    frmdados.cds_NF.Active := true;
    if frmdados.Cds_NF.RecordCount > 0 then
       begin
         AtivaDbotoes;
       end
    else
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;
         spdincluir171.Enabled := true;
       end;
    //endi
  
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;

end;

procedure TfrmPesqNF.spdlimparClick(Sender: TObject);
begin
  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;
  limparprod;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqNF.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi
if (ssCtrl in Shift) and (chr(Key) in ['I', 'i']) then
begin
  if spdincluir171.Enabled then
     spdincluir171.Click;
  //endi
end;
if (ssCtrl in Shift) and (chr(Key) in ['A', 'a']) then
begin
  if spdAlterar172.Enabled then
     spdAlterar172.Click;
  //endi
end;

if pnlsalvarficha.Enabled then
   begin
     if (ssCtrl in Shift) and (chr(Key) in ['P', 'p']) then
        begin
          if spdimpnf.Enabled then
             spdimpnf.Click;
          //endi
        end;
     //endi
   end;
//endi

if pnlsalvarficha.Enabled then
   begin
     if (ssCtrl in Shift) and (chr(Key) in ['L', 'l']) then
        begin
          if spdlanca.Enabled then
             spdlanca.Click;
          //endi
        end;
     //endi
   end;
//endi

end;

procedure TfrmPesqNF.DBEdit1Exit(Sender: TObject);
begin
     with frmdados do
       begin
         if cds_ClientesCPF.text <> '' then
            if length(cds_ClientesCPF.text) > 14 then
               cds_ClientesCPF.EditMask := '00.000.000/0000-00;0;_'
            else
               cds_ClientesCPF.EditMask := '000.000.000-00;0;_'
            //endi
         else
            cds_ClientesCPF.EditMask := '';
         //endi
       end;
     //endth

end;

procedure TfrmPesqNF.DBEdit1Enter(Sender: TObject);
begin
frmdados.cds_ClientesCPF.EditMask := '';
end;

procedure TfrmPesqNF.edipdescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc, svaldesc:string;


begin
end;

procedure TfrmPesqNF.spdIncluir171Click(Sender: TObject);
begin
AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'NF';
limpar;
frmdados.Cds_NF.Append;
if edicfun.Enabled then
   edicfun.SetFocus;
//endi
end;

procedure tfrmPesqNF.filtraproduto;
begin
  with frmdados do
    begin

      if Cds_NF.State in [dsinsert, dsedit] then
         Cds_NF.Post;
      //endi

      cds_nfp.Active := false;
      cds_nfpcodNF.DefaultExpression := cds_NF.fieldbyname('codigo').asString;
      cds_nfpImpNf.DefaultExpression := 'T';

      dbx_nfp.Active := false;
      dbx_nfp.SQL.Clear;
      dbx_nfp.SQL.Add('Select * from nfp where codNF = '+inttostr( cds_NF.fieldbyname('codigo').asInteger));
      dbx_nfp.Active := true;
      cds_nfp.Active := true;

      totalizafrmpesqvdprod;

      //if Cds_NF.RecordCount <> 0 then
      //   Cds_nfp.Active := true;
      //endi
      //if Cds_NF.RecordCount <> 0 then
      //   Cds_Vencto.Active := true;
      //endi
    end;
  //end;


end;

procedure TfrmPesqNF.TbsProdutosShow(Sender: TObject);
begin
  habproduto;

  if frmdados.Cds_NFP.State in [dsInsert, dsedit] then
     frmdados.Cds_NFP.CancelUpdates;
  //endi

end;



procedure tfrmPesqNF.limparprod;
begin
  edicpro.Text := '';
  ediqtde.Text := '0,000';
  fquaa        := 0;

  ediqtde.Text := AlinEdNumD(ediqtde,3);

  ediprve.Text := '0,00';
  ediprve.Text := AlinEdNumD(ediprve,2);

  edisubtotal.Text := '0,00';
  edisubtotal.Text := AlinEdNumD(edisubtotal,2);

  edinpro.Text := '';
  cbxunid.Text := '';
  //ediespecificacao.Text := '';
  lblnuni.Caption := '';


  ckbimpnf.Checked := true;
  bimpnf := true;

  icpro := 0;


end;

procedure TfrmPesqNF.edicproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;


procedure tfrmPesqNF.buscarproduto;
begin
if edicpro.Text = '' then
   begin
     icpro := 0;
     exit;
   end;
//endi
with frmdados do
  begin
    dbx_vProdutos.Active := false;
    dbx_vProdutos.SQL.Clear;
    dbx_vProdutos.SQL.Add('Select * from vProdutos Where cBar = '+Quotedstr(edicpro.text));
    dbx_vProdutos.Active := true;
    if dbx_vProdutos.RecordCount = 0 then
       begin
         dbx_vProdutos.Active := false;
         dbx_vProdutos.SQL.Clear;
         dbx_vProdutos.SQL.Add('Select * from vProdutos Where cAux = '+Quotedstr(edicpro.text));
         dbx_vProdutos.Active := true;
         if dbx_vProdutos.RecordCount = 0 then
            begin
              dbx_vProdutos.Active := false;
              dbx_vProdutos.SQL.Clear;
              dbx_vProdutos.SQL.Add('Select * from vProdutos Where Descricao = '+Quotedstr(edicpro.Text));
              dbx_vProdutos.Active := true;
              if dbx_vProdutos.RecordCount = 0 then
                 begin
                   try
                     dbx_vProdutos.Active := false;
                     dbx_vProdutos.SQL.Clear;
                     dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+edicpro.Text);
                     dbx_vProdutos.Active := true;
                     if dbx_vProdutos.RecordCount = 0 then
                        begin
                          limparprod;
                          showmessage('Código Não Existe!!!');
                          icpro := 0;
                          icuni := 0;
                          bimpnf := true;

                          iccf   := 0;
                          icsita := 0;
                          icMar  := 0;
                          icsitb := 0;
                          icicms := 0;
                          icipi  := 0;
                          iccfop := 0;

                          icpis := 0;
                          iccofins := 0;
                          icmodbc := 0;
                          icirii := 0;
                          icvii := 0;
                          icoimp := 0;
                          icmodbcst := 0;
                          
                          fQtdeEstq := 0;
                          sActDesc := 'T';
                          bMostrar := false;
                          sTipoCod := '';
                          if edicpro.Enabled then
                             edicpro.SetFocus
                          else
                             ediqtde.SetFocus;
                          //endi
                        end
                     else
                        begin
                          edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                          //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                          icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                          icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                          bimpnf := true;

                          iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                          icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                          icMar := dbx_vProdutos.fieldbyname('cmar').asInteger;

                          icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                          icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                          icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                          iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

                          icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                          iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                          icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
                          icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                          icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                          icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                          icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;
                          
                          //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                          //ediprve.Text := AlinEdNumD(ediprve,2);

                          buscarprve;

                          fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                          fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                          sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                          bMostrar := true;
                          sTipoCod := 'Codigo';

                          dbx_Exec.Active := false;
                          dbx_Exec.SQL.Clear;
                          dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                          dbx_Exec.Active := true;
                          cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                        end
                     //endi
                   except
                     begin
                       icpro := 0;
                       icuni := 0;
                       bimpnf := true;

                       iccf   := 0;
                       icsita := 0;
                       icMar  := 0;
                       icsitb := 0;
                       icicms := 0;
                       icipi  := 0;
                       iccfop  := 0;

                       icpis  := 0;
                       iccofins  := 0;
                       icmodbc  := 0;
                       icirii  := 0;
                       icvii  := 0;
                       icoimp  := 0;
                       icmodbcst  := 0;
                       
                       fQtdeEstq := 0;
                       sActDesc := 'T';
                       bMostrar := false;
                       sTipoCod := '';
                     end;
                   end
                 end
              else
                 begin
                   edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
                   //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
                   icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
                   icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
                   bimpnf := true;

                   iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
                   icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
                   icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;
                   
                   icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
                   icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
                   icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
                   iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;


                   icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
                   iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
                   icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
                   icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
                   icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
                   icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
                   icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;

                   //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
                   //ediprve.Text := AlinEdNumD(ediprve,2);

                   buscarprve;

                   fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
                   fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
                   sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
                   bMostrar := true;
                   sTipoCod := 'Desc';

                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
                   dbx_Exec.Active := true;
                   cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

                 end
              //endi
            end
         else
            begin
              edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
              //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
              icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
              icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
              bimpnf := true;

              iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
              icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
              icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;

              icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
              icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
              icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
              iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;


              icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
              iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
              icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
              icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
              icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
              icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
              icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;
              
              //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
              //ediprve.Text := AlinEdNumD(ediprve,2);

              buscarprve;

              fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
              fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
              sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
              bMostrar := true;
              sTipoCod := 'cAux';

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
              dbx_Exec.Active := true;
              cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

            end
         //endi
       end
    else
       begin
         edinpro.Text := dbx_vProdutos.fieldbyname('descricao').asString;
         //ediespecificacao.Text := dbx_vProdutos.fieldbyname('especificacao').asString;
         icpro := dbx_vProdutos.fieldbyname('codigo').asInteger;
         icuni := dbx_vProdutos.fieldbyname('cuni').asInteger;
         bimpnf := true;

         iccf   := dbx_vProdutos.fieldbyname('codcf').asInteger;
         icsita := dbx_vProdutos.fieldbyname('codsita').asInteger;
         icMar := dbx_vProdutos.fieldbyname('cMar').asInteger;


         icsitb := dbx_vProdutos.fieldbyname('codsitb').asInteger;
         icicms := dbx_vProdutos.fieldbyname('sglimpfis').asInteger;
         icipi  := dbx_vProdutos.fieldbyname('codipi').asInteger;
         iccfop  := dbx_vProdutos.fieldbyname('ccfop').asInteger;

         icpis  := dbx_vProdutos.fieldbyname('cpis').asInteger;
         iccofins  := dbx_vProdutos.fieldbyname('ccofins').asInteger;
         icmodbc  := dbx_vProdutos.fieldbyname('cmodbc').asInteger;
         icirii  := dbx_vProdutos.fieldbyname('cirii').asInteger;
         icvii  := dbx_vProdutos.fieldbyname('cvii').asInteger;
         icoimp  := dbx_vProdutos.fieldbyname('coimp').asInteger;
         icmodbcst  := dbx_vProdutos.fieldbyname('cmodbcst').asInteger;

         //ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
         //ediprve.Text := AlinEdNumD(ediprve,2);

         buscarprve;

         fprcu := dbx_vProdutos.fieldbyname('prcu').asfloat;
         fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
         sActDesc := dbx_vProdutos.fieldbyname('ActDesc').asString;
         bMostrar := true;
         sTipoCod := 'cBar';

         dbx_Exec.Active := false;
         dbx_Exec.SQL.Clear;
         dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
         dbx_Exec.Active := true;
         cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;

       end;
    //endi
    dbx_vProdutos.Active := false;
    dbx_exec.Active := false;
  end;
//end
end;

procedure tfrmPesqNF.vestoqNv;
var
  fprojecao, fqtde:real;
  icod:integer;

begin
    fqtde := strtofloat(tirapontos(ediqtde.Text));
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from nfp where (cpro = '+inttostr(icpro)+') and (codNF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) +')');
        dbx_exec.Active := true;
        if sOpcaop = 'I' then
           fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat
        else
           if sOpcaop = 'A' then
              fprojecao := fQtde;
           //endi
        //endi
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         icod := icpro;
         limparprod;

         sActDesc := 'T';
         bMostrar := false;
         sTipoCod := '';
         showmessage('Estoque Insuficiente, Contate o Gerente!!! Quantidade Atual No Estoque: '+Formatfloat('###,###,##0.000',fQtdeEstq));
         fQtdeEstq := 0;
         icpro := 0;
         icuni := 0;
         bimpnf := true;

         iccf   := 0;
         icsita := 0;
         iCMar  := 0; 

         icsitb := 0;
         icicms := 0;
         icipi  := 0;
         iccfop := 0;

         icpis := 0;
         iccofins := 0;
         icmodbc := 0;
         icirii := 0;
         icvii := 0;
         icoimp := 0;
         icmodbcst := 0;


         if sOpcaop = 'I' then
            edicpro.Text := inttostr(icod);
         //endi

         edicpro.Enabled := true;
         spdconsultaproduto.Enabled := true;

         dbgnfp.Enabled := true;
         sOpcaop := 'I';

         if edicfun.Enabled then
             edicpro.SetFocus;
         //endi    
         
       end;
    //endi
end;

procedure tfrmPesqNF.vestoqV;
var
  fprojecao, fqtde:real;

begin
    fqtde := strtofloat(tirapontos(ediqtde.Text));
    with frmdados do
      begin
        dbx_exec.Active := false;
        dbx_exec.SQL.Clear;
        dbx_exec.SQL.Add('Select sum(qtde) as tqtde from nfp where (cpro = '+inttostr(icpro)+') and (codNF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) +')');
        dbx_exec.Active := true;
        fprojecao := fQtde+dbx_exec.fieldbyname('tqtde').asfloat;
        dbx_exec.Active := false;
      end;
    //endi
    if fprojecao > fQtdeEstq then
       begin
         //gera relatorio venda com estoque insuficiente
         //com programação da entrega
       end;
    //endi
end;

procedure TfrmPesqNF.ediqtdeExit(Sender: TObject);
begin
try
verifestq;

edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
edisubtotal.Text := AlinEdNumD(edisubtotal,2);

fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
ediqtde.Text := AlinEdNumD(ediqtde,3);

except
  ediqtde.Text := '0,00';
  if ediqtde.Enabled then
     ediqtde.SetFocus;
  //endi   
end;

end;

procedure TfrmPesqNF.edicproExit(Sender: TObject);
begin
  try

    buscarproduto;

    edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
    edisubtotal.Text := AlinEdNumD(edisubtotal,2);

    fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
    ediqtde.Text := AlinEdNumD(ediqtde,3);

  except
    if edicpro.Enabled then
       edicpro.SetFocus;
    //end   
  end;
end;

procedure TfrmPesqNF.ediprveExit(Sender: TObject);
begin
try
edisubtotal.Text := formatfloat('',strtofloat(tirapontos(ediqtde.Text))*strtofloat(tirapontos(ediprve.Text))   );
edisubtotal.Text := AlinEdNumD(edisubtotal,2);

fsubtotalc :=  strtofloat(tirapontos(ediqtde.Text))*fprcu;
ediprve.Text := AlinEdNumD(ediprve,2);

except
  ediprve.Text := '0,00';
  if ediprve.Enabled then
     ediprve.SetFocus;
  //endi   
end;

end;

procedure TfrmPesqNF.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  if (key <> ',') then
     If not( key in['0'..'9',#8] )then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi




end;

procedure TfrmPesqNF.ediprveKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif



  if (key <> ',') then
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
      //endi
  //endi



end;

procedure TfrmPesqNF.edisubtotalKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       //SelectNext(ActiveControl,True,True);
       spdsalvarprod.Click; 
       exit;
     end;
  //endif

  key := #0;

end;


function TfrmPesqNF.AlinEdNumD(texto:TEdit; idec:integer):string;
var
  n: Integer;
  c: TCanvas;
  h: HWND;
  txt:string;
  // pode se usar Form1.Canvas se for a mesma fonte do Edit
begin
  if idec = 3 then
     texto.Text := formatfloat('###,###,##0.000',strtofloat(tirapontos(texto.Text)))
  else
     texto.Text := formatfloat('###,###,##0.00',strtofloat(tirapontos(texto.Text)));
  //endi

  c := TCanvas.Create;
  c.Handle := GetDeviceContext(h);
  c.Font := texto.Font;
  n := round((texto.Width - c.TextWidth(texto.Text) - 8) / c.TextWidth( ' '));
  texto.Text := stringofchar( ' ',n) + texto.Text;
  result := texto.Text;
end;


procedure TfrmPesqNF.ediprveEnter(Sender: TObject);
begin
//ediprve.Text := trim(ediprve.text);
end;

procedure TfrmPesqNF.DBLookupComboBox4Enter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNF.DBLookupComboBox4Exit(Sender: TObject);
begin
tabela := 'nfp';
end;

procedure TfrmPesqNF.spdsalvarprodClick(Sender: TObject);
var
  sprve, sQtde, sSubtotal, sSubtotalc, sEouS, sPrcu, sData:string;
begin

verifestq;


if edicpro.Text = '' then
   if edinpro.Text = '' then
      exit;
   //endi
//endi

tabela := 'nfp';

sData := datetostr(date);
sPrve := tirapontos(trim(ediprve.Text));
sQtde := tirapontos(trim(ediqtde.Text));
sSubtotal := tirapontos(trim(edisubtotal.Text));
sPrcu := floattostr(fPrcu);
sSubtotalc := floattostr(fsubtotalc);
sEouS := 'S';

with frmdados do
  begin

    sql_dados.StartTransaction(TD);

    if sOpcaop = 'I' then
       begin

         Dbx_Exec.Active := false;
         Dbx_Exec.SQL.Clear;
         Dbx_Exec.SQL.Add('Select * from nfp where (cpro = '+inttostr(icpro)+') and (codNF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) +') and (prve = '+decimal_is_point(sPrve)+')' );
         Dbx_Exec.Active := true;
         if dbx_Exec.RecordCount = 0 then
            begin

              dbx_Exec.Active := false;
              dbx_Exec.SQL.Clear;
              dbx_Exec.SQL.Add('Insert into nfp(');

              //1
              if icpro > 0 then
                 dbx_Exec.SQL.Add('cpro, ');
              //endi

              //2
              if edinpro.Text <> '' then
                 dbx_Exec.SQL.Add('npro, ');
              //endi

              //3
              //if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or (rgbtipoop.ItemIndex > 0) then
              dbx_Exec.SQL.Add('ehvenda, ');
              //endi

              //4
              if sQtde <> '' then
                 dbx_Exec.SQL.Add('qtde, ');
              //endi

              //5
              if sPrve <> '' then
                 dbx_Exec.SQL.Add('prve, ');
              //endi

              //6
              if sSubtotal <> '' then
                 dbx_Exec.SQL.Add('subtotal, ');
              //endi

              //7
              if sEouS <> '' then
                 dbx_Exec.SQL.Add('EouS, ');
              //endi

              //8
              if icuni > 0 then
                 dbx_Exec.SQL.Add('cuni, ');
              //endi

              //9
              if iccf > 0 then
                 dbx_Exec.SQL.Add('codcf, ');
              //endi

              //10
              if icsita > 0 then
                 dbx_Exec.SQL.Add('codsita, ');
              //endi

              //11
              if icMar > 0 then
                 dbx_Exec.SQL.Add('cMar, ');
              //endi

              //12
              if icsitb > 0 then
                 dbx_Exec.SQL.Add('codsitb, ');
              //endi

              //13
              if icicms > 0 then
                 dbx_Exec.SQL.Add('codicms, ');
              //endi

              //14
              if icipi > 0 then
                 dbx_Exec.SQL.Add('codipi, ');
              //endi

              //15
              if iccfop > 0 then
                 dbx_Exec.SQL.Add('codcfop, ');
              //endi


              // 14.04.2010

              //16
              if icpis > 0 then
                 dbx_Exec.SQL.Add('codpis, ');
              //endi

              //17
              if iccofins > 0 then
                 dbx_Exec.SQL.Add('codcofins, ');
              //endi

              //18
              if icmodbc > 0 then
                 dbx_Exec.SQL.Add('codmodbc, ');
              //endi

              //19
              if icirii > 0 then
                 dbx_Exec.SQL.Add('codirii, ');
              //endi

              //20
              if icvii > 0 then
                 dbx_Exec.SQL.Add('codvii, ');
              //endi

              //21
              if icoimp > 0 then
                 dbx_Exec.SQL.Add('codoimp, ');
              //endi

              //22
              if icmodbcst > 0 then
                 dbx_Exec.SQL.Add('codmodbcst, ');
              //endi

              //23
              if sActDesc <> '' then
                 dbx_Exec.SQL.Add('ActDesc, ');
              //endi

              //24
              if sPrcu <> '' then
                 dbx_Exec.SQL.Add('prcu, ');
              //endi

              //25
              if sSubtotalC <> '' then
                 dbx_Exec.SQL.Add('SubtotalC, ');
              //endi

              //26
              dbx_Exec.SQL.Add('Data_OP, ');

              //27
              dbx_Exec.SQL.Add('impnf, ');

              //28
              dbx_Exec.SQL.Add('codNF');

              dbx_Exec.SQL.Add(')');

              dbx_Exec.SQL.Add(' values (');

              //1
              if icpro > 0 then
                 dbx_Exec.SQL.Add(inttostr(icpro)+',');
              //endi

              //2
              if edinpro.Text <> '' then
                 dbx_Exec.SQL.Add(quotedstr(edinpro.Text)+',');
              //endi

              //3
              //if (cds_Indice.FieldByName('baixaqdoorcped').asInteger = 1) or (rgbtipoop.ItemIndex > 0) then
              dbx_Exec.SQL.Add(Quotedstr('T')+',');
              //endi

              //4
              if sQtde <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sQtde)+',');
              //endi

              //5
              if sPrve <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sPrve)+',');
              //endi

              //6
              if sSubtotal <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sSubtotal)+',');
              //endi

              //7
              if sEouS <> '' then
                 dbx_Exec.SQL.Add(quotedstr(sEouS)+',');
              //endi

              //8
              if icuni > 0 then
                 dbx_Exec.SQL.Add(inttostr(icuni)+',');
              //endi

              //9
              if iccf > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccf)+',');
              //endi

              //10
              if icsita > 0 then
                 dbx_Exec.SQL.Add(inttostr(icsita)+',');
              //endi

              //11
              if icMar > 0 then
                 dbx_Exec.SQL.Add(inttostr(icMar)+',');
              //endi

              //12
              if icsitb > 0 then
                 dbx_Exec.SQL.Add(inttostr(icsitb)+',');
              //endi

              //13
              if icicms > 0 then
                 dbx_Exec.SQL.Add(inttostr(icicms)+',');
              //endi

              //14
              if icipi > 0 then
                 dbx_Exec.SQL.Add(inttostr(icipi)+',');
              //endi

              //15
              if iccfop > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccfop)+',');
              //endi

              // 14.04.2010

              //16
              if icpis > 0 then
                 dbx_Exec.SQL.Add(inttostr(icpis)+',');
              //endi

              //17
              if iccofins > 0 then
                 dbx_Exec.SQL.Add(inttostr(iccofins)+',');
              //endi

              //18
              if icmodbc > 0 then
                 dbx_Exec.SQL.Add(inttostr(icmodbc)+',');
              //endi

              //19
              if icirii > 0 then
                 dbx_Exec.SQL.Add(inttostr(icirii)+',');
              //endi

              //20
              if icvii > 0 then
                 dbx_Exec.SQL.Add(inttostr(icvii)+',');
              //endi

              //21
              if icoimp > 0 then
                 dbx_Exec.SQL.Add(inttostr(icoimp)+',');
              //endi

              //22
              if icmodbcst > 0 then
                 dbx_Exec.SQL.Add(inttostr(icmodbcst)+',');
              //endi

              //23
              if sActDesc <> '' then
                 dbx_Exec.SQL.Add(quotedstr(sActDesc)+',');
              //endi

              //24
              if sPrcu <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sPrcu)+',');
              //endi

              //25
              if sSubtotalC <> '' then
                 dbx_Exec.SQL.Add(decimal_is_point(sSubtotalC)+',');
              //endi

              //26
              dbx_exec.SQL.Add(quotedstr(bar_is_point(sdata))+',');

              //27
              if bimpnf then
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('T')+',');
                 end
              else
                 begin
                   dbx_Exec.SQL.Add(Quotedstr('F')+',');
                 end;
              //endi

              //28
              dbx_Exec.SQL.Add(frmdados.Cds_NF.fieldbyname('codigo').asString);

              dbx_Exec.SQL.Add(')');

              dbx_Exec.ExecSQL;

            end
         else
            begin
              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  qtde = qtde + '+decimal_is_point(sQtde)+' where (cpro = '+inttostr(icpro)+') and (codNF = '+cds_NF.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  Subtotal = Subtotal + '+decimal_is_point(sSubtotal)+' where (cpro = '+inttostr(icpro)+') and (codNF = '+cds_NF.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  SubtotalC = SubtotalC + '+decimal_is_point(sSubtotalC)+' where (cpro = '+inttostr(icpro)+') and (codNF = '+cds_NF.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  cuni = '+inttostr(icuni)+' where (cpro = '+inttostr(icpro)+') and (codNF = '+cds_NF.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if bimpnf then
                 Dbx_Exec.SQL.Add('Update nfp set  impnf = '+Quotedstr('T')+' where (cpro = '+inttostr(icpro)+') and (codNF = '+cds_NF.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  )
              else
                 Dbx_Exec.SQL.Add('Update nfp set  impnf = '+Quotedstr('F')+' where (cpro = '+inttostr(icpro)+') and (codNF = '+cds_NF.fieldbyname('codigo').asString+') and (prve = '+decimal_is_point(sPrve)+')'  );
              //endi
              Dbx_Exec.ExecSQL;




            end;
         //endi

       end
    else
       begin
         if sOpcaop = 'A' then
            begin

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  npro = '+quotedstr(edinpro.Text)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              //Dbx_Exec.Active := false;
              //Dbx_Exec.SQL.Clear;
              //Dbx_Exec.SQL.Add('Update nfp set  Especificacao = '+quotedstr(ediEspecificacao.Text)+' where (codigo = '+sCodigo+')');
              //Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  qtde = '+decimal_is_point(sQtde)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  Prve = '+decimal_is_point(sPrve)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  Subtotal = '+decimal_is_point(sSubtotal)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  EouS = '+quotedstr(sEous)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  cuni = '+inttostr(icuni)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codcf = '+inttostr(iccf)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codsita = '+inttostr(icsita)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  cMar = '+inttostr(icMar)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codsitb = '+inttostr(icsitb)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codicms = '+inttostr(icicms)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codipi = '+inttostr(icipi)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codcfop = '+inttostr(iccfop)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              // 14.04.2010

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codpis = '+inttostr(icpis)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codcofins = '+inttostr(iccofins)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codmodbc = '+inttostr(icmodbc)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codirii = '+inttostr(icirii)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codvii = '+inttostr(icvii)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codoimp = '+inttostr(icoimp)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  codmodbcst = '+inttostr(icmodbcst)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  ActDesc = '+QuotedStr(sActDesc)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  Prcu = '+decimal_is_point(sPrcu)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;

              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              Dbx_Exec.SQL.Add('Update nfp set  SubtotalC = '+decimal_is_point(sSubtotalC)+' where (codigo = '+sCodigo+')');
              Dbx_Exec.ExecSQL;


              Dbx_Exec.Active := false;
              Dbx_Exec.SQL.Clear;
              if bimpnf then
                 Dbx_Exec.SQL.Add('Update nfp set  impnf = '+Quotedstr('T')+' where (codigo = '+sCodigo+')')
              else
                 Dbx_Exec.SQL.Add('Update nfp set  impnf = '+quotedstr('F')+' where (codigo = '+sCodigo+')');
              //endii
              Dbx_Exec.ExecSQL;

            end;
         //endi
       end;
    //endi
    dbx_exec.Active := false;

    sql_dados.Commit(TD);
    
    if Cds_NF.State in [dsinsert, dsedit] then
       Cds_NF.Post;
    //endi

    totalizafrmpesqvdprod;
    cds_nfp.Refresh;

    if sOpcaop = 'I' then
       cds_nfp.Last;
    //endi

  end;
//endth
limparprod;
edicpro.Enabled := true;
dbgnfp.Enabled := true;
spdconsultaproduto.Enabled := true;

sOpcaop := 'I';
if edicpro.Enabled then
   edicpro.SetFocus
else
   ediqtde.SetFocus;
//endi

end;



procedure TfrmPesqNF.spdAlterar172Click(Sender: TObject);
begin
AlternaF;
desbloqueiadet;
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
tabela := 'NF';
Mostrar;
edicfun.SetFocus;

end;

procedure TfrmPesqNF.spdExcluir173Click(Sender: TObject);
begin
//AlternaF;
tabela := 'NF';
if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
   begin
     //with frmdados do
     //  begin
     //    dbx_exec.Active := false;
     //    dbx_exec.SQL.Clear;
     //    dbx_exec.SQL.Add('Delete from NF where codNF = '+cds_NF.fieldbyname('codigo').asString);
     //    dbx_exec.ExecSQL;
     //  end;
     //endi

     frmdados.Cds_NF.Delete;

     if frmdados.cds_NF.RecordCount = 0 then
        begin

          bloqueiabotoesP;
          bloqueiabotoesF;
          spdincluir171.Enabled := true;

        end;
     //endi

   end;
//endi
//Mostrar;
end;

procedure TfrmPesqNF.spdConsultar174Click(Sender: TObject);
begin
AlternaF;
sOpcao := 'C';
tabela  := 'NF';
Mostrar;
end;

procedure TfrmPesqNF.sPdGravarClick(Sender: TObject);
begin
tabela := 'NF';

with frmdados do
  begin

    if Cds_NF.FieldByName('ccli').asInteger = 0 then
       exit;
    //endi

    if Cds_NF.State in [dsinsert, dsedit] then
       Cds_NF.Post;
    //endi

    alternaL;
    sOpcao := '';
    Cds_NF.Refresh;

    cds_nfp.Active := false;
    dbx_nfp.Active := false;
    dbx_nfp.SQL.Clear;
    dbx_nfp.SQL.Add('Select * from nfp where codNF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) );
    dbx_nfp.Active := true;
    cds_nfp.Active := true;

    cds_nfm.Active := false;
    dbx_nfm.Active := false;
    dbx_nfm.SQL.Clear;
    dbx_nfm.SQL.Add('Select * from nfm where codNF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) );
    dbx_nfm.Active := true;
    cds_nfm.Active := true;
 
  end;
//endth

AtivaDbotoes;

dbgnf.SetFocus;

end;

procedure TfrmPesqNF.AlternaF;
begin
if frmdados.Cds_NF.recordcount > 0 then
   begin
     filtraproduto;
   end;
//endi

if frmdados.Cds_nfp.FieldByName('indtot').AsString = 'T' then
   begin
     ckbindtot.Checked := true;
   end
else
   begin
     ckbindtot.Checked := false;
   end;
//endif


dbgnf.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;
pctficha.ActivePageIndex := 0;

end;

procedure TfrmPesqNF.AlternaL;
begin
dbgnf.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;

end;


procedure TfrmPesqNF.spdcancelar2310Click(Sender: TObject);
begin
alternaL;

with frmdados do
  begin

    if Cds_NF.FieldByName('lancado').asString = 'T' then
       begin
         spdcanclan.Enabled := true;
         spdrel.Enabled := true;
         spdimpnf.Enabled := true;
       end
    else
       begin
         if cds_NF.RecordCount > 0 then
            begin
              spdcanclan.Enabled := false;
              spdrel.Enabled := true;
              spdimpnf.Enabled := true;
              spdconflan.Enabled := true;
              spdrel.Enabled := true;
              spdimpnf.Enabled := true;
            end
         else
            begin
              bloqueiabotoesP;
              bloqueiabotoesF;
              spdincluir171.Enabled := true;
            end;
         //endi
       end;
    //endi
    Cds_NF.Cancel;

    sOpcao := '';

    Cds_NF.Refresh;

    //if cds_nf.RecordCount > 0 then
    //   begin

         cds_nfp.Active := false;
         dbx_nfp.Active := false;
         dbx_nfp.SQL.Clear;
         dbx_nfp.SQL.Add('Select * from nfp where codNF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) );
         dbx_nfp.Active := true;
         cds_nfp.Active := true;

         cds_nfm.Active := false;
         dbx_nfm.Active := false;
         dbx_nfm.SQL.Clear;
         dbx_nfm.SQL.Add('Select * from nfm where codNF = '+  inttostr( cds_NF.fieldbyname('codigo').asInteger )  );
         dbx_nfm.Active := true;
         cds_nfm.Active := true;

    //   end;
    //endi

  end;
//endth


end;

procedure TfrmPesqNF.FormCreate(Sender: TObject);
begin
pctficha.ActivePage.PageIndex := 0;
end;

procedure TfrmPesqNF.edisubtotalKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqNF.spdalterarparcClick(Sender: TObject);
begin
sOpcaop                := 'A';
edicpro.Enabled        := false;
spdconsultaproduto.Enabled := false;


dbgnfp.Enabled       := false;
icpro                  := frmdados.Cds_nfp.fieldbyname('cpro').asInteger;
if  frmdados.Cds_nfp.fieldbyname('cpro').asInteger > 0 then
    edicpro.Text       := frmdados.Cds_nfp.fieldbyname('cpro').asString;
//endi
sCodigo                := frmdados.Cds_nfp.fieldbyname('codigo').asString;
edinpro.Text           := frmdados.Cds_nfp.fieldbyname('npro').asString;
//ediEspecificacao.Text  := frmdados.Cds_nfp.fieldbyname('especificacao').asString;
ediqtde.Text           := formatfloat('###,###,##0.000',frmdados.Cds_nfp.fieldbyname('qtde').asfloat);
ediqtde.Text := AlinEdNumD(ediqtde,3);

fquaa           := frmdados.Cds_nfp.fieldbyname('qtde').asfloat;

ediprve.Text           := formatfloat('###,###,##0.00',frmdados.Cds_nfp.fieldbyname('prve').asfloat);
ediprve.Text := AlinEdNumD(ediprve,2);
edisubtotal.Text       := formatfloat('###,###,##0.00',frmdados.Cds_nfp.fieldbyname('subtotal').asfloat);
edisubtotal.Text := AlinEdNumD(edisubtotal,2);
icuni                   := frmdados.Cds_nfp.fieldbyname('cuni').asInteger;

if frmdados.Cds_nfp.fieldbyname('impnf').asString = 'T' then
   begin
     ckbimpnf.Checked := true
   end
else
   begin
     ckbimpnf.Checked := false;
   end;
//endi

iccf                    := frmdados.Cds_nfp.fieldbyname('codcf').asInteger;
icsita                  := frmdados.Cds_nfp.fieldbyname('codsita').asInteger;
icMar                   := frmdados.Cds_nfp.fieldbyname('cMar').asInteger;

icsitb                  := frmdados.Cds_nfp.fieldbyname('codsitb').asInteger;
icicms                  := frmdados.Cds_nfp.fieldbyname('codicms').asInteger;
icipi                   := frmdados.Cds_nfp.fieldbyname('codipi').asInteger;
iccfop                  := frmdados.Cds_nfp.fieldbyname('codcfop').asInteger;

icpis                   := frmdados.Cds_nfp.fieldbyname('codpis').asInteger;
iccofins                := frmdados.Cds_nfp.fieldbyname('codcofins').asInteger;
icmodbc                 := frmdados.Cds_nfp.fieldbyname('codmodbc').asInteger;
icirii                  := frmdados.Cds_nfp.fieldbyname('codirii').asInteger;
icvii                   := frmdados.Cds_nfp.fieldbyname('codvii').asInteger;
icoimp                  := frmdados.Cds_nfp.fieldbyname('codoimp').asInteger;
icmodbcst                  := frmdados.Cds_nfp.fieldbyname('codmodbcst').asInteger;

sActDesc               := frmdados.Cds_nfp.fieldbyname('ActDesc').asString;
fPrcu                  := frmdados.Cds_nfp.fieldbyname('prcu').asfloat;
fSubTotalc             := frmdados.Cds_nfp.fieldbyname('Subtotalc').asfloat;


with frmdados do
  begin

    if Cds_NF.State in [dsinsert, dsedit] then
       Cds_NF.Post;
    //endi

    dbx_vProdutos.Active := false;
    dbx_vProdutos.SQL.Clear;
    dbx_vProdutos.SQL.Add('Select * from vProdutos Where Codigo = '+edicpro.Text);
    dbx_vProdutos.Active := true;
    if dbx_vProdutos.RecordCount > 0 then
       begin
         fQtdeEstq := dbx_vProdutos.fieldbyname('Qua').asfloat;
       end;
    //endi
    dbx_vProdutos.Active := false;

    dbx_Exec.Active := false;
    dbx_Exec.SQL.Clear;
    dbx_Exec.SQL.Add('Select * from unidade where codigo = '+inttostr(icuni));
    dbx_Exec.Active := true;
    cbxunid.Text := dbx_Exec.Fieldbyname('Descricao').asString;
    dbx_Exec.Active := false;
  end;
//endth
ediqtde.SetFocus;

end;

procedure TfrmPesqNF.cbxnfunKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'NF';
if key = vk_delete then
   begin
     frmdados.Cds_NF.Edit;
     frmdados.Cds_NF.FieldByName('cfun').asInteger := 0;
   end;
//endi
end;

procedure TfrmPesqNF.cbxnrepKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'NF';
if key = vk_delete then
   begin
     frmdados.Cds_NF.Edit;
     frmdados.Cds_NF.FieldByName('cRep').asInteger := 0;
   end;
//endi

end;

procedure TfrmPesqNF.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqNF.cbxclassificarKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  key := 0;

end;

procedure TfrmPesqNF.edidescChange(Sender: TObject);
begin
try
if edidesc.Text <> '' then
   frmdados.cds_NF.Locate(frmpesqnf.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
except
edidesc.Clear;
if edidesc.Enabled then
   edidesc.SetFocus;
//endi     
end;
end;

procedure TfrmPesqNF.edidescKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi

end;

procedure tfrmPesqNF.verifestq;
var
  fquat:real;
begin
fquat := strtofloat(tirapontos(ediqtde.Text));

if sOpcaop = 'A' then
   if fquaa >= fquat then
      exit;
   //endi
//endi

//if (not bVSEstq) and (rgbtipoop.ItemIndex > 0) then
//   begin
//     if (icpro > 0) then
//        begin
//          vestoqNv;
//        end;
     //endi
//   end
//else
//   begin
//     if (icpro > 0) then
//        begin
//          vestoqv;
//        end;
     //endi
//   end;
//endi

end;
procedure TfrmPesqNF.edivaldescExit(Sender: TObject);
var
  ftot, fpdesc, fvaldesc:real;
  spdesc:string;

begin

end;

procedure TfrmPesqNF.spdconsultaprodutoClick(Sender: TObject);
begin
edicpro.SetFocus;
frmpesqprodd := tfrmpesqprodd.create(self);
frmpesqprodd.showmodal;
frmpesqprodd.free;

end;

procedure TfrmPesqNF.cbxunidKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

  key := #0;
end;


procedure TfrmPesqNF.cbxunidExit(Sender: TObject);
begin
  if cbxunid.Text = '' then
     begin
       icuni :=0;
       exit;
     end;
  //endi

  with frmdados do
    begin
      dbx_Exec.Active := false;
      dbx_Exec.SQL.Clear;
      dbx_Exec.SQL.Add('Select * from unidade where Descricao = '+Quotedstr(cbxunid.text));
      dbx_Exec.Active := true;
      icuni := dbx_Exec.Fieldbyname('codigo').asInteger;
      dbx_Exec.Active := false;
    end;
  //endth

end;

procedure TfrmPesqNF.cbxntranspKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
tabela := 'NF';
if key = vk_delete then
   begin
     frmdados.Cds_NF.Edit;
     frmdados.Cds_NF.FieldByName('ctransp').asInteger := 0;
   end;
//endi

end;

procedure TfrmPesqNF.ediliquidoExit(Sender: TObject);
var fpdesc, fvaldesc, ftot:real;
begin

end;

procedure TfrmPesqNF.edisaidaKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edipdescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.cbxnaturezaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edivaldescKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ediliquidoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edidinKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ediparcKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edinproKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endif

end;

procedure TfrmPesqNF.edivolumesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ediresuniKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ediprazo_validadeKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida3KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida5KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida6KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida7KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edida8KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edinumdup1KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ckbimpnfClick(Sender: TObject);
begin
bimpnf := ckbimpnf.Checked;

end;

procedure TfrmPesqNF.dbgnfpDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);

var
  Icon: TBitmap;

begin
  Icon := TBitmap.Create;
  if (Column.FieldName = 'IMPNF') then
  begin
    with dbgnfp.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_nfp.FieldByName('IMPNF').asString = 'F') then
        Lista_Img.GetBitmap(1, Icon)
      else
        Lista_Img.GetBitmap(0, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

end;

procedure TfrmPesqNF.dbgnfpDblClick(Sender: TObject);
begin
  if frmdados.Cds_nfp.RecordCount = 0 then
     exit;
  //endi
  FrmDados.Cds_nfp.Edit;
  if FrmDados.Cds_nfp.FieldByName('IMPNF').asString = 'F' then
     FrmDados.Cds_nfp.FieldByName('IMPNF').asString := 'T'
  else
     FrmDados.Cds_nfp.FieldByName('IMPNF').asString := 'F';
  //endi
  FrmDados.Cds_nfp.post;

end;

procedure TfrmPesqNF.spdrelClick(Sender: TObject);
begin
  frmimporcp := tfrmimporcp.Create(self);
  frmimporcp.QuickRep1.Preview;
  frmimporcp.Free;
end;

procedure TfrmPesqNF.spdimpnfClick(Sender: TObject);
begin
  frmdados.totalizafrmpesqvdprod;
  
  frmfecenf := tfrmfecenf.create(self);
  frmfecenf.showmodal;
  frmfecenf.free;

  //frmdados.totalizafrmpesqvdprod;
  //frmimpnf := tfrmimpnf.create(self);
  //frmimpnf.showmodal;
  //frmimpnf.free;
end;

procedure TfrmPesqNF.cbxnfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.cbxnrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.cbxncliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
end;

procedure TfrmPesqNF.edicfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edicrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ediccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmPesqNF.limpar;
begin
  edicfun.Text := '';
  edicrep.Text := '';
  ediccli.Text := '';
end;

procedure tfrmPesqNF.mostrar;
begin
  edicfun.Text := frmdados.Cds_Funcionarios.fieldbyname('codigo').asString;
  edicrep.Text := frmdados.Cds_Representantes.fieldbyname('codigo').asString;
  ediccli.Text := frmdados.Cds_clientes.fieldbyname('codigo').asString;

   
end;


procedure TfrmPesqNF.ediccliExit(Sender: TObject);
begin
if ediccli.Text = '' then
   begin
     frmdados.Cds_NF.Edit;
     frmdados.Cds_NF.FieldByName('ccli').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Clientes.Locate('codigo',ediccli.text,[]) then
     begin
       frmdados.Cds_NF.Edit;
       frmdados.Cds_NF.FieldByName('ccli').asInteger := frmdados.Cds_Clientes.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_NF.Edit;
       frmdados.Cds_NF.FieldByName('ccli').asInteger := 0;
       ediccli.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

end;

procedure TfrmPesqNF.edicrepExit(Sender: TObject);
begin
if edicrep.Text = '' then
   begin
     frmdados.Cds_NF.Edit;
     frmdados.Cds_NF.FieldByName('cRep').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Representantes.Locate('codigo',edicrep.text,[]) then
     begin
       frmdados.Cds_NF.Edit;
       frmdados.Cds_NF.FieldByName('cRep').asInteger := frmdados.Cds_Representantes.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_NF.Edit;
       frmdados.Cds_NF.FieldByName('cRep').asInteger := 0;
       edicRep.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

end;

procedure TfrmPesqNF.edicfunExit(Sender: TObject);
begin
if edicfun.Text = '' then
   begin
     frmdados.Cds_NF.Edit;
     frmdados.Cds_NF.FieldByName('cfun').asInteger := 0;
     exit;
   end;
//endi
try
  if frmdados.cds_Funcionarios.Locate('codigo',edicfun.text,[]) then
     begin
       frmdados.Cds_NF.Edit;
       frmdados.Cds_NF.FieldByName('cfun').asInteger := frmdados.Cds_Funcionarios.fieldbyname('codigo').asInteger;
     end
  else
     begin
       frmdados.Cds_NF.Edit;
       frmdados.Cds_NF.FieldByName('cfun').asInteger := 0;
       edicfun.Text := '';
     end;
  //endi
except
 showmessage('Operação não realizada!!!');
end;

end;

procedure TfrmPesqNF.cbxcfunKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.cbxcrepKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.cbxccliKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.spdexcluirparcClick(Sender: TObject);
begin
  if dbgnfp.Focused then
     begin
       if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
          begin
            frmdados.Cds_nfp.Delete;
          end
       //endi
     end
  else
     begin
       Showmessage('Nenhum Item do Pedido não foi Selecionado');
     end;
  //endi

end;

procedure TfrmPesqNF.cbxnfantKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.spdlancaClick(Sender: TObject);
begin
frmdados.totalizafrmpesqvdprod;
frmfecped := tfrmfecped.create(self);
frmfecped.showmodal;
frmfecped.free;

end;

procedure TfrmPesqNF.spdemailClick(Sender: TObject);
begin
frmemailped := tfrmemailped.Create(self);
frmemailped.ShowModal;
frmemailped.Free;
end;

procedure TfrmPesqNF.spdprinterClick(Sender: TObject);
begin
  frmMRVD := tfrmMRVD.Create(self);
  frmMRVD.ShowModal;
  frmMRVD.Free;
end;

procedure TfrmPesqNF.bloqueiabotoesP;
begin
spdincluir171.Enabled := false;
spdalterar172.Enabled := false;
spdexcluir173.Enabled := false;
spdconsultar174.Enabled := false;
spdcodbar175.Enabled := false;
spdilustracao177.Enabled := false;
end;

procedure TfrmPesqNF.bloqueiabotoesF;
begin
spdgravar.Enabled := false;
spdcancelar2310.Enabled := false;
spdrel.Enabled := false;
spdimpnf.Enabled := false;
spdconflan.Enabled := false;
spdcanclan.Enabled := false;
spdemail.Enabled := false;
end;

procedure TfrmPesqNF.desbloqueiabotoesP;
begin
spdincluir171.Enabled := true;
spdalterar172.Enabled := true;
spdexcluir173.Enabled := true;
spdconsultar174.Enabled := true;
spdcodbar175.Enabled := true;
spdilustracao177.Enabled := true;
end;

procedure TfrmPesqNF.desbloqueiabotoesF;
begin
spdgravar.Enabled := true;
spdcancelar2310.Enabled := true;
spdrel.Enabled := true;
spdimpnf.Enabled := true;
spdconflan.Enabled := true;
spdcanclan.Enabled := true;
spdemail.Enabled := true;
spdconflan.Enabled := true;
spdlanca.Enabled := true;
end;


procedure tfrmPesqNF.AtivaDbotoes;
begin
    {


    if sOpcao = 'C' then
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;
         bloqueiadet;
         spdcancelar2310.Enabled := true;
         exit;
       end;
    //endi


    }

    if frmdados.Cds_NF.FieldByName('lancado').asString = 'T' then
       begin
         bloqueiabotoesP;
         bloqueiabotoesF;

         spdincluir171.Enabled := true;
         spdconsultar174.Enabled := true;
         spdcancelar2310.Enabled := true;
         spdcanclan.Enabled := true;
         spdrel.Enabled := true;
         spdimpnf.Enabled := true;
         spdconflan.Enabled := false;
         spdlanca.Enabled := true;
         bloqueiadet;
       end
    else
       begin


         desbloqueiadet;
         if frmdados.cds_NF.RecordCount > 0 then
            begin
              desbloqueiabotoesP;
              desbloqueiabotoesF;
            end
         else
            begin
              spdlanca.Enabled := false;
            end;
         //endi

         spdcanclan.Enabled := false;
         spdcancelar2310.Enabled := true;

       end;
    //endi


end;



procedure TfrmPesqNF.spdconflanClick(Sender: TObject);
begin

  with frmdados do
    begin

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select * from Vencimentos where c_NF = '+ inttostr( cds_NF.fieldbyname('codigo').asInteger ) );
      dbx_exec.Active := true;
      if dbx_exec.RecordCount = 0 then
         begin
           Showmessage('Valores não foram digitados para posterior lançamento');
           exit;
         end;
      //endi

      if application.MessageBox('Deseja Realmente Lançar pedido?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
         begin
           exit;
         end;
      //endi

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('T')+' where c_NF = '+cds_NF.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;

      Cds_NF.Edit;
      Cds_NF.FieldByName('originado').asString := '2'+Cds_NF.fieldbyname('tipoop').asString;
      Cds_NF.FieldByName('lancado').asString := 'T';
      Cds_NF.Post;

    end;
  //endi

end;

procedure TfrmPesqNF.spdcanclanClick(Sender: TObject);
begin
  with frmdados do
    begin

      tabela := 'NF';

      if application.MessageBox('Cancela Lançamento?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
         begin
           exit;
         end;
      //endi

      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Update Vencimentos set ehvenda = '+quotedstr('F')+' where c_NF = '+cds_NF.fieldbyname('codigo').asString);
      dbx_exec.ExecSQL;
      
      Cds_NF.Edit;
      Cds_NF.FieldByName('originado').asString := '2'+Cds_NF.fieldbyname('tipoop').asString;
      Cds_NF.FieldByName('lancado').asString := 'F';
      Cds_NF.Post;

    end;
  //endi

end;

procedure TfrmPesqNF.spdantClick(Sender: TObject);
begin


tabela := 'NF';
frmdados.Cds_NF.Prior;

if (not pnllista.Visible) and (pctficha.ActivePageIndex = 1) then
  begin
    habproduto;
  end;
//endi


filtraproduto;

end;

procedure TfrmPesqNF.spdproxClick(Sender: TObject);
begin

tabela := 'NF';
frmdados.Cds_NF.Next;

if (not pnllista.Visible) and (pctficha.ActivePageIndex = 1) then
  begin
    habproduto;
  end;
//endi

filtraproduto;


end;

procedure TfrmPesqNF.bloqueiadet;
begin
edisaida.Enabled := false;
edivolumes.Enabled := false;
ediresuni.Enabled := false;
ediprazo_validade.Enabled := false;
edida1.Enabled := false;
edida2.Enabled := false;
edida3.Enabled := false;
edida4.Enabled := false;
edida5.Enabled := false;
edida6.Enabled := false;
edida7.Enabled := false;
edida8.Enabled := false;
edicfun.Enabled := false;
edicrep.Enabled := false;
ediccli.Enabled := false;
edicpro.Enabled := false;
ediqtde.Enabled := false;
cbxunid.Enabled := false;
edinpro.Enabled := false;
ediprve.Enabled := false;
edisubtotal.Enabled := false;
ckbimpnf.Enabled := false;
spdconsultaproduto.Enabled := false;
spdalterarparc.Enabled := false;
spdsalvarprod.Enabled := false;
spdexcluirparc.Enabled := false;
cbxnfun.Enabled := false;
cbxnrep.Enabled := false;
cbxncli.Enabled := false;
cbxnfant.Enabled := false;
end;

procedure TfrmPesqNF.desbloqueiadet;
begin
edisaida.Enabled := true;
edivolumes.Enabled := true;
ediresuni.Enabled := true;
ediprazo_validade.Enabled := true;
edida1.Enabled := true;
edida2.Enabled := true;
edida3.Enabled := true;
edida4.Enabled := true;
edida5.Enabled := true;
edida6.Enabled := true;
edida7.Enabled := true;
edida8.Enabled := true;
edicfun.Enabled := true;
edicrep.Enabled := true;
ediccli.Enabled := true;
edicpro.Enabled := true;
ediqtde.Enabled := true;
cbxunid.Enabled := true;
edinpro.Enabled := true;
ediprve.Enabled := true;
edisubtotal.Enabled := true;
ckbimpnf.Enabled := true;
spdconsultaproduto.Enabled := true;
spdalterarparc.Enabled := true;
spdsalvarprod.Enabled := true;
spdexcluirparc.Enabled := true;
cbxnfun.Enabled := true;
cbxnrep.Enabled := true;
cbxncli.Enabled := true;
cbxnfant.Enabled := true;

end;

procedure tfrmPesqNF.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Venda de'
   end;
//endi
if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := True;
     lbltitdatai.Caption := 'Venda de'
   end;
//endi
end;



procedure TfrmPesqNF.cbxclassificarClick(Sender: TObject);
begin
  spdfiltrar.Click;
  habdedidesc;
end;


procedure tfrmPesqNF.habproduto;
begin
tabela := 'NF';
if frmdados.Cds_NF.State in [dsinsert, dsedit] then
   frmdados.Cds_NF.Post;
//endi


limparprod;
filtraproduto;

if edicpro.Enabled then
   edicpro.SetFocus;
//endi
end;

procedure TfrmPesqNF.dbgnfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqNF.dbgnfpKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqNF.cbxnomecliEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNF.cbxnomefunEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNF.cbxnomerepEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNF.dbgnfpEnter(Sender: TObject);
begin
tabela := 'NF';
end;

procedure TfrmPesqNF.spdcodbar175Click(Sender: TObject);
begin
frmetiqenv := tfrmetiqenv.create(self);
frmetiqenv.showmodal;
frmetiqenv.free;
end;

procedure TfrmPesqNF.tbstributacaoShow(Sender: TObject);
begin
lbldescricao.Caption := frmdados.Cds_NFP.fieldbyname('npro').asString;

ediicms.Enabled := false;
ediipi.Enabled := false;
edisita.Enabled := false;
edisitb.Enabled := false;
edicf.Enabled := false;
edicfop.Enabled := false;
edipis.Enabled := false;
edicofins.Enabled := false;
edimodbc.Enabled := false;
edimodbcst.Enabled := false;
edialiq1.Enabled := false;
edialiq2.Enabled := false;
edialiq3.Enabled := false;

if frmdados.Cds_NFP.RecordCount > 0 then
   begin
     ediicms.Enabled := true;
     ediipi.Enabled := true;
     edisita.Enabled := true;
     edisitb.Enabled := true;
     edicf.Enabled := true;
     edicfop.Enabled := true;
     edipis.Enabled := true;
     edicofins.Enabled := true;
     edimodbc.Enabled := true;
     edimodbcst.Enabled := true;
     edialiq1.Enabled := true;
     edialiq2.Enabled := true;
     edialiq3.Enabled := true;
     frmdados.Cds_NFP.Edit;
   end;
//endi



end;

procedure TfrmPesqNF.spdantpClick(Sender: TObject);
begin
frmdados.Cds_NFP.Prior;
lbldescricao.Caption := frmdados.Cds_NFP.fieldbyname('npro').asString;
frmdados.Cds_NFP.Edit;

if frmdados.Cds_nfp.FieldByName('indtot').AsString = 'T' then
   begin
     ckbindtot.Checked := true;
   end
else
   begin
     ckbindtot.Checked := false;
   end;
//endif


end;

procedure TfrmPesqNF.spdproxpClick(Sender: TObject);
begin
frmdados.Cds_NFP.next;
lbldescricao.Caption := frmdados.Cds_NFP.fieldbyname('npro').asString;
frmdados.Cds_NFP.Edit;

if frmdados.Cds_nfp.FieldByName('indtot').AsString = 'T' then
   begin
     ckbindtot.Checked := true;
   end
else
   begin
     ckbindtot.Checked := false;
   end;
//endif


end;

procedure TfrmPesqNF.spdgravartribClick(Sender: TObject);
begin
if frmdados.Cds_NFP.State in [dsinsert, dsedit] then
   frmdados.Cds_NFP.Post;
//endi
end;

procedure TfrmPesqNF.ediicmsKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.ediipiKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edisitaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edisitbKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edicfKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edicfopKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edipisKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edicofinsKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edimodbcKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edimodbcstKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edialiq1KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edialiq2KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqNF.edialiq3KeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure tfrmpesqnf.buscarprve;
begin

with frmdados do
  begin

    if cds_nf.FieldByName('ctab').AsInteger > 0 then
       begin
         cds_tabPrP.Active := false;
         dbx_tabPrp.Active := false;
         dbx_tabPrP.SQL.Clear;
         dbx_tabPrP.SQL.Add('Select * from TabPrP where (cpro = '+inttostr(icpro)+') and (ctab = '+inttostr(cds_nf.FieldByName('ctab').AsInteger)+')'   );
         dbx_tabPrP.Active := true;
         cds_tabPrP.Active := true;

         ediprve.Text := formatfloat('###,###,##0.00',cds_tabPrP.fieldbyname('prve').asfloat);
         ediprve.Text := AlinEdNumD(ediprve,2);

       end
    else
       begin

         ediprve.Text := formatfloat('###,###,##0.00',dbx_vProdutos.fieldbyname('prve').asfloat);
         ediprve.Text := AlinEdNumD(ediprve,2);

       end
    //endi

  end;
//endth

end;




procedure TfrmPesqNF.SpeedButton1Click(Sender: TObject);
begin
  frmMRnf := tfrmMRnf.Create(self);
  frmMRnf.ShowModal;
  frmMRnf.Free;
end;

end.
