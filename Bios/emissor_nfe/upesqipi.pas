unit upesqipi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqIPI = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_ipi: TDBGrid;
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
    procedure dbg_ipiKeyDown(Sender: TObject; var Key: Word;
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
  frmpesqIPI: TfrmpesqIPI;

implementation
   uses ugeral, udados, ufiltroipi, urelipi;
{$R *.dfm}

procedure TfrmpesqIPI.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmdados.cds_ipi.Active := false;
  frmdados.sql_ipi.Active := false;

  Action:=caFree;
  frmPesqipi:=nil;
  form_ativo := '';
end;

procedure tfrmpesqIPI.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  edialiquota.Text := '0,00';
  edireducao.Text := '0,00';

  cbxcpadrao.ItemIndex := 0;


end;

procedure TfrmpesqIPI.btnnovaClick(Sender: TObject);
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

procedure TfrmpesqIPI.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_ipi.RecordCount > 0 then
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

procedure TfrmpesqIPI.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_ipi.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_ipi.Filtered;
         cds_ipi.Filtered := false;

         cds_ipi.IndexName := 'codigo';
         cds_ipi.Last;
         icodigo := cds_ipi.fieldbyname('codigo').asInteger;
         cds_ipi.Append;
         cds_ipi.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_ipi.Edit;
    cds_ipi.FieldByName('descricao').asString := edidescricao.Text;
    cds_ipi.FieldByName('sigla').asString := edisigla.Text;
    cds_ipi.FieldByName('aliquota').asfloat := strtofloat(tirapontos(edialiquota.Text));
    cds_ipi.FieldByName('reducao').asfloat := strtofloat(tirapontos(edireducao.Text));
    cds_ipi.FieldByName('cpadrao').asInteger := cbxcpadrao.ItemIndex;

    cds_ipi.Post;

     cds_ipi.IndexName := aIndex;
    if cds_ipi.Filter <> '' then
       cds_ipi.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqIPI.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_ipi.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_ipi.fieldbyname('descricao').asString;
    edisigla.Text := cds_ipi.fieldbyname('sigla').asString;
    edialiquota.Text := formatfloat('###,###,##0.00', cds_ipi.fieldbyname('aliquota').asfloat);
    edireducao.Text := formatfloat('###,###,##0.00', cds_ipi.fieldbyname('reducao').asfloat);
    cbxcpadrao.ItemIndex := cds_ipi.FieldByName('cpadrao').asInteger;

  end;
//endi

end;

procedure TfrmpesqIPI.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_ipi.IndexName := 'descricao';
frmdados.cds_ipi.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;

cbxcpadrao.Items.Clear;
cbxcpadrao.Items.Add('NÃO');
cbxcpadrao.Items.Add('SIM');

end;

procedure TfrmpesqIPI.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_ipi.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqIPI.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqIPI.btnproximoClick(Sender: TObject);
begin
frmdados.cds_ipi.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqIPI.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_ipi.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqIPI.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroipi = nil then
   begin
      frmfiltroipi := tfrmfiltroipi.Create(self);
      frmfiltroipi.Showmodal;
      frmfiltroipi.Free;
   end;
//endi

end;

procedure TfrmpesqIPI.dbg_ipiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqIPI.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_ipi.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqIPI.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqIPI.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_ipi.Filtered := false;
    cds_ipi.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqIPI.btnimprimirClick(Sender: TObject);
begin
frmrelipi := tfrmrelipi.Create(self);
frmrelipi.relatorio.Preview;
frmrelipi.Free;
end;

procedure TfrmpesqIPI.edialiquotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqIPI.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqIPI.edialiquotaExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edialiquota.Text));
edialiquota.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure TfrmpesqIPI.edireducaoExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edireducao.Text));
edireducao.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure TfrmpesqIPI.FormCreate(Sender: TObject);
begin
frmdados.sql_ipi.Active := true;
frmdados.cds_ipi.Active := true;
end;

procedure TfrmpesqIPI.CBXCPADRAOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqIPI.CBXCPADRAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

end.
