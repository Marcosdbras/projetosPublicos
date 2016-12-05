unit umultpagto;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, jpeg, EditNum;

type
  Tfrmmultpgto = class(TForm)
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
    edicodprod: TEdit;
    Bevel5: TBevel;
    imgfichadetalhe: TImageList;
    lbltitdatai: TLabel;
    Label7: TLabel;
    Bevel6: TBevel;
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
    pnlficha: TPanel;
    Label4: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label22: TLabel;
    Label26: TLabel;
    Label29: TLabel;
    Label28: TLabel;
    lblvlrreal: TLabel;
    edidescricao: TEdit;
    edidte: TMaskEdit;
    cbxNomefor: TDBLookupComboBox;
    cbxNomecla: TDBLookupComboBox;
    edidoc: TEdit;
    edinumnf: TEdit;
    edidtv: TMaskEdit;
    edivalor: TEditNum;
    Memo1: TMemo;
    cbxNomesitpagar: TDBLookupComboBox;
    edidtl: TMaskEdit;
    edidtb: TMaskEdit;
    edivalliq: TEditNum;
    dbgpag: TDBGrid;
    Label6: TLabel;
    edinparc: TEdit;
    cbxntipoop: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Label8: TLabel;
    edinprazo: TEdit;
    Label9: TLabel;
    BitBtn2: TBitBtn;
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
    procedure sPdGravarClick(Sender: TObject);
    procedure spdcancelar2310Click(Sender: TObject);
    procedure bloqueiabotoes;
    procedure desbloqueiabotoes;
    procedure bloqueiacampos;
    procedure desbloqueiacampos;
    procedure spdantClick(Sender: TObject);
    procedure spdproxClick(Sender: TObject);
    procedure edidescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure edidocExit(Sender: TObject);
    procedure limpar;
    procedure abrirtabelas;
    procedure BitBtn1Click(Sender: TObject);
    procedure criaparc;
    procedure edinparcExit(Sender: TObject);
    procedure edinprazoExit(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure dbgpagColEnter(Sender: TObject);


  private
    { Private declarations }
    sClassificar:string;
    iSpdcancelar2310a, iSpdgravar, itcampo, icontrole:integer;

  public
    { Public declarations }
     sCompo,sTitRel : String;
     sOpcao:String;
     sColuna:string;

  end;

var
  frmmultpgto: Tfrmmultpgto;

implementation

uses uGeral, uPrincipal, uDados, urelpagar, uMRpag;

{$R *.DFM}

procedure Tfrmmultpgto.FormShow(Sender: TObject);
var
   vardir: String;
begin

   tabela := 'Temp';

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
   cbxNomefor.DataField  :='cod';  // no campo
   cbxNomefor.ListField  :='nome';    // vai exibir o campo

   cbxNomecla.ListSource := frmdados.Dts_classe;   //  vai ler no
   cbxNomecla.Keyfield   := 'codigo'; // o campo
   cbxNomecla.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomecla.DataField  :='cod1';  // no campo
   cbxNomecla.ListField  :='Descricao';    // vai exibir o campo

   cbxNomesitpagar.ListSource := frmdados.Dts_SituPagar ;   //  vai ler no
   cbxNomesitpagar.Keyfield   := 'codigo'; // o campo
   cbxNomesitpagar.DataSource := frmdados.Dts_Temp;  // vai gravar no
   cbxNomesitpagar.DataField  :='cod2';  // no campo
   cbxNomesitpagar.ListField  :='Descricao';    // vai exibir o campo

   iSpdcancelar2310a := spdcancelar2310.Left;
   iSpdGravar := spdgravar.Left;
   spdiconea.Glyph := spdgravar.Glyph;

   pnlsalvarficha.Top := pnllista.Top;
   pnlsalvarficha.Left := pnllista.Left;

   pnlficha.Align := alclient;

   spdlimpar.Click;

   frmdados.Dbx_Pagar.Active := false;
   frmdados.Cds_Pagar.Active := false;

   icontrole := 0;
end;

procedure Tfrmmultpgto.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmmultpgto.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmmultpgto.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure Tfrmmultpgto.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmmultpgto.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmmultpgto:=nil;
  form_ativo := '';

end;

procedure Tfrmmultpgto.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure Tfrmmultpgto.dbgpagKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
      frmdados.Cds_Pagar.Post;
   //endi
//endi
end;

procedure Tfrmmultpgto.dbgpagEnter(Sender: TObject);
begin
tabela := 'Pagar';
end;

procedure Tfrmmultpgto.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmmultpgto.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmmultpgto.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros

  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc  : String;
  ftotcusto, ftotpreco:real;
  icfor, iccla, icsitpagar:integer;
begin

end;

procedure Tfrmmultpgto.spdlimparClick(Sender: TObject);
begin
  limpar;

  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  spdfiltrar.Click;
  
end;

procedure Tfrmmultpgto.cbxclassificarKeyPress(Sender: TObject;
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

procedure Tfrmmultpgto.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmmultpgto.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmmultpgto.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin

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

procedure Tfrmmultpgto.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin

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

procedure Tfrmmultpgto.dbgpagExit(Sender: TObject);
begin
  if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
     frmdados.Cds_Pagar.Post;
  //endi
end;

procedure Tfrmmultpgto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure Tfrmmultpgto.cbxclassificar2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure Tfrmmultpgto.cbxclassificar2KeyPress(Sender: TObject;
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

procedure Tfrmmultpgto.cbxclassificarClick(Sender: TObject);
begin

spdfiltrar.Click;
end;

procedure Tfrmmultpgto.cbxnomeforClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmmultpgto.cbxnomeforEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmmultpgto.cbxnomeclaClick(Sender: TObject);
begin
tabela := 'temp';
end;

procedure Tfrmmultpgto.cbxnomeclaEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmmultpgto.cbxnomeforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codfor').asInteger := 0;
//endi
end;

procedure Tfrmmultpgto.cbxnomesitpagarClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmmultpgto.cbxnomesitpagarEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure Tfrmmultpgto.cbxnomeclaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codcla').asInteger := 0;
//endi

end;

procedure Tfrmmultpgto.cbxnomesitpagarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codsitpagar').asInteger := 0;
//endi

end;

procedure Tfrmmultpgto.sPdGravarClick(Sender: TObject);
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
end;

procedure Tfrmmultpgto.spdcancelar2310Click(Sender: TObject);
begin

tabela := 'Pagar';
if frmdados.Cds_Pagar.State in [dsinsert, dsedit] then
   frmdados.Cds_Pagar.CancelUpdates;
//endi


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

procedure Tfrmmultpgto.bloqueiacampos;
begin
pnlficha.Enabled         := false;
end;

procedure Tfrmmultpgto.desbloqueiacampos;
begin
pnlficha.Enabled := true;
edicodigoi.Enabled := true;
edicodigof.Enabled := true;
spdfiltrar.Enabled := true;
spdlimpar.Enabled  := true;
end;

procedure tfrmmultpgto.bloqueiabotoes;
begin
  spdAlterar172.Enabled := false;
  spdexcluir173.Enabled := false;
  spdconsultar174.Enabled := false;
  spdgravar.Enabled := false;
  spdiconea.Enabled := false;
  spdmenurel.Enabled :=false;
end;

procedure tfrmmultpgto.desbloqueiabotoes;
begin
  spdAlterar172.Enabled := true;
  spdexcluir173.Enabled := true;
  spdconsultar174.Enabled := true;
  spdgravar.Enabled := true;
  spdiconea.Enabled := true;
  spdmenurel.Enabled := true;
end;

procedure Tfrmmultpgto.spdantClick(Sender: TObject);
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

procedure Tfrmmultpgto.spdproxClick(Sender: TObject);
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

procedure Tfrmmultpgto.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if key = ',' then
   Key := '.';

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmmultpgto.edidocExit(Sender: TObject);
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

procedure tfrmmultpgto.limpar;
begin
  edidescricao.Text := '';
  edidte.Text := datetostr(date);
  edidoc.Text := '';
  edinumnf.Text := '';
  edidtv.Text := '';
  edivalor.Text := '0,00';
  edidtl.Text := '';
  edidtb.Text := '';
  edivalliq.Text := '0,00';
  edinparc.Text := '1';
  edinprazo.Text := '0';
  memo1.Clear;

  frmdados.Cds_Temp.Edit;
  frmdados.Cds_Temp.FieldByName('cod').AsInteger := 0;
  frmdados.Cds_Temp.FieldByName('cod1').AsInteger := 0;


end;

procedure Tfrmmultpgto.abrirtabelas;
begin


     tabela := 'Pagar';

     frmdados.cds_Pagar.Active := false;
     frmdados.dbx_pagar.Active := false;
     frmdados.dbx_pagar.SQL.Clear;
     frmdados.dbx_pagar.SQL.Add('Select * from Pagar where (CCONTADOR_MULTPAGAR = '+ inttostr( frmdados.cds_indice.fieldbyname('CONTADOR_MULTPAGAR').asInteger )+')');
     frmdados.dbx_pagar.Active := true;
     frmdados.cds_pagar.Active := true;


end;


procedure Tfrmmultpgto.BitBtn1Click(Sender: TObject);
begin
  if application.MessageBox('Deseja realmente fazer este lançamento','',mb_yesno) = 6 then
     begin
       abrirtabelas;
       criaparc;
       limpar;
     end;
end;

procedure Tfrmmultpgto.criaparc;
var x, iparc, iaprazo:integer;
    fvlrparc:currency;
    fvalor:currency;
    sdata:string;
    ftotal, fsobra:real;

begin
try
iaprazo := 0;

x := 0;
iparc := strtoint(edinparc.Text);
sdata := edidte.Text;

fvlrparc :=   strtofloat(tirapontos(edivalor.Text))/strtoint(edinparc.text) ;
sMsg := 'Apagando Dados';
tabela := 'Pagar';

frmdados.dbx_exec.Active := false;
frmdados.dbx_exec.SQL.Clear;
frmdados.dbx_exec.SQL.Add('delete from Pagar where (CCONTADOR_MULTPAGAR = '+ inttostr( frmdados.cds_indice.fieldbyname('CONTADOR_MULTPAGAR').asInteger )+')');
frmdados.dbx_exec.ExecSQL;

frmdados.cds_Pagar.Refresh;


sMsg := 'Criando parcelas em branco';
for x := 1 to iparc do
    begin
      iaprazo :=  iaprazo + strtoint(edinprazo.Text);
      frmdados.Cds_Pagar.Append;
      frmdados.Cds_Pagar.FieldByName('prazo').asInteger := iaprazo;
      frmdados.Cds_Pagar.FieldByName('dtv').asString := calc_data(sdata,frmdados.Cds_Pagar.FieldByName('prazo').asInteger);
      frmdados.Cds_Pagar.FieldByName('valorreal').asfloat := fvlrparc;
      frmdados.Cds_Pagar.FieldByName('valor').asfloat := fvlrparc;
      frmdados.Cds_Pagar.FieldByName('cfor').asInteger := frmdados.Cds_temp.fieldbyname('cod').asInteger;
      frmdados.Cds_Pagar.FieldByName('c_tipo_pgto').asInteger := frmdados.Cds_Indice.fieldbyname('parcpadrao').asInteger;;
      frmdados.Cds_Pagar.FieldByName('csit').asInteger := frmdados.Cds_Indice.fieldbyname('csitr').asInteger;
      frmdados.Cds_Pagar.FieldByName('parc').asstring := formatfloat('00',x)+'/'+ formatfloat('00',strtoint(edinparc.Text));
      frmdados.Cds_Pagar.FieldByName('doc').asstring := '';
      frmdados.Cds_Pagar.FieldByName('parte').asstring := chr(64+x);
      frmdados.Cds_Pagar.FieldByName('ehentrega').asstring := 'F';
      frmdados.Cds_Pagar.FieldByName('ccla').asinteger := frmdados.Cds_temp.fieldbyname('cod1').asInteger;
      frmdados.Cds_Pagar.FieldByName('descricao').asstring := edidescricao.text;
      frmdados.Cds_Pagar.FieldByName('doc').asstring := edidoc.text;
      frmdados.Cds_Pagar.FieldByName('obs').asstring := memo1.Text;
      frmdados.Cds_Pagar.FieldByName('numnf').asstring := edinumnf.Text;
      frmdados.cds_pagar.FieldByName('CCONTADOR_MULTPAGAR').AsInteger := frmdados.cds_indice.fieldbyname('CONTADOR_MULTPAGAR').asInteger;
      frmdados.cds_pagar.FieldByName('dte').AsString  :=  formatdatetime('DD/MM/YYYY',  strtodate( edidte.Text ) );


      ftotal := ftotal + frmdados.Cds_Pagar.FieldByName('valorreal').asfloat;

      frmdados.Cds_Pagar.Post;

    end;
//endf

icontrole := frmdados.cds_indice.fieldbyname('CONTADOR_MULTPAGAR').asInteger;


frmdados.cds_indice.edit;
frmdados.cds_indice.fieldbyname('CONTADOR_MULTPAGAR').asInteger :=   frmdados.cds_indice.fieldbyname('CONTADOR_MULTPAGAR').asInteger + 1;
frmdados.cds_indice.post;

sMsg := 'Voltando para Inicio';
frmdados.Cds_Pagar.First;
if dbgpag.Enabled then
   dbgpag.SetFocus;
//endi


except
  sMsg := 'Excessão quando criou parcela em branco';
end;

end;


procedure Tfrmmultpgto.edinparcExit(Sender: TObject);
begin
try
  strtoint(edinparc.Text);
except
  edinparc.Text := '0';
  edinparc.SetFocus;
end;

end;

procedure Tfrmmultpgto.edinprazoExit(Sender: TObject);
begin
try
  strtoint(edinprazo.Text);
except
  edinprazo.Text := '0';
  edinprazo.SetFocus;
end;

end;

procedure Tfrmmultpgto.BitBtn2Click(Sender: TObject);
begin
  if application.MessageBox('Deseja realmente excluir todos os lançamentos','',mb_yesno) = 6 then
     begin

       tabela := 'Pagar';

       frmdados.dbx_exec.Active := false;
       frmdados.dbx_exec.SQL.Clear;
       frmdados.dbx_exec.SQL.Add('delete from Pagar where (CCONTADOR_MULTPAGAR = '+ inttostr( icontrole )+')');
       frmdados.dbx_exec.ExecSQL;

       frmdados.cds_Pagar.Refresh;


     end;

end;

procedure Tfrmmultpgto.dbgpagColEnter(Sender: TObject);
begin
  sColuna := dbgpag.SelectedField.FieldName;

end;

end.
