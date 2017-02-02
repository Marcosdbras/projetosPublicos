unit upesqnfemi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, ExtCtrls, Buttons, Mask,
  DBCtrls, DB, DbTables, ImgList, frxClass, frxDBSet;

type
  Tfrmpesqnfemi = class(TForm)
    pnlsuperior: TPanel;
    pnlinferior: TPanel;
    pnlesquerda: TPanel;
    pnlcentro: TPanel;
    pctdados: TPageControl;
    tbslista: TTabSheet;
    tbsficha: TTabSheet;
    dbg_nfemi: TDBGrid;
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
    edinome: TEdit;
    edivlrtotal: TEdit;
    EDINNF: TEdit;
    btnexcluir: TBitBtn;
    stbrodape: TStatusBar;
    imgprincipal: TImageList;
    pnlinternodir: TPanel;
    btnanterior: TBitBtn;
    btnproximo: TBitBtn;
    imglista: TImageList;
    btndetalhe: TBitBtn;
    Panel2: TPanel;
    Label5: TLabel;
    lbltotnfe: TLabel;
    Label6: TLabel;
    EDIICORRECAO: TEdit;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
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
    procedure dbg_nfemiKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edilocalizarChange(Sender: TObject);
    procedure edilocalizarKeyPress(Sender: TObject; var Key: Char);
    procedure btnlimparClick(Sender: TObject);
    procedure btnimprimirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure dbg_nfemiDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure btndetalheClick(Sender: TObject);
    procedure totalg;
    procedure EDIICORRECAOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
    sOpcao:string;
  public
    { Public declarations }
    sfiltro,stitrel,sclassificar,sOrdenado:string;
    iClassificar:integer;
  end;

var
  frmpesqnfemi: Tfrmpesqnfemi;

implementation
   uses ugeral, udados, ufiltronfemi, urelnfemi, udetalhepedido, uprincipal;
{$R *.dfm}

procedure Tfrmpesqnfemi.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin


  frmdados.cds_nfe.Active := false;
  frmdados.sql_nfe.Active := false;

  frmdados.cds_clientes.Active := false;
  frmdados.sql_clientes.Active := false;

  frmdados.cds_fornecedores.Active := false;
  frmdados.sql_fornecedores.Active := false;

  frmdados.cds_transportador.Active := false;
  frmdados.sql_transportador.Active := false;


  Action:=caFree;
  frmPesqnfemi:=nil;
  form_ativo := '';
end;

procedure tfrmpesqnfemi.Limpar;
begin
  lblcodigo.Caption := '00000';
  edinome.Text := '';
  edivlrtotal.Text := '0,00';
  edinnf.Text := '0';
  ediicorrecao.Text := '1';
end;

procedure Tfrmpesqnfemi.btnnovaClick(Sender: TObject);
begin
sOpcao := 'I';
//edinome.Enabled := true;
//edivlrtotal.Enabled := true;
//edinnf.Enabled := true;
//btnsalvar.Enabled := true;
Limpar;
ediicorrecao.SetFocus;
btnexcluir.Enabled := false;
end;

procedure Tfrmpesqnfemi.tbsfichaShow(Sender: TObject);
begin
Limpar;

//não editável
edinome.Enabled := false;
edivlrtotal.Enabled := false;
edinnf.Enabled := false;
btnsalvar.Enabled := false;
btnexcluir.Enabled := false;
btnnova.Enabled := false;
ediicorrecao.Enabled := false;


if frmdados.cds_nfe.RecordCount > 0 then
   begin
     sOpcao := 'A';
     //edinome.Enabled := true;
     //edivlrtotal.Enabled := true;
     //edinnf.Enabled := true;
     ediicorrecao.Enabled := true;
     btnsalvar.Enabled := true;
     //btnexcluir.Enabled := true;
     carregaficha;
     if edinome.Enabled then
        begin
          edinome.SetFocus;
        end;
     //endi
   end
else
   begin
     edinome.Enabled := false;
     edivlrtotal.Enabled := false;
     edinnf.Enabled := false;
     ediicorrecao.Enabled := false;
     btnsalvar.Enabled := false;
     btnexcluir.Enabled := false;

   end;
//endi


end;

procedure Tfrmpesqnfemi.btnsalvarClick(Sender: TObject);
var
  icodigo:Integer;
  aIndex:String;
  bFiltrar:boolean;
begin
bFiltrar := false;




with frmdados do
  begin
    aIndex := cds_nfe.IndexName;

    if sOpcao = 'I' then
       begin
         bFiltrar := cds_nfe.Filtered;
         cds_nfe.Filtered := false;
         cds_nfe.IndexName := 'codigo';
         cds_nfe.Last;
         //icodigo := cds_nfe.fieldbyname('codigo').asInteger;
         cds_nfe.Append;
         //cds_nfe.fieldbyname('codigo').asInteger := icodigo + 1;

       end;
    //endi
    cds_nfe.Edit;
    //cds_nfe.FieldByName('nome').asString := edinome.Text;
    cds_nfe.FieldByName('vlrtotal').asfloat := strtofloat(tirapontos(edivlrtotal.Text));
    cds_nfe.FieldByName('nnf').asInteger := strtoint(edinnf.Text);
    cds_nfe.FieldByName('icorrecao').asInteger := strtoint( ediicorrecao.Text);
    cds_nfe.Post;

    cds_nfe.IndexName := aIndex;

    if cds_nfe.Filter <> '' then
       cds_nfe.Filtered := bFiltrar;
    //endi

  end;
//endth
pctdados.TabIndex := 0;
sOpcao := 'A';
end;

procedure tfrmpesqnfemi.carregaficha;
begin
with frmdados do
  begin
    sOpcao := 'A';
    lblcodigo.Caption := formatfloat('00000',cds_nfe.fieldbyname('codigo').asfloat);
    edinome.Text := cds_nfe.fieldbyname('nomedest').asString;
    edivlrtotal.Text := formatfloat('###,###,##0.00', cds_nfe.fieldbyname('vlrtotal').asfloat );
    edinnf.Text := inttostr(cds_nfe.fieldbyname('nnf').asInteger);
    if  cds_nfe.fieldbyname('icorrecao').asInteger > 0 then
       ediicorrecao.Text := inttostr(cds_nfe.fieldbyname('icorrecao').asInteger)
    else
       ediicorrecao.Text := '1';
  end;
//endi

end;

procedure Tfrmpesqnfemi.FormShow(Sender: TObject);
begin
sfiltro := '';
iClassificar := 0;
sclassificar := 'CÓDIGO';
sordenado := 'codigo';
edilocalizar.Text := '';
frmdados.cds_nfe.IndexName := sordenado;
stbrodape.Panels[0].Text := uppercase(stitrel);
stbrodape.Panels[1].Text := 'ORDENADO POR '+sclassificar;
lbllocalizar.Caption := sclassificar; 
pctdados.TabIndex := 0;



    frmdados.cds_nfe.Active := false;
    frmdados.sql_nfe.Active := false;
    frmdados.sql_nfe.SQL.Clear;
    frmdados.sql_nfe.SQL.Add('select * from nfe' );
    frmdados.sql_nfe.Active := true;
    frmdados.cds_nfe.Active := true;


totalg;
end;

procedure Tfrmpesqnfemi.btnexcluirClick(Sender: TObject);
begin

  if application.MessageBox('Deseja Realmente Excluir Esse Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
     begin
       frmdados.cds_nfe.Delete;
       pctdados.TabIndex := 0;
     end;
  //endi

end;

procedure Tfrmpesqnfemi.edinomeKeyPress(Sender: TObject; var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnfemi.btnproximoClick(Sender: TObject);
begin
frmdados.cds_nfe.Next;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi
end;

procedure Tfrmpesqnfemi.btnanteriorClick(Sender: TObject);
begin
frmdados.cds_nfe.Prior;
if pctdados.TabIndex = 1 then
   carregaficha;
//endi

end;

procedure Tfrmpesqnfemi.btnfiltrarClick(Sender: TObject);
begin
if frmfiltronfemi = nil then
   begin
      frmfiltronfemi := tfrmfiltronfemi.Create(self);
      frmfiltronfemi.Showmodal;
      frmfiltronfemi.Free;
   end;
//endi

end;

procedure Tfrmpesqnfemi.dbg_nfemiKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   SysUtils.abort;
//endi

end;

procedure Tfrmpesqnfemi.edilocalizarChange(Sender: TObject);
begin
if sOrdenado <> '' then
   if edilocalizar.Text <> '' then
      if sOrdenado <> 'dataemi' then
         begin
           frmdados.cds_nfe.Locate(sOrdenado,edilocalizar.Text,[loPartialKey,loCaseInsensitive]);
           if pctdados.TabIndex = 1 then
              begin
                carregaficha;
              end;
           //endi
         end;
      //endi
   //endi
//endi
end;

procedure Tfrmpesqnfemi.edilocalizarKeyPress(Sender: TObject;
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


     if sOrdenado <> '' then
        if edilocalizar.Text <> '' then
           if sOrdenado = 'dataemi' then
              begin
                if frmdados.cds_nfe.Locate(sOrdenado,edilocalizar.Text,[])then
                   begin
                     if pctdados.TabIndex = 1 then
                        begin
                          carregaficha;
                        end;
                     //endi
                   end
                else
                   begin
                     showmessage('DATA NÃO LOCALIZADA!!!');
                   end;
                //endi

              end;
           //endi
        //endi
     //endi

     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

end;

procedure Tfrmpesqnfemi.btnlimparClick(Sender: TObject);
begin

frmdados.cds_nfe.Active := false;
frmdados.sql_nfe.Active := false;
frmdados.sql_nfe.SQL.Clear;
frmdados.sql_nfe.SQL.Add('select * from nfe' );
frmdados.sql_nfe.Active := true;
frmdados.cds_nfe.Active := true;

totalg;

//with frmdados do
//  begin
//    cds_nfe.Filtered := false;
//    cds_nfe.Filter := '';
//  end;
//endi

stbrodape.Panels[0].Text := '';
sfiltro := '';
stitrel := '';

end;

procedure Tfrmpesqnfemi.btnimprimirClick(Sender: TObject);
begin
//frmprincipal.skin.Active := false;
//frmdados.dts_nfe.DataSet.ControlsDisabled;

frmrelnfemi := tfrmrelnfemi.Create(self);
frmrelnfemi.relatorio.Preview;
frmrelnfemi.Free;

{
with frmdados do
  begin
     while not cds_nfe.Eof do
        begin


          cds_nfe.Next;
        end;


  end;

}
//frxreport1.LoadFromFile('c:\nfe\rel\emitidas.fr3');
//frxreport1.ShowReport;

end;

procedure Tfrmpesqnfemi.FormCreate(Sender: TObject);
begin

frmdados.sql_clientes.Active := true;
frmdados.cds_clientes.Active := true;

frmdados.sql_fornecedores.Active := true;
frmdados.cds_fornecedores.Active := true;

frmdados.sql_transportador.Active := true;
frmdados.cds_transportador.Active := true;

frmdados.sql_nfe.Active := true;
frmdados.cds_nfe.Active := true;



end;

procedure Tfrmpesqnfemi.dbg_nfemiDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;

begin


  Icon := TBitmap.Create;
  if (Column.FieldName = 'ehcancelada') then
  begin
    with dbg_nfemi.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_nfe.FieldByName('ehcancelada').asString = 'T') then
        ImgLista.GetBitmap(0, Icon)
      else 
        ImgLista.GetBitmap(2, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'ehcorrigida') then
  begin
    with dbg_nfemi.Canvas do
    begin
      Brush.Color := clWhite;
      FillRect(Rect);
      if (FrmDados.Cds_nfe.FieldByName('ehcorrigida').asString = 'T') then
        ImgLista.GetBitmap(1, Icon)
      else
        ImgLista.GetBitmap(2, Icon);
      //endi
      Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
    end;
  end;


end;

procedure Tfrmpesqnfemi.btndetalheClick(Sender: TObject);
begin
frmdetalhepedido := tfrmdetalhepedido.Create(self);
frmdetalhepedido.Showmodal;
frmdetalhepedido.Free;

end;

procedure tfrmpesqnfemi.totalg;
var totalg:real;
begin
  with frmdados do
    begin
      sql_nfe.First;
      while not sql_nfe.Eof do
        begin
          totalg := totalg + sql_nfe.fieldbyname('vlrtotal').asfloat;
          sql_nfe.Next;
        end;
      //endw
    end;
  //endth

  lbltotnfe.Caption := formatfloat('###,###,##0.00',totalg);
end;

procedure Tfrmpesqnfemi.EDIICORRECAOKeyPress(Sender: TObject;
  var Key: Char);
begin
if (key = #13) then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
   end;
//endif

  If not( key in['0'..'9',#8] ) then
     begin
       beep;
       key:=#0;
     end;
  //endi

end;

end.
