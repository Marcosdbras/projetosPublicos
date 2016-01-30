unit upesqmodbc;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqmodbc = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_modbc: TDBGrid;
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
    procedure dbg_modbcKeyDown(Sender: TObject; var Key: Word;
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
  frmpesqmodbc: Tfrmpesqmodbc;

implementation
   uses ugeral, udados, ufiltromodbc, urelmodbc;
{$R *.dfm}

procedure Tfrmpesqmodbc.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_modbc.Active := false;
  frmdados.sql_modbc.Active := true;

  Action:=caFree;
  frmPesqmodbc:=nil;
  form_ativo := '';
end;

procedure tfrmpesqmodbc.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';

end;

procedure Tfrmpesqmodbc.btnnovaClick(Sender: TObject);
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

procedure Tfrmpesqmodbc.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_modbc.RecordCount > 0 then
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

procedure Tfrmpesqmodbc.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_modbc.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_modbc.Filtered;
         cds_modbc.Filtered := false;

         cds_modbc.IndexName := 'codigo';
         cds_modbc.Last;
         //icodigo := cds_modbc.fieldbyname('codigo').asInteger;
         cds_modbc.Append;
         //cds_modbc.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_modbc.Edit;
    cds_modbc.FieldByName('descricao').asString := edidescricao.Text;
    cds_modbc.FieldByName('sigla').asString := edisigla.Text;
    cds_modbc.Post;

     cds_modbc.IndexName := aIndex;
    if cds_modbc.Filter <> '' then
       cds_modbc.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqmodbc.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_modbc.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_modbc.fieldbyname('descricao').asString;
    edisigla.Text := cds_modbc.fieldbyname('sigla').asString;

  end;
//endi

end;

procedure Tfrmpesqmodbc.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_modbc.IndexName := 'descricao';
frmdados.cds_modbc.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqmodbc.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_modbc.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqmodbc.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqmodbc.btnproximoClick(Sender: TObject);
begin
frmdados.cds_modbc.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqmodbc.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_modbc.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqmodbc.btnfiltrarClick(Sender: TObject);
begin
if frmfiltromodbc = nil then
   begin
      frmfiltromodbc := tfrmfiltromodbc.Create(self);
      frmfiltromodbc.Showmodal;
      frmfiltromodbc.Free;
   end;
//endi

end;

procedure Tfrmpesqmodbc.dbg_modbcKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqmodbc.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_modbc.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqmodbc.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqmodbc.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_modbc.Filtered := false;
    cds_modbc.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqmodbc.btnimprimirClick(Sender: TObject);
begin
frmrelmodbc := tfrmrelmodbc.Create(self);
frmrelmodbc.relatorio.Preview;
frmrelmodbc.Free;
end;

procedure Tfrmpesqmodbc.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqmodbc.FormCreate(Sender: TObject);
begin
frmdados.sql_modbc.Active := true;
frmdados.cds_modbc.Active := true;
end;

end.
