unit upesqsitb;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqSitb = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_sitb: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    Label4: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    edidescricao: TEdit;
    edisigla: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Limpar;
    procedure btnnovaClick(Sender: TObject);
    procedure tbsfichaShow(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure carregaficha;
    procedure FormShow(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure edidescricaoKeyPress(Sender: TObject; var Key: Char);
    procedure btnproximoClick(Sender: TObject);
    procedure btnanteriorClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure dbg_sitbKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edireducaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
    procedure cbxregimeKeyPress(Sender: TObject; var Key: Char);
    

  private
    { Private declarations }
    sOpcao:string;
    
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqSitb: TfrmpesqSitb;

implementation
   uses ugeral, udados, ufiltrositb, urelsitb;
{$R *.dfm}

procedure TfrmpesqSitb.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_sitb.Active := false;
  frmdados.sql_sitb.Active := false;

  Action:=caFree;
  frmPesqsitb:=nil;
  form_ativo := '';
end;

procedure tfrmpesqSitb.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';

end;

procedure TfrmpesqSitb.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;

edisigla.Enabled := true;
btnsalvar.Enabled := true;
Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure TfrmpesqSitb.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_sitb.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     
     edisigla.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     carregaficha;
     if edidescricao.Enabled then
        begin
          edidescricao.SetFocus;
        end;
     //endi
   end
else
   begin
     edidescricao.Enabled := false;
     
     edisigla.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure TfrmpesqSitb.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_sitb.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_sitb.Filtered;
         cds_sitb.Filtered := false;

         cds_sitb.IndexName := 'codigo';
         cds_sitb.Last;
         icodigo := cds_sitb.fieldbyname('codigo').asInteger;
         cds_sitb.Append;
         cds_sitb.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_sitb.Edit;
    cds_sitb.FieldByName('descricao').asString := edidescricao.Text;
    

    

    cds_sitb.FieldByName('sigla').asString := edisigla.Text;
    cds_sitb.Post;

     cds_sitb.IndexName := aIndex;
    if cds_sitb.Filter <> '' then
       cds_sitb.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqSitb.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_sitb.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_sitb.fieldbyname('descricao').asString;
    edisigla.Text := cds_sitb.fieldbyname('sigla').asString;

  end;
//endi

end;

procedure TfrmpesqSitb.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_sitb.IndexName := 'descricao';
frmdados.cds_sitb.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;


end;

procedure TfrmpesqSitb.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_sitb.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqSitb.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqSitb.btnproximoClick(Sender: TObject);
begin
frmdados.cds_sitb.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqSitb.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_sitb.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqSitb.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrositb = nil then
   begin
      frmfiltrositb := tfrmfiltrositb.Create(self);
      frmfiltrositb.Showmodal;
      frmfiltrositb.Free;
   end;
//endi

end;

procedure TfrmpesqSitb.dbg_sitbKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqSitb.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_sitb.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqSitb.edilocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

if iclassificar = 0 then
   begin
     If not( key in['0'..'9',#8] ) then
        begin
          beep;
          key:=#0;
        end;
     //endi
   end;
//endi

if iclassificar = 2 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi

if iclassificar = 3 then
   begin

     If not( key in['0'..'9',#8] ) and (key <> ',')then
        begin
          beep;
          key:=#0;
        end;
     //endi

   end;
//endi




end;

procedure TfrmpesqSitb.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_sitb.Filtered := false;
    cds_sitb.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqSitb.btnimprimirClick(Sender: TObject);
begin
frmrelsitb := tfrmrelsitb.Create(self);
frmrelsitb.relatorio.Preview;
frmrelsitb.Free;
end;

procedure TfrmpesqSitb.edireducaoKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

  If not( key in['0'..'9',#8] ) and (key <> ',')then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

procedure TfrmpesqSitb.FormActivate(Sender: TObject);
begin
frmdados.sql_sitb.Active := true;
frmdados.cds_sitb.Active := true;

end;

procedure TfrmpesqSitb.cbxregimeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

key := #0;
end;

end.
