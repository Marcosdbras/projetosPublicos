unit upesqpis;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqpis = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_pis: TDBGrid;
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
    Label9: TLabel;
    CBXCPADRAO: TComboBox;
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
    procedure dbg_pisKeyDown(Sender: TObject; var Key: Word;
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
    procedure CBXCPADRAOKeyPress(Sender: TObject; var Key: Char);
    procedure CBXCPADRAOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqpis: Tfrmpesqpis;

implementation
   uses ugeral, udados, ufiltropis, urelpis;
{$R *.dfm}

procedure Tfrmpesqpis.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_pis.Active := false;
  frmdados.sql_pis.Active := false;

  Action:=caFree;
  frmPesqpis:=nil;
  form_ativo := '';
end;

procedure tfrmpesqpis.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  edialiquota.Text := '0,00';
  edireducao.Text := '0,00';

  cbxcpadrao.ItemIndex := 0;

end;

procedure Tfrmpesqpis.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
edisigla.Enabled := true;
edialiquota.Enabled := true;
edireducao.Enabled := true;
btnsalvar.Enabled := true;
cbxcpadrao.Enabled := true;

Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqpis.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_pis.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     edisigla.Enabled := true;
     edialiquota.Enabled := true;
     edireducao.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     cbxcpadrao.Enabled := true;

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
     cbxcpadrao.Enabled := false;
     //frmdados.cds_Temp.Edit;
     //frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure Tfrmpesqpis.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_pis.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_pis.Filtered;
         cds_pis.Filtered := false;

         cds_pis.IndexName := 'codigo';
         cds_pis.Last;
         icodigo := cds_pis.fieldbyname('codigo').asInteger;
         cds_pis.Append;
         cds_pis.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_pis.Edit;
    cds_pis.FieldByName('descricao').asString := edidescricao.Text;
    cds_pis.FieldByName('sigla').asString := edisigla.Text;
    cds_pis.FieldByName('aliquota').asfloat := strtofloat(tirapontos(edialiquota.Text));
    cds_pis.FieldByName('reducao').asfloat := strtofloat(tirapontos(edireducao.Text));
    cds_pis.FieldByName('cpadrao').asInteger := cbxcpadrao.ItemIndex;
    
    cds_pis.Post;

     cds_pis.IndexName := aIndex;
    if cds_pis.Filter <> '' then
       cds_pis.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqpis.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_pis.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_pis.fieldbyname('descricao').asString;
    edisigla.Text := cds_pis.fieldbyname('sigla').asString;
    edialiquota.Text := formatfloat('###,###,##0.00', cds_pis.fieldbyname('aliquota').asfloat);
    edireducao.Text := formatfloat('###,###,##0.00', cds_pis.fieldbyname('reducao').asfloat);
    cbxcpadrao.ItemIndex := cds_pis.FieldByName('cpadrao').asInteger;

  end;
//endi

end;

procedure Tfrmpesqpis.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_pis.IndexName := 'descricao';
frmdados.cds_pis.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;

cbxcpadrao.Items.Clear;
cbxcpadrao.Items.Add('NÃO');
cbxcpadrao.Items.Add('SIM');


end;

procedure Tfrmpesqpis.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_pis.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqpis.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqpis.btnproximoClick(Sender: TObject);
begin
frmdados.cds_pis.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqpis.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_pis.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqpis.btnfiltrarClick(Sender: TObject);
begin
if frmfiltropis = nil then
   begin
      frmfiltropis := tfrmfiltropis.Create(self);
      frmfiltropis.Showmodal;
      frmfiltropis.Free;
   end;
//endi

end;

procedure Tfrmpesqpis.dbg_pisKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqpis.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_pis.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqpis.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqpis.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_pis.Filtered := false;
    cds_pis.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqpis.btnimprimirClick(Sender: TObject);
begin
frmrelpis := tfrmrelpis.Create(self);
frmrelpis.relatorio.Preview;
frmrelpis.Free;
end;

procedure Tfrmpesqpis.edialiquotaKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqpis.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqpis.edialiquotaExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edialiquota.Text));
edialiquota.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqpis.edireducaoExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edireducao.Text));
edireducao.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqpis.FormCreate(Sender: TObject);
begin
frmdados.sql_pis.Active := true;
frmdados.cds_pis.Active := true;
end;

procedure Tfrmpesqpis.CBXCPADRAOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqpis.CBXCPADRAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

end.
