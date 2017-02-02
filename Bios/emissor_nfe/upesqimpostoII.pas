unit upesqimpostoII;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqimpostoII = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_impostoII: TDBGrid;
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
    procedure dbg_impostoIIKeyDown(Sender: TObject; var Key: Word;
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
  frmpesqimpostoII: TfrmpesqimpostoII;

implementation
   uses ugeral, udados, ufiltroimpostoII, urelimpostoII;
{$R *.dfm}

procedure TfrmpesqimpostoII.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.sql_ImpostoII.Active := false;
  frmdados.cds_impostoII.Active := false;

  Action:=caFree;
  frmPesqimpostoII:=nil;
  form_ativo := '';
end;

procedure tfrmpesqimpostoII.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  edialiquota.Text := '0,00';
  edireducao.Text := '0,00';

end;

procedure TfrmpesqimpostoII.btnnovaClick(Sender: TObject);
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

procedure TfrmpesqimpostoII.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_impostoII.RecordCount > 0 then
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

procedure TfrmpesqimpostoII.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_impostoII.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_impostoII.Filtered;
         cds_impostoII.Filtered := false;

         cds_impostoII.IndexName := 'codigo';
         cds_impostoII.Last;
         //icodigo := cds_impostoII.fieldbyname('codigo').asInteger;

         cds_impostoII.Append;
         //cds_impostoII.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_impostoII.Edit;
    cds_impostoII.FieldByName('descricao').asString := edidescricao.Text;
    cds_impostoII.FieldByName('sigla').asString := edisigla.Text;
    cds_impostoII.FieldByName('aliquota').asfloat := strtofloat(tirapontos(edialiquota.Text));
    cds_impostoII.FieldByName('reducao').asfloat := strtofloat(tirapontos(edireducao.Text));
    cds_impostoII.Post;

     cds_impostoII.IndexName := aIndex;
    if cds_impostoII.Filter <> '' then
       cds_impostoII.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqimpostoII.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_impostoII.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_impostoII.fieldbyname('descricao').asString;
    edisigla.Text := cds_impostoII.fieldbyname('sigla').asString;
    edialiquota.Text := formatfloat('###,###,##0.00', cds_impostoII.fieldbyname('aliquota').asfloat);
    edireducao.Text := formatfloat('###,###,##0.00', cds_impostoII.fieldbyname('reducao').asfloat);

  end;
//endi

end;

procedure TfrmpesqimpostoII.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_impostoII.IndexName := 'descricao';
frmdados.cds_impostoII.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure TfrmpesqimpostoII.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_impostoII.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqimpostoII.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqimpostoII.btnproximoClick(Sender: TObject);
begin
frmdados.cds_impostoII.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqimpostoII.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_impostoII.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqimpostoII.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroimpostoII = nil then
   begin
      frmfiltroimpostoII := tfrmfiltroimpostoII.Create(self);
      frmfiltroimpostoII.Showmodal;
      frmfiltroimpostoII.Free;
   end;
//endi

end;

procedure TfrmpesqimpostoII.dbg_impostoIIKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqimpostoII.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_impostoII.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqimpostoII.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqimpostoII.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_impostoII.Filtered := false;
    cds_impostoII.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqimpostoII.btnimprimirClick(Sender: TObject);
begin
frmrelimpostoII := tfrmrelimpostoII.Create(self);
frmrelimpostoII.relatorio.Preview;
frmrelimpostoII.Free;
end;

procedure TfrmpesqimpostoII.edialiquotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqimpostoII.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqimpostoII.edialiquotaExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edialiquota.Text));
edialiquota.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure TfrmpesqimpostoII.edireducaoExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edireducao.Text));
edireducao.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure TfrmpesqimpostoII.FormCreate(Sender: TObject);
begin
frmdados.sql_ImpostoII.Active := true;
frmdados.cds_impostoII.Active := true;
end;

end.
