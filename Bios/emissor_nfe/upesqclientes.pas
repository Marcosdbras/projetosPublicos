unit upesqclientes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList, xmldom, XMLIntf, msxmldom, XMLDoc;

type
  TfrmpesqClientes = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_clientes: TDBGrid;
    Panel1: TPanel;
    edilocalizar: TEdit;
    lbllocalizar: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    btnsalvar: TBitBtn;
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
    XMLDocument1: TXMLDocument;
    edicep: TMaskEdit;
    btnconsultacep: TSpeedButton;
    Label19: TLabel;
    Memo1: TMemo;
    btnnova: TBitBtn;
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
    procedure dbg_clientesKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure edicepExit(Sender: TObject);
    procedure btnconsultacepClick(Sender: TObject);
    procedure Memo1Enter(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure tbslistaShow(Sender: TObject);
    procedure filtro;
    procedure retirarfiltro;
  private
    { Private declarations }
    sOpcao:string;
    bInsereD:boolean;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqClientes: TfrmpesqClientes;

implementation
   uses ugeral, udados, ufiltroclientes, urelclientes, upcodibge;
{$R *.dfm}

procedure TfrmpesqClientes.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  frmdados.cds_clientes.Active := false;
  frmdados.sql_clientes.Active := false;

  frmdados.cds_Munic.Active := false;
  frmdados.sql_Munic.Active := false;

  frmdados.cds_transportador.Active := false;
  frmdados.sql_transportador.Active := false;

  frmdados.cds_Estados.Active := false;
  frmdados.sql_Estados.Active := false;

  Action:=caFree;
  frmPesqclientes:=nil;
  form_ativo := '';
end;

procedure tfrmpesqClientes.Limpar;
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
  frmdados.cds_Temp.FieldByName('cod1cc').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod2cc').asInteger := 0;
  frmdados.cds_Temp.FieldByName('cod3cc').asInteger := 0;

end;

procedure TfrmpesqClientes.btnnovaClick(Sender: TObject);
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

procedure TfrmpesqClientes.tbsfichaShow(Sender: TObject);
begin
Limpar;
if frmdados.cds_clientes.RecordCount > 0 then
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

procedure TfrmpesqClientes.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;

with frmdados do
  begin
    aIndex := cds_clientes.IndexName;
    if (bInsereD) or  (sOpcao = 'I') then
       begin
         bFiltrar := cds_clientes.Filtered;
         cds_clientes.Filtered := false;

         cds_clientes.IndexName := 'codigo';
         cds_clientes.Last;
         icodigo := cds_clientes.fieldbyname('codigo').asInteger;
         cds_clientes.Append;
         cds_clientes.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_clientes.Edit;
    cds_clientes.FieldByName('cnpj').asString := edicnpj.Text;
    cds_clientes.FieldByName('ie').asString := ediie.Text;
    cds_clientes.FieldByName('im').asString := ediim.Text;
    cds_clientes.FieldByName('nome').asString := edinome.Text;
    cds_clientes.FieldByName('fantasia').asString := edifantasia.Text;
    cds_clientes.FieldByName('telefones').asString := editelefones.Text;
    cds_clientes.FieldByName('email').asString := ediemail.Text;
    cds_clientes.FieldByName('site').asString := edisite.Text;
    cds_clientes.FieldByName('contato').asString := edicontato.Text;
    cds_clientes.FieldByName('endereco').asString := ediendereco.Text;
    cds_clientes.FieldByName('nro').asString := edinro.Text;
    cds_clientes.FieldByName('compl').asString := edicompl.Text;
    cds_clientes.FieldByName('bairro').asString := edibairro.Text;
    cds_clientes.FieldByName('cep').asString := edicep.Text;
    cds_clientes.FieldByName('obs').asString := MMOobs.Text;


    cds_clientes.FieldByName('cest').asInteger := frmdados.cds_Temp.fieldbyname('cod1cc').asInteger;
    cds_clientes.FieldByName('cmun').asInteger := frmdados.cds_Temp.fieldbyname('cod2cc').asInteger;
    cds_clientes.FieldByName('ctransp').asInteger := frmdados.cds_Temp.fieldbyname('cod3cc').asInteger;
    cds_clientes.Post;

     cds_clientes.IndexName := aIndex;
    if cds_clientes.Filter <> '' then
       cds_clientes.Filtered := bFiltrar;
    //endi



  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';

bInsereD := false;
end;

procedure tfrmpesqClientes.carregaficha;
begin

if bInsereD then
   exit;
//endi



with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_clientes.fieldbyname('codigo').asfloat);
    edicnpj.Text := cds_clientes.fieldbyname('cnpj').asString;
    ediie.Text := cds_clientes.fieldbyname('ie').asString;
    ediim.Text := cds_clientes.fieldbyname('im').asString;
    edinome.Text := cds_clientes.fieldbyname('nome').asString;
    edifantasia.Text := cds_clientes.fieldbyname('fantasia').asString;
    editelefones.Text := cds_clientes.fieldbyname('telefones').asString;
    ediemail.Text := cds_clientes.fieldbyname('email').asString;
    edisite.Text := cds_clientes.fieldbyname('site').asString;
    edicontato.Text := cds_clientes.fieldbyname('contato').asString;
    ediendereco.Text := cds_clientes.fieldbyname('endereco').asString;
    edinro.Text := cds_clientes.fieldbyname('nro').asString;
    edicompl.Text := cds_clientes.fieldbyname('compl').asString;
    edibairro.Text := cds_clientes.fieldbyname('bairro').asString;
    edicep.Text := cds_clientes.fieldbyname('cep').asString;
    MMOobs.Text := cds_clientes.fieldbyname('obs').asString;

    frmdados.cds_Temp.Edit;
    frmdados.cds_Temp.fieldbyname('cod1cc').asInteger := cds_clientes.FieldByName('cest').asInteger;
    frmdados.cds_Temp.fieldbyname('cod2cc').asInteger := cds_clientes.FieldByName('cmun').asInteger;
    frmdados.cds_Temp.fieldbyname('cod3cc').asInteger := cds_clientes.FieldByName('ctransp').asInteger;

  end;
//endi

end;

procedure TfrmpesqClientes.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 1;
sclassificar := 'NOME';
sordenado := 'nome';
edilocalizar.Text := '';
frmdados.cds_Paises.IndexName := 'nome';
frmdados.cds_clientes.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar;
pctdados.TabIndex := 0;
end;

procedure TfrmpesqClientes.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_clientes.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure TfrmpesqClientes.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure TfrmpesqClientes.btnproximoClick(Sender: TObject);
begin
frmdados.cds_clientes.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure TfrmpesqClientes.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_clientes.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure TfrmpesqClientes.btnfiltrarClick(Sender: TObject);
begin
if frmfiltroclientes = nil then
   begin
      frmfiltroclientes := tfrmfiltroclientes.Create(self);
      frmfiltroclientes.Showmodal;
      frmfiltroclientes.Free;
   end;
//endi

end;

procedure TfrmpesqClientes.dbg_clientesKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure TfrmpesqClientes.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      begin
        frmdados.cds_clientes.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
        if pctdados.TabIndex = 1 then
           begin
             carregaficha;
           end;
        //endi
      end;
   //endi
//endi
end;

procedure TfrmpesqClientes.edilocalizarKeyPress(Sender: TObject;
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

procedure TfrmpesqClientes.btnlimparClick(Sender: TObject);
begin
with frmdados do
  begin
    cds_clientes.Filtered := false;
    cds_clientes.Filter := '';
    
  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';
retirarfiltro;
end;

procedure TfrmpesqClientes.btnimprimirClick(Sender: TObject);
begin
frmrelclientes := tfrmrelclientes.Create(self);
frmrelclientes.relatorio.Preview;
frmrelclientes.Free;
end;

procedure TfrmpesqClientes.FormCreate(Sender: TObject);
begin

frmdados.cds_clientes.Active := false;
frmdados.sql_clientes.Active := false;
frmdados.sql_clientes.SQL.Clear;
frmdados.sql_clientes.SQL.Add('select * from clientes');
frmdados.sql_clientes.Active := true;
frmdados.cds_clientes.Active := true;

frmdados.sql_Munic.Active := true;
frmdados.cds_Munic.Active := true;

frmdados.sql_transportador.Active := true;
frmdados.cds_transportador.Active := true;

frmdados.sql_Estados.Active := true;
frmdados.cds_Estados.Active := true;



end;

procedure TfrmpesqClientes.edicepExit(Sender: TObject);
{
var

  scepresp,
  suf,
  scidade,
  sbairro,
  stipolog,
  slogradouro,
  sresultado,
  sresultadotxt,
  sufibge,
  scidadeibge,
  sdigito:string;
  }
begin
  {
  if frmdados.cds_Munic.Locate('fxinicial',edicep.Text,[]) then
     begin

       XMLDocument1.Active := False;
       XMLDocument1.LoadFromFile('http://www.buscarcep.com.br/?cep='+StringReplace(ediCep.Text,'-','',[rfReplaceAll])+'&formato=xml&chave='+frmdados.cds_indice.fieldbyname('chaveconsultacep').asString);
       XMLDocument1.Active := True;

       sCepResp := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['cep'].Text;
       sUF      := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['uf'].Text;
       sCidade  := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['cidade'].Text;
       sBairro  := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['bairro'].Text;
       sTipoLog := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['tipo_logradouro'].Text;
       sLogradouro := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['logradouro'].Text;
       sResultado    := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['resultado'].Text;
       sResultadoTXT := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['resultado_txt'].Text;
       sUFIBGE       := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['ibge_uf'].Text;
       sCidade   := XMLDocument1.ChildNodes['webservicecep'].ChildNodes['retorno'].ChildNodes['ibge_municipio'].Text;
       sdigito := DigitoCidade(sCidadeIBGE);

     end;
  //endi

  }
end;

procedure TfrmpesqClientes.btnconsultacepClick(Sender: TObject);
begin
  frmpcodibge := tfrmpcodibge.create(self);
  frmpcodibge.showmodal;
  frmpcodibge.free;
end;

procedure TfrmpesqClientes.Memo1Enter(Sender: TObject);
begin
  SelectNext(ActiveControl,True,True);

end;

procedure TfrmpesqClientes.BitBtn1Click(Sender: TObject);
begin
  bInsereD := true;

  pctdados.TabIndex := 1;

  btnnova.Click;

end;

procedure TfrmpesqClientes.tbslistaShow(Sender: TObject);
begin
sopcao := '';
bInsereD := false;

end;

procedure tfrmpesqclientes.filtro;
begin
  with frmdados do
    begin
      frmdados.cds_clientes.Active := false;
      frmdados.sql_clientes.Active := false;
      frmdados.sql_clientes.SQL.Clear;
      frmdados.sql_clientes.SQL.Add('select * from clientes where nome like  '+quotedstr('%'+edilocalizar.Text+'%'  ));
      frmdados.sql_clientes.Active := true;
      frmdados.cds_clientes.Active := true;
    end;


end;

procedure tfrmpesqclientes.retirarfiltro;
begin
  with frmdados do
    begin
      frmdados.cds_clientes.Active := false;
      frmdados.sql_clientes.Active := false;
      frmdados.sql_clientes.SQL.Clear;
      frmdados.sql_clientes.SQL.Add('select * from clientes');
      frmdados.sql_clientes.Active := true;
      frmdados.cds_clientes.Active := true;
    end;


end;


end.
