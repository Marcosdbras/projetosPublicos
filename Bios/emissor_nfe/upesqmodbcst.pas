unit upesqmodbcst;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqmodbcst = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_modbcst: TDBGrid;
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
    procedure dbg_modbcstKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edireducaoKeyPress(Sender: TObject; var Key: Char);
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
  frmpesqmodbcst: Tfrmpesqmodbcst;

implementation
   uses ugeral, udados, ufiltromodbcst, urelmodbcst;
{$R *.dfm}

procedure Tfrmpesqmodbcst.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  frmdados.cds_modbcst.Active := false;
  frmdados.sql_modbcst.Active := false;

  Action:=caFree;
  frmPesqmodbcst:=nil;
  form_ativo := '';
end;

procedure tfrmpesqmodbcst.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';

end;

procedure Tfrmpesqmodbcst.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
edisigla.Enabled := true;
btnsalvar.Enabled := true;
Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqmodbcst.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_modbcst.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     edisigla.Enabled := true;
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
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
     //frmdados.cds_Temp.Edit;
     //frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure Tfrmpesqmodbcst.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_modbcst.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_modbcst.Filtered;
         cds_modbcst.Filtered := false;

         cds_modbcst.IndexName := 'codigo';
         cds_modbcst.Last;
         //icodigo := cds_modbcst.fieldbyname('codigo').asInteger;
         cds_modbcst.Append;
         //cds_modbcst.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_modbcst.Edit;
    cds_modbcst.FieldByName('descricao').asString := edidescricao.Text;
    cds_modbcst.FieldByName('sigla').asString := edisigla.Text;
    cds_modbcst.Post;

     cds_modbcst.IndexName := aIndex;
    if cds_modbcst.Filter <> '' then
       cds_modbcst.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqmodbcst.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_modbcst.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_modbcst.fieldbyname('descricao').asString;
    edisigla.Text := cds_modbcst.fieldbyname('sigla').asString;

  end;
//endi

end;

procedure Tfrmpesqmodbcst.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_modbcst.IndexName := 'descricao';
frmdados.cds_modbcst.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqmodbcst.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_modbcst.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqmodbcst.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqmodbcst.btnproximoClick(Sender: TObject);
begin
frmdados.cds_modbcst.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqmodbcst.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_modbcst.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqmodbcst.btnfiltrarClick(Sender: TObject);
begin
if frmfiltromodbcst = nil then
   begin
      frmfiltromodbcst := tfrmfiltromodbcst.Create(self);
      frmfiltromodbcst.Showmodal;
      frmfiltromodbcst.Free;
   end;
//endi

end;

procedure Tfrmpesqmodbcst.dbg_modbcstKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqmodbcst.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_modbcst.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqmodbcst.edilocalizarKeyPress(Sender: TObject;
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

procedure Tfrmpesqmodbcst.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_modbcst.Filtered := false;
    cds_modbcst.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqmodbcst.btnimprimirClick(Sender: TObject);
begin
frmrelmodbcst := tfrmrelmodbcst.Create(self);
frmrelmodbcst.relatorio.Preview;
frmrelmodbcst.Free;
end;

procedure Tfrmpesqmodbcst.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqmodbcst.FormCreate(Sender: TObject);
begin

frmdados.sql_modbcst.Active := true;
frmdados.cds_modbcst.Active := true;

end;

end.
