unit upesqimpostoi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqimpostoi = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_impostoI: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    edidescricao: TEdit;
    edisigla: TEdit;
    edialiquota: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Label6: TLabel;
    edireducao: TEdit;
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
    procedure dbg_impostoIKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edialiquotaKeyPress(Sender: TObject; var Key: Char);
    procedure edireducaoKeyPress(Sender: TObject; var Key: Char);
    procedure edialiquotaExit(Sender: TObject);
    procedure edireducaoExit(Sender: TObject);
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
  frmpesqimpostoi: Tfrmpesqimpostoi;

implementation
   uses ugeral, udados, ufiltroimpostoI, urelimpostoI;
{$R *.dfm}

procedure Tfrmpesqimpostoi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_impostoI.Active := false;
  frmdados.sql_impostoI.Active := false;

  Action:=caFree;
  frmPesqimpostoI:=nil;
  form_ativo := '';
end;

procedure tfrmpesqimpostoi.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  edialiquota.Text := '0,00';
  edireducao.Text := '0,00';

end;

procedure Tfrmpesqimpostoi.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
edisigla.Enabled := true;
edialiquota.Enabled := true;
edireducao.Enabled := true;
btnsalvar.Enabled := true;
Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqimpostoi.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_impostoI.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     edisigla.Enabled := true;
     edialiquota.Enabled := true;
     edireducao.Enabled := true;
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
     edialiquota.Enabled := false;
     edireducao.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure Tfrmpesqimpostoi.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_impostoI.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_impostoI.Filtered;
         cds_impostoI.Filtered := false;

         cds_impostoI.IndexName := 'codigo';
         cds_impostoI.Last;
         //icodigo := cds_impostoI.fieldbyname('codigo').asInteger;
         cds_impostoI.Append;
         //cds_impostoI.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_impostoI.Edit;
    cds_impostoI.FieldByName('descricao').asString := edidescricao.Text;
    cds_impostoI.FieldByName('sigla').asString := edisigla.Text;
    cds_impostoI.FieldByName('aliquota').asfloat := strtofloat(tirapontos(edialiquota.Text));
    cds_impostoI.FieldByName('reducao').asfloat := strtofloat(tirapontos(edireducao.Text));
    cds_impostoI.Post;

     cds_impostoI.IndexName := aIndex;
    if cds_impostoI.Filter <> '' then
       cds_impostoI.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqimpostoi.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_impostoI.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_impostoI.fieldbyname('descricao').asString;
    edisigla.Text := cds_impostoI.fieldbyname('sigla').asString;
    edialiquota.Text := formatfloat('###,###,##0.00', cds_impostoI.fieldbyname('aliquota').asfloat);
    edireducao.Text := formatfloat('###,###,##0.00', cds_impostoI.fieldbyname('reducao').asfloat);

  end;
//endi

end;

procedure Tfrmpesqimpostoi.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_impostoI.IndexName := 'descricao';
frmdados.cds_impostoI.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqimpostoi.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_impostoI.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqimpostoi.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqimpostoi.btnproximoClick(Sender: TObject);
begin
frmdados.cds_impostoI.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqimpostoi.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_impostoI.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqimpostoi.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroimpostoI = nil then
   begin
      frmfiltroimpostoI := tfrmfiltroimpostoI.Create(self);
      frmfiltroimpostoI.Showmodal;
      frmfiltroimpostoI.Free;
   end;
//endi

end;

procedure Tfrmpesqimpostoi.dbg_impostoIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqimpostoi.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_impostoI.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqimpostoi.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqimpostoi.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_impostoI.Filtered := false;
    cds_impostoI.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqimpostoi.btnimprimirClick(Sender: TObject);
begin
frmrelimpostoI := tfrmrelimpostoI.Create(self);
frmrelimpostoI.relatorio.Preview;
frmrelimpostoI.Free;
end;

procedure Tfrmpesqimpostoi.edialiquotaKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqimpostoi.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqimpostoi.edialiquotaExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edialiquota.Text));
edialiquota.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqimpostoi.edireducaoExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edireducao.Text));
edireducao.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqimpostoi.FormCreate(Sender: TObject);
begin
frmdados.sql_impostoi.Active := true;
frmdados.cds_impostoI.Active := true;
end;

end.
