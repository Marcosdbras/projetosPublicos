unit upesqcofins;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqcofins = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_cofins: TDBGrid;
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
    procedure dbg_cofinsKeyDown(Sender: TObject; var Key: Word;
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
  frmpesqcofins: Tfrmpesqcofins;

implementation
   uses ugeral, udados, ufiltrocofins, urelcofins;
{$R *.dfm}

procedure Tfrmpesqcofins.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_cofins.Active := false;
  frmdados.sql_cofins.Active := true;  

  Action:=caFree;
  frmPesqcofins:=nil;
  form_ativo := '';
end;

procedure tfrmpesqcofins.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  edialiquota.Text := '0,00';
  edireducao.Text := '0,00';

  cbxcpadrao.ItemIndex := 0;

end;

procedure Tfrmpesqcofins.btnnovaClick(Sender: TObject);
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

procedure Tfrmpesqcofins.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_cofins.RecordCount > 0 then
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

procedure Tfrmpesqcofins.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_cofins.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_cofins.Filtered;
         cds_cofins.Filtered := false;

         cds_cofins.IndexName := 'codigo';
         cds_cofins.Last;
         //icodigo := cds_cofins.fieldbyname('codigo').asInteger;
         cds_cofins.Append;
         //cds_cofins.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_cofins.Edit;
    cds_cofins.FieldByName('descricao').asString := edidescricao.Text;
    cds_cofins.FieldByName('sigla').asString := edisigla.Text;
    cds_cofins.FieldByName('aliquota').asfloat := strtofloat(tirapontos(edialiquota.Text));
    cds_cofins.FieldByName('reducao').asfloat := strtofloat(tirapontos(edireducao.Text));
    cds_cofins.FieldByName('cpadrao').asInteger := cbxcpadrao.ItemIndex;

    cds_cofins.Post;

     cds_cofins.IndexName := aIndex;
    if cds_cofins.Filter <> '' then
       cds_cofins.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqcofins.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_cofins.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_cofins.fieldbyname('descricao').asString;
    edisigla.Text := cds_cofins.fieldbyname('sigla').asString;
    edialiquota.Text := formatfloat('###,###,##0.00', cds_cofins.fieldbyname('aliquota').asfloat);
    edireducao.Text := formatfloat('###,###,##0.00', cds_cofins.fieldbyname('reducao').asfloat);
    cbxcpadrao.ItemIndex := cds_cofins.FieldByName('cpadrao').asInteger;

  end;
//endi

end;

procedure Tfrmpesqcofins.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_cofins.IndexName := 'descricao';
frmdados.cds_cofins.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;

cbxcpadrao.Items.Clear;
cbxcpadrao.Items.Add('NÃO');
cbxcpadrao.Items.Add('SIM');

end;

procedure Tfrmpesqcofins.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_cofins.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqcofins.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqcofins.btnproximoClick(Sender: TObject);
begin
frmdados.cds_cofins.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqcofins.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_cofins.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqcofins.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrocofins = nil then
   begin
      frmfiltrocofins := tfrmfiltrocofins.Create(self);
      frmfiltrocofins.Showmodal;
      frmfiltrocofins.Free;
   end;
//endi

end;

procedure Tfrmpesqcofins.dbg_cofinsKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqcofins.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_cofins.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqcofins.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqcofins.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_cofins.Filtered := false;
    cds_cofins.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqcofins.btnimprimirClick(Sender: TObject);
begin
frmrelcofins := tfrmrelcofins.Create(self);
frmrelcofins.relatorio.Preview;
frmrelcofins.Free;
end;

procedure Tfrmpesqcofins.edialiquotaKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcofins.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqcofins.edialiquotaExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edialiquota.Text));
edialiquota.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqcofins.edireducaoExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edireducao.Text));
edireducao.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqcofins.FormCreate(Sender: TObject);
begin
frmdados.sql_cofins.Active := true;
frmdados.cds_cofins.Active := true;

end;

procedure Tfrmpesqcofins.CBXCPADRAOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
end;

procedure Tfrmpesqcofins.CBXCPADRAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

end.
