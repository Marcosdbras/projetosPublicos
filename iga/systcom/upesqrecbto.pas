unit upesqrecbto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, jpeg;

type
  TfrmPesqRecbto = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    dbgrecbto: TDBGrid;
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
    lbltitdatai: TLabel;
    Label7: TLabel;
    Bevel6: TBevel;
    cbxnomecli: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    cbxnomecla: TDBLookupComboBox;
    Label10: TLabel;
    cbxnomesitrec: TDBLookupComboBox;
    spdprinter: TSpeedButton;
    Label5: TLabel;
    lbltotval: TLabel;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;
    spdConsultar174: TSpeedButton;
    spdmenurel: TSpeedButton;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    spdiconea: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    pnlficha: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    edinumnf: TDBEdit;
    Label12: TLabel;
    edidte: TDBEdit;
    Label13: TLabel;
    edidtv: TDBEdit;
    Label14: TLabel;
    edivalor: TDBEdit;
    Label16: TLabel;
    mmoobs: TDBMemo;
    cbxncli: TDBLookupComboBox;
    ediccli: TDBEdit;
    Label17: TLabel;
    edidoc: TDBEdit;
    Label18: TLabel;
    cbxncla: TDBLookupComboBox;
    cbxnagrupcod: TDBLookupComboBox;
    Label15: TLabel;
    edidescricao: TDBEdit;
    Label21: TLabel;
    cbxtipopgto: TDBLookupComboBox;
    lbltitnped: TLabel;
    lbltitnos: TLabel;
    Label27: TLabel;
    ediparc: TDBEdit;
    Panel1: TPanel;
    spdestornar: TSpeedButton;
    spdbaixar: TSpeedButton;
    Label19: TLabel;
    edicsit: TDBEdit;
    edinsit: TDBLookupComboBox;
    Label22: TLabel;
    edidtl: TDBEdit;
    Label26: TLabel;
    edidtb: TDBEdit;
    cbxntipoop: TDBLookupComboBox;
    Label28: TLabel;
    edivalliq: TDBEdit;
    Label29: TLabel;
    Label20: TLabel;
    cbxnometipopgto: TDBLookupComboBox;
    Label30: TLabel;
    cbxnometipoop: TDBLookupComboBox;
    ediccli_f: TDBEdit;
    lblnped: TDBText;
    lblnos: TDBText;
    lblparte: TDBText;
    lblpartenos: TDBText;
    lblvlrreal: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrecbtoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrecbtoEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrecbtoExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarClick(Sender: TObject);
    procedure habdedidesc;
    procedure spdprinterClick(Sender: TObject);
    procedure cbxnomecliClick(Sender: TObject);
    procedure cbxnomecliEnter(Sender: TObject);
    procedure cbxnomeclaClick(Sender: TObject);
    procedure cbxnomeclaEnter(Sender: TObject);
    procedure cbxnomecliKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomesitrecClick(Sender: TObject);
    procedure cbxnomesitrecEnter(Sender: TObject);
    procedure cbxnomeclaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomesitrecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure spdConsultar174Click(Sender: TObject);
    procedure spdmenurelClick(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure spdcancelar2310Click(Sender: TObject);
    procedure AlternaF;
    procedure AlternaL;
    procedure bloqueiabotoes;
    procedure desbloqueiabotoes;
    procedure bloqueiacampos;
    procedure desbloqueiacampos;
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure edidescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure ediccli_fKeyPress(Sender: TObject; var Key: Char);


  private
    { Private declarations }
    sClassificar:string;
    iSpdcancelar2310a, iSpdgravar, itcampo:integer;

  public
    { Public declarations }
     sCompo,sTitRel : String;
     sOpcao:String;

  end;

var
  frmPesqRecbto: TfrmPesqRecbto;

implementation

uses uGeral, uPrincipal, uDados, uMRREC;

{$R *.DFM}

procedure TfrmPesqRecbto.FormShow(Sender: TObject);
var
   vardir: String;
begin

   tabela := 'Vencimentos';

   vardir := ExtractFilePath(Application.ExeName);

   frmdados.Cds_Vencto.EnableControls;
   dbgrecbto.DataSource := frmdados.dts_vencto;


   with frmdados do
     begin

       cds_tipo_pgto.Active := false;
       with dbx_tipo_pgto do
         begin
           Active := false;
           SQL.Clear;
           SQL.Add('Select * from Tipo_Pgto');
           Active := true;
         end;
       //endth
       cds_tipo_pgto.Active := true;


       cds_clientes.Active := false;
       dbx_clientes.Active := false;
       dbx_clientes.SQL.Clear;
       dbx_clientes.SQL.Add('Select * from clientes order by nome');
       dbx_clientes.Active := true;
       cds_clientes.Active := true;

       cds_classe.Active := false;
       dbx_classe.Active := false;
       dbx_classe.SQL.Clear;
       dbx_classe.SQL.Add('Select * from classe where cclap  = '+inttostr(cds_indice.fieldbyname('tipoctaativo').asInteger)+' order by descricao');
       dbx_classe.Active := true;
       cds_classe.Active := true;

       cds_SituRec.Active := false;
       dbx_SituRec.Active := false;
       dbx_SituRec.SQL.Clear;
       dbx_SituRec.SQL.Add('Select * from SituRec order by descricao');
       dbx_SituRec.Active := true;
       cds_SituRec.Active := true;

     end;
   //endi

   cbxNomecli.ListSource := frmdados.Dts_Clientes;   //  vai ler no
   cbxNomecli.Keyfield   := 'codigo'; // o campo
   cbxNomecli.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomecli.DataField  :='codcli';  // no campo
   cbxNomecli.ListField  :='nome';    // vai exibir o campo

   cbxNomecla.ListSource := frmdados.Dts_classe;   //  vai ler no
   cbxNomecla.Keyfield   := 'codigo'; // o campo
   cbxNomecla.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomecla.DataField  :='codcla';  // no campo
   cbxNomecla.ListField  :='Descricao';    // vai exibir o campo

   cbxNomesitRec.ListSource := frmdados.Dts_SituRec ;   //  vai ler no
   cbxNomesitRec.Keyfield   := 'codigo'; // o campo
   cbxNomesitRec.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomesitRec.DataField  :='codsitRec';  // no campo
   cbxNomesitRec.ListField  :='Descricao';    // vai exibir o campo

   cbxNometipopgto.ListSource := frmdados.Dts_tipo_pgto;   //  vai ler no
   cbxNometipopgto.Keyfield   := 'codigo'; // o campo
   cbxNometipopgto.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNometipopgto.DataField  :='cod';  // no campo
   cbxNometipopgto.ListField  :='Descricao';    // vai exibir o campo

   cbxNometipoop.ListSource := frmdados.Dts_tipo_pgto;   //  vai ler no
   cbxNometipoop.Keyfield   := 'codigo'; // o campo
   cbxNometipoop.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNometipoop.DataField  :='cod1';  // no campo
   cbxNometipoop.ListField  :='Descricao';    // vai exibir o campo

   iSpdcancelar2310a := spdcancelar2310.Left;
   iSpdGravar := spdgravar.Left;
   spdiconea.Glyph := spdgravar.Glyph;

   pnlsalvarficha.Top := pnllista.Top;
   pnlsalvarficha.Left := pnllista.Left;
   dbgrecbto.Align := alclient;
   pnlficha.Align := alclient;

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Emissão');
   cbxclassificar.Items.Add('Vencimento');
   cbxclassificar.Items.Add('Liquidação');
   cbxclassificar.Items.Add('Baixa');
   cbxclassificar.Items.Add('Documento');
   cbxclassificar.Items.Add('Referência');
   cbxclassificar.Items.Add('N.o Duplicata');
   cbxclassificar.Items.Add('N.o Pedido');
   cbxclassificar.Items.Add('N.o O.S.');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqRecbto.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqRecbto.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqRecbto.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqRecbto.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqRecbto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqRecbto:=nil;
  form_ativo := '';

end;

procedure TfrmPesqRecbto.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqRecbto.dbgrecbtoKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
      frmdados.Cds_Vencto.Post;
   //endi
//endi
end;

procedure TfrmPesqRecbto.dbgrecbtoEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqRecbto.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqRecbto.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqRecbto.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros

  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc  : String;
  ftotcusto, ftotpreco:real;
  iccli, iccla, icsitRec, ictipopgto, ictipoop:integer;
begin

  with frmdados do
    begin
      Cds_Vencto.Active := false;
      Dbx_vencto.Active := false;
      cds_Venctoehvenda.DefaultExpression := quotedstr('T');
      cds_Venctodte.DefaultExpression := quotedstr(datetostr(date));
      cds_Venctocsit.DefaultExpression := '1';
      Dbx_Venctoehvenda.DefaultExpression := quotedstr('T');
      cds_venctovalliq.DefaultExpression := '0';
      cds_venctovalor.DefaultExpression := '0';
    end;
  //end;

  if cbxclassificar.Text = 'Referência' then
     begin
       sClassificar := 'Descricao';
     end;
  //endi
  if cbxclassificar.Text = 'Documento' then
     begin
       sClassificar := 'Doc';
     end;
  //endi
  if edicodigoi.Text <> '' then
     begin
       sClassificar := 'Codigo';
     end;
  //endi
  if edicodigof.Text <> '' then
     begin
       sClassificar := 'Codigo';
     end;
  //endi
  if cbxclassificar.Text = 'Emissão' then
     begin
       sClassificar := 'Dte';
     end;
  //endi
  if cbxclassificar.Text = 'Vencimento' then
     begin
       sClassificar := 'Dtv';
     end;
  //endi
  if cbxclassificar.Text = 'Liquidação' then
     begin
       sClassificar := 'Dtl';
     end;
  //endi
  if cbxclassificar.Text  = 'N.o Duplicata' then
     begin
       sClassificar := 'NumNf';
     end;
  //endi
  if cbxclassificar.text  = 'N.o Pedido' then
     begin
       sClassificar := 'nPed';
     end;
  //endi
  if cbxclassificar.text = 'N.o O.S.' then
     begin
       sClassificar := 'NOS';
     end;
  //endi
  if cbxclassificar.Text = 'Baixa' then
     begin
       sClassificar := 'Dtb';
     end;
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
  iccli := 0;
  iccla := 0;
  icsitRec := 0;
  ictipopgto := 0;
  ictipoop := 0;

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;


  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;
  iccli := frmdados.Cds_Temp.fieldbyname('codcli').asInteger;
  iccla := frmdados.Cds_Temp.fieldbyname('codcla').asInteger;
  icsitRec := frmdados.Cds_Temp.fieldbyname('codsitrec').asInteger;
  ictipopgto := frmdados.Cds_Temp.fieldbyname('cod').asInteger;
  ictipoop := frmdados.Cds_Temp.fieldbyname('cod1').asInteger;


  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Descricao' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := '( Dtv >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Vencimento de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := '( Dtl >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Liquidação de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtb' then
               begin
                 sCompo := '( Dtb >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Baixa de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'NumNf' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'nPed' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'NOS' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
          end
       else
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Descricao' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := sCompo + 'and ( Dtv >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Vencimento de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := sCompo + 'and ( Dtl >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Liquidação de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtb' then
               begin
                 sCompo := sCompo + 'and ( Dtb >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Baixa de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'NumNf' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'nPed' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'NOS' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Descricao' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := '( Dtv <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := '( Dtl <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtb' then
               begin
                 sCompo := '( Dtb <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'NumNf' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'nPed' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'NOS' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
          end
       else
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Descricao' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := sCompo + 'and ( Dtv <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := sCompo + 'and ( Dtl <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtb' then
               begin
                 sCompo := sCompo + 'and ( Dtb <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'NumNf' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'nPed' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'NOS' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
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
            sTitRel := sTitRel + ' / Código de.: ' + sCodigoI;
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
            sTitRel := sTitRel + ' / até: ' + sCodigoF;
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
  if (sClassificar <> 'Codigo') and (sClassificar <> 'Dte') and (sClassificar <> 'Dtv')
      and (sClassificar <> 'Dtl') and (sClassificar <> 'Dtb') then
     begin
        if ( sDesc <> '' ) then
           begin
             if (sCompo = '') then
                begin
                  sCompo := '( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
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


  //Bloco de filtro de codigoF
  if ( iccli > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Cliente: ' + frmdados.Cds_Clientes.fieldbyname('nome').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Clientes: ' + frmdados.Cds_Clientes.fieldbyname('nome').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro



  //Bloco de filtro de codigoF
  if ( iccla > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccla = ' + inttostr(iccla) + ')';
            sTitRel := sTitRel + ' / Classe: ' + frmdados.Cds_classe.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccla = ' + inttostr(iccla) + ')';
            sTitRel := sTitRel + ' / Classe: ' + frmdados.Cds_classe.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de codigoF
  if ( icsitRec > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( csit = ' + inttostr(icsitRec) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituRec.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( csit = ' + inttostr(icsitRec) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituRec.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoF
  if ( ictipopgto > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( c_tipo_pgto = ' + inttostr(ictipopgto) + ')';
            sTitRel := sTitRel + ' / Tipo Pgto: ' + cbxnometipopgto.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( c_tipo_pgto = ' + inttostr(ictipopgto) + ')';
            sTitRel := sTitRel + ' / Tipo Pgto: ' + cbxnometipopgto.Text;
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoF
  if ( ictipoop > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( codtipop = ' + inttostr(ictipoop) + ')';
            sTitRel := sTitRel + ' / Tipo Recbto: ' + cbxnometipoop.Text;
          end
       else
          begin
            sCompo := sCompo + 'and ( codtipop = ' + inttostr(ictipoop) + ')';
            sTitRel := sTitRel + ' / Tipo recbto: ' + cbxnometipoop.Text;
          end;
       //endif
     end;
  //endif
  // executando o filtro



  try
    with frmdados do
       begin
         Dbx_Vencto.active := false;
         Dbx_Vencto.Active := false;

         Dbx_Vencto.sql.Clear;
         Dbx_exec.SQL.Clear;

         if sCompo <> '' then
            begin
              Dbx_Vencto.sql.Add('select * from Vencimentos where '+sCompo+' order by '+sClassificar);
              Dbx_Exec.SQL.Add('Select sum(valor) as totvalor from Vencimentos where '+sCompo);
            end
         else
            begin
              Dbx_Vencto.sql.Add('select * from Vencimentos order by '+sClassificar);
              Dbx_Exec.sql.Add('Select sum(valor) as totvalor from Vencimentos');
            end;
         //endi

         Dbx_Vencto.active := true;
         Dbx_Exec.Active := true;

         if Dbx_Vencto.recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   Dbx_Vencto.active := false;
                   Dbx_Exec.Active := false;

                   Dbx_Vencto.sql.Clear;
                   Dbx_exec.SQL.Clear;

                   Dbx_Vencto.sql.Add('select * from Vencimentos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   Dbx_exec.sql.Add('Select sum(valor) as totvalor from Pagar where '+sClassificar+' like '+quotedstr('%'+sDesc+'%'));

                   Dbx_Vencto.active := true;
                   Dbx_Exec.active := true;
                 end;
              //endi
            end;
         //endi

         lbltotval.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('totvalor').asfloat);

       end;
    //endth
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_Vencto.Active := true;
      
      if Cds_Vencto.RecordCount = 0 then
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

  if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Vencto.CancelUpdates;
   end;
//endi



  //showmessage(frmdados.Dbx_Pagar.SQL.Text);
end;

procedure TfrmPesqRecbto.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqRecbto.edidescChange(Sender: TObject);
begin
if (edidesc.Text <> '') and (sclassificar <> 'Dte') and (sclassificar <> 'Dtv') and (sclassificar <> 'Dtl') and (sclassificar <> 'Dtb') then
   frmdados.cds_Vencto.Locate(frmpesqrecbto.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqRecbto.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqRecbto.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqRecbto.edidescKeyPress(Sender: TObject; var Key: Char);
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

if (sclassificar = 'nPed') or (sclassificar = 'NOS') then
   begin
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
     //endi
   end;
//endi   

end;

procedure TfrmPesqRecbto.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqRecbto.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqRecbto.dbgrecbtoExit(Sender: TObject);
begin
  if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
     frmdados.Cds_Vencto.Post;
  //endi
end;

procedure TfrmPesqRecbto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqRecbto.cbxclassificar2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmPesqRecbto.cbxclassificar2KeyPress(Sender: TObject;
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

procedure TfrmPesqRecbto.cbxclassificarClick(Sender: TObject);
begin
habdedidesc;
spdfiltrar.Click;
end;

procedure tfrmPesqRecbto.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Vencimento de'
   end;
//endi
if cbxclassificar.ItemIndex  = 2 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Liquidado de'
   end;
//endi
if cbxclassificar.ItemIndex  = 3 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Baixa de'
   end;
//endi
if cbxclassificar.ItemIndex  = 4 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 5 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 6 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 7 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 8 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi


end;


procedure TfrmPesqRecbto.spdprinterClick(Sender: TObject);
begin
//frmMRREC := tfrmMRREC.Create(self);
//frmMRREC.showmodal;
//frmMRREC.Free;
end;

procedure TfrmPesqRecbto.cbxnomecliClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRecbto.cbxnomecliEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRecbto.cbxnomeclaClick(Sender: TObject);
begin
tabela := 'temp';
end;

procedure TfrmPesqRecbto.cbxnomeclaEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRecbto.cbxnomecliKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = vk_delete then
//   frmdados.Cds_temp.edit;
//   frmdados.Cds_Temp.FieldByName('codfor').asInteger := 0;
//endi
end;

procedure TfrmPesqRecbto.cbxnomesitrecClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRecbto.cbxnomesitrecEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRecbto.cbxnomeclaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
//if key = vk_delete then
//   frmdados.Cds_temp.edit;
//   frmdados.Cds_Temp.FieldByName('codcla').asInteger := 0;
//endi

end;

procedure TfrmPesqRecbto.cbxnomesitrecKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
//if key = vk_delete then
//   frmdados.Cds_temp.edit;
//   frmdados.Cds_Temp.FieldByName('codsitrec').asInteger := 0;
//endi

end;

procedure TfrmPesqRecbto.spdIncluir171Click(Sender: TObject);
begin
if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Vencto.CancelUpdates;
   end;
//endi


sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_Vencto.Append;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi

lblvlrreal.Caption  := '0';


end;

procedure TfrmPesqRecbto.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
frmdados.habdesabilitaedi;
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_Vencto.Edit;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi   

end;

procedure TfrmPesqRecbto.spdExcluir173Click(Sender: TObject);
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

AlternaF;

end;

procedure TfrmPesqRecbto.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;

end;

procedure TfrmPesqRecbto.spdmenurelClick(Sender: TObject);
begin
frmMRREC := tfrmMRREC.Create(self);
frmMRREC.showmodal;
frmMRREC.Free;

end;

procedure TfrmPesqRecbto.sPdGravarClick(Sender: TObject);
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;

 CodigoNovo : Integer ;
 vardir, pIndex : String;
 sdescricao, sdte, sdoc, snumnf, sparte, sparc, sdtv, sdtl, sdtb, svalor, svalliq, sehvenda:string;
 iccli, iccla, inped, inos, ictipopgto, icodtipop, ic_svenda, icsit, iprazo:integer;
 fvalor, fvalliq:real;

begin
tabela := 'Vencimentos';
if sOpcao <> 'E' then
   begin

     if (frmdados.Cds_Vencto.State in [dsinsert, dsedit]) and (edidescricao.Text <> '') then
        begin

          if sOpcao = 'I' then
             begin
               //frmdados.Cds_Vencto.FieldByName('valorreal').AsFloat := frmdados.Cds_Vencto.FieldByName('valor').AsFloat;
             end;
          //endi


           if (strtoint(edicsit.Text) = 2) and
              (

                 (edidtl.Text = '') or
                 (edidtl.Text = '  /  /    ') or
                 (edidtb.Text = '')  or
                 (edidtb.Text = '  /  /    ')  or
                 ( strtofloat( tirapontos(edivalliq.Text) ) = 0 ) or
                 (cbxntipoop.Text = '')


               )
           then
               begin

                  showmessage('Data de liquidação, baixa, valor liquido e forma de recebimento precisam ser preenchidos');
                  exit;

               end;
           //endif






          if (strtofloat(tirapontos(edivalor.Text)) > strtofloat(tirapontos(edivalliq.Text)))
             and (strtoint(edicsit.Text) = 2)
             and (strtofloat(tirapontos(edivalliq.Text)) > 0 )
             and ((edidtl.Text <> '') or (edidtl.Text <> '  /  /    ') )
             and ((edidtb.Text <> '') or (edidtb.Text <> '  /  /    ') )
          then
             begin
               sdte       := edidte.Text;
               sdoc       := edidoc.Text;
               snumnf     := edinumnf.Text;
               sparte     := lblparte.Caption;
               sparc      := ediparc.Text;
               sdtv       := edidtv.Text;
               iccli      := strtoint(ediccli.Text);
               iccla      := frmdados.Cds_Vencto.fieldbyname('ccla').asInteger;
               inped      := frmdados.Cds_Vencto.fieldbyname('nped').asInteger;
               inos       := frmdados.Cds_Vencto.fieldbyname('nos').asInteger;
               ictipopgto := frmdados.Cds_Vencto.fieldbyname('c_tipo_pgto').asInteger;
               icodtipop  := frmdados.Cds_Vencto.fieldbyname('codtipop').asInteger;
               ic_svenda  := frmdados.Cds_Vencto.fieldbyname('c_svenda').asInteger;
               iprazo     := frmdados.Cds_Vencto.fieldbyname('prazo').asInteger;
               sehvenda     := frmdados.Cds_Vencto.fieldbyname('ehvenda').asString;

               fvalor     := strtofloat(tirapontos(edivalor.Text));
               fvalliq    := strtofloat(tirapontos(edivalliq.Text));
               svalor     := tirapontos(edivalor.Text);
               svalliq    := tirapontos(edivalliq.Text);

               sdtl       := edidtl.Text;
               sdtb       := edidtb.Text;
               sdescricao := edidescricao.Text;
               icsit :=  strtoint( edicsit.Text );


               //showmessage('1');

               //if sOPcao = 'A' then
               //   begin
               //     frmdados.Cds_Vencto.CancelUpdates;
               //   end;
               //endi

               //showmessage('2');

               //frmdados.Cds_Vencto.Edit;
               frmdados.Cds_Vencto.FieldByName('Valor').asfloat := frmdados.Cds_Vencto.FieldByName('Valor').asfloat - strtofloat(tirapontos(svalliq));
               frmdados.Cds_Vencto.FieldByName('Valliq').asfloat := 0;
               frmdados.Cds_Vencto.FieldByName('dtl').asString := '';
               frmdados.Cds_Vencto.FieldByName('dtb').asString := '';
               frmdados.Cds_Vencto.FieldByName('codtipop').asfloat := 0;
               frmdados.Cds_Vencto.FieldByName('csit').asInteger := 1;

               svalor :=  svalliq;

               //showmessage('3');

               with frmdados do
                 begin
                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Insert into Vencimentos(');

                   // 1
                   if (sdte <> '') or (sdte <> '  /  /    ') then
                      dbx_Exec.SQL.Add('dte, ');
                   //endi

                   // 2
                   if sdoc <> '' then
                      dbx_Exec.SQL.Add('doc, ');
                   //endi

                   // 3
                   if snumnf <> '' then
                      dbx_Exec.SQL.Add('numnf, ');
                   //endi

                   // 4
                   if sparte <> '' then
                      dbx_Exec.SQL.Add('parte, ');
                   //endi

                   // 5
                   if sParc <> '' then
                      dbx_Exec.SQL.Add('parc, ');
                   //endi

                   // 6
                   if sdtv <> '' then
                      dbx_Exec.SQL.Add('dtv, ');
                   //endi

                   // 7
                   if iccli > 0 then
                      dbx_Exec.SQL.Add('ccli, ');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add('ccla, ');
                   //endi

                   // 9
                   if inped > 0 then
                      dbx_Exec.SQL.Add('nped, ');
                   //endi

                   // 10
                   if inos > 0 then
                      dbx_Exec.SQL.Add('nos, ');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add('c_tipo_pgto, ');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add('codtipop, ');
                   //endi

                   // 13
                   //if ic_svenda > 0 then
                   //   dbx_Exec.SQL.Add('c_svenda, ');
                   //endi

                   // 14
                   if svalor <> '' then
                      dbx_Exec.SQL.Add('valor, ');
                   //endi

                   // 15
                   if svalliq <> '' then
                      dbx_Exec.SQL.Add('valliq, ');
                   //endi

                   // 16
                   dbx_Exec.SQL.Add('dtl, ');

                   // 17
                   dbx_Exec.SQL.Add('dtb, ');

                   // 18
                   dbx_Exec.SQL.Add('csit, ');

                   // 19
                   if iprazo > 0 then
                      dbx_Exec.SQL.Add('prazo, ');
                   //endi

                   // 20
                   if sehvenda <> '' then
                      dbx_Exec.SQL.Add('ehvenda, ');
                   //endi

                   // fechamento
                   dbx_Exec.SQL.Add('Descricao');

                   dbx_Exec.SQL.Add(')');

                   dbx_Exec.SQL.Add(' values (');

                   // 1
                   if (sdte <> '') or (sdte <> '  /  /    ') then
                      begin
                        sdte := bar_is_point(sdte);
                        dbx_Exec.SQL.Add( quotedstr(sdte)+',');
                      end;
                   //endi

                   // 2
                   if sdoc <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sdoc)+',');
                   //endi

                   // 3
                   if snumnf <> '' then
                      dbx_Exec.SQL.Add(quotedstr(snumnf)+',');
                   //endi

                   // 4
                   if sparte <> ''then
                       dbx_Exec.SQL.Add(Quotedstr(sparte)+',');
                   //endi

                   // 5
                   if sparc <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sparc)+',');
                   //endi

                   // 6
                   if (sDTV <> '') or (sDtv <> '  /  /    ') then
                      begin
                        sdtv := bar_is_point(sdtv);
                        dbx_Exec.SQL.Add(quotedstr(sdtv)+',');
                      end;
                   //endi

                   // 7
                   if iccli > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccli)+',');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccla)+',');
                   //endi

                   // 9
                   if inped > 0 then
                      dbx_Exec.SQL.Add(inttostr(inped)+',');
                   //endi

                   // 10
                   if inos > 0 then
                      dbx_Exec.SQL.Add(inttostr(inos)+',');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add(inttostr(ictipopgto)+',');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add(inttostr(icodtipop)+',');
                   //endi

                   // 13
                   //if ic_svenda > 0 then
                   //   dbx_Exec.SQL.Add(inttostr(ic_svenda)+',');
                   //endi

                   // 14
                   if svalor <> '' then
                      begin
                        dbx_Exec.SQL.Add(decimal_is_point(svalor)+',');
                      end;
                   //endi

                   // 15
                   if svalliq <> '' then
                      dbx_Exec.SQL.Add(decimal_is_point(svalliq)+',');
                   //endi

                   // 16
                   sdtl := bar_is_point(sdtl);
                   dbx_Exec.SQL.Add(quotedstr(sdtl)+',');

                   // 17
                   sdtb := bar_is_point(sdtb);
                   dbx_Exec.SQL.Add(quotedstr(sdtb)+',');

                   // 18
                   dbx_Exec.SQL.Add(inttostr(icsit)+',');

                   // 19
                   if iprazo > 0 then
                      dbx_Exec.SQL.Add(inttostr(iprazo)+',');
                   //endi

                   // 20
                   if sehvenda <> '' then
                      begin
                        dbx_Exec.SQL.Add(quotedstr(sehvenda)+',');
                      end;
                   //endi

                   // fechamento
                   dbx_Exec.SQL.Add(Quotedstr(sdescricao));

                   dbx_Exec.SQL.Add(')');

                   //showmessage(dbx_exec.SQL.Text);

                   dbx_Exec.ExecSQL;


                 end;
               //endi

               //frmdados.Cds_Vencto.Append;
               //frmdados.Cds_Vencto.FieldByName('descricao').asString   := sdescricao;
               //frmdados.Cds_Vencto.FieldByName('dte').asDatetime       := strtodate(sdte);
               //frmdados.Cds_Vencto.FieldByName('doc').asString         := sdoc;
               //frmdados.Cds_Vencto.FieldByName('numnf').asString       := snumnf;
               //frmdados.Cds_Vencto.FieldByName('parte').asString       := sparte;
               //frmdados.Cds_Vencto.FieldByName('parc').asString        := sparc;
               //frmdados.Cds_Vencto.FieldByName('dtv').asDateTime       := strtodate(sdtv);
               //frmdados.Cds_Vencto.FieldByName('ccli').asInteger       := iccli;
               //frmdados.Cds_Vencto.FieldByName('ccla').asInteger       := iccla;
               //frmdados.Cds_Vencto.FieldByName('nped').asInteger        := inped;
               //frmdados.Cds_Vencto.FieldByName('nos').asInteger         := inos;
               //frmdados.Cds_Vencto.FieldByName('c_tipo_pgto').asInteger := ictipopgto;
               //frmdados.Cds_Vencto.FieldByName('valor').asfloat := fvalor;
               //frmdados.Cds_Vencto.Post;

             end;
          //endi

          frmdados.Cds_Vencto.Post;

          frmdados.Cds_Vencto.Refresh;
        end
     else
        if (edidescricao.Text = '') then
           begin
             showmessage('Não foi possível salvar'+#13+'Motivo: Referência não foi preenchida');
             frmdados.Cds_Vencto.Cancel;
           end;
        //endi
     //endi
   end
else
   begin

     if application.MessageBox('Deseja realmente excluir este registro?','Confirmação',mb_yesno+mb_defbutton2) <> 6 then
         exit;
     //endi

     logTables(tabela, icusu, 'E', 'PEDIDO '+frmdados.Cds_vencto.fieldbyname('nped').AsString+'-'+frmdados.Cds_vencto.fieldbyname('parte').AsString +' CLIENTE '+frmdados.Cds_vencto.fieldbyname('ncli').AsString+' VALOR '+  formatfloat('###,###,##0.00', frmdados.Cds_vencto.fieldbyname('valor').Asfloat) ) ;

     frmdados.Cds_Vencto.Delete;
   end;
//endi


if sOpcao = 'I' then
   begin
     frmdados.Cds_Vencto.Append;
     if edidescricao.Enabled then
        edidescricao.SetFocus;
     //endi   
     exit;
   end;
//endi


alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_Vencto.RecordCount = 0 then
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

procedure TfrmPesqRecbto.spdcancelar2310Click(Sender: TObject);
begin

tabela := 'Vencimentos';
if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Vencto.CancelUpdates;
   end;
//endi
alternaL;
desbloqueiacampos;


with frmdados do
  begin

    if Cds_Vencto.RecordCount = 0 then
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

procedure TfrmPesqRecbto.AlternaF;
begin
dbgrecbto.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;
end;

procedure TfrmPesqRecbto.AlternaL;
begin
dbgrecbto.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;

procedure TfrmPesqRecbto.bloqueiacampos;
begin
pnlficha.Enabled         := false;
end;

procedure TfrmPesqRecbto.desbloqueiacampos;
begin
pnlficha.Enabled := true;
spdant.Enabled := true;
spdprox.Enabled := true;
edidesc.Enabled := true;
cbxclassificar.Enabled := true;
edicodigoi.Enabled := true;
edicodigof.Enabled := true;
spdfiltrar.Enabled := true;
spdlimpar.Enabled  := true;
end;

procedure tfrmPesqRecbto.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
  spdmenurel.Enabled := false;
end;

procedure tfrmPesqRecbto.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
  spdmenurel.Enabled := true;
end;

procedure TfrmPesqRecbto.spdantClick(Sender: TObject);
begin
tabela := 'Vencimentos';
if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Vencto.CancelUpdates;
   end;
//endi


frmdados.Cds_Vencto.Prior;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Vencto.Edit;
//endi

end;

procedure TfrmPesqRecbto.spdproxClick(Sender: TObject);
begin
tabela := 'Vencimentos';
if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Vencto.CancelUpdates;
   end;
//endi


frmdados.Cds_Vencto.Next;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Vencto.Edit;
//endi

end;

procedure TfrmPesqRecbto.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqRecbto.ediccli_fKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
