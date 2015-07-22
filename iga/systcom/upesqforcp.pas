unit upesqforcp;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqforcp = class(TForm)
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

  private
    { Private declarations }
    sClassificar:string;
    iSpdcancelar2310a, iSpdgravar, itcampo:integer;
    sOpcao:String;

  public
    { Public declarations }
  end;

var
  frmPesqforcp: TfrmPesqforcp;

implementation

uses uGeral, uDados;

{$R *.DFM}

procedure TfrmPesqforcp.FormShow(Sender: TObject);
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

procedure TfrmPesqforcp.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqforcp.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqforcp.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqforcp.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqforcp.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:=caFree;
  frmPesqforcp:=nil;
  form_ativo := '';

end;

procedure TfrmPesqforcp.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqforcp.dbgfornecedoresKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Fornecedores.State in [dsinsert, dsedit] then
      frmdados.Cds_Fornecedores.Post;
   //endi
//endi
end;

procedure TfrmPesqforcp.dbgfornecedoresEnter(Sender: TObject);
begin
tabela := 'Fornecedores';
end;

procedure TfrmPesqforcp.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqforcp.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqforcp.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
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

procedure TfrmPesqforcp.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';

  cbxclassificar.Text := 'Nome';

  spdfiltrar.Click;
end;

procedure TfrmPesqforcp.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Fornecedores.Locate(frmpesqforcp.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqforcp.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqforcp.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqforcp.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqforcp.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqforcp.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqforcp.dbgfornecedoresExit(Sender: TObject);
begin
  if frmdados.Cds_Fornecedores.State in [dsinsert, dsedit] then
     frmdados.Cds_Fornecedores.Post;
  //endi
end;

procedure TfrmPesqforcp.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqforcp.AlternaF;
begin
dbgFornecedores.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;


end;

procedure TfrmPesqforcp.AlternaL;
begin
dbgFornecedores.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;


procedure TfrmPesqforcp.spdIncluir171Click(Sender: TObject);
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

procedure TfrmPesqforcp.spdAlterar172Click(Sender: TObject);
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

procedure TfrmPesqforcp.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
spdgravar.Glyph        := spdexcluir173.Glyph;
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

procedure TfrmPesqforcp.bloqueiacampos;
begin
pnlcab.Enabled         := false;
tabinf.Enabled         := false;
tabent.Enabled         := false;
end;

procedure TfrmPesqforcp.desbloqueiacampos;
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

procedure TfrmPesqforcp.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;
end;

procedure TfrmPesqforcp.sPdGravarClick(Sender: TObject);
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

procedure TfrmPesqforcp.spdcancelar2310Click(Sender: TObject);
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

procedure TfrmPesqforcp.edidescExit(Sender: TObject);
begin
tabela := 'Fornecedores';
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Fornecedores.Edit;
//endi


end;

procedure TfrmPesqforcp.spdantClick(Sender: TObject);
begin
tabela := 'Fornecedores';
frmdados.Cds_Fornecedores.Prior;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Fornecedores.Edit;
//endi

end;

procedure TfrmPesqforcp.spdproxClick(Sender: TObject);
begin
tabela := 'Fornecedores';
frmdados.Cds_Fornecedores.Next;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_Fornecedores.Edit;
//endi

end;

procedure TfrmPesqforcp.edicodigoiChange(Sender: TObject);
begin
itcampo := length(edicodigoi.Text);
//if edicodigoi.Text <> '' then
//   frmdados.cds_Fornecedores.Locate('Codigo',ediCodigoi.text,[loPartialKey,loCaseInsensitive]);
//endi
//cbxclassificar.ItemIndex := 1;
end;

procedure TfrmPesqforcp.cbxclassificarChange(Sender: TObject);
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
     sClassificar := 'Fantasia';
     spdfiltrar.Click;
   end;
//endi


end;

procedure TfrmPesqforcp.edicodigofChange(Sender: TObject);
begin
itcampo := length(edicodigof.Text);

end;

procedure TfrmPesqforcp.edicodigoiEnter(Sender: TObject);
begin
itcampo := 0;
edicodigoi.Text := '';
end;

procedure TfrmPesqforcp.edicodigofEnter(Sender: TObject);
begin
itcampo := 0;
edicodigof.Text := '';

end;

procedure tfrmPesqforcp.bloqueiabotoes;
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

procedure tfrmPesqforcp.desbloqueiabotoes;
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

procedure TfrmPesqforcp.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.edicnpjKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.editelefonesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.ediendentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.ediendcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.ediendcomKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqforcp.dbgfornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqforcp.edisiteKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
