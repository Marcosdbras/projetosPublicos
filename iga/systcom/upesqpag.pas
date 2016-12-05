unit upesqpag;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, jpeg;

type
  TfrmPesqPag = class(TForm)
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
    dbgpag: TDBGrid;
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
    cbxnomefor: TDBLookupComboBox;
    Label8: TLabel;
    Label9: TLabel;
    cbxnomecla: TDBLookupComboBox;
    Label10: TLabel;
    cbxnomesitpagar: TDBLookupComboBox;
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
    Label15: TLabel;
    edidescricao: TDBEdit;
    Label16: TLabel;
    mmoobs: TDBMemo;
    cbxnfor: TDBLookupComboBox;
    edicfor: TDBEdit;
    Label17: TLabel;
    edidoc: TDBEdit;
    Label18: TLabel;
    cbxncla: TDBLookupComboBox;
    cbxnagrupcod: TDBLookupComboBox;
    Label19: TLabel;
    edicsit: TDBEdit;
    cbxnsit: TDBLookupComboBox;
    Label22: TLabel;
    edidtl: TDBEdit;
    Label26: TLabel;
    edidtb: TDBEdit;
    Label29: TLabel;
    edivalliq: TDBEdit;
    Label28: TLabel;
    cbxntipoop: TDBLookupComboBox;
    lblvlrreal: TLabel;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgpagKeyPress(Sender: TObject; var Key: Char);
    procedure dbgpagEnter(Sender: TObject);
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
    procedure dbgpagExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarClick(Sender: TObject);
    procedure habdedidesc;
    procedure spdprinterClick(Sender: TObject);
    procedure cbxnomeforClick(Sender: TObject);
    procedure cbxnomeforEnter(Sender: TObject);
    procedure cbxnomeclaClick(Sender: TObject);
    procedure cbxnomeclaEnter(Sender: TObject);
    procedure cbxnomeforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomesitpagarClick(Sender: TObject);
    procedure cbxnomesitpagarEnter(Sender: TObject);
    procedure cbxnomeclaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomesitpagarKeyDown(Sender: TObject; var Key: Word;
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
    procedure edidocExit(Sender: TObject);


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
  frmPesqPag: TfrmPesqPag;

implementation

uses uGeral, uPrincipal, uDados, urelpagar, uMRpag;

{$R *.DFM}

procedure TfrmPesqPag.FormShow(Sender: TObject);
var
   vardir: String;
begin

   tabela := 'Pagar';

   vardir := ExtractFilePath(Application.ExeName);

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
       
       cds_fornecedores.Active := false;
       dbx_fornecedores.Active := false;
       dbx_fornecedores.SQL.Clear;
       dbx_fornecedores.SQL.Add('Select * from fornecedores order by nome');
       dbx_fornecedores.Active := true;
       cds_fornecedores.Active := true;

       cds_classe.Active := false;
       dbx_classe.Active := false;
       dbx_classe.SQL.Clear;
       dbx_classe.SQL.Add('Select * from classe where cclap  = '+inttostr(cds_indice.fieldbyname('tipoctapassivo').asInteger)+' order by descricao');
       dbx_classe.Active := true;
       cds_classe.Active := true;

       cds_SituPagar.Active := false;
       dbx_SituPagar.Active := false;
       dbx_SituPagar.SQL.Clear;
       dbx_SituPagar.SQL.Add('Select * from SituPagar order by descricao');
       dbx_SituPagar.Active := true;
       cds_SituPagar.Active := true;
       
     end;
   //endi
   
   cbxNomefor.ListSource := frmdados.Dts_Fornecedores;   //  vai ler no
   cbxNomefor.Keyfield   := 'codigo'; // o campo
   cbxNomefor.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomefor.DataField  :='codfor';  // no campo
   cbxNomefor.ListField  :='nome';    // vai exibir o campo

   cbxNomecla.ListSource := frmdados.Dts_classe;   //  vai ler no
   cbxNomecla.Keyfield   := 'codigo'; // o campo
   cbxNomecla.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomecla.DataField  :='codcla';  // no campo
   cbxNomecla.ListField  :='Descricao';    // vai exibir o campo

   cbxNomesitpagar.ListSource := frmdados.Dts_SituPagar ;   //  vai ler no
   cbxNomesitpagar.Keyfield   := 'codigo'; // o campo
   cbxNomesitpagar.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomesitpagar.DataField  :='codsitpagar';  // no campo
   cbxNomesitpagar.ListField  :='Descricao';    // vai exibir o campo

   iSpdcancelar2310a := spdcancelar2310.Left;
   iSpdGravar := spdgravar.Left;
   spdiconea.Glyph := spdgravar.Glyph;

   pnlsalvarficha.Top := pnllista.Top;   
   pnlsalvarficha.Left := pnllista.Left;
   dbgpag.Align := alclient;
   pnlficha.Align := alclient;

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Emissão');
   cbxclassificar.Items.Add('Vencimento');
   cbxclassificar.Items.Add('Liquidação');
   cbxclassificar.Items.Add('Baixa');
   cbxclassificar.Items.Add('Documento');
   cbxclassificar.Items.Add('Referência');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqPag.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqPag.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqPag.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqPag.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqPag.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqpag:=nil;
  form_ativo := '';

end;

procedure TfrmPesqPag.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqPag.dbgpagKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
      frmdados.Cds_Pagar.Post;
   //endi
//endi
end;

procedure TfrmPesqPag.dbgpagEnter(Sender: TObject);
begin
tabela := 'Pagar';
end;

procedure TfrmPesqPag.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqPag.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqPag.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros

  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc  : String;
  ftotcusto, ftotpreco:real;
  icfor, iccla, icsitpagar:integer;
begin

  with frmdados do
    begin
      Cds_Pagar.Active := false;
      cds_pagarehentrega.DefaultExpression := quotedstr('T');
      cds_pagarvalor.DefaultExpression := '0';
      cds_pagarvalliq.DefaultExpression := '0';
    end;
  //end;

  if cbxclassificar.Text = 'Descrição' then
     sClassificar := 'Descricao';
  //endi
  if cbxclassificar.Text = 'Documento' then
     sClassificar := 'Doc';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
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
  icfor := 0;
  iccla := 0;
  icsitpagar := 0;


  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;


  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;
  icfor := frmdados.Cds_Temp.fieldbyname('codfor').asInteger;
  iccla := frmdados.Cds_Temp.fieldbyname('codcla').asInteger;
  icsitpagar := frmdados.Cds_Temp.fieldbyname('codsitpagar').asInteger;

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
      and (sClassificar <> 'Dtl') and (sClassificar <> 'Dtb')then
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
  if ( icfor > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cfor = ' + inttostr(icfor) + ')';
            sTitRel := sTitRel + ' / Fornecedor: ' + frmdados.Cds_Fornecedores.fieldbyname('nome').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cfor = ' + inttostr(icfor) + ')';
            sTitRel := sTitRel + ' / Fornecedor: ' + frmdados.Cds_Fornecedores.fieldbyname('nome').asString;
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
  if ( icsitpagar > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( csit = ' + inttostr(icsitpagar) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituPagar.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( csit = ' + inttostr(icsitpagar) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituPagar.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro




  try
    with frmdados do
       begin
         Dbx_Pagar.active := false;
         Dbx_Exec.Active := false;

         Dbx_Pagar.sql.Clear;
         Dbx_exec.SQL.Clear;

         if sCompo <> '' then
            begin
              Dbx_Pagar.sql.Add('select * from Pagar where '+sCompo+' order by '+sClassificar);
              Dbx_Exec.SQL.Add('Select sum(valor) as totvalor from Pagar where '+sCompo);
            end
         else
            begin
              Dbx_Pagar.sql.Add('select * from Pagar order by '+sClassificar);
              Dbx_Exec.sql.Add('Select sum(valor) as totvalor from Pagar');
            end;
         //endi

         Dbx_Pagar.active := true;
         Dbx_Exec.Active := true;

         if Dbx_Pagar.recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   Dbx_Pagar.active := false;
                   Dbx_Exec.Active := false;

                   Dbx_Pagar.sql.Clear;
                   Dbx_exec.SQL.Clear;

                   Dbx_Pagar.sql.Add('select * from Pagar where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   Dbx_exec.sql.Add('Select sum(valor) as totvalor from Pagar where '+sClassificar+' like '+quotedstr('%'+sDesc+'%'));

                   Dbx_Pagar.active := true;
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
      Cds_Pagar.Active := true;


      if Cds_Pagar.RecordCount = 0 then
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

  if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Pagar.CancelUpdates;
   end;



  //showmessage(frmdados.Dbx_Pagar.SQL.Text);
end;

procedure TfrmPesqPag.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqPag.edidescChange(Sender: TObject);
begin
if (edidesc.Text <> '') and (sclassificar <> 'Dte') and (sclassificar <> 'Dtv') and (sclassificar <> 'Dtl') and (sclassificar <> 'Dtb') then
   frmdados.cds_Pagar.Locate(frmpesqpag.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqPag.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqPag.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqPag.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqPag.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqPag.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqPag.dbgpagExit(Sender: TObject);
begin
  if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
     frmdados.Cds_Pagar.Post;
  //endi
end;

procedure TfrmPesqPag.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqPag.cbxclassificar2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmPesqPag.cbxclassificar2KeyPress(Sender: TObject;
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

procedure TfrmPesqPag.cbxclassificarClick(Sender: TObject);
begin
habdedidesc;
spdfiltrar.Click;
end;

procedure tfrmpesqpag.habdedidesc;
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
end;


procedure TfrmPesqPag.spdprinterClick(Sender: TObject);
begin
frmMRPag := tfrmMRPag.Create(self);
frmMRPag.showmodal;
frmMRPag.Free;
end;

procedure TfrmPesqPag.cbxnomeforClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqPag.cbxnomeforEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqPag.cbxnomeclaClick(Sender: TObject);
begin
tabela := 'temp';
end;

procedure TfrmPesqPag.cbxnomeclaEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqPag.cbxnomeforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codfor').asInteger := 0;
//endi
end;

procedure TfrmPesqPag.cbxnomesitpagarClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqPag.cbxnomesitpagarEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqPag.cbxnomeclaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codcla').asInteger := 0;
//endi

end;

procedure TfrmPesqPag.cbxnomesitpagarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codsitpagar').asInteger := 0;
//endi

end;

procedure TfrmPesqPag.spdIncluir171Click(Sender: TObject);
begin
if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Pagar.CancelUpdates;
   end;
//endi


sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_Pagar.Append;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi

lblvlrreal.Caption  := '0';


end;

procedure TfrmPesqPag.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
frmdados.habdesabilitaedi;
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_pagar.Edit;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi   

end;

procedure TfrmPesqPag.spdExcluir173Click(Sender: TObject);
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

procedure TfrmPesqPag.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;

end;

procedure TfrmPesqPag.spdmenurelClick(Sender: TObject);
begin
frmMRPag := tfrmMRPag.Create(self);
frmMRPag.showmodal;
frmMRPag.Free;

end;

procedure TfrmPesqPag.sPdGravarClick(Sender: TObject);
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;

 CodigoNovo : Integer ;
 vardir, pIndex : String;

 sdescricao, sdte, sdoc, snumnf, sparte, sparc, sdtv, sdtl, sdtb, svalor, svalliq, sehentrega:string;
 icfor, iccla, inped, inos, ictipopgto, icodtipop, ic_svenda, icsit, iprazo:integer;
 fvalor, fvalliq:real;

begin
tabela := 'Pagar';
if sOpcao <> 'E' then
   begin
     if (frmdados.Cds_Pagar.State in [dsinsert, dsedit]) and (edidescricao.Text <> '') then
        begin

          if sOpcao = 'I' then
             begin
               //frmdados.Cds_Pagar.FieldByName('valorreal').AsFloat := frmdados.Cds_Pagar.FieldByName('valor').AsFloat;
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
               sdtv       := edidtv.Text;
               icfor      := strtoint(edicfor.Text);
               iccla      := frmdados.Cds_pagar.fieldbyname('ccla').asInteger;
               ictipopgto := frmdados.Cds_pagar.fieldbyname('c_tipo_pgto').asInteger;
               icodtipop  := frmdados.Cds_pagar.fieldbyname('codtipop').asInteger;
               sehentrega  := frmdados.Cds_pagar.fieldbyname('ehentrega').asString;
               fvalor     := strtofloat(tirapontos(edivalor.Text));
               fvalliq    := strtofloat(tirapontos(edivalliq.Text));
               svalor     := tirapontos(edivalor.Text);
               svalliq    := tirapontos(edivalliq.Text);

               sdtl       := edidtl.Text;
               sdtb       := edidtb.Text;
               sdescricao := edidescricao.Text;
               icsit :=  strtoint( edicsit.Text );

               frmdados.Cds_pagar.FieldByName('Valor').asfloat := frmdados.Cds_pagar.FieldByName('Valor').asfloat - strtofloat(tirapontos(svalliq));
               frmdados.Cds_pagar.FieldByName('Valliq').asfloat := 0;
               frmdados.Cds_pagar.FieldByName('dtl').asString := '';
               frmdados.Cds_pagar.FieldByName('dtb').asString := '';
               frmdados.Cds_pagar.FieldByName('codtipop').asfloat := 0;
               frmdados.Cds_pagar.FieldByName('csit').asInteger := 1;

               svalor :=  svalliq;


               with frmdados do
                 begin
                   dbx_Exec.Active := false;
                   dbx_Exec.SQL.Clear;
                   dbx_Exec.SQL.Add('Insert into Pagar(');

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

                   // 6
                   if sdtv <> '' then
                      dbx_Exec.SQL.Add('dtv, ');
                   //endi

                   // 7
                   if icfor > 0 then
                      dbx_Exec.SQL.Add('cfor, ');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add('ccla, ');
                   //endi

                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add('c_tipo_pgto, ');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add('codtipop, ');
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
                   if sehentrega <> '' then
                      dbx_Exec.SQL.Add('ehentrega, ');
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


                   // 6
                   if (sDTV <> '') or (sDtv <> '  /  /    ') then
                      begin
                        sdtv := bar_is_point(sdtv);
                        dbx_Exec.SQL.Add(quotedstr(sdtv)+',');
                      end;
                   //endi

                   // 7
                   if icfor > 0 then
                      dbx_Exec.SQL.Add(inttostr(icfor)+',');
                   //endi

                   // 8
                   if iccla > 0 then
                      dbx_Exec.SQL.Add(inttostr(iccla)+',');
                   //endi


                   // 11
                   if ictipopgto > 0 then
                      dbx_Exec.SQL.Add(inttostr(ictipopgto)+',');
                   //endi

                   // 12
                   if icodtipop > 0 then
                      dbx_Exec.SQL.Add(inttostr(icodtipop)+',');
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
                   if sehentrega <> '' then
                      dbx_Exec.SQL.Add(quotedstr(sehentrega)+',');
                   //endi



                   // fechamento
                   dbx_Exec.SQL.Add(Quotedstr(sdescricao));

                   dbx_Exec.SQL.Add(')');

                   dbx_Exec.ExecSQL;


                 end;
               //endi


             end;
          //endi

          frmdados.Cds_Pagar.Post;

          frmdados.Cds_Pagar.Refresh;

        end
     else
        if (edidescricao.Text = '') then
           begin
             showmessage('Não foi possível salvar'+#13+'Motivo: Descrição não foi preenchida');
             frmdados.Cds_Pagar.Cancel;
           end;
        //endi
     //endi
   end
else
   begin

     if application.MessageBox('Deseja realmente excluir este registro?','Confirmação',mb_yesno+mb_defbutton2) <> 6 then
         exit;
     //endi

     logTables(tabela, icusu, 'E', 'DOCUMENTO '+frmdados.Cds_pagar.fieldbyname('doc').AsString+' FORNECEDOR '+frmdados.Cds_pagar.fieldbyname('nfor').AsString+' VALOR '+  formatfloat('###,###,##0.00', frmdados.Cds_pagar.fieldbyname('valor').Asfloat) ) ;


     frmdados.Cds_Pagar.Delete;
   end;
//endi

if sOpcao = 'I' then
   begin
     frmdados.Cds_Pagar.Append;
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

    if Cds_pagar.RecordCount = 0 then
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

procedure TfrmPesqPag.spdcancelar2310Click(Sender: TObject);
begin

tabela := 'Pagar';
if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
   frmdados.Cds_Pagar.CancelUpdates;
//endi
alternaL;
desbloqueiacampos;


with frmdados do
  begin

    if Cds_Pagar.RecordCount = 0 then
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

procedure TfrmPesqpag.AlternaF;
begin
dbgpag.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;
end;

procedure TfrmPesqpag.AlternaL;
begin
dbgpag.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;

procedure TfrmPesqPag.bloqueiacampos;
begin
pnlficha.Enabled         := false;
end;

procedure TfrmPesqPag.desbloqueiacampos;
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

procedure tfrmPesqPag.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
  spdmenurel.Enabled :=false;
end;

procedure tfrmPesqPag.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
  spdmenurel.Enabled := true;
end;

procedure TfrmPesqPag.spdantClick(Sender: TObject);
begin
tabela := 'Pagar';
if frmdados.Cds_pagar.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Pagar.CancelUpdates;
   end;
//endi


frmdados.Cds_Pagar.Prior;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Pagar.Edit;
//endi

end;

procedure TfrmPesqPag.spdproxClick(Sender: TObject);
begin
tabela := 'Pagar';
if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
   begin
     frmdados.Cds_Pagar.CancelUpdates;
   end;
//endi
frmdados.Cds_Pagar.Next;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Pagar.Edit;
//endi

end;

procedure TfrmPesqPag.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqPag.edidocExit(Sender: TObject);
begin
  with frmdados do
    begin
      dbx_exec.Active := false;
      dbx_exec.SQL.Clear;
      dbx_exec.SQL.Add('Select * from pagar where doc = '+quotedstr( edidoc.text ) );
      dbx_exec.Active := true;

      if dbx_exec.RecordCount > 0 then
         begin
           if application.MessageBox('Já existe um documento com esse número, deseja continuar?','Atenção',mb_YesNo + mb_DefButton2) = idNo then
              begin
                edidoc.Text := '';
                edidoc.SetFocus;
              end;
           //endi
         end;
      //endif


    end;
  //endth

end;

end.
