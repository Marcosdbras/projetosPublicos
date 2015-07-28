unit upesqtransportadora;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqtransportadora = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_transportadora: TDBGrid;
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
    procedure dbg_transportadoraKeyDown(Sender: TObject; var Key: Word;
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
  frmpesqtransportadora: Tfrmpesqtransportadora;

implementation
   uses ugeral, udados, ufiltrotransportadora, ureltransportadora,
  upcodibge;
{$R *.dfm}

procedure Tfrmpesqtransportadora.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_transportador.Active := false;
  frmdados.sql_transportador.Active := false;

  frmdados.cds_Estados.Active := false;
  frmdados.sql_Estados.Active := false;

  frmdados.cds_Munic.Active := false;
  frmdados.sql_Munic.Active := false;

  Action:=caFree;
  frmPesqtransportadora:=nil;
  form_ativo := '';
end;

procedure tfrmpesqtransportadora.Limpar;
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

  frmdados.cds_Temp.Edit;
  frmdados.cds_Temp.FieldByName('cod1T').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2T').asInteger := 0;

end;

procedure Tfrmpesqtransportadora.btnnovaClick(Sender: TObject);
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
btnsalvar.Enabled := true;
Limpar;
if edicnpj.Enabled then
   edicnpj.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqtransportadora.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_transportador.RecordCount > 0 then
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

     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;


   end;
//endi


end;

procedure Tfrmpesqtransportadora.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_transportador.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_transportador.Filtered;
         cds_transportador.Filtered := false;

         cds_transportador.IndexName := 'codigo';
         cds_transportador.Last;
         icodigo := cds_transportador.fieldbyname('codigo').asInteger;
         cds_transportador.Append;
         cds_transportador.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_transportador.Edit;
    cds_transportador.FieldByName('cnpj').asString := edicnpj.Text;
    cds_transportador.FieldByName('ie').asString := ediie.Text;
    cds_transportador.FieldByName('im').asString := ediim.Text;
    cds_transportador.FieldByName('nome').asString := edinome.Text;
    cds_transportador.FieldByName('fantasia').asString := edifantasia.Text;
    cds_transportador.FieldByName('telefones').asString := editelefones.Text;
    cds_transportador.FieldByName('email').asString := ediemail.Text;
    cds_transportador.FieldByName('site').asString := edisite.Text;
    cds_transportador.FieldByName('contato').asString := edicontato.Text;
    cds_transportador.FieldByName('endereco').asString := ediendereco.Text;
    cds_transportador.FieldByName('nro').asString := edinro.Text;
    cds_transportador.FieldByName('compl').asString := edicompl.Text;
    cds_transportador.FieldByName('bairro').asString := edibairro.Text;
    cds_transportador.FieldByName('cep').asString := edicep.Text;

    cds_transportador.FieldByName('cest').asInteger := frmdados.cds_Temp.fieldbyname('cod1T').asInteger;
    cds_transportador.FieldByName('cmun').asInteger := frmdados.cds_Temp.fieldbyname('cod2T').asInteger;
    cds_transportador.Post;

     cds_transportador.IndexName := aIndex;
    if cds_transportador.Filter <> '' then
       cds_transportador.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqtransportadora.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_transportador.fieldbyname('codigo').asfloat);
    edicnpj.Text := cds_transportador.fieldbyname('cnpj').asString;
    ediie.Text := cds_transportador.fieldbyname('ie').asString;
    ediim.Text := cds_transportador.fieldbyname('im').asString;
    edinome.Text := cds_transportador.fieldbyname('nome').asString;
    edifantasia.Text := cds_transportador.fieldbyname('fantasia').asString;
    editelefones.Text := cds_transportador.fieldbyname('telefones').asString;
    ediemail.Text := cds_transportador.fieldbyname('email').asString;
    edisite.Text := cds_transportador.fieldbyname('site').asString;
    edicontato.Text := cds_transportador.fieldbyname('contato').asString;
    ediendereco.Text := cds_transportador.fieldbyname('endereco').asString;
    edinro.Text := cds_transportador.fieldbyname('nro').asString;
    edicompl.Text := cds_transportador.fieldbyname('compl').asString;
    edibairro.Text := cds_transportador.fieldbyname('bairro').asString;
    edicep.Text := cds_transportador.fieldbyname('cep').asString;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1T').asInteger := cds_transportador.FieldByName('cest').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2T').asInteger := cds_transportador.FieldByName('cmun').asInteger;

  end;
//endi

end;

procedure Tfrmpesqtransportadora.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := 'nome';
frmdados.cds_transportador.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;

end;

procedure Tfrmpesqtransportadora.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_transportador.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqtransportadora.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqtransportadora.btnproximoClick(Sender: TObject);
begin
frmdados.cds_transportador.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqtransportadora.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_transportador.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqtransportadora.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrotransportadora = nil then
   begin
      frmfiltrotransportadora := tfrmfiltrotransportadora.Create(self);
      frmfiltrotransportadora.Showmodal;
      frmfiltrotransportadora.Free;
   end;
//endi

end;

procedure Tfrmpesqtransportadora.dbg_transportadoraKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqtransportadora.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_transportador.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqtransportadora.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqtransportadora.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_transportador.Filtered := false;
    cds_transportador.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqtransportadora.btnimprimirClick(Sender: TObject);
begin
frmreltransportadora := tfrmreltransportadora.Create(self);
frmreltransportadora.relatorio.Preview;
frmreltransportadora.Free;
end;

procedure Tfrmpesqtransportadora.FormCreate(Sender: TObject);
begin

frmdados.sql_transportador.Active := true;
frmdados.cds_transportador.Active := true;

frmdados.sql_Estados.Active := true;
frmdados.cds_Estados.Active := true;

frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;



end;

procedure Tfrmpesqtransportadora.btnconsultacepClick(Sender: TObject);
begin
  frmpcodibge := tfrmpcodibge.create(self);
  frmpcodibge.showmodal;
  frmpcodibge.free;

end;

end.
