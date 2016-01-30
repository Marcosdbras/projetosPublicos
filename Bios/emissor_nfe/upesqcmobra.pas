unit upesqcmobra;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqcmobra = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_cmobra: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    edidescricao: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Label3: TLabel;
    ediprve: TEdit;
    Label7: TLabel;
    cbxdesccTIPOSERV_cod1m: TDBLookupComboBox;
    Label8: TLabel;
    cbxdescCRCSERV_cod2M: TDBLookupComboBox;
    Label9: TLabel;
    cbxdescCIMPOSTOI_cod3M: TDBLookupComboBox;
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
    procedure dbg_cmobraKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edibscalcstKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveExit(Sender: TObject);
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
  frmpesqcmobra: Tfrmpesqcmobra;

implementation
   uses ugeral, udados, ufiltrocmobra, urelcmobra;
{$R *.dfm}

procedure Tfrmpesqcmobra.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_cmobra.Active := false;
  frmdados.sql_cmobra.Active := false;

  frmdados.cds_tiposerv.Active := false;
  frmdados.sql_tiposerv.Active := false;

  frmdados.cds_rcserv.Active := false;
  frmdados.sql_rcserv.Active := false;

  frmdados.cds_impostoI.Active := false;
  frmdados.sql_impostoI.Active := true;


  Action:=caFree;
  frmPesqcmobra:=nil;
  form_ativo := '';
end;

procedure tfrmpesqcmobra.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  ediprve.Text := '0,00';

  frmdados.cds_Temp.Edit;
  frmdados.cds_Temp.FieldByName('cod1M').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2M').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3M').asInteger := 0;


end;

procedure Tfrmpesqcmobra.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
ediprve.Enabled := true;
cbxdesccrcserv_cod2M.Enabled := true;
cbxdescctiposerv_cod1M.Enabled := true;
cbxdesccimpostoi_cod3M.Enabled := true;


btnsalvar.Enabled := true;
Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;

end;

procedure Tfrmpesqcmobra.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_cmobra.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     ediprve.Enabled := true;
     cbxdesccrcserv_cod2M.Enabled := true;
     cbxdescctiposerv_cod1M.Enabled := true;
     cbxdesccimpostoi_cod3M.Enabled := true;
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
     ediprve.Enabled := false;
     cbxdesccrcserv_cod2M.Enabled := false;
     cbxdescctiposerv_cod1M.Enabled := false;
     cbxdesccimpostoi_cod3M.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
   end;
//endi


end;

procedure Tfrmpesqcmobra.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_cmobra.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_cmobra.Filtered;
         cds_cmobra.Filtered := false;

         cds_cmobra.IndexName := 'codigo';
         cds_cmobra.Last;
         //icodigo := cds_cmobra.fieldbyname('codigo').asInteger;
         cds_cmobra.Append;
         //cds_cmobra.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_cmobra.Edit;
    cds_cmobra.FieldByName('descricao').asString := edidescricao.Text;
    cds_cmobra.FieldByName('prve').asfloat := strtofloat(tirapontos(ediprve.Text));

    cds_cmobra.FieldByName('crcserv').asInteger := frmdados.cds_Temp.fieldbyname('cod1M').asInteger;
    cds_cmobra.FieldByName('ctiposerv').asInteger := frmdados.cds_Temp.fieldbyname('cod2M').asInteger;
    cds_cmobra.FieldByName('cimpostoi').asInteger := frmdados.cds_Temp.fieldbyname('cod3M').asInteger;
    cds_cmobra.Post;

     cds_cmobra.IndexName := aIndex;
    if cds_cmobra.Filter <> '' then
       cds_cmobra.Filtered := bFiltrar;
    //endi



  end;
//endth
sOpcao := 'A';
pctdados.TabIndex := 0;

end;

procedure tfrmpesqcmobra.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_cmobra.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_cmobra.fieldbyname('descricao').asString;
    ediprve.Text := formatfloat('###,###,##0.00', cds_cmobra.fieldbyname('prve').asfloat);


    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1M').asInteger := cds_cmobra.FieldByName('crcserv').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2M').asInteger := cds_cmobra.FieldByName('ctiposerv').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3M').asInteger := cds_cmobra.FieldByName('cimpostoi').asInteger;



  end;
//endi

end;

procedure Tfrmpesqcmobra.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_cmobra.IndexName := 'descricao';
frmdados.cds_cmobra.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqcmobra.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_cmobra.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqcmobra.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqcmobra.btnproximoClick(Sender: TObject);
begin
frmdados.cds_cmobra.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqcmobra.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_cmobra.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqcmobra.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrocmobra = nil then
   begin
      frmfiltrocmobra := tfrmfiltrocmobra.Create(self);
      frmfiltrocmobra.Showmodal;
      frmfiltrocmobra.Free;
   end;
//endi

end;

procedure Tfrmpesqcmobra.dbg_cmobraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqcmobra.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_cmobra.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqcmobra.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqcmobra.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_cmobra.Filtered := false;
    cds_cmobra.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqcmobra.btnimprimirClick(Sender: TObject);
begin
frmrelcmobra := tfrmrelcmobra.Create(self);
frmrelcmobra.relatorio.Preview;
frmrelcmobra.Free;
end;

procedure Tfrmpesqcmobra.ediprveKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcmobra.edibscalcstKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcmobra.ediprveExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(ediprve.Text));
ediprve.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqcmobra.FormCreate(Sender: TObject);
begin

frmdados.sql_cmobra.Active := true;
frmdados.cds_cmobra.Active := true;

frmdados.sql_tiposerv.Active := true;
frmdados.cds_tiposerv.Active := true;

frmdados.sql_rcserv.Active := true;
frmdados.cds_rcserv.Active := true;

frmdados.sql_impostoi.Active := true;
frmdados.cds_impostoI.Active := true;

end;

end.
