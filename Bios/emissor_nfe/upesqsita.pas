unit upesqsita;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqSita = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_sita: TDBGrid;
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
    procedure dbg_sitaKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edireducaoKeyPress(Sender: TObject; var Key: Char);
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
  frmpesqSita: TfrmpesqSita;

implementation
   uses ugeral, udados, ufiltrosita, urelsita;
{$R *.dfm}

procedure TfrmpesqSita.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.sql_sita.Active := false;
  frmdados.cds_sita.Active := false;

  Action:=caFree;
  frmPesqsita:=nil;
  form_ativo := '';
end;

procedure tfrmpesqSita.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';

  cbxcpadrao.ItemIndex := 0;

end;

procedure TfrmpesqSita.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
edisigla.Enabled := true;
btnsalvar.Enabled := true;
cbxcpadrao.Enabled := true;

Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure TfrmpesqSita.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_sita.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     edisigla.Enabled := true;
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
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
     cbxcpadrao.Enabled := false;

     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure TfrmpesqSita.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_sita.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_sita.Filtered;
         cds_sita.Filtered := false;

         cds_sita.IndexName := 'codigo';
         cds_sita.Last;
         //icodigo := cds_sita.fieldbyname('codigo').asInteger;

         cds_sita.Append;
         //cds_sita.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_sita.Edit;
    cds_sita.FieldByName('descricao').asString := edidescricao.Text;
    cds_sita.FieldByName('sigla').asString := edisigla.Text;
    cds_sita.FieldByName('cpadrao').asInteger := cbxcpadrao.ItemIndex;
    cds_sita.Post;

     cds_sita.IndexName := aIndex;
    if cds_sita.Filter <> '' then
       cds_sita.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqSita.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_sita.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_sita.fieldbyname('descricao').asString;
    edisigla.Text := cds_sita.fieldbyname('sigla').asString;
    cbxcpadrao.ItemIndex := cds_sita.FieldByName('cpadrao').asInteger;

  end;
//endi

end;

procedure TfrmpesqSita.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_sita.IndexName := 'descricao';
frmdados.cds_sita.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;

cbxcpadrao.Items.Clear;
cbxcpadrao.Items.Add('NÃO');
cbxcpadrao.Items.Add('SIM');


end;

procedure TfrmpesqSita.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_sita.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqSita.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqSita.btnproximoClick(Sender: TObject);
begin
frmdados.cds_sita.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqSita.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_sita.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqSita.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrosita = nil then
   begin
      frmfiltrosita := tfrmfiltrosita.Create(self);
      frmfiltrosita.Showmodal;
      frmfiltrosita.Free;
   end;
//endi

end;

procedure TfrmpesqSita.dbg_sitaKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqSita.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_sita.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqSita.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqSita.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_sita.Filtered := false;
    cds_sita.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqSita.btnimprimirClick(Sender: TObject);
begin
frmrelsita := tfrmrelsita.Create(self);
frmrelsita.relatorio.Preview;
frmrelsita.Free;
end;

procedure TfrmpesqSita.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqSita.FormCreate(Sender: TObject);
begin
frmdados.sql_sita.Active := true;
frmdados.cds_sita.Active := true;
end;

procedure TfrmpesqSita.CBXCPADRAOKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqSita.CBXCPADRAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

end.
