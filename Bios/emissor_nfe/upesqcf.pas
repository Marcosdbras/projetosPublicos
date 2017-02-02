unit upesqcf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqcf = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_cf: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
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
    btnnova: TBitBtn;
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
    procedure dbg_cfKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edireducaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqcf: Tfrmpesqcf;

implementation
   uses ugeral, udados, ufiltrocf, urelcf;
{$R *.dfm}

procedure Tfrmpesqcf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_cf.Active := false;
  frmdados.sql_cf.Active := false;

  Action:=caFree;
  frmPesqcf:=nil;
  form_ativo := '';
end;

procedure tfrmpesqcf.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';

end;

procedure Tfrmpesqcf.btnnovaClick(Sender: TObject);
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

procedure Tfrmpesqcf.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_cf.RecordCount > 0 then
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
     //frmdados.cds_Temp.Edit;
     //frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure Tfrmpesqcf.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_cf.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_cf.Filtered;
         cds_cf.Filtered := false;

         cds_cf.IndexName := 'codigo';
         cds_cf.Last;
         //icodigo := cds_cf.fieldbyname('codigo').asInteger;
         cds_cf.Append;
         //cds_cf.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_cf.Edit;
    cds_cf.FieldByName('descricao').asString := edidescricao.Text;
    cds_cf.FieldByName('sigla').asString := edisigla.Text;
    cds_cf.Post;

     cds_cf.IndexName := aIndex;
    if cds_cf.Filter <> '' then
       cds_cf.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqcf.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_cf.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_cf.fieldbyname('descricao').asString;
    edisigla.Text := cds_cf.fieldbyname('sigla').asString;

  end;
//endi

end;

procedure Tfrmpesqcf.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 1;
sclassificar := 'DESCRIÇÃO';
sordenado := 'descricao';
edilocalizar.Text := '';
frmdados.cds_cf.IndexName := 'descricao';
frmdados.cds_cf.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqcf.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_cf.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqcf.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqcf.btnproximoClick(Sender: TObject);
begin
frmdados.cds_cf.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqcf.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_cf.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqcf.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrocf = nil then
   begin
      frmfiltrocf := tfrmfiltrocf.Create(self);
      frmfiltrocf.Showmodal;
      frmfiltrocf.Free;
   end;
//endi

end;

procedure Tfrmpesqcf.dbg_cfKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqcf.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_cf.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqcf.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqcf.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_cf.Filtered := false;
    cds_cf.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqcf.btnimprimirClick(Sender: TObject);
begin
frmrelcf := tfrmrelcf.Create(self);
frmrelcf.relatorio.Preview;
frmrelcf.Free;
end;

procedure Tfrmpesqcf.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcf.FormCreate(Sender: TObject);
begin
frmdados.sql_cf.Active := true;
frmdados.cds_cf.Active := true;
end;

end.
