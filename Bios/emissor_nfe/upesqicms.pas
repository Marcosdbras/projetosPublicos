unit upesqicms;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqICMS = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_ICMS: TDBGrid;
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
    Label5: TLabel;
    cbxnest: TDBLookupComboBox;
    Label6: TLabel;
    edireducao: TEdit;
    Label11: TLabel;
    cbxdescsitb_cod5: TDBLookupComboBox;
    Label17: TLabel;
    cbxdesccfop_cod11: TDBLookupComboBox;
    Label7: TLabel;
    cbxdesccfop_cod11prodnf: TDBLookupComboBox;
    Label8: TLabel;
    MMOOBS: TMemo;
    Label21: TLabel;
    cbxdesccsosn_cod14p: TDBLookupComboBox;
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
    procedure dbg_ICMSKeyDown(Sender: TObject; var Key: Word;
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
    procedure cbxregimeKeyPress(Sender: TObject; var Key: Char);
    procedure CKBAPLICALIQFATKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqICMS: TfrmpesqICMS;

implementation
   uses ugeral, udados, ufiltroicms, urelicms;
{$R *.dfm}

procedure TfrmpesqICMS.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_icms.Active := false;
  frmdados.sql_icms.Active := false;

  frmdados.cds_Estados.Active := false;
  frmdados.sql_Estados.Active := false;

  frmdados.cds_sitb.Active := false;
  frmdados.sql_sitb.Active := false;

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  frmdados.cds_csosn.Active := false;
  frmdados.sql_csosn.Active := false;

  Action:=caFree;
  frmPesqicms:=nil;
  form_ativo := '';
end;

procedure tfrmpesqICMS.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  edialiquota.Text := '0,00';
  edireducao.Text := '0,00';

  mmoobs.Clear;

end;

procedure TfrmpesqICMS.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
edisigla.Enabled := true;
mmoobs.Enabled := true;
edialiquota.Enabled := true;
edireducao.Enabled := true;
cbxnest.Enabled := true;
btnsalvar.Enabled := true;


cbxdescsitb_cod5.Enabled := true;
cbxdesccfop_cod11.Enabled := true;
cbxdesccfop_cod11prodnf.Enabled := true;
cbxdesccsosn_cod14p.Enabled := true;


Limpar;
if cbxnest.Enabled then
   cbxnest.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure TfrmpesqICMS.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_icms.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     edisigla.Enabled := true;
     mmoobs.Enabled := true;
     edialiquota.Enabled := true;
     edireducao.Enabled := true;
     cbxnest.Enabled := true;
     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;

     cbxdescsitb_cod5.Enabled := true;
     cbxdesccfop_cod11.Enabled := true;
     cbxdesccfop_cod11prodnf.Enabled := true;
     cbxdesccsosn_cod14p.Enabled := true;

     carregaficha;
     if cbxnest.Enabled then
        begin
          cbxnest.SetFocus;
        end;
     //endi
   end
else
   begin
     edidescricao.Enabled := false;
     edisigla.Enabled := false;
     mmoobs.Enabled := false;
     edialiquota.Enabled := false;
     edireducao.Enabled := false;
     cbxnest.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;

     cbxdescsitb_cod5.Enabled := false;
     cbxdesccfop_cod11.Enabled := false;
     cbxdesccfop_cod11prodnf.Enabled := false;
     cbxdesccsosn_cod14p.Enabled := false;

     frmdados.cds_Temp.Edit;
     frmdados.cds_Temp.FieldByName('cod1B').asInteger := 0
   end;
//endi


end;

procedure TfrmpesqICMS.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_icms.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_icms.Filtered;
         cds_icms.Filtered := false;

         cds_icms.IndexName := 'codigo';
         cds_icms.Last;
         //icodigo := cds_icms.fieldbyname('codigo').asInteger;
         cds_icms.Append;
         //cds_icms.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_icms.Edit;
    cds_icms.FieldByName('descricao').asString := edidescricao.Text;
    cds_icms.FieldByName('sigla').asString := edisigla.Text;
    cds_icms.FieldByName('obs').asString := mmoobs.Text;

    cds_icms.FieldByName('aliquota').asfloat := strtofloat(tirapontos(edialiquota.Text));
    cds_icms.FieldByName('reducao').asfloat := strtofloat(tirapontos(edireducao.Text));
    cds_icms.FieldByName('cest').asInteger := frmdados.cds_Temp.fieldbyname('cod1B').asInteger;
    cds_icms.FieldByName('csitb').asInteger := frmdados.cds_Temp.fieldbyname('cod5P').asInteger;
    cds_icms.FieldByName('ccfop').asInteger := frmdados.cds_Temp.fieldbyname('cod11P').asInteger;
    cds_icms.FieldByName('ccfopf').asInteger := frmdados.cds_Temp.fieldbyname('cod11Prodnf').asInteger;
    cds_icms.FieldByName('ccsosn').asInteger := frmdados.cds_Temp.fieldbyname('cod14P').asInteger;

    cds_icms.Post;

     cds_icms.IndexName := aIndex;
    if cds_icms.Filter <> '' then
       cds_icms.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqICMS.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_icms.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_icms.fieldbyname('descricao').asString;
    edisigla.Text := cds_icms.fieldbyname('sigla').asString;
    mmoobs.Text := cds_icms.fieldbyname('obs').asString;


    edialiquota.Text := formatfloat('###,###,##0.00', cds_icms.fieldbyname('aliquota').asfloat);
    edireducao.Text := formatfloat('###,###,##0.00', cds_icms.fieldbyname('reducao').asfloat);

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1B').asInteger := cds_icms.FieldByName('cest').asInteger;
    frmdados.cds_Temp.fieldbyname('cod5P').asInteger := cds_icms.FieldByName('csitb').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11P').asInteger := cds_icms.FieldByName('ccfop').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11Prodnf').asInteger := cds_icms.FieldByName('ccfopf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod14P').asInteger := cds_icms.FieldByName('ccsosn').asInteger;


  end;
//endi

end;

procedure TfrmpesqICMS.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_ICMS.IndexName := 'descricao';
frmdados.cds_icms.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;

end;

procedure TfrmpesqICMS.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_icms.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqICMS.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqICMS.btnproximoClick(Sender: TObject);
begin
frmdados.cds_icms.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqICMS.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_icms.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqICMS.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroicms = nil then
   begin
      frmfiltroicms := tfrmfiltroicms.Create(self);
      frmfiltroicms.Showmodal;
      frmfiltroicms.Free;
   end;
//endi

end;

procedure TfrmpesqICMS.dbg_ICMSKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqICMS.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_icms.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqICMS.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqICMS.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_icms.Filtered := false;
    cds_icms.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqICMS.btnimprimirClick(Sender: TObject);
begin
frmrelicms := tfrmrelicms.Create(self);
frmrelicms.relatorio.Preview;
frmrelicms.Free;
end;

procedure TfrmpesqICMS.edialiquotaKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqICMS.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqICMS.edialiquotaExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edialiquota.Text));
edialiquota.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure TfrmpesqICMS.edireducaoExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edireducao.Text));
edireducao.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure TfrmpesqICMS.FormCreate(Sender: TObject);
begin

  frmdados.sql_icms.Active := true;
  frmdados.cds_icms.Active := true;

  frmdados.sql_Estados.Active := true;
  frmdados.cds_Estados.Active := true;

  frmdados.sql_sitb.Active := true;
  frmdados.cds_sitb.Active := true;

  frmdados.sql_cfop.Active := true;
  frmdados.cds_cfop.Active := true;

  frmdados.sql_csosn.Active := true;
  frmdados.cds_csosn.Active := true;

end;

procedure TfrmpesqICMS.cbxregimeKeyPress(Sender: TObject; var Key: Char);
begin

  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure TfrmpesqICMS.CKBAPLICALIQFATKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

end.
