unit upesqrec;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, StdCtrls, Buttons, ExtCtrls, DBCtrls, Mask, ComCtrls,
  Grids, DBGrids, SqlExpr, ImgList, SayPrint;

type
  TfrmPesqRec = class(TForm)
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
    dbgrec: TDBGrid;
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
    Label8: TLabel;
    spdprinter: TSpeedButton;
    Label5: TLabel;
    lbltotval: TLabel;
    Label10: TLabel;
    cbxnomesitrec: TDBLookupComboBox;
    cbxnomecli: TDBLookupComboBox;
    procedure FormShow(Sender: TObject);
    procedure ediOSExit(Sender: TObject);
    procedure ediosefExit(Sender: TObject);
    procedure ediparcExit(Sender: TObject);
    procedure edimaxparcExit(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure mmoobsKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrecKeyPress(Sender: TObject; var Key: Char);
    procedure dbgrecEnter(Sender: TObject);
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
    procedure dbgrecExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure cbxclassificar2KeyPress(Sender: TObject; var Key: Char);
    procedure cbxclassificarClick(Sender: TObject);
    procedure habdedidesc;
    procedure spdprinterClick(Sender: TObject);
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
    procedure dbgrecKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);


  private
    { Private declarations }

  public
    { Public declarations }
     sCompo,sTitRel : String;
     sClassificar:string;
  end;

var
  frmPesqRec: TfrmPesqRec;

implementation

uses uGeral, uPrincipal, uDados, uMRrec;

{$R *.DFM}

procedure TfrmPesqRec.FormShow(Sender: TObject);
var
   vardir: String;
begin

   frmdados.Cds_Vencto.EnableControls;
   dbgrec.DataSource := frmdados.dts_vencto;

   vardir := ExtractFilePath(Application.ExeName);

   cbxclassificar.Items.Clear;
   cbxclassificar.Items.Add('Emissão');
   cbxclassificar.Items.Add('Vencimento');
   cbxclassificar.Items.Add('Liquidação');
   cbxclassificar.Items.Add('Documento');
   cbxclassificar.Items.Add('Descricão');
   cbxclassificar.ItemIndex := 0;
   
   with frmdados do
     begin

       Cds_Vencto.Active := false;
       cds_Venctoehvenda.DefaultExpression := quotedstr('T');

       Dbx_Vencto.Active := false;
       Dbx_Venctoehvenda.DefaultExpression := quotedstr('T');

       cds_Venctodte.DefaultExpression := quotedstr(datetostr(date));
       cds_Venctocsit.DefaultExpression := '1';

       cds_clientes.Active := false;
       dbx_clientes.Active := false;
       dbx_clientes.sql.Clear;
       dbx_clientes.SQL.Add('Select * from clientes order by nome');
       dbx_clientes.Active := true;
       cds_clientes.Active := true;


     end;
   //endi
   
   spdlimpar.Click;


end;

procedure TfrmPesqRec.ediOSExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqRec.ediosefExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqRec.ediparcExit(Sender: TObject);
var
   valor : integer;
begin

end;

procedure TfrmPesqRec.edimaxparcExit(Sender: TObject);
var
   valor : integer;
begin
end;

procedure TfrmPesqRec.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  frmPrincipal.pnlcentral.Visible := true;
  Action:=caFree;
  frmPesqRec:=nil;
  form_ativo := '';

end;

procedure TfrmPesqRec.mmoobsKeyPress(Sender: TObject; var Key: Char);
begin
   if (key = #13) then SelectNext(ActiveControl,True,True);
end;

procedure TfrmPesqRec.dbgrecKeyPress(Sender: TObject; var Key: Char);
begin

if key = #13 then
   if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
      frmdados.Cds_Vencto.Post;
   //endi
//endi
end;

procedure TfrmPesqRec.dbgrecEnter(Sender: TObject);
begin
tabela := 'Vencimentos';
end;

procedure TfrmPesqRec.spdconfirmaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqRec.spdcancelaClick(Sender: TObject);
begin
close;
end;

procedure TfrmPesqRec.spdfiltrarClick(Sender: TObject);
var
  // variáveis comuns a todos os filtros

  // variáveis deste filtro
  sDataI, sDataF, sCodigoI, sCodigoF, sDesc  : String;
  ftotcusto, ftotpreco:real;
  iccli, icsitrec:integer;
begin

  with frmdados do
    begin
      Cds_Vencto.Active := false;
    end;
  //end;

  if cbxclassificar.Text = 'Descrição' then
     sClassificar := 'Descricao';
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
  icsitRec := 0;
  
  // carregando variaveis
  sDataI := datetostr(dtpdatai.Date);
  sDataI := bar_is_point( sDataI  );
  sCodigoI := edicodigoI.Text;

  sDataF := datetostr(dtpdataF.Date);
  sDataF := bar_is_point( sDataF  );
  sCodigoF := ediCodigoF.Text;

  sDesc := edidesc.Text;
  if cbxnomecli.Text <> '' then
     begin
       iccli := frmdados.Cds_Clientes.FieldByName('codigo').asInteger;
     end;
  //endi
  if cbxnomesitrec.Text <> '' then
     begin
       icsitrec := frmdados.Cds_siturec.fieldbyname('codigo').asInteger;
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
            if sclassificar = 'Descricao' then
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
            if sclassificar = 'Descricao' then
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
            if sclassificar = 'Descricao' then
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
            if sclassificar = 'Descricao' then
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
  if ( icsitrec > 0 ) then
     begin
       if (sCompo = '') then
          begin
            sCompo := '( csit = ' + inttostr(icsitrec) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituRec.fieldbyname('descricao').asString;
          end
       else
          begin
            sCompo := sCompo + 'and ( csit = ' + inttostr(icsitRec) + ')';
            sTitRel := sTitRel + ' / Situacao: ' + frmdados.Cds_SituRec.fieldbyname('descricao').asString;
          end;
       //endif
     end;
  //endif
  // executando o filtro
  
  try
    with frmdados do
       begin
         Dbx_Vencto.active := false;
         Dbx_Exec.Active := false;

         Dbx_Vencto.sql.Clear;
         Dbx_exec.SQL.Clear;

         if sCompo <> '' then
            begin
              Dbx_Vencto.sql.Add('select * from Vencimentos where ('+sCompo+') and (ehvenda = '+quotedstr('T')+') order by '+sClassificar);
              Dbx_Exec.SQL.Add('Select sum(valor) as totvalor from Vencimentos where ('+sCompo+') and (ehvenda = '+quotedstr('T')+')');
            end
         else
            begin
              Dbx_Vencto.sql.Add('select * from Vencimentos where ehvenda = '+ quotedstr('T') +'order by '+sClassificar);
              Dbx_Exec.sql.Add('Select sum(valor) as totvalor from Vencimentos where ehvenda = '+quotedstr('T'));
            end;
         //endi

         Dbx_Vencto.active := true;
         Dbx_Exec.Active := true;

         if Dbx_Vencto.recordcount = 0 then
            begin
              if sDesc <> '' then
                 begin
                   Dbx_Vencto.active := false;
                   Dbx_Exec.Active := false;

                   Dbx_Vencto.sql.Clear;
                   Dbx_exec.SQL.Clear;

                   Dbx_Vencto.sql.Add('select * from Vencimentos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+' '+'and ehvenda = '+quotedstr('T')+' order by '+sClassificar);
                   Dbx_exec.sql.Add('Select sum(valor) as totvalor from Vencimentos where '+sClassificar+' like '+quotedstr('%'+sDesc+'%')+' '+'and ehvenda = '+quotedstr('T')   );

                   Dbx_Vencto.active := true;
                   Dbx_Exec.active := true;
                 end;
              //endi
            end;
         //endi

         lbltotval.Caption := formatfloat('###,###,##0.00',Dbx_Exec.fieldbyname('totvalor').asfloat);

       end;
    //endth
  except
    showmessage('Não consegui conectar a tabela, operação abortada!!!');
    close;
    exit;
  end;
  with frmdados do
    begin
      Cds_Vencto.Active := true;
    end;
  //end;

  //showmessage(frmdados.Dbx_Pagar.SQL.Text);
end;

procedure TfrmPesqRec.spdlimparClick(Sender: TObject);
begin
  edicodigoi.Text := '';
  edicodigof.Text := '';

  dtpDataf.Date := Date;
  dtpDataI.Date := Date - frmdados.Cds_Indice.FieldByName('periodo_previo').asInteger;

  edidesc.Text := '';
  spdfiltrar.Click;
  habdedidesc;
end;

procedure TfrmPesqRec.edidescChange(Sender: TObject);
begin
if (edidesc.Text <> '') and (sclassificar <> 'Dte') and (sclassificar <> 'Dtv') and (sclassificar <> 'Dtl') then
   frmdados.cds_Vencto.Locate(frmpesqrec.sClassificar,edidesc.text,[loPartialKey,loCaseInsensitive]);
//endi
end;

procedure TfrmPesqRec.cbxclassificarKeyPress(Sender: TObject;
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

procedure TfrmPesqRec.cbxclassificarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;
end;

procedure TfrmPesqRec.edidescKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqRec.edicodigoiKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqRec.edicodigofKeyPress(Sender: TObject; var Key: Char);
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

procedure TfrmPesqRec.dbgrecExit(Sender: TObject);
begin
  if frmdados.Cds_Vencto.State in [dsinsert, dsedit] then
     frmdados.Cds_Vencto.Post;
  //endi
end;

procedure TfrmPesqRec.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = 27 then
   close;
//endi

end;

procedure TfrmPesqRec.cbxclassificar2KeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
key := 0;

end;

procedure TfrmPesqRec.cbxclassificar2KeyPress(Sender: TObject;
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

procedure TfrmPesqRec.cbxclassificarClick(Sender: TObject);
begin
spdfiltrar.Click;
habdedidesc;
end;

procedure tfrmPesqRec.habdedidesc;
begin
if cbxclassificar.ItemIndex  = 0 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 1 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Vencimento de'
   end;
//endi
if cbxclassificar.ItemIndex  = 2 then
   begin
     edidesc.Color := clactiveborder;
     edidesc.Text := '';
     edidesc.Enabled := false;
     lbltitdatai.Caption := 'Liquidado de'
   end;
//endi
if cbxclassificar.ItemIndex  = 3 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
if cbxclassificar.ItemIndex  = 4 then
   begin
     edidesc.Color := clwhite;
     edidesc.Text := '';
     edidesc.Enabled := true;
     lbltitdatai.Caption := 'Emissão de'
   end;
//endi
end;


procedure TfrmPesqRec.spdprinterClick(Sender: TObject);
begin
frmMRrec := tfrmMRrec.Create(self);
frmMRrec.showmodal;
frmMRrec.Free;
end;

procedure TfrmPesqRec.cbxnomeforClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRec.cbxnomeforEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRec.cbxnomeclaClick(Sender: TObject);
begin
tabela := 'temp';
end;

procedure TfrmPesqRec.cbxnomeclaEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRec.cbxnomeforKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codcli').asInteger := 0;
//endi
end;

procedure TfrmPesqRec.cbxnomesitpagarClick(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRec.cbxnomesitpagarEnter(Sender: TObject);
begin
tabela := 'Temp';
end;

procedure TfrmPesqRec.cbxnomesitpagarKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
if key = vk_delete then
   frmdados.Cds_temp.edit;
   frmdados.Cds_Temp.FieldByName('codsitrec').asInteger := 0;
//endi

end;


procedure TfrmPesqRec.dbgrecKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
if ((shift=[ssCtrl]) and (key = vk_delete)) then
   abort;
//endi

end;

end.
