unit upesqcfop;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  TfrmpesqCFOP = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_cfop: TDBGrid;
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
    cbxtipo: TComboBox;
    Label3: TLabel;
    cbxccupom: TComboBox;
    Label5: TLabel;
    Label6: TLabel;
    cbxctipoest: TComboBox;
    Label11: TLabel;
    cbxdescsitb_cod5: TDBLookupComboBox;
    Label7: TLabel;
    cbxdescicms_cod1: TDBLookupComboBox;
    MMOOBS: TMemo;
    Label8: TLabel;
    Label9: TLabel;
    CBXCPADRAO: TComboBox;
    Label21: TLabel;
    cbxdesccsosn_cod14p: TDBLookupComboBox;
    CKBAPLICALIQFAT: TCheckBox;
    Label10: TLabel;
    cbxdescipi_cod2p: TDBLookupComboBox;
    Label12: TLabel;
    cbxdescpis_cod9p: TDBLookupComboBox;
    Label13: TLabel;
    cbxdesccofins_cod10p: TDBLookupComboBox;
    Label14: TLabel;
    cbxmva: TComboBox;
    Label15: TLabel;
    CBXCALCSUBST_TRIB_ANT: TComboBox;
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
    procedure dbg_cfopKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure edireducaoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure cbxtipoKeyPress(Sender: TObject; var Key: Char);
    procedure cbxtipoKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CKBAPLICALIQFATKeyPress(Sender: TObject; var Key: Char);
    procedure cbxmvaKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqCFOP: TfrmpesqCFOP;

implementation
   uses ugeral, udados, ufiltrocfop, urelcfop;
{$R *.dfm}

procedure TfrmpesqCFOP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  frmdados.cds_sitb.Active := false;
  frmdados.sql_sitb.Active := false;

  frmdados.cds_icms.Active := false;
  frmdados.sql_icms.Active := false;

  frmdados.cds_csosn.Active := false;
  frmdados.sql_csosn.Active := false;

  frmdados.cds_ipi.Active := false;
  frmdados.sql_ipi.Active := false;

  frmdados.cds_pis.Active := false;
  frmdados.sql_pis.Active := false;

  frmdados.cds_cofins.Active := false;
  frmdados.sql_cofins.Active := false;

  Action:=caFree;
  frmPesqcfop:=nil;
  form_ativo := '';
end;

procedure tfrmpesqCFOP.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  edisigla.Text := '';
  cbxtipo.ItemIndex := 0;
  cbxmva.ItemIndex := 1;
  CBXCALCSUBST_TRIB_ANT.ItemIndex := 1;
  cbxccupom.ItemIndex := 0;
  cbxctipoest.ItemIndex := 0;
  cbxcpadrao.ItemIndex := 0;
  ckbaplicaliqfat.Checked := false;


  frmdados.cds_Temp.Edit;
  frmdados.cds_Temp.FieldByName('cod1P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod5P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod9P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod10P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod14P').asInteger := 0;

  mmoobs.Clear;


end;

procedure TfrmpesqCFOP.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
edidescricao.Enabled := true;
edisigla.Enabled := true;
cbxtipo.Enabled := true;
cbxmva.Enabled := true;
CBXCALCSUBST_TRIB_ANT.Enabled := true;
cbxccupom.Enabled := true;
cbxctipoest.Enabled := true;
cbxcpadrao.Enabled := true;
ckbaplicaliqfat.Enabled := true;


btnsalvar.Enabled := true;

cbxdescsitb_cod5.Enabled := true;
cbxdescicms_cod1.Enabled := true;
cbxdesccsosn_cod14p.Enabled := true;
cbxdescipi_cod2p.Enabled := true;
cbxdescpis_cod9p.Enabled := true;
cbxdesccofins_cod10p.Enabled := true;

Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;
end;

procedure TfrmpesqCFOP.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_cfop.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     edisigla.Enabled := true;
     cbxtipo.Enabled := true;
     cbxmva.Enabled := true;
     CBXCALCSUBST_TRIB_ANT.Enabled := true;
     cbxccupom.Enabled := true;
     cbxctipoest.Enabled := true;
     cbxcpadrao.Enabled := true;
     ckbaplicaliqfat.Enabled := true;


     btnsalvar.Enabled := true;
     btnexcluir.Enabled := true;

     cbxdescsitb_cod5.Enabled := true;
     cbxdescicms_cod1.Enabled := true;
     cbxdesccsosn_cod14p.Enabled := true;
     cbxdescipi_cod2p.Enabled := true;
     cbxdescpis_cod9p.Enabled := true;
     cbxdesccofins_cod10p.Enabled := true;

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
     cbxtipo.Enabled := false;
     cbxmva.Enabled := false;
     CBXCALCSUBST_TRIB_ANT.Enabled := false;
     cbxccupom.Enabled := false;
     cbxctipoest.Enabled := false;
     cbxcpadrao.Enabled := false;
     ckbaplicaliqfat.Enabled := false;


     edisigla.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;

     cbxdescsitb_cod5.Enabled := false;
     cbxdescicms_cod1.Enabled := false;
     cbxdesccsosn_cod14p.Enabled := false;

     cbxdescipi_cod2p.Enabled := false;
     cbxdescpis_cod9p.Enabled := false;
     cbxdesccofins_cod10p.Enabled := false;



     //frmdados.cds_Temp.Edit;
     //frmdados.cds_Temp.FieldByName('cod1').asInteger := 0
   end;
//endi


end;

procedure TfrmpesqCFOP.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_cfop.IndexName;
    if sOpcao = 'I' then
       begin
         bFiltrar := cds_cfop.Filtered;
         cds_cfop.Filtered := false;

         cds_cfop.IndexName := 'codigo';
         cds_cfop.Last;
         //icodigo := cds_cfop.fieldbyname('codigo').asInteger;
         cds_cfop.Append;
         //cds_cfop.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_cfop.Edit;
    cds_cfop.FieldByName('descricao').asString := edidescricao.Text;
    cds_cfop.FieldByName('sigla').asString := edisigla.Text;
    cds_cfop.FieldByName('ctipo').asInteger := cbxtipo.ItemIndex;
    cds_cfop.FieldByName('calciva').asString := cbxmva.Text;
    cds_cfop.FieldByName('CALCSUBST_TRIB_ANT').asString := CBXCALCSUBST_TRIB_ANT.Text;

    

    if ckbaplicaliqfat.Checked then
       cds_cfop.FieldByName('aplicaliqfat').asString := 'T'
    else
       cds_cfop.FieldByName('aplicaliqfat').asString := 'F';
    //fim

    cds_cfop.FieldByName('ccupom').asInteger := cbxccupom.ItemIndex;
    cds_cfop.FieldByName('ctipoest').asInteger := cbxctipoest.ItemIndex;
    cds_cfop.FieldByName('cpadrao').asInteger := cbxcpadrao.ItemIndex;

    cds_cfop.FieldByName('csitb').asInteger := frmdados.cds_Temp.fieldbyname('cod5P').asInteger;
    cds_cfop.FieldByName('cicms').asInteger := frmdados.cds_Temp.fieldbyname('cod1P').asInteger;
    cds_cfop.FieldByName('ccsosn').asInteger := frmdados.cds_Temp.fieldbyname('cod14P').asInteger;

    cds_cfop.FieldByName('cipi').asInteger := frmdados.cds_Temp.fieldbyname('cod2P').asInteger;
    cds_cfop.FieldByName('cpis').asInteger := frmdados.cds_Temp.fieldbyname('cod9P').asInteger;
    cds_cfop.FieldByName('ccofins').asInteger := frmdados.cds_Temp.fieldbyname('cod10P').asInteger;

    cds_cfop.FieldByName('obs').asString := mmoobs.Text;

    cds_cfop.Post;

     cds_cfop.IndexName := aIndex;
    if cds_cfop.Filter <> '' then
       cds_cfop.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqCFOP.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_cfop.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_cfop.fieldbyname('descricao').asString;
    edisigla.Text := cds_cfop.fieldbyname('sigla').asString;
    cbxtipo.ItemIndex := cds_cfop.FieldByName('ctipo').asInteger;
    cbxmva.Text := cds_cfop.FieldByName('calciva').asstring;
    CBXCALCSUBST_TRIB_ANT.Text :=  cds_cfop.FieldByName('CALCSUBST_TRIB_ANT').asstring;


    if cds_cfop.fieldbyname('aplicaliqfat').AsString = 'T' then
       ckbaplicaliqfat.checked := true
    else
       ckbaplicaliqfat.checked := false;
    //endi

    cbxccupom.ItemIndex := cds_cfop.FieldByName('ccupom').asInteger;
    cbxctipoest.ItemIndex := cds_cfop.FieldByName('ctipoest').asInteger;
    cbxcpadrao.ItemIndex := cds_cfop.FieldByName('cpadrao').asInteger;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod5P').asInteger := cds_cfop.FieldByName('csitb').asInteger;
    frmdados.cds_Temp.fieldbyname('cod1P').asInteger := cds_cfop.FieldByName('cicms').asInteger;
    frmdados.cds_Temp.fieldbyname('cod14P').asInteger := cds_cfop.FieldByName('ccsosn').asInteger;

    frmdados.cds_Temp.fieldbyname('cod2P').asInteger := cds_cfop.FieldByName('cipi').asInteger;
    frmdados.cds_Temp.fieldbyname('cod9P').asInteger := cds_cfop.FieldByName('cpis').asInteger;
    frmdados.cds_Temp.fieldbyname('cod10P').asInteger := cds_cfop.FieldByName('ccofins').asInteger;

    mmoobs.Clear;
    mmoobs.Text :=  cds_cfop.FieldByName('obs').asString;


  end;
//endi

end;

procedure TfrmpesqCFOP.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';

cbxtipo.Items.Clear;
cbxtipo.Items.Add('PRODUTOS');
cbxtipo.Items.Add('TRANSPORTE');

cbxccupom.Items.Clear;
cbxccupom.Items.Add('C/ CUPOM');
cbxccupom.Items.Add('S/ CUPOM');

cbxctipoest.Items.Clear;
cbxctipoest.Items.Add('DENTRO');
cbxctipoest.Items.Add('FORA');

cbxcpadrao.Items.Clear;
cbxcpadrao.Items.Add('NÃO');
cbxcpadrao.Items.Add('SIM');

frmdados.cds_cfop.IndexName := 'descricao';
frmdados.cds_cfop.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure TfrmpesqCFOP.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_cfop.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqCFOP.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqCFOP.btnproximoClick(Sender: TObject);
begin
frmdados.cds_cfop.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqCFOP.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_cfop.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqCFOP.btnfiltrarClick(Sender: TObject);
begin
if frmfiltrocfop = nil then
   begin
      frmfiltrocfop := tfrmfiltrocfop.Create(self);
      frmfiltrocfop.Showmodal;
      frmfiltrocfop.Free;
   end;
//endi

end;

procedure TfrmpesqCFOP.dbg_cfopKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqCFOP.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_cfop.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqCFOP.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqCFOP.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_cfop.Filtered := false;
    cds_cfop.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure TfrmpesqCFOP.btnimprimirClick(Sender: TObject);
begin
frmrelcfop := tfrmrelcfop.Create(self);
frmrelcfop.relatorio.Preview;
frmrelcfop.Free;
end;

procedure TfrmpesqCFOP.edireducaoKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmpesqCFOP.FormCreate(Sender: TObject);
begin

frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;

frmdados.sql_sitb.Active := true;
frmdados.cds_sitb.Active := true;

frmdados.sql_icms.Active := true;
frmdados.cds_icms.Active := true;

frmdados.sql_csosn.Active := true;
frmdados.cds_csosn.Active := true;

frmdados.sql_ipi.Active := true;
frmdados.cds_ipi.Active := true;

frmdados.sql_pis.Active := true;
frmdados.cds_pis.Active := true;

frmdados.sql_cofins.Active := true;
frmdados.cds_cofins.Active := true;


end;

procedure TfrmpesqCFOP.cbxtipoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif


end;

procedure TfrmpesqCFOP.cbxtipoKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmpesqCFOP.CKBAPLICALIQFATKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqCFOP.cbxmvaKeyPress(Sender: TObject; var Key: Char);
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
