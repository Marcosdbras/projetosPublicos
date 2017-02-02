unit upesqfornecedores;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqfornecedores = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_fornecedores: TDBGrid;
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
    cbxdesctransp: TDBLookupComboBox;
    MMOObs: TMemo;
    Label18: TLabel;
    edicep: TMaskEdit;
    btnconsultacep: TSpeedButton;
    Label19: TLabel;
    Memo1: TMemo;
    BitBtn1: TBitBtn;
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
    procedure dbg_fornecedoresKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btnconsultacepClick(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbslistaShow(Sender: TObject);
    procedure filtro;
    procedure retirarfiltro;


  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
    bInsereD:boolean;
  end;

var
  frmpesqfornecedores: Tfrmpesqfornecedores;

implementation
   uses ugeral, udados, ufiltrofornecedores, urelfornecedores, upcodibge;
{$R *.dfm}

procedure Tfrmpesqfornecedores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  //frmdados.cds_fornecedores.Active := false;
  //frmdados.sql_fornecedores.Active := false;

  frmdados.cds_Munic.Active := false;
  frmdados.sql_Munic.Active := false;

  frmdados.cds_transportador.Active := false;
  frmdados.sql_transportador.Active := false;


  Action:=caFree;
  frmPesqfornecedores:=nil;
  form_ativo := '';
end;

procedure tfrmpesqfornecedores.Limpar;
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
  frmdados.cds_Temp.FieldByName('cod1ff').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2ff').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3ff').asInteger := 0;

end;

procedure Tfrmpesqfornecedores.btnnovaClick(Sender: TObject);
begin
//sOpcao := 'I';

bInsereD := true;
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
cbxdesctransp.Enabled := true;
MMOobs.Enabled := true;

btnsalvar.Enabled := true;
Limpar;
if edicnpj.Enabled then
   edicnpj.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqfornecedores.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_fornecedores.RecordCount > 0 then
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
     cbxdesctransp.Enabled := true;
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
     cbxdesctransp.Enabled := false;
     MMOobs.Enabled := false;

     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;


   end;
//endi


end;

procedure Tfrmpesqfornecedores.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_fornecedores.IndexName;
    if (bInsereD) or  (sOpcao = 'I') then
       begin
         bFiltrar := cds_fornecedores.Filtered;
         cds_fornecedores.Filtered := false;

         cds_fornecedores.IndexName := 'codigo';
         cds_fornecedores.Last;
         //icodigo := cds_fornecedores.fieldbyname('codigo').asInteger;
         cds_fornecedores.Append;
         //cds_fornecedores.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_fornecedores.Edit;
    cds_fornecedores.FieldByName('cnpj').asString := edicnpj.Text;
    cds_fornecedores.FieldByName('ie').asString := ediie.Text;
    cds_fornecedores.FieldByName('im').asString := ediim.Text;
    cds_fornecedores.FieldByName('nome').asString := edinome.Text;
    cds_fornecedores.FieldByName('fantasia').asString := edifantasia.Text;
    cds_fornecedores.FieldByName('telefones').asString := editelefones.Text;
    cds_fornecedores.FieldByName('email').asString := ediemail.Text;
    cds_fornecedores.FieldByName('site').asString := edisite.Text;
    cds_fornecedores.FieldByName('contato').asString := edicontato.Text;
    cds_fornecedores.FieldByName('endereco').asString := ediendereco.Text;
    cds_fornecedores.FieldByName('nro').asString := edinro.Text;
    cds_fornecedores.FieldByName('compl').asString := edicompl.Text;
    cds_fornecedores.FieldByName('bairro').asString := edibairro.Text;
    cds_fornecedores.FieldByName('cep').asString := edicep.Text;
    cds_fornecedores.FieldByName('obs').asString := MMOobs.Text;


    cds_fornecedores.FieldByName('cest').asInteger := frmdados.cds_Temp.fieldbyname('cod1ff').asInteger;
    cds_fornecedores.FieldByName('cmun').asInteger := frmdados.cds_Temp.fieldbyname('cod2ff').asInteger;
    cds_fornecedores.FieldByName('ctransp').asInteger := frmdados.cds_Temp.fieldbyname('cod3ff').asInteger;
    cds_fornecedores.Post;

     cds_fornecedores.IndexName := aIndex;
    if cds_fornecedores.Filter <> '' then
       cds_fornecedores.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';

bInsereD := false;
end;

procedure tfrmpesqfornecedores.carregaficha;
begin

if bInsereD then
   exit;
//endi


with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_fornecedores.fieldbyname('codigo').asfloat);
    edicnpj.Text := cds_fornecedores.fieldbyname('cnpj').asString;
    ediie.Text := cds_fornecedores.fieldbyname('ie').asString;
    ediim.Text := cds_fornecedores.fieldbyname('im').asString;
    edinome.Text := cds_fornecedores.fieldbyname('nome').asString;
    edifantasia.Text := cds_fornecedores.fieldbyname('fantasia').asString;
    editelefones.Text := cds_fornecedores.fieldbyname('telefones').asString;
    ediemail.Text := cds_fornecedores.fieldbyname('email').asString;
    edisite.Text := cds_fornecedores.fieldbyname('site').asString;
    edicontato.Text := cds_fornecedores.fieldbyname('contato').asString;
    ediendereco.Text := cds_fornecedores.fieldbyname('endereco').asString;
    edinro.Text := cds_fornecedores.fieldbyname('nro').asString;
    edicompl.Text := cds_fornecedores.fieldbyname('compl').asString;
    edibairro.Text := cds_fornecedores.fieldbyname('bairro').asString;
    edicep.Text := cds_fornecedores.fieldbyname('cep').asString;
    MMOobs.Text := cds_fornecedores.fieldbyname('obs').asString;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1ff').asInteger := cds_fornecedores.FieldByName('cest').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2ff').asInteger := cds_fornecedores.FieldByName('cmun').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3ff').asInteger := cds_fornecedores.FieldByName('ctransp').asInteger;

  end;
//endi

end;

procedure Tfrmpesqfornecedores.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 1;
sclassificar := 'NOME';
sordenado := 'nome';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := 'nome';
frmdados.cds_fornecedores.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqfornecedores.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_fornecedores.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqfornecedores.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqfornecedores.btnproximoClick(Sender: TObject);
begin
frmdados.cds_fornecedores.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqfornecedores.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_fornecedores.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqfornecedores.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrofornecedores = nil then
   begin
      frmfiltrofornecedores := tfrmfiltrofornecedores.Create(self);
      frmfiltrofornecedores.Showmodal;
      frmfiltrofornecedores.Free;
   end;
//endi

end;

procedure Tfrmpesqfornecedores.dbg_fornecedoresKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqfornecedores.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_fornecedores.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqfornecedores.edilocalizarKeyPress(Sender: TObject;
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
     filtro;
   end;
//endif

end;

procedure Tfrmpesqfornecedores.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_fornecedores.Filtered := false;
    cds_fornecedores.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

retirarfiltro;

end;

procedure Tfrmpesqfornecedores.btnimprimirClick(Sender: TObject);
begin
frmrelfornecedores := tfrmrelfornecedores.Create(self);
frmrelfornecedores.relatorio.Preview;
frmrelfornecedores.Free;
end;

procedure Tfrmpesqfornecedores.FormCreate(Sender: TObject);
begin


frmdados.cds_fornecedores.Active := false;
frmdados.sql_fornecedores.Active := false;
frmdados.sql_fornecedores.SQL.Clear;
frmdados.sql_fornecedores.SQL.Add('select * from fornecedores');
frmdados.sql_fornecedores.Active := true;
frmdados.cds_fornecedores.Active := true;

frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;

frmdados.sql_estados.Active := true;
frmdados.cds_estados.Active := true;


frmdados.sql_transportador.Active := true;
frmdados.cds_transportador.Active := true;


end;

procedure Tfrmpesqfornecedores.btnconsultacepClick(Sender: TObject);
begin
  frmpcodibge := tfrmpcodibge.create(self);
  frmpcodibge.showmodal;
  frmpcodibge.free;

end;

procedure Tfrmpesqfornecedores.Memo1Enter(Sender: TObject);
begin
SelectNext(ActiveControl,True,True);
end;

procedure Tfrmpesqfornecedores.BitBtn1Click(Sender: TObject);
begin
  bInsereD := true;

  pctdados.TabIndex := 1;

  btnnova.Click;

end;

procedure Tfrmpesqfornecedores.tbslistaShow(Sender: TObject);
begin
sopcao := '';
bInsereD := false;

end;

procedure tfrmpesqfornecedores.filtro;
begin
  with frmdados do
    begin
      frmdados.cds_fornecedores.Active := false;
      frmdados.sql_fornecedores.Active := false;
      frmdados.sql_fornecedores.SQL.Clear;
      frmdados.sql_fornecedores.SQL.Add('select * from fornecedores where nome like  '+quotedstr('%'+edilocalizar.Text+'%'  ));
      frmdados.sql_fornecedores.Active := true;
      frmdados.cds_fornecedores.Active := true;
    end;


end;

procedure tfrmpesqfornecedores.retirarfiltro;
begin
  with frmdados do
    begin
      frmdados.cds_fornecedores.Active := false;
      frmdados.sql_fornecedores.Active := false;
      frmdados.sql_fornecedores.SQL.Clear;
      frmdados.sql_fornecedores.SQL.Add('select * from fornecedores');
      frmdados.sql_fornecedores.Active := true;
      frmdados.cds_fornecedores.Active := true;
    end;


end;


end.
