unit upesqest;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqEst = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_estados: TDBGrid;
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
    Label5: TLabel;
    cbxnpais: TDBLookupComboBox;
    Label6: TLabel;
    cbxconvst: TComboBox;
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
    procedure dbg_estadosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cbxconvstKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqEst: TfrmpesqEst;

implementation
   uses ugeral, udados, ufiltroEst, urelEst;
{$R *.dfm}

procedure TfrmpesqEst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_Estados.Active := false;
  frmdados.sql_Estados.Active := false;

  frmdados.cds_Paises.Active := false;
  frmdados.sql_Paises.Active := false;


  Action:=caFree;
  frmPesqEst:=nil;
  form_ativo := '';
end;

procedure tfrmpesqEst.Limpar;
begin
  lblcodigo.Caption := '00000';
  edinome.Text := '';
  edisigla.Text := '';
  edicodibge.Text := '';
  cbxconvst.Text := 'S';
end;

procedure TfrmpesqEst.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edinome.Enabled := true;
edisigla.Enabled := true;
edicodibge.Enabled := true;
cbxnpais.Enabled := true;
btnsalvar.Enabled := true;
cbxconvst.Enabled := true;

Limpar;
if cbxnpais.Enabled then
   cbxnpais.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure TfrmpesqEst.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_Estados.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edinome.Enabled := true;
     edisigla.Enabled := true;
     edicodibge.Enabled := true;
     cbxnpais.Enabled := true;
     cbxconvst.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     carregaficha;
     if cbxnpais.Enabled then
        begin
          cbxnpais.SetFocus;
        end;
     //endi
   end
else
   begin
     edinome.Enabled := false;
     edisigla.Enabled := false;
     edicodibge.Enabled := false;
     cbxnpais.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
     cbxconvst.Enabled := false;

     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('COD1C').asInteger := 0
   end;
//endi


end;

procedure TfrmpesqEst.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_Estados.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_Estados.Filtered;
         cds_Estados.Filtered := false;

         cds_Estados.IndexName := 'codigo';
         cds_Estados.Last;
         //icodigo := cds_Estados.fieldbyname('codigo').asInteger;
         cds_Estados.Append;
         //cds_Estados.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_Estados.Edit;
    cds_Estados.FieldByName('nome').asString := edinome.Text;
    cds_Estados.FieldByName('sigla').asString := edisigla.Text;
    cds_Estados.FieldByName('codibge').asString := edicodibge.Text;
    cds_Estados.FieldByName('convst').asString := cbxconvst.Text;


    cds_estados.FieldByName('cpais').asInteger := frmdados.cds_Temp.fieldbyname('COD1C').asInteger;
    cds_Estados.Post;

     cds_Estados.IndexName := aIndex;
    if cds_Estados.Filter <> '' then
       cds_Estados.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqEst.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_Estados.fieldbyname('codigo').asfloat);
    edinome.Text := cds_Estados.fieldbyname('nome').asString;
    edisigla.Text := cds_Estados.fieldbyname('sigla').asString;
    edicodibge.Text := cds_Estados.fieldbyname('codibge').asString;
    cbxconvst.Text := cds_Estados.fieldbyname('convst').asString; 

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('COD1C').asInteger := cds_estados.FieldByName('cpais').asInteger;
  end;
//endi

end;

procedure TfrmpesqEst.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := 'nome';
frmdados.cds_Estados.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure TfrmpesqEst.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_Estados.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqEst.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqEst.btnproximoClick(Sender: TObject);
begin
frmdados.cds_Estados.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqEst.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_Estados.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqEst.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroEst = nil then
   begin
      frmfiltroEst := tfrmfiltroEst.Create(self);
      frmfiltroEst.Showmodal;
      frmfiltroEst.Free;
   end;
//endi

end;

procedure TfrmpesqEst.dbg_estadosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqEst.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_Estados.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqEst.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqEst.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_Estados.Filtered := false;
    cds_Estados.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqEst.btnimprimirClick(Sender: TObject);
begin
frmrelEst := tfrmrelEst.Create(self);
frmrelEst.relatorio.Preview;
frmrelEst.Free;
end;

procedure TfrmpesqEst.FormCreate(Sender: TObject);
begin

frmdados.sql_Estados.Active := true;
frmdados.cds_Estados.Active := true;

frmdados.sql_Paises.Active := true;
frmdados.cds_Paises.Active := true;


end;

procedure TfrmpesqEst.cbxconvstKeyPress(Sender: TObject; var Key: Char);
begin

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


key := #0;


end;

end.
