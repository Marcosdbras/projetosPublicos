unit uTraDental;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, WinSkinData, ExtCtrls, Menus, StdCtrls, DBCtrls,
  dbcgrids, Mask, Buttons, ExtDlgs, Grids, DBGrids, DB, ImgList, jpeg,
  clipbrd, shellapi;

type
  Tfrmtradental = class(TForm)
    skin: TSkinData;
    OpenDialog1: TOpenDialog;
    pctcontrole: TPageControl;
    MainMenu1: TMainMenu;
    pnlsuperior: TPanel;
    StatusBar1: TStatusBar;
    pnldental: TPanel;
    dbgmat_rest: TDBCtrlGrid;
    Shape1: TShape;
    imgfundo: TImage;
    imgfoto1: TImage;
    DBText1: TDBText;
    tbscadastro: TTabSheet;
    tbstratamento: TTabSheet;
    lbloutinf1: TLabel;
    cbxoutinf1: TDBComboBox;
    lbloutinf2: TLabel;
    cbxoutinf2: TDBComboBox;
    lbloutinf3: TLabel;
    cbxoutinf3: TDBComboBox;
    Label41: TLabel;
    edidtcad: TDBEdit;
    Label42: TLabel;
    EDIDTPESPCERASA: TDBEdit;
    Label7: TLabel;
    cbxntabela: TDBLookupComboBox;
    lbloutinf5: TLabel;
    cbxoutinf5: TDBComboBox;
    lbltitresponsavelent: TLabel;
    ediresponsavelent: TDBEdit;
    lbltitresponsavelrgent: TLabel;
    ediresponsavelrgent: TDBEdit;
    lbltitresponsavelcpfent: TLabel;
    ediresponsavelcpfent: TDBEdit;
    lbltittelent: TLabel;
    edidddeent: TDBEdit;
    editelent: TDBEdit;
    pnlprincipal: TPanel;
    Label38: TLabel;
    Label4: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    edicpf: TDBEdit;
    ediccli: TDBEdit;
    edincli: TDBEdit;
    edinfant: TDBEdit;
    Label39: TLabel;
    Label5: TLabel;
    lbltitnroent: TLabel;
    Label6: TLabel;
    Label10: TLabel;
    EDIIE: TDBEdit;
    ediendent: TDBEdit;
    edinroent: TDBEdit;
    edicomplent: TDBEdit;
    edibairroent: TDBEdit;
    Label8: TLabel;
    Label11: TLabel;
    Label3: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label40: TLabel;
    edicidadeent: TDBEdit;
    edicepent: TDBEdit;
    edidddfs: TDBEdit;
    editelefones: TDBEdit;
    edicontato: TDBEdit;
    EDIDATANASC: TDBEdit;
    cbxncli: TDBLookupComboBox;
    cbxnfant: TDBLookupComboBox;
    imgFoto: TImage;
    spdinsfoto: TSpeedButton;
    spdapafoto: TSpeedButton;
    opdAbrirfig: TOpenPictureDialog;
    OpenDialog2: TOpenDialog;
    OpenPictureDialog1: TOpenPictureDialog;
    lbldesc1: TLabel;
    cbxdesc1: TComboBox;
    lbldesc2: TLabel;
    cbxdesc2: TComboBox;
    lbldesc3: TLabel;
    cbxdesc3: TComboBox;
    lbldesc4: TLabel;
    cbxdesc4: TComboBox;
    lbldesc5: TLabel;
    cbxdesc5: TComboBox;
    lbldesc6: TLabel;
    cbxdesc6: TComboBox;
    lbldesc7: TLabel;
    cbxdesc7: TComboBox;
    lbldesc8: TLabel;
    cbxdesc8: TComboBox;
    lbldesc9: TLabel;
    cbxdesc9: TComboBox;
    lbldesc10: TLabel;
    cbxdesc10: TComboBox;
    lbldesc11: TLabel;
    edidesc11: TDBEdit;
    lbldesc12: TLabel;
    edidesc12: TDBEdit;
    lblid1: TLabel;
    ediid1: TEdit;
    lblid2: TLabel;
    ediid2: TEdit;
    lbloutinf4: TLabel;
    cbxoutinf4: TDBComboBox;
    lbloutinf6: TLabel;
    cbxoutinf6: TDBComboBox;
    dbgtratamento: TDBGrid;
    pnltotal: TPanel;
    tbsprocedimentos: TTabSheet;
    dbgprocedimentos: TDBGrid;
    spdnovotratamento: TSpeedButton;
    spdsalvar: TSpeedButton;
    SpeedButton3: TSpeedButton;
    tbsinfcompl: TTabSheet;
    lbldesc13: TLabel;
    edidesc13: TDBEdit;
    lbldesc14: TLabel;
    edidesc14: TDBEdit;
    lbldesc15: TLabel;
    edidesc15: TDBEdit;
    lbldesc16: TLabel;
    edidesc16: TDBEdit;
    lbldesc17: TLabel;
    edidesc17: TDBEdit;
    lbldesc18: TLabel;
    edidesc18: TDBEdit;
    lbldesc19: TLabel;
    edidesc19: TDBEdit;
    lbldesc20: TLabel;
    edidesc20: TDBEdit;
    lbldesc21: TLabel;
    edidesc21: TDBEdit;
    lbldesc22: TLabel;
    edidesc22: TDBEdit;
    lbldesc23: TLabel;
    edidesc23: TDBEdit;
    lbldesc24: TLabel;
    edidesc24: TDBEdit;
    lbldesc25: TLabel;
    edidesc25: TDBEdit;
    lbldesc26: TLabel;
    edidesc26: TDBEdit;
    lbldesc27: TLabel;
    edidesc27: TDBEdit;
    lbldesc28: TLabel;
    edidesc28: TDBEdit;
    lbldesc29: TLabel;
    edidesc29: TDBEdit;
    lbldesc30: TLabel;
    edidesc30: TDBEdit;
    lbldesc31: TLabel;
    edidesc31: TDBEdit;
    lbldesc32: TLabel;
    edidesc32: TDBEdit;
    lbldesc33: TLabel;
    edidesc33: TDBEdit;
    lbldesc34: TLabel;
    edidesc34: TDBEdit;
    lbldesc35: TLabel;
    edidesc35: TDBEdit;
    lbldesc36: TLabel;
    edidesc36: TDBEdit;
    lbldesc37: TLabel;
    edidesc37: TDBEdit;
    lbldesc38: TLabel;
    edidesc38: TDBEdit;
    spdlocalizar: TSpeedButton;
    Label9: TLabel;
    lbltotorc: TLabel;
    Label14: TLabel;
    lbltotalt: TLabel;
    tbsdebitos: TTabSheet;
    tbscreditos: TTabSheet;
    DBGrid1: TDBGrid;
    imgfichadetalhe: TImageList;
    Lista_img: TImageList;
    spdnovocliente: TSpeedButton;
    pnlinstratamento: TPanel;
    Label15: TLabel;
    cbxnomemod: TDBLookupComboBox;
    Label16: TLabel;
    ediqtdeM: TEdit;
    Label17: TLabel;
    cbxdescricao: TDBLookupComboBox;
    Label18: TLabel;
    cbxdente: TDBLookupComboBox;
    Label21: TLabel;
    ediprveM: TEdit;
    Label22: TLabel;
    edisubtotalM: TEdit;
    Label19: TLabel;
    cbxnomefun: TDBLookupComboBox;
    ckbtratar: TCheckBox;
    btnacao: TButton;
    btnCancelar: TButton;
    procedure FormShow(Sender: TObject);
    procedure spdinsfotoClick(Sender: TObject);
    procedure tbstratamentoShow(Sender: TObject);
    procedure spdnovotratamentoClick(Sender: TObject);
    procedure tbsprocedimentosShow(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure tbsdebitosShow(Sender: TObject);
    procedure tbscreditosShow(Sender: TObject);
    procedure dbgtratamentoDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure dbgtratamentoDblClick(Sender: TObject);
    procedure dbgtratamentoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgtratamentoColEnter(Sender: TObject);
    procedure mostrararq_ext_cli;
    procedure spdapafotoClick(Sender: TObject);
    procedure spdnovoclienteClick(Sender: TObject);
    procedure spdsalvarClick(Sender: TObject);
    procedure dbgmat_restDblClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
    procedure btnacaoClick(Sender: TObject);


  private
    { Private declarations }
    scpro, sActDesc, sTipoCod, sOpcaoP, sCodigo, sOPcao, sTipocodM:string;
    icuni, iccf, icsita, icsitb, icicms, icipi, icMar,  iccfop,
    icpis, iccofins, icmodbc, icirii, icvii, icoimp, icmodbcst :integer;
    fQtdeEstq:real;
    bMostrar, bMostrarM:boolean;
    fprve, fprcu, fsubtotalc, fquaa:real;
    sClassificar:string;
    bimpnf:boolean;
    ftvalor, ftvalliq, fvaltot, fvalsobra:real;
  public
    { Public declarations }
    sTitRel:string;
    scoluna:string;
    iccli:integer;
    icvenda:integer;

  end;

var
  frmtradental: Tfrmtradental;

implementation
    uses ugeral, udados, uloginutradental, ufectra, uacao;
{$R *.dfm}

procedure Tfrmtradental.FormShow(Sender: TObject);
var
  vardir:string;
  x:integer;


begin
  vardir := extractfilepath(application.ExeName);


  //skin.SkinFile := vardir+'SKIN.SKN';
  //skin.Active := true;


  //frmloginutradental := tfrmloginutradental.create(self);
  //frmloginutradental.showmodal;
  //frmloginutradental.free;


  tabela := 'sVenda';
  sOpcaoP := 'I';
  sOpcao := 'I';

  lbloutinf1.Visible := false;
  lbloutinf2.Visible := false;
  lbloutinf3.Visible := false;
  lbloutinf4.Visible := false;
  lbloutinf5.Visible := false;
  lbloutinf6.Visible := false;

  cbxoutinf1.Visible := false;
  cbxoutinf2.Visible := false;
  cbxoutinf3.Visible := false;
  cbxoutinf4.Visible := false;
  cbxoutinf5.Visible := false;
  cbxoutinf6.Visible := false;


  x:=0;

  edincli.Top := cbxncli.Top;
  edincli.left := cbxncli.left;
  edincli.Height := cbxncli.Height;
  edincli.left := cbxncli.left;
  edincli.Width  := cbxncli.width;

  edinfant.Top := cbxnfant.Top;
  edinfant.left := cbxnfant.left;
  edinfant.Height := cbxnfant.Height;
  edinfant.left := cbxnfant.left;
  edinfant.width := cbxnfant.width;

  edincli.Visible := false;
  edinfant.Visible := false;

  //ediendent.DataField := '';
  //edicomplent.DataField := '';
  //edibairroent.DataField := '';
  //edicidadeent.DataField := '';
  //edicepent.DataField := '';
  //edidddfs.DataField := '';
  //editelefones.DataField := '';
  //edicontato.DataField := '';
  //cbxoutinf1.DataField := '';
  //cbxoutinf2.DataField := '';
  //cbxoutinf3.DataField := '';
  //cbxoutinf4.DataField := '';
  //cbxoutinf5.DataField := '';
  //cbxoutinf6.DataField := '';
  //edinroent.DataField := '';

  ediendent.DataField := 'endent';
  edicomplent.DataField := 'complent';
  edibairroent.DataField := 'bairroent';
  edicidadeent.DataField := 'cidadeent';
  edicepent.DataField := 'cepent';
  editelefones.DataField := 'telefones';
  edicontato.DataField := 'contato';
  edidddfs.DataField := 'dddfs';
  cbxoutinf1.DataField := 'outinf1';
  cbxoutinf2.DataField := 'outinf2';
  cbxoutinf3.DataField := 'outinf3';
  cbxoutinf4.DataField := 'outinf4';
  cbxoutinf5.DataField := 'outinf5';
  cbxoutinf6.DataField := 'outinf6';
  edinroent.DataField := 'nroent';

  lblid1.Visible := false;
  lblid2.Visible := false;
  lbldesc1.Visible := false;
  lbldesc2.Visible := false;
  lbldesc3.Visible := false;
  lbldesc4.Visible := false;
  lbldesc5.Visible := false;
  lbldesc6.Visible := false;
  lbldesc7.Visible := false;
  lbldesc8.Visible := false;
  lbldesc9.Visible := false;
  lbldesc10.Visible := false;
  lbldesc11.Visible := false;
  lbldesc12.Visible := false;
  lbldesc13.Visible := false;
  lbldesc14.Visible := false;
  lbldesc15.Visible := false;
  lbldesc16.Visible := false;
  lbldesc17.Visible := false;
  lbldesc18.Visible := false;
  lbldesc19.Visible := false;
  lbldesc20.Visible := false;
  lbldesc21.Visible := false;
  lbldesc22.Visible := false;
  lbldesc23.Visible := false;
  lbldesc24.Visible := false;
  lbldesc25.Visible := false;
  lbldesc26.Visible := false;
  lbldesc27.Visible := false;
  lbldesc28.Visible := false;
  lbldesc29.Visible := false;
  lbldesc30.Visible := false;
  lbldesc31.Visible := false;
  lbldesc32.Visible := false;
  lbldesc33.Visible := false;
  lbldesc34.Visible := false;
  lbldesc35.Visible := false;
  lbldesc36.Visible := false;
  lbldesc37.Visible := false;
  lbldesc38.Visible := false;

  ediid1.Visible := false;
  ediid2.Visible := false;
  cbxdesc1.Visible := false;
  cbxdesc2.Visible := false;
  cbxdesc3.Visible := false;
  cbxdesc4.Visible := false;
  cbxdesc5.Visible := false;
  cbxdesc6.Visible := false;
  cbxdesc7.Visible := false;
  cbxdesc8.Visible := false;
  cbxdesc9.Visible := false;
  cbxdesc10.Visible := false;
  edidesc11.Visible := false;
  edidesc12.Visible := false;
  edidesc13.Visible := false;
  edidesc14.Visible := false;
  edidesc15.Visible := false;
  edidesc16.Visible := false;
  edidesc17.Visible := false;
  edidesc18.Visible := false;
  edidesc19.Visible := false;
  edidesc20.Visible := false;
  edidesc21.Visible := false;
  edidesc22.Visible := false;
  edidesc23.Visible := false;
  edidesc24.Visible := false;
  edidesc25.Visible := false;
  edidesc26.Visible := false;
  edidesc27.Visible := false;
  edidesc28.Visible := false;
  edidesc29.Visible := false;
  edidesc30.Visible := false;
  edidesc31.Visible := false;
  edidesc32.Visible := false;
  edidesc33.Visible := false;
  edidesc34.Visible := false;
  edidesc35.Visible := false;
  edidesc36.Visible := false;
  edidesc37.Visible := false;
  edidesc38.Visible := false;

  pnlinstratamento.Visible := false;
  pnlinstratamento.Align := alclient;

  with frmdados do
     begin

       if (cds_indice.FieldByName('outinfcli1').asString <> '') then
           begin
             lbloutinf1.Caption := cds_indice.FieldByName('outinfcli1').asString;
             lbloutinf1.Visible := true;
             cbxoutinf1.Visible := true;
           end;
       //endi

        if (cds_indice.FieldByName('outinfcli2').asString <> '') then
           begin
             lbloutinf2.Caption := cds_indice.FieldByName('outinfcli2').asString;
             lbloutinf2.Visible := true;
             cbxoutinf2.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli3').asString <> '') then
           begin
             lbloutinf3.Caption := cds_indice.FieldByName('outinfcli3').asString;
             lbloutinf3.Visible := true;
             cbxoutinf3.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli4').asString <> '') then
           begin
             lbloutinf4.Caption := cds_indice.FieldByName('outinfcli4').asString;
             lbloutinf4.Visible := true;
             cbxoutinf4.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli5').asString <> '') then
           begin
             lbloutinf5.Caption := cds_indice.FieldByName('outinfcli5').asString;
             lbloutinf5.Visible := true;
             cbxoutinf5.Visible := true;
           end;
       //endi

       if (cds_indice.FieldByName('outinfcli6').asString <> '') then
           begin
             lbloutinf6.Caption := cds_indice.FieldByName('outinfcli6').asString;
             lbloutinf6.Visible := true;
             cbxoutinf6.Visible := true;
           end;
       //endi

     end;
   //endi

   with frmdados do
     begin

       cds_svenda.Active := false;
       dbx_svenda.Active := false;
       dbx_svenda.SQL.Clear;
       dbx_svenda.SQL.Add('Select * from svenda where codigo = '+inttostr(icvenda));
       dbx_svenda.Active := true;
       cds_svenda.Active := true;

       Cds_Temp.Active := false;
       Cds_Tempcod4.DefaultExpression  := '1';
       Dbx_Temp.Active := false;
       Dbx_Temp.SQL.Clear;
       Dbx_Temp.SQL.Add('Select * from Temp order by codigo');
       Dbx_Temp.Active := true;
       Cds_Temp.Active := true;

       Cds_Mat_Restaurar.Active := false;
       Dbx_Mat_Restaurar.Active := false;
       Dbx_Mat_Restaurar.SQL.Clear;
       Dbx_Mat_Restaurar.SQL.Add('Select * from Mat_Restaurar order by codigo');
       Dbx_Mat_Restaurar.Active := true;
       Cds_Mat_Restaurar.Active := true;

       Cds_Funcionarios.Active := false;
       Dbx_Funcionarios.Active := false;
       Dbx_Funcionarios.SQL.Clear;
       Dbx_Funcionarios.SQL.Add('Select * from Funcionarios order by nome');
       Dbx_Funcionarios.Active := true;
       Cds_Funcionarios.Active := true;

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

       cds_modulo.Active := false;
       dbx_modulo.Active := false;
       dbx_modulo.SQL.Clear;
       dbx_modulo.SQL.Add('select * from modulo order by codigo');
       dbx_modulo.Active := true;
       cds_modulo.Active := true;

       cds_cmobra.Active := false;
       dbx_cmobra.Active := false;
       dbx_cmobra.SQL.Clear;
       dbx_cmobra.SQL.Add('select * from cmobra order by descr');
       dbx_cmobra.Active := true;
       cds_cmobra.Active := true;

       cds_tipotab.Active := false;
       dbx_tipotab.Active := false;
       dbx_tipotab.SQL.Clear;
       dbx_tipotab.SQL.Add('select * from tipotab order by descricao');
       dbx_tipotab.Active := true;
       cds_tipotab.Active := true;

       tabela := 'Temp';

       cds_temp.Edit;
       cds_tempcod4.Value := 1;
       
       Tabela := 'sVenda';

     end;
   //endth


   if not edidesc13.Visible then
      tbsinfcompl.TabVisible := false
   else
      tbsinfcompl.TabVisible := true;
   //endi

   frmdados.cds_mat_restaurar.First;

   tabela := 'Temp';
   frmdados.cds_temp.Edit;
   frmdados.cds_temp.FieldByName('cod10').asInteger := frmdados.cds_mat_restaurar.fieldbyname('codigo').asInteger;

   tabela := 'sVenda';

end;

procedure Tfrmtradental.spdinsfotoClick(Sender: TObject);
begin

Skin.SkinFile:= '';
Skin.Active := TRUE;
if opdAbrirfig.Execute then
   begin
     if frmdados.Cds_Clientes.RecordCount > 0 then
        begin
          frmdados.cds_clientes.Edit;
          frmdados.cds_clientesfoto.LoadFromFile(opdabrirfig.FileName);
          frmdados.cds_clientesfilename.AsString := extractfilename(opdabrirfig.FileName);
          frmdados.Cds_Clientes.post;
          mostrararq_ext_cli;
        end;
     //endi
   end;
//endi
Skin.SkinFile:=Skin.SkinStore;
Skin.Active := TRUE;

end;

procedure Tfrmtradental.tbstratamentoShow(Sender: TObject);
begin

with frmdados do
  begin

    tabela := 'sVenda';

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi

    tabela := 'DMOBRA';

    cds_cmobra.Active := false;
    dbx_cmobra.Active := false;
    dbx_cmobra.SQL.Clear;
    if cbxntabela.Text <> '' then
       dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+' ) and (ctipotab = '+inttostr( cds_clientes.fieldbyname('ctipotab').asInteger)+')' )
    else
       dbx_cmobra.SQL.Add('Select * from cmobra where ( cmod = '+inttostr(cds_modulo.fieldbyname('codigo').asInteger)+')' );
    //endi
    dbx_cmobra.Active := true;
    cds_cmobra.Active := true;

    cds_dMobra.Active := false;
    cds_dMobracodsvenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
    dbx_dMobra.Active := false;
    dbx_dMobra.SQL.Clear;
    dbx_dMobra.SQL.Add('Select * from dMobra where ( codsvenda = '+ inttostr( cds_sVenda.fieldbyname('codigo').asInteger ) +' )'   );
    dbx_dMobra.Active := true;
    cds_dMobra.Active := true;

    totalizafrmpesqvdprod;

  end;
//endi

end;

procedure Tfrmtradental.spdnovotratamentoClick(Sender: TObject);
begin
tabela := 'sVenda';
frmdados.Cds_sVenda.Append;
frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_clientes.fieldbyname('codigo').asInteger;

end;

procedure Tfrmtradental.tbsprocedimentosShow(Sender: TObject);
begin



with frmdados do
  begin

    tabela := 'sVenda';

    if Cds_svenda.State in [dsinsert, dsedit] then
       Cds_svenda.Post;
    //endi


    tabela := 'procedimentos';

    cds_procedimentos.Active := false;
    cds_procedimentoscsvenda.DefaultExpression := inttostr(cds_svenda.fieldbyname('codigo').asInteger);
    cds_procedimentosdata.DefaultExpression := quotedstr(datetostr(date));
    dbx_procedimentos.Active := false;
    dbx_procedimentos.SQL.Clear;
    dbx_procedimentos.SQL.Add('select * from procedimentos where csvenda = '+inttostr(cds_svenda.fieldbyname('codigo').asInteger) );
    dbx_procedimentos.Active := true;
    cds_procedimentos.Active := true;

    cds_Mat_Rest_ID.Active := false;
    dbx_Mat_Rest_ID.Active := false;
    dbx_Mat_Rest_ID.SQL.Clear;
    dbx_Mat_Rest_ID.SQL.Add('select m.id, m.codigo from Mat_restaurar m inner join matrep p on m.codigo = p.codmat_restaurar where codsvenda = '+ inttostr(cds_svenda.fieldbyname('codigo').asInteger) +' order by m.codigo');
    dbx_Mat_Rest_ID.Active := true;
    cds_Mat_Rest_ID.Active := true;


  end;
//endi


end;

procedure Tfrmtradental.SpeedButton3Click(Sender: TObject);
begin
frmfectra := tfrmfectra.create(self);
frmfectra.showmodal;
frmfectra.free;

end;

procedure Tfrmtradental.tbsdebitosShow(Sender: TObject);
begin
  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';

end;

procedure Tfrmtradental.tbscreditosShow(Sender: TObject);
begin
  with frmdados do
    begin

      cds_vencto.Active := false;
      cds_venctoehvenda.DefaultExpression := quotedstr('F');
      cds_venctoc_svenda.DefaultExpression := cds_sVenda.fieldbyname('codigo').asString;
      cds_venctodescricao.DefaultExpression := QuotedStr('Parcela Tratamento');
      cds_venctooriginado.DefaultExpression := '4'+frmdados.Cds_sVenda.fieldbyname('tipoop').asString;
      cds_venctoccli.DefaultExpression := inttostr(frmdados.Cds_sVenda.fieldbyname('ccli').asInteger);
      cds_venctoc_tipo_pgto.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger);
      cds_venctocsit.DefaultExpression := inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger);
      if cds_sVenda.fieldbyname('datacad').asString <> '' then
         cds_venctodte.DefaultExpression := quotedstr(cds_sVenda.fieldbyname('datacad').asString);
      //endi
      dbx_vencto.Active := false;
      dbx_vencto.SQL.Clear;
      dbx_vencto.SQL.Add('Select * from Vencimentos where (c_svenda = '+ inttostr( cds_svenda.fieldbyname('codigo').asInteger ) +') and (csit = '+ inttostr(frmdados.Cds_Indice.fieldbyname('csitr1').asInteger)+')'  );
      dbx_vencto.Active := true;
      cds_vencto.Active := true;

    end;
  //endth

  tabela := 'Vencimentos';

end;

procedure Tfrmtradental.dbgtratamentoDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;
  f:TextFile; Linha:String;
  bAut :boolean;

begin

  bAut := false;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'SELEC') then
     begin

       with dbgtratamento.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if frmdados.Cds_dmobra.FieldByName('selec').asString = 'T'  then
            Lista_Img.GetBitmap(0, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;




     end;
  //endi

end;

procedure Tfrmtradental.dbgtratamentoDblClick(Sender: TObject);
begin
  if frmdados.Cds_dmobra.RecordCount = 0 then
     exit;
  //endi
  FrmDados.Cds_dmobra.Edit;
  if FrmDados.Cds_dmobra.FieldByName('SELEC').asString = 'F' then
     FrmDados.Cds_dmobra.FieldByName('SELEC').asString := 'T'
  else
     FrmDados.Cds_dmobra.FieldByName('SELEC').asString := 'F';
  //endi
  FrmDados.Cds_dmobra.post;

end;

procedure Tfrmtradental.dbgtratamentoKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure Tfrmtradental.dbgtratamentoColEnter(Sender: TObject);
begin
//if (dbgtratamento.SelectedField = frmdados.cds_dmobraselec )  then
//    dbgtratamento.Options := dbgtratamento.Options - [dgEditing]
//  else
//    dbgtratamento.Options := dbgtratamento.Options + [dgEditing];
//endi

end;

procedure tfrmtradental.mostrararq_ext_cli;
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

      if cds_clientesfoto.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_clientesfilename.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_clientesfilename.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_clientes.CreateBlobStream(cds_clientesfoto, bmread);
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
           temppath := temppath + '\'+cds_clientesfoto.AsString;

           //Grava bloco no arquivo temporário
           cds_clientesfoto.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


   //
   end;

end;





procedure Tfrmtradental.spdapafotoClick(Sender: TObject);
begin
  frmdados.Cds_clientes.Edit;
  frmdados.cds_clientesfoto.AsVariant := '';
  mostrararq_ext_cli;

end;

procedure Tfrmtradental.spdnovoclienteClick(Sender: TObject);
begin
tabela := 'Clientes';

edincli.Visible := true;
edinfant.Visible := true;

cbxncli.Visible := false;
cbxnfant.Visible := false;

frmdados.Cds_Clientes.Append;

ediccli.DataField := '';

end;

procedure Tfrmtradental.spdsalvarClick(Sender: TObject);
begin
tabela := 'Clientes';
if frmdados.Cds_Clientes.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Clientes.Post;
   end;
//endi

tabela := 'sVenda';
frmdados.Cds_sVenda.Edit;
frmdados.Cds_sVenda.FieldByName('ccli').asInteger := frmdados.Cds_clientes.fieldbyname('codigo').asInteger;

if frmdados.Cds_sVenda.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_sVenda.Post;
   end;
//endi


edincli.Visible := false;
edinfant.Visible := false;

cbxncli.Visible := true;
cbxnfant.Visible := true;

ediccli.DataField := 'ccli';

end;

procedure Tfrmtradental.dbgmat_restDblClick(Sender: TObject);
begin
tabela := 'Temp';
frmdados.cds_temp.Edit;
frmdados.cds_temp.FieldByName('cod6').asInteger := frmdados.cds_mat_restaurar.fieldbyname('codigo').asInteger;

ediqtdem.Text := '1';
ediprvem.Text := '0,00';
edisubtotalm.Text := '0,00';

btnacao.Caption := '&Inserir';

with frmdados do
   begin

     cbxNomeMod.ListSource := dts_Modulo;   //  vai ler no
     cbxNomeMod.Keyfield   := 'codigo'; // o campo
     cbxNomeMod.DataSource := dts_Temp;  // vai gravar no
     cbxNomeMod.DataField  :='cod4';  // no campo
     cbxNomeMod.ListField  :='descricao';    // vai exibir o campo

     cbxdescricao.ListSource := dts_cmobra;   //  vai ler no
     cbxdescricao.Keyfield   := 'codigo'; // o campo
     cbxdescricao.DataSource := dts_Temp;  // vai gravar no
     cbxdescricao.DataField  :='cod5';  // no campo
     cbxdescricao.ListField  :='descr';    // vai exibir o campo

     cbxdente.ListSource := dts_mat_restaurar;   //  vai ler no
     cbxdente.Keyfield   := 'codigo'; // o campo
     cbxdente.DataSource := dts_Temp;  // vai gravar no
     cbxdente.DataField  :='cod6';  // no campo
     cbxdente.ListField  :='ID';    // vai exibir o campo

     cbxnomefun.ListSource := dst_funcionarios;   //  vai ler no
     cbxnomefun.Keyfield   := 'codigo'; // o campo
     cbxnomefun.DataSource := dts_Temp;  // vai gravar no
     cbxnomefun.DataField  :='cod7';  // no campo
     cbxnomefun.ListField  :='nome';    // vai exibir o campo

   end;
//endth



pnlinstratamento.Visible := true;

cbxnomemod.SetFocus; 


//frmacao := tfrmacao.Create(self);
//frmacao.ShowModal;
//frmacao.Free;

end;

procedure Tfrmtradental.btnCancelarClick(Sender: TObject);
begin
pnlinstratamento.Visible := false;
end;

procedure Tfrmtradental.btnacaoClick(Sender: TObject);
var
  sprveM, sQtdeM, sSubtotalM, sSubtotalcM, sEouS, sPrcuM, sData, sPcomM, sVcomM, sCfunM, scmodM,
  sCnproM, sCmatrepM:string;
  icodigo, itotreg:integer;
  svalsobra:string;
begin
  //if cbxdescricao.Text = '' then
  //   exit;
  //endi

  tabela := 'DMOBRA';

  sData := datetostr(date);
  sPrveM := tirapontos(trim(ediprveM.Text));
  sQtdeM := tirapontos(trim(ediqtdeM.Text));
  sSubtotalM := tirapontos(trim(edisubtotalM.Text));

  sCmodM := frmdados.Cds_temp.fieldbyname('cod4').asString;
  sCnproM := frmdados.Cds_temp.fieldbyname('cod5').asString;
  sCmatrepM := frmdados.Cds_temp.fieldbyname('cod6').asString;
  sCfunM := frmdados.Cds_temp.fieldbyname('cod7').asString;

  //if frmtradental.dbgmat_rest.Focused then
  //   begin
       //Inserir

       with frmdados do
         begin

           dbx_Exec.Active := false;
           dbx_Exec.SQL.Clear;
           dbx_Exec.SQL.Add('Insert into dmobra(');

           if sCnproM <> '' then
              dbx_Exec.SQL.Add('cdesc, ');
           //endi

           if cbxdescricao.Text <> '' then
              dbx_Exec.SQL.Add('ndesc, ');
           //endi

           if sQtdeM <> '' then
              dbx_Exec.SQL.Add('qtde, ');
           //endi

           if sPrveM <> '' then
              dbx_Exec.SQL.Add('valor, ');
           //endi

           if sSubtotalM <> '' then
              dbx_Exec.SQL.Add('subtotal, ');
           //endi

           if sPcomM <> '' then
              dbx_Exec.SQL.Add('pcom, ');
           //endi

           if sVcomM <> '' then
              dbx_Exec.SQL.Add('vcom, ');
           //endi

           if sCfunM <> '' then
              dbx_Exec.SQL.Add('cfun, ');
           //endi

           if sCmodM <> '' then
              dbx_Exec.SQL.Add('cmod, ');
           //endi

           if sCmatrepM <> '' then
              dbx_Exec.SQL.Add('codmat_restaurar, ');
           //endi

           dbx_Exec.SQL.Add('codsvenda');

           dbx_Exec.SQL.Add(')');

           dbx_Exec.SQL.Add(' values (');

           if sCnproM <> '' then
              dbx_Exec.SQL.Add(sCnproM+',');
           //endi

           if cbxdescricao.Text <> '' then
              dbx_Exec.SQL.Add(quotedstr(cbxdescricao.Text)+',');
           //endi

           if sQtdeM <> '' then
              dbx_Exec.SQL.Add(decimal_is_pointf(sQtdeM)+',');
           //endi

           if sPrveM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sPrveM)+',');
           //endi

           if sSubtotalM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sSubtotalM)+',');
            //endi

           if sPcomM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sPcomM)+',');
           //endi

           if sVcomM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sVcomM)+',');
           //endi

           if sCfunM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sCfunM)+',');
           //endi

           if sCmodM <> '' then
              dbx_Exec.SQL.Add(decimal_is_point(sCmodM)+',');
           //endi

           if sCmatrepM <> ''then
              dbx_Exec.SQL.Add(sCmatrepM+',');
           //endi

           dbx_Exec.SQL.Add(frmdados.Cds_sVenda.fieldbyname('codigo').asString);

           dbx_Exec.SQL.Add(')');

           dbx_Exec.ExecSQL;

           cds_dmobra.Refresh;


         end;
       //endth


  //   end
  //else
  //   begin
       //Alterar'
  //   end;
  //endi

  pnlinstratamento.Visible := false;


end;

end.
