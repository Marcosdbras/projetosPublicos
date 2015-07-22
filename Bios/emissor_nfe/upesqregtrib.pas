unit upesqregtrib;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqregtrib = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_regtrib: TDBGrid;
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
    edinome: TEdit;
    edisigla: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Label3: TLabel;
    mmoobs: TMemo;
    ediporcg: TEdit;
    Label5: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Limpar;
    procedure btnnovaClick(Sender: TObject);
    procedure tbsfichaShow(Sender: TObject);
    procedure btnsalvarClick(Sender: TObject);
    procedure carregaficha;
    procedure FormShow(Sender: TObject);
    procedure btnexcluirClick(Sender: TObject);
    procedure edinomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnproximoClick(Sender: TObject);
    procedure btnanteriorClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure dbg_regtribKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure ediporcgKeyPress(Sender: TObject; var Key: Char);
    procedure ediporcgExit(Sender: TObject);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqregtrib: Tfrmpesqregtrib;

implementation
   uses ugeral, udados, ufiltroregtrib, urelregtrib;
{$R *.dfm}

procedure Tfrmpesqregtrib.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_regtrib.Active := false;
  frmdados.sql_regtrib.Active := false;
  
  Action:=caFree;
  frmPesqregtrib:=nil;
  form_ativo := '';
end;

procedure tfrmpesqregtrib.Limpar;
begin
  lblcodigo.Caption := '00000';
  edinome.Text := '';
  edisigla.Text := '';
  ediporcg.Text := '0,00';
  mmoobs.Clear;
end;

procedure Tfrmpesqregtrib.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edinome.Enabled := true;
edisigla.Enabled := true;
mmoobs.Enabled := true;
ediporcg.Enabled := true;
btnsalvar.Enabled := true;
Limpar;
edinome.SetFocus;
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqregtrib.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_regtrib.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edinome.Enabled := true;
     edisigla.Enabled := true;
     mmoobs.Enabled := true;
     ediporcg.Enabled := true;

     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     carregaficha;
     if edinome.Enabled then
        begin
          edinome.SetFocus;
        end;
     //endi
   end
else
   begin
     edinome.Enabled := false;
     edisigla.Enabled := false;
     mmoobs.Enabled := false;
     ediporcg.Enabled := false;

     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
   end;
//endi


end;

procedure Tfrmpesqregtrib.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_regtrib.IndexName;

    if sOpcao = 'I' then
       begin
         bFiltrar := cds_regtrib.Filtered;
         cds_regtrib.Filtered := false;
         cds_regtrib.IndexName := 'codigo';
         cds_regtrib.Last;
         icodigo := cds_regtrib.fieldbyname('codigo').asInteger;
         cds_regtrib.Append;
         cds_regtrib.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_regtrib.Edit;
    cds_regtrib.FieldByName('nome').asString := edinome.Text;
    cds_regtrib.FieldByName('sigla').asString := edisigla.Text;
    cds_regtrib.FieldByName('obs').asString := mmoobs.Text;
    cds_regtrib.FieldByName('porcg').asfloat := strtofloat(ediporcg.text);
    cds_regtrib.Post;

    cds_regtrib.IndexName := aIndex;

    if cds_regtrib.Filter <> '' then
       cds_regtrib.Filtered := bFiltrar;
    //endi

  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqregtrib.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_regtrib.fieldbyname('codigo').asfloat);
    edinome.Text := cds_regtrib.fieldbyname('nome').asString;
    edisigla.Text := cds_regtrib.fieldbyname('sigla').asString;
    mmoobs.Text := cds_regtrib.fieldbyname('obs').asString;
    ediporcg.Text := formatfloat('###,###,##0.00',cds_regtrib.fieldbyname('porcg').asfloat);
  end;
//endi

end;

procedure Tfrmpesqregtrib.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_regtrib.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqregtrib.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_regtrib.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqregtrib.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqregtrib.btnproximoClick(Sender: TObject);
begin
frmdados.cds_regtrib.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqregtrib.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_regtrib.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqregtrib.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroregtrib = nil then
   begin
      frmfiltroregtrib := tfrmfiltroregtrib.Create(self);
      frmfiltroregtrib.Showmodal;
      frmfiltroregtrib.Free;
   end;
//endi

end;

procedure Tfrmpesqregtrib.dbg_regtribKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqregtrib.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_regtrib.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqregtrib.edilocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin

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

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqregtrib.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_regtrib.Filtered := false;
    cds_regtrib.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqregtrib.btnimprimirClick(Sender: TObject);
begin
frmrelregtrib := tfrmrelregtrib.Create(self);
frmrelregtrib.relatorio.Preview;
frmrelregtrib.Free;
end;

procedure Tfrmpesqregtrib.FormCreate(Sender: TObject);
begin
frmdados.sql_regtrib.Active := true;
frmdados.cds_regtrib.Active := true;
end;

procedure Tfrmpesqregtrib.ediporcgKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqregtrib.ediporcgExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(ediporcg.Text));
ediporcg.Text := formatfloat('###,###,##0.00',fValorSp);
end;

end.
