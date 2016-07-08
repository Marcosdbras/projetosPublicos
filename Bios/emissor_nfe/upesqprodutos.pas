unit upesqprodutos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList;

type
  Tfrmpesqprodutos = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_produtos: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
    btnnova: TBitBtn;
    lblcodigo: TLabel;
    btnfiltrar: TBitBtn;
    btnlimpar: TBitBtn;
    btnimprimir: TBitBtn;
    edidescricao: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    pctcadprod: TPageControl;
    tbsprincipal: TTabSheet;
    Label5: TLabel;
    cbxnund: TDBLookupComboBox;
    Label3: TLabel;
    ediprve: TEdit;
    Label4: TLabel;
    edicbar: TEdit;
    TabSheet1: TTabSheet;
    Label20: TLabel;
    EDICAUX: TEdit;
    tbsipi: TPageControl;
    tbsicms: TTabSheet;
    TabSheet3: TTabSheet;
    tbspip: TTabSheet;
    tbscofins: TTabSheet;
    tbsii: TTabSheet;
    pnlsuptab: TPanel;
    Label11: TLabel;
    cbxdescsitb_cod5: TDBLookupComboBox;
    lblsita: TLabel;
    cbxdescsita_cod4: TDBLookupComboBox;
    edisimplesncm: TEdit;
    Label22: TLabel;
    cbxdescipi_cod2: TDBLookupComboBox;
    lblaliquota_ipi: TLabel;
    lblaliquota_pis: TLabel;
    cbxdescpis_cod9: TDBLookupComboBox;
    lblaliquota_cofins: TLabel;
    cbxdesccofins_cod10: TDBLookupComboBox;
    lblaliquota_ii: TLabel;
    cbxdescvii_cod8: TDBLookupComboBox;
    tbsoutras: TTabSheet;
    lblaliquota_outras: TLabel;
    cbxdescoimp_cod12: TDBLookupComboBox;
    ckbcompoetnf: TCheckBox;
    lblaliqicms: TLabel;
    cbxdescicms_cod1: TDBLookupComboBox;
    Label21: TLabel;
    cbxdesccsosn_cod14p: TDBLookupComboBox;
    BitBtn1: TBitBtn;
    Label7: TLabel;
    EDIEX: TEdit;
    TabSheet2: TTabSheet;
    DBGrid1: TDBGrid;
    Label8: TLabel;
    ediiva: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label10: TLabel;
    Label17: TLabel;
    cbxdesccfop_cod11: TDBLookupComboBox;
    Label12: TLabel;
    cbxdescmodbs_cod6: TDBLookupComboBox;
    Label13: TLabel;
    cbxdescmodbst_cod7: TDBLookupComboBox;
    Label9: TLabel;
    cbxdesccf_cod3: TDBLookupComboBox;
    lblregime: TLabel;
    cbxregime: TComboBox;
    Label14: TLabel;
    edibscalcst: TEdit;
    Label19: TLabel;
    ediicmscalcst: TEdit;
    Label6: TLabel;
    edicest: TEdit;
    BitBtn2: TBitBtn;
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
    procedure dbg_produtosKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edibscalcstKeyPress(Sender: TObject; var Key: Char);
    procedure ediprveExit(Sender: TObject);
    procedure edibscalcstExit(Sender: TObject);
    procedure ediicmscalcstExit(Sender: TObject);
    procedure comportaenterdb;
    procedure dbg_produtosDblClick(Sender: TObject);
    procedure dbg_produtosKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure edisimplesncmKeyPress(Sender: TObject; var Key: Char);
    procedure filtratrib;
    procedure cbxregimeClick(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbslistaShow(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure filtro;
    procedure retirarfiltro;
    procedure edicestKeyPress(Sender: TObject; var Key: Char);
    procedure BitBtn2Click(Sender: TObject);
    procedure BitBtn3Click(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);


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
  frmpesqprodutos: Tfrmpesqprodutos;

implementation
   uses ugeral, udados, ufiltroprodutos, urelprodutos, upcodcest,
  baixarncm, ubaixancm, ubaixarncmi;
{$R *.dfm}

procedure Tfrmpesqprodutos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_produtos.Active := false;
  frmdados.sql_produtos.Active := false;

  frmdados.cds_icms.Active := false;
  frmdados.sql_icms.Active := false;

  frmdados.cds_ipi.Active := false;
  frmdados.sql_ipi.Active := false;

  frmdados.cds_cf.Active := false;
  frmdados.sql_cf.Active := false;

  frmdados.cds_sita.Active := false;
  frmdados.sql_sita.Active := false;

  frmdados.cds_sitb.Active := false;
  frmdados.sql_sitb.Active := false;

  frmdados.cds_modbc.Active := false;
  frmdados.sql_modbc.Active := false;

  frmdados.cds_modbcst.Active := false;
  frmdados.sql_modbcst.Active := false;

  frmdados.cds_impostoII.Active := false;
  frmdados.sql_impostoII.Active := false;

  frmdados.cds_pis.Active := false;
  frmdados.sql_pis.Active := false;

  frmdados.cds_cofins.Active := false;
  frmdados.sql_cofins.Active := false;

  frmdados.cds_cfop.Active := false;
  frmdados.sql_cfop.Active := false;

  frmdados.cds_impostoIII.Active := false;
  frmdados.sql_impostoIII.Active := false;

  frmdados.cds_csosn.Active := false;
  frmdados.sql_csosn.Active := false;

  frmdados.cds_unidade.Active := false;
  frmdados.sql_unidade.Active := false;

  Action:=caFree;
  frmPesqprodutos:=nil;
  form_ativo := '';
end;

procedure tfrmpesqprodutos.Limpar;
begin
  lblcodigo.Caption := '00000';
  edidescricao.Text := '';
  ediex.Text := '';
  ediprve.Text := '0,00';
  edicbar.Text := '';
  edicaux.Text := '';

  edibscalcst.Text := '0,00';
  ediicmscalcst.Text := '0,00';
  edisimplesncm.Text := '';
  ediiva.Text := '0,00';
  edicest.Text := '';


  ckbcompoetnf.Checked := true;

  frmdados.cds_Temp.Edit;
  frmdados.cds_Temp.FieldByName('cod1P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod4P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod5P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod6P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod7P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod8P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod9P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod10P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod11P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod12P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod13P').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod14P').asInteger := 0;


end;

procedure Tfrmpesqprodutos.btnnovaClick(Sender: TObject);
begin
//sOpcao := 'I';

bInsereD := true;
edidescricao.Enabled := true;
ediex.Enabled := true;

ediprve.Enabled := true;
edicbar.Enabled := true;
edicaux.Enabled := true;

edibscalcst.Enabled := true;
ediiva.Enabled := true;
ediicmscalcst.Enabled := true;
edisimplesncm.Enabled := true;
edicest.Enabled := true;
ckbcompoetnf.Enabled := true;
cbxnund.Enabled := true;
cbxdescicms_cod1.Enabled := true;
cbxdescipi_cod2.Enabled := true;
cbxdesccf_cod3.Enabled := true;
cbxdescsita_cod4.Enabled := true;
cbxdescsitb_cod5.Enabled := true;
cbxdescmodbs_cod6.Enabled := true;
cbxdescmodbst_cod7.Enabled := true;
cbxdescvii_cod8.Enabled := true;
cbxdescpis_cod9.Enabled := true;
cbxdesccofins_cod10.Enabled := true;
cbxdesccfop_cod11.Enabled := true;
cbxdescoimp_cod12.Enabled := true;


btnsalvar.Enabled := true;
Limpar;
if edidescricao.Enabled then
   edidescricao.SetFocus;
//endi
btnexcluir.Enabled := false;

pctcadprod.TabIndex := 0;
end;

procedure Tfrmpesqprodutos.tbsfichaShow(Sender: TObject);
begin

cbxdescipi_cod2.Top  := cbxdescicms_cod1.Top;
cbxdescipi_cod2.Left  := cbxdescicms_cod1.Left;

cbxdescpis_cod9.Top  := cbxdescicms_cod1.Top;
cbxdescpis_cod9.Left  := cbxdescicms_cod1.Left;

cbxdesccofins_cod10.Top  := cbxdescicms_cod1.Top;
cbxdesccofins_cod10.Left  := cbxdescicms_cod1.Left;

cbxdescvii_cod8.Top  := cbxdescicms_cod1.Top;
cbxdescvii_cod8.Left  := cbxdescicms_cod1.Left;

cbxdescoimp_cod12.Top  := cbxdescicms_cod1.Top;
cbxdescoimp_cod12.Left  := cbxdescicms_cod1.Left;

lblaliquota_ipi.Top    := lblaliqicms.Top;
lblaliquota_ipi.left    := lblaliqicms.left;

lblaliquota_pis.Top    := lblaliqicms.Top;
lblaliquota_pis.left    := lblaliqicms.left;

lblaliquota_cofins.Top    := lblaliqicms.Top;
lblaliquota_cofins.left    := lblaliqicms.left;

lblaliquota_ii.Top    := lblaliqicms.Top;
lblaliquota_ii.left    := lblaliqicms.left;

lblaliquota_outras.Top    := lblaliqicms.Top;
lblaliquota_outras.left    := lblaliqicms.left;


cbxregime.Clear;
cbxregime.Items.Add('SIMPLES NACIONAL');
cbxregime.Items.Add('TRIBUTAÇÃO NORMAL');

cbxregime.ItemIndex := 0;


//filtratrib;


Limpar;
if frmdados.cds_produtos.RecordCount > 0 then
   begin
     sOpcao := 'A';
     edidescricao.Enabled := true;
     ediex.Enabled := true;
     ediprve.Enabled := true;
     edicbar.Enabled := true;
     edicaux.Enabled := true;


     ediiva.Enabled := true;
     edibscalcst.Enabled := true;
     ediicmscalcst.Enabled := true;
     edisimplesncm.Enabled := true;
     edicest.Enabled := true;
     ckbcompoetnf.Enabled := true;
     cbxnund.Enabled := true;
     cbxdescicms_cod1.Enabled := true;
     cbxdescipi_cod2.Enabled := true;
     cbxdesccf_cod3.Enabled := true;
     cbxdescsita_cod4.Enabled := true;
     cbxdescsitb_cod5.Enabled := true;
     cbxdescmodbs_cod6.Enabled := true;
     cbxdescmodbst_cod7.Enabled := true;
     cbxdescvii_cod8.Enabled := true;
     cbxdescpis_cod9.Enabled := true;
     cbxdesccofins_cod10.Enabled := true;
     cbxdesccfop_cod11.Enabled := true;
     cbxdescoimp_cod12.Enabled := true;
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
     ediex.Enabled := false;
     ediprve.Enabled := false;
     edicbar.Enabled := false;
     edicaux.Enabled := false;

     ediiva.Enabled := false;
     edibscalcst.Enabled := false;
     ediicmscalcst.Enabled := false;
     edisimplesncm.Enabled := false;
     edicest.Enabled := false;

     ckbcompoetnf.Enabled := false;
     cbxnund.Enabled := false;
     cbxdescicms_cod1.Enabled := false;
     cbxdescipi_cod2.Enabled := false;
     cbxdesccf_cod3.Enabled := false;
     cbxdescsita_cod4.Enabled := false;
     cbxdescsitb_cod5.Enabled := false;
     cbxdescmodbs_cod6.Enabled := false;
     cbxdescmodbst_cod7.Enabled := false;
     cbxdescvii_cod8.Enabled := false;
     cbxdescpis_cod9.Enabled := false;
     cbxdesccofins_cod10.Enabled := false;
     cbxdesccfop_cod11.Enabled := false;
     cbxdescoimp_cod12.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;
   end;
//endi


end;

procedure Tfrmpesqprodutos.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_produtos.IndexName;
    if (bInsereD) or (sOpcao = 'I') then
       begin
         bFiltrar := cds_produtos.Filtered;
         cds_produtos.Filtered := false;

         cds_produtos.IndexName := 'codigo';
         cds_produtos.Last;
         //icodigo := cds_produtos.fieldbyname('codigo').asInteger;
         cds_produtos.Append;
         //cds_produtos.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_produtos.Edit;
    cds_produtos.FieldByName('descricao').asString := edidescricao.Text;
    cds_produtos.FieldByName('ex').asString := ediex.Text;
    cds_produtos.FieldByName('prve').asfloat := strtofloat(tirapontos(ediprve.Text));
    cds_produtos.FieldByName('cbar').asString := edicbar.Text;
    cds_produtos.FieldByName('caux').asString := edicaux.Text;

    cds_produtos.FieldByName('iva').asfloat := strtofloat(tirapontos(ediiva.Text));

    cds_produtos.FieldByName('bscalcst').asfloat := strtofloat(tirapontos(edibscalcst.Text));
    cds_produtos.FieldByName('icmscalcst').asfloat := strtofloat(tirapontos(ediicmscalcst.Text));
    cds_produtos.FieldByName('simplesncm').asString := edisimplesncm.Text;
    cds_produtos.FieldByName('cest').asString := edicest.Text;
    
    if ckbcompoetnf.Checked then
       cds_produtos.FieldByName('compoetnf').asString := 'T'
    else
       cds_produtos.FieldByName('compoetnf').asString := 'F';
    //endi
    cds_produtos.FieldByName('cicms').asInteger := frmdados.cds_Temp.fieldbyname('cod1P').asInteger;
    cds_produtos.FieldByName('cipi').asInteger := frmdados.cds_Temp.fieldbyname('cod2P').asInteger;
    cds_produtos.FieldByName('ccfncm').asInteger := frmdados.cds_Temp.fieldbyname('cod3P').asInteger;
    cds_produtos.FieldByName('csita').asInteger := frmdados.cds_Temp.fieldbyname('cod4P').asInteger;
    cds_produtos.FieldByName('csitb').asInteger := frmdados.cds_Temp.fieldbyname('cod5P').asInteger;
    cds_produtos.FieldByName('cmodbscalc').asInteger := frmdados.cds_Temp.fieldbyname('cod6P').asInteger;
    cds_produtos.FieldByName('cmodbscalcst').asInteger := frmdados.cds_Temp.fieldbyname('cod7P').asInteger;
    cds_produtos.FieldByName('cvii').asInteger := frmdados.cds_Temp.fieldbyname('cod8P').asInteger;
    cds_produtos.FieldByName('cpis').asInteger := frmdados.cds_Temp.fieldbyname('cod9P').asInteger;
    cds_produtos.FieldByName('ccofins').asInteger := frmdados.cds_Temp.fieldbyname('cod10P').asInteger;
    cds_produtos.FieldByName('ccfop').asInteger := frmdados.cds_Temp.fieldbyname('cod11P').asInteger;
    cds_produtos.FieldByName('coimp').asInteger := frmdados.cds_Temp.fieldbyname('cod12P').asInteger;
    cds_produtos.FieldByName('cund').asInteger := frmdados.cds_Temp.fieldbyname('cod13P').asInteger;
    cds_produtos.FieldByName('ccsosn').asInteger := frmdados.cds_Temp.fieldbyname('cod14P').asInteger;

    cds_produtos.Post;

     cds_produtos.IndexName := aIndex;
    if cds_produtos.Filter <> '' then
       cds_produtos.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
pctcadprod.TabIndex := 0;
sOpcao := 'A';

bInsereD := false;
end;

procedure tfrmpesqprodutos.carregaficha;
begin

if bInsereD then
   exit;
//endi


with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_produtos.fieldbyname('codigo').asfloat);
    edidescricao.Text := cds_produtos.fieldbyname('descricao').asString;
    ediex.Text := cds_produtos.fieldbyname('ex').asString;


    ediprve.Text := formatfloat('###,###,##0.00', cds_produtos.fieldbyname('prve').asfloat);
    edicbar.Text := cds_produtos.fieldbyname('cbar').asString;
    edicaux.Text := cds_produtos.fieldbyname('caux').asString;

    edibscalcst.Text := formatfloat('###,###,##0.00', cds_produtos.fieldbyname('bscalcst').asfloat);
    ediiva.Text := formatfloat('###,###,##0.00', cds_produtos.fieldbyname('iva').asfloat);
    
    ediicmscalcst.Text := formatfloat('###,###,##0.00', cds_produtos.fieldbyname('icmscalcst').asfloat);

    edisimplesncm.Text := cds_produtos.fieldbyname('simplesncm').asString;
    edicest.Text := cds_produtos.fieldbyname('cest').asString;

    if cds_produtos.fieldbyname('compoetnf').asString = 'T' then
       ckbcompoetnf.Checked := true
    else
       ckbcompoetnf.Checked := false;
    //endi
    
    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1P').asInteger := cds_produtos.FieldByName('cicms').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2P').asInteger := cds_produtos.FieldByName('cipi').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3P').asInteger := cds_produtos.FieldByName('ccfncm').asInteger;
    frmdados.cds_Temp.fieldbyname('cod4P').asInteger := cds_produtos.FieldByName('csita').asInteger;
    frmdados.cds_Temp.fieldbyname('cod5P').asInteger := cds_produtos.FieldByName('csitb').asInteger;
    frmdados.cds_Temp.fieldbyname('cod6P').asInteger := cds_produtos.FieldByName('cmodbscalc').asInteger;
    frmdados.cds_Temp.fieldbyname('cod7P').asInteger := cds_produtos.FieldByName('cmodbscalcst').asInteger;
    frmdados.cds_Temp.fieldbyname('cod8P').asInteger := cds_produtos.FieldByName('cvii').asInteger;
    frmdados.cds_Temp.fieldbyname('cod9P').asInteger := cds_produtos.FieldByName('cpis').asInteger;
    frmdados.cds_Temp.fieldbyname('cod10P').asInteger := cds_produtos.FieldByName('ccofins').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11P').asInteger := cds_produtos.FieldByName('ccfop').asInteger;
    frmdados.cds_Temp.fieldbyname('cod12P').asInteger := cds_produtos.FieldByName('coimp').asInteger;
    frmdados.cds_Temp.fieldbyname('cod13P').asInteger := cds_produtos.FieldByName('cund').asInteger;
    frmdados.cds_Temp.fieldbyname('cod14P').asInteger := cds_produtos.FieldByName('ccsosn').asInteger;



  end;
//endi

end;

procedure Tfrmpesqprodutos.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 1;
sclassificar := 'DESCRIÇÃO';
sordenado := 'descricao';
edilocalizar.Text := '';
frmdados.cds_produtos.IndexName := 'descricao';
frmdados.cds_produtos.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure Tfrmpesqprodutos.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_produtos.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqprodutos.edidescricaoKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqprodutos.btnproximoClick(Sender: TObject);
begin
frmdados.cds_produtos.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqprodutos.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_produtos.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqprodutos.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroprodutos = nil then
   begin
      frmfiltroprodutos := tfrmfiltroprodutos.Create(self);
      frmfiltroprodutos.Showmodal;
      frmfiltroprodutos.Free;
   end;
//endi

end;

procedure Tfrmpesqprodutos.dbg_produtosKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqprodutos.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_produtos.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure Tfrmpesqprodutos.edilocalizarKeyPress(Sender: TObject;
  var Key: Char);
begin

if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     filtro;
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

procedure Tfrmpesqprodutos.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_produtos.Filtered := false;
    cds_produtos.Filter := '';
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

retirarfiltro;
end;

procedure Tfrmpesqprodutos.btnimprimirClick(Sender: TObject);
begin
frmrelprodutos := tfrmrelprodutos.Create(self);
frmrelprodutos.relatorio.Preview;
frmrelprodutos.Free;
end;

procedure Tfrmpesqprodutos.ediprveKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqprodutos.edibscalcstKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqprodutos.ediprveExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(ediprve.Text));
ediprve.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqprodutos.edibscalcstExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(edibscalcst.Text));
edibscalcst.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure Tfrmpesqprodutos.ediicmscalcstExit(Sender: TObject);
var
   fValorSp:real;
begin
fValorSp := strtofloat(tirapontos(ediicmscalcst.Text));
ediicmscalcst.Text := formatfloat('###,###,##0.00',fValorSp)
end;

procedure tfrmpesqprodutos.comportaenterdb;
begin
  //if frmpesqnf <> nil then
  //   begin
  //     if frmpesqnf.pctdados.TabIndex = 2 then
  //        begin
  //          frmpesqnf.edicpro.Text := frmdados.cds_produtos.fieldbyname('codigo').asString;
  //        end;
       //endi


  //   end;
  //endi
end;

procedure Tfrmpesqprodutos.dbg_produtosDblClick(Sender: TObject);
begin
comportaenterdb;
end;

procedure Tfrmpesqprodutos.dbg_produtosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   begin
     comportaenterdb;
   end;
//endi

end;

procedure Tfrmpesqprodutos.FormCreate(Sender: TObject);
begin

frmdados.cds_produtos.Active := false;
frmdados.sql_produtos.Active := false;
frmdados.sql_produtos.SQL.Clear;
frmdados.sql_produtos.SQL.Add('select * from produtos');
frmdados.sql_produtos.Active := true;
frmdados.cds_produtos.Active := true;

frmdados.cds_icms.Active := false;
frmdados.sql_icms.Active := false;
frmdados.sql_icms.SQL.Clear;
frmdados.sql_icms.SQL.Add('select * from icms');
frmdados.sql_icms.Active := true;
frmdados.cds_icms.Active := true;

frmdados.cds_ipi.Active := false;
frmdados.sql_ipi.Active := false;
frmdados.sql_ipi.SQL.Clear;
frmdados.sql_ipi.SQL.Add('select * from ipi');
frmdados.sql_ipi.Active := true;
frmdados.cds_ipi.Active := true;

frmdados.sql_cf.Active := true;
frmdados.cds_cf.Active := true;

frmdados.sql_sita.Active := true;
frmdados.cds_sita.Active := true;

frmdados.sql_sitb.Active := true;
frmdados.cds_sitb.Active := true;

frmdados.sql_modbc.Active := true;
frmdados.cds_modbc.Active := true;

frmdados.sql_modbcst.Active := true;
frmdados.cds_modbcst.Active := true;

frmdados.sql_impostoII.Active := true;
frmdados.cds_impostoII.Active := true;

frmdados.sql_pis.Active := true;
frmdados.cds_pis.Active := true;

frmdados.sql_cofins.Active := true;
frmdados.cds_cofins.Active := true;

frmdados.sql_cfop.Active := true;
frmdados.cds_cfop.Active := true;

frmdados.sql_impostoIII.Active := true;
frmdados.cds_impostoIII.Active := true;

frmdados.sql_csosn.Active := true;
frmdados.cds_csosn.Active := true;

frmdados.sql_unidade.Active := true;
frmdados.cds_unidade.Active := true;

end;

procedure Tfrmpesqprodutos.edisimplesncmKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure tfrmpesqprodutos.filtratrib;
begin

  with frmdados do
    begin
      cds_sitb.Filtered := false;
      cds_sitb.Filter := 'cregime = '+inttostr( cbxregime.itemindex );
      cds_sitb.Filtered := true;
    end;
  //endth


end;

procedure Tfrmpesqprodutos.cbxregimeClick(Sender: TObject);
begin
//filtratrib;
end;

procedure Tfrmpesqprodutos.BitBtn1Click(Sender: TObject);
begin

  bInsereD := true;

  pctdados.TabIndex := 1;

  btnnova.Click;


end;

procedure Tfrmpesqprodutos.tbslistaShow(Sender: TObject);
begin
sopcao := '';
bInsereD := false;

end;

procedure Tfrmpesqprodutos.TabSheet2Show(Sender: TObject);
begin
  with frmdados do
     begin
       sql_estados.Active := false;
       cds_estados.Active := false;
       sql_estados.SQL.Clear;
       sql_estados.SQL.Add('select * from estados');
       sql_estados.Active := true;
       cds_estados.Active := true;


       sql_aliqinter.Active := false;
       cds_aliqinter.Active := false;
       sql_aliqinter.SQL.Clear;
       sql_aliqinter.SQL.Add('select * from aliqinter where codprod = '+  cds_produtos.fieldbyname('codigo').AsString );
       sql_aliqinter.Active := true;
       cds_aliqintercodprod.DefaultExpression :=  cds_produtos.fieldbyname('codigo').AsString;
       cds_aliqinterst.DefaultExpression := 'N';
       cds_aliqinter.Active := true;



     end;
end;

procedure Tfrmpesqprodutos.Button1Click(Sender: TObject);
begin
  with frmdados do
    begin
      cds_aliqinter.Append;

    end;

  
end;

procedure Tfrmpesqprodutos.Button3Click(Sender: TObject);
begin
with frmdados do
   begin

     if cds_aliqinter.State in [dsinsert, dsedit] then
        begin

          cds_aliqinter.Post;

        end;


   end;


end;

procedure Tfrmpesqprodutos.Button2Click(Sender: TObject);
begin
  with frmdados do
    begin

      if cds_aliqinter.RecordCount = 0 then
         exit;

      if application.MessageBox('Deseja realmente excluir este registro?','Confirma exclusão',mb_yesno+mb_iconInformation+mb_defbutton2) = 6 then
         begin
           cds_aliqinter.Delete;

         end;

    end;
end;


procedure tfrmpesqprodutos.filtro;
begin
  with frmdados do
    begin
      frmdados.cds_produtos.Active := false;
      frmdados.sql_produtos.Active := false;
      frmdados.sql_produtos.SQL.Clear;
      frmdados.sql_produtos.SQL.Add('select * from produtos where descricao like  '+quotedstr('%'+edilocalizar.Text+'%'  ));
      frmdados.sql_produtos.Active := true;
      frmdados.cds_produtos.Active := true;
    end;


end;

procedure tfrmpesqprodutos.retirarfiltro;
begin
  with frmdados do
    begin
      frmdados.cds_produtos.Active := false;
      frmdados.sql_produtos.Active := false;
      frmdados.sql_produtos.SQL.Clear;
      frmdados.sql_produtos.SQL.Add('select * from produtos');
      frmdados.sql_produtos.Active := true;
      frmdados.cds_produtos.Active := true;
    end;


end;


procedure Tfrmpesqprodutos.edicestKeyPress(Sender: TObject; var Key: Char);
begin
  if (key = #13) then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
       exit;
     end;
  //endif

end;

procedure Tfrmpesqprodutos.BitBtn2Click(Sender: TObject);
begin
 frmpcodcest := tfrmpcodcest.create(self);
 frmpcodcest.showmodal;
 frmpcodcest.free;



end;

procedure Tfrmpesqprodutos.BitBtn3Click(Sender: TObject);
begin
       try
       frmbaixarncmi := tfrmbaixarncmi(self);
       //frmbaixarncmi.Visible := false;

       frmbaixarncmi.Showmodal;

       finally
       frmbaixarncmi.free;
       end;
end;

procedure Tfrmpesqprodutos.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
   if key = #13 then
      begin
        if frmdados.cds_aliqinter.State in [dsinsert, dsEdit] then
           begin
             frmdados.cds_aliqinter.Post; 

           end;
        //end
      end;
   //end
end;

end.
