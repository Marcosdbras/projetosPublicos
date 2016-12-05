unit uPesqProDD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  TfrmPesqProdDD = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    DtpDataI: TDateTimePicker;
    Label2: TLabel;
    DtpDataF: TDateTimePicker;
    pnldir: TPanel;
    dbgprodutos: TDBGrid;
    Label4: TLabel;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    Bevel3: TBevel;
    Label5: TLabel;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    Bevel4: TBevel;
    edicodprod: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    pcldetalhe: TPageControl;
    tbscarac: TTabSheet;
    tbsentrada: TTabSheet;
    tbssaida: TTabSheet;
    imgfichadetalhe: TImageList;
    dbgdprodutos: TDBGrid;
    dbgentrada: TDBGrid;
    Bevel6: TBevel;
    Bevel7: TBevel;
    spdfiltrare: TSpeedButton;
    spdlimpare: TSpeedButton;
    dtpdataIe: TDateTimePicker;
    dtpdataFe: TDateTimePicker;
    Label7: TLabel;
    Label8: TLabel;
    Bevel8: TBevel;
    Label9: TLabel;
    dtpDataIs: TDateTimePicker;
    Label10: TLabel;
    DtpDataFs: TDateTimePicker;
    spdfiltrars: TSpeedButton;
    spdlimpars: TSpeedButton;
    dbgsaida: TDBGrid;
    spdprinter: TSpeedButton;
    pnlficha: TPanel;
    Label11: TLabel;
    DBEdit1: TDBEdit;
    Label12: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    Label13: TLabel;
    DBEdit2: TDBEdit;
    Label14: TLabel;
    DBEdit3: TDBEdit;
    Label15: TLabel;
    DBEdit4: TDBEdit;
    DBText1: TDBText;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgprodutosKeyPress(Sender: TObject; var Key: Char);
    procedure dbgprodutosEnter(Sender: TObject);
    procedure dbgdprodutosEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure dbgvencimentosEnter(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure dbgdprodutosKeyPress(Sender: TObject; var Key: Char);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure dbgdprodutosExit(Sender: TObject);
    procedure dbgprodutosExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgentradaEnter(Sender: TObject);
    procedure tbscaracShow(Sender: TObject);
    procedure tbsentradaShow(Sender: TObject);
    procedure spdlimpareClick(Sender: TObject);
    procedure spdfiltrareClick(Sender: TObject);
    procedure dbgentradaKeyPress(Sender: TObject; var Key: Char);
    procedure dbgentradaExit(Sender: TObject);
    procedure tbssaidaShow(Sender: TObject);
    procedure spdlimparsClick(Sender: TObject);
    procedure spdfiltrarsClick(Sender: TObject);
    procedure dbgsaidaEnter(Sender: TObject);
    procedure dbgsaidaExit(Sender: TObject);
    procedure dbgsaidaKeyPress(Sender: TObject; var Key: Char);
    procedure spdprinterClick(Sender: TObject);
    procedure DBEdit1KeyPress(Sender: TObject; var Key: Char);
    procedure pnlfichaEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    sClassificar:string;
  end;

var
  frmPesqProdDD: TfrmPesqProdDD;

implementation

uses uGeral, uPrincipal, uDados, urelest, urelestoq, uMRProd;

{$R *.DFM}

procedure TfrmPesqProdDD.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

   frmdados.Cds_Ent_Prod.Active := false;
   frmdados.Cds_Ent_ProdEHENTREGA.DefaultExpression := quotedstr('T');
   frmdados.Cds_Ent_ProdDATA_ENT.DefaultExpression := quotedstr(datetostr(date));
   frmdados.Cds_Ent_Prod.Active := true;

   frmdados.Cds_dVenda.Active := false;
   frmdados.Cds_dVendaEHvenda.DefaultExpression := quotedstr('T');
   frmdados.Cds_dVendaData_op.DefaultExpression := quotedstr(datetostr(date));
   frmdados.Cds_dVenda.Active := true;

   pcldetalhe.ActivePageIndex := 0;
   dbgsaida.Align := alclient;
   dbgentrada.Align := alclient;

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;
   spdlimpar.Click;
end;

procedure TfrmPesqProdDD.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqProdDD.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqProdDD.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqProdDD.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqProdDD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqProdDD:=nil;
  with frmdados do
    begin
      Dbx_vProdutos.Active := false;
      Dbx_vProdutos.SQL.Clear;
      Dbx_vProdutos.SQL.Add(sSqlAnt);
    end;
  //endth
  form_ativo := '';

end;

procedure TfrmPesqProdDD.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqProdDD.dbgprodutosKeyPress(Sender: TObject; var Key: Char);
begin
//Key := AnsiUpperCase(Key);


if key = #13 then
   if frmdados.Cds_vProdutos.State in [dsinsert, dsedit] then
      if application.MessageBox('Deseja Realmente Alterar Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
         frmdados.Cds_vProdutos.Post
      else
         frmdados.Cds_vProdutos.Cancel;
      //endi
   //endi
//endi
end;

procedure TfrmPesqProdDD.dbgprodutosEnter(Sender: TObject);
begin
tabela := 'vProdutos';
//lbltitdesc.Caption := 'Descrição';
end;

procedure TfrmPesqProdDD.dbgdprodutosEnter(Sender: TObject);
begin
tabela := 'vProdutos';
//lbltitdesc.Caption := 'Caracteristica';
end;

procedure TfrmPesqProdDD.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqProdDD.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqProdDD.dbgvencimentosEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqProdDD.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_vProdutos.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Descrição' then
     sClassificar := 'Descricao';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi

  // inicializando variáveis comuns
  sCompo := '';
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';

  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;


  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;


  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt >= ' + QuotedStr(sDataI) + ')';
            //sTitRel := sTitRel + ' / Vendas de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            //sCompo := '( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            //sCompo := sCompo + 'and ( EmissaoSt <= ' + QuotedStr(sDataF) + ')';
            //sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoI
  if ( sCodigoI <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / Código de.: ' + sCodigoI;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo >= ' + sCodigoI + ')';
            sTitRel := sTitRel + ' / Código de.: ' + sCodigoI;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sCodigoF <> '' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / até: ' + sCodigoF;
          end
       else
          begin
            sCompo := sCompo + 'and ( Codigo <= ' + sCodigoF + ')';
            sTitRel := sTitRel + ' / até: ' + sCodigoF;
          end;
       //endif
     end;
  //endif
  // executando o filtro


  //Bloco de filtro de codigoF
  if sClassificar <> 'Codigo' then
     begin
        if ( sDesc <> '' ) then
           begin
             if (sCompo = '') then
                begin
                  sCompo := '( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end
             else
                begin
                  sCompo := sCompo + 'and ( '+sClassificar+' = ' + QuotedStr(sDesc) + ')';
                  sTitRel := sTitRel + ' / '+cbxclassificar.Text+': ' + sDesc;
                end;
             //endif
           end;
        //endif
     end;
  //endi
  // executando o filtro

  try
    with frmdados.Dbx_vProdutos do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from vProdutos where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from vProdutos order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from vProdutos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
                   active := true;
                 end;
              //endi
            end;
         //endi
       end;
    //endi
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_vProdutos.Active := true;
    end;
  //end;
end;

procedure TfrmPesqProdDD.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure TfrmPesqProdDD.dbgdprodutosKeyPress(Sender: TObject;
  var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_vProdutos.State in [dsinsert, dsedit] then
      frmdados.Cds_vProdutos.Post;
   //endi
//endi

end;

procedure TfrmPesqProdDD.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_vProdutos.Locate(sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqProdDD.cbxclassificarKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
     begin
       key := #0;
       SelectNext(ActiveControl,True,True);
     end;
  //endi
  key := #0;
end;

procedure TfrmPesqProdDD.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqProdDD.edidescKeyPress(Sender: TObject; var Key: Char);
begin
edicodigoi.Text := '';
edicodigof.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     spdfiltrar.Click;
   end;
//endi
end;

procedure TfrmPesqProdDD.edicodigoiKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqProdDD.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
If not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqProdDD.dbgdprodutosExit(Sender: TObject);
begin
  if frmdados.Cds_vProdutos.State in [dsinsert, dsedit] then
     frmdados.Cds_vProdutos.Post;
  //endi

end;

procedure TfrmPesqProdDD.dbgprodutosExit(Sender: TObject);
begin
  if frmdados.Cds_vProdutos.State in [dsinsert, dsedit] then
     if application.MessageBox('Deseja Realmente Alterar Registro?','Atenção',mb_YesNo + mb_DefButton2) = idYes then
        frmdados.Cds_vProdutos.Post
     else
        frmdados.Cds_vProdutos.Cancel;
     //endi
  //endi
end;

procedure TfrmPesqProdDD.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqProdDD.dbgentradaEnter(Sender: TObject);
begin
tabela := 'Ent_Prod';
end;

procedure TfrmPesqProdDD.tbscaracShow(Sender: TObject);
begin
{
  with frmdados do
    begin
      Cds_dProdutos.Active := false;
      ler_dProd;
      Cds_dProdutos.Active := true;
    end;
  //endi
}
end;

procedure TfrmPesqProdDD.tbsentradaShow(Sender: TObject);
begin
  spdlimpare.Click;
end;

procedure TfrmPesqProdDD.spdlimpareClick(Sender: TObject);
begin
dtpDatafe.Date := Date;
dtpDataIe.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

spdfiltrare.Click;
end;

procedure TfrmPesqProdDD.spdfiltrareClick(Sender: TObject);
begin
  with frmdados do
    begin
      Cds_Ent_Prod.Active := false;
      ler_ent_prod;
      Cds_Ent_Prod.Active := true;
    end;
  //endi

end;

procedure TfrmPesqProdDD.dbgentradaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_ent_prod.State in [dsinsert, dsedit] then
      frmdados.Cds_ent_prod.Post;
   //endi
//endi

end;

procedure TfrmPesqProdDD.dbgentradaExit(Sender: TObject);
begin
  if frmdados.Cds_ent_prod.State in [dsinsert, dsedit] then
     frmdados.Cds_ent_prod.Post;
  //endi

end;

procedure TfrmPesqProdDD.tbssaidaShow(Sender: TObject);
begin
  spdlimpars.Click; 

end;

procedure TfrmPesqProdDD.spdlimparsClick(Sender: TObject);
begin
dtpDatafs.Date := Date;
dtpDataIs.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

spdfiltrars.Click;

end;

procedure TfrmPesqProdDD.spdfiltrarsClick(Sender: TObject);
begin
  with frmdados do
    begin
      Cds_dVenda.Active := false;
      ler_dVenda;
      Cds_dVenda.Active := true;
    end;
  //endi

end;

procedure TfrmPesqProdDD.dbgsaidaEnter(Sender: TObject);
begin
tabela := 'vProdutos';

end;

procedure TfrmPesqProdDD.dbgsaidaExit(Sender: TObject);
begin
  if frmdados.Cds_dVenda.State in [dsinsert, dsedit] then
     frmdados.Cds_dVenda.Post;
  //endi
end;

procedure TfrmPesqProdDD.dbgsaidaKeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   if frmdados.Cds_dVenda.State in [dsinsert, dsedit] then
      frmdados.Cds_dVenda.Post;
   //endi
//endi

end;

procedure TfrmPesqProdDD.spdprinterClick(Sender: TObject);
var
  vardir:string;
begin
frmMRProd := tfrmMRProd.Create(self);
frmMRProd.ShowModal;
frmMRProd.Free;
end;

procedure TfrmPesqProdDD.DBEdit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = #13 then
   begin
     SelectNext(ActiveControl,True,True);
     if frmdados.Cds_vProdutos.State in [dsinsert, dsedit] then
        frmdados.Cds_vProdutos.Post;
     //endi
   end;
//endi

end;

procedure TfrmPesqProdDD.pnlfichaEnter(Sender: TObject);
begin
tabela := 'vProdutos';
end;

end.
