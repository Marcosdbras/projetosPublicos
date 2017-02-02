unit uPesqMunic;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TFrmPesqMunic = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_Munic: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    Label3: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    edinome: TEdit;
    edicodibge: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    Label5: TLabel;
    cbxnest: TDBLookupComboBox;
    Label4: TLabel;
    edifxinicial: TEdit;
    EDIFXFINAL: TEdit;
    Label6: TLabel;
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
    procedure dbg_MunicKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edifxinicialKeyPress(Sender: TObject; var Key: Char);
    procedure EDIFXFINALKeyPress(Sender: TObject; var Key: Char);
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
  FrmPesqMunic: TFrmPesqMunic;

implementation
   uses ugeral, udados, ufiltroMunic, urelMunic;
{$R *.dfm}

procedure TFrmPesqMunic.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_Munic.Active := false;
  frmdados.sql_Munic.Active := false;

  frmdados.cds_Estados.Active := false;
  frmdados.sql_Estados.Active := false;



  Action:=caFree;
  frmPesqMunic:=nil;
  form_ativo := '';
end;

procedure tFrmPesqMunic.Limpar;
begin
  lblcodigo.Caption := '00000';
  edinome.Text := '';
  edicodibge.Text := '';
  edifxinicial.Text := '';
  edifxfinal.Text := '';
end;

procedure TFrmPesqMunic.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edinome.Enabled := true;
edifxinicial.Enabled := true;
edifxfinal.Enabled := true;
edicodibge.Enabled := true;
cbxnest.Enabled := true;
btnsalvar.Enabled := true;
Limpar;
if cbxnest.Enabled then
   cbxnest.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure TFrmPesqMunic.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_Munic.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edinome.Enabled := true;
     edifxinicial.Enabled := true;
     edifxfinal.Enabled := true;
     edicodibge.Enabled := true;
     cbxnest.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;
     carregaficha;
     if cbxnest.Enabled then
        begin
          cbxnest.SetFocus;
        end;
     //endi
   end
else
   begin
     edinome.Enabled := false;
     edifxinicial.Enabled := false;
     edifxfinal.Enabled := false;
     edicodibge.Enabled := false;
     cbxnest.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('cod1A').asInteger := 0
   end;
//endi


end;

procedure TFrmPesqMunic.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_Munic.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_Munic.Filtered;
         cds_Munic.Filtered := false;

         cds_Munic.IndexName := 'codigo';
         cds_Munic.Last;
         //icodigo := cds_Munic.fieldbyname('codigo').asInteger;
         cds_Munic.Append;
         //cds_Munic.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_Munic.Edit;
    cds_Munic.FieldByName('nome').asString := edinome.Text;
    cds_Munic.FieldByName('fxinicial').asInteger := strtoint(edifxinicial.Text);
    cds_Munic.FieldByName('fxfinal').asInteger := strtoint(edifxfinal.Text);
    cds_Munic.FieldByName('codibge').asString := edicodibge.Text;
    cds_Munic.FieldByName('cest').asInteger := frmdados.cds_Temp.fieldbyname('cod1A').asInteger;
    cds_Munic.Post;

     cds_Munic.IndexName := aIndex;
    if cds_Munic.Filter <> '' then
       cds_Munic.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tFrmPesqMunic.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_Munic.fieldbyname('codigo').asfloat);
    edinome.Text := cds_Munic.fieldbyname('nome').asString;
    edifxinicial.Text := cds_Munic.fieldbyname('fxinicial').asString;
    edifxfinal.Text := cds_Munic.fieldbyname('fxfinal').asString;
    edicodibge.Text := cds_Munic.fieldbyname('codibge').asString;
    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1A').asInteger := cds_Munic.FieldByName('cest').asInteger;
  end;
//endi

end;

procedure TFrmPesqMunic.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := 'nome';
frmdados.cds_Munic.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure TFrmPesqMunic.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_Munic.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TFrmPesqMunic.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif
end;

procedure TFrmPesqMunic.btnproximoClick(Sender: TObject);
begin
frmdados.cds_Munic.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TFrmPesqMunic.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_Munic.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TFrmPesqMunic.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroMunic = nil then
   begin
      frmfiltroMunic := tfrmfiltroMunic.Create(self);
      frmfiltroMunic.Showmodal;
      frmfiltroMunic.Free;
   end;
//endi

end;

procedure TFrmPesqMunic.dbg_MunicKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TFrmPesqMunic.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_Munic.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TFrmPesqMunic.edilocalizarKeyPress(Sender: TObject;
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

procedure TFrmPesqMunic.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_Munic.Filtered := false;
    cds_Munic.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TFrmPesqMunic.btnimprimirClick(Sender: TObject);
begin
frmrelMunic := tfrmrelMunic.Create(self);
frmrelMunic.relatorio.Preview;
frmrelMunic.Free;
end;

procedure TFrmPesqMunic.edifxinicialKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endif

If not( key in['0'..'9',#8] ) then
   begin
     beep;
     key:=#0;
   end;
//endi

end;

procedure TFrmPesqMunic.EDIFXFINALKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endif

If not( key in['0'..'9',#8] ) then
   begin
     beep;
     key:=#0;
   end;
//endi

end;

procedure TFrmPesqMunic.FormCreate(Sender: TObject);
begin

frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;

frmdados.sql_Estados.Active := true;
frmdados.cds_Estados.Active := true;


end;

end.
