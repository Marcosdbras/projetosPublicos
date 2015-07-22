unit upesqtrans;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqtrans = class(TForm)
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
    dbgTransportadores: TDBGrid;
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
    Label5: TLabel;
    EDICNPJ: TDBEdit;
    Label7: TLabel;
    EDIIE: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgTransportadoresKeyPress(Sender: TObject; var Key: Char);
    procedure dbgTransportadoresEnter(Sender: TObject);
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
    procedure dbgTransportadoresExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure AlternaF;
    procedure AlternaL;
    procedure spdIncluir171Click(Sender: TObject);
    procedure spdAlterar172Click(Sender: TObject);
    procedure spdExcluir173Click(Sender: TObject);
    procedure bloqueiacampos;
    procedure desbloqueiacampos;
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
    procedure edicpfKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit2KeyPress(Sender: TObject; var Key: Char);
    procedure edinomeKeyPress(Sender: TObject; var Key: Char);
    procedure DBEdit4KeyPress(Sender: TObject; var Key: Char);
    procedure editelefonesKeyPress(Sender: TObject; var Key: Char);
    procedure ediendentKeyPress(Sender: TObject; var Key: Char);
    procedure ediendcobKeyPress(Sender: TObject; var Key: Char);
    procedure ediendcomKeyPress(Sender: TObject; var Key: Char);
    procedure dbgTransportadoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdrelatorios176Click(Sender: TObject);

  private
    { Private declarations }
    sClassificar:string;
    iSpdcancelar2310a, iSpdgravar, itcampo:integer;
    sOpcao:String;

  public
    { Public declarations }
    sTitRel:String;
  end;

var
  frmPesqtrans: TfrmPesqtrans;

implementation

uses uGeral, uPrincipal, uDados ,uMRtrans;

{$R *.DFM}

procedure TfrmPesqtrans.FormShow(Sender: TObject);
var
   vardir: String;
begin

  iSpdcancelar2310a := spdcancelar2310.Left;
  iSpdGravar := spdgravar.Left;
  spdiconea.Glyph := spdgravar.Glyph;


  pnlsalvarficha.Top := pnllista.Top;
  pnlsalvarficha.Left := pnllista.Left;
  dbgtransportadores.Align := alclient;
  pnlficha.Align := alclient;

   tabela := 'Transportador';

   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Nome');
   cbxclassificar.Items.Add('Código');
   
   spdlimpar.Click;

end;

procedure TfrmPesqtrans.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqtrans.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqtrans.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqtrans.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqtrans.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqtrans:=nil;
  form_ativo := '';

end;

procedure TfrmPesqtrans.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqtrans.dbgTransportadoresKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_transportadores.State in [dsinsert, dsedit] then
      frmdados.Cds_transportadores.Post;
   //endi
//endi
end;

procedure TfrmPesqtrans.dbgTransportadoresEnter(Sender: TObject);
begin
tabela := 'Transportador';
end;

procedure TfrmPesqtrans.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqtrans.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqtrans.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_transportadores.Active := false;
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
    with frmdados.Dbx_transportadores do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from transportador where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from transportador order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from transportador where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_transportadores.Active := true;

      if Cds_transportadores.RecordCount = 0 then
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

procedure TfrmPesqtrans.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';

  cbxclassificar.Text := 'Nome';

  spdfiltrar.Click;
end;

procedure TfrmPesqtrans.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_transportadores.Locate(frmpesqtrans.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqtrans.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqtrans.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqtrans.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqtrans.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     frmdados.cds_transportadores.Locate('Codigo',ediCodigoi.text,[]);
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

procedure TfrmPesqtrans.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqtrans.dbgTransportadoresExit(Sender: TObject);
begin
  if frmdados.Cds_transportadores.State in [dsinsert, dsedit] then
     frmdados.Cds_transportadores.Post;
  //endi
end;

procedure TfrmPesqtrans.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqtrans.AlternaF;
begin
dbgtransportadores.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;


end;

procedure TfrmPesqtrans.AlternaL;
begin
dbgtransportadores.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;


procedure TfrmPesqtrans.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_transportadores.Append;
edicnpj.SetFocus;
end;

procedure TfrmPesqtrans.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_transportadores.Edit;
edicnpj.SetFocus;
end;

procedure TfrmPesqtrans.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
spdgravar.Glyph := spdexcluir173.Glyph;





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

procedure TfrmPesqtrans.bloqueiacampos;
begin
pnlcab.Enabled := false;
tabinf.Enabled := false;
tabent.Enabled := false;
end;

procedure TfrmPesqtrans.desbloqueiacampos;
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

procedure TfrmPesqtrans.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;
end;

procedure TfrmPesqtrans.sPdGravarClick(Sender: TObject);
begin
tabela := 'Transportador';
if sOpcao <> 'E' then
   begin
     if frmdados.Cds_transportadores.State in [dsinsert, dsedit] then
        frmdados.Cds_transportadores.Post;
     //endi
   end
else
   begin
     frmdados.Cds_transportadores.Delete;
   end;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_transportadores.RecordCount = 0 then
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

procedure TfrmPesqtrans.spdcancelar2310Click(Sender: TObject);
begin
tabela := 'Transportador';
if frmdados.Cds_transportadores.State in [dsinsert, dsedit] then
   frmdados.Cds_transportadores.Cancel;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_transportadores.RecordCount = 0 then
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

procedure TfrmPesqtrans.edidescExit(Sender: TObject);
begin
tabela := 'Transportador';
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_transportadores.Edit;
//endi


end;

procedure TfrmPesqtrans.spdantClick(Sender: TObject);
begin
tabela := 'Transportador';
frmdados.Cds_transportadores.Prior;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_transportadores.Edit;
//endi

end;

procedure TfrmPesqtrans.spdproxClick(Sender: TObject);
begin
tabela := 'Transportador';
frmdados.Cds_transportadores.Next;
if (sOpcao = 'A') or (sOpcao = 'I') then
   frmdados.Cds_transportadores.Edit;
//endi

end;

procedure TfrmPesqtrans.edicodigoiChange(Sender: TObject);
begin
itcampo := length(edicodigoi.Text);
//if edicodigoi.Text <> '' then
//   frmdados.cds_transportadores.Locate('Codigo',ediCodigoi.text,[loPartialKey,loCaseInsensitive]);
//endi
//cbxclassificar.ItemIndex := 1;
end;

procedure TfrmPesqtrans.cbxclassificarChange(Sender: TObject);
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

procedure TfrmPesqtrans.edicodigofChange(Sender: TObject);
begin
itcampo := length(edicodigof.Text);

end;

procedure TfrmPesqtrans.edicodigoiEnter(Sender: TObject);
begin
itcampo := 0;
edicodigoi.Text := '';
end;

procedure TfrmPesqtrans.edicodigofEnter(Sender: TObject);
begin
itcampo := 0;
edicodigof.Text := '';

end;

procedure tfrmPesqtrans.bloqueiabotoes;
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

procedure tfrmPesqtrans.desbloqueiabotoes;
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

procedure TfrmPesqtrans.edicpfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.DBEdit2KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.DBEdit4KeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.editelefonesKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.ediendentKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.ediendcobKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.ediendcomKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqtrans.dbgTransportadoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqtrans.spdrelatorios176Click(Sender: TObject);
begin
      frmMRtrans:=tfrmMRtrans.create(self);
      frmMRtrans.Showmodal;
      frmMRtrans.Free;
end;

end.
