unit upesqpaises;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqpaises = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_paises: TDBGrid;
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
    edinome: TEdit;
    edisigla: TEdit;
    edicodibge: TEdit;
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
    procedure edinomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnproximoClick(Sender: TObject);
    procedure btnanteriorClick(Sender: TObject);
    procedure btnfiltrarClick(Sender: TObject);
    procedure dbg_paisesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
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
  frmpesqpaises: Tfrmpesqpaises;

implementation
   uses ugeral, udados, ufiltropaises, urelpaises;
{$R *.dfm}

procedure Tfrmpesqpaises.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_Paises.Active := false;
  frmdados.sql_Paises.Active := false;

  Action:=caFree;
  frmPesqPaises:=nil;
  form_ativo := '';
end;

procedure tfrmpesqpaises.Limpar;
begin
  lblcodigo.Caption := '00000';
  edinome.Text := '';
  edisigla.Text := '';
  edicodibge.Text := '';
end;

procedure Tfrmpesqpaises.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edinome.Enabled := true;
edisigla.Enabled := true;
edicodibge.Enabled := true;
btnsalvar.Enabled := true;
Limpar;
edinome.SetFocus;
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqpaises.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_Paises.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edinome.Enabled := true;
     edisigla.Enabled := true;
     edicodibge.Enabled := true;
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
     edicodibge.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
   end;
//endi


end;

procedure Tfrmpesqpaises.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_paises.IndexName;

    if sOpcao = 'I' then
       begin
         bFiltrar := cds_paises.Filtered;
         cds_paises.Filtered := false;
         cds_paises.IndexName := 'codigo';
         cds_paises.Last;
         //icodigo := cds_paises.fieldbyname('codigo').asInteger;
         cds_paises.Append;
         //cds_paises.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_paises.Edit;
    cds_paises.FieldByName('nome').asString := edinome.Text;
    cds_paises.FieldByName('sigla').asString := edisigla.Text;
    cds_paises.FieldByName('codibge').asString := edicodibge.Text;
    cds_paises.Post;

    cds_paises.IndexName := aIndex;

    if cds_paises.Filter <> '' then
       cds_paises.Filtered := bFiltrar;
    //endi

  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqpaises.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_paises.fieldbyname('codigo').asfloat);
    edinome.Text := cds_paises.fieldbyname('nome').asString;
    edisigla.Text := cds_paises.fieldbyname('sigla').asString;
    edicodibge.Text := cds_paises.fieldbyname('codibge').asString;
  end;
//endi

end;

procedure Tfrmpesqpaises.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqpaises.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_Paises.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqpaises.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqpaises.btnproximoClick(Sender: TObject);
begin
frmdados.cds_Paises.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqpaises.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_Paises.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqpaises.btnfiltrarClick(Sender: TObject);
begin
if frmfiltropaises = nil then
   begin
      frmfiltropaises := tfrmfiltropaises.Create(self);
      frmfiltropaises.Showmodal;
      frmfiltropaises.Free;
   end;
//endi

end;

procedure Tfrmpesqpaises.dbg_paisesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqpaises.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_Paises.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqpaises.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqpaises.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_paises.Filtered := false;
    cds_paises.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqpaises.btnimprimirClick(Sender: TObject);
begin
frmrelpaises := tfrmrelpaises.Create(self);
frmrelpaises.relatorio.Preview;
frmrelpaises.Free;
end;

procedure Tfrmpesqpaises.FormCreate(Sender: TObject);
begin
frmdados.sql_Paises.Active := true;
frmdados.cds_Paises.Active := true;
end;

end.
