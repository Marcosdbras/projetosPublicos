unit upesqnatop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqnatop = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_natop: TDBGrid;
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
    Label17: TLabel;
    cbxdesccfop_cod11: TDBLookupComboBox;
    Label7: TLabel;
    cbxdesccfop_cod11prodnf: TDBLookupComboBox;
    Label3: TLabel;
    cbxdescicms_cod1: TDBLookupComboBox;
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
    procedure dbg_natopKeyDown(Sender: TObject; var Key: Word;
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
  frmpesqnatop: Tfrmpesqnatop;

implementation
   uses ugeral, udados, ufiltronatop, urelnatop;
{$R *.dfm}

procedure Tfrmpesqnatop.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmdados.cds_natop.Active := false;
  frmdados.sql_natop.Active := false;

  frmdados.cds_icms.Active := false;
  frmdados.sql_icms.Active := false;

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  Action:=caFree;
  frmPesqnatop:=nil;
  form_ativo := '';
end;

procedure tfrmpesqnatop.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';

end;

procedure Tfrmpesqnatop.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
btnsalvar.Enabled := true;
cbxdesccfop_cod11.Enabled := true;
cbxdesccfop_cod11prodnf.Enabled := true;
cbxdescicms_cod1.Enabled := true;


Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqnatop.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_natop.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     cbxdesccfop_cod11.Enabled := true;
     cbxdesccfop_cod11prodnf.Enabled := true;
     cbxdescicms_cod1.Enabled := true;

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
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;

     cbxdesccfop_cod11.Enabled := false;
     cbxdesccfop_cod11prodnf.Enabled := false;
     cbxdescicms_cod1.Enabled := false;


     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure Tfrmpesqnatop.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_natop.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_natop.Filtered;
         cds_natop.Filtered := false;

         cds_natop.IndexName := 'codigo';
         cds_natop.Last;
         //icodigo := cds_natop.fieldbyname('codigo').asInteger;
         cds_natop.Append;
         //cds_natop.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_natop.Edit;
    cds_natop.FieldByName('descricao').asString := edidescricao.Text;
    cds_natop.FieldByName('ccfop').asInteger := frmdados.cds_Temp.fieldbyname('cod11P').asInteger;
    cds_natop.FieldByName('ccfopf').asInteger := frmdados.cds_Temp.fieldbyname('cod11Prodnf').asInteger;
    cds_natop.FieldByName('cicms').asInteger := frmdados.cds_Temp.fieldbyname('cod1Prodnf').asInteger;

    cds_natop.Post;

     cds_natop.IndexName := aIndex;
    if cds_natop.Filter <> '' then
       cds_natop.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqnatop.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_natop.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_natop.fieldbyname('descricao').asString;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod11P').asInteger := cds_natop.FieldByName('ccfop').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11Prodnf').asInteger := cds_natop.FieldByName('ccfopf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod1Prodnf').asInteger := cds_natop.FieldByName('cicms').asInteger;


  end;
//endi

end;

procedure Tfrmpesqnatop.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_natop.IndexName := 'descricao';
frmdados.cds_natop.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqnatop.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_natop.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqnatop.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnatop.btnproximoClick(Sender: TObject);
begin
frmdados.cds_natop.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqnatop.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_natop.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqnatop.btnfiltrarClick(Sender: TObject);
begin
if frmfiltronatop = nil then
   begin
      frmfiltronatop := tfrmfiltronatop.Create(self);
      frmfiltronatop.Showmodal;
      frmfiltronatop.Free;
   end;
//endi

end;

procedure Tfrmpesqnatop.dbg_natopKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqnatop.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_natop.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqnatop.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqnatop.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_natop.Filtered := false;
    cds_natop.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqnatop.btnimprimirClick(Sender: TObject);
begin
frmrelnatop := tfrmrelnatop.Create(self);
frmrelnatop.relatorio.Preview;
frmrelnatop.Free;
end;

procedure Tfrmpesqnatop.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqnatop.FormCreate(Sender: TObject);
begin

frmdados.sql_natop.Active := true;
frmdados.cds_natop.Active := true;

frmdados.sql_icms.Active := true;
frmdados.cds_icms.Active := true;

frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;


end;

end.
