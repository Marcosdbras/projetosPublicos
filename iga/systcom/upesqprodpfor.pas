unit upesqprodpfor;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList;

type
  Tfrmpesqprodpfor = class(TForm)
    pnlsuperior: TPanel;
    spdconfirma: TSpeedButton;
    pnlinferior: TPanel;
    pnlesq: TPanel;
    Bevel1: TBevel;
    Label3: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    pnldir: TPanel;
    dbgSprod: TDBGrid;
    Bevel2: TBevel;
    spdlimpar: TSpeedButton;
    spdfiltrar: TSpeedButton;
    edicodigoi: TEdit;
    edicodigof: TEdit;
    edicodprod: TEdit;
    Bevel5: TBevel;
    lbltitdesc: TLabel;
    cbxclassificar: TComboBox;
    edidesc: TEdit;
    Label6: TLabel;
    imgfichadetalhe: TImageList;
    Label5: TLabel;
    DtpDataI: TDateTimePicker;
    Label7: TLabel;
    DtpDataF: TDateTimePicker;
    spdrelatorios176: TSpeedButton;
    cbxfornecedor: TDBLookupComboBox;
    Label4: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    cbxgrupo: TDBLookupComboBox;
    cbxmarca: TDBLookupComboBox;
    cbxtipo_prod: TDBLookupComboBox;
    pnldet: TPanel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    cbxprodutos: TDBLookupComboBox;
    lblnfor: TDBText;
    lblngrup: TDBText;
    lblnmarca: TDBText;
    lblntipo_prod: TDBText;
    Label16: TLabel;
    Label17: TLabel;
    lblultvdb: TLabel;
    lblultvdpi: TLabel;
    Label18: TLabel;
    lblqtdeestq: TDBText;
    Label19: TLabel;
    lblprve: TDBText;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgSprodEnter(Sender: TObject);
    procedure spdconfirmaClick(Sender: TObject);
    procedure spdcancelaClick(Sender: TObject);
    procedure spdfiltrarClick(Sender: TObject);
    procedure spdlimparClick(Sender: TObject);
    procedure edidescChange(Sender: TObject);
    procedure cbxclassificarKeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure edidescKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigoiKeyPress(Sender: TObject; var Key: Char);
    procedure edicodigofKeyPress(Sender: TObject; var Key: Char);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure spdrelatorios176Click(Sender: TObject);
  private
    { Private declarations }
    sClassificar:string;
  public
    { Public declarations }
    sTitRel:String;
  end;

var
  frmpesqprodpfor: Tfrmpesqprodpfor;

implementation

uses uGeral, uPrincipal, uDados , uMRvprodforn;

{$R *.DFM}

procedure Tfrmpesqprodpfor.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);
   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Descrição');
   cbxclassificar.ItemIndex := 0;

   lblultvdb.Caption := '';
   lblultvdpi.Caption := '';
   
   with frmdados do
     begin

       cds_fornecedores.Active := false;
       dbx_fornecedores.Active := false;
       dbx_fornecedores.SQL.Clear;
       dbx_fornecedores.SQL.Add('Select * from fornecedores order by nome');
       dbx_fornecedores.Active := true;
       cds_fornecedores.Active := true;

       cds_grupo.Active := false;
       dbx_grupo.Active := false;
       dbx_grupo.SQL.Clear;
       dbx_grupo.SQL.Add('Select * from grupo order by descricao');
       dbx_grupo.Active := true;
       cds_grupo.Active := true;

       cds_marca.Active := false;
       dbx_marca.Active := false;
       dbx_marca.SQL.Clear;
       dbx_marca.SQL.Add('Select * from marca order by descricao');
       dbx_marca.Active := true;
       cds_marca.Active := true;

       cds_tipo_prod.Active := false;
       dbx_tipo_prod.Active := false;
       dbx_tipo_prod.SQL.Clear;
       dbx_tipo_prod.SQL.Add('Select * from tipo_produto order by descricao');
       dbx_tipo_prod.Active := true;
       cds_tipo_prod.Active := true;

       cds_vprodutos.Active := false;
       dbx_vprodutos.Active := false;
       dbx_vprodutos.SQL.Clear;
       dbx_vprodutos.SQL.Add('Select * from vprodutos order by descricao');
       dbx_vprodutos.Active := true;
       cds_vprodutos.Active := true;

       tabela := 'Temp';
       cds_temp.Append;

     end;
  //endi

   spdlimpar.Click;
end;

procedure Tfrmpesqprodpfor.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmpesqprodpfor.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmpesqprodpfor.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure Tfrmpesqprodpfor.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure Tfrmpesqprodpfor.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqProdpfor:=nil;
  form_ativo := '';

end;

procedure Tfrmpesqprodpfor.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure Tfrmpesqprodpfor.dbgSprodEnter(Sender: TObject);
begin
tabela := 'vProdForn';
end;

procedure Tfrmpesqprodpfor.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpesqprodpfor.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure Tfrmpesqprodpfor.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros
  sCompo,sTitRel : String;
  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc : String;
  icfor, icgru, icmar, ictipo_prod, icprod : integer;
  ftotcusto, ftotpreco:real;
begin

  with frmdados do
    begin
      Cds_vProdForn.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Descrição' then
     sClassificar := 'nPro';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi

  // inicializando variáveis comuns
  sCompo := 'ehentrega = '+quotedstr('T');
  sTitRel := '';

  // inicializando variáveis deste filtro
  sDataI := '';
  sDataF := '';
  sCodigoF := '';
  sCodigoI := '';
  sDesc := '';
  icfor := 0;

  icgru := 0;
  icmar := 0;
  ictipo_prod := 0;
  icprod := 0;


  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;

  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  if cbxfornecedor.Text <> '' then
     icfor := frmdados.cds_fornecedores.fieldbyname('codigo').asInteger;
  //endi

  if cbxgrupo.Text <> '' then
     icgru := frmdados.cds_grupo.fieldbyname('codigo').asInteger;
  //endi

  if cbxmarca.Text <> '' then
     icmar := frmdados.cds_marca.fieldbyname('codigo').asInteger;
  //endi

  if cbxtipo_prod.Text <> '' then
     ictipo_prod := frmdados.cds_tipo_prod.fieldbyname('codigo').asInteger;
  //endi

  if cbxprodutos.Text <> '' then
     icprod := frmdados.cds_vprodutos.fieldbyname('codigo').asInteger;
  //endi

  sDesc := edidesc.Text;

  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Data >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Compras de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( Data >= ' + QuotedStr(sDataI) + ')';
            sTitRel := sTitRel + ' / Compras de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( Data <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
          end
       else
          begin
            sCompo := sCompo + 'and ( Data <= ' + QuotedStr(sDataF) + ')';
            sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
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


  icprod := 0;

  //Bloco de filtro de marca
  if ( icprod > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cpro = ' + inttostr( icprod ) + ')';
            sTitRel := sTitRel + ' / Produto: ' +frmdados.cds_vprodutos.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cpro = ' + inttostr( icprod ) + ')';
            sTitRel := sTitRel + ' / Produto: ' + frmdados.cds_vprodutos.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de tipo produto
  if ( ictipo_prod > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ctipo_prod = ' + inttostr( ictipo_prod ) + ')';
            sTitRel := sTitRel + ' / Tipo Prod.: ' +frmdados.cds_tipo_prod.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( ctipo_prod = ' + inttostr( ictipo_prod ) + ')';
            sTitRel := sTitRel + ' / Tipo Prod.: ' + frmdados.cds_tipo_prod.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de marca
  if ( icmar > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cmar = ' + inttostr( icmar ) + ')';
            sTitRel := sTitRel + ' / Marca: ' +frmdados.cds_marca.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cmar = ' + inttostr( icmar ) + ')';
            sTitRel := sTitRel + ' / Marca: ' + frmdados.cds_marca.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de grupo
  if ( icgru > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cgru = ' + inttostr( icgru ) + ')';
            sTitRel := sTitRel + ' / Grupo: ' +frmdados.cds_grupo.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cgru = ' + inttostr( icgru ) + ')';
            sTitRel := sTitRel + ' / Grupo: ' + frmdados.cds_grupo.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de fornecedor
  if ( icfor > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( cfor = ' + inttostr( icfor ) + ')';
            sTitRel := sTitRel + ' / Fornecedor: ' +frmdados.cds_fornecedores.fieldbyname('nome').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( cfor = ' + inttostr( icfor ) + ')';
            sTitRel := sTitRel + ' / Fornecedor: ' + frmdados.cds_fornecedores.fieldbyname('nome').asString;
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de classificar
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
    with frmdados.Dbx_vProdForn do
       begin
         active := false;
         sql.Clear;
         if sCompo <> '' then
            sql.Add('select * from vProdForn where '+sCompo+' order by '+sClassificar)
         else
            sql.Add('select * from vProdForn order by '+sClassificar);
         //endi
         active := true;

         if recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   active := false;
                   sql.Clear;
                   sql.Add('select * from vProdForn where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+'order by '+sClassificar);
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
      Cds_vProdForn.Active := true;
    end;
  //end;
end;

procedure Tfrmpesqprodpfor.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
end;

procedure Tfrmpesqprodpfor.edidescChange(Sender: TObject);
begin
if edidesc.Text <> '' then
   frmdados.cds_vProdforn.Locate(frmpesqprodpfor.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure Tfrmpesqprodpfor.cbxclassificarKeyPress(Sender: TObject;
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

procedure Tfrmpesqprodpfor.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure Tfrmpesqprodpfor.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqprodpfor.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqprodpfor.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure Tfrmpesqprodpfor.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure Tfrmpesqprodpfor.spdrelatorios176Click(Sender: TObject);
begin
    frmMRvprodforn:=tfrmMRvprodforn.create(self);
    frmMRvprodforn.Showmodal;
    frmMRvprodforn.Free;
end;

end.
