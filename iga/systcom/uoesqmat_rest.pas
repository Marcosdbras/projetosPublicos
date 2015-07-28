unit uoesqmat_rest;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, abarra, ExtDlgs, jpeg, clipbrd, shellapi,
  dbiprocs;

type
  TfrmPesqMat_Rest = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
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
    dbgMat_Restaurar: TDBGrid;
    pnlficha: TPanel;
    spdetq: TSpeedButton;
    opdAbrirfig: TOpenPictureDialog;
    imgFoto1: TImage;
    Bevel3: TBevel;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    Label5: TLabel;
    DBText1: TDBText;
    edinome: TDBEdit;
    Label4: TLabel;
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
    lbltittel: TLabel;
    lbltitemail: TLabel;
    lbltitcontato: TLabel;
    editelefones: TDBEdit;
    ediemail: TDBEdit;
    edicontato: TDBEdit;
    Label7: TLabel;
    DBEdit1: TDBEdit;
    Label8: TLabel;
    ckbAtivo: TCheckBox;
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
    procedure dbgentradaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgentradaExit(Sender: TObject);
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
    procedure DBLookupComboBox1KeyPress(Sender: TObject; var Key: Char);
    procedure DBLookupComboBox2KeyPress(Sender: TObject; var Key: Char);
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
    procedure dbgsaidaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgentradaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdcodbar175Click(Sender: TObject);
    procedure mostrararq_ext;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure dbgMat_RestaurarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


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
    sColuna:string;

  end;

var
  frmPesqMat_Rest: TfrmPesqMat_Rest;

implementation

uses uGeral, uPrincipal, uDados, urelest, urelestoq, uMRProd, uetiqav;

{$R *.DFM}

procedure TfrmPesqMat_Rest.FormShow(Sender: TObject);
var
   vardir: String;
begin
vardir := ExtractFilePath(Application.ExeName);

sColuna := 'Nome';


  iSpdcancelar2310a := spdcancelar2310.Left;
  iSpdGravar := spdgravar.Left;
  spdiconea.Glyph := spdgravar.Glyph;

pnlsalvarficha.Top := pnllista.Top;
pnlsalvarficha.Left := pnllista.Left;
dbgMat_Restaurar.Align := alclient;

tabela := 'mat_restaurar';

cbxclassificar.Items.Clear;
cbxclassificar.Items.Add('Nome');
cbxclassificar.ItemIndex := 0;
spdlimpar.Click;

end;

procedure TfrmPesqMat_Rest.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqMat_Rest.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqMat_Rest.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqMat_Rest.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqMat_Rest.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmpesqmat_rest:=nil;
  with frmdados do
    begin
      cds_Mat_Restaurar.Active := false;
      Dbx_Mat_Restaurar.Active := false;
    end;
  //endth


  form_ativo := '';

end;

procedure TfrmPesqMat_Rest.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqMat_Rest.dbgprodutosKeyPress(Sender: TObject; var Key: Char);
begin
//Key := AnsiUpperCase(Key);


end;

procedure TfrmPesqMat_Rest.dbgprodutosEnter(Sender: TObject);
begin
tabela  := 'mat_restaurar';
sColuna := dbgMat_Restaurar.SelectedField.FieldName;
end;

procedure TfrmPesqMat_Rest.dbgdprodutosEnter(Sender: TObject);
begin
tabela := 'mat_restaurar';
end;

procedure TfrmPesqMat_Rest.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqMat_Rest.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqMat_Rest.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
  icMar, icGru:integer;
begin

  with frmdados do
    begin
      Cds_Mat_Restaurar.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Nome' then
     sClassificar := 'Nome';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
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

  // carregando variaveis
  sCodigoI := edicodigoI.Text;

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
    with frmdados.Dbx_Mat_Restaurar do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from Mat_Restaurar where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from Mat_Restaurar order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from Mat_Restaurar where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_Mat_Restaurar.Active := true;
    end;
  //end;

  //sAcodbar := edicodbar.Text;
end;

procedure TfrmPesqMat_Rest.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqMat_Rest.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_Mat_Restaurar.Locate(sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqMat_Rest.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqMat_Rest.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqMat_Rest.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqMat_Rest.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';


if key = #13 then
   begin

     if edicodigoi.Text <> '' then
        if not frmdados.cds_Mat_Restaurar.Locate('codigo',edicodigoi.text,[])then
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

procedure TfrmPesqMat_Rest.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqMat_Rest.dbgprodutosExit(Sender: TObject);
begin
sColuna := '';
end;

procedure TfrmPesqMat_Rest.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqMat_Rest.tbsentradaShow(Sender: TObject);
begin
  //tabela := 'Ent_Prod';
  //spdlimpare.Click;
  //dbgentrada.SetFocus;
  //showmessage('4');
end;

procedure TfrmPesqMat_Rest.dbgentradaKeyPress(Sender: TObject; var Key: Char);
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
        frmdados.Cds_Mat_Restaurar.Refresh;
      end;
   //endi
//endi
end;

procedure TfrmPesqMat_Rest.dbgentradaExit(Sender: TObject);
begin
  if frmdados.Cds_ent_prod.State in [dsinsert, dsedit] then
     frmdados.Cds_ent_prod.Post;
  //endi

end;

procedure TfrmPesqMat_Rest.dbgsaidaExit(Sender: TObject);
begin
  if frmdados.Cds_dVenda.State in [dsinsert, dsedit] then
     frmdados.Cds_dVenda.Post;
  //endi
end;

procedure TfrmPesqMat_Rest.dbgsaidaKeyPress(Sender: TObject; var Key: Char);
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
        frmdados.Cds_Mat_Restaurar.Refresh;
      end;
   //endi
//endi

end;

procedure TfrmPesqMat_Rest.spdprinterClick(Sender: TObject);
var
  vardir:string;
begin
end;

procedure TfrmPesqMat_Rest.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin

  if key = #13 then
     begin
       SelectNext(ActiveControl,True,True);
     end;
  //endi


end;

procedure TfrmPesqMat_Rest.pnlfichaEnter(Sender: TObject);
begin
tabela := 'mat_restaurar';
end;

procedure TfrmPesqMat_Rest.spdIncluir171bClick(Sender: TObject);
begin
tabela := 'mat_restaurar';
dbgMat_Restaurar.SetFocus;
frmdados.Cds_Mat_Restaurar.Append;
end;

procedure TfrmPesqMat_Rest.cbxnomeicmsKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.cbxnomeipiKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.cbxnomecfKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.cbxnomemarcaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.cbxnomesitaKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.cbxnomesitbKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.cbxnomegrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.edicodbarKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmPesqMat_Rest.spdetqClick(Sender: TObject);
begin
//frmMRProd := tfrmMRProd.Create(self);
//frmMRProd.ShowModal;
//frmMRProd.Free;

end;

procedure TfrmPesqMat_Rest.DBLookupComboBox1KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
   end;
//endi

end;

procedure TfrmPesqMat_Rest.DBLookupComboBox2KeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
   end;
//endi

end;

procedure TfrmPesqMat_Rest.dbgprodutosColEnter(Sender: TObject);
begin
sColuna := dbgMat_Restaurar.SelectedField.FieldName;
end;


procedure TfrmPesqMat_Rest.edicodbarExit(Sender: TObject);
begin

   //if sAcodbar <> edicodbar.Text then
   //   if frmdados.cds_Mat_Restaurar.Locate('cbar',edicodbar.text,[]) then
   //      begin
   //        showmessage('Código de Barras já existe!!!');
   //        edicodbar.Text := sAcodbar;
   //        edicodbar.SetFocus;
   //      end;
      //endi
   //endi



end;

procedure TfrmPesqMat_Rest.spdIncluir171Click(Sender: TObject);
begin
sOPcao := 'I';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
spdgravar.Enabled := true;
frmdados.Cds_Mat_Restaurar.Append;
imgfoto1.Visible := false;
edinome.SetFocus;


end;

procedure TfrmPesqMat_Rest.spdAlterar172Click(Sender: TObject);
begin
sOpcao := 'A';
spdgravar.Glyph := spdiconea.Glyph;
spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;
desbloqueiacampos;
AlternaF;
frmdados.Cds_Mat_Restaurar.Edit;
edinome.SetFocus;

end;

procedure TfrmPesqMat_Rest.spdExcluir173Click(Sender: TObject);
begin
sOpcao := 'E';
spdgravar.Glyph := spdexcluir173.Glyph;

spdgravar.Visible := true;
spdcancelar2310.Left := iSpdcancelar2310a;

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

procedure TfrmPesqMat_Rest.spdConsultar174Click(Sender: TObject);
begin
sOpcao := 'C';
spdgravar.Visible := false;
spdcancelar2310.Left := spdgravar.Left;
bloqueiacampos;
AlternaF;

end;

procedure TfrmPesqMat_Rest.sPdGravarClick(Sender: TObject);
var
 J : TJPEGImage;
 figura : tbitmap;
 S : TMemoryStream;

 CodigoNovo : Integer ;
 vardir, pIndex : String;

begin
tabela := 'mat_restaurar';
if sOpcao <> 'E' then
   begin
     if (frmdados.Cds_Mat_Restaurar.State in [dsinsert, dsedit]) and (edinome.Text <> '') then
        frmdados.Cds_Mat_Restaurar.Post
     else
        if (edinome.Text = '') then
           begin
             showmessage('Não foi possível salvar'+#13+'Motivo: Descrição não foi preenchida');
             frmdados.Cds_Mat_Restaurar.Cancel;
           end;
        //endi
     //endi
   end
else
   begin
     frmdados.Cds_Mat_Restaurar.Delete;
   end;
//endi
alternaL;
desbloqueiacampos;

with frmdados do
  begin

    if Cds_Mat_Restaurar.RecordCount = 0 then
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

procedure TfrmPesqMat_Rest.spdcancelar2310Click(Sender: TObject);
begin

tabela := 'mat_restaurar';
if frmdados.Cds_Mat_Restaurar.State in [dsinsert, dsedit] then
   frmdados.Cds_Mat_Restaurar.Cancel;
//endi
alternaL;
desbloqueiacampos;


with frmdados do
  begin

    if Cds_Mat_Restaurar.RecordCount = 0 then
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

procedure TfrmPesqMat_Rest.AlternaF;
begin
dbgMat_Restaurar.Visible := false;
pnllista.Visible := false;
pnlsalvarficha.Visible := true;

mostrararq_ext;
if frmdados.Cds_Mat_Restaurar.FieldByName('Ativo').AsString = 'T' then
   begin
     ckbAtivo.Checked := true;
   end
else
   begin
     ckbAtivo.Checked := false;
   end;
//endif


end;

procedure TfrmPesqMat_Rest.AlternaL;
begin
dbgMat_Restaurar.Visible := true;
pnllista.Visible := true;
pnlsalvarficha.Visible := false;
sOpcao := '';
end;

procedure TfrmPesqMat_Rest.bloqueiacampos;
begin
//pnlcab.Enabled := false;
//tbscarac.Enabled := false;
//aqui...
//tbsentrada.Enabled := false;
//tbssaida.Enabled := false;
end;

procedure TfrmPesqMat_Rest.desbloqueiacampos;
begin
spdant.Enabled := true;
spdprox.Enabled := true;
edidesc.Enabled := true;
cbxclassificar.Enabled := true;
edicodigoi.Enabled := true;
edicodigof.Enabled := true;
spdfiltrar.Enabled := true;
spdlimpar.Enabled  := true;
end;

procedure tfrmPesqMat_Rest.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdcodbar175.Enabled := false;
  spdilustracao177.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
end;

procedure tfrmPesqMat_Rest.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdcodbar175.Enabled := true;
  spdilustracao177.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
end;

procedure TfrmPesqMat_Rest.spdantClick(Sender: TObject);
begin

  frmdados.Cds_Mat_Restaurar.Prior;

  if (sOpcao = 'A') or (sOpcao = 'I') then
     frmdados.Cds_Mat_Restaurar.Edit;
  //endi


end;

procedure TfrmPesqMat_Rest.spdproxClick(Sender: TObject);
begin

  frmdados.Cds_Mat_Restaurar.Next;

  if (sOpcao = 'A') or (sOpcao = 'I') then
     frmdados.Cds_Mat_Restaurar.Edit;
  //endi


end;

procedure TfrmPesqMat_Rest.dbgsaidaKeyDown(Sender: TObject; var Key: Word;
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
     frmdados.Cds_Mat_Restaurar.Refresh;
   end;
//endi
}

end;

procedure TfrmPesqMat_Rest.dbgentradaKeyDown(Sender: TObject; var Key: Word;
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
     frmdados.Cds_Mat_Restaurar.Refresh;
   end;
//endi
}
end;

procedure TfrmPesqMat_Rest.spdcodbar175Click(Sender: TObject);
begin
frmetiqav := tfrmetiqav.create(self);
frmetiqav.ShowModal;
frmetiqav.Free;

end;

procedure tfrmPesqMat_Rest.mostrararq_ext;
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

      imgfoto1.Visible := false;

      if cds_Mat_Restaurarfoto1.BlobSize = 0 then exit;

      //se nã há informação sobre o tipo do arquivo, sai...
      if cds_Mat_Restaurarfilename1.AsString = '' then exit;


      //Recupera a extensão do arquivo
      Extensao := uppercase(extractfileext(cds_Mat_Restaurarfilename1.AsString));

      //se for image JPG ou BMP carrega para img
      if pos(extensao,'.JPG .JPEG .BMP') <> 0 then
         begin

           Stream := cds_Mat_Restaurar.CreateBlobStream(cds_Mat_Restaurarfoto1, bmread);
           try
             if extensao = '.BMP' then
                begin
                  figura := tbitmap.Create;
                  try
                    figura.LoadFromStream(stream);
                    imgfoto1.Picture.Assign(figura)
                  finally
                    imgfoto1.Visible := true;
                    figura.Free;
                  end;
                end
             else
                begin
                  j := tjpegimage.Create;
                  try
                    j.LoadFromStream(Stream);
                    imgfoto1.Picture.Assign(j);
                  finally
                    imgfoto1.Visible := true;
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
           temppath := temppath + '\'+cds_Mat_Restaurarfoto1.AsString;

           //Grava bloco no arquivo temporário
           cds_Mat_Restaurarfoto1.SaveToFile(temppath);

           //chama a aplicação associada à extensão do arquivo
           Shellexecute(self.Handle,'open',pchar(temppath),nil,nil,SW_SHOWNORMAL);


         end;
      //endi


    //
    end;

  end;
//endi


procedure TfrmPesqMat_Rest.SpeedButton2Click(Sender: TObject);
begin
  frmdados.Cds_Mat_Restaurar.Edit;
  frmdados.cds_Mat_Restaurarfoto1.AsVariant := '';
  mostrararq_ext;
end;

procedure TfrmPesqMat_Rest.SpeedButton1Click(Sender: TObject);
begin
  if opdabrirfig.Execute then
     begin
       frmdados.cds_Mat_Restaurar.Edit;
       frmdados.cds_Mat_Restaurarfoto1.LoadFromFile(opdabrirfig.FileName);
       frmdados.cds_Mat_Restaurarfilename1.AsString := extractfilename(opdabrirfig.FileName);
       mostrararq_ext;
     end;
  //endi

end;

procedure TfrmPesqMat_Rest.dbgMat_RestaurarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.Abort;
//endi


end;

end.
