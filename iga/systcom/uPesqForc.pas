unit uPesqForc;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqforc = class(TForm)
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
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    imgfichadetalhe: TImageList;
    pnlsalvarficha: TPanel;
    sPdGravar: TSpeedButton;
    spdcancelar2310: TSpeedButton;
    pnllista: TPanel;
    spdIncluir171: TSpeedButton;
    spdAlterar172: TSpeedButton;
    spdExcluir173: TSpeedButton;
    spdConsultar174: TSpeedButton;
    spdcodbar175: TSpeedButton;
    spdrelatorios176: TSpeedButton;
    spdilustracao177: TSpeedButton;
    Label4: TLabel;
    pnlficha: TPanel;
    pnlcab: TPanel;
    Label9: TLabel;
    DBText1: TDBText;
    Label11: TLabel;
    edinome: TDBEdit;
    dbgfornecedores: TDBGrid;
    spdiconea: TSpeedButton;
    spdant: TSpeedButton;
    spdprox: TSpeedButton;
    pctcli: TPageControl;
    tabinf: TTabSheet;
    lbltittel: TLabel;
    lbltitemail: TLabel;
    lbltitcontato: TLabel;
    editelefones: TDBEdit;
    ediemail: TDBEdit;
    edicontato: TDBEdit;
    tabent: TTabSheet;
    lbltitendent: TLabel;
    lbltitcompent: TLabel;
    lbltitbaient: TLabel;
    lbltitcident: TLabel;
    lbltitestent: TLabel;
    lbltitcepent: TLabel;
    ediendent: TDBEdit;
    edicompent: TDBEdit;
    edibaient: TDBEdit;
    edicident: TDBEdit;
    ediestent: TDBEdit;
    edicepent: TDBEdit;
    tbsoutras: TTabSheet;
    Label5: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    DBLookupComboBox2: TDBLookupComboBox;
    Label7: TLabel;
    DBLookupComboBox3: TDBLookupComboBox;
    DBLookupComboBox4: TDBLookupComboBox;
    Label8: TLabel;
    DBLookupComboBox5: TDBLookupComboBox;
    DBLookupComboBox6: TDBLookupComboBox;
    Label10: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    edicnpj: TDBEdit;
    Label13: TLabel;
    edisite: TDBEdit;
    Label14: TLabel;
    ediie: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgfornecedoresKeyPress(Sender: TObject; var Key: Char);
    procedure dbgfornecedoresEnter(Sender: TObject);
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
    procedure dbgfornecedoresExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlternaF;
    procedure AlternaL;
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure spdConsultar174Click(Sender: TObject);
    procedure sPdGravarClick(Sender: TObject);
    procedure spdcancelar2310Click(Sender: TObject);
    procedure edidescExit(Sender: TObject);
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure edicodigoiChange(Sender: TObject);
    procedure cbxclassificarChange(Sender: TObject);
    procedure edicodigofChange(Sender: TObject);
    procedure edicodigoiEnter(Sender: TObject);
    procedure edicodigofEnter(Sender: TObject);
    procedure bloqueiabotoes;
    procedure desbloqueiabotoes;
    procedure bloqueiacampos;
    procedure desbloqueiacampos;
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure edicnpjKeyPress(Sender: TObject; var Key: Char);
    procedure edinomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure editelefonesKeyPress(Sender: TObject; var Key: Char);
    procedure ediendentKeyPress(Sender: TObject; var Key: Char);
    procedure ediendcobKeyPress(Sender: TObject; var Key: Char);
    procedure ediendcomKeyPress(Sender: TObject; var Key: Char);
    procedure dbgfornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edisiteKeyPress(Sender: TObject; var Key: Char);
    procedure spdrelatorios176Click(Sender: TObject);
    procedure spdilustracao177Click(Sender: TObject);

    procedure exportartodosfornecedores;


  private
    { Private declarations }
    sClassificar:string;
    iSpdcancelar2310a, iSpdgravar, itcampo:integer;
    sOpcao:String;

  public
    { Public declarations }
    sTitRel :string;
  end;

var
  frmPesqforc: TfrmPesqforc;

implementation

uses uGeral, uPrincipal, uDados,umrforc;

{$R *.DFM}

procedure TfrmPesqforc.FormShow(Sender: TObject);
var
   vardir: String;
begin

  iSpdcancelar2310a := spdcancelar2310.Left;
  iSpdGravar := spdgravar.Left;
  spdiconea.Glyph := spdgravar.Glyph;

  pctcli.ActivePageIndex := 0;

  pnlsalvarficha.Top := pnllista.Top;
  pnlsalvarficha.Left := pnllista.Left;
  dbgFornecedores.Align := alclient;
  pnlficha.Align := alclient;

   tabela := 'Fornecedores';

   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Nome');
   cbxclassificar.Items.Add('Código');
   cbxclassificar.Items.Add('C.N.P.J. / C.P.F.');
   cbxclassificar.Items.Add('I.E. / R.G.');
   

   with frmdados do
     begin
       cds_pais.Active := false;
       dbx_pais.Active := false;
       dbx_pais.SQL.Clear;
       dbx_pais.SQL.Add('Select * from pais');
       dbx_pais.Active := false;
       cds_pais.Active := true;

       cds_estados.Active := false;
       dbx_estados.Active := false;
       dbx_estados.SQL.Clear;
       dbx_estados.SQL.Add('Select * from estados');
       dbx_estados.Active := false;
       cds_estados.Active := true;

       cds_munic.Active := false;
       dbx_munic.Active := false;
       dbx_munic.SQL.Clear;
       dbx_munic.SQL.Add('Select * from munic');
       dbx_munic.Active := false;
       cds_munic.Active := true;


     end;
   //endth





   spdlimpar.Click;

end;

procedure TfrmPesqforc.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqforc.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqforc.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqforc.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqforc.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqforc:=nil;
  form_ativo := '';

end;

procedure TfrmPesqforc.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqforc.dbgfornecedoresKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Fornecedores.State in [dsinsert, dsedit] then
      frmdados.Cds_Fornecedores.Post;
   //endi
//endi
end;

procedure TfrmPesqforc.dbgfornecedoresEnter(Sender: TObject);
begin
tabela := 'Fornecedores';
end;

procedure TfrmPesqforc.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqforc.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqforc.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_Fornecedores.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Nome' then
     sClassificar := 'Nome';
  //endi
  if cbxclassificar.Text = 'Código' then
     sClassificar := 'Codigo';
  //endi
  if cbxclassificar.Text = 'Fantasia' then
     sClassificar := 'Fantasia';
  //endi
  if cbxclassificar.Text = 'C.N.P.J. / C.P.F.' then
     sClassificar := 'cpf';
  //endi
  if cbxclassificar.Text = 'I.E. / R.G.' then
     sClassificar := 'ie';
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

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;


  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;


  sDesc := edidesc.Text;

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
  if sClassificar <> 'Codigo' then
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

  try
    with frmdados.Dbx_Fornecedores do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from Fornecedores where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from Fornecedores order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from Fornecedores where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   active := true;
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
      Cds_Fornecedores.Active := true;

      if Cds_Fornecedores.RecordCount = 0 then
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

procedure TfrmPesqforc.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';

  cbxclassificar.Text := 'Nome';

  spdfiltrar.Click;
end;

procedure TfrmPesqforc.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Fornecedores.Locate(frmpesqforc.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqforc.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqforc.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqforc.edidescKeyPress(Sender: TObject; var Key: Char);
begin
edicodigoi.Text := '';
edicodigof.Text := '';

if sClassificar = 'Codigo' then
   If not( key in['0'..'9',#8] ) then
      begin
        beep;
        key:=#0;
        exit;
      end;
   //endi
//endi


if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi
end;

procedure TfrmPesqforc.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     frmdados.cds_Fornecedores.Locate('Codigo',ediCodigoi.text,[]);
     SelectNext(ActiveControl,True,True);
     key := #0;
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi
if itcampo > 9 then
   key := #0;
//endi

end;

procedure TfrmPesqforc.edicodigofKeyPress(Sender: TObject; var Key: Char);
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
if itcampo > 9 then
   key := #0;
//endi

end;

procedure TfrmPesqforc.dbgfornecedoresExit(Sender: TObject);
begin
  if frmdados.Cds_Fornecedores.State in [dsinsert, dsedit] then
     frmdados.Cds_Fornecedores.Post;
  //endi
end;

procedure TfrmPesqforc.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqforc.AlternaF;
begin
dbgFornecedores.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;


end;

procedure TfrmPesqforc.AlternaL;
begin
dbgFornecedores.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;


procedure TfrmPesqforc.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_Fornecedores.Append;
edicnpj.SetFocus;
end;

procedure TfrmPesqforc.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_Fornecedores.Edit;
edicnpj.SetFocus;
end;

procedure TfrmPesqforc.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
spdgravar.Glyph        := spdexcluir173.Glyph;
spdgravar.hint         := spdexcluir173.Hint;
spdgravar.Visible      := true;
spdcancelar2310.Left   := iSpdcancelar2310a;
bloqueiacampos;
spdant.Enabled         := false;
spdprox.Enabled        := false;
edidesc.Enabled        := false;
cbxclassificar.Enabled := false;
edicodigoi.Enabled     := false;
edicodigof.Enabled     := false;
spdfiltrar.Enabled     := false;
spdlimpar.Enabled      := false;
AlternaF;
end;

procedure TfrmPesqforc.bloqueiacampos;
begin
pnlcab.Enabled         := false;
tabinf.Enabled         := false;
tabent.Enabled         := false;
end;

procedure TfrmPesqforc.desbloqueiacampos;
begin
pnlcab.Enabled := true;
tabinf.Enabled := true;
tabent.Enabled := true;
spdant.Enabled := true;
spdprox.Enabled := true;
edidesc.Enabled := true;
cbxclassificar.Enabled := true;
edicodigoi.Enabled := true;
edicodigof.Enabled := true;
spdfiltrar.Enabled := true;
spdlimpar.Enabled  := true;
end;

procedure TfrmPesqforc.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;
end;

procedure TfrmPesqforc.sPdGravarClick(Sender: TObject);
begin
tabela := 'Fornecedores';
if sOpcao <> 'E' then
   begin
     if frmdados.Cds_Fornecedores.State in [dsinsert, dsedit] then
        frmdados.Cds_Fornecedores.Post;
     //endi
   end
else
   begin
     if application.MessageBox('Deseja realmente excluir este registro?','Confirmação',mb_yesno+mb_defbutton2) <> 6 then
         exit;
     //endi

     logTables(tabela, icusu, 'E', frmdados.Cds_fornecedores.fieldbyname('nome').AsString ) ;
     frmdados.Cds_Fornecedores.Delete;
   end;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_Fornecedores.RecordCount = 0 then
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

procedure TfrmPesqforc.spdcancelar2310Click(Sender: TObject);
begin
tabela := 'Fornecedores';
if frmdados.Cds_Fornecedores.State in [dsinsert, dsedit] then
   frmdados.Cds_Fornecedores.Cancel;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_Fornecedores.RecordCount = 0 then
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

procedure TfrmPesqforc.edidescExit(Sender: TObject);
begin
tabela := 'Fornecedores';
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Fornecedores.Edit;
//endi


end;

procedure TfrmPesqforc.spdantClick(Sender: TObject);
begin
tabela := 'Fornecedores';
frmdados.Cds_Fornecedores.Prior;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Fornecedores.Edit;
//endi

end;

procedure TfrmPesqforc.spdproxClick(Sender: TObject);
begin
tabela := 'Fornecedores';
frmdados.Cds_Fornecedores.Next;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Fornecedores.Edit;
//endi

end;

procedure TfrmPesqforc.edicodigoiChange(Sender: TObject);
begin
itcampo := length(edicodigoi.Text);
//if edicodigoi.Text <> '' then
//   frmdados.cds_Fornecedores.Locate('Codigo',ediCodigoi.text,[loPartialKey,loCaseInsensitive]);
//endi
//cbxclassificar.ItemIndex := 1;
end;

procedure TfrmPesqforc.cbxclassificarChange(Sender: TObject);
begin
if cbxclassificar.ItemIndex = 0 then
   begin
     sClassificar := 'Nome';
     spdfiltrar.Click;
   end;
//endi
if cbxclassificar.ItemIndex = 1 then
   begin
     sClassificar := 'Codigo';
     spdfiltrar.Click;
   end;
//endi
if cbxclassificar.ItemIndex = 2 then
   begin
     sClassificar := 'cpf';
     spdfiltrar.Click;
   end;
//endi
if cbxclassificar.ItemIndex = 3 then
   begin
     sClassificar := 'ie';
     spdfiltrar.Click;
   end;
//endi


end;

procedure TfrmPesqforc.edicodigofChange(Sender: TObject);
begin
itcampo := length(edicodigof.Text);

end;

procedure TfrmPesqforc.edicodigoiEnter(Sender: TObject);
begin
itcampo := 0;
edicodigoi.Text := '';
end;

procedure TfrmPesqforc.edicodigofEnter(Sender: TObject);
begin
itcampo := 0;
edicodigof.Text := '';

end;

procedure tfrmPesqforc.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdcodbar175.Enabled := false;
  spdrelatorios176.Enabled := false;
  spdilustracao177.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
end;

procedure tfrmPesqforc.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdcodbar175.Enabled := true;
  spdrelatorios176.Enabled := true;
  spdilustracao177.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
end;

procedure TfrmPesqforc.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.edicnpjKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.editelefonesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.ediendentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.ediendcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.ediendcomKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.dbgfornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqforc.edisiteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforc.spdrelatorios176Click(Sender: TObject);
begin
  frmMRforc:=tfrmMRforc.create(self);
 frmMRforc.showmodal;
 frmMRforc.free;
end;

procedure tfrmpesqforc.exportartodosfornecedores;
var
  f:textfile;
  vardir:string;
begin

  vardir := extractfilepath(application.ExeName);

  AssignFile(f,vardir+'Fornecedores.txt');
  rewrite(f);

  while not frmdados.Cds_Fornecedores.Eof do
    begin



      Writeln(f,'[fornecedor'+formatfloat('00000',frmdados.Cds_Fornecedores.fieldbyname('codigo').asfloat)+']');
      Writeln(f,'NomeRazao='+frmdados.Cds_Fornecedores.fieldbyname('nome').asString);
      Writeln(f,'Fantasia='+frmdados.Cds_Fornecedores.fieldbyname('fantasia').asString);
      Writeln(f,'Logradouro='+frmdados.Cds_Fornecedores.fieldbyname('endereco').asString);
      Writeln(f,'Complemento='+frmdados.Cds_Fornecedores.fieldbyname('complement').asString);
      Writeln(f,'Fone='+frmdados.Cds_Fornecedores.fieldbyname('telefones').asString);// +' '+tabfornec.fieldbyname('fax').asString);
      Writeln(f,'CEP='+frmdados.Cds_Fornecedores.fieldbyname('cep').asString);
      Writeln(f,'CNPJ='+frmdados.Cds_Fornecedores.fieldbyname('cpf').asString);
      Writeln(f,'IE='+frmdados.Cds_Fornecedores.fieldbyname('rg').asString);
      Writeln(f,'Numero=');
      Writeln(f,'Bairro=');


      frmdados.Cds_Fornecedores.Next;


    end;
  //endw

  CloseFile(f);

  showmessage('Exportação concluída');
end;




procedure TfrmPesqforc.spdilustracao177Click(Sender: TObject);
begin
exportartodosfornecedores;
end;

end.
