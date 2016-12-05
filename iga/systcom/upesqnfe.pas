unit upesqnfe;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, SayPrint;

type
  TfrmPesqNFE = class(TForm)
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
    dbgnfe: TDBGrid;
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
    lbltitdatai: TLabel;
    Label7: TLabel;
    Bevel3: TBevel;
    Bevel4: TBevel;
    Bevel6: TBevel;
    Label5: TLabel;
    lbltotval: TLabel;
    Label10: TLabel;
    cbxnomesitnfe: TDBLookupComboBox;
    lbltoticms: TLabel;
    Label8: TLabel;
    Label4: TLabel;
    lbltotipi: TLabel;
    Lista_img: TImageList;
    SpeedButton1: TSpeedButton;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgnfeKeyPress(Sender: TObject; var Key: Char);
    procedure dbgnfeEnter(Sender: TObject);
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
    procedure dbgnfeExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarClick(Sender: TObject);
    procedure habdedidesc;
    procedure cbxnomeforClick(Sender: TObject);
    procedure cbxnomeforEnter(Sender: TObject);
    procedure cbxnomeclaClick(Sender: TObject);
    procedure cbxnomeclaEnter(Sender: TObject);
    procedure cbxnomeforKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxnomesitpagarClick(Sender: TObject);
    procedure cbxnomesitpagarEnter(Sender: TObject);
    procedure cbxnomesitpagarKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgnfeKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgnfeDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure SpeedButton1Click(Sender: TObject);


  private
    { Private declarations }

  public
    { Public declarations }
     sCompo,sTitRel : String;
     sClassificar:string;
  end;

var
  frmPesqNFE: TfrmPesqNFE;

implementation

uses uGeral, uPrincipal, uDados, uMRrec ,uMRnfe;

{$R *.DFM}

procedure TfrmPesqNFE.FormShow(Sender: TObject);
var
   vardir: String;
begin
   vardir := ExtractFilePath(Application.ExeName);

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Emissão');
   cbxclassificar.Items.Add('N.o N.F.');
   cbxclassificar.ItemIndex := 0;

   with frmdados do
     begin
       cds_situnfe.Active := false;
       dbx_situnfe.Active := false;
       dbx_situnfe.SQL.Clear;
       dbx_situnfe.SQL.Add('Select * from situnfe order by descricao');
       dbx_situnfe.Active := true;
       cds_situnfe.Active := true;

     end;
  //endi


  spdlimpar.Click;


end;

procedure TfrmPesqNFE.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqNFE.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqNFE.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqNFE.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqNFE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqNFE:=nil;
  form_ativo := '';

end;

procedure TfrmPesqNFE.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqNFE.dbgnfeKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_nfe.State in [dsinsert, dsedit] then
      frmdados.Cds_nfe.Post;
   //endi
//endi
end;

procedure TfrmPesqNFE.dbgnfeEnter(Sender: TObject);
begin
tabela := 'nfe';
end;

procedure TfrmPesqNFE.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqNFE.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqNFE.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros

  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc  : String;
  ftotcusto, ftotpreco:real;
  iccli, icsitnfe:integer;
begin

  with frmdados do
    begin
      Cds_nfe.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'N.o N.F.' then
     sClassificar := 'NNF';
  //endi
  if cbxclassificar.Text = 'Documento' then
     sClassificar := 'Doc';
  //endi
  if edicodigoi.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if edicodigof.Text <> '' then
     sClassificar := 'Codigo';
  //endi
  if cbxclassificar.Text = 'Emissão' then
     begin
       sClassificar := 'Dte';
    end;
  //endi
  if cbxclassificar.Text = 'Vencimento' then
     begin
       sClassificar := 'Dtv';
    end;
  //endi
  if cbxclassificar.Text = 'Liquidação' then
     begin
       sClassificar := 'Dtl';
    end;
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
  iccli := 0;
  icsitNFE := 0;
  
  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;

  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;
  if cbxnomesitnfe.Text <> '' then
     begin
       icsitNFE := frmdados.Cds_situnfe.fieldbyname('codigo').asInteger;
     end;
  //endi
  
  //Bloco de filtro de codigoI
  if ( sDataI <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'NNF' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := '( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := '( Dtv >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Vencimento de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := '( Dtl >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Liquidação de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
          end
       else
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'NNF' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := sCompo + 'and ( Dte >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Emissão de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := sCompo + 'and ( Dtv >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Vencimento de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := sCompo + 'and ( Dtl >= ' + QuotedStr(sDataI) + ')';
                 sTitRel := sTitRel + ' / Liquidação de.: ' + copy(datetimetostr(dtpdatai.Date),1,10);
               end;
            //endi
          end;
       //endif
     end;
  //endif

  //Bloco de filtro de codigoF
  if ( sDataF <> '  /  /    ' ) then
     begin
       if (sCompo = '') then
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'NNF' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := '( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := '( Dtv <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := '( Dtl <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
          end
       else
          begin
            if sclassificar = 'Doc' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'NNF' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dte' then
               begin
                 sCompo := sCompo + 'and ( Dte <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtv' then
               begin
                 sCompo := sCompo + 'and ( Dtv <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
            if sclassificar = 'Dtl' then
               begin
                 sCompo := sCompo + 'and ( Dtl <= ' + QuotedStr(sDataF) + ')';
                 sTitRel := sTitRel + ' / até: ' + copy(datetimetostr(dtpdataf.Date),1,10);
               end;
            //endi
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
  if (sClassificar <> 'Codigo') and (sClassificar <> 'Dte') and (sClassificar <> 'Dtv')
      and (sClassificar <> 'Dtl')then
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


  //Bloco de filtro de codigoF
  if ( iccli > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Cliente: ' + frmdados.Cds_Clientes.fieldbyname('nome').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( ccli = ' + inttostr(iccli) + ')';
            sTitRel := sTitRel + ' / Clientes: ' + frmdados.Cds_Clientes.fieldbyname('nome').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro

  //Bloco de filtro de codigoF
  if ( icsitNFE > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( csitnfe = ' + inttostr(icsitNFE) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituNFE.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( csitnfe = ' + inttostr(icsitNFE) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituNFE.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro
  
  try
    with frmdados do
       begin
         Dbx_nfe.active := false;
         Dbx_Exec.Active := false;

         Dbx_nfe.sql.Clear;
         Dbx_exec.SQL.Clear;

         if sCompo <> '' then
            begin
              Dbx_nfe.sql.Add('select * from nfe where ('+sCompo+') order by '+sClassificar);
              Dbx_Exec.SQL.Add('Select sum(totvlrtotnf) as totvalor, sum(totvlricms) as totvlricms, sum(totvlripi) as totvlripi from nfe where ('+sCompo+')');
            end
         else
            begin
              Dbx_nfe.sql.Add('select * from nfe' );
              Dbx_Exec.sql.Add('Select sum(totvlrtotnf) as totvalor, sum(totvlricms) as totvlricms, sum(totvlripi) as totvlripi from nfe' );
            end;
         //endi

         Dbx_nfe.active := true;
         Dbx_Exec.Active := true;

         if Dbx_nfe.recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   Dbx_nfe.active := false;
                   Dbx_Exec.Active := false;

                   Dbx_nfe.sql.Clear;
                   Dbx_exec.SQL.Clear;

                   Dbx_nfe.sql.Add('select * from nfe where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+' order by '+sClassificar);
                   Dbx_exec.sql.Add('Select sum(totvlrtotnf) as totvalor, sum(totvlricms) as totvlricms, sum(totvlripi) as totvlripi from nfe where '+sClassificar+' like '+quotedstr('%'+sDesc+'%') );

                   Dbx_nfe.active := true;
                   Dbx_Exec.active := true;
                 end;
              //endi
            end;
         //endi

         lbltotval.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('totvalor').asfloat);
         lbltoticms.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('totvlricms').asfloat);
         lbltotipi.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('totvlripi').asfloat);

       end;
    //endth
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_nfe.Active := true;
    end;
  //end;

  //showmessage(frmdados.Dbx_Pagar.SQL.Text);
end;

procedure TfrmPesqNFE.spdlimparClick(Sender: TObject);
begin

  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqNFE.edidescChange(Sender: TObject);
begin
if (edidesc.Text <> '') and (sclassificar <> 'Dte') and (sclassificar <> 'Dtv') and (sclassificar <> 'Dtl') then
   frmdados.cds_nfe.Locate(frmpesqnfe.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqNFE.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqNFE.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqNFE.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqNFE.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqNFE.edicodigofKeyPress(Sender: TObject; var Key: Char);
begin
edidesc.Text := '';
if key = #13 then
   begin
     key := #0;
     SelectNext(ActiveControl,True,True);
     exit;
   end;
//endi
if not( key in['0'..'9',#8] ) then
  begin
  beep;
  key:=#0;
  end;
//endi

end;

procedure TfrmPesqNFE.dbgnfeExit(Sender: TObject);
begin
  if frmdados.Cds_nfe.State in [dsinsert, dsedit] then
     frmdados.Cds_nfe.Post;
  //endi
end;

procedure TfrmPesqNFE.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqNFE.cbxclassificar2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmPesqNFE.cbxclassificar2KeyPress(Sender: TObject;
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

procedure TfrmPesqNFE.cbxclassificarClick(Sender: TObject);
begin
spdfiltrar.Click;
habdedidesc;
end;

procedure tfrmPesqNFE.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi

//if cbxclassificar.ItemIndex  = 1 then
//   begin
//     edidesc.Color := clactiveborder;
//     edidesc.Text := '';
//     edidesc.Enabled := false;
//     lbltitdatai.Caption := 'Vencimento de'
//   end;
//endi

//if cbxclassificar.ItemIndex  = 2 then
//   begin
//     edidesc.Color := clactiveborder;
//     edidesc.Text := '';
//     edidesc.Enabled := false;
//     lbltitdatai.Caption := 'Liquidado de'
//   end;
//endi

if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 2 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
end;


procedure TfrmPesqNFE.cbxnomeforClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNFE.cbxnomeforEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNFE.cbxnomeclaClick(Sender: TObject);
begin
tabela := 'temp';
end;

procedure TfrmPesqNFE.cbxnomeclaEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNFE.cbxnomeforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codcli').asInteger := 0;
//endi
end;

procedure TfrmPesqNFE.cbxnomesitpagarClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNFE.cbxnomesitpagarEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqNFE.cbxnomesitpagarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codsitrec').asInteger := 0;
//endi

end;


procedure TfrmPesqNFE.dbgnfeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

procedure TfrmPesqNFE.dbgnfeDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
var
  Icon: TBitmap;
  f:TextFile; Linha:String;
  bAut :boolean;

begin

  bAut := false;

  Icon := TBitmap.Create;
  if (Column.FieldName = 'LOTENFE') then
     begin


     if (frmdados.Cds_Indice.fieldbyname('rdirnfe').asString <> '') and
        (fileexists(frmdados.Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+frmdados.Cds_NFE.fieldbyname('lotenfe').asString+'.xml') )
     then
        begin




       AssignFile(f,  frmdados.Cds_Indice.fieldbyname('rdirnfe').asString+'respLote-'+frmdados.Cds_NFE.fieldbyname('lotenfe').asString+'.xml');
       Reset(f);

       //Readln(f, Linha);

       //showmessage(f);


       While not Eof(f) do
         begin

           Readln(f, Linha);

           if pos('Autorizado',linha) > 0 then
              begin

                bAut := true;
                break;
              end;
           //endi

         end;
       //endw

       CloseFile(f);



       with dbgnfe.Canvas do
       begin
         Brush.Color := clWhite;
         FillRect(Rect);
         if (bAut) then
            Lista_Img.GetBitmap(0, Icon)
         else
            Lista_Img.GetBitmap(1, Icon);
         //endi
         Draw(round((Rect.Left + Rect.Right - Icon.Width) / 2), Rect.Top, Icon);
       end;



       end;
       //endi

     end;
  //endi

end;

procedure TfrmPesqNFE.SpeedButton1Click(Sender: TObject);
begin
    frmMRnfe := tfrmMRnfe.Create(self);
    frmMRnfe.ShowModal;
    frmMRnfe.Free;
end;

end.
