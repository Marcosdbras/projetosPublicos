unit upesqemitente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqemitente = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_emitente: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    Label4: TLabel;
    lblcep: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    edinome: TEdit;
    EDIFANTASIA: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Label5: TLabel;
    cbxnest: TDBLookupComboBox;
    Label6: TLabel;
    edicnpj: TEdit;
    Label7: TLabel;
    ediie: TEdit;
    Label8: TLabel;
    editelefones: TEdit;
    Label9: TLabel;
    ediemail: TEdit;
    Label10: TLabel;
    edisite: TEdit;
    Label11: TLabel;
    edicontato: TEdit;
    Label12: TLabel;
    ediendereco: TEdit;
    Label13: TLabel;
    edinro: TEdit;
    Label14: TLabel;
    edicompl: TEdit;
    Label15: TLabel;
    edibairro: TEdit;
    Label3: TLabel;
    cbxnmun: TDBLookupComboBox;
    Label16: TLabel;
    ediim: TEdit;
    Label17: TLabel;
    cbxdescregtrib: TDBLookupComboBox;
    MMOObs: TMemo;
    Label18: TLabel;
    edicep: TMaskEdit;
    btnconsultacep: TSpeedButton;
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
    procedure dbg_emitenteKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnconsultacepClick(Sender: TObject);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqemitente: Tfrmpesqemitente;

implementation
   uses ugeral, udados, ufiltroemitente, urelemitente, upcodibge;
{$R *.dfm}

procedure Tfrmpesqemitente.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmdados.cds_emitente.Active := false;
  frmdados.sql_emitente.Active := false;

  frmdados.cds_Munic.Active := false;
  frmdados.sql_Munic.Active := false;

  frmdados.cds_regtrib.Active := false;
  frmdados.sql_regtrib.Active := false;

  frmdados.cds_estados.Active := false;
  frmdados.sql_estados.Active := false;


  Action:=caFree;
  frmPesqemitente:=nil;
  form_ativo := '';
end;

procedure tfrmpesqemitente.Limpar;
begin
  lblcodigo.Caption := '00000';
  edicnpj.Text := '';
  ediie.Text := '';
  ediim.Text := '';
  edinome.Text := '';
  edifantasia.Text := '';
  editelefones.Text := '';
  ediemail.Text := '';
  edisite.Text := '';
  edicontato.Text := '';
  ediendereco.Text := '';
  edinro.Text := '';
  edicompl.Text := '';
  edibairro.Text := '';
  edicep.Text := '';

  MMOObs.Lines.Clear;

  frmdados.cds_Temp.Edit;
  frmdados.cds_Temp.FieldByName('cod1ee').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2ee').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3ee').asInteger := 0;

end;

procedure Tfrmpesqemitente.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edicnpj.Enabled := true;
ediie.Enabled := true;
ediim.Enabled := true;
edinome.Enabled := true;
edifantasia.Enabled := true;
editelefones.Enabled := true;
ediemail.Enabled := true;
edisite.Enabled := true;
edicontato.Enabled := true;
ediendereco.Enabled := true;
edinro.Enabled := true;
edicompl.Enabled := true;
edibairro.Enabled := true;
edicep.Enabled := true;
cbxnest.Enabled := true;
cbxnmun.Enabled := true;
cbxdescregtrib.Enabled := true;
MMOobs.Enabled := true;

btnsalvar.Enabled := true;
Limpar;
if edicnpj.Enabled then
   edicnpj.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqemitente.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_emitente.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edicnpj.Enabled := true;
     ediie.Enabled := true;
     ediim.Enabled := true;
     edinome.Enabled := true;
     edifantasia.Enabled := true;
     editelefones.Enabled := true;
     ediemail.Enabled := true;
     edisite.Enabled := true;
     edicontato.Enabled := true;
     ediendereco.Enabled := true;
     edinro.Enabled := true;
     edicompl.Enabled := true;
     edibairro.Enabled := true;
     edicep.Enabled := true;
     cbxnest.Enabled := true;
     cbxnmun.Enabled := true;
     cbxdescregtrib.Enabled := true;
     MMOobs.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     carregaficha;
     if edicnpj.Enabled then
        begin
          edicnpj.SetFocus;
        end;
     //endi
   end
else
   begin
     edicnpj.Enabled := false;
     ediie.Enabled := false;
     ediim.Enabled := false;
     edinome.Enabled := false;
     edifantasia.Enabled := false;
     editelefones.Enabled := false;
     ediemail.Enabled := false;
     edisite.Enabled := false;
     edicontato.Enabled := false;
     ediendereco.Enabled := false;
     edinro.Enabled := false;
     edicompl.Enabled := false;
     edibairro.Enabled := false;
     edicep.Enabled := false;
     cbxnest.Enabled := false;
     cbxnmun.Enabled := false;
     cbxdescregtrib.Enabled := false;
     MMOobs.Enabled := false;

     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;


   end;
//endi


end;

procedure Tfrmpesqemitente.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_emitente.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_emitente.Filtered;
         cds_emitente.Filtered := false;

         cds_emitente.IndexName := 'codigo';
         cds_emitente.Last;
         //icodigo := cds_emitente.fieldbyname('codigo').asInteger;
         cds_emitente.Append;
         //cds_emitente.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_emitente.Edit;
    cds_emitente.FieldByName('cnpj').asString := edicnpj.Text;
    cds_emitente.FieldByName('ie').asString := ediie.Text;
    cds_emitente.FieldByName('im').asString := ediim.Text;
    cds_emitente.FieldByName('nome').asString := edinome.Text;
    cds_emitente.FieldByName('fantasia').asString := edifantasia.Text;
    cds_emitente.FieldByName('telefones').asString := editelefones.Text;
    cds_emitente.FieldByName('email').asString := ediemail.Text;
    cds_emitente.FieldByName('site').asString := edisite.Text;
    cds_emitente.FieldByName('contato').asString := edicontato.Text;
    cds_emitente.FieldByName('endereco').asString := ediendereco.Text;
    cds_emitente.FieldByName('nro').asString := edinro.Text;
    cds_emitente.FieldByName('compl').asString := edicompl.Text;
    cds_emitente.FieldByName('bairro').asString := edibairro.Text;
    cds_emitente.FieldByName('cep').asString := edicep.Text;
    cds_emitente.FieldByName('obs').asString := MMOobs.Text;


    cds_emitente.FieldByName('cest').asInteger := frmdados.cds_Temp.fieldbyname('cod1ee').asInteger;
    cds_emitente.FieldByName('cmun').asInteger := frmdados.cds_Temp.fieldbyname('cod2ee').asInteger;
    cds_emitente.FieldByName('cregtrib').asInteger := frmdados.cds_Temp.fieldbyname('cod3ee').asInteger;
    cds_emitente.Post;

     cds_emitente.IndexName := aIndex;
    if cds_emitente.Filter <> '' then
       cds_emitente.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqemitente.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_emitente.fieldbyname('codigo').asfloat);
    edicnpj.Text := cds_emitente.fieldbyname('cnpj').asString;
    ediie.Text := cds_emitente.fieldbyname('ie').asString;
    ediim.Text := cds_emitente.fieldbyname('im').asString;
    edinome.Text := cds_emitente.fieldbyname('nome').asString;
    edifantasia.Text := cds_emitente.fieldbyname('fantasia').asString;
    editelefones.Text := cds_emitente.fieldbyname('telefones').asString;
    ediemail.Text := cds_emitente.fieldbyname('email').asString;
    edisite.Text := cds_emitente.fieldbyname('site').asString;
    edicontato.Text := cds_emitente.fieldbyname('contato').asString;
    ediendereco.Text := cds_emitente.fieldbyname('endereco').asString;
    edinro.Text := cds_emitente.fieldbyname('nro').asString;
    edicompl.Text := cds_emitente.fieldbyname('compl').asString;
    edibairro.Text := cds_emitente.fieldbyname('bairro').asString;
    edicep.Text := cds_emitente.fieldbyname('cep').asString;
    MMOobs.Text := cds_emitente.fieldbyname('obs').asString;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1ee').asInteger := cds_emitente.FieldByName('cest').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2ee').asInteger := cds_emitente.FieldByName('cmun').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3ee').asInteger := cds_emitente.FieldByName('cregtrib').asInteger;

  end;
//endi

end;

procedure Tfrmpesqemitente.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := 'nome';
frmdados.cds_emitente.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqemitente.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_emitente.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqemitente.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqemitente.btnproximoClick(Sender: TObject);
begin
frmdados.cds_emitente.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqemitente.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_emitente.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqemitente.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroemitente = nil then
   begin
      frmfiltroemitente := tfrmfiltroemitente.Create(self);
      frmfiltroemitente.Showmodal;
      frmfiltroemitente.Free;
   end;
//endi

end;

procedure Tfrmpesqemitente.dbg_emitenteKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqemitente.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_emitente.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqemitente.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqemitente.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_emitente.Filtered := false;
    cds_emitente.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqemitente.btnimprimirClick(Sender: TObject);
begin
frmrelemitente := tfrmrelemitente.Create(self);
frmrelemitente.relatorio.Preview;
frmrelemitente.Free;
end;

procedure Tfrmpesqemitente.FormCreate(Sender: TObject);
begin

frmdados.sql_emitente.Active := true;
frmdados.cds_emitente.Active := true;

frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;

frmdados.sql_regtrib.Active := true;
frmdados.cds_regtrib.Active := true;

frmdados.sql_estados.Active := true;
frmdados.cds_estados.Active := true;


end;

procedure Tfrmpesqemitente.btnconsultacepClick(Sender: TObject);
begin
  frmpcodibge := tfrmpcodibge.create(self);
  frmpcodibge.showmodal;
  frmpcodibge.free;

end;

end.
