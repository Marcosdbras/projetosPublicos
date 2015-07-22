unit upesqprodnf;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, DBCtrls, ComCtrls, Buttons, Grids, DBGrids, Math;

type
  Tfrmpesqprodnf = class(TForm)
    pctcadnf: TPageControl;
    tbstransportador: TTabSheet;
    Label24: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    Label25: TLabel;
    Label49: TLabel;
    edicnpjtransp: TDBText;
    Label50: TLabel;
    enderecotransp: TDBText;
    Label51: TLabel;
    DBText23: TDBText;
    Label52: TLabel;
    edibairrotransp: TDBText;
    Label53: TLabel;
    ediceptransp: TDBText;
    Label54: TLabel;
    edimunicipiotransp: TDBText;
    Label55: TLabel;
    editelefonestransp: TDBText;
    Label56: TLabel;
    ediuftransp: TDBText;
    Label57: TLabel;
    ediietransp: TDBText;
    Label58: TLabel;
    Label59: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    cbxdesctransp_cod5nf: TDBLookupComboBox;
    cbxdescfreteporconta_cod2nf: TDBLookupComboBox;
    ediplacavei: TEdit;
    EDIUFVEI: TEdit;
    EDIQUANTIDADE: TEdit;
    ediespecie: TEdit;
    edimarca: TEdit;
    EDINUMERO: TEdit;
    EDIPESOB: TEdit;
    EDIPESOL: TEdit;
    tbstotais: TTabSheet;
    Label3: TLabel;
    Label2: TLabel;
    Label20: TLabel;
    Label23: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    edibscalcsubstrib: TEdit;
    EDIVLRICMSSUBTRIB: TEdit;
    editvlrfrete: TEdit;
    EDITVLRSEG: TEdit;
    editvlrout: TEdit;
    tbsadicnf: TTabSheet;
    mmoadicnf: TMemo;
    lbltitdest: TLabel;
    lbldest: TLabel;
    btnimprime: TButton;
    Label7: TLabel;
    cbxdesctiponf_cod1nf: TDBLookupComboBox;
    Label5: TLabel;
    cbxdescnatop_cod6nf: TDBLookupComboBox;
    Label26: TLabel;
    edidatasai: TMaskEdit;
    Label27: TLabel;
    edihorasai: TMaskEdit;
    pctdados: TPageControl;
    tbsprodutos: TTabSheet;
    tbsservico: TTabSheet;
    Label1: TLabel;
    edicpro: TEdit;
    Label6: TLabel;
    edinpro: TEdit;
    Label10: TLabel;
    ediqtde: TEdit;
    Label11: TLabel;
    ediprve: TEdit;
    Label12: TLabel;
    edisubtotal: TEdit;
    pctprod: TPageControl;
    tbslistaprod: TTabSheet;
    tbstributacao: TTabSheet;
    Label13: TLabel;
    cbxdescicms_cod1prodnf: TDBLookupComboBox;
    Label14: TLabel;
    cbxdescipi_cod2Prodnf: TDBLookupComboBox;
    Label21: TLabel;
    cbxdesccf_cod3prodnf: TDBLookupComboBox;
    Label22: TLabel;
    cbxdescsita_cod4prodnf: TDBLookupComboBox;
    Label28: TLabel;
    cbxdescsitb_cod5prodnf: TDBLookupComboBox;
    Label29: TLabel;
    cbxdescmodbs_cod6prodnf: TDBLookupComboBox;
    Label30: TLabel;
    cbxdescmodbst_cod7prodnf: TDBLookupComboBox;
    Label31: TLabel;
    cbxdescvii_cod8prodnf: TDBLookupComboBox;
    Label32: TLabel;
    cbxdescpis_cod9prodnf: TDBLookupComboBox;
    Label33: TLabel;
    cbxdesccofins_cod10prodnf: TDBLookupComboBox;
    Label34: TLabel;
    cbxdesccfop_cod11prodnf: TDBLookupComboBox;
    Label35: TLabel;
    cbxdescoimp_cod12prodnf: TDBLookupComboBox;
    Label36: TLabel;
    edibscalcst: TEdit;
    Label37: TLabel;
    ediicmscalcst: TEdit;
    ckbcompoetnf: TCheckBox;
    Label38: TLabel;
    lblproduto: TLabel;
    SpeedButton1: TSpeedButton;
    dbgprod: TDBGrid;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    btnsalvar: TBitBtn;
    btnalterar: TBitBtn;
    btnexcluir: TBitBtn;
    Label9: TLabel;
    cbxdescund_cod13prodnf: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure btnimprimeClick(Sender: TObject);
    procedure limparprod;
    procedure ediqtdeKeyPress(Sender: TObject; var Key: Char);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ediprveKeyPress(Sender: TObject; var Key: Char);
    procedure edisubtotalKeyPress(Sender: TObject; var Key: Char);
    procedure edibscalcstKeyPress(Sender: TObject; var Key: Char);
    procedure ediicmscalcstKeyPress(Sender: TObject; var Key: Char);
    //function fnumD(Objeto: TEdit; Texto, VKey: String; Espaco, Decimal: Integer): String;
    procedure gravarprod;
    procedure btnsalvarClick(Sender: TObject);
    procedure carregafichaprod;
    procedure tbstributacaoShow(Sender: TObject);
    procedure btnanteriorClick(Sender: TObject);
    procedure btnproximoClick(Sender: TObject);


  private
    { Private declarations }
        sOpcaoprod:string;
        icpro:integer;

  public
    { Public declarations }
  end;

var
  frmpesqprodnf: Tfrmpesqprodnf;

implementation
   uses ugeral, udados;
{$R *.dfm}

procedure Tfrmpesqprodnf.FormShow(Sender: TObject);
begin
limparprod;
pctcadnf.TabIndex := 0;

end;

procedure Tfrmpesqprodnf.btnimprimeClick(Sender: TObject);
begin
close;
end;

procedure tfrmpesqprodnf.limparprod;
begin
  edicpro.Text := '';
  edinpro.Text := '';
  ediqtde.Text := '';
  ediprve.Text := '';
  edisubtotal.Text := '';
  edibscalcst.Text := '';
  ediicmscalcst.Text := '';
  ckbcompoetnf.Checked := True;
  frmdados.cds_Temp.edit;
  frmdados.cds_Temp.FieldByName('cod1prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod4prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod5prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod6prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod7prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod8prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod9prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod10prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod11prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod12prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod13prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod14prodnf').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod1prodnf').asInteger := 0;

  pctprod.TabIndex := 0;


end;




procedure Tfrmpesqprodnf.ediqtdeKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
  begin
    key := #0;
    exit;
  end;
//endi
fnumD(ediqtde,ediqtde.Text,key,21,2);
if strtofloat(tirapontos(ediqtde.Text)) = 0 then
   begin
     ediqtde.Text := '';
     exit;
   end;
//endi




end;

procedure Tfrmpesqprodnf.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:=caFree;
  frmPesqprodnf:=nil;
  form_ativo := '';

end;

procedure Tfrmpesqprodnf.ediprveKeyPress(Sender: TObject; var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
  begin
    key := #0;
    exit;
  end;
//endi
fnumD(ediprve,ediprve.Text,key,21,2);
if strtofloat(tirapontos(ediprve.Text)) = 0 then
   begin
     ediprve.Text := '';
     exit;
   end;
//endi

end;

procedure Tfrmpesqprodnf.edisubtotalKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
  begin
    key := #0;
    exit;
  end;
//endi
fnumD(edisubtotal,edisubtotal.Text,key,21,2);
if strtofloat(tirapontos(edisubtotal.Text)) = 0 then
   begin
     edisubtotal.Text := '';
     exit;
   end;
//endi

end;

procedure Tfrmpesqprodnf.edibscalcstKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
  begin
    key := #0;
    exit;
  end;
//endi
fnumD(edibscalcst,edibscalcst.Text,key,21,2);
if strtofloat(tirapontos(edibscalcst.Text)) = 0 then
   begin
     edibscalcst.Text := '';
     exit;
   end;
//endi

end;

procedure Tfrmpesqprodnf.ediicmscalcstKeyPress(Sender: TObject;
  var Key: Char);
begin
if not (key in ['0'..'9', #8]) then
  begin
    key := #0;
    exit;
  end;
//endi
fnumD(ediicmscalcst,ediicmscalcst.Text,key,21,2);
if strtofloat(tirapontos(ediicmscalcst.Text)) = 0 then
   begin
     ediicmscalcst.Text := '';
     exit;
   end;
//endi

end;

procedure tfrmpesqprodnf.gravarprod;
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_nfp.IndexName;
    if sOpcaoprod = 'I' then
       begin
         bFiltrar := cds_nfp.Filtered;
         cds_nfp.Filtered := false;

         cds_nfp.IndexName := 'codigo';
         cds_nfp.Last;
         icodigo := cds_nfp.fieldbyname('codigo').asInteger;
         cds_nfp.Append;
         cds_nfp.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi


    cds_nfp.Edit;
    cds_nfp.FieldByName('cpro').asInteger := icpro;
    cds_nfp.FieldByName('npro').asString := edinpro.Text;
    if  ediqtde.text <> '' then
        cds_nfp.FieldByName('qtde').asfloat := strtofloat(tirapontos(ediqtde.text));
    //endi
    if  ediprve.text <> '' then
        cds_nfp.FieldByName('prve').asfloat := strtofloat(tirapontos(ediprve.text));
    //endi
    if  edisubtotal.text <> '' then
        cds_nfp.FieldByName('subtotal').asfloat := strtofloat(tirapontos(edisubtotal.text));
    //endi
    cds_nfp.FieldByName('cod1prodnf').asInteger := cds_Temp.fieldbyname('cod1prodnf').asInteger;
    cds_nfp.FieldByName('cod2prodnf').asInteger := cds_Temp.fieldbyname('cod2prodnf').asInteger;
    cds_nfp.FieldByName('cod3prodnf').asInteger := cds_Temp.fieldbyname('cod3prodnf').asInteger;
    cds_nfp.FieldByName('cod4prodnf').asInteger := cds_Temp.fieldbyname('cod4prodnf').asInteger;
    cds_nfp.FieldByName('cod5prodnf').asInteger := cds_Temp.fieldbyname('cod5prodnf').asInteger;
    cds_nfp.FieldByName('cod6prodnf').asInteger := cds_Temp.fieldbyname('cod6prodnf').asInteger;
    cds_nfp.FieldByName('cod7prodnf').asInteger := cds_Temp.fieldbyname('cod7prodnf').asInteger;
    cds_nfp.FieldByName('cod8prodnf').asInteger := cds_Temp.fieldbyname('cod8prodnf').asInteger;
    cds_nfp.FieldByName('cod9prodnf').asInteger := cds_Temp.fieldbyname('cod9prodnf').asInteger;
    cds_nfp.FieldByName('cod10prodnf').asInteger := cds_Temp.fieldbyname('cod10prodnf').asInteger;
    cds_nfp.FieldByName('cod11prodnf').asInteger := cds_Temp.fieldbyname('cod11prodnf').asInteger;
    cds_nfp.FieldByName('cod12prodnf').asInteger := cds_Temp.fieldbyname('cod12prodnf').asInteger;
    cds_nfp.FieldByName('cod13prodnf').asInteger := cds_Temp.fieldbyname('cod13prodnf').asInteger;
    if edibscalcst.text <> '' then
       cds_nfp.FieldByName('bscalcst').asfloat := strtofloat(tirapontos(edibscalcst.text));
    //endi
    if ediicmscalcst.text <> '' then
       cds_nfp.FieldByName('icmscalcst').asfloat := strtofloat(tirapontos(ediicmscalcst.text));
    //endi


    if ckbcompoetnf.Checked then
       cds_nfp.FieldByName('compoetnf').asString  := 'T'
    else
       cds_nfp.FieldByName('compoetnf').asString  := 'F';
    //endi


    cds_nfp.Post;

     cds_nfp.IndexName := aIndex;
    if cds_nfp.Filter <> '' then
       cds_nfp.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcaoprod := 'A';
end;

procedure Tfrmpesqprodnf.btnsalvarClick(Sender: TObject);
begin
  gravarprod;
  pctprod.TabIndex := 0;
end;


procedure tfrmpesqprodnf.carregafichaprod;
begin
with frmdados do
  begin
    sOpcaoprod := 'A';
    //edibscalcst.Text := frmdados.cds_nfp.fieldbyname('').asfloat

    lblproduto.Caption := frmdados.cds_nfp.fieldbyname('npro').asString;
    edibscalcst.text   := formatfloat('###,###,##0.00', cds_nfp.FieldByName('bscalcst').asfloat);
    ediicmscalcst.text := formatfloat('###,###,##0.00', cds_nfp.FieldByName('icmscalcst').asfloat);


    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1prodnf').asInteger := cds_nfp.FieldByName('cod1prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2prodnf').asInteger := cds_nfp.FieldByName('cod2prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3prodnf').asInteger := cds_nfp.FieldByName('cod3prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod4prodnf').asInteger := cds_nfp.FieldByName('cod4prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod5prodnf').asInteger := cds_nfp.FieldByName('cod5prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod6prodnf').asInteger := cds_nfp.FieldByName('cod6prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod7prodnf').asInteger := cds_nfp.FieldByName('cod7prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod8prodnf').asInteger := cds_nfp.FieldByName('cod8prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod9prodnf').asInteger := cds_nfp.FieldByName('cod9prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod10prodnf').asInteger := cds_nfp.FieldByName('cod10prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod11prodnf').asInteger := cds_nfp.FieldByName('cod11prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod12prodnf').asInteger := cds_nfp.FieldByName('cod12prodnf').asInteger;
    frmdados.cds_Temp.fieldbyname('cod13prodnf').asInteger := cds_nfp.FieldByName('cod13prodnf').asInteger;


  end;
//endi

end;

procedure Tfrmpesqprodnf.tbstributacaoShow(Sender: TObject);
begin
carregafichaprod;
end;

procedure Tfrmpesqprodnf.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_nfp.Prior;
carregafichaprod;
end;

procedure Tfrmpesqprodnf.btnproximoClick(Sender: TObject);
begin
frmdados.cds_nfp.next;
carregafichaprod;

end;

end.
